package com.ahsim.demulation;

import com.ahsim.demulation.RomRussianLocalizationAssetManifest;
import com.ahsim.demulation.RomRussianLocalizationPackStore;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class RomRuntimeRussianLocalizationAssets {
    private final String generation;
    private final File installRoot;
    private final String sourceSha256;

    public RomRuntimeRussianLocalizationAssets(RomRussianLocalizationPackStore.Snapshot snapshot) throws IOException {
        if (snapshot == null || snapshot.installRoot == null || !snapshot.installRoot.isDirectory()) {
            throw new IOException("Russian localization snapshot is unavailable");
        }
        if (!"4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a".equalsIgnoreCase(snapshot.sourceSha256) || !"translation_ru_shedevr_lipetsk_usa".equals(snapshot.profileId)) {
            throw new IOException("Russian localization snapshot source mismatch");
        }
        this.installRoot = snapshot.installRoot.getCanonicalFile();
        this.generation = snapshot.generation == null ? "" : snapshot.generation;
        this.sourceSha256 = snapshot.sourceSha256 != null ? snapshot.sourceSha256 : "";
    }

    public File installRoot() {
        return this.installRoot;
    }

    public String generation() {
        return this.generation;
    }

    public String sourceSha256() {
        return this.sourceSha256;
    }

    public boolean provides(String relativePath) {
        return RomRussianLocalizationAssetManifest.find(relativePath) != null;
    }

    public byte[] read(String relativePath) throws IOException {
        RomRussianLocalizationAssetManifest.Entry entry = RomRussianLocalizationAssetManifest.find(relativePath);
        if (entry == null) {
            throw new IOException("Russian localization asset is not declared: " + relativePath);
        }
        File file = safeChild(this.installRoot, entry.relativePath);
        if (!file.isFile() || file.length() != entry.length) {
            throw new IOException("Russian localization asset missing/wrong length: " + entry.relativePath);
        }
        byte[] data = readExactly(file, entry.length);
        if (!entry.sha256.equalsIgnoreCase(sha256(data))) {
            throw new IOException("Russian localization asset fingerprint mismatch: " + entry.relativePath);
        }
        return data;
    }

    private static File safeChild(File root, String relativePath) throws IOException {
        File child = new File(root, relativePath).getCanonicalFile();
        String rp = root.getCanonicalPath();
        String cp = child.getCanonicalPath();
        if (!cp.startsWith(rp + File.separator)) {
            throw new IOException("Russian localization path escapes active generation");
        }
        return child;
    }

    private static byte[] readExactly(File file, int expectedLength) throws IOException {
        InputStream input = new FileInputStream(file);
        try {
            ByteArrayOutputStream output = new ByteArrayOutputStream(expectedLength);
            try {
                byte[] buffer = new byte[8192];
                int total = 0;
                while (true) {
                    int count = input.read(buffer);
                    if (count >= 0) {
                        if (count != 0) {
                            total += count;
                            if (total > expectedLength) {
                                throw new IOException("Russian localization asset grew while reading");
                            }
                            output.write(buffer, 0, count);
                        }
                    } else {
                        if (total != expectedLength) {
                            throw new IOException("Russian localization asset changed while reading");
                        }
                        byte[] byteArray = output.toByteArray();
                        output.close();
                        input.close();
                        return byteArray;
                    }
                }
            } finally {
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

    private static String sha256(byte[] data) throws IOException {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] hash = digest.digest(data);
            StringBuilder out = new StringBuilder(hash.length * 2);
            for (byte b : hash) {
                out.append(String.format(Locale.US, "%02x", Integer.valueOf(b & 255)));
            }
            return out.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 unavailable", e);
        }
    }
}
