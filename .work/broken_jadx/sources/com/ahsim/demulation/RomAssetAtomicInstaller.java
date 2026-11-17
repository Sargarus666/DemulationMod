package com.ahsim.demulation;

import com.ahsim.demulation.RomAssetManifest;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Locale;
import java.util.Properties;

/* loaded from: classes2.dex */
public final class RomAssetAtomicInstaller {
    public static final int FORMAT_VERSION = 1;
    private static final String GENERATION_PREFIX = "runtime_bootstrap_core_v1-";
    public static final String INSTALLS_DIR = "installs";
    public static final String INSTALL_MANIFEST = "manifest.properties";
    public static final String READY_MARKER = "READY";
    public static final String READY_NEW = "READY.new";
    public static final String READY_PREVIOUS = "READY.prev";
    public static final String STAGING_DIR = "_staging";

    public static final class Validation {
        public final int formatVersion;
        public final String generation;
        public final String groupId;
        public final File installRoot;
        public final String reason;
        public final String sourceProfile;
        public final String sourceSha256;
        public final boolean valid;

        Validation(boolean valid, String reason, String generation, File installRoot, String groupId, int formatVersion, String sourceSha256, String sourceProfile) {
            this.valid = valid;
            this.reason = reason;
            this.generation = generation;
            this.installRoot = installRoot;
            this.groupId = groupId;
            this.formatVersion = formatVersion;
            this.sourceSha256 = sourceSha256;
            this.sourceProfile = sourceProfile;
        }
    }

    public static final class InstallResult {
        public final String generation;
        public final File installRoot;
        public final File manifestFile;
        public final String manifestSha256;
        public final long payloadBytes;
        public final int verifiedEntries;

        private InstallResult(String generation, File installRoot, File manifestFile, int verifiedEntries, long payloadBytes, String manifestSha256) {
            this.generation = generation;
            this.installRoot = installRoot;
            this.manifestFile = manifestFile;
            this.verifiedEntries = verifiedEntries;
            this.payloadBytes = payloadBytes;
            this.manifestSha256 = manifestSha256;
        }
    }

    private RomAssetAtomicInstaller() {
    }

    public static InstallResult installCore(File root, File stagingRoot, String sourceSha256, String sourceProfile) throws IOException {
        if (root == null) {
            throw new IOException("ROM asset root is unavailable");
        }
        if (stagingRoot == null || !stagingRoot.isDirectory()) {
            throw new IOException("Verified ROM asset staging directory is unavailable");
        }
        if (!root.mkdirs() && !root.isDirectory()) {
            throw new IOException("Could not create ROM asset root");
        }
        verifyPayloadTree(stagingRoot);
        String generation = generationName(sourceSha256, sourceProfile);
        File installs = new File(root, INSTALLS_DIR);
        if (!installs.mkdirs() && !installs.isDirectory()) {
            throw new IOException("Could not create ROM asset install directory");
        }
        File finalRoot = safeDirectChild(installs, generation);
        File stagedManifest = new File(stagingRoot, "manifest.properties");
        writeInstallManifest(stagedManifest, generation, sourceSha256, sourceProfile);
        String manifestSha256 = sha256(stagedManifest);
        if (finalRoot.exists()) {
            Validation existing = validateGeneration(finalRoot, generation, manifestSha256);
            if (existing.valid) {
                GenesisRomAssetProviderCore.deleteRecursively(stagingRoot);
            } else {
                GenesisRomAssetProviderCore.deleteRecursively(finalRoot);
                publishGeneration(stagingRoot, finalRoot);
            }
        } else {
            publishGeneration(stagingRoot, finalRoot);
        }
        Validation generationValidation = validateGeneration(finalRoot, generation, manifestSha256);
        if (!generationValidation.valid) {
            throw new IOException("Installed ROM asset generation failed verification: " + generationValidation.reason);
        }
        publishReady(root, generation, manifestSha256, sourceSha256, sourceProfile);
        Validation ready = validateReady(root);
        if (ready.valid) {
            deleteQuietly(new File(root, READY_PREVIOUS));
            cleanupStaging(root);
            cleanupCoreGenerations(root, generation);
            return new InstallResult(generation, finalRoot, new File(finalRoot, "manifest.properties"), RomAssetManifest.coreEntries().size(), RomAssetManifest.corePayloadBytes(), manifestSha256);
        }
        rollbackReady(root);
        throw new IOException("READY publication failed verification: " + ready.reason);
    }

