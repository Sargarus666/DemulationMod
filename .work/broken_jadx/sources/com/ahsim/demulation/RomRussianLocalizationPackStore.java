package com.ahsim.demulation;

import android.content.Context;
import com.ahsim.demulation.GenesisRomRussianLocalizationAssetProvider;
import com.ahsim.demulation.RomRussianLocalizationAssetManifest;
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
public final class RomRussianLocalizationPackStore {
    private static final String ACTIVE = "ACTIVE";
    private static final String MANIFEST = "localization.properties";
    private static final String READY = "READY";
    public static final String ROOT_DIR = "rom_localization_packs";
    private static final String STAGING = ".staging";

    public static final class Snapshot {
        public final int assetCount;
        public final String generation;
        public final File installRoot;
        public final long payloadBytes;
        public final String profileId;
        public final String sourceSha256;

        Snapshot(File installRoot, String generation, String sourceSha256, String profileId, int assetCount, long payloadBytes) {
            this.installRoot = installRoot;
            this.generation = generation;
            this.sourceSha256 = sourceSha256;
            this.profileId = profileId;
            this.assetCount = assetCount;
            this.payloadBytes = payloadBytes;
        }
    }

    private RomRussianLocalizationPackStore() {
    }

    public static File root(Context context) {
        return new File(context.getFilesDir(), ROOT_DIR);
    }

    public static File freshStagingRoot(Context context) throws IOException {
        File root = root(context).getCanonicalFile();
        if (!root.mkdirs() && !root.isDirectory()) {
            throw new IOException("Could not create localization root");
        }
        File staging = new File(root, STAGING).getCanonicalFile();
        GenesisRomRussianLocalizationAssetProvider.deleteRecursively(staging);
        if (staging.mkdirs() || staging.isDirectory()) {
            return staging;
        }
        throw new IOException("Could not create localization staging root");
    }

    public static Snapshot commit(Context context, GenesisRomRussianLocalizationAssetProvider.Result extracted) throws IOException {
        if (context == null || extracted == null || extracted.stagedRoot == null) {
            throw new IOException("Localization commit arguments are unavailable");
        }
        if (!"4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a".equals(extracted.sourceSha256) || !"translation_ru_shedevr_lipetsk_usa".equals(extracted.profileId)) {
            throw new IOException("Localization source identity mismatch");
        }
        verifyAssetTree(extracted.stagedRoot);
        File root = root(context).getCanonicalFile();
        String generation = "ru_v6_" + extracted.sourceSha256.substring(0, 16);
        File finalRoot = safeChild(root, generation);
        File stage = extracted.stagedRoot.getCanonicalFile();
        if (!stage.getPath().startsWith(root.getPath() + File.separator)) {
            throw new IOException("Localization staging is outside store root");
        }
        writeManifest(stage, generation, extracted);
        writeTextAtomic(new File(stage, "READY"), "READY\n");
        validateGeneration(stage);
        if (finalRoot.exists()) {
            try {
                Snapshot existing = validateGeneration(finalRoot);
                if (existing.sourceSha256.equals(extracted.sourceSha256)) {
                    GenesisRomRussianLocalizationAssetProvider.deleteRecursively(stage);
                    publishActive(root, generation);
                    return validateGeneration(finalRoot);
                }
            } catch (IOException e) {
            }
            GenesisRomRussianLocalizationAssetProvider.deleteRecursively(finalRoot);
        }
        if (!stage.renameTo(finalRoot)) {
            throw new IOException("Could not publish localization generation atomically");
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
            throw new IOException("Localization generation missing");
        }
        if (!new File(generationRoot, "READY").isFile()) {
            throw new IOException("Localization READY missing");
        }
        File manifest = new File(generationRoot, MANIFEST);
        if (!manifest.isFile()) {
            throw new IOException("Localization manifest missing");
        }
        Properties p = new Properties();
        InputStream in = new FileInputStream(manifest);
        try {
            p.load(in);
            in.close();
            if (!Integer.toString(6).equals(p.getProperty("format.version"))) {
                throw new IOException("Localization format mismatch");
            }
            if (!RomRussianLocalizationAssetManifest.GROUP_ID.equals(p.getProperty("group.id"))) {
                throw new IOException("Localization group mismatch");
            }
            String sourceSha = clean(p.getProperty("source.sha256"));
            String profile = clean(p.getProperty("source.profile"));
            String generation = clean(p.getProperty("generation"));
            if (!"4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a".equals(sourceSha) || !"translation_ru_shedevr_lipetsk_usa".equals(profile)) {
                throw new IOException("Localization manifest source mismatch");
            }
            int count = parseInt(p.getProperty("asset.count"), -1);
            long payload = parseLong(p.getProperty("payload.bytes"), -1L);
            if (count != RomRussianLocalizationAssetManifest.entries().size() || payload != RomRussianLocalizationAssetManifest.payloadBytes()) {
                throw new IOException("Localization manifest totals mismatch");
            }
            verifyAssetTree(generationRoot);
            return new Snapshot(generationRoot.getCanonicalFile(), generation, sourceSha, profile, count, payload);
        } finally {
        }
    }

