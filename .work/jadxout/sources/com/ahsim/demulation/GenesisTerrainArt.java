package com.ahsim.demulation;

import android.graphics.Bitmap;
import android.graphics.Color;
import java.io.IOException;
import java.lang.reflect.Array;

/* loaded from: classes2.dex */
public final class GenesisTerrainArt {
    private static final int DUNEHACK_METATILE_COUNT = 360;
    private static final int MAX_VRAM_PATTERN_COUNT = 2048;
    private static final int METATILES = 306672;
    public static final int METATILE_COUNT = 362;
    private static final int PALETTE = 683160;
    public static final int PATTERN_COUNT = 922;
    private static final int RADAR_COLOR_TABLE_LENGTH = 512;
    private static final int RADAR_HOUSE_COLOR_TABLE = 21074;
    private static final int RADAR_PALETTE_LINE = 2;
    private static final int RADAR_TERRAIN_COLOR_TABLE = 21082;
    private static final int RADAR_TRANSITION_FRAME_BYTES = 512;
    private static final int RADAR_TRANSITION_FRAME_COUNT = 12;
    private static final int RADAR_TRANSITION_FRAME_FIRST = 422866;
    private static final int RADAR_TRANSITION_FULL_PX = 64;
    private static final int RADAR_TRANSITION_PALETTE_LINE = 0;
    private static final int RADAR_TRANSITION_QUADRANT_PX = 32;
    private static final int RESOURCE_ENTRY = 818354;
    private static final int RESOURCE_ID = 4;
    private static final int RESOURCE_TABLE = 818290;
    private static final int STRUCTURE_BEACON_FRAME_BYTES = 128;
    private static final int STRUCTURE_BEACON_FRAME_COUNT = 8;
    private static final int STRUCTURE_BEACON_FRAME_FIRST = 26896;
    private static final int STRUCTURE_BEACON_PATTERN_COUNT = 4;
    private static final int STRUCTURE_BEACON_SIZE = 16;
    private static final int TILE_TABLE = 771334;
    private final int descriptorFlipCount;
    private final Bitmap[] fogOverlays;
    private final Bitmap[] impactOverlays;
    private final int installedMetatileCount;
    private final int installedPatternCount;
    private final int maxPatternIndex;
    private final byte[] metatileDescriptors;
    private final Bitmap[] metatiles;
    private final int[] palette;
    private final byte[] patternBytes;
    private final int[] radarHouseColors;
    private final int[] radarTerrainColors;
    private final Bitmap[] radarTransitionFrames;
    private final Bitmap[][] structureBeaconFrames;
    private static final int[] REFINERY_PAD_TOP = {266, 312, 314, 316};
    private static final int[] REFINERY_PAD_BOTTOM = {269, 313, 315, 317};
    private static final int[] STARPORT_PAD_0 = {259, 300, GenesisMissionSequenceArt.PANEL_WIDTH, 308};
    private static final int[] STARPORT_PAD_1 = {260, 301, 305, 309};
    private static final int[] STARPORT_PAD_2 = {262, 302, 306, 310};
    private static final int[] STARPORT_PAD_3 = {263, 303, 307, 311};
    private static final int[] EXPECTED_COUNTS = {128, 128, 128, 128, 128, 128, 128, 26};
    private static final int[] EXPECTED_POINTERS = {771384, 773442, 776052, 778764, 781612, 784630, 787712, 790416};

