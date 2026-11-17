package com.ahsim.demulation;

/* loaded from: classes2.dex */
public final class RomGraphicsVisualComparator {

    public enum Kind {
        COLORS,
        PIXELS,
        METATILE_ATTRIBUTES,
        UNDECODED
    }

    public static final class Result {
        public final boolean bytesEqual;
        public final int differingBlocks;
        public final int differingBytes;
        public final int differingElements;
        public final Kind kind;
        public final String relativePath;
        public final int totalBlocks;
        public final int totalBytes;
        public final int totalElements;
        public final boolean visualEqual;

        private Result(String relativePath, Kind kind, boolean bytesEqual, boolean visualEqual, int differingBytes, int totalBytes, int differingBlocks, int totalBlocks, int differingElements, int totalElements) {
            this.relativePath = relativePath;
            this.kind = kind;
            this.bytesEqual = bytesEqual;
            this.visualEqual = visualEqual;
            this.differingBytes = differingBytes;
            this.totalBytes = totalBytes;
            this.differingBlocks = differingBlocks;
            this.totalBlocks = totalBlocks;
            this.differingElements = differingElements;
            this.totalElements = totalElements;
        }

        public boolean decodedEquivalentOnly() {
            return this.visualEqual && !this.bytesEqual;
        }
    }

    public static final class TerrainSceneResult {
        public final int changedMetatiles;
        public final int changedPixels;
        public final int totalMetatiles;
        public final int totalPixels;

        private TerrainSceneResult(int tiles, int pixels) {
            this.changedMetatiles = tiles;
            this.totalMetatiles = GenesisTerrainArt.METATILE_COUNT;
            this.changedPixels = pixels;
            this.totalPixels = 370688;
        }
    }

    public static TerrainSceneResult compareTerrainScenes(byte[] basePatterns, byte[] baseDescriptors, byte[] basePalette, byte[] modPatterns, byte[] modDescriptors, byte[] modPalette) {
        checkSceneShapes(basePatterns, baseDescriptors, basePalette);
        checkSceneShapes(modPatterns, modDescriptors, modPalette);
        int changedMetatiles = 0;
        int colorB = 0;
        for (int tile = 0; tile < 362; tile++) {
            boolean tileChanged = false;
            int my = 0;
            while (true) {
                if (my >= 4) {
                    break;
                }
                int mx = 0;
                for (int i = 4; mx < i; i = 4) {
                    int o = (tile * 32) + (((my * 4) + mx) * 2);
                    int i2 = 8;
                    int a = ((baseDescriptors[o] & 255) << 8) | (baseDescriptors[o + 1] & 255);
                    int b = ((modDescriptors[o] & 255) << 8) | (modDescriptors[o + 1] & 255);
                    int y = 0;
                    while (y < i2) {
                        int x = 0;
                        while (x < i2) {
                            int colorA = terrainPixel(basePatterns, basePalette, a, x, y);
                            int changedPixels = colorB;
                            int colorB2 = terrainPixel(modPatterns, modPalette, b, x, y);
                            if (colorA != colorB2) {
                                changedPixels++;
                                tileChanged = true;
                            }
                            colorB = changedPixels;
                            x++;
                            i2 = 8;
                        }
                        y++;
                        i2 = 8;
                    }
                    mx++;
                }
                my++;
            }
            if (tileChanged) {
                changedMetatiles++;
            }
        }
        return new TerrainSceneResult(changedMetatiles, colorB);
    }

    private static void checkSceneShapes(byte[] patterns, byte[] desc, byte[] colors) {
        if (patterns == null || desc == null || colors == null || patterns.length < 29504 || patterns.length % 32 != 0 || desc.length != 11584 || colors.length != 128) {
            throw new IllegalArgumentException("Not an original-layout terrain scene");
        }
    }

    private static int terrainPixel(byte[] patterns, byte[] colors, int attr, int x, int y) {
        int tileIndex = attr & 2047;
        int ofs = tileIndex * 32;
        if (ofs > patterns.length - 32) {
            throw new IllegalArgumentException("Metatile has out-of-range pattern index");
        }
        int sx = (attr & GenesisObjectArt.VRAM_PATTERN_COUNT) != 0 ? 7 - x : x;
        int sy = (attr & DuneHackR82ScenarioRecordDecoder.MAX_RECORDS) != 0 ? 7 - y : y;
        int packed = patterns[(sy * 4) + ofs + (sx / 2)] & 255;
        int paletteIndex = (((attr >>> 13) & 3) * 16) + ((sx & 1) == 0 ? packed >>> 4 : packed & 15);
        int colorOffset = paletteIndex * 2;
        return (((colors[colorOffset] & 255) << 8) | (colors[colorOffset + 1] & 255)) & 3822;
    }

    private RomGraphicsVisualComparator() {
    }

    /* JADX WARN: Incorrect condition in loop: B:62:0x00f4 */
    /* JADX WARN: Incorrect condition in loop: B:94:0x0151 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.ahsim.demulation.RomGraphicsVisualComparator.Result compare(java.lang.String r16, byte[] r17, byte[] r18) {
        /*
            Method dump skipped, instructions count: 416
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.RomGraphicsVisualComparator.compare(java.lang.String, byte[], byte[]):com.ahsim.demulation.RomGraphicsVisualComparator$Result");
    }
}
