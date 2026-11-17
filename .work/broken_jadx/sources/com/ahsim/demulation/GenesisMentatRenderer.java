package com.ahsim.demulation;

import android.graphics.Bitmap;
import android.graphics.Color;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class GenesisMentatRenderer {
    private static final int BACKDROP_H = 112;
    private static final int BACKDROP_TILES_H = 14;
    private static final int BACKDROP_TILES_W = 33;
    private static final int BACKDROP_W = 264;
    private static final int BACKDROP_X = 48;
    private static final int BACKDROP_Y = 72;
    private static final int COMMON_PALETTE = 667006;
    private static final int COMPONENT_BYTE_REMAP = 147586;
    private static final int COMPONENT_HEIGHT = 147554;
    private static final int COMPONENT_TILE_COUNT = 615172;
    private static final int COMPONENT_WIDTH = 147522;
    public static final int DEPARTURE_TICKS = 24;
    private static final int EYE_BANK_PTRS = 153920;
    private static final int EYE_FRAME_BYTES = 576;
    private static final int EYE_POSITION_TABLE = 153944;
    public static final int FACE_FRAME_COUNT = 5;
    private static final int FINAL_MISSION_COMMON_PALETTE = 667134;
    private static final int FONT_SIZE_WORD = 329416;
    private static final int FONT_STREAM = 329418;
    private static final int[] FRONTEND_TO_ROM_HOUSE = {1, 0, 2};
    private static final int HOUSE_COMPONENT_PTRS = 614252;
    private static final int HOUSE_DESCRIPTOR_PTRS = 615132;
    private static final int HOUSE_JOIN_POINTER_TABLE = 556412;
    private static final int HOUSE_PALETTES = 666686;
    private static final int HOUSE_PATTERN_BYTES = 624358;
    private static final int MOUTH_BANK_PTRS = 153932;
    private static final int MOUTH_FRAME_BYTES = 1120;
    private static final int MOUTH_POSITION_TABLE = 153956;
    private static final int PORTRAIT_BANK_PTRS = 153908;
    public static final int SCREEN_HEIGHT = 224;
    public static final int SCREEN_WIDTH = 320;
    private static final int SELECTOR_BRIEFING_STREAM = 665624;
    private static final int SELECTOR_COMMON_BYTES = 640;
    private static final int SELECTOR_COMMON_STREAM = 665596;
    private static final int SELECTOR_COMMON_VRAM = 45344;
    private static final int SELECTOR_JOIN_STREAM = 666180;
    private static final int SELECTOR_LABEL_BYTES = 1280;
    private static final int SELECTOR_LABEL_VRAM = 45984;
    private static final int SPRITE_COUNT = 40;
    private static final int SPRITE_TEMPLATE = 153580;
    private static final int STATIC_COMPONENT_STREAM = 613632;
    private static final int STATIC_DESCRIPTOR_PTRS = 614744;
    private static final int STATIC_PATTERN_BYTES = 615204;
    public static final int TEXT_COLUMNS = 36;
    public static final int TEXT_X = 16;
    public static final int TEXT_Y = 40;
    private static final int VRAM_BYTES = 65536;
    private Bitmap cachedBitmap;
    private int cachedEye;
    private int cachedFrontHouse;
    private int cachedMission;
    private int cachedMouth;
    private int cachedSelectorChoice;
    private boolean cachedSelectorHighlightVisible;
    private int cachedSelectorMode;
    private String cachedText;
    private final byte[][] eyeBanks;
    private final byte[] fontPatterns;
    private final byte[][] mouthBanks;
    private final byte[][] portraitBanks;
    private final byte[][] providerBackdrops;
    private final byte[] providerCommonPalette;
    private final byte[] providerEyePositions;
    private final byte[] providerFinalCommonPalette;
    private final byte[][] providerHousePalettes;
    private final byte[][] providerJoinTexts;
    private final byte[] providerMouthPositions;
    private final byte[] providerSpriteTemplate;
    private final byte[] rom;
    private final byte[] selectorBriefing;
    private final byte[] selectorCommon;
    private final byte[] selectorJoin;

    public GenesisMentatRenderer(byte[] rom) {
        this.portraitBanks = new byte[3][];
        this.eyeBanks = new byte[3][];
        this.mouthBanks = new byte[3][];
        this.cachedFrontHouse = -1;
        this.cachedMission = -1;
        this.cachedEye = -1;
        this.cachedMouth = -1;
        this.cachedText = null;
        this.cachedBitmap = null;
        this.cachedSelectorMode = -1;
        this.cachedSelectorChoice = 0;
        this.cachedSelectorHighlightVisible = true;
        if (rom == null || rom.length < 671744) {
            throw new IllegalArgumentException("ROM is missing or too small for Genesis Mentat renderer");
        }
        this.rom = rom;
        int fontSize = be16(rom, FONT_SIZE_WORD);
        if (fontSize != 4096) {
            throw new IllegalArgumentException("Unexpected Genesis Mentat font size: " + fontSize);
        }
        this.fontPatterns = decompress(rom, FONT_STREAM, 65536);
        if (this.fontPatterns.length != 4096) {
            throw new IllegalArgumentException("Genesis Mentat font did not decode to 4096 bytes");
        }
        this.selectorCommon = decompress(rom, SELECTOR_COMMON_STREAM, 65536);
        this.selectorBriefing = decompress(rom, SELECTOR_BRIEFING_STREAM, 65536);
        this.selectorJoin = decompress(rom, SELECTOR_JOIN_STREAM, 65536);
        if (this.selectorCommon.length != 640 || this.selectorBriefing.length != SELECTOR_LABEL_BYTES || this.selectorJoin.length != SELECTOR_LABEL_BYTES) {
            throw new IllegalArgumentException("Incomplete Genesis Mentat selector patterns");
        }
        for (int h = 0; h < 3; h++) {
            this.portraitBanks[h] = decompress(rom, be32(rom, (h * 4) + PORTRAIT_BANK_PTRS), 65536);
            this.eyeBanks[h] = decompress(rom, be32(rom, (h * 4) + EYE_BANK_PTRS), 65536);
            this.mouthBanks[h] = decompress(rom, be32(rom, (h * 4) + MOUTH_BANK_PTRS), 65536);
            if (this.portraitBanks[h].length < 10368 || this.eyeBanks[h].length < 2880 || this.mouthBanks[h].length < 5600) {
                throw new IllegalArgumentException("Incomplete Genesis Mentat House pattern bank " + h);
            }
        }
        this.providerBackdrops = null;
        this.providerCommonPalette = null;
        this.providerFinalCommonPalette = null;
        this.providerHousePalettes = null;
        this.providerSpriteTemplate = null;
        this.providerEyePositions = null;
        this.providerMouthPositions = null;
        this.providerJoinTexts = null;
    }

    public GenesisMentatRenderer(RomRuntimeFrontendAssets assets) throws IOException {
        this(assets, null);
    }

    public GenesisMentatRenderer(RomRuntimeFrontendAssets assets, RomRuntimeOriginalContentAssets content) throws IOException {
        byte[] read;
        this.portraitBanks = new byte[3][];
        this.eyeBanks = new byte[3][];
        this.mouthBanks = new byte[3][];
        this.cachedFrontHouse = -1;
        this.cachedMission = -1;
        this.cachedEye = -1;
        this.cachedMouth = -1;
        this.cachedText = null;
        this.cachedBitmap = null;
        this.cachedSelectorMode = -1;
        this.cachedSelectorChoice = 0;
        this.cachedSelectorHighlightVisible = true;
        if (assets == null) {
            throw new IOException("Frontend READY asset source is unavailable");
        }
        this.rom = null;
        this.fontPatterns = assets.read("frontend/direct/title_font.bin");
        if (this.fontPatterns.length != 4096) {
            throw new IOException("Installed Mentat font size mismatch");
        }
        this.selectorCommon = assets.read("frontend/mentat/selector_common.bin");
        this.selectorBriefing = assets.read("frontend/mentat/selector_briefing.bin");
        this.selectorJoin = assets.read("frontend/mentat/selector_join.bin");
        if (this.selectorCommon.length != 640 || this.selectorBriefing.length != SELECTOR_LABEL_BYTES || this.selectorJoin.length != SELECTOR_LABEL_BYTES) {
            throw new IOException("Installed Mentat selector pattern size mismatch");
        }
        String[] tags = {"radnor_harkonnen", "cyril_atreides", "ammon_ordos"};
        this.providerBackdrops = new byte[27][];
        this.providerHousePalettes = new byte[3][];
        this.providerJoinTexts = new byte[3][];
        for (int h = 0; h < 3; h++) {
            this.portraitBanks[h] = assets.read("frontend/mentat/" + tags[h] + "_portrait.bin");
            this.eyeBanks[h] = assets.read("frontend/mentat/" + tags[h] + "_eyes.bin");
            this.mouthBanks[h] = assets.read("frontend/mentat/" + tags[h] + "_mouth.bin");
            if (this.portraitBanks[h].length < 10368 || this.eyeBanks[h].length < 2880 || this.mouthBanks[h].length < 5600) {
                throw new IOException("Installed Mentat House pattern bank is incomplete: " + h);
            }
            this.providerHousePalettes[h] = assets.read("frontend/mentat/" + tags[h] + "_palette.bin");
            byte[][] bArr = this.providerJoinTexts;
            if (content != null) {
                read = content.houseJoinTextBytes(h);
            } else {
                read = assets.read("frontend/mentat/" + tags[h] + "_join_text.bin");
            }
            bArr[h] = read;
            for (int mission = 1; mission <= 9; mission++) {
                String path = String.format(Locale.US, "frontend/mentat/backdrop_%s_m%02d_layers.bin", tags[h], Integer.valueOf(mission));
                this.providerBackdrops[((h * 9) + mission) - 1] = assets.read(path);
            }
        }
        this.providerCommonPalette = assets.read("frontend/mentat/common_palette.bin");
        this.providerFinalCommonPalette = assets.read("frontend/mentat/final_mission_common_palette.bin");
        this.providerSpriteTemplate = assets.read("frontend/mentat/sprite_template.bin");
        this.providerEyePositions = assets.read("frontend/mentat/eye_positions.bin");
        this.providerMouthPositions = assets.read("frontend/mentat/mouth_positions.bin");
        if (this.providerSpriteTemplate.length != 320 || this.providerEyePositions.length != 12 || this.providerMouthPositions.length != 12) {
            throw new IOException("Installed Mentat sprite metadata size mismatch");
        }
    }

    public Bitmap render(int frontendHouse, int missionOneBased, int eyeFrame, int mouthFrame, String phrase) {
        return renderInternal(frontendHouse, missionOneBased, eyeFrame, mouthFrame, phrase, -1, 0, true);
    }

    public Bitmap fadeFromBlack(Bitmap source, long fadeTick) {
        if (source == null) {
            return null;
        }
        int step = Math.max(1, Math.min(7, ((int) (Math.max(0L, fadeTick) / 3)) + 1));
        if (step >= 7) {
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
                int r = Math.round((Math.min(r3, step) * 255.0f) / 7.0f);
                int g = Math.round((Math.min(g3, step) * 255.0f) / 7.0f);
                int b = Math.round((Math.min(b3, step) * 255.0f) / 7.0f);
                pixels[i] = (a << 24) | (r << 16) | (g << 8) | b;
            }
        }
        return Bitmap.createBitmap(pixels, width, height, Bitmap.Config.ARGB_8888);
    }

    public Bitmap fadeToBlack(Bitmap source, long fadeTick) {
        if (source == null) {
            return null;
        }
        int step = Math.max(1, Math.min(7, ((int) (Math.max(0L, fadeTick) / 3)) + 1));
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
                int r = Math.round((Math.max(0, r3 - step) * 255.0f) / 7.0f);
                int g = Math.round((Math.max(0, g3 - step) * 255.0f) / 7.0f);
                int b = Math.round((Math.max(0, b3 - step) * 255.0f) / 7.0f);
                pixels[i] = (a << 24) | (r << 16) | (g << 8) | b;
            }
        }
        return Bitmap.createBitmap(pixels, width, height, Bitmap.Config.ARGB_8888);
    }

    public Bitmap renderWithSelector(int frontendHouse, int missionOneBased, int eyeFrame, int mouthFrame, String phrase, int selectorMode, int selectorChoice) {
        return renderWithSelector(frontendHouse, missionOneBased, eyeFrame, mouthFrame, phrase, selectorMode, selectorChoice, true);
    }

    public Bitmap renderWithSelector(int frontendHouse, int missionOneBased, int eyeFrame, int mouthFrame, String phrase, int selectorMode, int selectorChoice, boolean highlightVisible) {
        if (selectorMode >= 0) {
            if (selectorMode <= 1) {
                return renderInternal(frontendHouse, missionOneBased, eyeFrame, mouthFrame, phrase, selectorMode, selectorChoice == 0 ? 0 : 1, highlightVisible);
            }
        }
        throw new IllegalArgumentException("Invalid Genesis Mentat selector mode");
    }

    public Bitmap renderUiLabel(int frontendHouse, int missionOneBased, String text) {
        checkHouseMission(frontendHouse, missionOneBased);
        String text2 = text == null ? "" : text;
        int width = Math.max(1, text2.length() * 8);
        int[] pixels = new int[width * 8];
        int romHouse = FRONTEND_TO_ROM_HOUSE[frontendHouse];
        int[] palette = decodePalette(romHouse, missionOneBased - 1);
        for (int column = 0; column < text2.length(); column++) {
            int glyph = GermanFontGlyphMapper.mapFrontendGlyph(text2.charAt(column));
            int po = glyph * 32;
            if (po >= 0 && po + 32 <= this.fontPatterns.length) {
                for (int py = 0; py < 8; py++) {
                    for (int pair = 0; pair < 4; pair++) {
                        int packed = this.fontPatterns[(py * 4) + po + pair] & 255;
                        int hi = packed >>> 4;
                        int lo = packed & 15;
                        int sx = (column * 8) + (pair * 2);
                        if (hi != 0) {
                            pixels[(py * width) + sx] = palette[hi + 32];
                        }
                        if (lo != 0) {
                            pixels[(py * width) + sx + 1] = palette[lo + 32];
                        }
                    }
                }
            }
        }
        return Bitmap.createBitmap(pixels, width, 8, Bitmap.Config.ARGB_8888);
    }

    public Bitmap renderDeparture(int frontendHouse, int missionOneBased, int eyeFrame, int mouthFrame, int tick) {
        checkHouseMission(frontendHouse, missionOneBased);
        int step = Math.max(0, Math.min(24, tick));
        int eyeFrame2 = Math.floorMod(eyeFrame, 5);
        int mouthFrame2 = Math.floorMod(mouthFrame, 5);
        int romHouse = FRONTEND_TO_ROM_HOUSE[frontendHouse];
        int missionZero = missionOneBased - 1;
        int[] palette = decodePalette(romHouse, missionZero);
        int fadeSteps = Math.max(0, step - 15);
        if (fadeSteps != 0) {
            applyDeparturePortraitFade(palette, romHouse, fadeSteps);
        }
        int[][] layers = buildBackdropLayers(romHouse, missionZero);
        byte[] vram = buildPortraitVram(romHouse, eyeFrame2, mouthFrame2);
        byte[] sprites = adjustedSpriteTable(romHouse);
        for (int entry = 9; entry < 40; entry++) {
            addBe16(sprites, (entry * 8) + 6, step * (-4));
        }
        int[] pixels = new int[71680];
        for (int i = 0; i < pixels.length; i++) {
            pixels[i] = palette[0];
        }
        drawBackdropAt(pixels, palette, layers, 48 - step, BACKDROP_Y);
        drawSprites(pixels, palette, vram, sprites);
        return Bitmap.createBitmap(pixels, 320, 224, Bitmap.Config.ARGB_8888);
    }

    public String houseJoinText(int frontendHouse) {
        if (frontendHouse < 0 || frontendHouse > 2) {
            throw new IllegalArgumentException("Invalid Genesis Mentat House");
        }
        int romHouse = FRONTEND_TO_ROM_HOUSE[frontendHouse];
        if (this.providerJoinTexts != null) {
            return decodeZeroTerminatedText(this.providerJoinTexts[romHouse]);
        }
        int c = be32(this.rom, (romHouse * 4) + HOUSE_JOIN_POINTER_TABLE);
        StringBuilder out = new StringBuilder();
        while (c >= 0 && c < this.rom.length) {
            int pointer = c + 1;
            int pointer2 = this.rom[c];
            int c2 = pointer2 & 255;
            if (c2 == 0) {
                break;
            }
            out.append((char) c2);
            c = pointer;
        }
        return out.toString();
    }

    private Bitmap renderInternal(int frontendHouse, int missionOneBased, int eyeFrame, int mouthFrame, String phrase, int selectorMode, int selectorChoice, boolean selectorHighlightVisible) {
        checkHouseMission(frontendHouse, missionOneBased);
        int eyeFrame2 = Math.floorMod(eyeFrame, 5);
        int mouthFrame2 = Math.floorMod(mouthFrame, 5);
        String phrase2 = phrase == null ? "" : phrase;
        if (this.cachedBitmap != null && this.cachedFrontHouse == frontendHouse && this.cachedMission == missionOneBased && this.cachedEye == eyeFrame2 && this.cachedMouth == mouthFrame2 && phrase2.equals(this.cachedText) && this.cachedSelectorMode == selectorMode && this.cachedSelectorChoice == selectorChoice && this.cachedSelectorHighlightVisible == selectorHighlightVisible) {
            return this.cachedBitmap;
        }
        int romHouse = FRONTEND_TO_ROM_HOUSE[frontendHouse];
        int missionZero = missionOneBased - 1;
        int[] palette = decodePalette(romHouse, missionZero);
        int[][] layers = buildBackdropLayers(romHouse, missionZero);
        byte[] vram = buildPortraitVram(romHouse, eyeFrame2, mouthFrame2);
        byte[] sprites = adjustedSpriteTable(romHouse);
        if (selectorMode >= 0) {
            installSelector(vram, sprites, selectorMode, selectorChoice, selectorHighlightVisible);
        }
        int[] pixels = new int[71680];
        int romHouse2 = 0;
        while (true) {
            int missionZero2 = missionZero;
            if (romHouse2 >= pixels.length) {
                drawBackdrop(pixels, palette, layers);
                drawSprites(pixels, palette, vram, sprites);
                drawText(pixels, palette, phrase2);
                Bitmap bitmap = Bitmap.createBitmap(pixels, 320, 224, Bitmap.Config.ARGB_8888);
                this.cachedFrontHouse = frontendHouse;
                this.cachedMission = missionOneBased;
                this.cachedEye = eyeFrame2;
                this.cachedMouth = mouthFrame2;
                this.cachedText = phrase2;
                this.cachedSelectorMode = selectorMode;
                this.cachedSelectorChoice = selectorChoice;
                this.cachedSelectorHighlightVisible = selectorHighlightVisible;
                this.cachedBitmap = bitmap;
                return bitmap;
            }
            pixels[romHouse2] = palette[0];
            romHouse2++;
            missionZero = missionZero2;
        }
    }

    public String[] paginate(String text) {
        if (text == null || text.length() == 0) {
            return new String[]{""};
        }
        List<String> phrases = new ArrayList<>();
        int start = 0;
        int i = 0;
        while (i < text.length()) {
            char c = text.charAt(i);
            if (c == '.' || c == BACKDROP_TILES_W || c == '?' || c == '\r' || c == '\n') {
                int end = ((c == '\r' || c == '\n') ? 0 : 1) + i;
                String part = text.substring(start, end).trim();
                if (part.length() != 0) {
                    phrases.add(wrapPhrase(part));
                }
                start = i + 1;
                while (start < text.length() && (text.charAt(start) == ' ' || text.charAt(start) == '\r' || text.charAt(start) == '\n')) {
                    start++;
                }
                i = start - 1;
            }
            i++;
        }
        if (start < text.length()) {
            String part2 = text.substring(start).trim();
            if (part2.length() != 0) {
                phrases.add(wrapPhrase(part2));
            }
        }
        if (phrases.isEmpty()) {
            phrases.add("");
        }
        return (String[]) phrases.toArray(new String[phrases.size()]);
    }

    private static String wrapPhrase(String phrase) {
        StringBuilder out = new StringBuilder();
        int p = 0;
        while (true) {
            if (p >= phrase.length()) {
                break;
            }
            while (p < phrase.length() && phrase.charAt(p) == ' ') {
                p++;
            }
            if (p >= phrase.length()) {
                break;
            }
            int remaining = phrase.length() - p;
            if (remaining <= 36) {
                if (out.length() != 0) {
                    out.append('\r');
                }
                out.append((CharSequence) phrase, p, phrase.length());
            } else {
                int limit = p + 36;
                int split = limit;
                while (split > p && phrase.charAt(split) != ' ') {
                    split--;
                }
                if (split == p) {
                    split = limit;
                }
                if (out.length() != 0) {
                    out.append('\r');
                }
                out.append((CharSequence) phrase, p, split);
                p = split;
            }
        }
        return out.toString();
    }

    private int[][] buildBackdropLayers(int romHouse, int missionZero) {
        if (this.providerBackdrops != null) {
            byte[] packed = this.providerBackdrops[(romHouse * 9) + missionZero];
            if (packed != null && packed.length == RazorVramPatternLoader.PATTERN_BANK_BYTES * 2) {
                int[][] layers = {new int[RazorVramPatternLoader.PATTERN_BANK_BYTES], new int[RazorVramPatternLoader.PATTERN_BANK_BYTES]};
                for (int i = 0; i < 29568; i++) {
                    layers[0][i] = packed[i] & 255;
                    layers[1][i] = packed[RazorVramPatternLoader.PATTERN_BANK_BYTES + i] & 255;
                }
                return layers;
            }
            throw new IllegalArgumentException("Installed Mentat backdrop size mismatch");
        }
        int[][] a = drawDescriptorCall(STATIC_DESCRIPTOR_PTRS, STATIC_COMPONENT_STREAM, STATIC_PATTERN_BYTES);
        int houseComponents = be32(this.rom, (romHouse * 4) + HOUSE_COMPONENT_PTRS) + (missionZero * 20);
        int[][] b = drawDescriptorCall(HOUSE_DESCRIPTOR_PTRS, houseComponents, HOUSE_PATTERN_BYTES);
        for (int layer = 0; layer < 2; layer++) {
            for (int i2 = 0; i2 < b[layer].length; i2++) {
                if (b[layer][i2] != 0) {
                    a[layer][i2] = b[layer][i2];
                }
            }
        }
        return a;
    }

    private int[][] drawDescriptorCall(int descriptorPointerTable, int componentStream, int patternBytes) {
        int[][] layers;
        int[][] layers2 = {new int[RazorVramPatternLoader.PATTERN_BANK_BYTES], new int[RazorVramPatternLoader.PATTERN_BANK_BYTES]};
        int tileIndex = 0;
        int components = componentStream;
        int slot = 0;
        while (slot < 10) {
            int descriptor = be32(this.rom, (slot * 4) + descriptorPointerTable);
            int x = s16(this.rom, descriptor);
            int y = s16(this.rom, descriptor + 2);
            int code = be16(this.rom, descriptor + 4);
            int mode = be16(this.rom, components);
            int components2 = components + 2;
            int code2 = code;
            int code3 = y;
            int y2 = x;
            int tileIndex2 = tileIndex;
            int tileIndex3 = descriptor + 6;
            while (true) {
                blitComponent(layers2, patternBytes, tileIndex2, y2, code3, code2, mode);
                layers = layers2;
                tileIndex2 += be16(this.rom, (code2 * 2) + COMPONENT_TILE_COUNT);
                if (be32(this.rom, tileIndex3) == 0) {
                    break;
                }
                y2 += s16(this.rom, tileIndex3);
                code3 += s16(this.rom, tileIndex3 + 2);
                code2 = be16(this.rom, tileIndex3 + 4);
                tileIndex3 += 6;
                layers2 = layers;
            }
            slot++;
            layers2 = layers;
            tileIndex = tileIndex2;
            components = components2;
        }
        return layers2;
    }

    private void blitComponent(int[][] layers, int sourceBase, int firstTile, int x, int y, int code, int mode) {
        int mode2;
        int layer;
        GenesisMentatRenderer genesisMentatRenderer = this;
        int mode3 = mode;
        int layer2 = 0;
        boolean z = true;
        if (mode3 > 1) {
            layer2 = 1;
            mode3 -= 2;
        }
        int tilesWide = be16(genesisMentatRenderer.rom, (code * 2) + COMPONENT_WIDTH) + 1;
        int tilesHigh = be16(genesisMentatRenderer.rom, (code * 2) + COMPONENT_HEIGHT) + 1;
        int dx0 = x - 24;
        int dy0 = y - 48;
        int tile = firstTile;
        int cx = 0;
        while (cx < tilesWide) {
            int cy = 0;
            while (cy < tilesHigh) {
                int tileOffset = sourceBase + (tile * 32);
                checkRange(genesisMentatRenderer.rom, tileOffset, 32);
                int py = 0;
                while (py < 8) {
                    int pair = 0;
                    while (pair < 4) {
                        int packed = genesisMentatRenderer.rom[(py * 4) + tileOffset + pair] & 255;
                        if (mode3 != 0) {
                            packed = genesisMentatRenderer.rom[packed + COMPONENT_BYTE_REMAP] & 255;
                        }
                        int hi = packed >>> 4;
                        int lo = packed & 15;
                        boolean z2 = z;
                        int px = dx0 + (cx * 8) + (pair * 2);
                        int yy = dy0 + (cy * 8) + py;
                        if (yy >= 0) {
                            mode2 = mode3;
                            if (yy >= BACKDROP_H) {
                                layer = layer2;
                            } else {
                                if (hi != 0 && px >= 0 && px < BACKDROP_W) {
                                    layers[layer2][(yy * BACKDROP_W) + px] = hi;
                                }
                                if (lo == 0 || px + 1 < 0) {
                                    layer = layer2;
                                } else {
                                    layer = layer2;
                                    if (px + 1 < BACKDROP_W) {
                                        layers[layer][(yy * BACKDROP_W) + px + 1] = lo;
                                    }
                                }
                            }
                        } else {
                            mode2 = mode3;
                            layer = layer2;
                        }
                        pair++;
                        genesisMentatRenderer = this;
                        mode3 = mode2;
                        layer2 = layer;
                        z = z2;
                    }
                    py++;
                    genesisMentatRenderer = this;
                }
                tile++;
                cy++;
                genesisMentatRenderer = this;
            }
            cx++;
            genesisMentatRenderer = this;
        }
    }

    private int[] decodePalette(int romHouse, int missionZero) {
        int[] out = new int[64];
        if (this.providerHousePalettes != null) {
            byte[] common = missionZero == 8 ? this.providerFinalCommonPalette : this.providerCommonPalette;
            byte[] house = this.providerHousePalettes[romHouse];
            if (common.length != 64 || house.length != 64) {
                throw new IllegalArgumentException("Installed Mentat palette size mismatch");
            }
            for (int i = 0; i < 32; i++) {
                out[i] = genesisColor((be16(common, i * 2) >>> 1) & 1638);
            }
            for (int i2 = 0; i2 < 32; i2++) {
                out[i2 + 32] = genesisColor(be16(house, i2 * 2));
            }
            return out;
        }
        int common2 = missionZero == 8 ? FINAL_MISSION_COMMON_PALETTE : COMMON_PALETTE;
        for (int i3 = 0; i3 < 32; i3++) {
            int word = (be16(this.rom, (i3 * 2) + common2) >>> 1) & 1638;
            out[i3] = genesisColor(word);
        }
        int i4 = romHouse * 128;
        int house2 = i4 + HOUSE_PALETTES;
        for (int i5 = 0; i5 < 32; i5++) {
            out[i5 + 32] = genesisColor(be16(this.rom, (i5 * 2) + house2));
        }
        return out;
    }

    private byte[] buildPortraitVram(int romHouse, int eyeFrame, int mouthFrame) {
        byte[] vram = new byte[65536];
        byte[] portrait = this.portraitBanks[romHouse];
        System.arraycopy(portrait, 0, vram, 53248, 4032);
        System.arraycopy(portrait, 4032, vram, RazorSpriteSatProducerTrace.SAT_VRAM_BASE, 4032);
        System.arraycopy(portrait, 8064, vram, 43040, 2304);
        System.arraycopy(this.eyeBanks[romHouse], eyeFrame * EYE_FRAME_BYTES, vram, SELECTOR_COMMON_VRAM, EYE_FRAME_BYTES);
        System.arraycopy(this.mouthBanks[romHouse], mouthFrame * MOUTH_FRAME_BYTES, vram, 45920, MOUTH_FRAME_BYTES);
        return vram;
    }

    private void installSelector(byte[] vram, byte[] sprites, int selectorMode, int selectorChoice, boolean highlightVisible) {
        System.arraycopy(this.selectorCommon, 0, vram, SELECTOR_COMMON_VRAM, 640);
        byte[] labels = selectorMode == 0 ? this.selectorJoin : this.selectorBriefing;
        System.arraycopy(labels, 0, vram, SELECTOR_LABEL_VRAM, SELECTOR_LABEL_BYTES);
        for (int e = 9; e <= 14; e++) {
            addBe16(sprites, e * 8, -128);
            addBe16(sprites, (e * 8) + 6, -128);
        }
        for (int e2 = 0; e2 <= 8; e2++) {
            addBe16(sprites, e2 * 8, 128);
            addBe16(sprites, (e2 * 8) + 6, 320);
        }
        if (selectorChoice != 0) {
            for (int e3 = 0; e3 <= 2; e3++) {
                addBe16(sprites, e3 * 8, 24);
            }
        }
        if (!highlightVisible) {
            for (int e4 = 0; e4 <= 2; e4++) {
                addBe16(sprites, e4 * 8, -256);
                addBe16(sprites, (e4 * 8) + 6, -256);
            }
        }
    }

    private byte[] adjustedSpriteTable(int romHouse) {
        byte[] sprites = new byte[320];
        if (this.providerSpriteTemplate != null) {
            System.arraycopy(this.providerSpriteTemplate, 0, sprites, 0, sprites.length);
        } else {
            System.arraycopy(this.rom, SPRITE_TEMPLATE, sprites, 0, sprites.length);
        }
        int eyeDx = this.providerEyePositions != null ? s16(this.providerEyePositions, romHouse * 4) : s16(this.rom, (romHouse * 4) + EYE_POSITION_TABLE);
        int eyeDy = this.providerEyePositions != null ? s16(this.providerEyePositions, (romHouse * 4) + 2) : s16(this.rom, (romHouse * 4) + EYE_POSITION_TABLE + 2);
        for (int e = 9; e <= 10; e++) {
            addBe16(sprites, e * 8, eyeDy);
            addBe16(sprites, (e * 8) + 6, eyeDx);
        }
        int mouthDx = this.providerMouthPositions != null ? s16(this.providerMouthPositions, romHouse * 4) : s16(this.rom, (romHouse * 4) + MOUTH_POSITION_TABLE);
        int mouthDy = this.providerMouthPositions != null ? s16(this.providerMouthPositions, (romHouse * 4) + 2) : s16(this.rom, (romHouse * 4) + MOUTH_POSITION_TABLE + 2);
        for (int e2 = 11; e2 <= 14; e2++) {
            addBe16(sprites, e2 * 8, mouthDy);
            addBe16(sprites, (e2 * 8) + 6, mouthDx);
        }
        return sprites;
    }

    private static void drawBackdrop(int[] pixels, int[] palette, int[][] layers) {
        drawBackdropAt(pixels, palette, layers, 48, BACKDROP_Y);
    }

    private static void drawBackdropAt(int[] pixels, int[] palette, int[][] layers, int originX, int originY) {
        int sx;
        for (int layer = 0; layer < 2; layer++) {
            int paletteBase = layer * 16;
            for (int y = 0; y < BACKDROP_H; y++) {
                int sy = originY + y;
                if (sy >= 0 && sy < 224) {
                    for (int x = 0; x < BACKDROP_W; x++) {
                        int ci = layers[layer][(y * BACKDROP_W) + x];
                        if (ci != 0 && (sx = originX + x) >= 0 && sx < 320) {
                            pixels[(sy * 320) + sx] = palette[paletteBase + ci];
                        }
                    }
                }
            }
        }
    }

    private void applyDeparturePortraitFade(int[] palette, int romHouse, int steps) {
        int base = (romHouse * 128) + HOUSE_PALETTES + 32;
        for (int i = 0; i < 16; i++) {
            int word = this.providerHousePalettes != null ? be16(this.providerHousePalettes[romHouse], (i * 2) + 32) : be16(this.rom, (i * 2) + base);
            for (int n = 0; n < steps; n++) {
                if ((word & 3584) != 0) {
                    word -= 512;
                }
                if ((word & 224) != 0) {
                    word -= 32;
                }
                if ((word & 14) != 0) {
                    word -= 2;
                }
            }
            int n2 = i + 48;
            palette[n2] = genesisColor(word);
        }
    }

    private static void drawSprites(int[] pixels, int[] palette, byte[] vram, byte[] sprites) {
        int cy;
        int entry;
        int py;
        int nibble;
        byte[] bArr = vram;
        byte[] bArr2 = sprites;
        int entry2 = 39;
        while (entry2 >= 0) {
            int o = entry2 * 8;
            int y = be16(bArr2, o) - 128;
            int sizeLink = be16(bArr2, o + 2);
            int attr = be16(bArr2, o + 4);
            int x = be16(bArr2, o + 6) - 128;
            int size = (sizeLink >>> 8) & 15;
            int tilesWide = (size >>> 2) + 1;
            int tilesHigh = (size & 3) + 1;
            int pattern = attr & 2047;
            int paletteLine = (attr >>> 13) & 3;
            boolean hFlip = (attr & GenesisObjectArt.VRAM_PATTERN_COUNT) != 0;
            boolean vFlip = (attr & DuneHackR82ScenarioRecordDecoder.MAX_RECORDS) != 0;
            int tile = 0;
            int cy2 = 0;
            while (cy2 < tilesWide) {
                int cx = cy2;
                int cy3 = 0;
                while (cy3 < tilesHigh) {
                    int tile2 = tile + 1;
                    int po = (tile + pattern) * 32;
                    if (po >= 0) {
                        cy = cy3;
                        int cy4 = po + 32;
                        entry = entry2;
                        int entry3 = bArr.length;
                        if (cy4 <= entry3) {
                            int py2 = 0;
                            while (py2 < 8) {
                                int sy = (cy * 8) + y + py2;
                                if (sy < 0) {
                                    py = py2;
                                } else if (sy >= 224) {
                                    py = py2;
                                } else {
                                    int srcY = vFlip ? 7 - py2 : py2;
                                    int srcY2 = srcY;
                                    int nibble2 = 0;
                                    while (true) {
                                        py = py2;
                                        if (nibble2 < 4) {
                                            int packed = vram[(srcY2 * 4) + po + nibble2] & 255;
                                            int pair = nibble2;
                                            int sx = 0;
                                            while (true) {
                                                int packed2 = packed;
                                                if (sx < 2) {
                                                    int ci = sx == 0 ? packed2 >>> 4 : packed2 & 15;
                                                    if (ci == 0) {
                                                        nibble = sx;
                                                    } else {
                                                        int within = (pair * 2) + sx;
                                                        if (hFlip) {
                                                            within = 7 - within;
                                                        }
                                                        nibble = sx;
                                                        int nibble3 = x + (cx * 8) + within;
                                                        if (nibble3 >= 0) {
                                                            int ci2 = ci;
                                                            if (nibble3 < 320) {
                                                                pixels[(sy * 320) + nibble3] = palette[(paletteLine * 16) + ci2];
                                                            }
                                                        }
                                                    }
                                                    sx = nibble + 1;
                                                    packed = packed2;
                                                }
                                            }
                                            nibble2 = pair + 1;
                                            py2 = py;
                                        }
                                    }
                                }
                                py2 = py + 1;
                            }
                        }
                    } else {
                        cy = cy3;
                        entry = entry2;
                    }
                    cy3 = cy + 1;
                    bArr = vram;
                    tile = tile2;
                    entry2 = entry;
                }
                cy2 = cx + 1;
                bArr = vram;
            }
            entry2--;
            bArr = vram;
            bArr2 = sprites;
        }
    }

    private void drawText(int[] pixels, int[] palette, String phrase) {
        GenesisMentatRenderer genesisMentatRenderer = this;
        int column = 0;
        int row = 0;
        int i = 0;
        while (i < phrase.length()) {
            char ch = phrase.charAt(i);
            if (ch == '\r' || ch == '\n') {
                row++;
                column = 0;
            } else {
                int glyph = GermanFontGlyphMapper.mapFrontendGlyph(ch);
                int po = glyph * 32;
                if (po + 32 <= genesisMentatRenderer.fontPatterns.length) {
                    int py = 0;
                    while (py < 8) {
                        int sy = (row * 8) + 40 + py;
                        if (sy >= 0 && sy < 224) {
                            int pair = 0;
                            while (pair < 4) {
                                int packed = genesisMentatRenderer.fontPatterns[(py * 4) + po + pair] & 255;
                                int hi = packed >>> 4;
                                int lo = packed & 15;
                                int sx = (column * 8) + 16 + (pair * 2);
                                if (hi != 0 && sx >= 0 && sx < 320) {
                                    pixels[(sy * 320) + sx] = palette[hi + 32];
                                }
                                if (lo != 0 && sx + 1 >= 0 && sx + 1 < 320) {
                                    pixels[(sy * 320) + sx + 1] = palette[lo + 32];
                                }
                                pair++;
                                genesisMentatRenderer = this;
                            }
                        }
                        py++;
                        genesisMentatRenderer = this;
                    }
                    column++;
                }
            }
            i++;
            genesisMentatRenderer = this;
        }
    }

    private static int genesisColor(int word) {
        int r = (word >>> 1) & 7;
        int g = (word >>> 5) & 7;
        int b = (word >>> 9) & 7;
        return Color.rgb(Math.round((r * 255.0f) / 7.0f), Math.round((g * 255.0f) / 7.0f), Math.round((b * 255.0f) / 7.0f));
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x00a8, code lost:
    
        throw new java.lang.IllegalArgumentException("Genesis Mentat absolute-copy range");
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x006d, code lost:
    
        throw new java.lang.IllegalArgumentException("Genesis Mentat short-copy range");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[] decompress(byte[] r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisMentatRenderer.decompress(byte[], int, int):byte[]");
    }

    private static String decodeZeroTerminatedText(byte[] data) {
        if (data == null) {
            return "";
        }
        StringBuilder out = new StringBuilder();
        for (int i = 0; i < data.length && data[i] != 0; i++) {
            out.append((char) (data[i] & 255));
        }
        return out.toString();
    }

    private static void checkHouseMission(int frontendHouse, int missionOneBased) {
        if (frontendHouse < 0 || frontendHouse > 2 || missionOneBased < 1 || missionOneBased > 9) {
            throw new IllegalArgumentException("Invalid Genesis Mentat House/mission");
        }
    }

    private static void addBe16(byte[] b, int o, int delta) {
        int v = (be16(b, o) + delta) & 65535;
        b[o] = (byte) (v >>> 8);
        b[o + 1] = (byte) v;
    }

    private static int s16(byte[] b, int o) {
        int v = be16(b, o);
        return (32768 & v) != 0 ? v - 65536 : v;
    }

    private static int be16(byte[] b, int o) {
        checkRange(b, o, 2);
        return ((b[o] & 255) << 8) | (b[o + 1] & 255);
    }

    private static int be32(byte[] b, int o) {
        checkRange(b, o, 4);
        return ((b[o] & 255) << 24) | ((b[o + 1] & 255) << 16) | ((b[o + 2] & 255) << 8) | (b[o + 3] & 255);
    }

    private static void ensureOutput(byte[] b, int o, int n) {
        if (o < 0 || n < 0 || o > b.length - n) {
            throw new IllegalArgumentException("Genesis Mentat decompressor overrun");
        }
    }

    private static void checkRange(byte[] b, int o, int n) {
        if (o < 0 || n < 0 || o > b.length - n) {
            throw new IllegalArgumentException("Genesis Mentat ROM range");
        }
    }
}
