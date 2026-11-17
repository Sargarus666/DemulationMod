package com.ahsim.demulation;

import android.graphics.Bitmap;
import android.graphics.Color;
import java.io.IOException;
import java.lang.reflect.Array;

/* loaded from: classes2.dex */
public final class GenesisMissionSequenceArt {
    private static final int BANNER_PALETTE = 41948;
    private static final int BANNER_PATTERN_BASE = 1408;
    private static final int BANNER_PATTERN_BYTES = 896;
    public static final int BANNER_START_Y = 240;
    public static final int BANNER_STEP_TICKS = 3;
    public static final int BANNER_STOP_Y = 176;
    public static final int BANNER_X = 128;
    public static final int FRAME_CADENCE_TICKS = 11;
    public static final int FRAME_COUNT = 4;
    private static final int LOSS_BANNER_GFX = 40412;
    private static final int LOSS_BANNER_LAYOUT = 40348;
    private static final int LOSS_FRAME_DESCRIPTOR = 802260;
    private static final int LOSS_FRAME_TABLE = 806980;
    private static final int LOSS_PALETTE = 682648;
    private static final int LOSS_PATTERN_TABLE = 695198;
    public static final int PANEL_HEIGHT = 120;
    public static final int PANEL_WIDTH = 304;
    public static final int PANEL_X = 8;
    public static final int PANEL_Y = 40;
    private static final int PATTERN_BYTES = 32;
    private static final int RESOURCE_LOSS = 9;
    private static final int RESOURCE_TABLE = 818290;
    private static final int RESOURCE_WIN = 11;
    public static final int SCREEN_HEIGHT = 224;
    public static final int SCREEN_WIDTH = 320;
    private static final int WINDOW_MAP_BYTES = 3584;
    private static final int WINDOW_MAP_COLUMNS = 64;
    private static final int WINDOW_MAP_DECOMPRESSED_BYTES = 4096;
    private static final int WINDOW_MAP_ROWS = 28;
    private static final int WIN_BANNER_GFX = 41084;
    private static final int WIN_BANNER_LAYOUT = 40374;
    private static final int WIN_FRAME_DESCRIPTOR = 806996;
    private static final int WIN_FRAME_TABLE = 810492;
    private static final int WIN_PALETTE = 682776;
    private static final int WIN_PATTERN_TABLE = 720524;
    private final Bitmap lossBanner;
    private final Bitmap[] lossBannerFade;
    private final Bitmap[] lossBannerFadeOut;
    private final Bitmap[][] lossFadeFrames;
    private final Bitmap[][] lossFadeOutFrames;
    private final Bitmap[] lossFrames;
    private final Bitmap winBanner;
    private final Bitmap[] winBannerFade;
    private final Bitmap[] winBannerFadeOut;
    private final Bitmap[][] winFadeFrames;
    private final Bitmap[][] winFadeOutFrames;
    private final Bitmap[] winFrames;

    public GenesisMissionSequenceArt(byte[] rom) {
        this.winFadeFrames = (Bitmap[][]) Array.newInstance((Class<?>) Bitmap.class, 4, 8);
        this.lossFadeFrames = (Bitmap[][]) Array.newInstance((Class<?>) Bitmap.class, 4, 8);
        this.winBannerFade = new Bitmap[8];
        this.lossBannerFade = new Bitmap[8];
        this.winFadeOutFrames = (Bitmap[][]) Array.newInstance((Class<?>) Bitmap.class, 4, 8);
        this.lossFadeOutFrames = (Bitmap[][]) Array.newInstance((Class<?>) Bitmap.class, 4, 8);
        this.winBannerFadeOut = new Bitmap[8];
        this.lossBannerFadeOut = new Bitmap[8];
        if (rom == null || rom.length < 819200) {
            throw new IllegalArgumentException("ROM is missing or too small for Genesis mission sequences");
        }
        verifyResourceEntry(rom, 9, LOSS_PATTERN_TABLE, LOSS_FRAME_DESCRIPTOR, LOSS_PALETTE);
        verifyResourceEntry(rom, 11, WIN_PATTERN_TABLE, WIN_FRAME_DESCRIPTOR, WIN_PALETTE);
        verifyFrameDescriptor(rom, LOSS_FRAME_DESCRIPTOR, be32(rom, LOSS_FRAME_TABLE));
        verifyFrameDescriptor(rom, WIN_FRAME_DESCRIPTOR, be32(rom, WIN_FRAME_TABLE));
        this.lossFrames = decodeSequence(rom, LOSS_PATTERN_TABLE, LOSS_PALETTE, LOSS_FRAME_TABLE);
        this.winFrames = decodeSequence(rom, WIN_PATTERN_TABLE, WIN_PALETTE, WIN_FRAME_TABLE);
        this.lossBanner = decodeBanner(rom, LOSS_BANNER_GFX, LOSS_BANNER_LAYOUT);
        this.winBanner = decodeBanner(rom, WIN_BANNER_GFX, WIN_BANNER_LAYOUT);
    }

