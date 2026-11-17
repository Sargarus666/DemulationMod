package com.ahsim.demulation;

import android.graphics.Bitmap;
import android.graphics.Color;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
final class GenesisEndingRenderer {
    private static final int CREDIT_TEXT = 71998;
    private static final int FONT_STREAM = 329416;
    static final int HEIGHT = 224;
    private static final int HOUSE_PALETTE_GRADIENTS = 444180;
    private static final int INTRO_TEXT = 71984;
    private static final int MAP_BYTES = 3584;
    private static final int MAP_COLUMNS = 64;
    static final int MUSIC_REQUEST = 33;
    private static final int PALETTE_STEP_TICKS = 4;
    private static final int POST_FLASH_HOLD_TICKS = 50;
    static final int PRE_FLASH_TICKS = 150;
    private static final int RESOURCE_MAP_DESCRIPTOR = 815684;
    private static final int RESOURCE_PALETTE = 683288;
    private static final int RESOURCE_PATTERN_TABLE = 791062;
    private static final int WHITE_PALETTE = 444160;
    static final int WIDTH = 320;
    private final CreditLine[] creditLines;
    private final int[] creditsStartTick;
    private final int[][][] fadePalettes;
    private final int[] fadeStepCount;
    private final Bitmap[] finalPlanet;
    private final byte[] font;
    private final int[][] houseTargetPaletteWords;
    private final int[] initialPaletteWords;
    private final CreditLine[] introLines;
    private final byte[] map;
    private final RomRuntimeFrontendAssets mediaAssets;
    private final byte[] patterns;
    private final byte[] rom;
    private final int[] whitePaletteWords;

    private static final class CreditLine {
        final int paletteLine;
        final String text;

        CreditLine(String text, int paletteLine) {
            this.text = text;
            this.paletteLine = paletteLine & 3;
        }
    }