    public GenesisTerrainArt(byte[] bArr) {
        this.palette = new int[64];
        this.metatiles = new Bitmap[METATILE_COUNT];
        this.impactOverlays = new Bitmap[13];
        int i = 16;
        this.fogOverlays = new Bitmap[16];
        boolean z = true;
        this.structureBeaconFrames = (Bitmap[][]) Array.newInstance((Class<?>) Bitmap.class, 4, 8);
        this.radarTerrainColors = new int[512];
        this.radarHouseColors = new int[8];
        this.radarTransitionFrames = new Bitmap[12];
        if (bArr == null || bArr.length < 819200) {
            throw new IllegalArgumentException("ROM is missing or too small for Genesis terrain resources");
        }
        int be32 = be32(bArr, RESOURCE_ENTRY);
        int be322 = be32(bArr, 818358);
        int be323 = be32(bArr, 818362);
        int be324 = be32(bArr, 818366);
        if (be32 == TILE_TABLE && be322 == 0 && be323 == PALETTE && be324 == 0) {
            this.patternBytes = loadPatternChunks(bArr);
            this.metatileDescriptors = copyRange(bArr, METATILES, 11584);
            int i2 = 922;
            this.installedPatternCount = 922;
            this.installedMetatileCount = METATILE_COUNT;
            decodePaletteBytes(copyRange(bArr, PALETTE, 128));
            decodeRadarResources(bArr);
            decodeStructureBeaconFrames(bArr);
            int i3 = -1;
            int i4 = 0;
            boolean[] zArr = new boolean[4];
            int i5 = 0;
            while (i5 < 362) {
                int i6 = i5 * 32;
                boolean z2 = z;
                int i7 = 0;
                while (i7 < i) {
                    int be16 = be16(this.metatileDescriptors, i6 + (i7 * 2));
                    int i8 = be16 & 2047;
                    if (i8 >= i2) {
                        throw new IllegalArgumentException("Metatile pattern index outside resource 4: " + i8);
                    }
                    i3 = Math.max(i3, i8);
                    zArr[(be16 >>> 13) & 3] = z2;
                    if ((be16 & 6144) != 0) {
                        i4++;
                    }
                    i7++;
                    i = 16;
                    i2 = 922;
                }
                i5++;
                z = z2;
                i = 16;
                i2 = 922;
            }
            boolean z3 = z;
            if (i3 != 921 || i4 != 217 || !zArr[0] || !zArr[z3 ? 1 : 0] || !zArr[2] || !zArr[3]) {
                throw new IllegalArgumentException("Metatile descriptor coverage does not match tactical resource 4");
            }
            this.maxPatternIndex = i3;
            this.descriptorFlipCount = i4;
            for (int i9 = 0; i9 < 362; i9++) {
                this.metatiles[i9] = decodeMetatile(i9, false);
            }
            int i10 = 1;
            while (i10 <= 12) {
                this.impactOverlays[i10] = decodeMetatile(i10, z3);
                i10++;
                z3 = true;
            }
            for (int i11 = 1; i11 < 16; i11++) {
                this.fogOverlays[i11] = decodeMetatile(i11 + 108, true);
            }
            return;
        }
        throw new IllegalArgumentException(String.format("Unexpected resource 4 entry: %06X/%08X/%06X/%08X", Integer.valueOf(be32), Integer.valueOf(be322), Integer.valueOf(be323), Integer.valueOf(be324)));
    }