    public GenesisMissionSequenceArt(RomRuntimeFrontendAssets assets) throws IOException {
        this.winFadeFrames = (Bitmap[][]) Array.newInstance((Class<?>) Bitmap.class, 4, 8);
        this.lossFadeFrames = (Bitmap[][]) Array.newInstance((Class<?>) Bitmap.class, 4, 8);
        this.winBannerFade = new Bitmap[8];
        this.lossBannerFade = new Bitmap[8];
        this.winFadeOutFrames = (Bitmap[][]) Array.newInstance((Class<?>) Bitmap.class, 4, 8);
        this.lossFadeOutFrames = (Bitmap[][]) Array.newInstance((Class<?>) Bitmap.class, 4, 8);
        this.winBannerFadeOut = new Bitmap[8];
        this.lossBannerFadeOut = new Bitmap[8];
        if (assets == null) {
            throw new IOException("Frontend READY asset source is unavailable");
        }
        this.lossFrames = decodeSequenceAssets(assets, "loss");
        this.winFrames = decodeSequenceAssets(assets, "win");
        byte[] bannerPalette = assets.read("frontend/mission_sequence/banner_palette.bin");
        this.lossBanner = decodeBannerAssets(assets.read("frontend/mission_sequence/loss_banner_patterns.bin"), assets.read("frontend/mission_sequence/loss_banner_layout.bin"), bannerPalette);
        this.winBanner = decodeBannerAssets(assets.read("frontend/mission_sequence/win_banner_patterns.bin"), assets.read("frontend/mission_sequence/win_banner_layout.bin"), bannerPalette);
    }

    public Bitmap getWinFrame(int frame) {
        return this.winFrames[Math.floorMod(frame, 4)];
    }

    public Bitmap getLossFrame(int frame) {
        return this.lossFrames[Math.floorMod(frame, 4)];
    }

    public Bitmap getFrame(boolean won, int frame) {
        return won ? getWinFrame(frame) : getLossFrame(frame);
    }

    public Bitmap getBanner(boolean won) {
        return won ? this.winBanner : this.lossBanner;
    }

    public Bitmap getBannerFadeFromBlack(boolean won, int fadeStep) {
        int step = Math.max(0, Math.min(7, fadeStep));
        Bitmap source = won ? this.winBanner : this.lossBanner;
        if (step >= 7) {
            return source;
        }
        Bitmap[] cache = won ? this.winBannerFade : this.lossBannerFade;
        Bitmap cached = cache[step];
        if (cached != null) {
            return cached;
        }
        Bitmap cached2 = fadeGenesisBitmapFromBlack(source, step);
        cache[step] = cached2;
        return cached2;
    }

    public Bitmap getBannerFadeToBlack(boolean won, int fadeOutStep) {
        int step = Math.max(0, Math.min(7, fadeOutStep));
        Bitmap source = won ? this.winBanner : this.lossBanner;
        if (step <= 0) {
            return source;
        }
        Bitmap[] cache = won ? this.winBannerFadeOut : this.lossBannerFadeOut;
        Bitmap cached = cache[step];
        if (cached != null) {
            return cached;
        }
        Bitmap cached2 = fadeGenesisBitmapToBlack(source, step);
        cache[step] = cached2;
        return cached2;
    }

