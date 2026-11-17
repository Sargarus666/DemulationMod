package com.ahsim.demulation;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import com.ahsim.demulation.GenesisFrontendAudioTestData;
import java.io.IOException;
import java.lang.reflect.Array;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes2.dex */
final class GenesisOriginalTitleRenderer {
    private static final int BASE_PALETTE = 683416;
    private static final int FONT_SIZE_WORD = 329416;
    private static final int FONT_STREAM = 329418;
    static final int HEIGHT = 224;
    private static final int HOUSE_CURSOR_LAYOUT = 410446;
    private static final int HOUSE_CURSOR_PATTERN_DATA = 410190;
    private static final int HOUSE_CURSOR_VRAM_PATTERN = 1980;
    private static final int[] HOUSE_CURSOR_X = {32, GenesisMissionSequenceArt.PANEL_HEIGHT, 208};
    private static final int HOUSE_CURSOR_Y = 136;
    private static final int HOUSE_RESOURCE = 0;
    static final int LEVEL_SELECT_LEFT = 124;
    static final int LEVEL_SELECT_RIGHT = 312;
    static final int LEVEL_SELECT_ROW_HEIGHT = 23;
    static final int LEVEL_SELECT_TOP = 8;
    static final int LOGO_CLEAR_TICK = 542;
    static final int LOGO_FADE_IN_START_TICK = 200;
    static final int LOGO_FADE_OUT_START_TICK = 521;
    static final int LOGO_HOLD_START_TICK = 221;
    private static final int MAP_COLUMNS = 128;
    private static final int MAP_ROWS = 32;
    static final int MENU_START_TICK = 1764;
    private static final int MUSIC_TEST_TABLE = 556868;
    private static final int OPTIONS_FONT = 330804;
    private static final int OPTIONS_PALETTE = 682904;
    private static final int OPTIONS_RESOURCE = 1;
    static final int PALETTE_FADE_TICKS = 21;
    private static final int PASSWORD_RESOURCE = 10;
    private static final int PATTERN_BYTES = 32;
    private static final int PATTERN_TABLE = 731454;
    static final int PLANET_REACHED_TICK = 1053;
    private static final int PLANE_H = 256;
    private static final int PLANE_W = 1024;
    static final int PRESENT_HOLD_END_TICK = 764;
    static final int PRESENT_HOLD_START_TICK = 564;
    static final int PRESENT_START_TICK = 543;
    private static final int RESOURCE12_MAP_DESCRIPTOR = 810508;
    private static final int RESOURCE13_MAP_DESCRIPTOR = 811644;
    private static final int RESOURCE13_REPLACEMENT_PALETTE = 683576;
    private static final int RESOURCE_TABLE = 818290;
    static final int SCROLL_RELEASE_TICK = 785;
    private static final int SEGA_BASE_PALETTE = 7588;
    private static final int SEGA_GRADIENT = 6358;
    private static final int SEGA_MAP_STREAM = 7466;
    private static final int SEGA_PATTERN_TABLE = 6350;
    static final int SEGA_TICKS = 198;
    static final int SHIP1_START_TICK = 1114;
    static final int SHIP2_START_TICK = 1204;
    static final int SHIP3_START_TICK = 1294;
    static final int SHIPS_END_TICK = 1384;
    private static final int SHIP_LAYOUT_TABLE = 103802;
    private static final int SHIP_PATTERN_TABLE = 98094;
    static final int SHIP_PREP_TICKS = 61;
    private static final int SHIP_REPLACEMENT_PALETTE = 683672;
    private static final int SHIP_SCRIPT_TABLE = 103994;
    static final int SHIP_TICKS = 90;
    private static final int SHIP_VRAM_OFFSET = 25088;
    static final int SHIP_WAIT_TICKS = 180;
    private static final int SOUND_TEST_TABLE = 557020;
    static final int TITLE_HOLD_TICKS = 200;
    static final int TITLE_START_TICK = 1564;
    private static final int TITLE_TEXT = 95220;
    private static final int TITLE_TEXT_BYTES = 36;
    static final int WIDTH = 320;
    private final Paint bitmapPaint;
    private int cachedMusicTest;
    private int cachedMusicVolume;
    private int cachedPasswordCursor;
    private String cachedPasswordText;
    private int cachedRadar;
    private int cachedSoundTest;
    private int cachedSoundVolume;
    private final Bitmap[] campaignHousePanels;
    private final Bitmap campaignLevelFrame;
    private final int[] campaignLevelWorkPixels;
    private final Rect dstRect;
    private final byte[] fontPatterns;
    private final Bitmap frame;
    private final Canvas frameCanvas;
    private final boolean germanLocalization;
    private final byte[] houseAnimatedCursorPatterns;
    private final int[] houseBasePixels;
    private final byte[] houseCursorLayout;
    private final byte[] houseCursorPatterns;
    private final Bitmap houseFrame;
    private final int[] housePalette;
    private final int[] houseWorkPixels;
    private boolean introOnlyFramesReleased;
    private final Bitmap[] logoFadeFrames;
    private final Bitmap logoTitlePlane;
    private final OptionTestEntry[] musicTestEntries;
    private final int[] optionsBasePixels;
    private final byte[] optionsFontPatterns;
    private final Bitmap optionsFrame;
    private final int[] optionsPalette;
    private final int[] optionsWorkPixels;
    private final int[] passwordBasePixels;
    private final Bitmap passwordFrame;
    private final int[] passwordWorkPixels;
    private final Bitmap[] presentFadeFrames;
    private final byte[] rom;
    private final String[] rootMenuLabels;
    private final Bitmap rootMenuOverlay;
    private final boolean russianLocalization;
    private final Bitmap[] segaFrames;
    private final byte[] sharedPatterns;
    private final Bitmap[][] shipFrames;
    private final ShipPose[][] shipPoses;
    private final byte[] shipVram;
    private final OptionTestEntry[] soundTestEntries;
    private final Rect srcRect;
    private final Bitmap starPlane;
    private final String[] startMenuLabels;
    private final Bitmap startMenuOverlay;
    private final int[] titlePalette;

    static final class OptionTestEntry {
        final String name;
        final int sequence;

        OptionTestEntry(String name, int sequence) {
            this.name = name;
            this.sequence = sequence;
        }
    }

    private static OptionTestEntry[] convertAudioEntries(GenesisFrontendAudioTestData.Entry[] source) {
        OptionTestEntry[] out = new OptionTestEntry[source == null ? 0 : source.length];
        for (int i = 0; i < out.length; i++) {
            out[i] = new OptionTestEntry(source[i].name, source[i].sequence);
        }
        return out;
    }

    private static final class ShipPose {
        final int frame;

        /* renamed from: x */
        final int f12x;

        /* renamed from: y */
        final int f13y;

        ShipPose(int frame, int x, int y) {
            this.frame = frame;
            this.f12x = x;
            this.f13y = y;
        }
    }

