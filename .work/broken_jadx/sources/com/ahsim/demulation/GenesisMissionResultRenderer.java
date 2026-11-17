package com.ahsim.demulation;

import android.graphics.Bitmap;
import android.graphics.Color;
import com.ahsim.demulation.RomRuntimeOriginalContentAssets;
import java.io.IOException;
import java.lang.reflect.Array;

/* loaded from: classes2.dex */
final class GenesisMissionResultRenderer {
    private static final int[] BACKDROP_PTRS = {679652, 680592, 681370};
    private static final int BAR_PAUSE_TICKS = 11;
    private static final int COMMON_PTRS = 667264;
    private static final int FONT = 330804;
    private static final int MAP_BYTES = 3584;
    private static final int OVERLAY = 679310;
    private static final int PALETTE = 679182;
    static final int PASSWORD_REVEAL_TICKS = 72;
    private static final int RANK_NAMES = 682210;
    private static final int RANK_WIDTH = 17;
    static final int RESULT_BACKGROUND_FADE_TICKS = 24;
    static final int RESULT_PALETTE_FADE_TICKS = 24;
    static final int RESULT_REVEAL_TICKS = 72;
    static final int SCREEN_HEIGHT = 224;
    static final int SCREEN_WIDTH = 320;
    private static final int VRAM_SIZE = 65536;
    private final Bitmap[] backdropCache;
    private final Bitmap[][] backdropFadeCache;
    private final byte[] commonVram;
    private final RomRuntimeFrontendAssets mediaAssets;
    private final int[] palette;
    private final byte[][] providerBackdropMaps;
    private final byte[] providerOverlayMap;
    private final byte[] providerPasswordOverlayMap;
    private final RomRuntimeOriginalContentAssets.MissionResultExactContent resultContent;
    private final byte[] rom;

    GenesisMissionResultRenderer(byte[] rom) {
        this.backdropCache = new Bitmap[3];
        this.backdropFadeCache = (Bitmap[][]) Array.newInstance((Class<?>) Bitmap.class, 3, 8);
        if (rom == null || rom.length < 684032) {
            throw new IllegalArgumentException("ROM too small for result screen");
        }
        this.rom = rom;
        this.mediaAssets = null;
        this.resultContent = null;
        this.palette = decodePalette(rom, PALETTE);
        this.commonVram = new byte[65536];
        this.providerBackdropMaps = null;
        this.providerOverlayMap = null;
        this.providerPasswordOverlayMap = null;
        byte[] scratch = new byte[65536];
        for (int i = 0; i < 7; i++) {
            int ptr = be32(rom, (i * 4) + COMMON_PTRS);
            decompressInto(rom, ptr, scratch);
            System.arraycopy(scratch, 0, this.commonVram, i * DuneHackR82ScenarioRecordDecoder.MAX_RECORDS, DuneHackR82ScenarioRecordDecoder.MAX_RECORDS);
        }
        checkRange(rom, FONT, DuneHackR82ScenarioRecordDecoder.MAX_RECORDS);
        System.arraycopy(rom, FONT, this.commonVram, 40960, DuneHackR82ScenarioRecordDecoder.MAX_RECORDS);
    }

    GenesisMissionResultRenderer(RomRuntimeFrontendAssets assets, RomRuntimeOriginalContentAssets contentAssets) {
        this.backdropCache = new Bitmap[3];
        this.backdropFadeCache = (Bitmap[][]) Array.newInstance((Class<?>) Bitmap.class, 3, 8);
        if (assets == null) {
            throw new IllegalArgumentException("Mission-result media provider is unavailable");
        }
        if (contentAssets == null) {
            throw new IllegalArgumentException("Mission-result content provider is unavailable");
        }
        this.rom = null;
        this.mediaAssets = assets;
        try {
            this.resultContent = contentAssets.missionResultExactContent();
            this.palette = decodePalette(readMedia("mission_result/palette.bin"));
            this.commonVram = new byte[65536];
            byte[] common = readMedia("mission_result/common_patterns.bin");
            if (common.length != 28672) {
                throw new IllegalArgumentException("Mission-result common pattern size");
            }
            System.arraycopy(common, 0, this.commonVram, 0, common.length);
            byte[] font = readMedia("mission_result/font.bin");
            if (font.length != 4096) {
                throw new IllegalArgumentException("Mission-result font size");
            }
            System.arraycopy(font, 0, this.commonVram, 40960, font.length);
            this.providerBackdropMaps = new byte[][]{readMedia("mission_result/backdrop0.map"), readMedia("mission_result/backdrop1.map"), readMedia("mission_result/backdrop2.map")};
            this.providerOverlayMap = readMedia("mission_result/overlay.map");
            this.providerPasswordOverlayMap = readMedia("mission_result/password_overlay.map");
        } catch (IOException e) {
            throw new IllegalArgumentException("Mission-result READY data is unavailable", e);
        }
    }

