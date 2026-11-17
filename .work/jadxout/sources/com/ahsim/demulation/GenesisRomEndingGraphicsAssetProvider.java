package com.ahsim.demulation;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class GenesisRomEndingGraphicsAssetProvider {
    private static final int FONT_STREAM = 329416;
    private static final int HOUSE_PALETTE_GRADIENTS = 444180;
    private static final int INITIAL_PALETTE = 683288;
    private static final int MAP_BYTES = 3584;
    private static final int MAX_ROM_BYTES = 16777216;
    private static final int RESOURCE_MAP_DESCRIPTOR = 815684;
    private static final int RESOURCE_PATTERN_TABLE = 791062;
    private static final int WHITE_PALETTE = 444160;

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

    private static final class Asset {
        final byte[] data;
        final String path;

        Asset(String path, byte[] data) {
            this.path = path;
            this.data = data;
        }
    }

    private GenesisRomEndingGraphicsAssetProvider() {
    }

    public static Result extract(InputStream input, long knownRomSize, File stagingRoot, ProgressListener listener) throws IOException {
        return extract(input, knownRomSize, stagingRoot, listener, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00ba A[Catch: IOException | RuntimeException -> 0x00f6, IOException -> 0x00f8, TRY_LEAVE, TryCatch #4 {IOException | RuntimeException -> 0x00f6, blocks: (B:17:0x004e, B:19:0x0054, B:21:0x0064, B:24:0x0073, B:25:0x007b, B:27:0x008e, B:29:0x0094, B:33:0x009b, B:34:0x00a2, B:35:0x00a3, B:39:0x00b5, B:41:0x00ba, B:54:0x00d4, B:53:0x00d1, B:55:0x0076, B:49:0x00cc, B:38:0x00a9), top: B:16:0x004e, inners: #0, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c5 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.ahsim.demulation.GenesisRomEndingGraphicsAssetProvider.Result extract(java.io.InputStream r17, long r18, java.io.File r20, com.ahsim.demulation.GenesisRomEndingGraphicsAssetProvider.ProgressListener r21, java.lang.String r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisRomEndingGraphicsAssetProvider.extract(java.io.InputStream, long, java.io.File, com.ahsim.demulation.GenesisRomEndingGraphicsAssetProvider$ProgressListener, java.lang.String):com.ahsim.demulation.GenesisRomEndingGraphicsAssetProvider$Result");
    }

    private static List<Asset> buildAssets(byte[] rom) throws IOException {
        ArrayList<Asset> out = new ArrayList<>();
        int patternTable = GermanRomAddressMap.fixed(rom, RESOURCE_PATTERN_TABLE);
        out.add(new Asset("ending/planet_patterns.bin", loadPatternsPersistentScratch(rom, patternTable)));
        int mapDescriptor = GermanRomAddressMap.fixed(rom, RESOURCE_MAP_DESCRIPTOR);
        int mapPtr = be32(rom, mapDescriptor + 2) & 16777215;
        byte[] mapScratch = new byte[65536];
        int mapBytes = decompressInto(rom, mapPtr, mapScratch);
        if (mapBytes != MAP_BYTES) {
            throw new IOException("Ending map decompressed to " + mapBytes);
        }
        out.add(new Asset("ending/planet_map.bin", copy(mapScratch, 0, MAP_BYTES)));
        int fontStream = GermanRomAddressMap.fixed(rom, FONT_STREAM);
        int expectedFont = be16(rom, fontStream);
        if (expectedFont != 4096) {
            throw new IOException("Unexpected ending font size");
        }
        byte[] fontScratch = new byte[65536];
        int fontBytes = decompressInto(rom, fontStream + 2, fontScratch);
        if (fontBytes != expectedFont) {
            throw new IOException("Ending font decompression mismatch");
        }
        out.add(new Asset("ending/font.bin", copy(fontScratch, 0, expectedFont)));
        out.add(new Asset("ending/initial_palette.bin", copy(rom, GermanRomAddressMap.fixed(rom, INITIAL_PALETTE), 128)));
        out.add(new Asset("ending/fade_white.bin", copy(rom, GermanRomAddressMap.fixed(rom, WHITE_PALETTE), 18)));
        int houseGradients = GermanRomAddressMap.fixed(rom, HOUSE_PALETTE_GRADIENTS);
        out.add(new Asset("ending/fade_atreides.bin", copy(rom, houseGradients + 20, 18)));
        out.add(new Asset("ending/fade_harkonnen.bin", copy(rom, houseGradients, 18)));
        out.add(new Asset("ending/fade_ordos.bin", copy(rom, houseGradients + 40, 18)));
        return out;
    }

    private static void verifyAnchors(byte[] rom, String profileId) throws IOException {
        int[] expectedFlags;
        checkRange(rom, GermanRomAddressMap.fixed(rom, 819200), 1);
        int p = GermanRomAddressMap.fixed(rom, RESOURCE_PATTERN_TABLE);
        int[] expectedPtrs = {791088, 793426, 795000, 797558};
        boolean palEnding = "dune_arrakis_europe_gm_t70246_00".equals(profileId) || GermanRomAddressMap.isExactGerman(rom);
        if (palEnding) {
            expectedFlags = new int[]{32896, 32896, 32896, 32891};
        } else {
            expectedFlags = new int[]{32896, 32896, 32896, 32896};
        }
        for (int i = 0; i < expectedPtrs.length; i++) {
            int expectedPtr = GermanRomAddressMap.fixed(rom, expectedPtrs[i]);
            if (be16(rom, p) == expectedFlags[i] && (16777215 & be32(rom, p + 2)) == expectedPtr) {
                p += 6;
            } else {
                throw new IOException("Ending planet pattern table changed");
            }
        }
        int i2 = be16(rom, p);
        if (i2 != 0) {
            throw new IOException("Ending planet pattern terminator changed");
        }
        int mapDescriptor = GermanRomAddressMap.fixed(rom, RESOURCE_MAP_DESCRIPTOR);
        if (be16(rom, mapDescriptor) != 36352 || (be32(rom, mapDescriptor + 2) & 16777215) != GermanRomAddressMap.fixed(rom, 815692)) {
            throw new IOException("Ending planet map descriptor changed");
        }
        if (be16(rom, GermanRomAddressMap.fixed(rom, FONT_STREAM)) != 4096) {
            throw new IOException("Ending font anchor changed");
        }
    }

    private static byte[] loadPatternsPersistentScratch(byte[] rom, int tableOffset) throws IOException {
        int patternCount = 0;
        int guard = 0;
        for (int p = tableOffset; be16(rom, p) != 0; p += 6) {
            guard++;
            if (guard > 64) {
                throw new IOException("Ending pattern table guard");
            }
            patternCount += be16(rom, p) & 32767;
        }
        byte[] out = new byte[patternCount * 32];
        byte[] scratch = new byte[65536];
        int p2 = tableOffset;
        int dst = 0;
        while (true) {
            int flags = be16(rom, p2);
            if (flags != 0) {
                int ptr = be32(rom, p2 + 2) & 16777215;
                p2 += 6;
                int bytes = (flags & 32767) * 32;
                if ((32768 & flags) != 0) {
                    decompressInto(rom, ptr, scratch);
                    if (bytes > scratch.length) {
                        throw new IOException("Ending pattern bank exceeds scratch");
                    }
                    System.arraycopy(scratch, 0, out, dst, bytes);
                } else {
                    checkRange(rom, ptr, bytes);
                    System.arraycopy(rom, ptr, out, dst, bytes);
                }
                dst += bytes;
            } else {
                return out;
            }
        }
    }

    private static byte[] readAll(InputStream input, long knownSize) throws IOException {
        int initial = (knownSize <= 0 || knownSize > 16777216) ? 1048576 : (int) knownSize;
        ByteArrayOutputStream out = new ByteArrayOutputStream(initial);
        byte[] buffer = new byte[RazorVramPatternLoader.METATILE_BANK_BYTES];
        int total = 0;
        while (true) {
            int count = input.read(buffer);
            if (count != -1) {
                total += count;
                if (total > 16777216) {
                    throw new IOException("ROM is unexpectedly large");
                }
                out.write(buffer, 0, count);
            } else {
                return out.toByteArray();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x00a0, code lost:
    
        throw new java.io.IOException("Ending absolute-copy range");
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0065, code lost:
    
        throw new java.io.IOException("Ending short-copy range");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int decompressInto(byte[] r9, int r10, byte[] r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisRomEndingGraphicsAssetProvider.decompressInto(byte[], int, byte[]):int");
    }

    private static File safeChild(File root, String relative) throws IOException {
        File file = new File(root, relative).getCanonicalFile();
        String rootPath = root.getCanonicalPath();
        String path = file.getCanonicalPath();
        if (!path.equals(rootPath) && !path.startsWith(rootPath + File.separator)) {
            throw new IOException("Ending graphics asset escaped staging root");
        }
        return file;
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

    private static byte[] copy(byte[] source, int offset, int length) throws IOException {
        checkRange(source, offset, length);
        byte[] out = new byte[length];
        System.arraycopy(source, offset, out, 0, length);
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
            throw new IOException("SHA-256 unavailable", e);
        }
    }

    private static int be16(byte[] b, int o) throws IOException {
        checkRange(b, o, 2);
        return ((b[o] & 255) << 8) | (b[o + 1] & 255);
    }

    private static int be32(byte[] b, int o) throws IOException {
        checkRange(b, o, 4);
        return ((b[o] & 255) << 24) | ((b[o + 1] & 255) << 16) | ((b[o + 2] & 255) << 8) | (b[o + 3] & 255);
    }

    private static void checkRange(byte[] b, int o, int n) throws IOException {
        if (o < 0 || n < 0 || o > b.length - n) {
            throw new IOException("Ending ROM range");
        }
    }

    private static void ensureOutput(byte[] out, int dst, int n) throws IOException {
        if (dst < 0 || n < 0 || dst > out.length - n) {
            throw new IOException("Ending output overrun");
        }
    }
}