    GenesisOriginalTitleRenderer(byte[] rom) {
        int i;
        this.logoFadeFrames = new Bitmap[8];
        this.presentFadeFrames = new Bitmap[8];
        this.houseWorkPixels = new int[71680];
        this.houseFrame = Bitmap.createBitmap(320, 224, Bitmap.Config.ARGB_8888);
        this.campaignLevelWorkPixels = new int[71680];
        this.campaignLevelFrame = Bitmap.createBitmap(320, 224, Bitmap.Config.ARGB_8888);
        this.campaignHousePanels = new Bitmap[3];
        this.houseCursorPatterns = new byte[PLANE_H];
        this.houseAnimatedCursorPatterns = new byte[PLANE_H];
        this.optionsWorkPixels = new int[71680];
        this.passwordWorkPixels = new int[71680];
        this.optionsFrame = Bitmap.createBitmap(320, 224, Bitmap.Config.ARGB_8888);
        this.passwordFrame = Bitmap.createBitmap(320, 224, Bitmap.Config.ARGB_8888);
        this.cachedMusicVolume = -1;
        this.cachedSoundVolume = -1;
        this.cachedRadar = -1;
        this.cachedMusicTest = -1;
        this.cachedSoundTest = -1;
        this.cachedPasswordCursor = -1;
        int i2 = 1;
        int i3 = 0;
        this.shipFrames = (Bitmap[][]) Array.newInstance((Class<?>) Bitmap.class, 3, 15);
        this.shipPoses = new ShipPose[3][];
        this.frame = Bitmap.createBitmap(320, 224, Bitmap.Config.ARGB_8888);
        this.frameCanvas = new Canvas(this.frame);
        this.bitmapPaint = new Paint();
        this.srcRect = new Rect();
        this.dstRect = new Rect(0, 0, 320, 224);
        if (rom == null || rom.length < 819200) {
            throw new IllegalArgumentException("ROM is missing or too small for original title renderer");
        }
        this.rom = rom;
        this.russianLocalization = false;
        this.germanLocalization = false;
        this.bitmapPaint.setFilterBitmap(false);
        this.bitmapPaint.setDither(false);
        this.bitmapPaint.setAntiAlias(false);
        verifyRomAnchors();
        this.sharedPatterns = loadPatternTable(PATTERN_TABLE, 0, null);
        byte[] map12 = loadMapDescriptor(RESOURCE12_MAP_DESCRIPTOR);
        byte[] map13 = loadMapDescriptor(RESOURCE13_MAP_DESCRIPTOR);
        int[] basePalette = decodePalette64(BASE_PALETTE);
        this.titlePalette = replacementPalette(basePalette, RESOURCE13_REPLACEMENT_PALETTE);
        int[] shipPalette = replacementPalette(basePalette, SHIP_REPLACEMENT_PALETTE);
        this.starPlane = renderPlane(this.sharedPatterns, map12, basePalette, false);
        this.logoTitlePlane = renderPlane(this.sharedPatterns, map13, this.titlePalette, true);
        int level = 0;
        while (true) {
            if (level > 7) {
                break;
            }
            int[] fade = genesisPaletteFade(basePalette, this.titlePalette, level);
            this.logoFadeFrames[level] = renderPlaneViewport(this.sharedPatterns, map13, fade, 0, true);
            level++;
        }
        int fontSize = be16(FONT_SIZE_WORD);
        if (fontSize == 4096) {
            this.fontPatterns = decompressExact(FONT_STREAM, 65536);
            if (this.fontPatterns.length != 4096) {
                throw new IllegalArgumentException("Original title font decode size mismatch");
            }
            String[] originalTitleText = readTitleStringsFromRom();
            int level2 = 0;
            for (i = 7; level2 <= i; i = 7) {
                int[] presentPalette = new int[64];
                presentPalette[SHIP_PREP_TICKS] = genesisColor(level2 * 546);
                Bitmap[] bitmapArr = this.presentFadeFrames;
                int i4 = i3;
                String[] strArr = new String[i2];
                strArr[i4] = originalTitleText[i4];
                bitmapArr[level2] = renderTextOverlay(strArr, new int[]{128}, new int[]{112}, presentPalette);
                level2++;
                i3 = i4;
                i2 = i2;
            }
            int i5 = i2;
            int i6 = i3;
            int[] menuPalette = (int[]) this.titlePalette.clone();
            menuPalette[SHIP_PREP_TICKS] = genesisColor(3822);
            String[] strArr2 = new String[3];
            strArr2[i6] = originalTitleText[i5];
            strArr2[i5] = originalTitleText[2];
            strArr2[2] = originalTitleText[3];
            this.rootMenuLabels = strArr2;
            this.startMenuLabels = startSubmenuLabels();
            this.rootMenuOverlay = renderTextOverlay(this.rootMenuLabels, new int[]{128, 128, 128}, new int[]{152, 168, 184}, menuPalette);
            this.startMenuOverlay = renderTextOverlay(this.startMenuLabels, new int[]{128, 128, 128}, new int[]{152, 168, 184}, menuPalette);
            checkRange(OPTIONS_FONT, DuneHackR82ScenarioRecordDecoder.MAX_RECORDS);
            this.optionsFontPatterns = new byte[DuneHackR82ScenarioRecordDecoder.MAX_RECORDS];
            System.arraycopy(rom, OPTIONS_FONT, this.optionsFontPatterns, i6, this.optionsFontPatterns.length);
            this.optionsPalette = decodePalette64(OPTIONS_PALETTE);
            this.houseBasePixels = renderResource64x28Pixels(i6);
            int housePalettePointer = be32(818298) & 16777215;
            this.housePalette = decodePalette64(housePalettePointer);
            checkRange(HOUSE_CURSOR_PATTERN_DATA, this.houseCursorPatterns.length);
            System.arraycopy(rom, HOUSE_CURSOR_PATTERN_DATA, this.houseCursorPatterns, 0, this.houseCursorPatterns.length);
            int cursorCount = be16(HOUSE_CURSOR_LAYOUT) + 1;
            checkRange(HOUSE_CURSOR_LAYOUT, (cursorCount * 12) + 2);
            this.houseCursorLayout = new byte[(cursorCount * 12) + 2];
            System.arraycopy(rom, HOUSE_CURSOR_LAYOUT, this.houseCursorLayout, 0, this.houseCursorLayout.length);
            this.optionsBasePixels = renderResource64x28Pixels(i5);
            this.passwordBasePixels = renderResource64x28Pixels(10);
            this.musicTestEntries = readOptionTestTable(MUSIC_TEST_TABLE, 32);
            this.soundTestEntries = readOptionTestTable(SOUND_TEST_TABLE, 64);
            if (this.musicTestEntries.length == 18 && this.soundTestEntries.length == 40) {
                this.segaFrames = decodeSegaFrames();
                this.shipVram = new byte[65536];
                System.arraycopy(this.sharedPatterns, 0, this.shipVram, 0, Math.min(this.sharedPatterns.length, this.shipVram.length));
                loadPatternTable(SHIP_PATTERN_TABLE, SHIP_VRAM_OFFSET, this.shipVram);
                for (int type = 0; type < 3; type++) {
                    int table = be32((type * 4) + SHIP_LAYOUT_TABLE);
                    for (int f = 0; f < 15; f++) {
                        this.shipFrames[type][f] = renderShipLayout(be32(table + (f * 4)), shipPalette);
                    }
                    this.shipPoses[type] = parseShipScript(be32((type * 4) + SHIP_SCRIPT_TABLE));
                    if (this.shipPoses[type].length != 30) {
                        throw new IllegalArgumentException("Unexpected original ship pose count " + this.shipPoses[type].length);
                    }
                }
                return;
            }
            throw new IllegalArgumentException("Original OPTIONS test table count mismatch");
        }
        throw new IllegalArgumentException("Unexpected original title font size");
    }

    GenesisOriginalTitleRenderer(RomRuntimeFrontendAssets assets, GenesisFrontendAudioTestData audioTestData) throws IOException {
        this(assets, audioTestData, null);
    }

    GenesisOriginalTitleRenderer(RomRuntimeFrontendAssets assets, GenesisFrontendAudioTestData audioTestData, RomRuntimeOriginalContentAssets content) throws IOException {
        int i;
        String[] originalTitleText;
        char c;
        this.logoFadeFrames = new Bitmap[8];
        this.presentFadeFrames = new Bitmap[8];
        this.houseWorkPixels = new int[71680];
        this.houseFrame = Bitmap.createBitmap(320, 224, Bitmap.Config.ARGB_8888);
        this.campaignLevelWorkPixels = new int[71680];
        this.campaignLevelFrame = Bitmap.createBitmap(320, 224, Bitmap.Config.ARGB_8888);
        this.campaignHousePanels = new Bitmap[3];
        this.houseCursorPatterns = new byte[PLANE_H];
        this.houseAnimatedCursorPatterns = new byte[PLANE_H];
        this.optionsWorkPixels = new int[71680];
        this.passwordWorkPixels = new int[71680];
        this.optionsFrame = Bitmap.createBitmap(320, 224, Bitmap.Config.ARGB_8888);
        this.passwordFrame = Bitmap.createBitmap(320, 224, Bitmap.Config.ARGB_8888);
        this.cachedMusicVolume = -1;
        this.cachedSoundVolume = -1;
        this.cachedRadar = -1;
        this.cachedMusicTest = -1;
        this.cachedSoundTest = -1;
        this.cachedPasswordCursor = -1;
        char c2 = 2;
        int i2 = 1;
        int i3 = 0;
        this.shipFrames = (Bitmap[][]) Array.newInstance((Class<?>) Bitmap.class, 3, 15);
        this.shipPoses = new ShipPose[3][];
        this.frame = Bitmap.createBitmap(320, 224, Bitmap.Config.ARGB_8888);
        this.frameCanvas = new Canvas(this.frame);
        this.bitmapPaint = new Paint();
        this.srcRect = new Rect();
        this.dstRect = new Rect(0, 0, 320, 224);
        if (assets == null) {
            throw new IOException("Frontend READY asset source is unavailable");
        }
        if (audioTestData != null) {
            this.rom = null;
            this.russianLocalization = content != null && content.russianLocalizationActive();
            this.germanLocalization = content != null && content.germanBaseActive();
            this.bitmapPaint.setFilterBitmap(false);
            this.bitmapPaint.setDither(false);
            this.bitmapPaint.setAntiAlias(false);
            this.sharedPatterns = assets.read("frontend/title_shared_patterns.bin");
            byte[] map12 = assets.read("frontend/intro_arrakis_map.bin");
            byte[] map13 = assets.read("frontend/logo_title_map.bin");
            int[] basePalette = decodePalette64Bytes(assets.read("frontend/title_palette.bin"));
            this.titlePalette = replacementPaletteBytes(basePalette, assets.read("frontend/direct/title_logo_replacement_palette.bin"));
            int[] shipPalette = replacementPaletteBytes(basePalette, assets.read("frontend/direct/ship_palette.bin"));
            this.starPlane = renderPlane(this.sharedPatterns, map12, basePalette, false);
            this.logoTitlePlane = renderPlane(this.sharedPatterns, map13, this.titlePalette, true);
            int level = 0;
            while (true) {
                i = 7;
                if (level > 7) {
                    break;
                }
                int[] fade = genesisPaletteFade(basePalette, this.titlePalette, level);
                int level2 = level;
                this.logoFadeFrames[level2] = renderPlaneViewport(this.sharedPatterns, map13, fade, 0, true);
                level = level2 + 1;
            }
            this.fontPatterns = assets.read("frontend/direct/title_font.bin");
            if (this.fontPatterns.length != 4096) {
                throw new IOException("Installed title font size mismatch");
            }
            if (content != null) {
                originalTitleText = content.titleStrings();
            } else {
                originalTitleText = decodeTitleStrings(assets.read(RomRussianLocalizationAssetManifest.TITLE_STRINGS));
            }
            int level3 = 0;
            while (true) {
                c = c2;
                if (level3 > i) {
                    break;
                }
                int[] presentPalette = new int[64];
                presentPalette[SHIP_PREP_TICKS] = genesisColor(level3 * 546);
                Bitmap[] bitmapArr = this.presentFadeFrames;
                int i4 = i3;
                String[] strArr = new String[i2];
                strArr[i4] = originalTitleText[i4];
                bitmapArr[level3] = renderTextOverlay(strArr, new int[]{128}, new int[]{112}, presentPalette);
                level3++;
                c2 = c;
                i3 = i4;
                i2 = i2;
                i = 7;
            }
            int i5 = i2;
            int i6 = i3;
            int[] menuPalette = (int[]) this.titlePalette.clone();
            menuPalette[SHIP_PREP_TICKS] = genesisColor(3822);
            String[] strArr2 = new String[3];
            strArr2[i6] = originalTitleText[i5];
            strArr2[i5] = originalTitleText[c];
            strArr2[c] = originalTitleText[3];
            this.rootMenuLabels = strArr2;
            this.startMenuLabels = startSubmenuLabels();
            this.rootMenuOverlay = renderTextOverlay(this.rootMenuLabels, new int[]{128, 128, 128}, new int[]{152, 168, 184}, menuPalette);
            this.startMenuOverlay = renderTextOverlay(this.startMenuLabels, new int[]{128, 128, 128}, new int[]{152, 168, 184}, menuPalette);
            this.optionsFontPatterns = assets.read("frontend/direct/options_font.bin");
            if (this.optionsFontPatterns.length != 4096) {
                throw new IOException("Installed OPTIONS font size mismatch");
            }
            this.optionsPalette = decodePalette64Bytes(assets.read("frontend/direct/options_palette.bin"));
            byte[] housePatterns = assets.read("frontend/house_selector_patterns.bin");
            byte[] houseMap = assets.read("frontend/house_selector_map.bin");
            this.housePalette = decodePalette64Bytes(assets.read("frontend/house_selector_palette.bin"));
            this.houseBasePixels = renderResource64x28Pixels(housePatterns, houseMap, this.housePalette);
            byte[] cursorPatterns = assets.read("frontend/direct/house_cursor_patterns.bin");
            if (cursorPatterns.length != this.houseCursorPatterns.length) {
                throw new IOException("Installed House cursor pattern size mismatch");
            }
            System.arraycopy(cursorPatterns, i6, this.houseCursorPatterns, i6, cursorPatterns.length);
            this.houseCursorLayout = assets.read("frontend/direct/house_cursor_layout.bin");
            byte[] optionsPatterns = assets.read("frontend/options_patterns.bin");
            byte[] optionsMap = assets.read("frontend/options_map.bin");
            this.optionsBasePixels = renderResource64x28Pixels(optionsPatterns, optionsMap, this.optionsPalette);
            byte[] passwordPatterns = assets.read("frontend/password_patterns.bin");
            byte[] passwordMap = assets.read("frontend/password_map.bin");
            int[] passwordPalette = decodePalette64Bytes(assets.read("frontend/password_palette.bin"));
            this.passwordBasePixels = renderResource64x28Pixels(passwordPatterns, passwordMap, passwordPalette);
            this.musicTestEntries = convertAudioEntries(audioTestData.music);
            this.soundTestEntries = convertAudioEntries(audioTestData.sound);
            if (this.musicTestEntries.length == 18 && this.soundTestEntries.length == 40) {
                this.segaFrames = decodeSegaFrames(assets.read("frontend/direct/sega_patterns.bin"), assets.read("frontend/direct/sega_map.bin"), assets.read("frontend/direct/sega_palette.bin"), assets.read("frontend/direct/sega_gradient.bin"));
                this.shipVram = new byte[65536];
                System.arraycopy(this.sharedPatterns, 0, this.shipVram, 0, Math.min(this.sharedPatterns.length, this.shipVram.length));
                byte[] shipPatterns = assets.read("frontend/direct/ship_patterns.bin");
                if (shipPatterns.length + SHIP_VRAM_OFFSET > this.shipVram.length) {
                    throw new IOException("Installed ship pattern bank is too large");
                }
                System.arraycopy(shipPatterns, 0, this.shipVram, SHIP_VRAM_OFFSET, shipPatterns.length);
                int type = 0;
                while (type < 3) {
                    byte[] layouts = assets.read("frontend/direct/ship" + type + "_layouts.bin");
                    int p = 0;
                    byte[] shipPatterns2 = shipPatterns;
                    int frameIndex = 0;
                    while (frameIndex < 15) {
                        int i7 = p + 2;
                        int frameIndex2 = frameIndex;
                        int frameIndex3 = layouts.length;
                        if (i7 > frameIndex3) {
                            throw new IOException("Installed ship layout blob is truncated");
                        }
                        int count = be16(layouts, p) + 1;
                        int bytes = (count * 12) + 2;
                        if (count > 0 && p + bytes <= layouts.length) {
                            this.shipFrames[type][frameIndex2] = renderShipLayout(layouts, p, shipPalette);
                            p += bytes;
                            frameIndex = frameIndex2 + 1;
                        }
                        throw new IOException("Installed ship layout record is invalid");
                    }
                    int frameIndex4 = layouts.length;
                    if (p == frameIndex4) {
                        this.shipPoses[type] = parseShipScript(assets.read("frontend/direct/ship" + type + "_script.bin"));
                        if (this.shipPoses[type].length == 30) {
                            type++;
                            shipPatterns = shipPatterns2;
                        } else {
                            throw new IOException("Installed ship pose count mismatch");
                        }
                    } else {
                        throw new IOException("Installed ship layout blob has trailing data");
                    }
                }
                return;
            }
            throw new IOException("Installed frontend OPTIONS audio-test metadata count mismatch");
        }
        throw new IOException("OPTIONS audio-test metadata is unavailable");
    }

