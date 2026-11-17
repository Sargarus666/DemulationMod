package com.ahsim.demulation;

import com.ahsim.demulation.RomAudioAssetManifest;
import com.ahsim.demulation.RomOfficialRegionAssetVariants;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class RomRuntimeAudioAssets {
    private static final int ROM_IMAGE_BYTES = 1048576;
    private final File installRoot;
    private final String sourceProfile;

    public RomRuntimeAudioAssets(File installRoot) throws IOException {
        this(installRoot, null);
    }

    public RomRuntimeAudioAssets(File installRoot, String sourceProfile) throws IOException {
        if (installRoot == null || !installRoot.isDirectory()) {
            throw new IOException("Audio READY root is unavailable");
        }
        this.installRoot = installRoot;
        this.sourceProfile = sourceProfile == null ? "" : sourceProfile;
    }

    public File installRoot() {
        return this.installRoot;
    }

    GenesisAudioSource loadCompactAudioSource() throws IOException {
        return GenesisAudioSource.fromPack(loadVerifiedPack());
    }

    public byte[] loadRomAddressedAudioImage() throws IOException {
        GenesisAudioSource source = GenesisAudioSource.fromPack(loadVerifiedPack());
        byte[] image = new byte[ROM_IMAGE_BYTES];
        for (int p = 0; p < ROM_IMAGE_BYTES; p++) {
            if (source.contains(p, 1)) {
                image[p] = (byte) source.m1u8(p);
            }
        }
        return image;
    }

    byte[] readVerifiedPackForComparison() throws IOException {
        return loadVerifiedPack();
    }

    private byte[] loadVerifiedPack() throws IOException {
        RomAudioAssetManifest.Entry entry = RomAudioAssetManifest.entries().get(0);
        RomOfficialRegionAssetVariants.Expected expected = RomOfficialRegionAssetVariants.expectedForInstall(this.installRoot, this.sourceProfile, entry.relativePath, entry.length, entry.sha256);
        File packFile = safeChild(this.installRoot, entry.relativePath);
        if (!packFile.isFile() || packFile.length() != expected.length) {
            throw new IOException("Installed audio source pack is missing or changed");
        }
        byte[] pack = readAll(packFile, expected.length);
        if (!expected.sha256.equalsIgnoreCase(sha256(pack))) {
            throw new IOException("Installed audio source pack fingerprint mismatch");
        }
        return pack;
    }

    private static byte[] readAll(File file, int expected) throws IOException {
        byte[] out = new byte[expected];
        InputStream in = new FileInputStream(file);
        int total = 0;
        while (total < expected) {
            try {
                int n = in.read(out, total, expected - total);
                if (n < 0) {
                    break;
                }
                if (n != 0) {
                    total += n;
                }
            } finally {
                try {
                    in.close();
                } catch (Throwable th) {
                    th.addSuppressed(th);
                }
            }
        }
        if (total != expected || in.read() >= 0) {
            throw new IOException("Audio source pack changed while reading");
        }
        in.close();
        return out;
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
            throw new IOException("SHA-256 is unavailable", e);
        }
    }

    private static File safeChild(File root, String relative) throws IOException {
        File child = new File(root, relative);
        String rp = root.getCanonicalPath();
        String cp = child.getCanonicalPath();
        if (!cp.startsWith(rp + File.separator)) {
            throw new IOException("Unsafe audio asset path");
        }
        return child;
    }
}
