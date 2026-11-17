package com.ahsim.demulation;

import android.graphics.Bitmap;
import android.graphics.Color;
import java.io.IOException;
import java.lang.reflect.Array;

/* loaded from: classes2.dex */
public final class GenesisClassicPurchaseIconArt {
    private static final int ACTION_COUNT = 6;
    public static final int ACTION_EXIT = 1;
    public static final int ACTION_FIX = 2;
    public static final int ACTION_FIX_DISABLED = 4;
    public static final int ACTION_STOP = 3;
    public static final int ACTION_STOP_DISABLED = 5;
    public static final int ACTION_UPGRADE = 0;
    private static final int DEATH_HAND_CLASSIC_PALETTE_LINE = 0;
    private static final int DEATH_HAND_TYPE = 18;
    private static final int DETAIL_HEIGHT = 56;
    private static final int DETAIL_PACKED_BYTES = 2688;
    private static final int DETAIL_RECORD_BYTES = 2724;
    private static final int DETAIL_WIDTH = 96;
    private static final int HEIGHT = 24;
    private static final int ICON_BYTES = 384;
    private static final int RECORD_BYTES = 388;
    private static final int SANDWORM_CLASSIC_PALETTE_LINE = 1;
    private static final int SANDWORM_TYPE = 25;
    private static final int SONIC_CLASSIC_PALETTE_LINE = 1;
    private static final int SONIC_TANK_TYPE = 12;
    private static final int STRUCTURE_COUNT = 19;
    private static final int UNIT_COUNT = 27;
    private static final int V1_HEADER_BYTES = 16;
    private static final int V1_LENGTH = 17864;
    private static final int V2_HEADER_BYTES = 24;
    private static final int V2_HOUSE_FLAGS_BYTES = 16;
    private static final int V2_LENGTH = 38192;
    private static final int V2_PALETTE_BYTES = 128;
    private static final int V3_HEADER_BYTES = 32;
    private static final int V3_LENGTH = 163504;
    private static final int V4_LENGTH = 164280;
    private static final int WIDTH = 32;
    private final Bitmap[] structurePurchaseIcons = new Bitmap[19];
    private final Bitmap[] unitPurchaseIcons = new Bitmap[27];
    private final byte[][] structureInfoPayload = new byte[19][];
    private final byte[][] unitInfoPayload = new byte[27][];
    private final Bitmap[][] structureInfoCache = (Bitmap[][]) Array.newInstance((Class<?>) Bitmap.class, 19, 8);
    private final Bitmap[][] unitInfoCache = (Bitmap[][]) Array.newInstance((Class<?>) Bitmap.class, 27, 8);
    private final Bitmap[] actionIcons = new Bitmap[6];
    private final Bitmap[] structureDetailPreviews = new Bitmap[19];
    private final Bitmap[] unitDetailPreviews = new Bitmap[27];
    private final Bitmap[] fremenClassicIcons = new Bitmap[2];
    private final int[] palette = new int[64];
    private final int[] housePaletteFlags = new int[8];

    public GenesisClassicPurchaseIconArt(RomRuntimeWorldAssets assets) throws IOException {
        if (assets == null) {
            throw new IOException("World media missing for classic icons");
        }
        byte[] data = assets.read(RomWorldTacticalSpriteAssetManifest.CLASSIC_PURCHASE_ICONS);
        parse(data, assets);
    }

    public Bitmap getStructureIcon(int type) {
        return getStructurePurchaseIcon(type);
    }

    public Bitmap getUnitIcon(int type) {
        return getUnitPurchaseIcon(type);
    }

    public Bitmap getStructurePurchaseIcon(int type) {
        if (type < 0 || type >= this.structurePurchaseIcons.length) {
            return null;
        }
        return this.structurePurchaseIcons[type];
    }

    public Bitmap getUnitPurchaseIcon(int type) {
        if (type < 0 || type >= this.unitPurchaseIcons.length) {
            return null;
        }
        return this.unitPurchaseIcons[type];
    }

    public Bitmap getStructureInfoIcon(int type, int house) {
        return getInfoIcon(type, house, this.structureInfoPayload, this.structureInfoCache);
    }

    public Bitmap getUnitInfoIcon(int type, int house) {
        return getInfoIcon(type, house, this.unitInfoPayload, this.unitInfoCache);
    }

