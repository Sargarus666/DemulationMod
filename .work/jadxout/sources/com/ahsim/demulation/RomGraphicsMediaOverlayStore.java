package com.ahsim.demulation;

import android.content.Context;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;

/* loaded from: classes2.dex */
public final class RomGraphicsMediaOverlayStore {
    public static final String ACTIVE_FILE = "ACTIVE";
    public static final int FORMAT_VERSION = 1;
    public static final String GROUP_TACTICAL_SPRITES = "TACTICAL_SPRITES";
    public static final String GROUP_TERRAIN_RADAR = "WORLD_TERRAIN_RADAR";
    public static final String MANIFEST_FILE = "overlay.properties";
    public static final String READY_FILE = "READY";
    public static final String ROOT_DIR = "rom_graphics_overlays";

    public static final class Entry {
        public final String group;
        public final int length;
        public final String relativePath;
        public final String sha256;

        Entry(String relativePath, String group, int length, String sha256) {
            this.relativePath = relativePath;
            this.group = group;
            this.length = length;
            this.sha256 = sha256;
        }
    }

    public static final class Snapshot {
        private final Map<String, Entry> entries;
        public final File installRoot;
        public final String layoutFamily;
        public final String profileId;
        public final String sourceSha256;
        public final String tacticalSpritesState;
        public final String terrainRadarState;

        Snapshot(File installRoot, String sourceSha256, String profileId, String layoutFamily, String terrainRadarState, String tacticalSpritesState, Map<String, Entry> entries) {
            this.installRoot = installRoot;
            this.sourceSha256 = sourceSha256;
            this.profileId = profileId;
            this.layoutFamily = layoutFamily;
            this.terrainRadarState = terrainRadarState;
            this.tacticalSpritesState = tacticalSpritesState;
            this.entries = Collections.unmodifiableMap(new LinkedHashMap(entries));
        }

        public Entry find(String relativePath) {
            if (relativePath == null) {
                return null;
            }
            return this.entries.get(relativePath);
        }

        public int entryCount() {
            return this.entries.size();
        }

        public Map<String, Entry> entries() {
            return this.entries;
        }
    }

    public static final class CommitRequest {
        public final Map<String, Entry> entries;
        public final String layoutFamily;
        public final String profileId;
        public final String sourceSha256;
        public final String tacticalSpritesState;
        public final String terrainRadarState;

        public CommitRequest(String sourceSha256, String profileId, String layoutFamily, String terrainRadarState, String tacticalSpritesState, Map<String, Entry> entries) {
            Map<String, Entry> linkedHashMap;
            this.sourceSha256 = RomGraphicsMediaOverlayStore.clean(sourceSha256);
            this.profileId = RomGraphicsMediaOverlayStore.clean(profileId);
            this.layoutFamily = RomGraphicsMediaOverlayStore.clean(layoutFamily);
            this.terrainRadarState = RomGraphicsMediaOverlayStore.clean(terrainRadarState);
            this.tacticalSpritesState = RomGraphicsMediaOverlayStore.clean(tacticalSpritesState);
            if (entries == null) {
                linkedHashMap = Collections.emptyMap();
            } else {
                linkedHashMap = new LinkedHashMap<>(entries);
            }
            this.entries = linkedHashMap;
        }
    }

    private RomGraphicsMediaOverlayStore() {
    }

    public static File root(Context context) {
        return new File(context.getFilesDir(), ROOT_DIR);
    }

    public static Snapshot loadActive(Context context) {
        if (context == null) {
            return null;
        }
        try {
            File root = root(context).getCanonicalFile();
            File active = new File(root, ACTIVE_FILE);
            if (!active.isFile()) {
                return null;
            }
            String generation = readSmallText(active, 256).trim();
            if (!safeGenerationName(generation)) {
                return null;
            }
            File dir = safeChild(root, generation);
            return validateGeneration(dir);
        } catch (IOException | RuntimeException e) {
            return null;
        }
    }