    public static void clear(Context context) {
        if (context == null) {
            return;
        }
        try {
            GenesisRomRussianLocalizationAssetProvider.deleteRecursively(root(context));
        } catch (IOException e) {
        }
    }

    private static void verifyAssetTree(File root) throws IOException {
        for (RomRussianLocalizationAssetManifest.Entry e : RomRussianLocalizationAssetManifest.entries()) {
            File f = safeChild(root, e.relativePath);
            if (!f.isFile() || f.length() != e.length) {
                throw new IOException("Localization asset missing/wrong length: " + e.relativePath);
            }
            if (!e.sha256.equals(sha256(f))) {
                throw new IOException("Localization asset hash mismatch: " + e.relativePath);
            }
        }
    }

    private static void writeManifest(File root, String generation, GenesisRomRussianLocalizationAssetProvider.Result extracted) throws IOException {
        Properties p = new Properties();
        p.setProperty("format.version", Integer.toString(6));
        p.setProperty("group.id", RomRussianLocalizationAssetManifest.GROUP_ID);
        p.setProperty("generation", generation);
        p.setProperty("source.sha256", extracted.sourceSha256);
        p.setProperty("source.profile", extracted.profileId);
        p.setProperty("asset.count", Integer.toString(extracted.assetCount));
        p.setProperty("text.count", Integer.toString(extracted.textCount));
        p.setProperty("glyph_bitmap.count", Integer.toString(extracted.glyphBitmapCount));
        p.setProperty("payload.bytes", Long.toString(extracted.payloadBytes));
        File file = new File(root, MANIFEST);
        FileOutputStream out = new FileOutputStream(file);
        try {
            p.store(out, "Demulation 04.235Z5 Russian localization pack");
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
            throw new IOException("Localization pointer too large");
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
            throw new IOException("Localization pointer truncated");
        }
        in.close();
        return new String(b, StandardCharsets.US_ASCII);
    }

    private static File safeChild(File root, String relative) throws IOException {
        File base = root.getCanonicalFile();
        File child = new File(base, relative).getCanonicalFile();
        if (!child.getPath().startsWith(base.getPath() + File.separator)) {
            throw new IOException("Localization path escapes root");
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
                StringBuilder sb = new StringBuilder(64);
                for (byte b : md.digest()) {
                    sb.append(String.format(Locale.US, "%02x", Integer.valueOf(b & 255)));
                }
                return sb.toString();
            } finally {
            }
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 unavailable", e);
        }
    }

    private static String clean(String s) {
        return s == null ? "" : s.trim();
    }

    private static int parseInt(String s, int fallback) {
        try {
            return Integer.parseInt(clean(s));
        } catch (Exception e) {
            return fallback;
        }
    }

    private static long parseLong(String s, long fallback) {
        try {
            return Long.parseLong(clean(s));
        } catch (Exception e) {
            return fallback;
        }
    }
}
