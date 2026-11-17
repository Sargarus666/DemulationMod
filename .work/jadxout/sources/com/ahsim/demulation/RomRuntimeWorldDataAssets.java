package com.ahsim.demulation;

import com.ahsim.demulation.RomWorldDataAssetManifest;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class RomRuntimeWorldDataAssets {
    public static final int LANDSCAPE_FIELDS = 284;
    public static final int LANDSCAPE_LOOKUP = 28;
    public static final int LAYOUT_PERIMETER_ADJACENCY = 514;
    public static final int MAP_BOUNDS_TWO_SCALES = 12;
    public static final int MAP_SEED_BLOBS = 817;
    public static final int MAP_SEED_SIZE_FLAGS = 790;
    public static final int PACK_BYTES = 92977;
    public static final int SCENARIO_MAP_OFFSETS_AND_HOUSE_MAP = 0;
    public static final int SLAB2_ADJACENCY_MATRIX = 742;
    public static final int SLAB2_SCORE_WEIGHTS = 738;
    public static final int STRUCTURE_LAYOUT_COUNTS = 374;
    public static final int STRUCTURE_LAYOUT_TILE_OFFSETS = 388;
    private final File root;

    public RomRuntimeWorldDataAssets(File installRoot) throws IOException {
        if (installRoot == null || !installRoot.isDirectory()) {
            throw new IOException("READY install root unavailable");
        }
        this.root = installRoot.getCanonicalFile();
    }

    public File installRoot() {
        return this.root;
    }

    public byte[] readMapScenarioLayout() throws IOException {
        RomWorldDataAssetManifest.Entry e = RomWorldDataAssetManifest.find(RomWorldDataAssetManifest.MAP_SCENARIO_LAYOUT);
        if (e == null) {
            throw new IOException("World-data manifest entry unavailable");
        }
        File f = safeChild(e.relativePath);
        if (!f.isFile() || f.length() != e.length) {
            throw new IOException("World-data READY asset is missing");
        }
        byte[] data = new byte[e.length];
        FileInputStream in = new FileInputStream(f);
        int off = 0;
        while (off < data.length) {
            try {
                int n = in.read(data, off, data.length - off);
                if (n < 0) {
                    throw new IOException("Unexpected end of world-data READY asset");
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
        if (!e.sha256.equalsIgnoreCase(sha256(data))) {
            throw new IOException("World-data READY fingerprint mismatch");
        }
        return data;
    }

    private File safeChild(String relative) throws IOException {
        File f = new File(this.root, relative).getCanonicalFile();
        String rp = this.root.getCanonicalPath();
        String fp = f.getCanonicalPath();
        if (!fp.startsWith(rp + File.separator)) {
            throw new IOException("Unsafe world-data READY path");
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