    public GenesisTerrainArt(RomRuntimeWorldAssets romRuntimeWorldAssets) throws IOException {
        this.palette = new int[64];
        this.metatiles = new Bitmap[METATILE_COUNT];
        this.impactOverlays = new Bitmap[13];
        int i = 16;
        this.fogOverlays = new Bitmap[16];
        boolean z = false;
        this.structureBeaconFrames = (Bitmap[][]) Array.newInstance((Class<?>) Bitmap.class, 4, 8);
        this.radarTerrainColors = new int[512];
        this.radarHouseColors = new int[8];
        this.radarTransitionFrames = new Bitmap[12];
        if (romRuntimeWorldAssets != null) {
            this.patternBytes = romRuntimeWorldAssets.read("terrain/patterns.bin");
            this.metatileDescriptors = romRuntimeWorldAssets.read("terrain/metatile_descriptors.bin");
            byte[] read = romRuntimeWorldAssets.read("terrain/palette.bin");
            byte[] read2 = romRuntimeWorldAssets.read("radar/color_tables.bin");
            byte[] read3 = romRuntimeWorldAssets.read("radar/transition_quadrants.bin");
            byte[] read4 = romRuntimeWorldAssets.read("world/structure_beacon_patterns.bin");
            if ((this.patternBytes.length & 31) != 0 || (this.metatileDescriptors.length & 31) != 0 || read.length != 128 || read2.length != 517 || read3.length != 6144 || read4.length != 1024) {
                throw new IOException("Installed terrain/radar media has unexpected dimensions");
            }
            int length = this.patternBytes.length / 32;
            int length2 = this.metatileDescriptors.length / 32;
            if (length < 922 || length > 2048 || (length2 != 362 && length2 != 360)) {
                throw new IOException("Installed terrain/radar media has unsupported DuneHack dimensions");
            }
            this.installedPatternCount = length;
            this.installedMetatileCount = length2;
            decodePaletteBytes(read);
            decodeRadarResourcesBytes(read2, read3);
            decodeStructureBeaconFramesBytes(read4);
            int i2 = -1;
            boolean[] zArr = new boolean[this.installedPatternCount];
            boolean[] zArr2 = new boolean[4];
            boolean z2 = true;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            while (true) {
                boolean z3 = z;
                if (i5 < this.installedMetatileCount) {
                    int i6 = i5 * 32;
                    int i7 = 0;
                    while (i7 < i) {
                        int i8 = i7;
                        int be16 = be16(this.metatileDescriptors, i6 + (i7 * 2));
                        int i9 = be16 & 2047;
                        int i10 = i5;
                        if (i9 >= this.installedPatternCount) {
                            throw new IOException("Installed metatile pattern index outside terrain media: " + i9);
                        }
                        if (!zArr[i9]) {
                            zArr[i9] = true;
                            i4++;
                        }
                        i2 = Math.max(i2, i9);
                        zArr2[(be16 >>> 13) & 3] = true;
                        if ((be16 & 6144) != 0) {
                            i3++;
                        }
                        i7 = i8 + 1;
                        i5 = i10;
                        i = 16;
                    }
                    i5++;
                    z = z3 ? 1 : 0;
                    i = 16;
                } else {
                    if (i2 < 850 || i4 < 700 || i3 < 16 || !zArr2[z3 ? 1 : 0] || !zArr2[1] || !zArr2[2] || !zArr2[3]) {
                        throw new IOException("Installed metatile descriptor structural coverage mismatch");
                    }
                    this.maxPatternIndex = i2;
                    this.descriptorFlipCount = i3;
                    int i11 = 0;
                    while (i11 < this.installedMetatileCount) {
                        this.metatiles[i11] = decodeMetatile(i11, z3);
                        i11++;
                        z3 = false;
                    }
                    for (int i12 = this.installedMetatileCount; i12 < 362; i12++) {
                        this.metatiles[i12] = this.metatiles[0];
                    }
                    int i13 = 1;
                    while (i13 <= 12) {
                        this.impactOverlays[i13] = decodeMetatile(i13, z2);
                        i13++;
                        z2 = true;
                    }
                    for (int i14 = 1; i14 < 16; i14++) {
                        this.fogOverlays[i14] = decodeMetatile(i14 + 108, true);
                    }
                    return;
                }
            }
        } else {
            throw new IOException("World media provider is unavailable");
        }
    }

    public Bitmap getMetatile(int baseTileId) {
        if (baseTileId < 0 || baseTileId >= 362) {
            throw new IllegalArgumentException("Genesis metatile outside recovered table: " + baseTileId);
        }
        return this.metatiles[baseTileId];
    }

    public Bitmap getImpactOverlay(int overlayId) {
        if (overlayId <= 0 || overlayId > 12) {
            return null;
        }
        return this.impactOverlays[overlayId];
    }

    public Bitmap getFogOverlay(int mask) {
        if (mask <= 0 || mask >= 16) {
            return null;
        }
        return this.fogOverlays[mask];
    }

    public Bitmap getRefineryPadMetatile(int tileId, int padFrame) {
        return getStructurePadMetatile(12, tileId, padFrame);
    }

