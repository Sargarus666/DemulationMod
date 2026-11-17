package com.ahsim.demulation;

/* loaded from: classes2.dex */
final class GermanFontGlyphMapper {
    private static final int GLYPH_AE = 2;
    private static final int GLYPH_OE = 3;
    private static final int GLYPH_UE = 1;

    private GermanFontGlyphMapper() {
    }

    static int mapFrontendGlyph(char ch) {
        int value = ch & 255;
        switch (ch) {
            case 196:
            case 228:
                return 2;
            case 214:
            case 246:
                return 3;
            case 220:
            case 252:
                return 1;
            default:
                switch (value) {
                    case 129:
                    case 154:
                        return 1;
                    case DuneHackR82cRazorCombatAudit.DAMAGE_WORDS /* 132 */:
                    case 142:
                        return 2;
                    case 148:
                    case 153:
                        return 3;
                    default:
                        return ch & 127;
                }
        }
    }

    static int mapFixedTileByte(int value) {
        switch (value & 255) {
            case 129:
            case 154:
                return 1;
            case DuneHackR82cRazorCombatAudit.DAMAGE_WORDS /* 132 */:
            case 142:
                return 2;
            case 148:
            case 153:
                return 3;
            default:
                return value & 127;
        }
    }
}