    public static Validation recover(File root) throws IOException {
        if (root == null || !root.exists()) {
            return invalid("ROM asset root does not exist");
        }
        deleteQuietly(new File(root, READY_NEW));
        Validation current = validateReadyFile(root, new File(root, "READY"));
        if (current.valid) {
            deleteQuietly(new File(root, READY_PREVIOUS));
            cleanupStaging(root);
            cleanupCoreGenerations(root, current.generation);
            return current;
        }
        deleteQuietly(new File(root, "READY"));
        File previousFile = new File(root, READY_PREVIOUS);
        Validation previous = validateReadyFile(root, previousFile);
        if (previous.valid) {
            File ready = new File(root, "READY");
            if (!previousFile.renameTo(ready)) {
                throw new IOException("Could not restore previous READY pointer");
            }
            Validation restored = validateReady(root);
            if (!restored.valid) {
                throw new IOException("Restored READY pointer is invalid: " + restored.reason);
            }
            cleanupStaging(root);
            cleanupCoreGenerations(root, restored.generation);
            return restored;
        }
        deleteQuietly(previousFile);
        cleanupStaging(root);
        cleanupCoreGenerations(root, null);
        return invalid(current.reason == null ? "No valid READY state" : current.reason);
    }

    public static Validation validateReady(File root) throws IOException {
        return root == null ? invalid("ROM asset root is unavailable") : validateReadyFile(root, new File(root, "READY"));
    }

    public static void clearAll(File root) throws IOException {
        GenesisRomAssetProviderCore.deleteRecursively(root);
    }

    private static Validation validateReadyFile(File root, File pointerFile) throws IOException {
        if (!pointerFile.isFile()) {
            return invalid("READY pointer is absent");
        }
        if (RomAssetBundleAtomicInstaller.isBundlePointer(pointerFile)) {
            return RomAssetBundleAtomicInstaller.validateReadyFile(root, pointerFile);
        }
        Properties ready = load(pointerFile);
        if (!Integer.toString(1).equals(ready.getProperty("format.version"))) {
            return invalid("READY format version is unsupported");
        }
        if (!"runtime_bootstrap_core_v1".equals(ready.getProperty("group.id"))) {
            return invalid("READY group does not match the core provider group");
        }
        String generation = ready.getProperty("generation", "").trim();
        String expectedManifestSha = ready.getProperty("manifest.sha256", "").trim();
        if (!safeGeneration(generation) || expectedManifestSha.length() != 64) {
            return invalid("READY pointer fields are invalid");
        }
        File installs = new File(root, INSTALLS_DIR);
        File installRoot = safeDirectChild(installs, generation);
        Validation generationValidation = validateGeneration(installRoot, generation, expectedManifestSha);
        return !generationValidation.valid ? generationValidation : generationValidation;
    }