    public int bannerYAtTick(long tick) {
        long steps = (Math.max(0L, tick) / 3) + 1;
        return Math.max(BANNER_STOP_Y, 240 - ((int) Math.min(1000L, steps)));
    }

    public Bitmap getFrameFadeFromBlack(boolean won, int frame, int fadeStep) {
        int index = Math.floorMod(frame, 4);
        int step = Math.max(0, Math.min(7, fadeStep));
        Bitmap source = won ? this.winFrames[index] : this.lossFrames[index];
        if (step >= 7) {
            return source;
        }
        Bitmap[][] cache = won ? this.winFadeFrames : this.lossFadeFrames;
        Bitmap cached = cache[index][step];
        if (cached != null) {
            return cached;
        }
        Bitmap cached2 = fadeGenesisBitmapFromBlack(source, step);
        cache[index][step] = cached2;
        return cached2;
    }

    public Bitmap getFrameFadeToBlack(boolean won, int frame, int fadeOutStep) {
        int index = Math.floorMod(frame, 4);
        int step = Math.max(0, Math.min(7, fadeOutStep));
        Bitmap source = won ? this.winFrames[index] : this.lossFrames[index];
        if (step <= 0) {
            return source;
        }
        Bitmap[][] cache = won ? this.winFadeOutFrames : this.lossFadeOutFrames;
        Bitmap cached = cache[index][step];
        if (cached != null) {
            return cached;
        }
        Bitmap cached2 = fadeGenesisBitmapToBlack(source, step);
        cache[index][step] = cached2;
        return cached2;
    }

    private static Bitmap decodeBanner(byte[] rom, int gfxOffset, int layoutOffset) {
        byte[] bArr = rom;
        int i = layoutOffset;
        checkRange(bArr, gfxOffset, BANNER_PATTERN_BYTES);
        checkRange(bArr, i, 2);
        int[] palette = decodePalette(bArr, BANNER_PALETTE);
        boolean z = true;
        int pieces = be16(bArr, i) + 1;
        if (pieces < 1 || pieces > 8) {
            throw new IllegalArgumentException("Unexpected mission banner layout");
        }
        checkRange(bArr, i + 2, pieces * 12);
        int minX = 32767;
        int minY = 32767;
        int maxX = -32768;
        int maxY = -32768;
        int i2 = 0;
        while (i2 < pieces) {
            int p = i + 2 + (i2 * 12);
            int size = be16(bArr, p + 6);
            int x = (short) be16(bArr, p + 10);
            int y = (short) be16(bArr, p + 4);
            int wt = ((size >>> 10) & 3) + 1;
            minX = Math.min(minX, x);
            minY = Math.min(minY, y);
            maxX = Math.max(maxX, x + (wt * 8));
            maxY = Math.max(maxY, ((((size >>> 8) & 3) + 1) * 8) + y);
            i2++;
            z = z;
        }
        boolean z2 = z;
        int width = maxX - minX;
        int height = maxY - minY;
        int[] pixels = new int[width * height];
        int i3 = 0;
        while (i3 < pieces) {
            int p2 = i + 2 + (i3 * 12);
            int size2 = be16(bArr, p2 + 6);
            int attr = be16(bArr, p2 + 8);
            int x0 = ((short) be16(bArr, p2 + 10)) - minX;
            int x02 = p2 + 4;
            int y0 = ((short) be16(bArr, x02)) - minY;
            int wt2 = ((size2 >>> 10) & 3) + 1;
            int ht = ((size2 >>> 8) & 3) + 1;
            int first = attr & 2047;
            int first2 = attr & GenesisObjectArt.VRAM_PATTERN_COUNT;
            boolean hf = first2 != 0 ? z2 : false;
            boolean hf2 = hf;
            boolean vf = (attr & 4096) != 0 ? z2 : false;
            int i4 = (attr >>> 13) & 3;
            int sw = wt2 * 8;
            int sh = ht * 8;
            int dx = 0;
            while (dx < sw) {
                int sw2 = sw;
                int pattern = 0;
                while (pattern < sh) {
                    int sx = hf2 ? (sw2 - 1) - dx : dx;
                    int sy = vf ? (sh - 1) - pattern : pattern;
                    int dy = pattern;
                    int sh2 = sh;
                    int sh3 = ((first + ((sx >>> 3) * ht)) + (sy >>> 3)) - 1408;
                    if (sh3 >= 0) {
                        int pattern2 = (sh3 * 32) + 31;
                        if (pattern2 < BANNER_PATTERN_BYTES) {
                            int px = sx & 7;
                            int py = sy & 7;
                            int packed = rom[gfxOffset + (sh3 * 32) + (py * 4) + (px >>> 1)] & 255;
                            int ci = (px & 1) == 0 ? packed >>> 4 : packed & 15;
                            if (ci != 0) {
                                pixels[((y0 + dy) * width) + x0 + dx] = palette[ci];
                            }
                        }
                    }
                    pattern = dy + 1;
                    sh = sh2;
                }
                dx++;
                sw = sw2;
            }
            i3++;
            bArr = rom;
            i = layoutOffset;
        }
        Bitmap b = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        b.setPixels(pixels, 0, width, 0, 0, width, height);
        return b;
    }

