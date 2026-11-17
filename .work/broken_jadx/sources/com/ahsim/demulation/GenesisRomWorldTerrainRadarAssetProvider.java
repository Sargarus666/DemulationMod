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
public final class GenesisRomWorldTerrainRadarAssetProvider {
    private static final int[] EXPECTED_COUNTS = {128, 128, 128, 128, 128, 128, 128, 26};
    private static final int[] EXPECTED_POINTERS = {771384, 773442, 776052, 778764, 781612, 784630, 787712, 790416};
    private static final int MAX_ROM_BYTES = 16777216;
    private static final int METATILES = 306672;
    private static final int METATILE_COUNT = 362;
    private static final int PALETTE = 683160;
    private static final int PATTERN_COUNT = 922;
    private static final int RADAR_HOUSE_COLOR_BYTES = 5;
    private static final int RADAR_HOUSE_COLOR_TABLE = 21074;
    private static final int RADAR_TERRAIN_COLOR_BYTES = 512;
    private static final int RADAR_TERRAIN_COLOR_TABLE = 21082;
    private static final int RADAR_TRANSITION_FRAME_BYTES = 512;
    private static final int RADAR_TRANSITION_FRAME_COUNT = 12;
    private static final int RADAR_TRANSITION_FRAME_FIRST = 422866;
    private static final int RESOURCE_ENTRY = 818354;
    private static final int RESOURCE_ID = 4;
    private static final int RESOURCE_TABLE = 818290;
    private static final int STRUCTURE_BEACON_FRAME_BYTES = 128;
    private static final int STRUCTURE_BEACON_FRAME_COUNT = 8;
    private static final int STRUCTURE_BEACON_FRAME_FIRST = 26896;
    private static final int TILE_TABLE = 771334;

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

    private GenesisRomWorldTerrainRadarAssetProvider() {
    }

    public static Result extract(InputStream input, long knownRomSize, File stagingRoot, ProgressListener listener) throws IOException {
        return extractInternal(input, knownRomSize, stagingRoot, listener, true, null);
    }

    public static Result extract(InputStream input, long knownRomSize, File stagingRoot, ProgressListener listener, String profileId) throws IOException {
        return extractInternal(input, knownRomSize, stagingRoot, listener, true, profileId);
    }