    public Bitmap getFremenClassicSelectedIcon(int type, int house) {
        if (house != 3) {
            return null;
        }
        if (type == 3) {
            return this.fremenClassicIcons[0];
        }
        if (type == 5) {
            return this.fremenClassicIcons[1];
        }
        return null;
    }

    public Bitmap getActionIcon(int action) {
        if (action < 0 || action >= this.actionIcons.length) {
            return null;
        }
        return this.actionIcons[action];
    }

    public Bitmap getStructureDetailPreview(int type) {
        if (type < 0 || type >= this.structureDetailPreviews.length) {
            return null;
        }
        return this.structureDetailPreviews[type];
    }

    public Bitmap getUnitDetailPreview(int type) {
        if (type < 0 || type >= this.unitDetailPreviews.length) {
            return null;
        }
        return this.unitDetailPreviews[type];
    }

    private Bitmap getInfoIcon(int type, int house, byte[][] payloads, Bitmap[][] cache) {
        if (type < 0 || type >= payloads.length || payloads[type] == null) {
            return null;
        }
        boolean worm = payloads == this.unitInfoPayload && type == SANDWORM_TYPE;
        int h = (!worm && house >= 0 && house < 8) ? house : 0;
        Bitmap icon = cache[type][h];
        if (icon != null) {
            return icon;
        }
        int line = worm ? 1 : (this.housePaletteFlags[h] >>> 13) & 3;
        Bitmap icon2 = decodeIcon(payloads[type], 0, line);
        cache[type][h] = icon2;
        return icon2;
    }

    private void parse(byte[] data, RomRuntimeWorldAssets assets) throws IOException {
        if (data == null || data.length < 16 || data[0] != 67 || data[1] != 80 || data[2] != 73 || data[3] != 67) {
            throw new IOException("Installed classic icon pack header mismatch");
        }
        int version = be16(data, 4);
        if (version == 1) {
            parseV1(data, assets);
            return;
        }
        if (version == 2) {
            parseV2(data);
        } else {
            if (version == 3 || version == 4) {
                parseV3OrV4(data, version);
                return;
            }
            throw new IOException("Unsupported classic icon pack version: " + version);
        }
    }

    private void parseV1(byte[] data, RomRuntimeWorldAssets assets) throws IOException {
        if (data.length != V1_LENGTH || be16(data, 6) != 32 || be16(data, 8) != 24 || be16(data, 10) != ICON_BYTES || be16(data, 12) != 19 || be16(data, 14) != 27) {
            throw new IOException("Installed classic icon pack v1 shape mismatch");
        }
        decodePalette(assets.read("terrain/palette.bin"));
        int[] historical = {0, 8192, 24576, 8192, RazorVramPatternLoader.METATILE_BANK_BYTES, 0, 0, 0};
        System.arraycopy(historical, 0, this.housePaletteFlags, 0, historical.length);
        int p = 16;
        for (int type = 0; type < 19; type++) {
            p = decodeFixedRecord(data, p, type, 1, this.structurePurchaseIcons);
        }
        for (int type2 = 0; type2 < 27; type2++) {
            p = decodeFixedRecord(data, p, type2, 3, this.unitPurchaseIcons);
        }
        if (p != data.length) {
            throw new IOException("Installed classic icon pack v1 trailing data");
        }
    }

    private void parseV2(byte[] data) throws IOException {
        if (data.length != V2_LENGTH || be16(data, 6) != 32 || be16(data, 8) != 24 || be16(data, 10) != ICON_BYTES || be16(data, 12) != 19 || be16(data, 14) != 27 || be16(data, 16) != 6 || be16(data, 18) != 19 || be16(data, 20) != 27 || be16(data, 22) != 0) {
            throw new IOException("Installed classic icon pack v2 shape mismatch");
        }
        byte[] paletteBytes = new byte[128];
        System.arraycopy(data, 24, paletteBytes, 0, paletteBytes.length);
        decodePalette(paletteBytes);
        int p = 24 + paletteBytes.length;
        for (int i = 0; i < this.housePaletteFlags.length; i++) {
            this.housePaletteFlags[i] = be16(data, (i * 2) + p);
        }
        int p2 = p + 16;
        int p3 = p2;
        for (int p4 = 0; p4 < 19; p4++) {
            p3 = decodeFixedRecord(data, p3, p4, 1, this.structurePurchaseIcons);
        }
        for (int type = 0; type < 27; type++) {
            p3 = decodeFixedRecord(data, p3, type, 3, this.unitPurchaseIcons);
        }
        for (int type2 = 0; type2 < 19; type2++) {
            p3 = decodeInfoRecord(data, p3, type2, this.structureInfoPayload);
        }
        for (int type3 = 0; type3 < 27; type3++) {
            p3 = decodeInfoRecord(data, p3, type3, this.unitInfoPayload);
        }
        for (int action = 0; action < 6; action++) {
            p3 = decodeFixedRecord(data, p3, action, 3, this.actionIcons);
        }
        if (p3 != data.length) {
            throw new IOException("Installed classic icon pack v2 trailing data");
        }
    }