    @Deprecated
    GenesisMissionResultRenderer(RomRuntimeFrontendAssets assets, byte[] rom) {
        this.backdropCache = new Bitmap[3];
        this.backdropFadeCache = (Bitmap[][]) Array.newInstance((Class<?>) Bitmap.class, 3, 8);
        if (assets == null) {
            throw new IllegalArgumentException("Mission-result media provider is unavailable");
        }
        if (rom == null || rom.length < 684032) {
            throw new IllegalArgumentException("Mission-result reference ROM data is missing/truncated");
        }
        this.rom = rom;
        this.mediaAssets = assets;
        this.resultContent = null;
        this.palette = decodePalette(readMedia("mission_result/palette.bin"));
        this.commonVram = new byte[65536];
        byte[] common = readMedia("mission_result/common_patterns.bin");
        if (common.length != 28672) {
            throw new IllegalArgumentException("Mission-result common pattern size");
        }
        System.arraycopy(common, 0, this.commonVram, 0, common.length);
        byte[] font = readMedia("mission_result/font.bin");
        if (font.length != 4096) {
            throw new IllegalArgumentException("Mission-result font size");
        }
        System.arraycopy(font, 0, this.commonVram, 40960, font.length);
        this.providerBackdropMaps = new byte[][]{readMedia("mission_result/backdrop0.map"), readMedia("mission_result/backdrop1.map"), readMedia("mission_result/backdrop2.map")};
        this.providerOverlayMap = readMedia("mission_result/overlay.map");
        this.providerPasswordOverlayMap = readMedia("mission_result/password_overlay.map");
    }

    Bitmap renderBackdrop(int missionOneBased) {
        int mission = Math.max(1, Math.min(9, missionOneBased));
        int index = mission % 3;
        Bitmap cached = this.backdropCache[index];
        if (cached != null) {
            return cached;
        }
        byte[] vram = (byte[]) this.commonVram.clone();
        loadBackdropMap(vram, mission);
        Bitmap cached2 = renderSinglePlane(vram, 49152, false);
        this.backdropCache[index] = cached2;
        this.backdropFadeCache[index][7] = cached2;
        return cached2;
    }

    Bitmap renderBackdropFade(int missionOneBased, long fadeTick) {
        int mission = Math.max(1, Math.min(9, missionOneBased));
        int index = mission % 3;
        int step = Math.max(1, Math.min(7, ((int) (Math.max(0L, fadeTick) / 3)) + 1));
        if (step >= 7) {
            return renderBackdrop(mission);
        }
        Bitmap cached = this.backdropFadeCache[index][step];
        if (cached != null) {
            return cached;
        }
        Bitmap cached2 = fadeGenesisBitmapFromBlack(renderBackdrop(mission), step);
        this.backdropFadeCache[index][step] = cached2;
        return cached2;
    }

    Bitmap fadeToBlack(Bitmap source, long fadeTick) {
        int step = Math.max(1, Math.min(7, ((int) (Math.max(0L, fadeTick) / 3)) + 1));
        return fadeGenesisBitmapToBlack(source, step);
    }

    Bitmap renderOverlayAnimated(int missionOneBased, int displayScore, int rankIndex, int elapsedTicks, int spiceYou, int spiceEnemy, int unitsYou, int unitsEnemy, int structuresYou, int structuresEnemy, long presentationTick) {
        int[] target = {clampResult(spiceYou), clampResult(spiceEnemy), clampResult(unitsYou), clampResult(unitsEnemy), clampResult(structuresYou), clampResult(structuresEnemy)};
        int[] scale = {resultScale(target[0], target[1]), resultScale(target[0], target[1]), resultScale(target[2], target[3]), resultScale(target[2], target[3]), resultScale(target[4], target[5]), resultScale(target[4], target[5])};
        int[] shown = animatedValues(target, scale, presentationTick);
        return renderOverlayWithBars(missionOneBased, displayScore, rankIndex, elapsedTicks, spiceYou, spiceEnemy, unitsYou, unitsEnemy, structuresYou, structuresEnemy, shown[0], shown[1], shown[2], shown[3], shown[4], shown[5]);
    }