    GenesisEndingRenderer(byte[] rom) {
        this.initialPaletteWords = new int[64];
        this.whitePaletteWords = new int[9];
        this.houseTargetPaletteWords = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 3, 9);
        this.fadePalettes = new int[3][][];
        this.creditsStartTick = new int[3];
        this.fadeStepCount = new int[3];
        this.finalPlanet = new Bitmap[3];
        if (rom == null || rom.length < 819200) {
            throw new IllegalArgumentException("ROM too small for Genesis ending");
        }
        this.rom = rom;
        this.mediaAssets = null;
        this.patterns = loadPatternsPersistentScratch(rom, RESOURCE_PATTERN_TABLE);
        if (be16(rom, RESOURCE_MAP_DESCRIPTOR) != 36352) {
            throw new IllegalArgumentException("Unexpected ending map descriptor");
        }
        int mapPtr = be32(rom, 815686) & 16777215;
        this.map = new byte[MAP_BYTES];
        int mapBytes = decompressInto(rom, mapPtr, this.map);
        if (mapBytes != MAP_BYTES) {
            throw new IllegalArgumentException("Ending map decompressed to " + mapBytes);
        }
        for (int i = 0; i < 64; i++) {
            this.initialPaletteWords[i] = be16(rom, (i * 2) + RESOURCE_PALETTE);
        }
        this.font = decodeFont();
        loadFadeWordsFromRom();
        this.introLines = parseCredits(rom, INTRO_TEXT);
        this.creditLines = parseCredits(rom, CREDIT_TEXT);
        finishInitialization();
    }

    GenesisEndingRenderer(RomRuntimeFrontendAssets assets, RomRuntimeOriginalContentAssets contentAssets) {
        this.initialPaletteWords = new int[64];
        this.whitePaletteWords = new int[9];
        this.houseTargetPaletteWords = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 3, 9);
        this.fadePalettes = new int[3][][];
        this.creditsStartTick = new int[3];
        this.fadeStepCount = new int[3];
        this.finalPlanet = new Bitmap[3];
        if (assets == null) {
            throw new IllegalArgumentException("Ending media provider is unavailable");
        }
        if (contentAssets == null) {
            throw new IllegalArgumentException("Ending content provider is unavailable");
        }
        this.rom = null;
        this.mediaAssets = assets;
        this.patterns = readMedia("ending/planet_patterns.bin");
        this.map = readMedia("ending/planet_map.bin");
        this.font = readMedia("ending/font.bin");
        if (this.map.length != MAP_BYTES || this.font.length != 4096) {
            throw new IllegalArgumentException("Ending provider asset size mismatch");
        }
        loadWords(readMedia("ending/initial_palette.bin"), this.initialPaletteWords);
        loadLegacyFadeTarget(readMedia("ending/fade_white.bin"), this.whitePaletteWords);
        loadLegacyFadeTarget(readMedia("ending/fade_atreides.bin"), this.houseTargetPaletteWords[0]);
        loadLegacyFadeTarget(readMedia("ending/fade_harkonnen.bin"), this.houseTargetPaletteWords[1]);
        loadLegacyFadeTarget(readMedia("ending/fade_ordos.bin"), this.houseTargetPaletteWords[2]);
        try {
            byte[] exactText = contentAssets.endingTextData();
            this.introLines = parseCredits(exactText, 0);
            this.creditLines = parseCredits(exactText, 14);
            finishInitialization();
        } catch (IOException e) {
            throw new IllegalArgumentException("Ending READY text is unavailable", e);
        }
    }

    @Deprecated
    GenesisEndingRenderer(RomRuntimeFrontendAssets assets, byte[] rom) {
        this.initialPaletteWords = new int[64];
        this.whitePaletteWords = new int[9];
        this.houseTargetPaletteWords = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 3, 9);
        this.fadePalettes = new int[3][][];
        this.creditsStartTick = new int[3];
        this.fadeStepCount = new int[3];
        this.finalPlanet = new Bitmap[3];
        if (assets == null) {
            throw new IllegalArgumentException("Ending media provider is unavailable");
        }
        if (rom == null || rom.length < 72030) {
            throw new IllegalArgumentException("Ending reference ROM data is missing/truncated");
        }
        this.rom = rom;
        this.mediaAssets = assets;
        this.patterns = readMedia("ending/planet_patterns.bin");
        this.map = readMedia("ending/planet_map.bin");
        this.font = readMedia("ending/font.bin");
        if (this.map.length != MAP_BYTES || this.font.length != 4096) {
            throw new IllegalArgumentException("Ending provider asset size mismatch");
        }
        loadWords(readMedia("ending/initial_palette.bin"), this.initialPaletteWords);
        loadLegacyFadeTarget(readMedia("ending/fade_white.bin"), this.whitePaletteWords);
        loadLegacyFadeTarget(readMedia("ending/fade_atreides.bin"), this.houseTargetPaletteWords[0]);
        loadLegacyFadeTarget(readMedia("ending/fade_harkonnen.bin"), this.houseTargetPaletteWords[1]);
        loadLegacyFadeTarget(readMedia("ending/fade_ordos.bin"), this.houseTargetPaletteWords[2]);
        this.introLines = parseCredits(rom, INTRO_TEXT);
        this.creditLines = parseCredits(rom, CREDIT_TEXT);
        finishInitialization();
    }

    private void finishInitialization() {
        if (this.introLines.length == 0 || this.creditLines.length < 20) {
            throw new IllegalArgumentException("Ending credit text anchors mismatch");
        }
        for (int house = 0; house < 3; house++) {
            buildFade(house);
        }
    }

    private void loadFadeWordsFromRom() {
        for (int i = 0; i < 9; i++) {
            this.whitePaletteWords[i] = be16(this.rom, ((i + 1) * 2) + WHITE_PALETTE);
        }
        for (int i2 = 0; i2 < 9; i2++) {
            this.houseTargetPaletteWords[0][i2] = be16(this.rom, ((i2 + 1) * 2) + 444200);
            this.houseTargetPaletteWords[1][i2] = be16(this.rom, ((i2 + 1) * 2) + HOUSE_PALETTE_GRADIENTS);
            this.houseTargetPaletteWords[2][i2] = be16(this.rom, ((i2 + 1) * 2) + 444220);
        }
    }

    int creditsStartTick(int frontendHouse) {
        return this.creditsStartTick[clampHouse(frontendHouse)];
    }

    boolean canExit(long tick, int frontendHouse) {
        int start = creditsStartTick(frontendHouse);
        if (tick < start) {
            return false;
        }
        long creditTick = tick - start;
        return creditTick >= ((long) this.introLines.length) * 24;
    }

    Bitmap render(int frontendHouse, long rawTick) {
        Bitmap base;
        int house = clampHouse(frontendHouse);
        long tick = Math.max(0L, rawTick);
        int[] paletteWords = paletteAt(house, tick);
        int creditStart = this.creditsStartTick[house];
        if (tick < creditStart) {
            return renderPlanet(paletteWords, 0);
        }
        long creditTick = tick - creditStart;
        int scrollPixels = (int) Math.min(2147483647L, creditTick / 3);
        Bitmap base2 = this.finalPlanet[house];
        if (base2 == null) {
            Bitmap base3 = renderPlanet(finalPalette(house), 0);
            this.finalPlanet[house] = base3;
            base = base3;
        } else {
            base = base2;
        }
        int[] pixels = new int[71680];
        int shift = Math.min(224, scrollPixels);
        if (shift < 224) {
            int[] src = new int[71680];
            base.getPixels(src, 0, 320, 0, 0, 320, 224);
            for (int y = 0; y < 224 - shift; y++) {
                System.arraycopy(src, (y + shift) * 320, pixels, y * 320, 320);
            }
        }
        drawCreditStream(pixels, house, scrollPixels, finalPalette(house));
        Bitmap out = Bitmap.createBitmap(320, 224, Bitmap.Config.ARGB_8888);
        out.setPixels(pixels, 0, 320, 0, 0, 320, 224);
        return out;
    }

    private byte[] readMedia(String relativePath) {
        try {
            return this.mediaAssets.read(relativePath);
        } catch (IOException e) {
            throw new IllegalArgumentException("Ending media asset unavailable: " + relativePath, e);
        }
    }

    private static void loadWords(byte[] bytes, int[] out) {
        if (bytes == null || bytes.length != out.length * 2) {
            throw new IllegalArgumentException("Ending palette asset size mismatch");
        }
        for (int i = 0; i < out.length; i++) {
            out[i] = ((bytes[i * 2] & 255) << 8) | (bytes[(i * 2) + 1] & 255);
        }
    }

    private static void loadLegacyFadeTarget(byte[] bytes, int[] out) {
        if (bytes == null || bytes.length != out.length * 2 || out.length < 2) {
            throw new IllegalArgumentException("Ending fade palette asset size mismatch");
        }
        int[] raw = new int[out.length];
        loadWords(bytes, raw);
        for (int i = 0; i + 1 < out.length; i++) {
            out[i] = raw[i + 1];
        }
        int i2 = out.length;
        out[i2 - 1] = raw[raw.length - 1];
    }

    private void drawCreditStream(int[] pixels, int house, int scrollPixels, int[] paletteWords) {
        int y;
        int firstIndex = Math.max(0, ((scrollPixels - 224) - 8) / 8);
        int lastIndex = ((scrollPixels + 224) / 8) + 2;
        for (int index = firstIndex; index <= lastIndex; index++) {
            CreditLine line = streamLine(index);
            if (line != null && (y = ((index * 8) + 224) - scrollPixels) > -8 && y < 224) {
                drawTextLine(pixels, line, y, paletteWords);
            }
        }
    }

    private CreditLine streamLine(int index) {
        if (index < this.introLines.length) {
            return this.introLines[index];
        }
        if (this.creditLines.length == 0) {
            return null;
        }
        return this.creditLines[Math.floorMod(index - this.introLines.length, this.creditLines.length)];
    }

    private void drawTextLine(int[] pixels, CreditLine line, int y0, int[] paletteWords) {
        int dx;
        GenesisEndingRenderer genesisEndingRenderer = this;
        String text = line.text;
        int i = 8;
        int i2 = 320;
        int x0 = Math.max(0, (320 - (text.length() * 8)) / 2);
        int[] palette = decodePaletteWords(paletteWords);
        int ciChar = 0;
        while (ciChar < text.length()) {
            int ch = GermanFontGlyphMapper.mapFrontendGlyph(text.charAt(ciChar));
            int glyph = ch * 32;
            if (glyph + 32 <= genesisEndingRenderer.font.length) {
                int dstX = (ciChar * 8) + x0;
                int py = 0;
                while (py < i) {
                    int dy = y0 + py;
                    if (dy >= 0 && dy < 224) {
                        int px = 0;
                        while (px < i) {
                            int packed = genesisEndingRenderer.font[(py * 4) + glyph + (px >>> 1)] & 255;
                            int color = (px & 1) == 0 ? packed >>> 4 : packed & 15;
                            if (color != 0 && (dx = dstX + px) >= 0 && dx < i2) {
                                pixels[(dy * 320) + dx] = palette[(line.paletteLine * 16) + color];
                            }
                            px++;
                            i = 8;
                            i2 = 320;
                            genesisEndingRenderer = this;
                        }
                    }
                    py++;
                    i = 8;
                    i2 = 320;
                    genesisEndingRenderer = this;
                }
            }
            ciChar++;
            i = 8;
            i2 = 320;
            genesisEndingRenderer = this;
        }
    }

    private static CreditLine[] parseCredits(byte[] source, int offset) {
        if (source == null || offset < 0 || offset >= source.length) {
            throw new IllegalArgumentException("Ending text offset outside source");
        }
        List<CreditLine> lines = new ArrayList<>();
        StringBuilder line = new StringBuilder();
        int palette = 3;
        int c = offset;
        int guard = 0;
        while (c < source.length && (guard = guard + 1) < 10000) {
            int p = c + 1;
            int c2 = source[c] & 255;
            if (c2 != 0) {
                if (c2 == 255) {
                    if (p < source.length) {
                        palette = source[p] & 3;
                        c = p + 1;
                    }
                } else {
                    if (c2 == 10) {
                        lines.add(new CreditLine(line.toString(), palette));
                        line.setLength(0);
                    } else {
                        line.append((char) c2);
                    }
                    c = p;
                }
            }
        }
        if (line.length() != 0) {
            lines.add(new CreditLine(line.toString(), palette));
        }
        return (CreditLine[]) lines.toArray(new CreditLine[0]);
    }

    private byte[] decodeFont() {
        int expected = be16(this.rom, FONT_STREAM);
        if (expected != 4096) {
            throw new IllegalArgumentException("Unexpected ending font size");
        }
        byte[] out = new byte[expected];
        int got = decompressInto(this.rom, 329418, out);
        if (got != expected) {
            throw new IllegalArgumentException("Ending font decompression mismatch");
        }
        return out;
    }

    private void buildFade(int frontendHouse) {
        int[] white = this.whitePaletteWords;
        int[] houseTarget = this.houseTargetPaletteWords[frontendHouse];
        List<int[]> frames = new ArrayList<>();
        int[] current = (int[]) this.initialPaletteWords.clone();
        while (!rangeMatches(current, 1, white, 9)) {
            for (int i = 0; i < 9; i++) {
                current[i + 1] = stepGenesisColor(current[i + 1], white[i]);
            }
            frames.add((int[]) current.clone());
        }
        while (!rangeMatches(current, 1, houseTarget, 9)) {
            for (int i2 = 0; i2 < 9; i2++) {
                current[i2 + 1] = stepGenesisColor(current[i2 + 1], houseTarget[i2]);
            }
            frames.add((int[]) current.clone());
        }
        this.fadeStepCount[frontendHouse] = frames.size();
        current[45] = 238;
        current[46] = 102;
        current[47] = 0;
        current[61] = 3822;
        current[62] = 1638;
        current[63] = 0;
        frames.add((int[]) current.clone());
        this.fadePalettes[frontendHouse] = (int[][]) frames.toArray(new int[0][]);
        this.creditsStartTick[frontendHouse] = (this.fadeStepCount[frontendHouse] * 4) + PRE_FLASH_TICKS + POST_FLASH_HOLD_TICKS;
    }

    private int[] paletteAt(int house, long tick) {
        if (tick < 150) {
            return this.initialPaletteWords;
        }
        long elapsed = tick - 150;
        int[][] frames = this.fadePalettes[house];
        int steps = this.fadeStepCount[house];
        long fadeTicks = steps * 4;
        if (elapsed < fadeTicks) {
            int i = (int) Math.min(steps - 1, elapsed / 4);
            return frames[i];
        }
        int i2 = frames.length;
        return frames[i2 - 1];
    }

    private int[] finalPalette(int house) {
        int[][] frames = this.fadePalettes[house];
        return frames[frames.length - 1];
    }

    private Bitmap renderPlanet(int[] paletteWords, int yShift) {
        GenesisEndingRenderer genesisEndingRenderer = this;
        int[] palette = decodePaletteWords(paletteWords);
        int[] pixels = new int[71680];
        int ty = 0;
        while (true) {
            int i = 224;
            if (ty >= 28) {
                Bitmap out = Bitmap.createBitmap(320, 224, Bitmap.Config.ARGB_8888);
                out.setPixels(pixels, 0, 320, 0, 0, 320, 224);
                return out;
            }
            int tx = 0;
            while (tx < 40) {
                int mo = ((ty * 64) + tx) * 2;
                int i2 = 8;
                int attr = ((genesisEndingRenderer.map[mo] & 255) << 8) | (genesisEndingRenderer.map[mo + 1] & 255);
                int pattern = attr & 2047;
                int po = pattern * 32;
                if (po + 32 <= genesisEndingRenderer.patterns.length) {
                    boolean hf = (attr & GenesisObjectArt.VRAM_PATTERN_COUNT) != 0;
                    boolean vf = (attr & DuneHackR82ScenarioRecordDecoder.MAX_RECORDS) != 0;
                    int pl = (attr >>> 13) & 3;
                    int dy = 0;
                    while (dy < i2) {
                        int yy = ((ty * 8) + dy) - yShift;
                        if (yy >= 0 && yy < i) {
                            int sy = vf ? 7 - dy : dy;
                            int dx = 0;
                            while (dx < i2) {
                                int sx = hf ? 7 - dx : dx;
                                int packed = genesisEndingRenderer.patterns[po + (sy * 4) + (sx >>> 1)] & 255;
                                int ci = (sx & 1) == 0 ? packed >>> 4 : packed & 15;
                                pixels[(yy * 320) + (tx * 8) + dx] = palette[(pl * 16) + ci];
                                dx++;
                                i2 = 8;
                                genesisEndingRenderer = this;
                            }
                        }
                        dy++;
                        i = 224;
                        i2 = 8;
                        genesisEndingRenderer = this;
                    }
                }
                tx++;
                i = 224;
                genesisEndingRenderer = this;
            }
            ty++;
            genesisEndingRenderer = this;
        }
    }

    private static int[] decodePaletteWords(int[] words) {
        int[] out = new int[64];
        for (int i = 0; i < out.length; i++) {
            int w = words[i];
            int r = Math.round((((w >>> 1) & 7) * 255.0f) / 7.0f);
            int g = Math.round((((w >>> 5) & 7) * 255.0f) / 7.0f);
            int b = Math.round((((w >>> 9) & 7) * 255.0f) / 7.0f);
            out[i] = Color.rgb(r, g, b);
        }
        return out;
    }

    private static int stepGenesisColor(int current, int target) {
        int r = stepComponent(current & 14, target & 14, 2);
        int g = stepComponent(current & 224, target & 224, 32);
        int b = stepComponent(current & MAP_BYTES, target & MAP_BYTES, 512);
        return r | g | b;
    }

    private static int stepComponent(int current, int target, int step) {
        return current < target ? Math.min(target, current + step) : current > target ? Math.max(target, current - step) : current;
    }

    private static boolean rangeMatches(int[] a, int aOffset, int[] b, int count) {
        for (int i = 0; i < count; i++) {
            if (a[aOffset + i] != b[i]) {
                return false;
            }
        }
        return true;
    }

    private static byte[] loadPatternsPersistentScratch(byte[] rom, int tableOffset) {
        int patterns = 0;
        for (int p = tableOffset; be16(rom, p) != 0; p += 6) {
            patterns += be16(rom, p) & 32767;
        }
        byte[] out = new byte[patterns * 32];
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

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0102, code lost:
    
        throw new java.lang.IllegalArgumentException("ending long copy");
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0062, code lost:
    
        throw new java.lang.IllegalArgumentException("ending short copy");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int decompressInto(byte[] r9, int r10, byte[] r11) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisEndingRenderer.decompressInto(byte[], int, byte[]):int");
    }

    private static void ensure(byte[] out, int dst, int n) {
        if (dst < 0 || n < 0 || dst > out.length - n) {
            throw new IllegalArgumentException("ending output overrun");
        }
    }

    private static int clampHouse(int h) {
        return Math.max(0, Math.min(2, h));
    }

    private static int be16(byte[] b, int o) {
        checkRange(b, o, 2);
        return ((b[o] & 255) << 8) | (b[o + 1] & 255);
    }

    private static int be32(byte[] b, int o) {
        checkRange(b, o, 4);
        return ((b[o] & 255) << 24) | ((b[o + 1] & 255) << 16) | ((b[o + 2] & 255) << 8) | (b[o + 3] & 255);
    }

    private static void checkRange(byte[] b, int o, int n) {
        if (o < 0 || n < 0 || o > b.length - n) {
            throw new IllegalArgumentException("ending ROM range");
        }
    }
}