    private void parseV3OrV4(byte[] data, int version) throws IOException {
        if (data.length != (version == 4 ? V4_LENGTH : V3_LENGTH) || be16(data, 6) != 32 || be16(data, 8) != 24 || be16(data, 10) != ICON_BYTES || be16(data, 12) != 19 || be16(data, 14) != 27 || be16(data, 16) != 6 || be16(data, 18) != 19 || be16(data, 20) != 27 || be16(data, 22) != 19 || be16(data, 24) != 27 || be16(data, 26) != 96 || be16(data, 28) != DETAIL_HEIGHT || be16(data, 30) != DETAIL_PACKED_BYTES) {
            throw new IOException("Installed classic icon pack v3 shape mismatch");
        }
        byte[] paletteBytes = new byte[128];
        System.arraycopy(data, 32, paletteBytes, 0, paletteBytes.length);
        decodePalette(paletteBytes);
        int p = 32 + paletteBytes.length;
        for (int i = 0; i < this.housePaletteFlags.length; i++) {
            this.housePaletteFlags[i] = be16(data, (i * 2) + p);
        }
        int p2 = p + 16;
        int p3 = p2;
        for (int p4 = 0; p4 < 19; p4++) {
            p3 = decodeFixedRecord(data, p3, p4, 1, this.structurePurchaseIcons);
        }
        for (int type = 0; type < 27; type++) {
            p3 = decodeFixedRecord(data, p3, type, 3, this.unitPurchaseIcons);
        }
        for (int type2 = 0; type2 < 19; type2++) {
            p3 = decodeInfoRecord(data, p3, type2, this.structureInfoPayload);
        }
        for (int type3 = 0; type3 < 27; type3++) {
            p3 = decodeInfoRecord(data, p3, type3, this.unitInfoPayload);
        }
        for (int action = 0; action < 6; action++) {
            p3 = decodeFixedRecord(data, p3, action, 3, this.actionIcons);
        }
        for (int type4 = 0; type4 < 19; type4++) {
            p3 = decodeDetailRecord(data, p3, type4, this.structureDetailPreviews);
        }
        for (int type5 = 0; type5 < 27; type5++) {
            p3 = decodeDetailRecord(data, p3, type5, this.unitDetailPreviews);
        }
        if (version == 4) {
            p3 = decodeFixedRecord(data, decodeFixedRecord(data, p3, 0, 3, this.fremenClassicIcons), 1, 3, this.fremenClassicIcons);
        }
        if (p3 != data.length) {
            throw new IOException("Installed classic icon pack trailing data");
        }
    }

    private int decodeDetailRecord(byte[] data, int p, int expectedKey, Bitmap[] destination) throws IOException {
        if (p < 0 || p > data.length - 2724) {
            throw new IOException("Classic detail record truncated");
        }
        int present = data[p] & 255;
        int paletteMode = data[p + 1] & 255;
        int key = be16(data, p + 2);
        if ((present != 0 && present != 1) || paletteMode != 64 || key != expectedKey) {
            throw new IOException("Classic detail record identity mismatch");
        }
        if (present != 0) {
            destination[expectedKey] = decodeDetailPreview(data, p + 4);
        }
        return p + DETAIL_RECORD_BYTES;
    }

    private Bitmap decodeDetailPreview(byte[] data, int offset) throws IOException {
        if (offset < 0 || offset > (data.length - 32) - 2688) {
            throw new IOException("Classic detail preview truncated");
        }
        int[] localPalette = new int[16];
        for (int i = 0; i < 16; i++) {
            localPalette[i] = genesisColor(be16(data, (i * 2) + offset));
        }
        int pixelsOffset = offset + 32;
        int[] pixels = new int[5376];
        for (int i2 = 0; i2 < pixels.length; i2++) {
            int packed = data[(i2 >>> 1) + pixelsOffset] & 255;
            int colour = (i2 & 1) == 0 ? packed >>> 4 : packed & 15;
            pixels[i2] = localPalette[colour];
        }
        return Bitmap.createBitmap(pixels, 96, DETAIL_HEIGHT, Bitmap.Config.ARGB_8888);
    }