    public static Snapshot validateGeneration(File generationRoot) throws IOException {
        if (generationRoot == null || !generationRoot.isDirectory()) {
            throw new IOException("Graphics overlay generation is unavailable");
        }
        File root = generationRoot.getCanonicalFile();
        if (!new File(root, "READY").isFile()) {
            throw new IOException("Graphics overlay READY marker is missing");
        }
        File manifestFile = new File(root, MANIFEST_FILE);
        if (!manifestFile.isFile()) {
            throw new IOException("Graphics overlay manifest is missing");
        }
        Properties props = new Properties();
        InputStream in = new FileInputStream(manifestFile);
        try {
            props.load(in);
            in.close();
            int i = -1;
            int version = parseInt(props.getProperty("format.version"), -1);
            if (version != 1) {
                throw new IOException("Unsupported graphics overlay format");
            }
            int count = parseInt(props.getProperty("asset.count"), -1);
            if (count < 0 || count > 64) {
                throw new IOException("Invalid graphics overlay asset count");
            }
            LinkedHashMap<String, Entry> entries = new LinkedHashMap<>();
            int i2 = 0;
            while (i2 < count) {
                String prefix = "asset." + i2 + ".";
                String path = clean(props.getProperty(prefix + "path"));
                String group = clean(props.getProperty(prefix + "group"));
                int length = parseInt(props.getProperty(prefix + "length"), i);
                String expectedSha = clean(props.getProperty(prefix + "sha256")).toLowerCase(Locale.US);
                if (!path.isEmpty() && length >= 0 && expectedSha.length() == 64) {
                    if (GROUP_TERRAIN_RADAR.equals(group) || GROUP_TACTICAL_SPRITES.equals(group)) {
                        if (entries.containsKey(path)) {
                            throw new IOException("Duplicate graphics overlay path: " + path);
                        }
                        File asset = safeChild(root, path);
                        if (asset.isFile()) {
                            File root2 = root;
                            if (asset.length() == length) {
                                byte[] data = readExactly(asset, length);
                                if (!expectedSha.equals(sha256(data))) {
                                    throw new IOException("Graphics overlay asset fingerprint mismatch: " + path);
                                }
                                entries.put(path, new Entry(path, group, length, expectedSha));
                                i2++;
                                root = root2;
                                i = -1;
                            }
                        }
                        throw new IOException("Graphics overlay asset is missing or has wrong length: " + path);
                    }
                }
                throw new IOException("Invalid graphics overlay manifest entry " + i2);
            }
            return new Snapshot(root, clean(props.getProperty("source.sha256")), clean(props.getProperty("source.profile")), clean(props.getProperty("source.family")), clean(props.getProperty("group.terrain_radar")), clean(props.getProperty("group.tactical_sprites")), entries);
        } finally {
        }
    }