    public static Result extractOverlayCandidate(InputStream input, long knownRomSize, File stagingRoot, ProgressListener listener) throws IOException {
        return extractInternal(input, knownRomSize, stagingRoot, listener, false, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x015e, code lost:
    
        r17 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0164, code lost:
    
        if (r5.isEmpty() != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0166, code lost:
    
        deleteRecursively(r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x016f, code lost:
    
        r2 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0175, code lost:
    
        return new com.ahsim.demulation.GenesisRomWorldTerrainRadarAssetProvider.Result(r12.size(), r2, r3, r5, r26, null);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.ahsim.demulation.GenesisRomWorldTerrainRadarAssetProvider.Result extractInternal(java.io.InputStream r23, long r24, java.io.File r26, com.ahsim.demulation.GenesisRomWorldTerrainRadarAssetProvider.ProgressListener r27, boolean r28, java.lang.String r29) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisRomWorldTerrainRadarAssetProvider.extractInternal(java.io.InputStream, long, java.io.File, com.ahsim.demulation.GenesisRomWorldTerrainRadarAssetProvider$ProgressListener, boolean, java.lang.String):com.ahsim.demulation.GenesisRomWorldTerrainRadarAssetProvider$Result");
    }

    private static List<Asset> buildAssets(byte[] rom) throws IOException {
        ArrayList<Asset> out = new ArrayList<>();
        out.add(new Asset("terrain/patterns.bin", loadPatternChunks(rom)));
        out.add(new Asset("terrain/metatile_descriptors.bin", copy(rom, GermanRomAddressMap.fixed(rom, METATILES), 11584)));
        out.add(new Asset("terrain/palette.bin", copy(rom, GermanRomAddressMap.fixed(rom, PALETTE), 128)));
        ByteArrayOutputStream radarColors = new ByteArrayOutputStream(517);
        radarColors.write(copy(rom, GermanRomAddressMap.fixed(rom, RADAR_TERRAIN_COLOR_TABLE), 512));
        radarColors.write(copy(rom, GermanRomAddressMap.fixed(rom, RADAR_HOUSE_COLOR_TABLE), 5));
        out.add(new Asset("radar/color_tables.bin", radarColors.toByteArray()));
        out.add(new Asset("radar/transition_quadrants.bin", copy(rom, GermanRomAddressMap.fixed(rom, RADAR_TRANSITION_FRAME_FIRST), 6144)));
        out.add(new Asset("world/structure_beacon_patterns.bin", copy(rom, GermanRomAddressMap.fixed(rom, STRUCTURE_BEACON_FRAME_FIRST), RazorTerrainAtlas.HEIGHT)));
        return out;
    }

    private static void verifyAnchors(byte[] rom) throws IOException {
        if (rom.length >= 819200) {
            int resourceEntry = GermanRomAddressMap.fixed(rom, RESOURCE_ENTRY);
            if (be32(rom, resourceEntry) != GermanRomAddressMap.fixed(rom, TILE_TABLE) || be32(rom, resourceEntry + 4) != 0 || be32(rom, resourceEntry + 8) != GermanRomAddressMap.fixed(rom, PALETTE) || be32(rom, resourceEntry + 12) != 0) {
                throw new IOException("Unexpected tactical resource 4 entry");
            }
            int table = GermanRomAddressMap.fixed(rom, TILE_TABLE);
            int total = 0;
            for (int i = 0; i < EXPECTED_COUNTS.length; i++) {
                int flags = be16(rom, table);
                int pointer = be32(rom, table + 2);
                table += 6;
                int count = flags & 32767;
                if ((32768 & flags) == 0 || count != EXPECTED_COUNTS[i] || pointer != GermanRomAddressMap.fixed(rom, EXPECTED_POINTERS[i])) {
                    throw new IOException("Unexpected tactical pattern chunk " + i);
                }
                total += count;
            }
            int i2 = be16(rom, table);
            if (i2 == 0) {
                int i3 = 922;
                if (total == 922) {
                    int maxIndex = -1;
                    int flips = 0;
                    boolean[] paletteLines = new boolean[4];
                    int metatiles = GermanRomAddressMap.fixed(rom, METATILES);
                    int tileId = 0;
                    while (tileId < 362) {
                        int descriptor = (tileId * 32) + metatiles;
                        int i4 = 0;
                        while (i4 < 16) {
                            int attr = be16(rom, (i4 * 2) + descriptor);
                            int index = attr & 2047;
                            if (index >= i3) {
                                throw new IOException("Metatile pattern index outside resource 4");
                            }
                            if (index > maxIndex) {
                                maxIndex = index;
                            }
                            paletteLines[(attr >>> 13) & 3] = true;
                            if ((attr & 6144) != 0) {
                                flips++;
                            }
                            i4++;
                            i3 = 922;
                        }
                        tileId++;
                        i3 = 922;
                    }
                    if (maxIndex != 921 || flips != 217 || !paletteLines[0] || !paletteLines[1] || !paletteLines[2] || !paletteLines[3]) {
                        throw new IOException("Metatile descriptor coverage mismatch");
                    }
                    return;
                }
            }
            throw new IOException("Tactical pattern table terminator/count mismatch");
        }
        throw new IOException("ROM is too small for terrain resources");
    }

    private static byte[] loadPatternChunks(byte[] rom) throws IOException {
        byte[] out = new byte[29504];
        int table = GermanRomAddressMap.fixed(rom, TILE_TABLE);
        int dst = 0;
        for (int i = 0; i < EXPECTED_COUNTS.length; i++) {
            int flags = be16(rom, table);
            int pointer = be32(rom, table + 2);
            table += 6;
            int count = flags & 32767;
            int bytes = count * 32;
            byte[] decoded = decompress(rom, pointer, bytes);
            System.arraycopy(decoded, 0, out, dst, bytes);
            dst += bytes;
        }
        int i2 = out.length;
        if (dst != i2) {
            throw new IOException("Terrain pattern payload mismatch");
        }
        return out;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x014c, code lost:
    
        throw new java.io.IOException("Terrain long-copy range error");
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00d2, code lost:
    
        throw new java.io.IOException("Terrain absolute-copy range error");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[] decompress(byte[] r10, int r11, int r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisRomWorldTerrainRadarAssetProvider.decompress(byte[], int, int):byte[]");
    }

    private static byte[] readAll(InputStream input, long knownRomSize) throws IOException {
        int initial = (knownRomSize <= 0 || knownRomSize >= 16777216) ? 8192 : (int) knownRomSize;
        ByteArrayOutputStream out = new ByteArrayOutputStream(initial);
        byte[] buffer = new byte[8192];
        while (true) {
            int count = input.read(buffer);
            if (count != -1) {
                if (count != 0) {
                    if (out.size() > 16777216 - count) {
                        throw new IOException("ROM is unexpectedly large");
                    }
                    out.write(buffer, 0, count);
                }
            } else {
                byte[] rom = out.toByteArray();
                if (knownRomSize > 0 && knownRomSize != rom.length) {
                    throw new IOException("ROM size changed while reading");
                }
                return rom;
            }
        }
    }

    private static byte[] copy(byte[] data, int offset, int length) throws IOException {
        checkRange(data, offset, length);
        byte[] out = new byte[length];
        System.arraycopy(data, offset, out, 0, length);
        return out;
    }

    private static int be16(byte[] data, int offset) throws IOException {
        checkRange(data, offset, 2);
        return ((data[offset] & 255) << 8) | (data[offset + 1] & 255);
    }

    private static int be32(byte[] data, int offset) throws IOException {
        checkRange(data, offset, 4);
        return ((data[offset] & 255) << 24) | ((data[offset + 1] & 255) << 16) | ((data[offset + 2] & 255) << 8) | (data[offset + 3] & 255);
    }

    private static void checkRange(byte[] data, int offset, int length) throws IOException {
        if (offset < 0 || length < 0 || offset > data.length - length) {
            throw new IOException("ROM graphics offset outside file: " + offset + "+" + length);
        }
    }

    private static File safeChild(File root, String relativePath) throws IOException {
        File canonicalRoot = root.getCanonicalFile();
        File child = new File(canonicalRoot, relativePath).getCanonicalFile();
        String rootPath = canonicalRoot.getPath();
        String childPath = child.getPath();
        if (!childPath.equals(rootPath) && !childPath.startsWith(rootPath + File.separator)) {
            throw new IOException("Asset path escaped staging root");
        }
        return child;
    }

    private static String sha256(byte[] data) throws IOException {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] hash = digest.digest(data);
            StringBuilder out = new StringBuilder(64);
            for (byte b : hash) {
                out.append(String.format(Locale.US, "%02x", Integer.valueOf(b & 255)));
            }
            return out.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 unavailable", e);
        }
    }

    public static void deleteRecursively(File file) throws IOException {
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isDirectory()) {
            File[] children = file.listFiles();
            if (children == null) {
                throw new IOException("Could not list " + file);
            }
            for (File child : children) {
                deleteRecursively(child);
            }
        }
        if (!file.delete() && file.exists()) {
            throw new IOException("Could not delete " + file);
        }
    }
}
