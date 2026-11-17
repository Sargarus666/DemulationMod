package com.ahsim.demulation;

import com.ahsim.demulation.RomGameplayDataAssetManifest;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class GenesisRomGameplayDataAssetProvider {
    private static final int HOUSE_BASE = 444250;
    private static final int MAX_ROM_BYTES = 8388608;
    private static final int ROM_IMAGE_BYTES = 1048576;
    private static final int STRUCT_PTRS = 440660;
    private static final int UNIT_PTRS = 443836;
    private static final int[] UNIT_WORDS = {12, 14, 16, 18, 22, 24, 40, 46, 48, 56, 62, 64, 66, 68, 74, 80, 82, 84, 86, 88, 90};
    private static final int[] STRUCT_WORDS = {12, 14, 16, 18, 22, 24, 26, 46, 48, 56, 58, 60, 62, 96, 98, 100};
    private static final int[] HOUSE_FIELDS = {4, 8, 12, 14, 18};

    public interface ProgressListener {
        void onProgress(int i, int i2, String str);
    }

    public static final class Result {
        public final List<String> mismatches;
        public final long payloadBytes;
        public final File stagedRoot;
        public final int totalEntries;
        public final int verifiedEntries;

        private Result(int totalEntries, int verifiedEntries, long payloadBytes, List<String> mismatches, File stagedRoot) {
            this.totalEntries = totalEntries;
            this.verifiedEntries = verifiedEntries;
            this.payloadBytes = payloadBytes;
            this.mismatches = Collections.unmodifiableList(new ArrayList(mismatches));
            this.stagedRoot = stagedRoot;
        }

        public boolean allVerified() {
            return this.totalEntries > 0 && this.totalEntries == this.verifiedEntries && this.mismatches.isEmpty();
        }
    }

    private GenesisRomGameplayDataAssetProvider() {
    }

    public static Result extract(InputStream input, long knownRomSize, File stagingRoot, ProgressListener listener) throws IOException {
        return extract(input, knownRomSize, stagingRoot, listener, null);
    }

    public static Result extract(InputStream input, long knownRomSize, File stagingRoot, ProgressListener listener, String profileId) throws IOException {
        if (input == null) {
            throw new IOException("ROM stream is unavailable");
        }
        if (stagingRoot == null) {
            throw new IOException("Gameplay-data staging is unavailable");
        }
        if (knownRomSize > 8388608) {
            throw new IOException("ROM is unexpectedly large");
        }
        byte[] rom = readAll(input, knownRomSize);
        if (rom.length < ROM_IMAGE_BYTES) {
            throw new IOException("ROM is too small for gameplay-data tables");
        }
        byte[] pack = buildUnitStructureParametersPack(rom);
        RomGameplayDataAssetManifest.Entry expected = RomGameplayDataAssetManifest.entries().get(0);
        ArrayList<String> mismatches = new ArrayList<>();
        deleteRecursively(stagingRoot);
        if (!stagingRoot.mkdirs() && !stagingRoot.isDirectory()) {
            throw new IOException("Could not create gameplay-data staging");
        }
        try {
        } catch (IOException | RuntimeException e) {
            e = e;
        }
        try {
            if (!RomOfficialRegionAssetVariants.matchesExtracted(profileId, expected.relativePath, pack, expected.length, expected.sha256)) {
                try {
                    mismatches.add(expected.relativePath);
                    deleteRecursively(stagingRoot);
                    return new Result(1, 0, 0L, mismatches, stagingRoot);
                } catch (IOException e2) {
                    e = e2;
                    deleteRecursively(stagingRoot);
                    throw e;
                } catch (RuntimeException e3) {
                    e = e3;
                    deleteRecursively(stagingRoot);
                    throw e;
                }
            }
            File out = safeChild(stagingRoot, expected.relativePath);
            File parent = out.getParentFile();
            if (parent != null && !parent.mkdirs() && !parent.isDirectory()) {
                throw new IOException("Could not create gameplay-data staging directory");
            }
            FileOutputStream stream = new FileOutputStream(out);
            try {
                stream.write(pack);
                stream.getFD().sync();
                stream.close();
                if (listener != null) {
                    listener.onProgress(1, 1, expected.relativePath);
                }
                return new Result(1, 1, pack.length, mismatches, stagingRoot);
            } finally {
            }
        } catch (IOException e4) {
            e = e4;
            deleteRecursively(stagingRoot);
            throw e;
        } catch (RuntimeException e5) {
            e = e5;
            deleteRecursively(stagingRoot);
            throw e;
        }
    }

    public static byte[] buildUnitStructureParametersPack(byte[] rom) throws IOException {
        if (rom == null || rom.length < ROM_IMAGE_BYTES) {
            throw new IOException("ROM image unavailable");
        }
        ByteArrayOutputStream out = new ByteArrayOutputStream(RomRuntimeGameplayDataAssets.PACK_BYTES);
        int type = 0;
        while (true) {
            if (type >= 27) {
                break;
            }
            int p = ptr24(rom, UNIT_PTRS, type);
            for (int off : UNIT_WORDS) {
                writeRange(out, rom, p + off, 2);
            }
            writeRange(out, rom, p + 28, 4);
            writeRange(out, rom, p + 33, 1);
            writeRange(out, rom, p + 50, 1);
            type++;
        }
        for (int type2 = 0; type2 < 19; type2++) {
            int p2 = ptr24(rom, STRUCT_PTRS, type2);
            for (int off2 : STRUCT_WORDS) {
                writeRange(out, rom, p2 + off2, 2);
            }
            writeRange(out, rom, p2 + 28, 4);
            writeRange(out, rom, p2 + 52, 4);
            writeRange(out, rom, p2 + 33, 1);
            writeRange(out, rom, p2 + 50, 1);
            for (int off3 = 76; off3 < 96; off3 += 2) {
                writeRange(out, rom, p2 + off3, 2);
            }
        }
        int houseBase = GermanRomAddressMap.fixed(rom, HOUSE_BASE);
        for (int house = 0; house < 5; house++) {
            int p3 = (house * 30) + houseBase;
            for (int off4 : HOUSE_FIELDS) {
                writeRange(out, rom, p3 + off4, 2);
            }
        }
        int house2 = houseBase + 150;
        writeRange(out, rom, house2 + 14, 2);
        int p27 = ptr24(rom, UNIT_PTRS, 27);
        writeRange(out, rom, p27 + 22, 2);
        for (int type3 = 27; type3 < 32; type3++) {
            int p4 = ptr24(rom, UNIT_PTRS, type3);
            writeRange(out, rom, p4 + 46, 2);
        }
        byte[] result = out.toByteArray();
        if (result.length != 2538) {
            throw new IOException("Unexpected gameplay-data projection size");
        }
        return result;
    }

    private static int ptr24(byte[] rom, int table, int index) throws IOException {
        int physicalTable = GermanRomAddressMap.fixed(rom, table);
        long raw = be32(rom, (index * 4) + physicalTable);
        int p = (int) (16777215 & raw);
        checkRange(rom, p, 1);
        return p;
    }

    private static long be32(byte[] data, int off) throws IOException {
        checkRange(data, off, 4);
        return ((data[off] & 255) << 24) | ((data[off + 1] & 255) << 16) | ((data[off + 2] & 255) << 8) | (data[off + 3] & 255);
    }

    private static void writeRange(ByteArrayOutputStream out, byte[] data, int off, int len) throws IOException {
        checkRange(data, off, len);
        out.write(data, off, len);
    }

    private static void checkRange(byte[] data, int off, int len) throws IOException {
        if (off < 0 || len < 0 || off > data.length || data.length - off < len) {
            throw new IOException("Gameplay-data ROM range is outside selected image");
        }
    }

    private static byte[] readAll(InputStream in, long knownSize) throws IOException {
        int initial = (knownSize <= 0 || knownSize >= 8388608) ? ROM_IMAGE_BYTES : (int) knownSize;
        ByteArrayOutputStream out = new ByteArrayOutputStream(initial);
        byte[] buffer = new byte[RazorVramPatternLoader.METATILE_BANK_BYTES];
        int total = 0;
        while (true) {
            int n = in.read(buffer);
            if (n >= 0) {
                if (n != 0) {
                    total += n;
                    if (total > MAX_ROM_BYTES) {
                        throw new IOException("ROM is unexpectedly large");
                    }
                    out.write(buffer, 0, n);
                }
            } else {
                return out.toByteArray();
            }
        }
    }

    private static File safeChild(File root, String relative) throws IOException {
        File f = new File(root, relative).getCanonicalFile();
        String rp = root.getCanonicalPath();
        String fp = f.getCanonicalPath();
        if (!fp.startsWith(rp + File.separator)) {
            throw new IOException("Unsafe gameplay-data asset path");
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

    public static void deleteRecursively(File file) throws IOException {
        File[] children;
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isDirectory() && (children = file.listFiles()) != null) {
            for (File child : children) {
                deleteRecursively(child);
            }
        }
        if (!file.delete() && file.exists()) {
            throw new IOException("Could not delete " + file);
        }
    }
}