    Bitmap renderOverlay(int missionOneBased, int displayScore, int rankIndex, int elapsedTicks, int spiceYou, int spiceEnemy, int unitsYou, int unitsEnemy, int structuresYou, int structuresEnemy) {
        return renderOverlayWithBars(missionOneBased, displayScore, rankIndex, elapsedTicks, spiceYou, spiceEnemy, unitsYou, unitsEnemy, structuresYou, structuresEnemy, spiceYou, spiceEnemy, unitsYou, unitsEnemy, structuresYou, structuresEnemy);
    }

    Bitmap render(int missionOneBased, int displayScore, int rankIndex, int elapsedTicks, int spiceYou, int spiceEnemy, int unitsYou, int unitsEnemy, int structuresYou, int structuresEnemy) {
        return renderWithBars(missionOneBased, displayScore, rankIndex, elapsedTicks, spiceYou, spiceEnemy, unitsYou, unitsEnemy, structuresYou, structuresEnemy, spiceYou, spiceEnemy, unitsYou, unitsEnemy, structuresYou, structuresEnemy);
    }

    Bitmap renderAnimated(int missionOneBased, int displayScore, int rankIndex, int elapsedTicks, int spiceYou, int spiceEnemy, int unitsYou, int unitsEnemy, int structuresYou, int structuresEnemy, long presentationTick) {
        int[] target = {clampResult(spiceYou), clampResult(spiceEnemy), clampResult(unitsYou), clampResult(unitsEnemy), clampResult(structuresYou), clampResult(structuresEnemy)};
        int[] scale = {resultScale(target[0], target[1]), resultScale(target[0], target[1]), resultScale(target[2], target[3]), resultScale(target[2], target[3]), resultScale(target[4], target[5]), resultScale(target[4], target[5])};
        int[] shown = animatedValues(target, scale, presentationTick);
        return renderWithBars(missionOneBased, displayScore, rankIndex, elapsedTicks, spiceYou, spiceEnemy, unitsYou, unitsEnemy, structuresYou, structuresEnemy, shown[0], shown[1], shown[2], shown[3], shown[4], shown[5]);
    }

    long tallyDurationTicks(int spiceYou, int spiceEnemy, int unitsYou, int unitsEnemy, int structuresYou, int structuresEnemy) {
        int[] t = {clampResult(spiceYou), clampResult(spiceEnemy), clampResult(unitsYou), clampResult(unitsEnemy), clampResult(structuresYou), clampResult(structuresEnemy)};
        int[] scale = {resultScale(t[0], t[1]), resultScale(t[0], t[1]), resultScale(t[2], t[3]), resultScale(t[2], t[3]), resultScale(t[4], t[5]), resultScale(t[4], t[5])};
        long total = 72;
        for (int i = 0; i < t.length; i++) {
            total += countIterations(t[i], scale[i]) + 11;
        }
        return total;
    }

    float revealFraction(long tick) {
        long t = Math.max(0L, Math.min(71L, tick));
        long d2 = 65536;
        long d3 = 0;
        long frame = 0;
        while (true) {
            long frame2 = frame + 1;
            if (frame == t) {
                return Math.min(1.0f, d3 / 1.4680064E7f);
            }
            d2 += 8192;
            d3 += d2 < 1048576 ? d2 : 1048576L;
            if (d3 >= 7340032) {
                while (true) {
                    long frame3 = frame2 + 1;
                    if (frame2 == t) {
                        return Math.min(1.0f, d3 / 1.4680064E7f);
                    }
                    d2 -= 8192;
                    d3 += d2 > 65536 ? d2 : 65536L;
                    if (d3 >= 14680064) {
                        return 1.0f;
                    }
                    frame2 = frame3;
                }
            } else {
                frame = frame2;
            }
        }
    }