    public static Snapshot commit(Context context, File stagingRoot, CommitRequest request) throws IOException {
        if (context == null || stagingRoot == null || request == null) {
            throw new IOException("Graphics overlay commit arguments are unavailable");
        }
        File root = root(context).getCanonicalFile();
        if (!root.mkdirs() && !root.isDirectory()) {
            throw new IOException("Could not create overlay root");
        }
        File stage = stagingRoot.getCanonicalFile();
        String rootPath = root.getPath();
        if (!stage.getPath().startsWith(rootPath + File.separator)) {
            throw new IOException("Overlay staging is outside the overlay root");
        }
        Properties props = new Properties();
        props.setProperty("format.version", Integer.toString(1));
        props.setProperty("source.sha256", request.sourceSha256);
        props.setProperty("source.profile", request.profileId);
        props.setProperty("source.family", request.layoutFamily);
        props.setProperty("group.terrain_radar", request.terrainRadarState);
        props.setProperty("group.tactical_sprites", request.tacticalSpritesState);
        props.setProperty("asset.count", Integer.toString(request.entries.size()));
        int index = 0;
        for (Entry entry : request.entries.values()) {
            if (entry == null) {
                throw new IOException("Null overlay entry");
            }
            File asset = safeChild(stage, entry.relativePath);
            if (!asset.isFile() || asset.length() != entry.length) {
                throw new IOException("Staged overlay asset is unavailable: " + entry.relativePath);
            }
            byte[] data = readExactly(asset, entry.length);
            String actual = sha256(data);
            if (!actual.equalsIgnoreCase(entry.sha256)) {
                throw new IOException("Staged overlay hash changed: " + entry.relativePath);
            }
            String prefix = "asset." + index + ".";
            props.setProperty(prefix + "path", entry.relativePath);
            props.setProperty(prefix + "group", entry.group);
            props.setProperty(prefix + "length", Integer.toString(entry.length));
            props.setProperty(prefix + "sha256", actual);
            index++;
        }
        writePropertiesSynced(new File(stage, MANIFEST_FILE), props);
        writeTextSynced(new File(stage, "READY"), "READY\n");
        String shaPrefix = request.sourceSha256.length() >= 12 ? request.sourceSha256.substring(0, 12) : "unknown";
        String generationName = "generation-" + System.currentTimeMillis() + "-" + shaPrefix;
        File generation = safeChild(root, generationName);
        if (generation.exists()) {
            deleteRecursively(generation);
        }
        if (!stage.renameTo(generation)) {
            throw new IOException("Could not publish graphics overlay generation");
        }
        Snapshot validated = validateGeneration(generation);
        File activeTmp = safeChild(root, "ACTIVE.tmp");
        File activeBak = safeChild(root, "ACTIVE.bak");
        writeTextSynced(activeTmp, generationName + "\n");
        File active = safeChild(root, ACTIVE_FILE);
        if (activeBak.exists() && !activeBak.delete()) {
            throw new IOException("Could not clear stale overlay ACTIVE backup");
        }
        boolean hadActive = active.isFile();
        if (hadActive && !active.renameTo(activeBak)) {
            throw new IOException("Could not preserve previous overlay ACTIVE pointer");
        }
        if (!activeTmp.renameTo(active)) {
            if (hadActive) {
                activeBak.renameTo(active);
            }
            throw new IOException("Could not activate graphics overlay generation");
        }
        if (activeBak.exists() && !activeBak.delete()) {
            activeBak.deleteOnExit();
        }
        cleanupInactive(root, generationName);
        return validated;
    }

    public static File createStaging(Context context) throws IOException {
        File root = root(context).getCanonicalFile();
        if (!root.mkdirs() && !root.isDirectory()) {
            throw new IOException("Could not create overlay root");
        }
        File stage = safeChild(root, ".staging-" + System.currentTimeMillis());
        if (stage.exists()) {
            deleteRecursively(stage);
        }
        if (stage.mkdirs() || stage.isDirectory()) {
            return stage;
        }
        throw new IOException("Could not create overlay staging");
    }

    public static void clear(Context context) {
        if (context == null) {
            return;
        }
        try {
            deleteRecursively(root(context));
        } catch (IOException e) {
        }
    }

    public static Entry entryForFile(File root, String relativePath, String group) throws IOException {
        File file = safeChild(root, relativePath);
        if (!file.isFile() || file.length() > 2147483647L) {
            throw new IOException("Overlay asset is unavailable: " + relativePath);
        }
        int length = (int) file.length();
        return new Entry(relativePath, group, length, sha256(readExactly(file, length)));
    }

    private static void cleanupInactive(File root, String keep) throws IOException {
        File[] children = root.listFiles();
        if (children == null) {
            return;
        }
        for (File child : children) {
            String name = child.getName();
            if (!name.equals(keep) && !name.equals(ACTIVE_FILE) && (name.startsWith("generation-") || name.startsWith(".staging-") || name.equals("ACTIVE.tmp") || name.equals("ACTIVE.bak"))) {
                deleteRecursively(child);
            }
        }
    }