    private static Validation validateGeneration(File installRoot, String generation, String expectedManifestSha) throws IOException {
        if (!installRoot.isDirectory()) {
            return invalid("Install generation is missing", generation, installRoot);
        }
        File manifest = new File(installRoot, "manifest.properties");
        if (!manifest.isFile()) {
            return invalid("Install manifest is missing", generation, installRoot);
        }
        if (expectedManifestSha != null && !expectedManifestSha.isEmpty() && !expectedManifestSha.equalsIgnoreCase(sha256(manifest))) {
            return invalid("Install manifest fingerprint mismatch", generation, installRoot);
        }
        Properties properties = load(manifest);
        if (!Integer.toString(1).equals(properties.getProperty("format.version"))) {
            return invalid("Install manifest format version mismatch", generation, installRoot);
        }
        if (!"runtime_bootstrap_core_v1".equals(properties.getProperty("group.id"))) {
            return invalid("Install manifest group mismatch", generation, installRoot);
        }
        if (!generation.equals(properties.getProperty("generation"))) {
            return invalid("Install manifest generation mismatch", generation, installRoot);
        }
        if (!Integer.toString(RomAssetManifest.coreEntries().size()).equals(properties.getProperty("entries.total"))) {
            return invalid("Install manifest entry count mismatch", generation, installRoot);
        }
        if (!Long.toString(RomAssetManifest.corePayloadBytes()).equals(properties.getProperty("payload.bytes"))) {
            return invalid("Install manifest payload size mismatch", generation, installRoot);
        }
        List<RomAssetManifest.Entry> entries = RomAssetManifest.coreEntries();
        for (int i = 0; i < entries.size(); i++) {
            RomAssetManifest.Entry entry = entries.get(i);
            String prefix = String.format(Locale.US, "asset.%02d.", Integer.valueOf(i));
            if (!entry.name.equals(properties.getProperty(prefix + "name")) || !entry.relativePath.equals(properties.getProperty(prefix + "path")) || !Integer.toString(entry.length).equals(properties.getProperty(prefix + "length")) || !entry.sha256.equalsIgnoreCase(properties.getProperty(prefix + "sha256", ""))) {
                return invalid("Install manifest entry mismatch: " + entry.name, generation, installRoot);
            }
            File asset = safeChild(installRoot, entry.relativePath);
            if (!asset.isFile() || asset.length() != entry.length) {
                return invalid("Installed asset is missing or has wrong size: " + entry.name, generation, installRoot);
            }
            if (!entry.sha256.equalsIgnoreCase(sha256(asset))) {
                return invalid("Installed asset fingerprint mismatch: " + entry.name, generation, installRoot);
            }
        }
        return new Validation(true, "ok", generation, installRoot, "runtime_bootstrap_core_v1", 1, properties.getProperty("source.sha256", ""), properties.getProperty("source.profile", ""));
    }

    private static void verifyPayloadTree(File root) throws IOException {
        for (RomAssetManifest.Entry entry : RomAssetManifest.coreEntries()) {
            File asset = safeChild(root, entry.relativePath);
            if (!asset.isFile() || asset.length() != entry.length) {
                throw new IOException("Staged asset is missing or has wrong size: " + entry.name);
            }
            if (!entry.sha256.equalsIgnoreCase(sha256(asset))) {
                throw new IOException("Staged asset fingerprint mismatch: " + entry.name);
            }
        }
    }

    private static void writeInstallManifest(File file, String generation, String sourceSha256, String sourceProfile) throws IOException {
        StringBuilder text = new StringBuilder();
        appendProperty(text, "format.version", Integer.toString(1));
        appendProperty(text, "stage", "04.233B");
        appendProperty(text, "group.id", "runtime_bootstrap_core_v1");
        appendProperty(text, "generation", generation);
        appendProperty(text, "source.sha256", sourceSha256 == null ? "" : sourceSha256);
        appendProperty(text, "source.profile", sourceProfile != null ? sourceProfile : "");
        appendProperty(text, "entries.total", Integer.toString(RomAssetManifest.coreEntries().size()));
        appendProperty(text, "payload.bytes", Long.toString(RomAssetManifest.corePayloadBytes()));
        List<RomAssetManifest.Entry> entries = RomAssetManifest.coreEntries();
        for (int i = 0; i < entries.size(); i++) {
            RomAssetManifest.Entry entry = entries.get(i);
            String prefix = String.format(Locale.US, "asset.%02d.", Integer.valueOf(i));
            appendProperty(text, prefix + "name", entry.name);
            appendProperty(text, prefix + "path", entry.relativePath);
            appendProperty(text, prefix + "length", Integer.toString(entry.length));
            appendProperty(text, prefix + "sha256", entry.sha256);
        }
        writeBytesSynced(file, text.toString().getBytes(StandardCharsets.UTF_8));
    }