    Bitmap renderSegaTick(int tick) {
        if (this.introOnlyFramesReleased) {
            return renderMenuFrame(true, false);
        }
        int t = Math.max(0, Math.min(197, tick));
        int inPass = t % 66;
        if (inPass < 3) {
            return t < 3 ? this.segaFrames[0] : this.segaFrames[21];
        }
        int step = Math.min(20, (inPass - 3) / 3);
        return this.segaFrames[step + 1];
    }

    Bitmap renderIntroTick(int tick) {
        if (this.introOnlyFramesReleased) {
            return renderMenuFrame(true, false);
        }
        int t = Math.max(0, tick);
        this.frameCanvas.drawColor(-16777216);
        if (t >= TITLE_START_TICK) {
            return renderMenuFrame(t >= MENU_START_TICK);
        }
        int scrollX = scrollSourceXForTick(Math.min(t, PLANET_REACHED_TICK));
        drawPlaneViewport(this.starPlane, scrollX);
        if (t >= 200 && t < LOGO_HOLD_START_TICK) {
            int level = fadeInLevel(t - 200);
            this.frameCanvas.drawBitmap(this.logoFadeFrames[level], 0.0f, 0.0f, this.bitmapPaint);
        } else if (t >= LOGO_HOLD_START_TICK && t < LOGO_FADE_OUT_START_TICK) {
            this.frameCanvas.drawBitmap(this.logoFadeFrames[7], 0.0f, 0.0f, this.bitmapPaint);
        } else if (t >= LOGO_FADE_OUT_START_TICK && t < LOGO_CLEAR_TICK) {
            int level2 = fadeOutLevel(t - 521);
            this.frameCanvas.drawBitmap(this.logoFadeFrames[level2], 0.0f, 0.0f, this.bitmapPaint);
        }
        if (t < PRESENT_START_TICK || t >= 564) {
            if (t >= 564 && t < 764) {
                this.frameCanvas.drawBitmap(this.presentFadeFrames[7], 0.0f, 0.0f, this.bitmapPaint);
            } else if (t >= 764 && t < SCROLL_RELEASE_TICK) {
                int level3 = fadeOutLevel(t - 764);
                this.frameCanvas.drawBitmap(this.presentFadeFrames[level3], 0.0f, 0.0f, this.bitmapPaint);
            }
        } else {
            int level4 = fadeInLevel(t - 543);
            this.frameCanvas.drawBitmap(this.presentFadeFrames[level4], 0.0f, 0.0f, this.bitmapPaint);
        }
        if (t >= SHIP1_START_TICK && t < SHIPS_END_TICK) {
            if (t < SHIP2_START_TICK) {
                drawShip(1, t - 1114);
            } else if (t < SHIP3_START_TICK) {
                drawShip(0, t - 1204);
            } else {
                drawShip(2, t - 1294);
            }
        }
        return this.frame;
    }

    Bitmap renderSkippedMenuFrame() {
        return renderMenuFrame(true, false);
    }

    Bitmap renderSkippedMenuFrame(boolean startSubmenu) {
        return renderMenuFrame(true, startSubmenu);
    }

    Bitmap renderIntroTick(int tick, boolean startSubmenu) {
        int t = Math.max(0, tick);
        return t < MENU_START_TICK ? renderIntroTick(t) : renderMenuFrame(true, startSubmenu);
    }

    long releaseIntroOnlyFrames() {
        if (this.introOnlyFramesReleased) {
            return 0L;
        }
        this.introOnlyFramesReleased = true;
        long bytes = 0;
        for (int i = 0; i < this.segaFrames.length; i++) {
            Bitmap b = this.segaFrames[i];
            if (b != null) {
                bytes += b.getByteCount();
                this.segaFrames[i] = null;
            }
        }
        for (int i2 = 0; i2 < this.logoFadeFrames.length; i2++) {
            Bitmap b2 = this.logoFadeFrames[i2];
            if (b2 != null) {
                bytes += b2.getByteCount();
                this.logoFadeFrames[i2] = null;
            }
        }
        for (int i3 = 0; i3 < this.presentFadeFrames.length; i3++) {
            Bitmap b3 = this.presentFadeFrames[i3];
            if (b3 != null) {
                bytes += b3.getByteCount();
                this.presentFadeFrames[i3] = null;
            }
        }
        for (int type = 0; type < this.shipFrames.length; type++) {
            for (int frameIndex = 0; frameIndex < this.shipFrames[type].length; frameIndex++) {
                Bitmap b4 = this.shipFrames[type][frameIndex];
                if (b4 != null) {
                    bytes += b4.getByteCount();
                    this.shipFrames[type][frameIndex] = null;
                }
            }
            this.shipPoses[type] = null;
        }
        return bytes;
    }

    private Bitmap renderMenuFrame(boolean showMenu) {
        return renderMenuFrame(showMenu, false);
    }

    private Bitmap renderMenuFrame(boolean showMenu, boolean startSubmenu) {
        this.frameCanvas.drawColor(-16777216);
        drawPlaneViewport(this.starPlane, 704);
        drawPlaneViewport(this.logoTitlePlane, 512);
        if (showMenu) {
            this.frameCanvas.drawBitmap(startSubmenu ? this.startMenuOverlay : this.rootMenuOverlay, 0.0f, 0.0f, this.bitmapPaint);
        }
        return this.frame;
    }

    boolean isMenuTick(int introTick) {
        return introTick >= MENU_START_TICK;
    }

    boolean canSkipToMenu(int introTick) {
        int t = Math.max(0, introTick);
        if (t >= 564 && t < 764) {
            return true;
        }
        if (t >= SCROLL_RELEASE_TICK && t < PLANET_REACHED_TICK) {
            return true;
        }
        if (t < SHIP1_START_TICK || t >= SHIPS_END_TICK) {
            return t >= SHIPS_END_TICK && t < TITLE_START_TICK;
        }
        return true;
    }

    private static int fadeInLevel(int elapsed) {
        return Math.max(1, Math.min(7, (elapsed / 3) + 1));
    }

    private static int fadeOutLevel(int elapsed) {
        return Math.max(0, Math.min(6, 6 - (elapsed / 3)));
    }

    static int scrollSourceXForTick(int tick) {
        long velocity = 32768;
        long position = 4294967295L;
        boolean wrap = true;
        boolean reverse = false;
        int tMax = Math.max(0, tick);
        for (int t = 0; t < tMax; t++) {
            if (t == SCROLL_RELEASE_TICK) {
                wrap = false;
            }
            int whole = signed16((int) (position >>> 16));
            if (!reverse && whole < -320) {
                if (wrap) {
                    position = 4294967295L;
                } else {
                    reverse = true;
                    velocity = 362496;
                }
            }
            if (!reverse) {
                velocity = u32(2048 + velocity);
                position = s32(velocity) >= 196608 ? u32(position - 196608) : u32(position - velocity);
            } else {
                velocity = u32(velocity - 2048);
                if (s32(velocity) >= 196608) {
                    position = u32(position - 196608);
                } else {
                    position = s32(velocity) > 32768 ? u32(position - velocity) : u32(position - 32768);
                }
                if (s32(position) <= s32(4248829952L)) {
                    position = 4248829952L;
                    velocity = 32768;
                }
            }
        }
        int whole2 = signed16((int) (position >>> 16));
        int x = (-whole2) % 1024;
        if (x < 0) {
            x += 1024;
        }
        if (x > 704) {
            return 704;
        }
        return x;
    }

