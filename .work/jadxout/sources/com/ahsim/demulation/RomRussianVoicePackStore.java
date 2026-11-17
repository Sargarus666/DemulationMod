package com.ahsim.demulation;

import android.content.Context;
import com.ahsim.demulation.GenesisRomRussianVoiceAssetProvider;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import java.util.Properties;

/* loaded from: classes2.dex */
public final class RomRussianVoicePackStore {
    private static final String ACTIVE = "ACTIVE";
    private static final String MANIFEST = "voice.properties";
    private static final String READY = "READY";
    public static final String ROOT_DIR = "rom_voice_packs";
    private static final String STAGING = ".staging";

    public static final class Snapshot {
        public final String generation;
        public final File installRoot;
        public final long payloadBytes;
        public final String sourceSha256;

        Snapshot(File installRoot, String generation, String sourceSha256, long payloadBytes) {
            this.installRoot = installRoot;
            this.generation = generation;
            this.sourceSha256 = sourceSha256;
            this.payloadBytes = payloadBytes;
        }
    }

    private RomRussianVoicePackStore() {
    }

    public static File root(Context context) {
        return new File(context.getFilesDir(), ROOT_DIR);
    }

    public static File freshStagingRoot(Context context) throws IOException {
        File root = root(context).getCanonicalFile();
        if (!root.mkdirs() && !root.isDirectory()) {
            throw new IOException("Could not create Russian voice root");
        }
        File staging = new File(root, STAGING).getCanonicalFile();
        GenesisRomRussianVoiceAssetProvider.deleteRecursively(staging);
        if (staging.mkdirs() || staging.isDirectory()) {
            return staging;
        }
        throw new IOException("Could not create Russian voice staging");
    }

    public static Snapshot commit(Context context, GenesisRomRussianVoiceAssetProvider.Result extracted) throws IOException {
        if (context == null || extracted == null || extracted.stagedRoot == null) {
            throw new IOException("Russian voice commit arguments are unavailable");
        }
        if (!"4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a".equalsIgnoreCase(extracted.sourceSha256)) {
            throw new IOException("Russian voice source identity mismatch");
        }
        verifyAsset(extracted.stagedRoot);
        File root = root(context).getCanonicalFile();
        String generation = "ru_voice_v1_" + extracted.sourceSha256.substring(0, 16);
        File finalRoot = safeChild(root, generation);
        File stage = extracted.stagedRoot.getCanonicalFile();
        writeManifest(stage, generation, extracted);
        writeTextAtomic(new File(stage, "READY"), "READY\n");
        validateGeneration(stage);
        if (finalRoot.exists()) {
            GenesisRomRussianVoiceAssetProvider.deleteRecursively(finalRoot);
        }
        if (!stage.renameTo(finalRoot)) {
            throw new IOException("Could not publish Russian voice generation atomically");
        }
        Snapshot installed = validateGeneration(finalRoot);
        publishActive(root, generation);
        return installed;
    }

    public static Snapshot loadActive(Context context) {
        if (context == null) {
            return null;
        }
        try {
            File root = root(context).getCanonicalFile();
            File active = new File(root, "ACTIVE");
            if (!active.isFile()) {
                return null;
            }
            String generation = readSmallText(active, 128).trim();
            if (!generation.matches("[A-Za-z0-9_.-]{1,96}")) {
                return null;
            }
            return validateGeneration(safeChild(root, generation));
        } catch (IOException | RuntimeException e) {
            return null;
        }
    }

    public static Snapshot validateGeneration(File generationRoot) throws IOException {
        if (generationRoot == null || !generationRoot.isDirectory()) {
            throw new IOException("Russian voice generation missing");
        }
        if (!new File(generationRoot, "READY").isFile()) {
            throw new IOException("Russian voice READY missing");
        }
        Properties p = new Properties();
        File manifest = new File(generationRoot, MANIFEST);
        if (!manifest.isFile()) {
            throw new IOException("Russian voice manifest missing");
        }
        InputStream in = new FileInputStream(manifest);
        try {
            p.load(in);
            in.close();
            if (!Integer.toString(1).equals(p.getProperty("format.version"))) {
                throw new IOException("Russian voice format mismatch");
            }
            if (!RomRussianVoiceAssetManifest.GROUP_ID.equals(p.getProperty("group.id"))) {
                throw new IOException("Russian voice group mismatch");
            }
            String sourceSha = clean(p.getProperty("source.sha256"));
            if (!"4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a".equalsIgnoreCase(sourceSha)) {
                throw new IOException("Russian voice manifest source mismatch");
            }
            long payload = parseLong(p.getProperty("payload.bytes"), -1L);
            if (payload != 224576) {
                throw new IOException("Russian voice payload mismatch");
            }
            verifyAsset(generationRoot);
            return new Snapshot(generationRoot.getCanonicalFile(), clean(p.getProperty("generation")), sourceSha, payload);
        } finally {
        }
    }