    private static void appendProperty(StringBuilder out, String key, String value) throws IOException {
        if (key.indexOf(10) < 0 && key.indexOf(13) < 0 && key.indexOf(61) < 0 && value.indexOf(10) < 0 && value.indexOf(13) < 0) {
            out.append(key).append('=').append(value).append('\n');
            return;
        }
        throw new IOException("Unsafe install manifest property");
    }

    private static void publishReady(File root, String generation, String manifestSha256, String sourceSha256, String sourceProfile) throws IOException {
        File next = new File(root, READY_NEW);
        File current = new File(root, "READY");
        File previous = new File(root, READY_PREVIOUS);
        deleteQuietly(next);
        deleteQuietly(previous);
        Properties properties = new Properties();
        properties.setProperty("format.version", Integer.toString(1));
        properties.setProperty("stage", "04.233B");
        properties.setProperty("group.id", "runtime_bootstrap_core_v1");
        properties.setProperty("generation", generation);
        properties.setProperty("manifest.sha256", manifestSha256);
        properties.setProperty("source.sha256", sourceSha256 == null ? "" : sourceSha256);
        properties.setProperty("source.profile", sourceProfile != null ? sourceProfile : "");
        properties.setProperty("entries.total", Integer.toString(RomAssetManifest.coreEntries().size()));
        properties.setProperty("payload.bytes", Long.toString(RomAssetManifest.corePayloadBytes()));
        writePropertiesSynced(next, properties, "Demulation Stage 04.233B READY pointer");
        if (current.exists() && !current.renameTo(previous)) {
            deleteQuietly(next);
            throw new IOException("Could not preserve previous READY pointer");
        }
        if (!next.renameTo(current)) {
            if (previous.exists() && !current.exists()) {
                previous.renameTo(current);
            }
            throw new IOException("Could not publish READY pointer");
        }
    }

    private static void rollbackReady(File root) throws IOException {
        File current = new File(root, "READY");
        File previous = new File(root, READY_PREVIOUS);
        deleteQuietly(current);
        if (previous.exists() && !previous.renameTo(current)) {
            throw new IOException("Could not roll back previous READY pointer");
        }
    }

    private static void publishGeneration(File stagingRoot, File finalRoot) throws IOException {
        if (!stagingRoot.renameTo(finalRoot)) {
            throw new IOException("Could not atomically publish verified ROM asset generation");
        }
    }

    static void cleanupStaging(File root) throws IOException {
        File staging = new File(root, "_staging");
        GenesisRomAssetProviderCore.deleteRecursively(staging);
    }

    static void cleanupCoreGenerations(File root, String keepGeneration) throws IOException {
        File installs = new File(root, INSTALLS_DIR);
        File[] children = installs.listFiles();
        if (children == null) {
            return;
        }
        for (File child : children) {
            boolean managed = child.getName().startsWith(GENERATION_PREFIX) || child.getName().startsWith("runtime_frontend_bundle_v1-");
            if (managed && (keepGeneration == null || !keepGeneration.equals(child.getName()))) {
                GenesisRomAssetProviderCore.deleteRecursively(child);
            }
        }
    }

    private static String generationName(String sourceSha256, String sourceProfile) throws IOException {
        String source = sourceSha256 == null ? "" : sourceSha256.trim().toLowerCase(Locale.US);
        if (!source.matches("[0-9a-f]{64}")) {
            source = sha256Bytes((sourceProfile == null ? "unknown" : sourceProfile).getBytes(StandardCharsets.UTF_8));
        }
        return GENERATION_PREFIX + source;
    }