    private int decodeFixedRecord(byte[] data, int p, int expectedKey, int expectedPaletteLine, Bitmap[] destination) throws IOException {
        checkRecord(data, p, expectedKey, expectedPaletteLine);
        int present = data[p] & 255;
        if (present != 0) {
            int line = expectedPaletteLine;
            if (destination == this.unitPurchaseIcons) {
                if (expectedKey == SANDWORM_TYPE) {
                    line = 1;
                } else if (expectedKey == 12) {
                    line = 1;
                } else if (expectedKey == 18) {
                    line = 0;
                }
            }
            destination[expectedKey] = decodeIcon(data, p + 4, line);
        }
        return p + 388;
    }

    private int decodeInfoRecord(byte[] data, int p, int expectedKey, byte[][] destination) throws IOException {
        checkRecord(data, p, expectedKey, 128);
        int present = data[p] & 255;
        if (present != 0) {
            byte[] payload = new byte[ICON_BYTES];
            System.arraycopy(data, p + 4, payload, 0, payload.length);
            destination[expectedKey] = payload;
        }
        return p + 388;
    }

    private void checkRecord(byte[] data, int p, int expectedKey, int expectedPaletteMode) throws IOException {
        if (p < 0 || p > data.length - 388) {
            throw new IOException("Classic icon record truncated");
        }
        int present = data[p] & 255;
        int paletteMode = data[p + 1] & 255;
        int key = be16(data, p + 2);
        if ((present != 0 && present != 1) || paletteMode != expectedPaletteMode || key != expectedKey) {
            throw new IOException("Classic icon record identity mismatch");
        }
    }

    private Bitmap decodeIcon(byte[] data, int offset, int paletteLine) {
        if (paletteLine >= 0) {
            int i = 3;
            if (paletteLine <= 3 && offset >= 0) {
                if (offset > data.length - 384) {
                    return null;
                }
                int[] pixels = new int[768];
                int column = 0;
                while (column < 4) {
                    int row = 0;
                    while (row < i) {
                        int pattern = (column * 3) + row;
                        int patternOffset = (pattern * 32) + offset;
                        int py = 0;
                        while (true) {
                            if (py < 8) {
                                int line = (py * 4) + patternOffset;
                                int px = 0;
                                for (int i2 = 8; px < i2; i2 = 8) {
                                    int packed = data[(px >>> 1) + line] & 255;
                                    int colorIndex = (px & 1) == 0 ? packed >>> 4 : packed & 15;
                                    int x = (column * 8) + px;
                                    int y = (row * 8) + py;
                                    pixels[(y * 32) + x] = colorIndex == 0 ? 0 : this.palette[(paletteLine * 16) + colorIndex];
                                    px++;
                                }
                                py++;
                            }
                        }
                        row++;
                        i = 3;
                    }
                    column++;
                    i = 3;
                }
                return Bitmap.createBitmap(pixels, 32, 24, Bitmap.Config.ARGB_8888);
            }
        }
        return null;
    }

    private void decodePalette(byte[] data) throws IOException {
        if (data == null || data.length != 128) {
            throw new IOException("Installed classic palette has wrong size");
        }
        for (int i = 0; i < 64; i++) {
            int word = be16(data, i * 2);
            this.palette[i] = genesisColor(word);
        }
    }

    private static int genesisColor(int word) {
        int r3 = (word >>> 1) & 7;
        int g3 = (word >>> 5) & 7;
        int b3 = (word >>> 9) & 7;
        return Color.rgb(Math.round((r3 * 255.0f) / 7.0f), Math.round((g3 * 255.0f) / 7.0f), Math.round((b3 * 255.0f) / 7.0f));
    }

    private static int be16(byte[] data, int offset) throws IOException {
        if (offset < 0 || offset > data.length - 2) {
            throw new IOException("Classic icon data truncated");
        }
        return ((data[offset] & 255) << 8) | (data[offset + 1] & 255);
    }
}