    boolean isTallyTickSoundAt(int spiceYou, int spiceEnemy, int unitsYou, int unitsEnemy, int structuresYou, int structuresEnemy, long presentationTick) {
        long tick = presentationTick - 72;
        if (tick < 0) {
            return false;
        }
        int[] t = {clampResult(spiceYou), clampResult(spiceEnemy), clampResult(unitsYou), clampResult(unitsEnemy), clampResult(structuresYou), clampResult(structuresEnemy)};
        int[] scale = {resultScale(t[0], t[1]), resultScale(t[0], t[1]), resultScale(t[2], t[3]), resultScale(t[2], t[3]), resultScale(t[4], t[5]), resultScale(t[4], t[5])};
        for (int i = 0; i < t.length; i++) {
            int iterations = countIterations(t[i], scale[i]);
            if (tick < iterations) {
                return ((1 + tick) & 3) == 0;
            }
            long tick2 = tick - iterations;
            if (tick2 < 11) {
                return false;
            }
            tick = tick2 - 11;
        }
        return false;
    }

    private Bitmap renderOverlayWithBars(int missionOneBased, int displayScore, int rankIndex, int elapsedTicks, int spiceYou, int spiceEnemy, int unitsYou, int unitsEnemy, int structuresYou, int structuresEnemy, int shownSpiceYou, int shownSpiceEnemy, int shownUnitsYou, int shownUnitsEnemy, int shownStructuresYou, int shownStructuresEnemy) {
        byte[] vram = (byte[]) this.commonVram.clone();
        loadResultOverlayMap(vram);
        writeResultFields(vram, displayScore, rankIndex, elapsedTicks, spiceYou, spiceEnemy, unitsYou, unitsEnemy, structuresYou, structuresEnemy, shownSpiceYou, shownSpiceEnemy, shownUnitsYou, shownUnitsEnemy, shownStructuresYou, shownStructuresEnemy);
        return renderSinglePlane(vram, 60928, true);
    }

    private Bitmap renderWithBars(int missionOneBased, int displayScore, int rankIndex, int elapsedTicks, int spiceYou, int spiceEnemy, int unitsYou, int unitsEnemy, int structuresYou, int structuresEnemy, int shownSpiceYou, int shownSpiceEnemy, int shownUnitsYou, int shownUnitsEnemy, int shownStructuresYou, int shownStructuresEnemy) {
        int mission = Math.max(1, Math.min(9, missionOneBased));
        byte[] vram = (byte[]) this.commonVram.clone();
        loadResultMaps(vram, mission);
        writeResultFields(vram, displayScore, rankIndex, elapsedTicks, spiceYou, spiceEnemy, unitsYou, unitsEnemy, structuresYou, structuresEnemy, shownSpiceYou, shownSpiceEnemy, shownUnitsYou, shownUnitsEnemy, shownStructuresYou, shownStructuresEnemy);
        return renderPlanes(vram);
    }

    private void writeResultFields(byte[] vram, int displayScore, int rankIndex, int elapsedTicks, int spiceYou, int spiceEnemy, int unitsYou, int unitsEnemy, int structuresYou, int structuresEnemy, int shownSpiceYou, int shownSpiceEnemy, int shownUnitsYou, int shownUnitsEnemy, int shownStructuresYou, int shownStructuresEnemy) {
        writeNumber(vram, 61330, Math.max(0, Math.min(65535, displayScore)), 5, false);
        int ticks = Math.max(0, elapsedTicks);
        int hours = ticks / 216000;
        int minutes = (ticks - ((hours * 3600) * 60)) / 3600;
        writeNumber(vram, 61372, hours, 2, false);
        writeNumber(vram, 61378, minutes, 2, true);
        writeRank(vram, Math.max(0, Math.min(8, rankIndex)));
        int scale = resultScale(spiceYou, spiceEnemy);
        writeBar(vram, 62612, shownSpiceYou, scale, 1280);
        writeBar(vram, 62740, shownSpiceEnemy, scale, 9472);
        int scale2 = resultScale(unitsYou, unitsEnemy);
        writeBar(vram, 63252, shownUnitsYou, scale2, 1280);
        writeBar(vram, 63380, shownUnitsEnemy, scale2, 9472);
        int scale3 = resultScale(structuresYou, structuresEnemy);
        writeBar(vram, 63892, shownStructuresYou, scale3, 1280);
        writeBar(vram, 64020, shownStructuresEnemy, scale3, 9472);
    }