    private static Bitmap[] decodeSequenceAssets(RomRuntimeFrontendAssets assets, String stem) throws IOException {
        byte[] patterns = assets.read("frontend/" + stem + "_patterns.bin");
        int[] palette = decodePaletteBytes(assets.read("frontend/" + stem + "_palette.bin"));
        Bitmap[] frames = new Bitmap[4];
        for (int frame = 0; frame < 4; frame++) {
            byte[] map = assets.read("frontend/" + stem + "_frame" + frame + ".bin");
            if (map.length != 4096) {
                throw new IOException("Installed mission sequence frame size mismatch: " + stem + "#" + frame);
            }
            frames[frame] = renderWindow(patterns, palette, map);
        }
        return frames;
    }

    private static Bitmap decodeBannerAssets(byte[] patterns, byte[] layout, byte[] paletteBytes) throws IOException {
        int sh;
        byte[] bArr = patterns;
        byte[] bArr2 = layout;
        int i = 2;
        if (bArr2.length < 2 || paletteBytes.length != 128) {
            throw new IOException("Installed mission banner metadata is incomplete");
        }
        int[] palette = decodePaletteBytes(paletteBytes);
        boolean z = true;
        int pieces = be16(bArr2, 0) + 1;
        if (pieces < 1 || pieces > 8 || bArr2.length != (pieces * 12) + 2) {
            throw new IOException("Installed mission banner layout is invalid");
        }
        int minX = 32767;
        int minY = 32767;
        int maxX = -32768;
        int maxY = -32768;
        int i2 = 0;
        while (i2 < pieces) {
            int p = (i2 * 12) + i;
            int size = be16(bArr2, p + 6);
            int x = (short) be16(bArr2, p + 10);
            int i3 = i;
            int y = (short) be16(bArr2, p + 4);
            int wt = ((size >>> 10) & 3) + 1;
            minX = Math.min(minX, x);
            minY = Math.min(minY, y);
            maxX = Math.max(maxX, x + (wt * 8));
            maxY = Math.max(maxY, ((((size >>> 8) & 3) + 1) * 8) + y);
            i2++;
            i = i3;
        }
        int width = maxX - minX;
        int height = maxY - minY;
        int[] pixels = new int[width * height];
        int i4 = 0;
        while (i4 < pieces) {
            int p2 = (i4 * 12) + 2;
            int size2 = be16(bArr2, p2 + 6);
            boolean z2 = z;
            int attr = be16(bArr2, p2 + 8);
            int x0 = ((short) be16(bArr2, p2 + 10)) - minX;
            int x02 = p2 + 4;
            int y0 = ((short) be16(bArr2, x02)) - minY;
            int wt2 = ((size2 >>> 10) & 3) + 1;
            int ht = ((size2 >>> 8) & 3) + 1;
            int first = attr & 2047;
            int first2 = attr & GenesisObjectArt.VRAM_PATTERN_COUNT;
            boolean hf = first2 != 0 ? z2 : false;
            boolean hf2 = hf;
            boolean vf = (attr & 4096) != 0 ? z2 : false;
            int i5 = (attr >>> 13) & 3;
            boolean vf2 = vf;
            int sw = wt2 * 8;
            int sh2 = ht * 8;
            int[] palette2 = palette;
            int dx = 0;
            while (dx < sw) {
                int sw2 = sw;
                int localPattern = 0;
                while (localPattern < sh2) {
                    int sx = hf2 ? (sw2 - 1) - dx : dx;
                    int sy = vf2 ? (sh2 - 1) - localPattern : localPattern;
                    int dy = localPattern;
                    int localPattern2 = ((first + ((sx >>> 3) * ht)) + (sy >>> 3)) - 1408;
                    if (localPattern2 >= 0) {
                        int localPattern3 = (localPattern2 * 32) + 31;
                        sh = sh2;
                        int sh3 = bArr.length;
                        if (localPattern3 < sh3) {
                            int px = sx & 7;
                            int py = sy & 7;
                            int packed = patterns[(localPattern2 * 32) + (py * 4) + (px >>> 1)] & 255;
                            int ci = (px & 1) == 0 ? packed >>> 4 : packed & 15;
                            if (ci != 0) {
                                pixels[((y0 + dy) * width) + x0 + dx] = palette2[ci];
                            }
                        }
                    } else {
                        sh = sh2;
                    }
                    localPattern = dy + 1;
                    bArr = patterns;
                    sh2 = sh;
                }
                dx++;
                bArr = patterns;
                sw = sw2;
            }
            i4++;
            bArr = patterns;
            bArr2 = layout;
            z = z2;
            palette = palette2;
        }
        Bitmap b = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        b.setPixels(pixels, 0, width, 0, 0, width, height);
        return b;
    }