    public static void clear(Context context) {
        if (context == null) {
            return;
        }
        try {
            GenesisRomRussianVoiceAssetProvider.deleteRecursively(root(context));
        } catch (IOException e) {
        }
    }

    private static void verifyAsset(File root) throws IOException {
        File file = safeChild(root, RomRussianVoiceAssetManifest.SOURCE_PACK);
        if (!file.isFile() || file.length() != 224576) {
            throw new IOException("Russian voice source pack missing/wrong length");
        }
        if (!RomRussianVoiceAssetManifest.SOURCE_PACK_SHA256.equalsIgnoreCase(sha256(file))) {
            throw new IOException("Russian voice source pack hash mismatch");
        }
    }

    private static void writeManifest(File root, String generation, GenesisRomRussianVoiceAssetProvider.Result extracted) throws IOException {
        Properties p = new Properties();
        p.setProperty("format.version", Integer.toString(1));
        p.setProperty("group.id", RomRussianVoiceAssetManifest.GROUP_ID);
        p.setProperty("generation", generation);
        p.setProperty("source.sha256", extracted.sourceSha256);
        p.setProperty("source.profile", "translation_ru_shedevr_lipetsk_usa");
        p.setProperty("payload.bytes", Long.toString(extracted.payloadBytes));
        FileOutputStream out = new FileOutputStream(new File(root, MANIFEST));
        try {
            p.store(out, "Demulation 04.235Z9 Russian voice pack");
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

    private static void publishActive(File root, String generation) throws IOException {
        writeTextAtomic(new File(root, "ACTIVE"), generation + "\n");
    }

    private static void writeTextAtomic(File target, String text) throws IOException {
        File tmp = new File(target.getParentFile(), target.getName() + ".tmp");
        FileOutputStream out = new FileOutputStream(tmp);
        try {
            out.write(text.getBytes(StandardCharsets.US_ASCII));
            out.getFD().sync();
            out.close();
            if (target.exists() && !target.delete()) {
                throw new IOException("Could not replace " + target.getName());
            }
            if (!tmp.renameTo(target)) {
                throw new IOException("Could not publish " + target.getName());
            }
        } catch (Throwable th) {
            try {
                out.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static String readSmallText(File file, int max) throws IOException {
        int n;
        if (file.length() < 0 || file.length() > max) {
            throw new IOException("Russian voice pointer too large");
        }
        byte[] b = new byte[(int) file.length()];
        FileInputStream in = new FileInputStream(file);
        int off = 0;
        while (off < b.length && (n = in.read(b, off, b.length - off)) >= 0) {
            try {
                off += n;
            } catch (Throwable th) {
                try {
                    in.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (off != b.length) {
            throw new IOException("Russian voice pointer truncated");
        }
        in.close();
        return new String(b, StandardCharsets.US_ASCII);
    }

    private static File safeChild(File root, String relative) throws IOException {
        File base = root.getCanonicalFile();
        File child = new File(base, relative).getCanonicalFile();
        if (!child.getPath().startsWith(base.getPath() + File.separator)) {
            throw new IOException("Russian voice path escapes root");
        }
        return child;
    }

    private static String sha256(File file) throws IOException {
        int i;
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            InputStream in = new FileInputStream(file);
            try {
                byte[] buf = new byte[32768];
                while (true) {
                    int n = in.read(buf);
                    if (n < 0) {
                        break;
                    }
                    if (n > 0) {
                        md.update(buf, 0, n);
                    }
                }
                in.close();
                StringBuilder out = new StringBuilder(64);
                for (byte b : md.digest()) {
                    out.append(String.format(Locale.US, "%02x", Integer.valueOf(b & 255)));
                }
                return out.toString();
            } finally {
            }
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 unavailable", e);
        }
    }

    private static String clean(String s) {
        return s == null ? "" : s.trim();
    }

    private static long parseLong(String s, long fallback) {
        try {
            return Long.parseLong(clean(s));
        } catch (Exception e) {
            return fallback;
        }
    }
}