    private static int[] animatedValues(int[] target, int[] scale, long presentationTick) {
        int[] shown = new int[target.length];
        long tick = Math.max(0L, presentationTick) - 72;
        if (tick < 0) {
            return shown;
        }
        for (int i = 0; i < target.length; i++) {
            int iterations = countIterations(target[i], scale[i]);
            if (tick < iterations) {
                shown[i] = Math.min(target[i], (int) Math.min(2147483647L, scale[i] * tick));
                return shown;
            }
            shown[i] = target[i];
            long tick2 = tick - iterations;
            if (tick2 < 11) {
                return shown;
            }
            tick = tick2 - 11;
        }
        return shown;
    }

    private static int countIterations(int target, int scale) {
        return Math.max(1, ((Math.max(1, scale) + target) - 1) / Math.max(1, scale));
    }

    private static int clampResult(int value) {
        return Math.max(0, Math.min(65000, value));
    }

    Bitmap renderNextMissionPasswordOverlay(int missionOneBased, int frontendHouseIndex) {
        int mission = Math.max(1, Math.min(8, missionOneBased));
        int frontHouse = Math.max(0, Math.min(2, frontendHouseIndex));
        int[] romHouseFromFrontend = {1, 0, 2};
        byte[] vram = (byte[]) this.commonVram.clone();
        loadPasswordOverlayMap(vram);
        int romHouse = romHouseFromFrontend[frontHouse];
        if (this.resultContent != null) {
            writeFixedText(vram, 62494, this.resultContent.password(mission, romHouse));
            writeFixedText(vram, 61984, this.resultContent.houseLabel(romHouse));
        } else {
            int record = ((mission - 1) * 24) + 557348 + (romHouse * 8);
            int passwordPtr = be32(this.rom, record);
            writeFixedText(vram, 62494, this.rom, passwordPtr, 10);
            writeFixedText(vram, 61984, this.rom, (romHouse * 9) + 682364, 9);
        }
        writeNumber(vram, 62252, mission, 1, false);
        return renderSinglePlane(vram, 60928, true);
    }

    Bitmap renderNextMissionPassword(int missionOneBased, int frontendHouseIndex, int displayScore, int rankIndex, int elapsedTicks, int spiceYou, int spiceEnemy, int unitsYou, int unitsEnemy, int structuresYou, int structuresEnemy) {
        int mission = Math.max(1, Math.min(8, missionOneBased));
        byte[] vram = (byte[]) this.commonVram.clone();
        loadBackdropMap(vram, mission);
        loadPasswordOverlayMap(vram);
        int frontHouse = Math.max(0, Math.min(2, frontendHouseIndex));
        int[] romHouseFromFrontend = {1, 0, 2};
        int romHouse = romHouseFromFrontend[frontHouse];
        if (this.resultContent != null) {
            writeFixedText(vram, 62494, this.resultContent.password(mission, romHouse));
            writeFixedText(vram, 61984, this.resultContent.houseLabel(romHouse));
        } else {
            int record = ((mission - 1) * 24) + 557348 + (romHouse * 8);
            int passwordPtr = be32(this.rom, record);
            writeFixedText(vram, 62494, this.rom, passwordPtr, 10);
            writeFixedText(vram, 61984, this.rom, (romHouse * 9) + 682364, 9);
        }
        writeNumber(vram, 62252, mission, 1, false);
        return renderPlanes(vram);
    }

    private static void writeFixedText(byte[] vram, int address, byte[] data) {
        writeFixedText(vram, address, data, 0, data.length);
    }

    private static void writeFixedText(byte[] vram, int address, byte[] data, int offset, int length) {
        checkRange(data, offset, length);
        for (int i = 0; i < length; i++) {
            putWord(vram, (i * 2) + address, GermanFontGlyphMapper.mapFixedTileByte(data[offset + i] & 255) + 17664);
        }
    }

    private void loadResultMaps(byte[] vram, int mission) {
        loadBackdropMap(vram, mission);
        loadResultOverlayMap(vram);
    }