    private void drawPlaneViewport(Bitmap plane, int sourceX) {
        int x = Math.max(0, Math.min(704, sourceX));
        this.srcRect.set(x, 0, x + 320, 224);
        this.frameCanvas.drawBitmap(plane, this.srcRect, this.dstRect, this.bitmapPaint);
    }

    private void drawShip(int type, int tick) {
        if (this.introOnlyFramesReleased || type < 0 || type >= this.shipPoses.length) {
            return;
        }
        ShipPose[] poses = this.shipPoses[type];
        int poseIndex = Math.max(0, Math.min(poses.length - 1, tick / 3));
        ShipPose pose = poses[poseIndex];
        Bitmap b = this.shipFrames[type][Math.max(0, Math.min(14, pose.frame))];
        this.frameCanvas.drawBitmap(b, pose.f12x, pose.f13y, this.bitmapPaint);
    }

    Bitmap renderHouseSelectionFrame(int visualIndex, int tick) {
        int vi = Math.max(0, Math.min(2, visualIndex));
        System.arraycopy(this.houseBasePixels, 0, this.houseWorkPixels, 0, this.houseBasePixels.length);
        drawHouseCursor(this.houseWorkPixels, HOUSE_CURSOR_X[vi], HOUSE_CURSOR_Y, tick);
        this.houseFrame.setPixels(this.houseWorkPixels, 0, 320, 0, 0, 320, 224);
        return this.houseFrame;
    }

    int[] regressionHouseSelectionPixels(int visualIndex, int tick) {
        renderHouseSelectionFrame(visualIndex, tick);
        return (int[]) this.houseWorkPixels.clone();
    }

    Bitmap renderCampaignLevelSelectionFrame(int visualIndex, int unlockedLevel) {
        char c = 2;
        boolean z = false;
        int vi = Math.max(0, Math.min(2, visualIndex));
        int unlocked = Math.max(1, Math.min(9, unlockedLevel));
        Arrays.fill(this.campaignLevelWorkPixels, -16777216);
        int sourceX = HOUSE_CURSOR_X[vi];
        int y = 0;
        while (y < 88) {
            System.arraycopy(this.houseBasePixels, ((y + 64) * 320) + sourceX, this.campaignLevelWorkPixels, ((y + 68) * 320) + 24, 80);
            y++;
            c = c;
        }
        int gold = this.housePalette[4];
        int i = 0;
        while (i < 9) {
            int level = i + 1;
            int rowTop = (i * LEVEL_SELECT_ROW_HEIGHT) + 8;
            int labelY = rowTop + 8;
            String label = (this.russianLocalization ? "uPOBEHb " : "LEVEL ") + level;
            int labelX = 218 - ((label.length() * 8) / 2);
            boolean enabled = level <= unlocked ? true : z;
            int i2 = i;
            drawFrontendFontText(this.campaignLevelWorkPixels, label, labelX, labelY, !enabled ? true : z);
            if (level == unlocked) {
                drawPixelFrame(this.campaignLevelWorkPixels, 134, rowTop + 2, 302, (rowTop + LEVEL_SELECT_ROW_HEIGHT) - 3, gold);
            }
            i = i2 + 1;
            z = false;
        }
        this.campaignLevelFrame.setPixels(this.campaignLevelWorkPixels, 0, 320, 0, 0, 320, 224);
        return this.campaignLevelFrame;
    }

    Bitmap renderCampaignHousePanel(int visualIndex) {
        int vi = Math.max(0, Math.min(2, visualIndex));
        Bitmap cached = this.campaignHousePanels[vi];
        if (cached != null) {
            return cached;
        }
        int sourceX = HOUSE_CURSOR_X[vi];
        int[] pixels = new int[7040];
        for (int y = 0; y < 88; y++) {
            System.arraycopy(this.houseBasePixels, ((y + 64) * 320) + sourceX, pixels, y * 80, 80);
        }
        Bitmap cached2 = Bitmap.createBitmap(pixels, 80, 88, Bitmap.Config.ARGB_8888);
        this.campaignHousePanels[vi] = cached2;
        return cached2;
    }

    int[] regressionCampaignLevelSelectionPixels(int visualIndex, int unlockedLevel) {
        renderCampaignLevelSelectionFrame(visualIndex, unlockedLevel);
        return (int[]) this.campaignLevelWorkPixels.clone();
    }

    private String[] startSubmenuLabels() {
        return this.russianLocalization ? new String[]{"HOBAr lfPA", "sPOgOqilTb", "HAjAg"} : this.germanLocalization ? new String[]{"NEUES SPIEL", "FORTSETZEN", "ZURÜCK"} : new String[]{"NEW GAME", "CONTINUE", "BACK"};
    }

    private void drawFrontendFontText(int[] pixels, String value, int x, int y, boolean dim) {
        if (value == null) {
            return;
        }
        int cx = x;
        int i = 0;
        while (i < value.length()) {
            int glyph = GermanFontGlyphMapper.mapFrontendGlyph(value.charAt(i));
            int po = glyph * 32;
            if (po + 32 <= this.fontPatterns.length) {
                for (int py = 0; py < 8; py++) {
                    int sy = y + py;
                    if (sy >= 0 && sy < 224) {
                        for (int pair = 0; pair < 4; pair++) {
                            int packed = this.fontPatterns[(py * 4) + po + pair] & 255;
                            int hi = packed >>> 4;
                            int lo = packed & 15;
                            int sx = (pair * 2) + cx;
                            if (hi != 0 && sx >= 0 && sx < 320) {
                                pixels[(sy * 320) + sx] = dimFrontendColor(this.titlePalette[hi + 48], dim);
                            }
                            if (lo != 0 && sx + 1 >= 0 && sx + 1 < 320) {
                                pixels[(sy * 320) + sx + 1] = dimFrontendColor(this.titlePalette[lo + 48], dim);
                            }
                        }
                    }
                }
            }
            i++;
            cx += 8;
        }
    }

    private static int dimFrontendColor(int color, boolean dim) {
        return !dim ? color : Color.rgb((Color.red(color) * 3) / 8, (Color.green(color) * 3) / 8, (Color.blue(color) * 3) / 8);
    }