    private static Bitmap fadeGenesisBitmapFromBlack(Bitmap source, int step) {
        int s = Math.max(0, Math.min(7, step));
        if (s >= 7) {
            return source;
        }
        int width = source.getWidth();
        int height = source.getHeight();
        int[] pixels = new int[width * height];
        source.getPixels(pixels, 0, width, 0, 0, width, height);
        for (int i = 0; i < pixels.length; i++) {
            int c = pixels[i];
            int a = (c >>> 24) & 255;
            if (a != 0) {
                int r3 = Math.round((((c >>> 16) & 255) * 7.0f) / 255.0f);
                int g3 = Math.round((((c >>> 8) & 255) * 7.0f) / 255.0f);
                int b3 = Math.round(((c & 255) * 7.0f) / 255.0f);
                int r = Math.round((Math.min(r3, s) * 255.0f) / 7.0f);
                int g = Math.round((Math.min(g3, s) * 255.0f) / 7.0f);
                int b = Math.round((Math.min(b3, s) * 255.0f) / 7.0f);
                pixels[i] = (a << 24) | (r << 16) | (g << 8) | b;
            }
        }
        return Bitmap.createBitmap(pixels, width, height, Bitmap.Config.ARGB_8888);
    }

    private static Bitmap fadeGenesisBitmapToBlack(Bitmap source, int fadeOutStep) {
        int s = Math.max(0, Math.min(7, fadeOutStep));
        if (s <= 0) {
            return source;
        }
        int width = source.getWidth();
        int height = source.getHeight();
        int[] pixels = new int[width * height];
        source.getPixels(pixels, 0, width, 0, 0, width, height);
        for (int i = 0; i < pixels.length; i++) {
            int c = pixels[i];
            int a = (c >>> 24) & 255;
            if (a != 0) {
                int r3 = Math.round((((c >>> 16) & 255) * 7.0f) / 255.0f);
                int g3 = Math.round((((c >>> 8) & 255) * 7.0f) / 255.0f);
                int b3 = Math.round(((c & 255) * 7.0f) / 255.0f);
                int r = Math.round((Math.max(0, r3 - s) * 255.0f) / 7.0f);
                int g = Math.round((Math.max(0, g3 - s) * 255.0f) / 7.0f);
                int b = Math.round((Math.max(0, b3 - s) * 255.0f) / 7.0f);
                pixels[i] = (a << 24) | (r << 16) | (g << 8) | b;
            }
        }
        return Bitmap.createBitmap(pixels, width, height, Bitmap.Config.ARGB_8888);
    }

