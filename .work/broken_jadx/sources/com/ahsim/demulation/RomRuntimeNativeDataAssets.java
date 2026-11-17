package com.ahsim.demulation;

import com.ahsim.demulation.RomNativeDataAssetManifest;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class RomRuntimeNativeDataAssets {
    public static final int ACTION_SWITCH_TYPES_BYTES = 28;
    public static final int ACTION_SWITCH_TYPES_OFFSET = 0;
    public static final int FREMEN_COUNTS_BYTES = 16;
    public static final int FREMEN_COUNTS_OFFSET = 36;
    public static final int FREMEN_TYPES_BYTES = 8;
    public static final int FREMEN_TYPES_OFFSET = 28;
    public static final int MCV_ANCHORS_BYTES = 8;
    public static final int MCV_ANCHORS_OFFSET = 756;
    public static final int PACK_BYTES = 764;
    public static final int RUBBLE_VISUAL_IDS_BYTES = 14;
    public static final int RUBBLE_VISUAL_IDS_OFFSET = 52;
    public static final int VISUAL_INDEX_COUNT = 21;
    public static final int VISUAL_INDEX_ENTRY_BYTES = 6;
    public static final int VISUAL_INDEX_OFFSET = 66;
    public static final int VISUAL_STREAMS_BYTES = 564;
    public static final int VISUAL_STREAMS_OFFSET = 192;
    private final File root;

    public RomRuntimeNativeDataAssets(File root) throws IOException {
        if (root == null || !root.isDirectory()) {
            throw new IOException("Native-data READY root is unavailable");
        }
        this.root = root.getCanonicalFile();
    }

    public File installRoot() {
        return this.root;
    }

    public File remainingPureDataFile() throws IOException {
        return verifiedFile(RomNativeDataAssetManifest.REMAINING_PURE_DATA);
    }

    public byte[] readRemainingPureData() throws IOException {
        RomNativeDataAssetManifest.Entry e = RomNativeDataAssetManifest.find(RomNativeDataAssetManifest.REMAINING_PURE_DATA);
        File f = verifiedFile(e.relativePath);
        byte[] data = new byte[e.length];
        FileInputStream in = new FileInputStream(f);
        int off = 0;
        while (off < data.length) {
            try {
                int n = in.read(data, off, data.length - off);
                if (n < 0) {
                    throw new IOException("Unexpected end of native-data READY asset");
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
            throw new IOException("Native-data READY fingerprint mismatch");
        }
        return data;
    }

    private File verifiedFile(String relative) throws IOException {
        RomNativeDataAssetManifest.Entry e = RomNativeDataAssetManifest.find(relative);
        if (e == null) {
            throw new IOException("Unknown native-data READY asset");
        }
        File f = safeChild(relative);
        if (!f.isFile() || f.length() != e.length) {
            throw new IOException("Native-data READY asset is missing");
        }
        return f;
    }

    private File safeChild(String relative) throws IOException {
        File f = new File(this.root, relative).getCanonicalFile();
        String rp = this.root.getCanonicalPath();
        String fp = f.getCanonicalPath();
        if (!fp.startsWith(rp + File.separator)) {
            throw new IOException("Unsafe native-data READY path");
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
