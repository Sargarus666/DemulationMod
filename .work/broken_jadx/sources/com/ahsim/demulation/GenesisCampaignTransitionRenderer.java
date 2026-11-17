package com.ahsim.demulation;

import android.graphics.Bitmap;
import android.graphics.Color;
import java.io.IOException;
import java.lang.reflect.Array;

/* loaded from: classes2.dex */
public final class GenesisCampaignTransitionRenderer {
    public static final int AFTER_DROP_HOLD_TICKS = 51;
    private static final int BACKDROP_H = 112;
    private static final int BACKDROP_PIXELS = 29568;
    private static final int BACKDROP_TILES_H = 14;
    private static final int BACKDROP_TILES_W = 33;
    private static final int BACKDROP_W = 264;
    private static final int BACKDROP_X = 24;
    private static final int BACKDROP_Y = 72;
    private static final int COMMON_PALETTE = 667006;
    private static final int COMPONENT_BYTE_REMAP = 147586;
    private static final int COMPONENT_HEIGHT = 147554;
    private static final int COMPONENT_TILE_COUNT = 615172;
    private static final int COMPONENT_WIDTH = 147522;
    public static final int DEPARTURE_TICKS = 24;
    public static final int FADE_TICKS = 24;
    private static final int FINAL_MISSION_COMMON_PALETTE = 667134;
    private static final int FOCUS_PALETTE_OFFSET_TABLE = 613624;
    private static final int FOCUS_SOURCE_H = 112;
    private static final int FOCUS_SOURCE_W = 112;
    public static final int FOCUS_TICKS = 5;
    private static final int[] FRONTEND_TO_ROM_HOUSE = {1, 0, 2};
    private static final int HOUSE_COMPONENT_PTRS = 614252;
    private static final int HOUSE_DESCRIPTOR_PTRS = 615132;
    private static final int HOUSE_PALETTES = 666686;
    private static final int HOUSE_PATTERN_BYTES = 624358;
    public static final int INITIAL_MAP_HOLD_TICKS = 101;
    private static final int MISSION_MAP_RECORD_PTRS = 614480;
    public static final int PIECE7_DELAY_TICKS = 21;
    public static final int SCREEN_HEIGHT = 224;
    public static final int SCREEN_WIDTH = 320;
    private static final int STATIC_COMPONENT_STREAM = 613632;
    private static final int STATIC_DESCRIPTOR_PTRS = 614744;
    private static final int STATIC_PATTERN_BYTES = 615204;
    private static final int ZOOM_PIECE_STRIDE = 252;
    private static final int ZOOM_RECORD_BYTES = 12;
    private static final int ZOOM_TABLE = 150414;
    public static final int ZOOM_TICKS = 16;
    private Cache cache;
    private Bitmap cachedFrame;
    private int cachedTick = Integer.MIN_VALUE;
    private final ProviderData providerData;
    private final byte[] rom;

    public GenesisCampaignTransitionRenderer(byte[] rom) {
        if (rom == null || rom.length < 671744) {
            throw new IllegalArgumentException("ROM is missing or too small for campaign transition");
        }
        this.rom = rom;
        this.providerData = null;
    }

    public GenesisCampaignTransitionRenderer(RomRuntimeFrontendAssets assets) throws IOException {
        if (assets == null) {
            throw new IOException("Frontend READY asset source is unavailable");
        }
        this.rom = null;
        this.providerData = new ProviderData(assets);
    }

    public int selectedPiece(int frontendHouse, int missionOneBased) {
        checkHouseMission(frontendHouse, missionOneBased);
        if (this.providerData != null) {
            int record = ((frontendHouse * 9) + (missionOneBased - 1)) * 8;
            return be16(this.providerData.missionRecords, record + 6);
        }
        int romHouse = FRONTEND_TO_ROM_HOUSE[frontendHouse];
        int table = be32(this.rom, (romHouse * 4) + MISSION_MAP_RECORD_PTRS);
        int record2 = ((missionOneBased - 1) * 8) + table;
        return be16(this.rom, record2 + 6);
    }

    public int mapSequenceTicks(int frontendHouse, int missionOneBased) {
        ensureCache(frontendHouse, missionOneBased);
        return this.cache.completionTick;
    }

    public int focusStartTick(int frontendHouse, int missionOneBased) {
        ensureCache(frontendHouse, missionOneBased);
        return this.cache.focusStartTick;
    }

    public boolean isComplete(int frontendHouse, int missionOneBased, long mapTick) {
        return mapTick >= ((long) mapSequenceTicks(frontendHouse, missionOneBased));
    }

    public Bitmap render(int frontendHouse, int missionOneBased, long mapTick) {
        Bitmap result;
        ensureCache(frontendHouse, missionOneBased);
        int tick = (int) Math.max(0L, Math.min(2147483647L, mapTick));
        if (this.cachedFrame != null && this.cachedTick == tick) {
            return this.cachedFrame;
        }
        SimState state = simulate(this.cache, tick);
        if (state.phase == 4) {
            result = renderZoomFrame(this.cache, 0);
        } else if (state.phase == 5 || state.phase == 6) {
            result = renderZoomFrame(this.cache, state.phase == 6 ? 15 : state.zoomFrame);
        } else {
            int[] pixels = new int[71680];
            int[] palette = this.cache.palette;
            drawRemainingMap(pixels, palette, this.cache, state.remainingMask);
            drawFallingPieces(pixels, palette, this.cache, state.slots);
            result = Bitmap.createBitmap(pixels, 320, 224, Bitmap.Config.ARGB_8888);
        }
        this.cachedTick = tick;
        this.cachedFrame = result;
        return result;
    }