    private static int[] decodePaletteBytes(byte[] data) {
        if (data.length != 128) {
            throw new IllegalArgumentException("Genesis palette asset must be 128 bytes");
        }
        int[] palette = new int[64];
        for (int i = 0; i < palette.length; i++) {
            int word = be16(data, i * 2);
            int r3 = (word >>> 1) & 7;
            int g3 = (word >>> 5) & 7;
            int b3 = (word >>> 9) & 7;
            palette[i] = Color.rgb(Math.round((r3 * 255.0f) / 7.0f), Math.round((g3 * 255.0f) / 7.0f), Math.round((b3 * 255.0f) / 7.0f));
        }
        return palette;
    }

    private static void verifyResourceEntry(byte[] rom, int id, int patterns, int map, int palette) {
        int entry = (id * 16) + RESOURCE_TABLE;
        if (be32(rom, entry) != patterns || be32(rom, entry + 4) != map || be32(rom, entry + 8) != palette || be32(rom, entry + 12) != 0) {
            throw new IllegalArgumentException(String.format("Unexpected Genesis mission sequence resource %d", Integer.valueOf(id)));
        }
    }

    private static void verifyFrameDescriptor(byte[] rom, int descriptor, int frame0) {
        int flags = be16(rom, descriptor);
        int pointer = be32(rom, descriptor + 2);
        if (flags != 36352 || pointer != frame0) {
            throw new IllegalArgumentException(String.format("Unexpected Genesis sequence frame descriptor at %06X", Integer.valueOf(descriptor)));
        }
    }

    private static Bitmap[] decodeSequence(byte[] rom, int patternTable, int paletteOffset, int framePointerTable) {
        byte[] patterns = loadPatternChunksPersistentScratch(rom, patternTable);
        int[] palette = decodePalette(rom, paletteOffset);
        Bitmap[] frames = new Bitmap[4];
        for (int frame = 0; frame < 4; frame++) {
            int source = be32(rom, (frame * 4) + framePointerTable);
            byte[] mapScratch = new byte[4096];
            int produced = decompressInto(rom, source, mapScratch);
            if (produced != 4096) {
                throw new IllegalArgumentException(String.format("Genesis sequence frame %d decompressed to %d bytes", Integer.valueOf(frame), Integer.valueOf(produced)));
            }
            frames[frame] = renderWindow(patterns, palette, mapScratch);
        }
        return frames;
    }