    public Bitmap getStructurePadMetatile(int structureType, int tileId, int padFrame) {
        int p = Math.floorMod(padFrame, 4);
        if (structureType == 12) {
            if (contains(REFINERY_PAD_TOP, tileId)) {
                return getMetatile(REFINERY_PAD_TOP[p]);
            }
            if (contains(REFINERY_PAD_BOTTOM, tileId)) {
                return getMetatile(REFINERY_PAD_BOTTOM[p]);
            }
        } else if (structureType == 11) {
            if (contains(STARPORT_PAD_0, tileId)) {
                return getMetatile(STARPORT_PAD_0[p]);
            }
            if (contains(STARPORT_PAD_1, tileId)) {
                return getMetatile(STARPORT_PAD_1[p]);
            }
            if (contains(STARPORT_PAD_2, tileId)) {
                return getMetatile(STARPORT_PAD_2[p]);
            }
            if (contains(STARPORT_PAD_3, tileId)) {
                return getMetatile(STARPORT_PAD_3[p]);
            }
        }
        return getMetatile(tileId);
    }

    public Bitmap getStructureBeaconFrame(int frame, int paletteLine) {
        int f = Math.floorMod(frame, 8);
        int p = Math.max(0, Math.min(3, paletteLine));
        return this.structureBeaconFrames[p][f];
    }

    private static boolean contains(int[] values, int value) {
        for (int v : values) {
            if (v == value) {
                return true;
            }
        }
        return false;
    }

    public int getPatternCount() {
        return this.installedPatternCount;
    }

    public int getInstalledMetatileCount() {
        return this.installedMetatileCount;
    }

    public int getMaxPatternIndex() {
        return this.maxPatternIndex;
    }

    public int getDescriptorFlipCount() {
        return this.descriptorFlipCount;
    }

    public int getRadarTerrainColor(int baseTileId) {
        return this.radarTerrainColors[baseTileId & RazorTerrainCellReadPath.SURFACE_MASK];
    }

    public int getRadarHouseColor(int houseId) {
        if (houseId >= 0 && houseId < this.radarHouseColors.length && this.radarHouseColors[houseId] != 0) {
            return this.radarHouseColors[houseId];
        }
        return this.palette[41];
    }

    public Bitmap getRadarTransitionFrame(int frame) {
        if (frame < 0 || frame >= this.radarTransitionFrames.length) {
            return null;
        }
        return this.radarTransitionFrames[frame];
    }

    private void decodeRadarResources(byte[] rom) {
        byte[] colors = new byte[517];
        System.arraycopy(rom, RADAR_TERRAIN_COLOR_TABLE, colors, 0, 512);
        System.arraycopy(rom, RADAR_HOUSE_COLOR_TABLE, colors, 512, 5);
        byte[] transition = copyRange(rom, RADAR_TRANSITION_FRAME_FIRST, 6144);
        decodeRadarResourcesBytes(colors, transition);
    }

    private void decodeRadarResourcesBytes(byte[] colors, byte[] transition) {
        checkRange(colors, 0, 517);
        checkRange(transition, 0, 6144);
        for (int i = 0; i < this.radarTerrainColors.length; i++) {
            int nibble = colors[i] & 15;
            this.radarTerrainColors[i] = this.palette[nibble + 32];
        }
        for (int i2 = 0; i2 < 5; i2++) {
            int nibble2 = colors[i2 + 512] & 15;
            this.radarHouseColors[i2] = this.palette[nibble2 + 32];
        }
        for (int frame = 0; frame < 12; frame++) {
            int source = frame * 512;
            int[] quadrant = new int[RazorTerrainAtlas.HEIGHT];
            for (int tile = 0; tile < 16; tile++) {
                int tileX = tile / 4;
                int tileY = tile % 4;
                int patternOffset = (tile * 32) + source;
                int dy = 0;
                while (true) {
                    if (dy < 8) {
                        int rowOffset = (dy * 4) + patternOffset;
                        int dx = 0;
                        for (int i3 = 8; dx < i3; i3 = 8) {
                            int packed = transition[rowOffset + (dx >>> 1)] & 255;
                            int colorIndex = (dx & 1) == 0 ? packed >>> 4 : packed & 15;
                            quadrant[(((tileY * 8) + dy) * 32) + (tileX * 8) + dx] = this.palette[0 + colorIndex];
                            dx++;
                        }
                        dy++;
                    }
                }
            }
            int i4 = 32;
            int[] pixels = new int[DuneHackR82ScenarioRecordDecoder.MAX_RECORDS];
            int y = 0;
            while (y < 64) {
                int qy = y < i4 ? y : 63 - y;
                int x = 0;
                while (x < 64) {
                    int qx = x < 32 ? x : 63 - x;
                    pixels[(y * 64) + x] = quadrant[(qy * 32) + qx];
                    x++;
                }
                y++;
                i4 = 32;
            }
            Bitmap bitmap = Bitmap.createBitmap(64, 64, Bitmap.Config.ARGB_8888);
            bitmap.setPixels(pixels, 0, 64, 0, 0, 64, 64);
            this.radarTransitionFrames[frame] = bitmap;
        }
    }

