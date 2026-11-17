package com.ahsim.demulation;

import com.ahsim.demulation.RomWorldDataAssetManifest;
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
public final class GenesisRomWorldDataAssetProvider {
    private static final int MAX_ROM_BYTES = 16777216;
    private static final int ROM_IMAGE_BYTES = 1048576;

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

    private GenesisRomWorldDataAssetProvider() {
    }

    public static Result extract(InputStream input, long knownRomSize, File stagingRoot, ProgressListener listener) throws IOException {
        if (input == null) {
            throw new IOException("ROM stream is unavailable");
        }
        if (stagingRoot == null) {
            throw new IOException("World-data staging is unavailable");
        }
        if (knownRomSize > 16777216) {
            throw new IOException("ROM is unexpectedly large");
        }
        byte[] rom = readAll(input, knownRomSize);
        if (rom.length < ROM_IMAGE_BYTES) {
            throw new IOException("ROM is too small for world-data tables");
        }
        byte[] pack = buildMapScenarioLayoutPack(rom);
        RomWorldDataAssetManifest.Entry expected = RomWorldDataAssetManifest.entries().get(0);
        ArrayList<String> mismatches = new ArrayList<>();
        deleteRecursively(stagingRoot);
        if (!stagingRoot.mkdirs() && !stagingRoot.isDirectory()) {
            throw new IOException("Could not create world-data staging");
        }
        try {
            if (pack.length == expected.length && expected.sha256.equalsIgnoreCase(sha256(pack))) {
                File out = safeChild(stagingRoot, expected.relativePath);
                File parent = out.getParentFile();
                if (parent != null && !parent.mkdirs() && !parent.isDirectory()) {
                    throw new IOException("Could not create world-data staging directory");
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

    public static byte[] buildMapScenarioLayoutPack(byte[] rom) throws IOException {
        if (rom == null || rom.length < ROM_IMAGE_BYTES) {
            throw new IOException("ROM image unavailable");
        }
        ByteArrayOutputStream out = new ByteArrayOutputStream(RomRuntimeWorldDataAssets.PACK_BYTES);
        writeRange(out, rom, GermanRomAddressMap.fixed(rom, 464040), 12);
        writeRange(out, rom, GermanRomAddressMap.fixed(rom, 446082), 16);
        writeRange(out, rom, GermanRomAddressMap.fixed(rom, 22556), 256);
        for (int i = 0; i < 15; i++) {
            int base = GermanRomAddressMap.fixed(rom, 445618) + (i * 28);
            writeRange(out, rom, base + 12, 2);
            writeRange(out, rom, base + 14, 2);
            writeRange(out, rom, base + 16, 2);
        }
        writeRange(out, rom, GermanRomAddressMap.fixed(rom, 440366), 14);
        writeRange(out, rom, GermanRomAddressMap.fixed(rom, 440128), 126);
        writeRange(out, rom, GermanRomAddressMap.fixed(rom, 440380), 224);
        writeRange(out, rom, GermanRomAddressMap.fixed(rom, 441286), 4);
        writeRange(out, rom, GermanRomAddressMap.fixed(rom, 441290), 48);
        int[] addresses = new int[27];
        int[] sizes = new int[27];
        for (int i2 = 0; i2 < 27; i2++) {
            int scenarioTable = GermanRomAddressMap.fixed(rom, 111226);
            long raw = be32(rom, (i2 * 4) + scenarioTable);
            int i3 = 0;
            boolean small32 = (2147483648L & raw) != 0;
            int address = (int) (16777215 & raw);
            int size = small32 ? RazorTerrainAtlas.HEIGHT : DuneHackR82ScenarioRecordDecoder.MAX_RECORDS;
            checkRange(rom, address, size);
            if (small32) {
                i3 = 1;
            }
            out.write(i3);
            addresses[i2] = address;
            sizes[i2] = size;
        }
        for (int i4 = 0; i4 < 27; i4++) {
            writeRange(out, rom, addresses[i4], sizes[i4]);
        }
        byte[] result = out.toByteArray();
        if (result.length != 92977) {
            throw new IOException("Unexpected world-data projection size");
        }
        return result;
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
            throw new IOException("World-data ROM range is outside selected image");
        }
    }

    private static byte[] readAll(InputStream in, long knownSize) throws IOException {
        int initial = (knownSize <= 0 || knownSize >= 16777216) ? ROM_IMAGE_BYTES : (int) knownSize;
        ByteArrayOutputStream out = new ByteArrayOutputStream(initial);
        byte[] buffer = new byte[RazorVramPatternLoader.METATILE_BANK_BYTES];
        int total = 0;
        while (true) {
            int n = in.read(buffer);
            if (n >= 0) {
                if (n != 0) {
                    total += n;
                    if (total > 16777216) {
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
            throw new IOException("Unsafe world-data asset path");
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