    private void loadResultOverlayMap(byte[] vram) {
        if (this.mediaAssets != null) {
            if (this.providerOverlayMap.length != MAP_BYTES) {
                throw new IllegalArgumentException("Mission-result provider overlay size");
            }
            System.arraycopy(this.providerOverlayMap, 0, vram, 60928, MAP_BYTES);
        } else {
            byte[] scratch = new byte[65536];
            decompressInto(this.rom, OVERLAY, scratch);
            System.arraycopy(scratch, 0, vram, 60928, MAP_BYTES);
        }
    }

    private void loadBackdropMap(byte[] vram, int mission) {
        if (this.mediaAssets != null) {
            byte[] backdrop = this.providerBackdropMaps[mission % 3];
            if (backdrop.length != MAP_BYTES) {
                throw new IllegalArgumentException("Mission-result provider backdrop size");
            }
            System.arraycopy(backdrop, 0, vram, 49152, MAP_BYTES);
            return;
        }
        byte[] scratch = new byte[65536];
        decompressInto(this.rom, BACKDROP_PTRS[mission % 3], scratch);
        System.arraycopy(scratch, 0, vram, 49152, MAP_BYTES);
    }

    private void loadPasswordOverlayMap(byte[] vram) {
        if (this.mediaAssets != null) {
            if (this.providerPasswordOverlayMap.length != 1792 && this.providerPasswordOverlayMap.length != MAP_BYTES) {
                throw new IllegalArgumentException("Mission-result password overlay size");
            }
            for (int o = 0; o < MAP_BYTES; o += 2) {
                vram[o + 60928] = 32;
                vram[o + 60928 + 1] = 0;
            }
            System.arraycopy(this.providerPasswordOverlayMap, 0, vram, 60928, Math.min(this.providerPasswordOverlayMap.length, MAP_BYTES));
            return;
        }
        byte[] scratch = new byte[65536];
        decompressInto(this.rom, 679524, scratch);
        System.arraycopy(scratch, 0, vram, 60928, MAP_BYTES);
    }

    private byte[] readMedia(String relativePath) {
        try {
            return this.mediaAssets.read(relativePath);
        } catch (IOException e) {
            throw new IllegalArgumentException("Mission-result media asset unavailable: " + relativePath, e);
        }
    }

    private static int resultScale(int a, int b) {
        int max = Math.min(65000, Math.max(Math.max(0, a), Math.max(0, b)));
        if (max <= 168) {
            return 1;
        }
        return (max / 168) + 1;
    }

    private static void writeBar(byte[] vram, int address, int value, int scale, int baseAttr) {
        int v = Math.max(0, Math.min(65000, value));
        int index = v == 0 ? 0 : (v - 1) / Math.max(1, scale);
        int p = address;
        int full = index >>> 3;
        for (int i = 0; i < full; i++) {
            putWord(vram, p, baseAttr + 23);
            p += 2;
        }
        int i2 = baseAttr + 24;
        putWord(vram, p, i2 + (index & 7));
        writeNumber(vram, address + 44, v, 5, false);
    }

    private static void writeNumber(byte[] vram, int address, int value, int digits, boolean leadingZeroes) {
        int v = Math.max(0, value);
        int p = ((digits - 1) * 2) + address;
        putWord(vram, p, (v % 10) + 17712);
        for (int left = digits - 1; left > 0; left--) {
            p -= 2;
            v /= 10;
            if (leadingZeroes || v != 0) {
                putWord(vram, p, (v % 10) + 17712);
            } else {
                return;
            }
        }
    }

    private void writeRank(byte[] vram, int rankIndex) {
        if (this.resultContent != null) {
            byte[] record = this.resultContent.rankRecord(rankIndex);
            for (int i = 0; i < 17; i++) {
                putWord(vram, (i * 2) + 61848, (record[i] & 255) + 17664);
            }
            return;
        }
        int src = (rankIndex * 17) + RANK_NAMES;
        for (int i2 = 0; i2 < 17; i2++) {
            int c = this.rom[src + i2] & 255;
            putWord(vram, (i2 * 2) + 61848, c + 17664);
        }
    }