    private void decodeStructureBeaconFrames(byte[] rom) {
        decodeStructureBeaconFramesBytes(copyRange(rom, STRUCTURE_BEACON_FRAME_FIRST, RazorTerrainAtlas.HEIGHT));
    }

    private void decodeStructureBeaconFramesBytes(byte[] beaconPatterns) {
        checkRange(beaconPatterns, 0, RazorTerrainAtlas.HEIGHT);
        int paletteLines = this.structureBeaconFrames.length;
        int frame = 0;
        while (true) {
            int i = 8;
            if (frame < 8) {
                int source = frame * 128;
                int paletteLine = 0;
                while (paletteLine < paletteLines) {
                    int[] pixels = new int[256];
                    int pattern = 0;
                    while (pattern < 4) {
                        int tileX = pattern & 1;
                        int tileY = pattern >>> 1;
                        int patternOffset = (pattern * 32) + source;
                        int dy = 0;
                        while (dy < i) {
                            int rowOffset = (dy * 4) + patternOffset;
                            int dx = 0;
                            while (dx < i) {
                                int packed = beaconPatterns[rowOffset + (dx >>> 1)] & 255;
                                int colorIndex = (dx & 1) == 0 ? packed >>> 4 : packed & 15;
                                int color = colorIndex == 0 ? 0 : this.palette[(paletteLine * 16) + colorIndex];
                                int px = (tileX * 8) + dx;
                                int py = (tileY * 8) + dy;
                                pixels[(py * 16) + px] = color;
                                dx++;
                                i = 8;
                            }
                            dy++;
                            i = 8;
                        }
                        pattern++;
                        i = 8;
                    }
                    Bitmap bitmap = Bitmap.createBitmap(16, 16, Bitmap.Config.ARGB_8888);
                    bitmap.setPixels(pixels, 0, 16, 0, 0, 16, 16);
                    this.structureBeaconFrames[paletteLine][frame] = bitmap;
                    paletteLine++;
                    i = 8;
                }
                frame++;
            } else {
                return;
            }
        }
    }