    private static File safeDirectChild(File root, String name) throws IOException {
        if (!safeGeneration(name)) {
            throw new IOException("Unsafe ROM asset generation name");
        }
        File file = new File(root, name);
        String rootPath = root.getCanonicalPath();
        String filePath = file.getCanonicalPath();
        if (!filePath.startsWith(rootPath + File.separator)) {
            throw new IOException("Unsafe ROM asset generation path");
        }
        return file;
    }

    private static boolean safeGeneration(String name) {
        return (name == null || name.isEmpty() || (!name.startsWith(GENERATION_PREFIX) && !name.startsWith("runtime_frontend_bundle_v1-")) || !name.matches("[A-Za-z0-9._-]+")) ? false : true;
    }

    private static File safeChild(File root, String relativePath) throws IOException {
        File file = new File(root, relativePath);
        String rootPath = root.getCanonicalPath();
        String filePath = file.getCanonicalPath();
        if (!filePath.startsWith(rootPath + File.separator)) {
            throw new IOException("Unsafe installed asset path: " + relativePath);
        }
        return file;
    }

    private static Properties load(File file) throws IOException {
        Properties properties = new Properties();
        FileInputStream input = new FileInputStream(file);
        try {
            properties.load(input);
            input.close();
            return properties;
        } catch (Throwable th) {
            try {
                input.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static void writePropertiesSynced(File file, Properties properties, String comment) throws IOException {
        File parent = file.getParentFile();
        if (parent != null && !parent.mkdirs() && !parent.isDirectory()) {
            throw new IOException("Could not create directory for " + file.getName());
        }
        FileOutputStream output = new FileOutputStream(file);
        try {
            properties.store(output, comment);
            output.getFD().sync();
            output.close();
        } catch (Throwable th) {
            try {
                output.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static void writeBytesSynced(File file, byte[] bytes) throws IOException {
        File parent = file.getParentFile();
        if (parent != null && !parent.mkdirs() && !parent.isDirectory()) {
            throw new IOException("Could not create directory for " + file.getName());
        }
        FileOutputStream output = new FileOutputStream(file);
        try {
            output.write(bytes);
            output.getFD().sync();
            output.close();
        } catch (Throwable th) {
            try {
                output.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static String sha256(File file) throws IOException {
        MessageDigest digest = digest();
        byte[] buffer = new byte[8192];
        FileInputStream input = new FileInputStream(file);
        while (true) {
            try {
                int count = input.read(buffer);
                if (count >= 0) {
                    if (count > 0) {
                        digest.update(buffer, 0, count);
                    }
                } else {
                    input.close();
                    return hex(digest.digest());
                }
            } catch (Throwable th) {
                try {
                    input.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    private static String sha256Bytes(byte[] bytes) throws IOException {
        MessageDigest digest = digest();
        digest.update(bytes);
        return hex(digest.digest());
    }

    private static MessageDigest digest() throws IOException {
        try {
            return MessageDigest.getInstance("SHA-256");
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 unavailable", e);
        }
    }

    private static String hex(byte[] bytes) {
        char[] alphabet = "0123456789abcdef".toCharArray();
        char[] chars = new char[bytes.length * 2];
        for (int i = 0; i < bytes.length; i++) {
            int value = bytes[i] & 255;
            chars[i * 2] = alphabet[value >>> 4];
            chars[(i * 2) + 1] = alphabet[value & 15];
        }
        return new String(chars);
    }

    private static void deleteQuietly(File file) throws IOException {
        if (file == null || !file.exists()) {
            return;
        }
        GenesisRomAssetProviderCore.deleteRecursively(file);
    }

    private static Validation invalid(String reason) {
        return new Validation(false, reason, null, null, null, 0, "", "");
    }

    private static Validation invalid(String reason, String generation, File root) {
        return new Validation(false, reason, generation, root, null, 0, "", "");
    }
}
