package com.ahsim.demulation;

import com.ahsim.demulation.RomRussianVoicePackStore;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class RomRuntimeRussianVoiceAssets {
    private final File installRoot;

    public RomRuntimeRussianVoiceAssets(RomRussianVoicePackStore.Snapshot snapshot) throws IOException {
        if (snapshot == null || snapshot.installRoot == null || !snapshot.installRoot.isDirectory()) {
            throw new IOException("Russian voice snapshot is unavailable");
        }
        if (!"4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a".equalsIgnoreCase(snapshot.sourceSha256)) {
            throw new IOException("Russian voice snapshot source mismatch");
        }
        this.installRoot = snapshot.installRoot.getCanonicalFile();
    }

    GenesisAudioSource loadCompactAudioSource() throws IOException {
        File file = safeChild(this.installRoot, RomRussianVoiceAssetManifest.SOURCE_PACK);
        if (!file.isFile() || file.length() != 224576) {
            throw new IOException("Russian voice source pack missing/wrong length");
        }
        byte[] data = readExactly(file, RomRussianVoiceAssetManifest.SOURCE_PACK_BYTES);
        if (!RomRussianVoiceAssetManifest.SOURCE_PACK_SHA256.equalsIgnoreCase(sha256(data))) {
            throw new IOException("Russian voice source pack fingerprint mismatch");
        }
        return GenesisAudioSource.fromPack(data);
    }

    private static File safeChild(File root, String relative) throws IOException {
        File child = new File(root, relative).getCanonicalFile();
        String rp = root.getCanonicalPath();
        String cp = child.getCanonicalPath();
        if (!cp.startsWith(rp + File.separator)) {
            throw new IOException("Russian voice path escapes active generation");
        }
        return child;
    }

    private static byte[] readExactly(File file, int expected) throws IOException {
        InputStream input = new FileInputStream(file);
        try {
            ByteArrayOutputStream out = new ByteArrayOutputStream(expected);
            try {
                byte[] buf = new byte[8192];
                int total = 0;
                while (true) {
                    int n = input.read(buf);
                    if (n >= 0) {
                        if (n != 0) {
                            total += n;
                            if (total > expected) {
                                throw new IOException("Russian voice source grew while reading");
                            }
                            out.write(buf, 0, n);
                        }
                    } else {
                        if (total != expected) {
                            throw new IOException("Russian voice source changed while reading");
                        }
                        byte[] byteArray = out.toByteArray();
                        out.close();
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
