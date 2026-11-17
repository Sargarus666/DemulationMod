package com.ahsim.demulation;

import com.ahsim.demulation.RomNativeDataAssetManifest;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes2.dex */
public final class GenesisRomNativeDataAssetProvider {
    private static final int ACTION_INFO = 446208;
    private static final int FREMEN_COUNTS = 613600;
    private static final int FREMEN_TYPES = 613592;
    private static final int MAX_ROM_BYTES = 8388608;
    private static final int MCV_ANCHORS = 1044092;
    private static final int ROM_IMAGE_BYTES = 1048576;
    private static final int RUBBLE_VISUAL_IDS = 441338;
    private static final int STRUCT_PTRS = 440660;
    private static final int VISUAL_PTRS = 436668;

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

    private GenesisRomNativeDataAssetProvider() {
    }

    public static Result extract(InputStream input, long knownRomSize, File stagingRoot, ProgressListener listener) throws IOException {
        if (input == null) {
            throw new IOException("ROM stream is unavailable");
        }
        if (stagingRoot == null) {
            throw new IOException("Native-data staging is unavailable");
        }
        if (knownRomSize > 8388608) {
            throw new IOException("ROM is unexpectedly large");
        }
        byte[] rom = readAll(input, knownRomSize);
        if (rom.length < ROM_IMAGE_BYTES) {
            throw new IOException("ROM is too small for native pure-data tables");
        }
        byte[] pack = buildRemainingPureDataPack(rom);
        RomNativeDataAssetManifest.Entry expected = RomNativeDataAssetManifest.entries().get(0);
        ArrayList<String> mismatches = new ArrayList<>();
        deleteRecursively(stagingRoot);
        if (!stagingRoot.mkdirs() && !stagingRoot.isDirectory()) {
            throw new IOException("Could not create native-data staging");
        }
        try {
            if (pack.length == expected.length && expected.sha256.equalsIgnoreCase(sha256(pack))) {
                File out = safeChild(stagingRoot, expected.relativePath);
                File parent = out.getParentFile();
                if (parent != null && !parent.mkdirs() && !parent.isDirectory()) {
                    throw new IOException("Could not create native-data staging directory");
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
            }
            mismatches.add(expected.relativePath);
            deleteRecursively(stagingRoot);
            return new Result(1, 0, 0L, mismatches, stagingRoot);
        } catch (IOException | RuntimeException e) {
            deleteRecursively(stagingRoot);
            throw e;
        }
    }

    public static byte[] buildRemainingPureDataPack(byte[] rom) throws IOException {
        if (rom == null || rom.length < ROM_IMAGE_BYTES) {
            throw new IOException("ROM image unavailable");
        }
        ByteArrayOutputStream out = new ByteArrayOutputStream(RomRuntimeNativeDataAssets.PACK_BYTES);
        int actionInfo = GermanRomAddressMap.fixed(rom, ACTION_INFO);
        int fremenTypes = GermanRomAddressMap.fixed(rom, FREMEN_TYPES);
        int fremenCounts = GermanRomAddressMap.fixed(rom, FREMEN_COUNTS);
        int rubbleVisualIds = GermanRomAddressMap.fixed(rom, RUBBLE_VISUAL_IDS);
        for (int i = 0; i < 14; i++) {
            writeRange(out, rom, (i * 12) + actionInfo, 2);
        }
        writeRange(out, rom, fremenTypes, 8);
        writeRange(out, rom, fremenCounts, 16);
        writeRange(out, rom, rubbleVisualIds, 14);
        boolean[] used = new boolean[64];
        for (int type = 0; type < 19; type++) {
            int visual = be16(rom, ptr24(rom, STRUCT_PTRS, type) + 62) & 63;
            used[visual] = true;
        }
        for (int layout = 0; layout < 7; layout++) {
            int visual2 = be16(rom, (layout * 2) + rubbleVisualIds) & 63;
            used[visual2] = true;
        }
        TreeMap<Integer, byte[]> uniqueBySource = new TreeMap<>();
        int[] sourceByVisual = new int[64];
        int[] lengthByVisual = new int[64];
        int usedCount = 0;
        for (int visual3 = 0; visual3 < used.length; visual3++) {
            if (used[visual3]) {
                int p = ptr24(rom, VISUAL_PTRS, visual3);
                byte[] stream = parseVisualStream(rom, p, visual3);
                if (!uniqueBySource.containsKey(Integer.valueOf(p))) {
                    uniqueBySource.put(Integer.valueOf(p), stream);
                }
                sourceByVisual[visual3] = p;
                lengthByVisual[visual3] = stream.length;
                usedCount++;
            }
        }
        if (usedCount != 21 || uniqueBySource.size() != 19) {
            throw new IOException("Unexpected structure visual topology");
        }
        TreeMap<Integer, Integer> offsetBySource = new TreeMap<>();
        int streamBytes = 0;
        for (Map.Entry<Integer, byte[]> e : uniqueBySource.entrySet()) {
            offsetBySource.put(e.getKey(), Integer.valueOf(streamBytes));
            streamBytes += e.getValue().length;
            actionInfo = actionInfo;
        }
        if (streamBytes != 564) {
            throw new IOException("Unexpected native visual-stream payload size");
        }
        for (int visual4 = 0; visual4 < used.length; visual4++) {
            if (used[visual4]) {
                writeU16(out, visual4);
                writeU16(out, offsetBySource.get(Integer.valueOf(sourceByVisual[visual4])).intValue());
                writeU16(out, lengthByVisual[visual4]);
            }
        }
        Iterator<Map.Entry<Integer, byte[]>> it = uniqueBySource.entrySet().iterator();
        while (it.hasNext()) {
            out.write(it.next().getValue());
        }
        writeRange(out, rom, GermanRomAddressMap.fixed(rom, MCV_ANCHORS), 8);
        byte[] result = out.toByteArray();
        if (result.length != 764) {
            throw new IOException("Unexpected remaining pure-data pack size");
        }
        return result;
    }

    private static byte[] parseVisualStream(byte[] rom, int p, int visual) throws IOException {
        ByteArrayOutputStream out = new ByteArrayOutputStream(40);
        for (int step = 0; step < 32; step++) {
            checkRange(rom, (step * 4) + p, 4);
            out.write(rom, (step * 4) + p, 4);
            if (be16(rom, (step * 4) + p + 2) == 65535) {
                return out.toByteArray();
            }
        }
        throw new IOException("Visual stream has no terminator: " + visual);
    }

    private static int ptr24(byte[] rom, int table, int index) throws IOException {
        int physicalTable = GermanRomAddressMap.fixed(rom, table);
        long raw = be32(rom, (index * 4) + physicalTable);
        int p = (int) (16777215 & raw);
        checkRange(rom, p, 1);
        return p;
    }

    private static int be16(byte[] data, int off) throws IOException {
        checkRange(data, off, 2);
        return ((data[off] & 255) << 8) | (data[off + 1] & 255);
    }

    private static long be32(byte[] data, int off) throws IOException {
        checkRange(data, off, 4);
        return ((data[off] & 255) << 24) | ((data[off + 1] & 255) << 16) | ((data[off + 2] & 255) << 8) | (data[off + 3] & 255);
    }

    private static void writeU16(ByteArrayOutputStream out, int value) {
        out.write((value >>> 8) & 255);
        out.write(value & 255);
    }

    private static void writeRange(ByteArrayOutputStream out, byte[] data, int off, int len) throws IOException {
        checkRange(data, off, len);
        out.write(data, off, len);
    }

    private static void checkRange(byte[] data, int off, int len) throws IOException {
        if (off < 0 || len < 0 || off > data.length || data.length - off < len) {
            throw new IOException("Native pure-data ROM range is outside selected image");
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
            throw new IOException("Unsafe native-data asset path");
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
