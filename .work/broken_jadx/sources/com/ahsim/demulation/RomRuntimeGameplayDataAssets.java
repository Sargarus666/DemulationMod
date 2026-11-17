package com.ahsim.demulation;

import com.ahsim.demulation.RomGameplayDataAssetManifest;
import com.ahsim.demulation.RomOfficialRegionAssetVariants;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class RomRuntimeGameplayDataAssets {
    public static final int HOUSE_PARAMETERS = 2474;
    public static final int HOUSE_PARAMETERS_BYTES = 52;
    public static final int PACK_BYTES = 2538;
    public static final int STARPORT_DERIVED_SCALARS = 2526;
    public static final int STARPORT_DERIVED_SCALARS_BYTES = 12;
    public static final int STRUCTURE_PARAMETERS = 1296;
    public static final int STRUCTURE_PARAMETERS_BYTES = 1178;
    public static final int UNIT_PARAMETERS = 0;
    public static final int UNIT_PARAMETERS_BYTES = 1296;
    private final File root;
    private final String sourceProfile;

    public RomRuntimeGameplayDataAssets(File installRoot) throws IOException {
        this(installRoot, null);
    }

    public RomRuntimeGameplayDataAssets(File installRoot, String sourceProfile) throws IOException {
        if (installRoot == null || !installRoot.isDirectory()) {
            throw new IOException("READY install root unavailable");
        }
        this.root = installRoot.getCanonicalFile();
        this.sourceProfile = sourceProfile == null ? "" : sourceProfile;
    }

    public File installRoot() {
        return this.root;
    }

    public byte[] readUnitStructureParameters() throws IOException {
        RomGameplayDataAssetManifest.Entry e = RomGameplayDataAssetManifest.find(RomGameplayDataAssetManifest.UNIT_STRUCTURE_PARAMETERS);
        if (e == null) {
            throw new IOException("Gameplay-data manifest entry unavailable");
        }
        RomOfficialRegionAssetVariants.Expected expected = RomOfficialRegionAssetVariants.expectedForInstall(this.root, this.sourceProfile, e.relativePath, e.length, e.sha256);
        File f = safeChild(e.relativePath);
        if (!f.isFile() || f.length() != expected.length) {
            throw new IOException("Gameplay-data READY asset is missing");
        }
        byte[] data = new byte[expected.length];
        FileInputStream in = new FileInputStream(f);
        int off = 0;
        while (off < data.length) {
            try {
                int n = in.read(data, off, data.length - off);
                if (n < 0) {
                    throw new IOException("Unexpected end of gameplay-data READY asset");
                }
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
        in.close();
        if (!expected.sha256.equalsIgnoreCase(sha256(data))) {
            throw new IOException("Gameplay-data READY fingerprint mismatch");
        }
        return data;
    }

    private File safeChild(String relative) throws IOException {
        File f = new File(this.root, relative).getCanonicalFile();
        String rp = this.root.getCanonicalPath();
        String fp = f.getCanonicalPath();
        if (!fp.startsWith(rp + File.separator)) {
            throw new IOException("Unsafe gameplay-data READY path");
        }
        return f;
    }

    private static String sha256(byte[] data) throws IOException {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] d = md.digest(data);
            StringBuilder b = new StringBuilder(64);
            for (byte v : d) {
                b.append(String.format(Locale.US, "%02x", Integer.valueOf(v & 255)));
            }
            return b.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 unavailable", e);
        }
    }
}