    private Bitmap renderSinglePlane(byte[] vram, int mapBase, boolean transparentZero) {
        int[] pixels = new int[71680];
        renderPlane(vram, mapBase, pixels, transparentZero);
        Bitmap bitmap = Bitmap.createBitmap(320, 224, Bitmap.Config.ARGB_8888);
        bitmap.setPixels(pixels, 0, 320, 0, 0, 320, 224);
        return bitmap;
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

    private Bitmap renderPlanes(byte[] vram) {
        int[] pixels = new int[71680];
        renderPlane(vram, 49152, pixels, false);
        renderPlane(vram, 60928, pixels, true);
        Bitmap bitmap = Bitmap.createBitmap(320, 224, Bitmap.Config.ARGB_8888);
        bitmap.setPixels(pixels, 0, 320, 0, 0, 320, 224);
        return bitmap;
    }

    private void renderPlane(byte[] vram, int mapBase, int[] pixels, boolean transparentZero) {
        int ty;
        int tx;
        int ty2 = 0;
        while (ty2 < 28) {
            int tx2 = 0;
            while (tx2 < 40) {
                int mo = mapBase + (((ty2 * 64) + tx2) * 2);
                int i = 8;
                int attr = ((vram[mo] & 255) << 8) | (vram[mo + 1] & 255);
                int pattern = attr & 2047;
                int po = pattern * 32;
                boolean hf = (attr & GenesisObjectArt.VRAM_PATTERN_COUNT) != 0;
                boolean vf = (attr & DuneHackR82ScenarioRecordDecoder.MAX_RECORDS) != 0;
                int pl = (attr >>> 13) & 3;
                int dy = 0;
                while (dy < i) {
                    int sy = vf ? 7 - dy : dy;
                    int row = (sy * 4) + po;
                    int dx = 0;
                    while (dx < i) {
                        int sx = hf ? 7 - dx : dx;
                        int packed = vram[(sx >>> 1) + row] & 255;
                        int ci = (sx & 1) == 0 ? packed >>> 4 : packed & 15;
                        if (transparentZero && ci == 0) {
                            ty = ty2;
                            tx = tx2;
                        } else {
                            ty = ty2;
                            tx = tx2;
                            pixels[(((ty2 * 8) + dy) * 320) + (tx2 * 8) + dx] = this.palette[(pl * 16) + ci];
                        }
                        dx++;
                        ty2 = ty;
                        tx2 = tx;
                        i = 8;
                    }
                    dy++;
                    ty2 = ty2;
                    i = 8;
                }
                tx2++;
                ty2 = ty2;
            }
            int tx3 = ty2 + 1;
            ty2 = tx3;
        }
    }

    private static void putWord(byte[] b, int o, int v) {
        if (o < 0 || o + 1 >= b.length) {
            throw new IllegalArgumentException("result VRAM write outside range");
        }
        b[o] = (byte) (v >>> 8);
        b[o + 1] = (byte) v;
    }

    private static int[] decodePalette(byte[] data) {
        if (data == null || data.length != 128) {
            throw new IllegalArgumentException("Mission-result palette size");
        }
        int[] p = new int[64];
        for (int i = 0; i < p.length; i++) {
            int w = ((data[i * 2] & 255) << 8) | (data[(i * 2) + 1] & 255);
            int r = Math.round((((w >>> 1) & 7) * 255.0f) / 7.0f);
            int g = Math.round((((w >>> 5) & 7) * 255.0f) / 7.0f);
            int b = Math.round((((w >>> 9) & 7) * 255.0f) / 7.0f);
            p[i] = Color.rgb(r, g, b);
        }
        return p;
    }

    private static int[] decodePalette(byte[] rom, int off) {
        int[] p = new int[64];
        for (int i = 0; i < p.length; i++) {
            int w = be16(rom, (i * 2) + off);
            int r = Math.round((((w >>> 1) & 7) * 255.0f) / 7.0f);
            int g = Math.round((((w >>> 5) & 7) * 255.0f) / 7.0f);
            int b = Math.round((((w >>> 9) & 7) * 255.0f) / 7.0f);
            p[i] = Color.rgb(r, g, b);
        }
        return p;
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x00a0, code lost:
    
        throw new java.lang.IllegalArgumentException("result absolute copy");
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0065, code lost:
    
        throw new java.lang.IllegalArgumentException("result short copy");
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
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisMissionResultRenderer.decompressInto(byte[], int, byte[]):int");
    }

    private static void ensure(byte[] out, int dst, int n) {
        if (dst < 0 || n < 0 || dst > out.length - n) {
            throw new IllegalArgumentException("result output overrun");
        }
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
            throw new IllegalArgumentException("result ROM range");
        }
    }
}