    private static boolean safeGenerationName(String name) {
        if (name == null || !name.startsWith("generation-") || name.length() > 96) {
            return false;
        }
        for (int i = 0; i < name.length(); i++) {
            char c = name.charAt(i);
            if (c != '-' && ((c < '0' || c > '9') && (c < 'a' || c > 'z'))) {
                return false;
            }
        }
        return true;
    }

    private static File safeChild(File root, String relativePath) throws IOException {
        if (relativePath == null || relativePath.length() == 0 || relativePath.indexOf(92) >= 0) {
            throw new IOException("Invalid overlay path");
        }
        File canonicalRoot = root.getCanonicalFile();
        File child = new File(canonicalRoot, relativePath).getCanonicalFile();
        String rp = canonicalRoot.getPath();
        String cp = child.getPath();
        if (!cp.equals(rp) && !cp.startsWith(rp + File.separator)) {
            throw new IOException("Graphics overlay path escapes root");
        }
        return child;
    }

    private static byte[] readExactly(File file, int expectedLength) throws IOException {
        InputStream in = new FileInputStream(file);
        try {
            ByteArrayOutputStream out = new ByteArrayOutputStream(expectedLength);
            try {
                byte[] buffer = new byte[8192];
                int total = 0;
                while (true) {
                    int n = in.read(buffer);
                    if (n >= 0) {
                        if (n != 0) {
                            total += n;
                            if (total > expectedLength) {
                                throw new IOException("Overlay asset grew while reading");
                            }
                            out.write(buffer, 0, n);
                        }
                    } else {
                        if (total != expectedLength) {
                            throw new IOException("Overlay asset changed while reading");
                        }
                        byte[] byteArray = out.toByteArray();
                        out.close();
                        in.close();
                        return byteArray;
                    }
                }
            } finally {
            }
        } catch (Throwable th) {
            try {
                in.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static String readSmallText(File file, int maxBytes) throws IOException {
        if (file.length() < 0 || file.length() > maxBytes) {
            throw new IOException("Overlay pointer is invalid");
        }
        byte[] data = readExactly(file, (int) file.length());
        return new String(data, StandardCharsets.UTF_8);
    }

    private static void writeTextSynced(File file, String text) throws IOException {
        File parent = file.getParentFile();
        if (parent != null && !parent.mkdirs() && !parent.isDirectory()) {
            throw new IOException("Could not create overlay directory");
        }
        FileOutputStream out = new FileOutputStream(file);
        try {
            out.write(text.getBytes(StandardCharsets.UTF_8));
            out.getFD().sync();
            out.close();
        } catch (Throwable th) {
            try {
                out.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static void writePropertiesSynced(File file, Properties props) throws IOException {
        File parent = file.getParentFile();
        if (parent != null && !parent.mkdirs() && !parent.isDirectory()) {
            throw new IOException("Could not create overlay directory");
        }
        FileOutputStream out = new FileOutputStream(file);
        try {
            props.store(out, "Demulation graphics overlay v1");
            out.getFD().sync();
            out.close();
        } catch (Throwable th) {
            try {
                out.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static int parseInt(String value, int fallback) {
        String trim;
        if (value == null) {
            trim = "";
        } else {
            try {
                trim = value.trim();
            } catch (NumberFormatException e) {
                return fallback;
            }
        }
        return Integer.parseInt(trim);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String clean(String value) {
        return value == null ? "" : value.trim();
    }

    static String sha256(byte[] data) throws IOException {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] hash = md.digest(data);
            StringBuilder out = new StringBuilder(64);
            for (byte b : hash) {
                out.append(String.format(Locale.US, "%02x", Integer.valueOf(b & 255)));
            }
            return out.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 unavailable", e);
        }
    }

    static void deleteRecursively(File file) throws IOException {
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isDirectory()) {
            File[] children = file.listFiles();
            if (children == null) {
                throw new IOException("Could not list " + file);
            }
            for (File child : children) {
                deleteRecursively(child);
            }
        }
        if (!file.delete() && file.exists()) {
            throw new IOException("Could not delete " + file);
        }
    }
}