    private static void drawPixelFrame(int[] pixels, int left, int top, int right, int bottom, int color) {
        int l = Math.max(0, Math.min(319, left));
        int r = Math.max(0, Math.min(319, right));
        int t = Math.max(0, Math.min(223, top));
        int b = Math.max(0, Math.min(223, bottom));
        if (r < l || b < t) {
            return;
        }
        for (int x = l; x <= r; x++) {
            pixels[(t * 320) + x] = color;
            pixels[(b * 320) + x] = color;
        }
        for (int y = t; y <= b; y++) {
            pixels[(y * 320) + l] = color;
            pixels[(y * 320) + r] = color;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void drawHouseCursor(int[] pixels, int x, int y, int tick) {
        int i = 1;
        int phase = ((Math.max(0, tick) & 31) >>> 3) + 1;
        int fill = phase * 17;
        for (int i2 = 0; i2 < this.houseAnimatedCursorPatterns.length; i2++) {
            this.houseAnimatedCursorPatterns[i2] = this.houseCursorPatterns[i2] == 0 ? (byte) 0 : (byte) fill;
        }
        int count = be16(this.houseCursorLayout, 0) + 1;
        int p = 2;
        int i3 = 0;
        while (i3 < count) {
            int oy = signed16(be16(this.houseCursorLayout, p + 4));
            int size = be16(this.houseCursorLayout, p + 6);
            int attr = be16(this.houseCursorLayout, p + 8);
            int ox = signed16(be16(this.houseCursorLayout, p + 10));
            int wt = ((size >>> 10) & 3) + 1;
            int ht = ((size >>> 8) & 3) + i;
            int first = (attr & 2047) - 1980;
            boolean z = (attr & GenesisObjectArt.VRAM_PATTERN_COUNT) != 0 ? i : 0;
            boolean z2 = (attr & DuneHackR82ScenarioRecordDecoder.MAX_RECORDS) != 0 ? i : 0;
            int paletteLine = (attr >>> 13) & 3;
            int tx = 0;
            while (tx < wt) {
                int ty = 0;
                while (ty < ht) {
                    int tx2 = tx;
                    int ty2 = ty;
                    boolean vFlip = z2;
                    int pattern = shipPatternIndex(first, wt, ht, tx2, ty2, z, vFlip);
                    drawRawTile(pixels, 320, 224, x + ox + (tx2 * 8), y + oy + (ty2 * 8), this.houseAnimatedCursorPatterns, pattern, paletteLine, z, z2, this.housePalette, true);
                    ty = ty2 + 1;
                    tx = tx2;
                }
                tx++;
            }
            i3++;
            p += 12;
            i = 1;
        }
    }

    Bitmap renderOptionsFrame(int i, int i2, boolean z, int i3, int i4, int i5) {
        int normalizeVolume = normalizeVolume(i);
        int normalizeVolume2 = normalizeVolume(i2);
        int wrapIndex = wrapIndex(i3, this.musicTestEntries.length);
        int wrapIndex2 = wrapIndex(i4, this.soundTestEntries.length);
        if (normalizeVolume != this.cachedMusicVolume || normalizeVolume2 != this.cachedSoundVolume || z != this.cachedRadar || wrapIndex != this.cachedMusicTest || wrapIndex2 != this.cachedSoundTest) {
            System.arraycopy(this.optionsBasePixels, 0, this.optionsWorkPixels, 0, this.optionsBasePixels.length);
            drawOptionsLocalizedValue(this.optionsWorkPixels, normalizeVolume, true, GenesisMissionSequenceArt.BANNER_STOP_Y, 40, 2);
            drawOptionsLocalizedValue(this.optionsWorkPixels, normalizeVolume2, true, GenesisMissionSequenceArt.BANNER_STOP_Y, 56, 2);
            drawOptionsLocalizedValue(this.optionsWorkPixels, z ? 100 : 0, false, GenesisMissionSequenceArt.BANNER_STOP_Y, 72, 2);
            drawOptionsFontText(this.optionsWorkPixels, this.musicTestEntries[wrapIndex].name, GenesisMissionSequenceArt.BANNER_STOP_Y, 88, 2);
            drawOptionsFontText(this.optionsWorkPixels, this.soundTestEntries[wrapIndex2].name, GenesisMissionSequenceArt.BANNER_STOP_Y, RazorSpriteSatObjectCallSiteTrace.SOURCE_BYTE_OFFSET, 2);
            this.optionsFrame.setPixels(this.optionsWorkPixels, 0, 320, 0, 0, 320, 224);
            this.cachedMusicVolume = normalizeVolume;
            this.cachedSoundVolume = normalizeVolume2;
            this.cachedRadar = z ? 1 : 0;
            this.cachedMusicTest = wrapIndex;
            this.cachedSoundTest = wrapIndex2;
            return this.optionsFrame;
        }
        return this.optionsFrame;
    }

    Bitmap renderPasswordFrame(String value, int cursor) {
        String text = value == null ? "" : value.toUpperCase(Locale.US);
        if (text.length() > 10) {
            text = text.substring(0, 10);
        }
        String text2 = text;
        int c = Math.max(0, Math.min(10, cursor));
        if (!text2.equals(this.cachedPasswordText) || c != this.cachedPasswordCursor) {
            System.arraycopy(this.passwordBasePixels, 0, this.passwordWorkPixels, 0, this.passwordBasePixels.length);
            for (int i = 0; i < text2.length() && i < 10; i++) {
                if (i != c) {
                    drawOptionsFontText(this.passwordWorkPixels, String.valueOf(text2.charAt(i)), (i * 8) + GenesisMissionSequenceArt.PANEL_HEIGHT, 110, 3);
                }
            }
            if (c < 10) {
                drawOptionsFontText(this.passwordWorkPixels, "_", (c * 8) + GenesisMissionSequenceArt.PANEL_HEIGHT, 110, 3);
            }
            this.passwordFrame.setPixels(this.passwordWorkPixels, 0, 320, 0, 0, 320, 224);
            this.cachedPasswordText = text2;
            this.cachedPasswordCursor = c;
            return this.passwordFrame;
        }
        return this.passwordFrame;
    }

    int[] regressionOptionsPixels(int musicVolume, int soundVolume, boolean radarEnabled, int musicTestIndex, int soundTestIndex, int autosaveMinutes) {
        renderOptionsFrame(musicVolume, soundVolume, radarEnabled, musicTestIndex, soundTestIndex, autosaveMinutes);
        return (int[]) this.optionsWorkPixels.clone();
    }

    int[] regressionPasswordPixels(String value, int cursor) {
        renderPasswordFrame(value, cursor);
        return (int[]) this.passwordWorkPixels.clone();
    }

    int musicTestCount() {
        return this.musicTestEntries.length;
    }

    int soundTestCount() {
        return this.soundTestEntries.length;
    }

    int musicTestSequence(int index) {
        return this.musicTestEntries[wrapIndex(index, this.musicTestEntries.length)].sequence;
    }

    int soundTestSequence(int index) {
        return this.soundTestEntries[wrapIndex(index, this.soundTestEntries.length)].sequence;
    }

    String musicTestName(int index) {
        return this.musicTestEntries[wrapIndex(index, this.musicTestEntries.length)].name;
    }

    String soundTestName(int index) {
        return this.soundTestEntries[wrapIndex(index, this.soundTestEntries.length)].name;
    }

    private static int normalizeVolume(int value) {
        int v = Math.max(0, Math.min(100, value));
        return ((v + 5) / 10) * 10;
    }

    private static int wrapIndex(int value, int count) {
        if (count <= 0) {
            return 0;
        }
        int v = value % count;
        return v < 0 ? v + count : v;
    }

    private static String volumeOptionText(int volume) {
        return volume <= 0 ? "OFF" : Integer.toString(volume);
    }

    private void drawOptionsLocalizedValue(int[] pixels, int value, boolean steppedVolume, int x, int y, int paletteLine) {
        if (!this.russianLocalization) {
            String text = steppedVolume ? volumeOptionText(value) : value > 0 ? "ON" : "OFF";
            drawOptionsFontText(pixels, text, x, y, paletteLine);
        } else if (steppedVolume && value > 0 && value < 100) {
            drawOptionsFontText(pixels, Integer.toString(value), x, y, paletteLine);
        } else if (value > 0) {
            drawOptionsFontText(pixels, "BKq", x, y, paletteLine);
        } else {
            drawRussianOptionsOff(pixels, x, y, paletteLine);
        }
    }

    private void drawRussianOptionsOff(int[] pixels, int x, int y, int paletteLine) {
        drawOptionsFontText(pixels, "B", x, y, paletteLine);
        drawRussianYeryGlyph(pixels, x + 8, y, paletteLine);
        drawOptionsFontText(pixels, "Kq", x + 16, y, paletteLine);
    }

    private void drawRussianYeryGlyph(int[] pixels, int x, int y, int paletteLine) {
        int sx;
        int sx2;
        int exactGlyph = findRussianYeryGlyph();
        if (exactGlyph >= 0) {
            drawRawTile(pixels, 320, 224, x, y, this.optionsFontPatterns, exactGlyph, paletteLine, false, false, this.optionsPalette, true);
            return;
        }
        int softSign = GermanFontGlyphMapper.mapFrontendGlyph('b');
        int po = softSign * 32;
        if (po < 0 || po + 32 > this.optionsFontPatterns.length) {
            return;
        }
        int stemIndex = firstNonZeroGlyphColor(softSign);
        int stemColor = this.optionsPalette[(paletteLine << 4) + stemIndex];
        for (int py = 0; py < 8; py++) {
            int sy = y + py;
            if (sy >= 0 && sy < 224) {
                for (int px = 0; px < 5; px++) {
                    int packed = this.optionsFontPatterns[(py * 4) + po + (px >> 1)] & 255;
                    int ci = (px & 1) == 0 ? packed >>> 4 : packed & 15;
                    if (ci != 0 && (sx2 = x + px) >= 0 && sx2 < 320) {
                        pixels[(sy * 320) + sx2] = this.optionsPalette[(paletteLine << 4) + ci];
                    }
                }
                if (py >= 1 && py <= 6 && (sx = x + 6) >= 0 && sx < 320) {
                    pixels[(sy * 320) + sx] = stemColor;
                }
            }
        }
    }

    private int firstNonZeroGlyphColor(int glyph) {
        int po = glyph * 32;
        for (int i = 0; i < 32; i++) {
            int b = this.optionsFontPatterns[po + i] & 255;
            int hi = b >>> 4;
            int lo = b & 15;
            if (hi != 0) {
                return hi;
            }
            if (lo != 0) {
                return lo;
            }
        }
        return 2;
    }

    private int findRussianYeryGlyph() {
        int i;
        int exact = findRussianYeryGlyph(this.soundTestEntries);
        if (exact < 0) {
            exact = findRussianYeryGlyph(this.musicTestEntries);
        }
        if (exact >= 0) {
            return exact;
        }
        int softSign = GermanFontGlyphMapper.mapFrontendGlyph('b');
        boolean[] target = new boolean[64];
        int po = softSign * 32;
        int py = 0;
        while (true) {
            i = 8;
            if (py >= 8) {
                break;
            }
            for (int px = 0; px < 5; px++) {
                int packed = this.optionsFontPatterns[(py * 4) + po + (px >> 1)] & 255;
                int ci = (px & 1) == 0 ? packed >>> 4 : packed & 15;
                target[(py * 8) + px] = ci != 0;
            }
            if (py >= 1 && py <= 6) {
                target[(py * 8) + 6] = true;
            }
            py++;
        }
        int bestGlyph = -1;
        int bestScore = Integer.MAX_VALUE;
        int glyph = 32;
        while (glyph <= 126) {
            if (glyph != softSign) {
                int score = 0;
                int gp = glyph * 32;
                if (gp >= 0 && gp + 32 <= this.optionsFontPatterns.length) {
                    int py2 = 0;
                    while (py2 < i) {
                        int px2 = 0;
                        while (px2 < i) {
                            int packed2 = this.optionsFontPatterns[gp + (py2 * 4) + (px2 >> 1)] & 255;
                            boolean on = ((px2 & 1) == 0 ? packed2 >>> 4 : packed2 & 15) != 0;
                            if (on != target[(py2 * 8) + px2]) {
                                score++;
                            }
                            px2++;
                            i = 8;
                        }
                        py2++;
                        i = 8;
                    }
                    if (score < bestScore) {
                        int bestScore2 = score;
                        bestGlyph = glyph;
                        bestScore = bestScore2;
                    }
                }
            }
            glyph++;
            i = 8;
        }
        if (bestScore <= 12) {
            return bestGlyph;
        }
        return -1;
    }

    static int findRussianYeryGlyph(OptionTestEntry[] entries) {
        if (entries == null) {
            return -1;
        }
        for (OptionTestEntry entry : entries) {
            if (entry != null && entry.name != null) {
                String raw = entry.name;
                if (raw.length() == 10 && raw.charAt(0) == 'B' && raw.charAt(2) == 'd' && raw.charAt(3) == 'O' && raw.charAt(4) == 'P' && raw.charAt(5) == ' ' && raw.charAt(6) == 'M' && raw.charAt(7) == 'E' && raw.charAt(8) == 'H') {
                    return GermanFontGlyphMapper.mapFrontendGlyph(raw.charAt(1));
                }
            }
        }
        return -1;
    }

    int menuLabelPixelWidth(boolean startSubmenu, int row) {
        String[] labels = startSubmenu ? this.startMenuLabels : this.rootMenuLabels;
        if (row < 0 || row >= labels.length || labels[row] == null) {
            return 0;
        }
        return labels[row].length() * 8;
    }

    /* JADX WARN: Incorrect condition in loop: B:7:0x000f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void drawOptionsFontText(int[] r17, java.lang.String r18, int r19, int r20, int r21) {
        /*
            r16 = this;
            r0 = r16
            r1 = r18
            if (r1 != 0) goto L7
            return
        L7:
            r2 = r19
            r3 = 0
            r7 = r2
        Lb:
            int r2 = r1.length()
            if (r3 >= r2) goto L3e
            char r2 = r1.charAt(r3)
            int r10 = com.ahsim.demulation.GermanFontGlyphMapper.mapFrontendGlyph(r2)
            int r2 = r10 * 32
            if (r2 < 0) goto L39
            int r4 = r2 + 32
            byte[] r5 = r0.optionsFontPatterns
            int r5 = r5.length
            if (r4 <= r5) goto L25
            goto L39
        L25:
            byte[] r9 = r0.optionsFontPatterns
            int[] r14 = r0.optionsPalette
            r15 = 1
            r5 = 320(0x140, float:4.48E-43)
            r6 = 224(0xe0, float:3.14E-43)
            r12 = 0
            r13 = 0
            r4 = r17
            r8 = r20
            r11 = r21
            drawRawTile(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15)
        L39:
            int r3 = r3 + 1
            int r7 = r7 + 8
            goto Lb
        L3e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisOriginalTitleRenderer.drawOptionsFontText(int[], java.lang.String, int, int, int):void");
    }

    private OptionTestEntry[] readOptionTestTable(int table, int maxEntries) {
        OptionTestEntry[] tmp = new OptionTestEntry[maxEntries];
        int count = 0;
        int p = table;
        while (count < maxEntries) {
            int namePtr = be32(p);
            int seq = be32(p + 4);
            p += 8;
            if (namePtr == 0 && seq == 0) {
                break;
            }
            String name = readCString(namePtr).trim();
            tmp[count] = new OptionTestEntry(name, seq);
            count++;
        }
        OptionTestEntry[] out = new OptionTestEntry[count];
        System.arraycopy(tmp, 0, out, 0, count);
        return out;
    }

    private String readCString(int offset) {
        checkRange(offset, 1);
        StringBuilder b = new StringBuilder();
        for (int p = offset; p < this.rom.length && this.rom[p] != 0 && b.length() < 64; p++) {
            b.append((char) (this.rom[p] & Byte.MAX_VALUE));
        }
        return b.toString();
    }

    private int[] renderResource64x28Pixels(byte[] patterns, byte[] map, int[] palette) {
        if (map == null || map.length != 3584) {
            throw new IllegalArgumentException("Installed frontend map size mismatch");
        }
        int[] pixels = new int[71680];
        for (int ty = 0; ty < 28; ty++) {
            for (int tx = 0; tx < 40; tx++) {
                int mo = ((ty * 64) + tx) * 2;
                drawTile(pixels, 320, 224, tx * 8, ty * 8, patterns, be16(map, mo), palette, false);
            }
        }
        return pixels;
    }

    private int[] renderResource64x28Pixels(int resourceIndex) {
        GenesisOriginalTitleRenderer genesisOriginalTitleRenderer = this;
        int entry = (resourceIndex * 16) + RESOURCE_TABLE;
        int patternTable = genesisOriginalTitleRenderer.be32(entry);
        int mapDescriptor = genesisOriginalTitleRenderer.be32(entry + 4) & 16777215;
        int palettePointer = genesisOriginalTitleRenderer.be32(entry + 8) & 16777215;
        if (patternTable == 0 || mapDescriptor == 0 || palettePointer == 0) {
            throw new IllegalArgumentException("Original OPTIONS resource missing " + resourceIndex);
        }
        byte[] patterns = genesisOriginalTitleRenderer.loadPatternTable(patternTable, 0, null);
        byte[] map = genesisOriginalTitleRenderer.loadMapDescriptorVariable(mapDescriptor);
        if (map.length != 3584) {
            throw new IllegalArgumentException("Original OPTIONS map size " + map.length);
        }
        int[] palette = genesisOriginalTitleRenderer.decodePalette64(palettePointer);
        int[] pixels = new int[71680];
        int ty = 0;
        while (ty < 28) {
            int tx = 0;
            while (tx < 40) {
                int mo = ((ty * 64) + tx) * 2;
                genesisOriginalTitleRenderer.drawTile(pixels, 320, 224, tx * 8, ty * 8, patterns, be16(map, mo), palette, false);
                tx++;
                genesisOriginalTitleRenderer = this;
                ty = ty;
            }
            ty++;
            genesisOriginalTitleRenderer = this;
        }
        return pixels;
    }

    private byte[] loadMapDescriptorVariable(int descriptor) {
        byte[] part;
        byte[] scratch = new byte[65536];
        int dst = 0;
        int p = descriptor;
        while (true) {
            int flags = be16(p);
            if (flags != 0) {
                int pointer = be32(p + 2);
                p += 6;
                if ((32768 & flags) != 0) {
                    part = decompressExact(pointer, 65536);
                } else {
                    int bytes = (flags & 32767) * 2;
                    checkRange(pointer, bytes);
                    byte[] part2 = new byte[bytes];
                    System.arraycopy(this.rom, pointer, part2, 0, bytes);
                    part = part2;
                }
                if (part.length + dst <= scratch.length) {
                    System.arraycopy(part, 0, scratch, dst, part.length);
                    dst += part.length;
                } else {
                    throw new IllegalArgumentException("Original OPTIONS map overrun");
                }
            } else {
                byte[] exact = new byte[dst];
                System.arraycopy(scratch, 0, exact, 0, dst);
                return exact;
            }
        }
    }

    private Bitmap renderTextOverlay(String[] text, int[] xs, int[] ys, int[] palette) {
        GenesisOriginalTitleRenderer genesisOriginalTitleRenderer = this;
        String[] strArr = text;
        int[] pixels = new int[71680];
        int line = 0;
        while (true) {
            int i = 224;
            if (line < strArr.length) {
                int cx = xs[line];
                int cy = ys[line];
                String value = strArr[line];
                int i2 = 0;
                while (i2 < value.length()) {
                    char ch = value.charAt(i2);
                    int glyph = GermanFontGlyphMapper.mapFrontendGlyph(ch);
                    int po = glyph * 32;
                    if (po + 32 <= genesisOriginalTitleRenderer.fontPatterns.length) {
                        int py = 0;
                        while (py < 8) {
                            int sy = cy + py;
                            if (sy >= 0 && sy < i) {
                                int pair = 0;
                                while (pair < 4) {
                                    int packed = genesisOriginalTitleRenderer.fontPatterns[po + (py * 4) + pair] & 255;
                                    int hi = packed >>> 4;
                                    int lo = packed & 15;
                                    int sx = cx + (pair * 2);
                                    if (hi != 0 && sx >= 0 && sx < 320) {
                                        pixels[(sy * 320) + sx] = palette[hi + 48];
                                    }
                                    if (lo != 0 && sx + 1 >= 0 && sx + 1 < 320) {
                                        pixels[(sy * 320) + sx + 1] = palette[lo + 48];
                                    }
                                    pair++;
                                    genesisOriginalTitleRenderer = this;
                                }
                            }
                            py++;
                            i = 224;
                            genesisOriginalTitleRenderer = this;
                        }
                    }
                    cx += 8;
                    i2++;
                    i = 224;
                    genesisOriginalTitleRenderer = this;
                }
                line++;
                genesisOriginalTitleRenderer = this;
                strArr = text;
            } else {
                Bitmap b = Bitmap.createBitmap(320, 224, Bitmap.Config.ARGB_8888);
                b.setPixels(pixels, 0, 320, 0, 0, 320, 224);
                return b;
            }
        }
    }

    private Bitmap[] decodeSegaFrames(byte[] patterns, byte[] map, byte[] paletteBytes, byte[] gradient) {
        if (map.length != 4096) {
            throw new IllegalArgumentException("Installed SEGA tilemap size mismatch");
        }
        if (gradient.length != 62) {
            throw new IllegalArgumentException("Installed SEGA gradient size mismatch");
        }
        int[] base = decodePalette64Bytes(paletteBytes);
        Bitmap[] frames = new Bitmap[22];
        frames[0] = renderMap64x32Visible(patterns, map, base);
        for (int step = 0; step < 21; step++) {
            int[] palette = (int[]) base.clone();
            int d2 = 40 - (step * 2);
            for (int i = 0; i < 11; i++) {
                palette[i + 2] = genesisColor(be16(gradient, (i * 2) + d2));
            }
            int i2 = step + 1;
            frames[i2] = renderMap64x32Visible(patterns, map, palette);
        }
        return frames;
    }

    private Bitmap[] decodeSegaFrames() {
        byte[] patterns = loadPatternTable(SEGA_PATTERN_TABLE, 0, null);
        byte[] map = decompressExact(SEGA_MAP_STREAM, 65536);
        if (map.length != 4096) {
            throw new IllegalArgumentException("SEGA tilemap decode size mismatch");
        }
        int[] base = decodePalette64(SEGA_BASE_PALETTE);
        Bitmap[] frames = new Bitmap[22];
        frames[0] = renderMap64x32Visible(patterns, map, base);
        for (int step = 0; step < 21; step++) {
            int[] palette = (int[]) base.clone();
            int d2 = 40 - (step * 2);
            for (int i = 0; i < 11; i++) {
                palette[i + 2] = genesisColor(be16(d2 + SEGA_GRADIENT + (i * 2)));
            }
            int i2 = step + 1;
            frames[i2] = renderMap64x32Visible(patterns, map, palette);
        }
        return frames;
    }

    private Bitmap renderMap64x32Visible(byte[] patterns, byte[] map, int[] palette) {
        int[] pixels = new int[71680];
        for (int ty = 0; ty < 28; ty++) {
            for (int tx = 0; tx < 40; tx++) {
                int mo = ((ty * 64) + tx) * 2;
                drawTile(pixels, 320, 224, tx * 8, ty * 8, patterns, be16(map, mo), palette, false);
            }
        }
        Bitmap b = Bitmap.createBitmap(320, 224, Bitmap.Config.ARGB_8888);
        b.setPixels(pixels, 0, 320, 0, 0, 320, 224);
        return b;
    }

    private Bitmap renderPlane(byte[] patterns, byte[] map, int[] palette, boolean transparentZero) {
        if (map.length != 8192) {
            throw new IllegalArgumentException("Original title plane map decode size mismatch " + map.length);
        }
        int[] pixels = new int[262144];
        if (!transparentZero) {
            for (int i = 0; i < pixels.length; i++) {
                pixels[i] = palette[0];
            }
        }
        for (int ty = 0; ty < 32; ty++) {
            for (int tx = 0; tx < 128; tx++) {
                int mo = ((ty * 128) + tx) * 2;
                drawTile(pixels, 1024, PLANE_H, tx * 8, ty * 8, patterns, be16(map, mo), palette, transparentZero);
            }
        }
        Bitmap b = Bitmap.createBitmap(1024, PLANE_H, Bitmap.Config.ARGB_8888);
        b.setPixels(pixels, 0, 1024, 0, 0, 1024, PLANE_H);
        return b;
    }

    private Bitmap renderPlaneViewport(byte[] patterns, byte[] map, int[] palette, int sourceX, boolean transparentZero) {
        int[] pixels = new int[71680];
        int tileX0 = Math.max(0, Math.min(88, sourceX / 8));
        for (int ty = 0; ty < 28; ty++) {
            for (int tx = 0; tx < 40; tx++) {
                int mo = ((ty * 128) + tileX0 + tx) * 2;
                drawTile(pixels, 320, 224, tx * 8, ty * 8, patterns, be16(map, mo), palette, transparentZero);
            }
        }
        Bitmap b = Bitmap.createBitmap(320, 224, Bitmap.Config.ARGB_8888);
        b.setPixels(pixels, 0, 320, 0, 0, 320, 224);
        return b;
    }

    private static int[] genesisPaletteFade(int[] from, int[] to, int level) {
        int[] p = (int[]) from.clone();
        int i = 7;
        int n = Math.max(0, Math.min(7, level));
        int i2 = 16;
        while (i2 < 64) {
            int a = genesisWordFromArgb(from[i2]);
            int b = genesisWordFromArgb(to[i2]);
            int ar = (a >>> 1) & i;
            int ag = (a >>> 5) & i;
            int ab = (a >>> 9) & i;
            int br = (b >>> 1) & i;
            int bg = (b >>> 5) & i;
            int bb = (b >>> 9) & i;
            int r = step3(ar, br, n);
            int g = step3(ag, bg, n);
            int bl = step3(ab, bb, n);
            int[] p2 = p;
            p2[i2] = Color.rgb(Math.round((r * 255.0f) / 7.0f), Math.round((g * 255.0f) / 7.0f), Math.round((bl * 255.0f) / 7.0f));
            i2++;
            p = p2;
            i = 7;
        }
        return p;
    }

    private static int step3(int from, int to, int steps) {
        return from < to ? Math.min(to, from + steps) : from > to ? Math.max(to, from - steps) : from;
    }

    private static int genesisWordFromArgb(int argb) {
        int r = Math.round((((argb >>> 16) & 255) * 7.0f) / 255.0f);
        int g = Math.round((((argb >>> 8) & 255) * 7.0f) / 255.0f);
        int b = Math.round(((argb & 255) * 7.0f) / 255.0f);
        return (b << 9) | (g << 5) | (r << 1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Bitmap renderShipLayout(byte[] layoutBytes, int layout, int[] palette) {
        byte[] bArr = layoutBytes;
        int i = 1;
        int count = be16(layoutBytes, layout) + 1;
        int p = layout + 2;
        int maxX = 1;
        int maxY = 1;
        int i2 = 0;
        while (i2 < count) {
            int x = signed16(be16(bArr, p + 10));
            int y = signed16(be16(bArr, p + 4));
            int size = be16(bArr, p + 6);
            int wt = ((size >>> 10) & 3) + 1;
            int ht = ((size >>> 8) & 3) + 1;
            maxX = Math.max(maxX, (wt * 8) + x);
            maxY = Math.max(maxY, (ht * 8) + y);
            i2++;
            p += 12;
        }
        int width = Math.max(1, maxX);
        int paletteLine = Math.max(1, maxY);
        int[] pixels = new int[width * paletteLine];
        int p2 = layout + 2;
        int i3 = 0;
        while (i3 < count) {
            int y2 = signed16(be16(bArr, p2 + 4));
            int size2 = be16(bArr, p2 + 6);
            int height = be16(bArr, p2 + 8);
            int x2 = signed16(be16(bArr, p2 + 10));
            int wt2 = ((size2 >>> 10) & 3) + i;
            int ht2 = ((size2 >>> 8) & 3) + i;
            int first = height & 2047;
            boolean z = (height & GenesisObjectArt.VRAM_PATTERN_COUNT) != 0 ? i : 0;
            boolean z2 = (height & DuneHackR82ScenarioRecordDecoder.MAX_RECORDS) != 0 ? i : 0;
            int paletteLine2 = (height >>> 13) & 3;
            int tx = 0;
            while (tx < wt2) {
                int attr = 0;
                while (attr < ht2) {
                    int ty = attr;
                    int ty2 = height;
                    int wt3 = wt2;
                    int ht3 = ht2;
                    int first2 = first;
                    int attr2 = paletteLine;
                    int tx2 = tx;
                    int height2 = paletteLine2;
                    int pattern = shipPatternIndex(first2, wt3, ht3, tx2, ty, z, z2);
                    boolean hFlip = z;
                    boolean vFlip = z2;
                    drawRawTile(pixels, width, attr2, x2 + (tx2 * 8), y2 + (ty * 8), this.shipVram, pattern, height2, hFlip, vFlip, palette, true);
                    paletteLine2 = height2;
                    first = first2;
                    wt2 = wt3;
                    ht2 = ht3;
                    tx = tx2;
                    paletteLine = attr2;
                    height = ty2;
                    attr = ty + 1;
                }
                int ty3 = height;
                int attr3 = paletteLine;
                tx++;
                paletteLine = attr3;
                height = ty3;
            }
            int attr4 = paletteLine;
            i3++;
            p2 += 12;
            bArr = layoutBytes;
            paletteLine = attr4;
            i = 1;
        }
        Bitmap b = Bitmap.createBitmap(width, paletteLine, Bitmap.Config.ARGB_8888);
        b.setPixels(pixels, 0, width, 0, 0, width, paletteLine);
        return b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Bitmap renderShipLayout(int layout, int[] palette) {
        int i = 1;
        int count = be16(layout) + 1;
        int p = layout + 2;
        int maxX = 1;
        int maxY = 1;
        int i2 = 0;
        while (i2 < count) {
            int x = signed16(be16(p + 10));
            int y = signed16(be16(p + 4));
            int size = be16(p + 6);
            int wt = ((size >>> 10) & 3) + 1;
            int ht = ((size >>> 8) & 3) + 1;
            maxX = Math.max(maxX, (wt * 8) + x);
            maxY = Math.max(maxY, (ht * 8) + y);
            i2++;
            p += 12;
        }
        int width = Math.max(1, maxX);
        int paletteLine = Math.max(1, maxY);
        int[] pixels = new int[width * paletteLine];
        int p2 = layout + 2;
        int i3 = 0;
        while (i3 < count) {
            int y2 = signed16(be16(p2 + 4));
            int size2 = be16(p2 + 6);
            int height = be16(p2 + 8);
            int x2 = signed16(be16(p2 + 10));
            int wt2 = ((size2 >>> 10) & 3) + i;
            int ht2 = ((size2 >>> 8) & 3) + i;
            int first = height & 2047;
            boolean z = (height & GenesisObjectArt.VRAM_PATTERN_COUNT) != 0 ? i : 0;
            boolean z2 = (height & DuneHackR82ScenarioRecordDecoder.MAX_RECORDS) != 0 ? i : 0;
            int paletteLine2 = (height >>> 13) & 3;
            int tx = 0;
            while (tx < wt2) {
                int attr = 0;
                while (attr < ht2) {
                    int ty = attr;
                    int ty2 = height;
                    int wt3 = wt2;
                    int ht3 = ht2;
                    int first2 = first;
                    int attr2 = paletteLine;
                    int tx2 = tx;
                    boolean vFlip = z2;
                    int height2 = paletteLine2;
                    int pattern = shipPatternIndex(first2, wt3, ht3, tx2, ty, z, vFlip);
                    boolean hFlip = z;
                    drawRawTile(pixels, width, attr2, x2 + (tx2 * 8), y2 + (ty * 8), this.shipVram, pattern, height2, hFlip, z2, palette, true);
                    paletteLine2 = height2;
                    first = first2;
                    ht2 = ht3;
                    tx = tx2;
                    paletteLine = attr2;
                    height = ty2;
                    attr = ty + 1;
                    wt2 = wt3;
                }
                int ty3 = height;
                int wt4 = wt2;
                int attr3 = paletteLine;
                int wt5 = tx + 1;
                paletteLine = attr3;
                tx = wt5;
                wt2 = wt4;
                height = ty3;
            }
            int attr4 = paletteLine;
            i3++;
            p2 += 12;
            paletteLine = attr4;
            i = 1;
        }
        Bitmap b = Bitmap.createBitmap(width, paletteLine, Bitmap.Config.ARGB_8888);
        b.setPixels(pixels, 0, width, 0, 0, width, paletteLine);
        return b;
    }

    static int shipPatternIndex(int first, int wt, int ht, int tx, int ty, boolean hFlip, boolean vFlip) {
        int sourceTx = hFlip ? (wt - 1) - tx : tx;
        int sourceTy = vFlip ? (ht - 1) - ty : ty;
        return (sourceTx * ht) + first + sourceTy;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0092, code lost:
    
        throw new java.lang.IllegalArgumentException("Installed ship script guard/range");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.ahsim.demulation.GenesisOriginalTitleRenderer.ShipPose[] parseShipScript(byte[] r11) {
        /*
            r10 = this;
            r0 = 64
            com.ahsim.demulation.GenesisOriginalTitleRenderer$ShipPose[] r0 = new com.ahsim.demulation.GenesisOriginalTitleRenderer.ShipPose[r0]
            r1 = 0
            r2 = 0
            r3 = 0
            r4 = 0
        L8:
            r5 = 1
            int r4 = r4 + r5
            r6 = 256(0x100, float:3.59E-43)
            if (r4 > r6) goto L8b
            int r6 = r3 + 2
            int r7 = r11.length
            if (r6 > r7) goto L8b
            int r6 = be16(r11, r3)
            int r3 = r3 + 2
            if (r6 != 0) goto L2d
            int r5 = r11.length
            if (r3 != r5) goto L25
            com.ahsim.demulation.GenesisOriginalTitleRenderer$ShipPose[] r5 = new com.ahsim.demulation.GenesisOriginalTitleRenderer.ShipPose[r1]
            r6 = 0
            java.lang.System.arraycopy(r0, r6, r5, r6, r1)
            return r5
        L25:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r6 = "Installed ship script has trailing data"
            r5.<init>(r6)
            throw r5
        L2d:
            if (r6 != r5) goto L66
            int r5 = r3 + 4
            int r7 = r11.length
            if (r5 > r7) goto L5e
            int r5 = be16(r11, r3)
            int r5 = signed16(r5)
            int r7 = r3 + 2
            int r7 = be16(r11, r7)
            int r7 = signed16(r7)
            int r3 = r3 + 4
            int r8 = r0.length
            if (r1 >= r8) goto L56
            int r8 = r1 + 1
            com.ahsim.demulation.GenesisOriginalTitleRenderer$ShipPose r9 = new com.ahsim.demulation.GenesisOriginalTitleRenderer$ShipPose
            r9.<init>(r2, r5, r7)
            r0[r1] = r9
            r1 = r8
            goto L71
        L56:
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            java.lang.String r9 = "Installed ship script too long"
            r8.<init>(r9)
            throw r8
        L5e:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r7 = "Installed ship script truncated"
            r5.<init>(r7)
            throw r5
        L66:
            r5 = 2
            if (r6 != r5) goto L72
            int r5 = r2 + 1
            r7 = 14
            int r2 = java.lang.Math.min(r7, r5)
        L71:
            goto L8
        L72:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r8 = "Unknown installed ship script command "
            java.lang.StringBuilder r7 = r7.append(r8)
            java.lang.StringBuilder r7 = r7.append(r6)
            java.lang.String r7 = r7.toString()
            r5.<init>(r7)
            throw r5
        L8b:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r6 = "Installed ship script guard/range"
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisOriginalTitleRenderer.parseShipScript(byte[]):com.ahsim.demulation.GenesisOriginalTitleRenderer$ShipPose[]");
    }

    private ShipPose[] parseShipScript(int script) {
        ShipPose[] temp = new ShipPose[64];
        int count = 0;
        int frameIndex = 0;
        int p = script;
        int guard = 0;
        while (true) {
            guard++;
            if (guard > PLANE_H) {
                throw new IllegalArgumentException("Original ship script guard");
            }
            int command = be16(p);
            p += 2;
            if (command != 0) {
                if (command == 1) {
                    int x = signed16(be16(p));
                    int y = signed16(be16(p + 2));
                    p += 4;
                    if (count >= temp.length) {
                        throw new IllegalArgumentException("Original ship script too long");
                    }
                    temp[count] = new ShipPose(frameIndex, x, y);
                    count++;
                } else if (command == 2) {
                    frameIndex = Math.min(14, frameIndex + 1);
                } else {
                    throw new IllegalArgumentException("Unknown original ship script command " + command);
                }
            } else {
                ShipPose[] exact = new ShipPose[count];
                System.arraycopy(temp, 0, exact, 0, count);
                return exact;
            }
        }
    }

    private void drawTile(int[] pixels, int width, int height, int dx, int dy, byte[] patterns, int attr, int[] palette, boolean transparentZero) {
        int pattern = attr & 2047;
        int paletteLine = (attr >>> 13) & 3;
        boolean hFlip = (attr & GenesisObjectArt.VRAM_PATTERN_COUNT) != 0;
        boolean vFlip = (attr & DuneHackR82ScenarioRecordDecoder.MAX_RECORDS) != 0;
        drawRawTile(pixels, width, height, dx, dy, patterns, pattern, paletteLine, hFlip, vFlip, palette, transparentZero);
    }

    private static void drawRawTile(int[] pixels, int width, int height, int dx, int dy, byte[] patterns, int pattern, int paletteLine, boolean hFlip, boolean vFlip, int[] palette, boolean transparentZero) {
        int po = pattern * 32;
        if (po >= 0 && po + 32 <= patterns.length) {
            for (int py = 0; py < 8; py++) {
                int sy = vFlip ? 7 - py : py;
                int yy = dy + py;
                if (yy >= 0 && yy < height) {
                    int row = (sy * 4) + po;
                    for (int px = 0; px < 8; px++) {
                        int xx = dx + px;
                        if (xx >= 0 && xx < width) {
                            int sx = hFlip ? 7 - px : px;
                            int packed = patterns[(sx >>> 1) + row] & 255;
                            int ci = (sx & 1) == 0 ? packed >>> 4 : packed & 15;
                            if (!transparentZero || ci != 0) {
                                pixels[(yy * width) + xx] = palette[(paletteLine * 16) + ci];
                            }
                        }
                    }
                }
            }
        }
    }

    private byte[] loadPatternTable(int tableOffset, int destinationOffset, byte[] destination) {
        int table = tableOffset;
        int nominalBytes = 0;
        do {
            int flags = be16(table);
            if (flags != 0) {
                nominalBytes += (flags & 32767) * 32;
                table += 6;
            } else {
                byte[] out = destination != null ? destination : new byte[destinationOffset + nominalBytes];
                if (destinationOffset < 0 || destinationOffset + nominalBytes > out.length) {
                    throw new IllegalArgumentException("Original title pattern VRAM overrun");
                }
                byte[] scratch = new byte[65536];
                int table2 = tableOffset;
                int dst = destinationOffset;
                while (true) {
                    int flags2 = be16(table2);
                    if (flags2 != 0) {
                        int pointer = be32(table2 + 2);
                        table2 += 6;
                        int bytes = (flags2 & 32767) * 32;
                        if ((32768 & flags2) != 0) {
                            int produced = decompressInto(pointer, scratch);
                            if (produced <= 0) {
                                throw new IllegalArgumentException("Original title pattern decode empty");
                            }
                            System.arraycopy(scratch, 0, out, dst, bytes);
                        } else {
                            checkRange(pointer, bytes);
                            System.arraycopy(this.rom, pointer, out, dst, bytes);
                        }
                        dst += bytes;
                    } else {
                        return out;
                    }
                }
            }
        } while (nominalBytes <= 65536);
        throw new IllegalArgumentException("Original title pattern table guard");
    }

    private byte[] loadMapDescriptor(int descriptor) {
        byte[] part;
        byte[] out = new byte[8192];
        int dst = 0;
        int p = descriptor;
        while (true) {
            int flags = be16(p);
            if (flags != 0) {
                int pointer = be32(p + 2);
                p += 6;
                if ((32768 & flags) != 0) {
                    part = decompressExact(pointer, 65536);
                } else {
                    int bytes = (flags & 32767) * 2;
                    checkRange(pointer, bytes);
                    byte[] part2 = new byte[bytes];
                    System.arraycopy(this.rom, pointer, part2, 0, bytes);
                    part = part2;
                }
                if (part.length + dst > out.length) {
                    throw new IllegalArgumentException("Original title map overrun");
                }
                System.arraycopy(part, 0, out, dst, part.length);
                dst += part.length;
            } else {
                if (dst != out.length) {
                    throw new IllegalArgumentException("Original title map size " + dst);
                }
                return out;
            }
        }
    }

    private byte[] decompressExact(int source, int maxOutput) {
        byte[] scratch = new byte[maxOutput];
        int n = decompressInto(source, scratch);
        byte[] exact = new byte[n];
        System.arraycopy(scratch, 0, exact, 0, n);
        return exact;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0129, code lost:
    
        throw new java.lang.IllegalArgumentException("Original title long-copy range");
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00ab, code lost:
    
        throw new java.lang.IllegalArgumentException("Original title absolute-copy range");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int decompressInto(int r10, byte[] r11) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisOriginalTitleRenderer.decompressInto(int, byte[]):int");
    }

    byte[] regressionDecodeStream(int source) {
        return decompressExact(source, 65536);
    }

    private static int[] decodePalette64Bytes(byte[] bytes) {
        if (bytes == null || bytes.length != 128) {
            throw new IllegalArgumentException("Installed 64-colour palette size mismatch");
        }
        int[] p = new int[64];
        for (int i = 0; i < 64; i++) {
            p[i] = genesisColor(be16(bytes, i * 2));
        }
        return p;
    }

    private static int[] replacementPaletteBytes(int[] base, byte[] bytes) {
        if (bytes == null || bytes.length != 96) {
            throw new IllegalArgumentException("Installed replacement palette size mismatch");
        }
        int[] p = (int[]) base.clone();
        for (int i = 0; i < 48; i++) {
            p[i + 16] = genesisColor(be16(bytes, i * 2));
        }
        return p;
    }

    private int[] decodePalette64(int offset) {
        int[] p = new int[64];
        for (int i = 0; i < 64; i++) {
            p[i] = genesisColor(be16((i * 2) + offset));
        }
        return p;
    }

    private int[] replacementPalette(int[] base, int source) {
        int[] p = (int[]) base.clone();
        for (int i = 0; i < 48; i++) {
            p[i + 16] = genesisColor(be16((i * 2) + source));
        }
        return p;
    }

    private static int genesisColor(int word) {
        int r3 = (word >>> 1) & 7;
        int g3 = (word >>> 5) & 7;
        int b3 = (word >>> 9) & 7;
        return Color.rgb(Math.round((r3 * 255.0f) / 7.0f), Math.round((g3 * 255.0f) / 7.0f), Math.round((b3 * 255.0f) / 7.0f));
    }

    private void verifyRomAnchors() {
        if (be32(6254) != SEGA_PATTERN_TABLE) {
            throw new IllegalArgumentException("SEGA pattern anchor changed");
        }
        if (be32(95416) != 818536) {
            throw new IllegalArgumentException("Original title resource loader anchor changed");
        }
        String[] title = readTitleStringsFromRom();
        if (title.length != 4 || title[0].length() == 0 || title[1].length() == 0 || title[2].length() == 0 || title[3].length() == 0) {
            throw new IllegalArgumentException("Original title string table is invalid");
        }
        if ((be32(RESOURCE_TABLE) & 16777215) != 691098 || (be32(RESOURCE_TABLE + 4) & 16777215) != 801516 || (be32(RESOURCE_TABLE + 8) & 16777215) != 682520 || be16(HOUSE_CURSOR_LAYOUT) != 2 || be16(410454) != 3328 || be16(410466) != 1280 || be16(410478) != 3328) {
            throw new IllegalArgumentException("Original house-selection resource changed");
        }
    }

    private String[] readTitleStringsFromRom() {
        byte[] data = new byte[36];
        checkRange(TITLE_TEXT, data.length);
        System.arraycopy(this.rom, TITLE_TEXT, data, 0, data.length);
        try {
            return decodeTitleStrings(data);
        } catch (IOException e) {
            throw new IllegalArgumentException("Original title string table is invalid", e);
        }
    }

    private static String[] decodeTitleStrings(byte[] data) throws IOException {
        String[] out = new String[4];
        int p = 0;
        for (int i = 0; i < out.length; i++) {
            int end = p;
            while (end < data.length && data[end] != 0) {
                int c = data[end] & 255;
                if (c < 32 || c > 126) {
                    throw new IOException("Title text is not ASCII");
                }
                end++;
            }
            if (end >= data.length) {
                throw new IOException("Title text is unterminated");
            }
            out[i] = new String(data, p, end - p, StandardCharsets.US_ASCII);
            p = end + 1;
        }
        int i2 = data.length;
        if (p != i2) {
            throw new IOException("Title text block has trailing bytes");
        }
        return out;
    }

    private static long u32(long v) {
        return 4294967295L & v;
    }

    private static long s32(long v) {
        long v2 = v & 4294967295L;
        return (2147483648L & v2) != 0 ? v2 - 4294967296L : v2;
    }

    private static int signed16(int v) {
        return (32768 & v) != 0 ? v - 65536 : v;
    }

    private static int be16(byte[] b, int o) {
        if (o < 0 || o + 1 >= b.length) {
            throw new IllegalArgumentException("Original title buffer range");
        }
        return ((b[o] & 255) << 8) | (b[o + 1] & 255);
    }

    private int be16(int o) {
        checkRange(o, 2);
        return ((this.rom[o] & 255) << 8) | (this.rom[o + 1] & 255);
    }

    private int be32(int o) {
        checkRange(o, 4);
        return ((this.rom[o] & 255) << 24) | ((this.rom[o + 1] & 255) << 16) | ((this.rom[o + 2] & 255) << 8) | (this.rom[o + 3] & 255);
    }

    private void checkRange(int o, int n) {
        if (o < 0 || n < 0 || o > this.rom.length - n) {
            throw new IllegalArgumentException("Original title ROM range");
        }
    }

    private static void ensureOutput(byte[] out, int o, int n) {
        if (o < 0 || n < 0 || o > out.length - n) {
            throw new IllegalArgumentException("Original title decompressor overrun");
        }
    }
}