    private void ensureCache(int frontendHouse, int missionOneBased) {
        checkHouseMission(frontendHouse, missionOneBased);
        if (this.cache != null && this.cache.frontendHouse == frontendHouse && this.cache.missionOneBased == missionOneBased) {
            return;
        }
        int romHouse = FRONTEND_TO_ROM_HOUSE[frontendHouse];
        int missionZero = missionOneBased - 1;
        Cache c = new Cache();
        c.frontendHouse = frontendHouse;
        c.missionOneBased = missionOneBased;
        c.romHouse = romHouse;
        c.selectedPiece = selectedPiece(frontendHouse, missionOneBased);
        if (c.selectedPiece < 0 || c.selectedPiece > 9) {
            throw new IllegalArgumentException("Invalid ROM selected map piece " + c.selectedPiece);
        }
        c.palette = decodePalette(romHouse, missionZero);
        c.houseX = new int[10];
        c.houseY = new int[10];
        if (this.providerData != null) {
            byte[] houseModes = this.providerData.houseModesFor(frontendHouse, missionZero);
            c.staticPieces = buildPieceLayersProvider(this.providerData.staticGeometry, this.providerData.staticPatterns, this.providerData.staticModes);
            c.housePieces = buildPieceLayersProvider(this.providerData.houseGeometry, this.providerData.housePatterns, houseModes);
            for (int piece = 0; piece < 10; piece++) {
                GeometryComponent first = this.providerData.houseGeometry.slots[piece][0];
                c.houseX[piece] = first.f4x;
                c.houseY[piece] = first.f5y;
            }
        } else {
            c.staticPieces = buildPieceLayers(STATIC_DESCRIPTOR_PTRS, STATIC_COMPONENT_STREAM, STATIC_PATTERN_BYTES);
            int houseComponents = be32(this.rom, (romHouse * 4) + HOUSE_COMPONENT_PTRS) + (missionZero * 20);
            c.housePieces = buildPieceLayers(HOUSE_DESCRIPTOR_PTRS, houseComponents, HOUSE_PATTERN_BYTES);
            c.houseComponentStream = houseComponents;
            for (int piece2 = 0; piece2 < 10; piece2++) {
                int descriptor = be32(this.rom, (piece2 * 4) + HOUSE_DESCRIPTOR_PTRS);
                c.houseX[piece2] = s16(this.rom, descriptor);
                c.houseY[piece2] = s16(this.rom, descriptor + 2);
            }
        }
        c.focusSource = this.providerData != null ? buildSelectedFocusSourceProvider(c) : buildSelectedFocusSource(c);
        c.focusPalette = buildFocusPalette(c);
        SimState end = simulateToCompletion(c);
        c.focusStartTick = end.focusStartTick;
        c.completionTick = end.completionTick;
        this.cache = c;
        this.cachedTick = Integer.MIN_VALUE;
        this.cachedFrame = null;
    }