    private static byte[] loadPatternChunksPersistentScratch(byte[] rom, int tableOffset) {
        int table = tableOffset;
        int nominalPatterns = 0;
        do {
            int flags = be16(rom, table);
            if (flags != 0) {
                nominalPatterns += flags & 32767;
                table += 6;
            } else {
                if (nominalPatterns <= 0) {
                    throw new IllegalArgumentException("Mission sequence pattern table is empty");
                }
                byte[] vram = new byte[nominalPatterns * 32];
                byte[] scratch = new byte[65536];
                int table2 = tableOffset;
                int dst = 0;
                while (true) {
                    int flags2 = be16(rom, table2);
                    if (flags2 != 0) {
                        int pointer = be32(rom, table2 + 2);
                        table2 += 6;
                        int count = flags2 & 32767;
                        int bytes = count * 32;
                        if (dst > vram.length - bytes) {
                            throw new IllegalArgumentException("Mission sequence pattern VRAM overrun");
                        }
                        if ((32768 & flags2) != 0) {
                            decompressInto(rom, pointer, scratch);
                            System.arraycopy(scratch, 0, vram, dst, bytes);
                        } else {
                            checkRange(rom, pointer, bytes);
                            System.arraycopy(rom, pointer, vram, dst, bytes);
                        }
                        dst += bytes;
                    } else {
                        if (dst != vram.length) {
                            throw new IllegalArgumentException("Mission sequence pattern table size mismatch");
                        }
                        return vram;
                    }
                }
            }
        } while (nominalPatterns <= 2048);
        throw new IllegalArgumentException("Mission sequence pattern table guard");
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x00a0, code lost:
    
        throw new java.lang.IllegalArgumentException("Genesis mission sequence absolute-copy range error");
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0065, code lost:
    
        throw new java.lang.IllegalArgumentException("Genesis mission sequence short-copy range error");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int decompressInto(byte[] r9, int r10, byte[] r11) {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisMissionSequenceArt.decompressInto(byte[], int, byte[]):int");
    }

    private static Bitmap renderWindow(byte[] patterns, int[] palette, byte[] map) {
        byte[] bArr = patterns;
        int[] pixels = new int[71680];
        int ty = 0;
        while (ty < 28) {
            int tx = 0;
            while (tx < 40) {
                int mapOffset = ((ty * 64) + tx) * 2;
                if (mapOffset + 2 > WINDOW_MAP_BYTES) {
                    throw new IllegalArgumentException("Mission sequence tilemap outside ROM upload prefix");
                }
                int i = 8;
                int attr = ((map[mapOffset] & 255) << 8) | (map[mapOffset + 1] & 255);
                int pattern = attr & 2047;
                int patternOffset = pattern * 32;
                if (patternOffset + 32 > bArr.length) {
                    throw new IllegalArgumentException("Mission sequence pattern index outside resource: " + pattern);
                }
                boolean hFlip = (attr & GenesisObjectArt.VRAM_PATTERN_COUNT) != 0;
                boolean vFlip = (attr & 4096) != 0;
                int paletteLine = (attr >>> 13) & 3;
                int dy = 0;
                while (dy < i) {
                    int sy = vFlip ? 7 - dy : dy;
                    int rowOffset = (sy * 4) + patternOffset;
                    int py = (ty * 8) + dy;
                    int dx = 0;
                    while (dx < i) {
                        int sx = hFlip ? 7 - dx : dx;
                        int packed = patterns[rowOffset + (sx >>> 1)] & 255;
                        int colorIndex = (sx & 1) == 0 ? packed >>> 4 : packed & 15;
                        int dx2 = dx;
                        int dx3 = py * 320;
                        pixels[dx3 + (tx * 8) + dx2] = palette[(paletteLine * 16) + colorIndex];
                        dx = dx2 + 1;
                        i = 8;
                    }
                    dy++;
                    i = 8;
                }
                tx++;
                bArr = patterns;
            }
            ty++;
            bArr = patterns;
        }
        Bitmap bitmap = Bitmap.createBitmap(320, 224, Bitmap.Config.ARGB_8888);
        bitmap.setPixels(pixels, 0, 320, 0, 0, 320, 224);
        return bitmap;
    }

    private static int[] decodePalette(byte[] rom, int offset) {
        checkRange(rom, offset, 128);
        int[] palette = new int[64];
        for (int i = 0; i < palette.length; i++) {
            int word = be16(rom, (i * 2) + offset);
            int r3 = (word >>> 1) & 7;
            int g3 = (word >>> 5) & 7;
            int b3 = (word >>> 9) & 7;
            int r = Math.round((r3 * 255.0f) / 7.0f);
            int g = Math.round((g3 * 255.0f) / 7.0f);
            int b = Math.round((b3 * 255.0f) / 7.0f);
            palette[i] = Color.rgb(r, g, b);
        }
        return palette;
    }

    private static void ensureOutput(byte[] out, int dst, int length) {
        if (dst < 0 || length < 0 || dst > out.length - length) {
            throw new IllegalArgumentException("Genesis mission sequence decompressor output overrun");
        }
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
            throw new IllegalArgumentException("ROM mission sequence offset outside file: " + offset + "+" + length);
        }
    }
}