    private byte[] loadPatternChunks(byte[] rom) {
        byte[] out = new byte[29504];
        int table = TILE_TABLE;
        int dst = 0;
        int total = 0;
        for (int i = 0; i < EXPECTED_COUNTS.length; i++) {
            int flags = be16(rom, table);
            int pointer = be32(rom, table + 2);
            table += 6;
            int count = flags & 32767;
            if ((32768 & flags) == 0 || count != EXPECTED_COUNTS[i] || pointer != EXPECTED_POINTERS[i]) {
                throw new IllegalArgumentException(String.format("Unexpected tactical pattern chunk %d: flags=%04X ptr=%06X", Integer.valueOf(i), Integer.valueOf(flags), Integer.valueOf(pointer)));
            }
            int bytes = count * 32;
            byte[] decoded = decompress(rom, pointer, bytes);
            System.arraycopy(decoded, 0, out, dst, bytes);
            dst += bytes;
            total += count;
        }
        int i2 = be16(rom, table);
        if (i2 != 0 || total != 922 || dst != out.length) {
            throw new IllegalArgumentException("Tactical pattern table terminator/count mismatch");
        }
        return out;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x014c, code lost:
    
        throw new java.lang.IllegalArgumentException("Genesis terrain long-copy range error");
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00d2, code lost:
    
        throw new java.lang.IllegalArgumentException("Genesis terrain absolute-copy range error");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[] decompress(byte[] r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisTerrainArt.decompress(byte[], int, int):byte[]");
    }

    private void decodePaletteBytes(byte[] paletteBytes) {
        checkRange(paletteBytes, 0, 128);
        for (int i = 0; i < this.palette.length; i++) {
            int word = be16(paletteBytes, i * 2);
            int r3 = (word >>> 1) & 7;
            int g3 = (word >>> 5) & 7;
            int b3 = (word >>> 9) & 7;
            int r = Math.round((r3 * 255.0f) / 7.0f);
            int g = Math.round((g3 * 255.0f) / 7.0f);
            int b = Math.round((b3 * 255.0f) / 7.0f);
            this.palette[i] = Color.rgb(r, g, b);
        }
    }

    private Bitmap decodeMetatile(int tileId, boolean transparentColorZero) {
        return decodeMetatileWithPatterns(tileId, transparentColorZero, this.patternBytes);
    }

    private Bitmap decodeMetatileWithPatterns(int tileId, boolean transparentColorZero, byte[] patterns) {
        int[] pixels = new int[RazorTerrainAtlas.HEIGHT];
        int descriptor = tileId * 32;
        int i = 32;
        checkRange(this.metatileDescriptors, descriptor, 32);
        int my = 0;
        while (true) {
            if (my < 4) {
                int mx = 0;
                for (int i2 = 4; mx < i2; i2 = 4) {
                    int attr = be16(this.metatileDescriptors, (((my * 4) + mx) * 2) + descriptor);
                    int pattern = attr & 2047;
                    boolean hFlip = (attr & 2048) != 0;
                    boolean vFlip = (attr & DuneHackR82ScenarioRecordDecoder.MAX_RECORDS) != 0;
                    int paletteLine = (attr >>> 13) & 3;
                    int patternOffset = pattern * 32;
                    int dy = 0;
                    while (true) {
                        if (dy < 8) {
                            int sy = vFlip ? 7 - dy : dy;
                            int rowOffset = patternOffset + (sy * 4);
                            int dx = 0;
                            for (int i3 = 8; dx < i3; i3 = 8) {
                                int sx = hFlip ? 7 - dx : dx;
                                int packed = patterns[rowOffset + (sx >>> 1)] & 255;
                                int colorIndex = (sx & 1) == 0 ? packed >>> 4 : packed & 15;
                                int i4 = i;
                                int color = this.palette[(paletteLine * 16) + colorIndex];
                                if (transparentColorZero && colorIndex == 0) {
                                    color &= 16777215;
                                }
                                pixels[(((my * 8) + dy) * 32) + (mx * 8) + dx] = color;
                                dx++;
                                i = i4;
                            }
                            dy++;
                        }
                    }
                    mx++;
                }
                my++;
            } else {
                Bitmap bitmap = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
                bitmap.setPixels(pixels, 0, 32, 0, 0, 32, 32);
                return bitmap;
            }
        }
    }

    private static byte[] copyRange(byte[] data, int offset, int length) {
        checkRange(data, offset, length);
        byte[] out = new byte[length];
        System.arraycopy(data, offset, out, 0, length);
        return out;
    }

    private static int be16(byte[] data, int offset) {
        checkRange(data, offset, 2);
        return ((data[offset] & 255) << 8) | (data[offset + 1] & 255);
    }

    private static int be32(byte[] data, int offset) {
        checkRange(data, offset, 4);
        return ((data[offset] & 255) << 24) | ((data[offset + 1] & 255) << 16) | ((data[offset + 2] & 255) << 8) | (data[offset + 3] & 255);
    }

    private static void checkRange(byte[] data, int offset, int length) {
        if (offset < 0 || length < 0 || offset > data.length - length) {
            throw new IllegalArgumentException("ROM graphics offset outside file: " + offset + "+" + length);
        }
    }
}