    private byte[][][] buildPieceLayers(int descriptorPointerTable, int componentStream, int patternBytes) {
        byte[][][] pieces = (byte[][][]) Array.newInstance((Class<?>) Byte.TYPE, 10, 2, 29568);
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
            int descriptor2 = descriptor + 6;
            int tileIndex2 = tileIndex;
            while (true) {
                blitComponent(pieces[slot], patternBytes, tileIndex2, x, y, code, mode);
                tileIndex2 += be16(this.rom, (code * 2) + COMPONENT_TILE_COUNT);
                if (be32(this.rom, descriptor2) == 0) {
                    break;
                }
                x += s16(this.rom, descriptor2);
                y += s16(this.rom, descriptor2 + 2);
                code = be16(this.rom, descriptor2 + 4);
                descriptor2 += 6;
            }
            slot++;
            tileIndex = tileIndex2;
            components = components2;
        }
        return pieces;
    }

    private void blitComponent(byte[][] layers, int sourceBase, int firstTile, int x, int y, int code, int mode) {
        boolean z;
        GenesisCampaignTransitionRenderer genesisCampaignTransitionRenderer = this;
        int mode2 = mode;
        int layer = 0;
        boolean z2 = true;
        if (mode2 > 1) {
            layer = 1;
            mode2 -= 2;
        }
        int tilesWide = be16(genesisCampaignTransitionRenderer.rom, (code * 2) + COMPONENT_WIDTH) + 1;
        int tilesHigh = be16(genesisCampaignTransitionRenderer.rom, (code * 2) + COMPONENT_HEIGHT) + 1;
        int dx0 = x - 24;
        int dy0 = y - 48;
        int tile = firstTile;
        int cx = 0;
        while (cx < tilesWide) {
            int cy = 0;
            while (cy < tilesHigh) {
                int tileOffset = sourceBase + (tile * 32);
                checkRange(genesisCampaignTransitionRenderer.rom, tileOffset, 32);
                int py = 0;
                while (py < 8) {
                    int yy = (cy * 8) + dy0 + py;
                    if (yy >= 0 && yy < 112) {
                        int pair = 0;
                        while (pair < 4) {
                            int packed = genesisCampaignTransitionRenderer.rom[tileOffset + (py * 4) + pair] & 255;
                            if (mode2 != 0) {
                                z = z2;
                                packed = genesisCampaignTransitionRenderer.rom[packed + COMPONENT_BYTE_REMAP] & 255;
                            } else {
                                z = z2;
                            }
                            int px = (cx * 8) + dx0 + (pair * 2);
                            int hi = packed >>> 4;
                            int mode3 = mode2;
                            int mode4 = packed & 15;
                            int layer2 = layer;
                            if (hi != 0 && px >= 0 && px < BACKDROP_W) {
                                layers[layer2][(yy * BACKDROP_W) + px] = (byte) hi;
                            }
                            if (mode4 != 0 && px + 1 >= 0) {
                                if (px + 1 < BACKDROP_W) {
                                    layers[layer2][(yy * BACKDROP_W) + px + 1] = (byte) mode4;
                                }
                            }
                            pair++;
                            genesisCampaignTransitionRenderer = this;
                            mode2 = mode3;
                            z2 = z;
                            layer = layer2;
                        }
                    }
                    py++;
                    genesisCampaignTransitionRenderer = this;
                    mode2 = mode2;
                    z2 = z2;
                    layer = layer;
                }
                tile++;
                cy++;
                genesisCampaignTransitionRenderer = this;
            }
            cx++;
            genesisCampaignTransitionRenderer = this;
        }
    }

    private byte[][][] buildPieceLayersProvider(GeometryModel geometry, byte[] patterns, byte[] modes) {
        byte[][][] pieces = (byte[][][]) Array.newInstance((Class<?>) Byte.TYPE, 10, 2, 29568);
        if (modes.length != 20) {
            throw new IllegalArgumentException("Installed campaign mode record size mismatch");
        }
        for (int slot = 0; slot < 10; slot++) {
            int mode = be16(modes, slot * 2);
            for (GeometryComponent component : geometry.slots[slot]) {
                blitProviderComponent(pieces[slot], patterns, component, mode);
            }
        }
        return pieces;
    }

    private void blitProviderComponent(byte[][] layers, byte[] patterns, GeometryComponent component, int mode) {
        boolean z;
        byte[] bArr = patterns;
        GeometryComponent geometryComponent = component;
        int mode2 = mode;
        int layer = 0;
        boolean z2 = true;
        if (mode2 > 1) {
            layer = 1;
            mode2 -= 2;
        }
        int dx0 = geometryComponent.f4x - 24;
        int dy0 = geometryComponent.f5y - 48;
        int tile = geometryComponent.firstTile;
        int cx = 0;
        while (cx < geometryComponent.tilesWide) {
            int cy = 0;
            while (cy < geometryComponent.tilesHigh) {
                int tileOffset = tile * 32;
                checkRange(bArr, tileOffset, 32);
                int py = 0;
                while (py < 8) {
                    int yy = (cy * 8) + dy0 + py;
                    if (yy >= 0 && yy < 112) {
                        int pair = 0;
                        while (pair < 4) {
                            int packed = bArr[(py * 4) + tileOffset + pair] & 255;
                            if (mode2 != 0) {
                                z = z2;
                                packed = this.providerData.byteRemap[packed] & 255;
                            } else {
                                z = z2;
                            }
                            int px = (cx * 8) + dx0 + (pair * 2);
                            int hi = packed >>> 4;
                            int lo = packed & 15;
                            int mode3 = mode2;
                            if (hi != 0 && px >= 0 && px < BACKDROP_W) {
                                layers[layer][(yy * BACKDROP_W) + px] = (byte) hi;
                            }
                            if (lo != 0 && px + 1 >= 0) {
                                if (px + 1 < BACKDROP_W) {
                                    layers[layer][(yy * BACKDROP_W) + px + 1] = (byte) lo;
                                }
                            }
                            pair++;
                            bArr = patterns;
                            mode2 = mode3;
                            z2 = z;
                        }
                    }
                    py++;
                    bArr = patterns;
                    mode2 = mode2;
                    z2 = z2;
                }
                tile++;
                cy++;
                bArr = patterns;
                geometryComponent = component;
            }
            cx++;
            bArr = patterns;
            geometryComponent = component;
        }
    }

    private void drawRemainingMap(int[] pixels, int[] palette, Cache c, int mask) {
        int[] pixels2;
        int[] palette2;
        int layer = 0;
        while (layer < 2) {
            int slot = 0;
            while (slot < 10) {
                if (maskContainsSlot(mask, slot)) {
                    pixels2 = pixels;
                    palette2 = palette;
                    drawPieceLayerAt(pixels2, palette2, c.staticPieces[slot][layer], layer, 24, BACKDROP_Y);
                } else {
                    pixels2 = pixels;
                    palette2 = palette;
                }
                slot++;
                pixels = pixels2;
                palette = palette2;
            }
            int[] pixels3 = pixels;
            int[] palette3 = palette;
            for (int slot2 = 0; slot2 < 10; slot2++) {
                if (maskContainsSlot(mask, slot2)) {
                    drawPieceLayerAt(pixels3, palette3, c.housePieces[slot2][layer], layer, 24, BACKDROP_Y);
                }
            }
            layer++;
            pixels = pixels3;
            palette = palette3;
        }
    }

    private void drawFallingPieces(int[] pixels, int[] palette, Cache c, FallingSlot[] slots) {
        int i = 0;
        while (i < slots.length) {
            FallingSlot s = slots[i];
            if (s.piece >= 0) {
                int dy = (int) (s.displacementFixed >> 16);
                int layer = 0;
                while (layer < 2) {
                    int[] pixels2 = pixels;
                    int[] palette2 = palette;
                    drawPieceLayerAt(pixels2, palette2, c.staticPieces[s.piece][layer], layer, 24, dy + BACKDROP_Y);
                    drawPieceLayerAt(pixels2, palette2, c.housePieces[s.piece][layer], layer, 24, dy + BACKDROP_Y);
                    layer++;
                    pixels = pixels2;
                    palette = palette2;
                }
            }
            i++;
            pixels = pixels;
            palette = palette;
        }
    }

    private static void drawPieceLayerAt(int[] pixels, int[] palette, byte[] src, int layer, int originX, int originY) {
        int sx;
        int paletteBase = layer * 16;
        for (int y = 0; y < 112; y++) {
            int sy = originY + y;
            if (sy >= 0 && sy < 224) {
                int row = y * BACKDROP_W;
                for (int x = 0; x < BACKDROP_W; x++) {
                    int ci = src[row + x] & 255;
                    if (ci != 0 && (sx = originX + x) >= 0 && sx < 320) {
                        pixels[(sy * 320) + sx] = palette[paletteBase + ci];
                    }
                }
            }
        }
    }

    private static void overlay(byte[][] dst, byte[][] src) {
        for (int layer = 0; layer < 2; layer++) {
            byte[] d = dst[layer];
            byte[] s = src[layer];
            for (int i = 0; i < d.length; i++) {
                if (s[i] != 0) {
                    d[i] = s[i];
                }
            }
        }
    }

    private static void drawLayersAt(int[] pixels, int[] palette, byte[][] layers, int originX, int originY) {
        int sx;
        for (int layer = 0; layer < 2; layer++) {
            int paletteBase = layer * 16;
            byte[] src = layers[layer];
            for (int y = 0; y < 112; y++) {
                int sy = originY + y;
                if (sy >= 0 && sy < 224) {
                    int row = y * BACKDROP_W;
                    for (int x = 0; x < BACKDROP_W; x++) {
                        int ci = src[row + x] & 255;
                        if (ci != 0 && (sx = originX + x) >= 0 && sx < 320) {
                            pixels[(sy * 320) + sx] = palette[paletteBase + ci];
                        }
                    }
                }
            }
        }
    }

    private byte[] buildSelectedFocusSourceProvider(Cache c) {
        byte[] dst = new byte[12544];
        blitSelectedRawProvider(dst, this.providerData.houseGeometry, this.providerData.housePatterns, c.selectedPiece, 24, 48);
        GeometryComponent houseFirst = this.providerData.houseGeometry.slots[c.selectedPiece][0];
        GeometryComponent staticFirst = this.providerData.staticGeometry.slots[c.selectedPiece][0];
        int x = (24 - houseFirst.f4x) + staticFirst.f4x;
        int y = (48 - houseFirst.f5y) + staticFirst.f5y;
        blitSelectedRawProvider(dst, this.providerData.staticGeometry, this.providerData.staticPatterns, c.selectedPiece, x, y);
        return dst;
    }

    private static void blitSelectedRawProvider(byte[] dst, GeometryModel geometry, byte[] patterns, int selectedPiece, int initialX, int initialY) {
        int px;
        int i;
        byte[] bArr = patterns;
        GeometryComponent[] components = geometry.slots[selectedPiece];
        int i2 = 0;
        GeometryComponent first = components[0];
        int length = components.length;
        while (i2 < length) {
            GeometryComponent component = components[i2];
            int x = (initialX + component.f4x) - first.f4x;
            int y = (initialY + component.f5y) - first.f5y;
            int dx0 = (x - 24) & 504;
            int dy0 = y - 48;
            int tile = component.firstTile;
            int cx = 0;
            while (cx < component.tilesWide) {
                int cy = 0;
                while (cy < component.tilesHigh) {
                    int tileOffset = tile * 32;
                    checkRange(bArr, tileOffset, 32);
                    int py = 0;
                    while (py < 8) {
                        int yy = (cy * 8) + dy0 + py;
                        if (yy >= 0 && yy < 112) {
                            int hi = 0;
                            while (true) {
                                int yy2 = yy;
                                if (hi < 4) {
                                    int packed = patterns[(py * 4) + tileOffset + hi] & 255;
                                    int packed2 = dx0 + (cx * 8) + (hi * 2);
                                    int pair = hi;
                                    int pair2 = packed >>> 4;
                                    GeometryComponent[] components2 = components;
                                    int lo = packed & 15;
                                    if (pair2 == 0 || packed2 < 0) {
                                        px = packed2;
                                        i = i2;
                                    } else {
                                        i = i2;
                                        if (packed2 < 112) {
                                            px = packed2;
                                            dst[(yy2 * 112) + packed2] = (byte) pair2;
                                        } else {
                                            px = packed2;
                                        }
                                    }
                                    if (lo != 0 && px + 1 >= 0 && px + 1 < 112) {
                                        dst[(yy2 * 112) + px + 1] = (byte) lo;
                                    }
                                    hi = pair + 1;
                                    yy = yy2;
                                    components = components2;
                                    i2 = i;
                                }
                            }
                        }
                        py++;
                        components = components;
                        i2 = i2;
                    }
                    tile++;
                    cy++;
                    bArr = patterns;
                }
                cx++;
                bArr = patterns;
            }
            i2++;
            bArr = patterns;
        }
    }

    private byte[] buildSelectedFocusSource(Cache c) {
        byte[] dst = new byte[12544];
        blitSelectedRaw(dst, HOUSE_DESCRIPTOR_PTRS, c.houseComponentStream, HOUSE_PATTERN_BYTES, c.selectedPiece, 24, 48);
        int staticDescriptor = be32(this.rom, (c.selectedPiece * 4) + STATIC_DESCRIPTOR_PTRS);
        int staticX = s16(this.rom, staticDescriptor);
        int staticY = s16(this.rom, staticDescriptor + 2);
        int x = (24 - c.houseX[c.selectedPiece]) + staticX;
        int y = (48 - c.houseY[c.selectedPiece]) + staticY;
        blitSelectedRaw(dst, STATIC_DESCRIPTOR_PTRS, STATIC_COMPONENT_STREAM, STATIC_PATTERN_BYTES, c.selectedPiece, x, y);
        return dst;
    }

    private void blitSelectedRaw(byte[] dst, int descriptorPointerTable, int componentStream, int patternBytes, int selectedPiece, int initialX, int initialY) {
        int tileIndex = 0;
        int components = componentStream;
        int slot = 0;
        while (slot < 10) {
            int descriptor = be32(this.rom, (slot * 4) + descriptorPointerTable);
            int code = be16(this.rom, descriptor + 4);
            be16(this.rom, components);
            int components2 = components + 2;
            int y = initialY;
            int descriptor2 = descriptor + 6;
            int code2 = code;
            int tileIndex2 = tileIndex;
            int code3 = initialX;
            while (true) {
                if (slot == selectedPiece) {
                    blitRawFocusComponent(dst, patternBytes, tileIndex2, code3, y, code2);
                }
                tileIndex2 += be16(this.rom, (code2 * 2) + COMPONENT_TILE_COUNT);
                if (be32(this.rom, descriptor2) == 0) {
                    break;
                }
                code3 += s16(this.rom, descriptor2);
                y += s16(this.rom, descriptor2 + 2);
                code2 = be16(this.rom, descriptor2 + 4);
                descriptor2 += 6;
            }
            slot++;
            tileIndex = tileIndex2;
            components = components2;
        }
    }

    private void blitRawFocusComponent(byte[] dst, int sourceBase, int firstTile, int x, int y, int code) {
        int tilesWide;
        GenesisCampaignTransitionRenderer genesisCampaignTransitionRenderer = this;
        int tilesWide2 = be16(genesisCampaignTransitionRenderer.rom, (code * 2) + COMPONENT_WIDTH) + 1;
        int tilesHigh = be16(genesisCampaignTransitionRenderer.rom, (code * 2) + COMPONENT_HEIGHT) + 1;
        int dx0 = (x - 24) & 504;
        int dy0 = y - 48;
        int tile = firstTile;
        int cx = 0;
        while (cx < tilesWide2) {
            int cy = 0;
            while (cy < tilesHigh) {
                int tileOffset = sourceBase + (tile * 32);
                checkRange(genesisCampaignTransitionRenderer.rom, tileOffset, 32);
                int py = 0;
                while (py < 8) {
                    int yy = (cy * 8) + dy0 + py;
                    if (yy >= 0 && yy < 112) {
                        int pair = 0;
                        while (pair < 4) {
                            int packed = genesisCampaignTransitionRenderer.rom[(py * 4) + tileOffset + pair] & 255;
                            int px = (cx * 8) + dx0 + (pair * 2);
                            int hi = packed >>> 4;
                            int lo = packed & 15;
                            if (hi != 0 && px >= 0 && px < 112) {
                                dst[(yy * 112) + px] = (byte) hi;
                            }
                            if (lo == 0 || px + 1 < 0) {
                                tilesWide = tilesWide2;
                            } else {
                                tilesWide = tilesWide2;
                                if (px + 1 < 112) {
                                    dst[(yy * 112) + px + 1] = (byte) lo;
                                }
                            }
                            pair++;
                            genesisCampaignTransitionRenderer = this;
                            tilesWide2 = tilesWide;
                        }
                    }
                    py++;
                    genesisCampaignTransitionRenderer = this;
                    tilesWide2 = tilesWide2;
                }
                tile++;
                cy++;
                genesisCampaignTransitionRenderer = this;
            }
            cx++;
            genesisCampaignTransitionRenderer = this;
        }
    }

    private int[] buildFocusPalette(Cache c) {
        int[] out = (int[]) c.palette.clone();
        if (this.providerData != null) {
            byte[] modes = this.providerData.houseModesFor(c.frontendHouse, c.missionOneBased - 1);
            int mode = be16(modes, c.selectedPiece * 2);
            if (mode != 0) {
                int offset = be16(this.providerData.focusPaletteOffsets, mode * 2);
                for (int i = 0; i < 6; i++) {
                    out[i] = genesisColor(be16(this.providerData.commonPalette, (i * 2) + offset));
                }
            }
        } else {
            int mode2 = be16(this.rom, c.houseComponentStream + (c.selectedPiece * 2));
            if (mode2 != 0) {
                int offset2 = be16(this.rom, (mode2 * 2) + FOCUS_PALETTE_OFFSET_TABLE);
                for (int i2 = 0; i2 < 6; i2++) {
                    out[i2] = genesisColor(be16(this.rom, COMMON_PALETTE + offset2 + (i2 * 2)));
                }
            }
        }
        return out;
    }

    private Bitmap renderZoomFrame(Cache c, int frame) {
        int record;
        int py;
        int ci;
        int px;
        int r;
        int frame2 = Math.max(0, Math.min(15, frame));
        byte[] zoom = this.providerData != null ? this.providerData.zoomRecords : this.rom;
        char c2 = 16;
        if (this.providerData != null) {
            record = ((c.selectedPiece * 16) + frame2) * 12;
        } else {
            record = (c.selectedPiece * ZOOM_PIECE_STRIDE) + ZOOM_TABLE + (frame2 * 12);
        }
        long step = be32(zoom, record + 4) & 4294967295L;
        int width = be16(zoom, record + 8) * 8;
        int height = be16(zoom, record + 10) * 8;
        int cumulativeX = 0;
        int cumulativeY = 0;
        for (int i = 1; i <= frame2; i++) {
            if (this.providerData != null) {
                r = ((c.selectedPiece * 16) + i) * 12;
            } else {
                r = (c.selectedPiece * ZOOM_PIECE_STRIDE) + ZOOM_TABLE + (i * 12);
            }
            cumulativeX += s16(zoom, r);
            cumulativeY += s16(zoom, r + 2);
        }
        int originX = c.houseX[c.selectedPiece] - cumulativeX;
        int originY = c.houseY[c.selectedPiece] + 24 + cumulativeY;
        int[] pixels = new int[71680];
        int y = 0;
        while (true) {
            char c3 = c2;
            if (y < height) {
                long step2 = step;
                int srcY = (int) ((y * step2) >>> c3);
                if (srcY >= 0 && srcY < 112 && (py = originY + y) >= 0 && py < 224) {
                    int x = 0;
                    while (x < width) {
                        int frame3 = frame2;
                        byte[] zoom2 = zoom;
                        int srcX = (int) ((x * step2) >>> c3);
                        if (srcX >= 0 && srcX < 112 && (ci = c.focusSource[(srcY * 112) + srcX] & 255) != 0 && (px = originX + x) >= 0 && px < 320) {
                            pixels[(py * 320) + px] = c.focusPalette[ci];
                        }
                        x++;
                        frame2 = frame3;
                        zoom = zoom2;
                    }
                }
                y++;
                c2 = c3;
                step = step2;
                frame2 = frame2;
                zoom = zoom;
            } else {
                return Bitmap.createBitmap(pixels, 320, 224, Bitmap.Config.ARGB_8888);
            }
        }
    }

    private static boolean maskContainsSlot(int mask, int descriptorSlot) {
        return ((1 << (9 - descriptorSlot)) & mask) != 0;
    }

    private SimState simulate(Cache c, int targetTick) {
        SimState s = new SimState(c.selectedPiece);
        processInstantaneous(c, s);
        while (s.tick < targetTick && s.phase != 6) {
            advanceOneVBlank(c, s);
            processInstantaneous(c, s);
        }
        return s;
    }

    private SimState simulateToCompletion(Cache c) {
        SimState s = new SimState(c.selectedPiece);
        processInstantaneous(c, s);
        int guard = 0;
        while (s.phase != 6) {
            guard++;
            if (guard > 4000) {
                throw new IllegalStateException("Campaign map transition simulation guard");
            }
            advanceOneVBlank(c, s);
            processInstantaneous(c, s);
        }
        return s;
    }

    private static void processInstantaneous(Cache c, SimState s) {
        boolean again = true;
        while (again && s.phase != 6) {
            again = false;
            if (s.phase == 0) {
                if (s.waitTicks <= 0) {
                    s.phase = 1;
                    again = true;
                }
            } else if (s.phase == 1) {
                if (s.specialDelayTicks > 0) {
                    return;
                }
                while (s.nextPiece >= 0) {
                    int piece = s.nextPiece;
                    if (piece == 7 && !s.piece7DelayStarted) {
                        s.piece7DelayStarted = true;
                        s.specialDelayTicks = 21;
                        return;
                    } else if (piece == c.selectedPiece) {
                        s.nextPiece--;
                    } else {
                        int objectSlot = allocateObjectSlot(s.slots, piece);
                        if (objectSlot < 0) {
                            return;
                        }
                        FallingSlot object = s.slots[objectSlot];
                        object.piece = piece;
                        object.velocityFixed = 0L;
                        object.displacementFixed = 0L;
                        s.remainingMask &= ~(1 << (9 - piece));
                        s.nextPiece--;
                    }
                }
                s.phase = 2;
                s.waitTicks = 51;
                again = true;
            } else if (s.phase == 2) {
                if (s.waitTicks <= 0) {
                    s.phase = 3;
                    s.waitTicks = 1;
                }
            } else if (s.phase == 3) {
                if (s.waitTicks > 0) {
                    continue;
                } else {
                    int slot = allocateObjectSlot(s.slots, c.selectedPiece);
                    if (slot < 0) {
                        s.waitTicks = 1;
                        return;
                    }
                    FallingSlot selected = s.slots[slot];
                    selected.piece = c.selectedPiece;
                    selected.velocityFixed = 0L;
                    selected.displacementFixed = 0L;
                    selected.paused = true;
                    s.phase = 4;
                    s.focusStartTick = s.tick;
                    s.waitTicks = 5;
                }
            } else if (s.phase == 4) {
                if (s.waitTicks <= 0) {
                    s.phase = 5;
                    s.zoomFrame = 0;
                    s.waitTicks = 16;
                }
            } else if (s.phase == 5 && s.waitTicks <= 0) {
                s.phase = 6;
                s.completionTick = s.tick;
            }
        }
    }

    private static int allocateObjectSlot(FallingSlot[] slots, int piece) {
        if (piece == 7) {
            return slots[2].piece < 0 ? 2 : -1;
        }
        for (int i = 0; i < slots.length; i++) {
            if (slots[i].piece < 0) {
                return i;
            }
        }
        return -1;
    }

    private static void advanceOneVBlank(Cache c, SimState s) {
        for (int i = 0; i < s.slots.length; i++) {
            FallingSlot object = s.slots[i];
            if (object.piece >= 0 && !object.paused) {
                object.velocityFixed += 16384;
                object.displacementFixed += object.velocityFixed;
                int y = c.houseY[object.piece] + ((int) (object.displacementFixed >> 16));
                if (y >= 224) {
                    object.clear();
                }
            }
        }
        int i2 = s.tick;
        s.tick = i2 + 1;
        if ((s.phase == 0 || s.phase == 2 || s.phase == 3 || s.phase == 4 || s.phase == 5) && s.waitTicks > 0) {
            s.waitTicks--;
        }
        if (s.phase == 5 && s.zoomFrame < 15) {
            s.zoomFrame++;
        }
        if (s.phase != 1 || s.specialDelayTicks <= 0) {
            return;
        }
        s.specialDelayTicks--;
    }

    private int[] decodePalette(int romHouse, int missionZero) {
        int[] out = new int[64];
        if (this.providerData != null) {
            ProviderData providerData = this.providerData;
            byte[] common = missionZero == 8 ? providerData.finalCommonPalette : providerData.commonPalette;
            for (int i = 0; i < 32; i++) {
                out[i] = genesisColor(be16(common, i * 2));
            }
            byte[] house = this.providerData.housePalettes[romHouse];
            for (int i2 = 0; i2 < 32; i2++) {
                out[i2 + 32] = genesisColor(be16(house, i2 * 2));
            }
        } else {
            int common2 = missionZero == 8 ? FINAL_MISSION_COMMON_PALETTE : COMMON_PALETTE;
            for (int i3 = 0; i3 < 32; i3++) {
                out[i3] = genesisColor(be16(this.rom, (i3 * 2) + common2));
            }
            int i4 = romHouse * 128;
            int house2 = i4 + HOUSE_PALETTES;
            for (int i5 = 0; i5 < 32; i5++) {
                out[i5 + 32] = genesisColor(be16(this.rom, (i5 * 2) + house2));
            }
        }
        return out;
    }

    private static int genesisColor(int word) {
        int r = (word >>> 1) & 7;
        int g = (word >>> 5) & 7;
        int b = (word >>> 9) & 7;
        return Color.rgb(Math.round((r * 255.0f) / 7.0f), Math.round((g * 255.0f) / 7.0f), Math.round((b * 255.0f) / 7.0f));
    }

    private static void checkHouseMission(int frontendHouse, int missionOneBased) {
        if (frontendHouse < 0 || frontendHouse > 2 || missionOneBased < 1 || missionOneBased > 9) {
            throw new IllegalArgumentException("Invalid Genesis campaign transition House/mission");
        }
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

    private static void checkRange(byte[] b, int o, int n) {
        if (o < 0 || n < 0 || o > b.length - n) {
            throw new IllegalArgumentException("Genesis campaign transition ROM range");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static GeometryModel parseGeometry(byte[] data) throws IOException {
        if (data.length < 8 || data[0] != 68 || data[1] != 77 || data[2] != 80 || data[3] != 71 || be16(data, 4) != 1 || be16(data, 6) != 10) {
            throw new IOException("Installed campaign geometry header mismatch");
        }
        int p = 8;
        GeometryComponent[][] slots = new GeometryComponent[10][];
        for (int slot = 0; slot < 10; slot++) {
            if (p > data.length - 2) {
                throw new IOException("Installed campaign geometry truncated");
            }
            int count = be16(data, p);
            p += 2;
            if (count < 1 || count > 32 || p > data.length - (count * 12)) {
                throw new IOException("Installed campaign geometry component count mismatch");
            }
            slots[slot] = new GeometryComponent[count];
            for (int i = 0; i < count; i++) {
                int x = s16(data, p);
                int y = s16(data, p + 2);
                int first = be16(data, p + 4);
                int w = be16(data, p + 6);
                int h = be16(data, p + 8);
                int tiles = be16(data, p + 10);
                p += 12;
                if (w < 1 || h < 1 || tiles < 1) {
                    throw new IOException("Installed campaign geometry component invalid");
                }
                slots[slot][i] = new GeometryComponent(x, y, first, w, h, tiles);
            }
        }
        if (p != data.length) {
            throw new IOException("Installed campaign geometry trailing bytes");
        }
        return new GeometryModel(slots);
    }

    private static final class ProviderData {
        final byte[] byteRemap;
        final byte[] commonPalette;
        final byte[] finalCommonPalette;
        final byte[] focusPaletteOffsets;
        final GeometryModel houseGeometry;
        final byte[] houseModes;
        final byte[][] housePalettes = new byte[3][];
        final byte[] housePatterns;
        final byte[] missionRecords;
        final GeometryModel staticGeometry;
        final byte[] staticModes;
        final byte[] staticPatterns;
        final byte[] zoomRecords;

        ProviderData(RomRuntimeFrontendAssets assets) throws IOException {
            this.staticGeometry = GenesisCampaignTransitionRenderer.parseGeometry(assets.read("frontend/campaign_transition/static_geometry.bin"));
            this.houseGeometry = GenesisCampaignTransitionRenderer.parseGeometry(assets.read("frontend/campaign_transition/house_geometry.bin"));
            this.staticPatterns = assets.read("frontend/campaign_transition/static_patterns.bin");
            this.housePatterns = assets.read("frontend/campaign_transition/house_patterns.bin");
            this.staticModes = assets.read("frontend/campaign_transition/static_modes.bin");
            this.houseModes = assets.read("frontend/campaign_transition/house_modes.bin");
            this.missionRecords = assets.read("frontend/campaign_transition/mission_records.bin");
            this.byteRemap = assets.read("frontend/campaign_transition/byte_remap.bin");
            this.zoomRecords = assets.read("frontend/campaign_transition/zoom_records.bin");
            this.focusPaletteOffsets = assets.read("frontend/campaign_transition/focus_palette_offsets.bin");
            this.commonPalette = assets.read("frontend/mentat/common_palette.bin");
            this.finalCommonPalette = assets.read("frontend/mentat/final_mission_common_palette.bin");
            this.housePalettes[0] = assets.read("frontend/mentat/radnor_harkonnen_palette.bin");
            this.housePalettes[1] = assets.read("frontend/mentat/cyril_atreides_palette.bin");
            this.housePalettes[2] = assets.read("frontend/mentat/ammon_ordos_palette.bin");
            if (this.staticModes.length != 20 || this.houseModes.length != 540 || this.missionRecords.length != 216 || this.byteRemap.length != 256 || this.zoomRecords.length != 1920 || this.focusPaletteOffsets.length != 8 || this.commonPalette.length != 64 || this.finalCommonPalette.length != 64) {
                throw new IOException("Installed campaign provider metadata size mismatch");
            }
            for (byte[] palette : this.housePalettes) {
                if (palette.length != 64) {
                    throw new IOException("Installed campaign House palette size mismatch");
                }
            }
        }

        byte[] houseModesFor(int frontendHouse, int missionZero) {
            int offset = ((frontendHouse * 9) + missionZero) * 20;
            byte[] out = new byte[20];
            System.arraycopy(this.houseModes, offset, out, 0, 20);
            return out;
        }
    }

    private static final class GeometryModel {
        final GeometryComponent[][] slots;

        GeometryModel(GeometryComponent[][] slots) {
            this.slots = slots;
        }
    }

    private static final class GeometryComponent {
        final int firstTile;
        final int tileCount;
        final int tilesHigh;
        final int tilesWide;

        /* renamed from: x */
        final int f4x;

        /* renamed from: y */
        final int f5y;

        GeometryComponent(int x, int y, int firstTile, int tilesWide, int tilesHigh, int tileCount) {
            this.f4x = x;
            this.f5y = y;
            this.firstTile = firstTile;
            this.tilesWide = tilesWide;
            this.tilesHigh = tilesHigh;
            this.tileCount = tileCount;
        }
    }

    private static final class Cache {
        int completionTick;
        int[] focusPalette;
        byte[] focusSource;
        int focusStartTick;
        int frontendHouse;
        int houseComponentStream;
        byte[][][] housePieces;
        int[] houseX;
        int[] houseY;
        int missionOneBased;
        int[] palette;
        int romHouse;
        int selectedPiece;
        byte[][][] staticPieces;

        private Cache() {
        }
    }

    private static final class FallingSlot {
        long displacementFixed;
        boolean paused;
        int piece;
        long velocityFixed;

        private FallingSlot() {
            this.piece = -1;
        }

        void clear() {
            this.piece = -1;
            this.velocityFixed = 0L;
            this.displacementFixed = 0L;
            this.paused = false;
        }
    }

    private static final class SimState {
        static final int PHASE_AFTER_DROP_HOLD = 2;
        static final int PHASE_DONE = 6;
        static final int PHASE_DROPPING = 1;
        static final int PHASE_FOCUS = 4;
        static final int PHASE_INITIAL_HOLD = 0;
        static final int PHASE_SELECTED_WAIT = 3;
        static final int PHASE_ZOOM = 5;
        boolean piece7DelayStarted;
        final FallingSlot[] slots;
        int specialDelayTicks;
        int tick;
        int zoomFrame;
        int phase = 0;
        int waitTicks = GenesisCampaignTransitionRenderer.INITIAL_MAP_HOLD_TICKS;
        int nextPiece = 9;
        int remainingMask = 1023;
        int focusStartTick = -1;
        int completionTick = -1;

        SimState(int selectedPiece) {
            this.slots = new FallingSlot[]{new FallingSlot(), new FallingSlot(), new FallingSlot(), new FallingSlot()};
        }
    }
}
