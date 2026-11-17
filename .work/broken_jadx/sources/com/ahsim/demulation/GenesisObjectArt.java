package com.ahsim.demulation;

import android.graphics.Bitmap;
import android.graphics.Color;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class GenesisObjectArt {
    private static final int EXPLOSION_SCRIPT_TABLE = 819454;
    private static final int FOOT_ANIM_TABLE = 444104;
    private static final int HARVESTER_EFFECT_LAYOUT_TABLE = 410094;
    private static final int HOUSE_PALETTE_TABLE = 38280;
    private static final int ORIENTATION_16_TABLE = 444040;
    private static final int ORIENTATION_8_TABLE = 443976;
    private static final int ORIENTATION_ALT_TABLE = 444008;
    private static final int PALETTE = 683160;
    private static final int PLACEMENT_GRID_GFX_A = 411462;
    private static final int PLACEMENT_GRID_GFX_B = 411718;
    private static final int SIEGE_TANK_COMPOSITE_TABLE = 193274;
    public static final int SPRITE_FIRST_PATTERN = 922;
    public static final int SPRITE_LOADER_BLOCKS = 36;
    private static final int SPRITE_LOADER_TABLE = 42124;
    private static final int STRUCTURE_INFO_TABLE = 440660;
    private static final int STRUCTURE_LAYOUT_COUNTS = 45216;
    private static final int STRUCTURE_LAYOUT_OFFSETS = 440128;
    private static final int STRUCTURE_LAYOUT_STRIDE = 18;
    private static final int STRUCTURE_REMOVE_VISUAL_TABLE = 441338;
    private static final int STRUCTURE_VISUAL_TABLE = 436668;
    private static final int TANK_COMPOSITE_TABLE = 191610;
    private static final int TRACKED_COMPOSITE_STRIDE = 26;
    private static final int UNIT_INFO_TABLE = 443836;
    private static final int[] VICTORY_FLYOVER_LAYOUTS = {46588, 46674, 46760, 46846};
    private static final int VISUAL_TABLE = 396940;
    public static final int VRAM_PATTERN_COUNT = 2048;
    private final Map<Integer, SpriteFrame> compositeFrameCache;
    private SpriteFrame constructionReadyFrame;
    private final Map<Integer, ExplosionAnimation> explosionAnimationCache;
    private final Map<Integer, SpriteFrame> frameCache;
    private final Map<Integer, SpriteFrame> harvesterEffectFrameCache;
    private final int[] housePaletteFlags;
    private int loadedSpritePatterns;
    private final int[] palette;
    private Bitmap placementGridIllegalCell;
    private Bitmap placementGridLegalCell;
    private SpriteFrame powerWarningFrame;
    private final boolean providerBacked;
    private final Map<Integer, byte[]> providerDirectLayouts;
    private final Map<Integer, ProviderDynamic> providerDynamics;
    private final byte[] providerPlacementGridPatterns;
    private final Map<Integer, ProviderVisual> providerVisuals;
    private SpriteFrame repairHammerFrame;
    private final byte[] rom;
    private final int[] structurePreferredBaseMetatiles;
    private final GenesisTerrainArt terrainArt;
    private final byte[] vramPatterns;

    private static final class ProviderVisual {
        final byte[] pieces;
        final int visualId;

        ProviderVisual(int visualId, byte[] pieces) {
            this.visualId = visualId;
            this.pieces = pieces;
        }
    }

    private static final class ProviderDynamic {
        final int minPattern;
        final int patternCount;
        final byte[] pixels;

        ProviderDynamic(int minPattern, int patternCount, byte[] pixels) {
            this.minPattern = minPattern;
            this.patternCount = patternCount;
            this.pixels = pixels;
        }
    }

    public static final class ExplosionAnimation {
        public final int[] durations;
        public final SpriteFrame[] frames;
        public final int totalTicks;

        ExplosionAnimation(SpriteFrame[] frames, int[] durations, int totalTicks) {
            this.frames = frames;
            this.durations = durations;
            this.totalTicks = totalTicks;
        }

        public SpriteFrame frameAtTick(int tick) {
            if (this.frames.length == 0) {
                return null;
            }
            int t = Math.max(0, tick);
            for (int i = 0; i < this.frames.length; i++) {
                int d = Math.max(1, this.durations[i]);
                if (t < d) {
                    return this.frames[i];
                }
                t -= d;
            }
            return null;
        }
    }

    public static final class SpriteFrame {
        public final Bitmap bitmap;
        public final int minX;
        public final int minY;
        public final int transform;
        public final int visualId;

        SpriteFrame(Bitmap bitmap, int minX, int minY, int visualId, int transform) {
            this.bitmap = bitmap;
            this.minX = minX;
            this.minY = minY;
            this.visualId = visualId;
            this.transform = transform;
        }
    }

    public GenesisObjectArt(byte[] rom, GenesisTerrainArt terrainArt) {
        this.providerVisuals = new HashMap();
        this.providerDynamics = new HashMap();
        this.providerDirectLayouts = new HashMap();
        this.vramPatterns = new byte[65536];
        this.palette = new int[64];
        this.housePaletteFlags = new int[8];
        this.structurePreferredBaseMetatiles = new int[19];
        this.frameCache = new HashMap();
        this.compositeFrameCache = new HashMap();
        this.harvesterEffectFrameCache = new HashMap();
        this.explosionAnimationCache = new HashMap();
        if (rom == null || rom.length < 819200 || terrainArt == null) {
            throw new IllegalArgumentException("ROM/terrain art missing for Genesis object decoder");
        }
        this.rom = rom;
        this.providerBacked = false;
        this.providerPlacementGridPatterns = null;
        this.terrainArt = terrainArt;
        decodePaletteAndHouseFlags();
        loadTacticalSpritePatterns();
        decodeStructurePreferredBases();
        verifyScena001Anchors();
    }

    public GenesisObjectArt(RomRuntimeWorldAssets assets, GenesisTerrainArt terrainArt) throws IOException {
        this.providerVisuals = new HashMap();
        this.providerDynamics = new HashMap();
        this.providerDirectLayouts = new HashMap();
        this.vramPatterns = new byte[65536];
        this.palette = new int[64];
        this.housePaletteFlags = new int[8];
        this.structurePreferredBaseMetatiles = new int[19];
        this.frameCache = new HashMap();
        this.compositeFrameCache = new HashMap();
        this.harvesterEffectFrameCache = new HashMap();
        this.explosionAnimationCache = new HashMap();
        if (assets == null || terrainArt == null) {
            throw new IOException("World media/terrain art missing for Genesis object decoder");
        }
        this.rom = null;
        this.providerBacked = true;
        this.terrainArt = terrainArt;
        byte[] paletteBytes = assets.read("terrain/palette.bin");
        decodeProviderPaletteAndHouseFlags(paletteBytes);
        loadProviderStaticPatterns(assets.read("tactical/static_patterns_922_2047.bin"));
        parseProviderVisualCatalog(assets.read("tactical/visual_catalog.bin"));
        parseProviderDynamicPatterns(assets.read("tactical/dynamic_patterns.bin"));
        parseProviderDirectLayouts(assets.read("tactical/direct_layouts.bin"));
        this.providerPlacementGridPatterns = assets.read("tactical/placement_grid_patterns.bin");
        if (this.providerPlacementGridPatterns.length != 512) {
            throw new IOException("Installed placement-grid graphics have wrong size");
        }
        decodeStructurePreferredBases();
        verifyRecoveredPresentationAnchors();
    }

    public int getLoadedSpritePatterns() {
        return this.loadedSpritePatterns;
    }

    public SpriteFrame getVictoryFlyoverFormation(int variant, int frontendHouse) {
        int v = Math.floorMod(variant, VICTORY_FLYOVER_LAYOUTS.length);
        int[] frontendToRomHouse = {1, 0, 2};
        int h = frontendToRomHouse[Math.max(0, Math.min(2, frontendHouse))];
        if (this.providerBacked) {
            return decodeProviderDirectLayout(1, v, 0, h, 46454, false);
        }
        return decodeLayout(VICTORY_FLYOVER_LAYOUTS[v], 0, h, 46454, -1, false);
    }

    public SpriteFrame getRepairHammerFrame() {
        if (this.repairHammerFrame == null) {
            this.repairHammerFrame = decodeVisual(TRACKED_COMPOSITE_STRIDE, 0, 0);
        }
        return this.repairHammerFrame;
    }

    public SpriteFrame getPowerWarningFrame() {
        if (this.powerWarningFrame == null) {
            this.powerWarningFrame = decodeVisual(177, 0, 0);
        }
        return this.powerWarningFrame;
    }

    public SpriteFrame getConstructionReadyFrame() {
        if (this.constructionReadyFrame == null) {
            this.constructionReadyFrame = decodeVisual(24, 0, 0);
        }
        return this.constructionReadyFrame;
    }

    public Bitmap getConstructionPlacementCell(boolean legal) {
        if (legal) {
            if (this.placementGridLegalCell == null) {
                this.placementGridLegalCell = decodePlacementGridCell(3);
            }
            return this.placementGridLegalCell;
        }
        if (this.placementGridIllegalCell == null) {
            this.placementGridIllegalCell = decodePlacementGridCell(0);
        }
        return this.placementGridIllegalCell;
    }

    private Bitmap decodePlacementGridCell(int paletteLine) {
        int romBase;
        int romBase2;
        boolean z = this.providerBacked;
        int i = PLACEMENT_GRID_GFX_B;
        if (!z) {
            checkRange(PLACEMENT_GRID_GFX_A, 256);
            checkRange(PLACEMENT_GRID_GFX_B, 256);
        }
        int[] pixels = new int[RazorTerrainAtlas.HEIGHT];
        int tileX = 0;
        while (tileX < 4) {
            int tileY = 0;
            while (tileY < 4) {
                int pattern = (tileX * 4) + tileY;
                int srcBase = pattern * 32;
                int py = 0;
                while (py < 8) {
                    int px = 0;
                    while (px < 8) {
                        if (this.providerBacked) {
                            romBase2 = this.providerPlacementGridPatterns[(py * 4) + srcBase + (px >>> 1)] & 255;
                        } else {
                            if (pattern < 8) {
                                romBase = (pattern * 32) + PLACEMENT_GRID_GFX_A;
                            } else {
                                romBase = ((pattern - 8) * 32) + i;
                            }
                            romBase2 = m5u8((py * 4) + romBase + (px >>> 1));
                        }
                        int ci = (px & 1) != 0 ? romBase2 & 15 : (romBase2 >>> 4) & 15;
                        if (ci != 0) {
                            int x = (tileX * 8) + px;
                            int y = (tileY * 8) + py;
                            pixels[(y * 32) + x] = this.palette[((paletteLine & 3) * 16) + ci];
                        }
                        px++;
                        i = PLACEMENT_GRID_GFX_B;
                    }
                    py++;
                    i = PLACEMENT_GRID_GFX_B;
                }
                tileY++;
                i = PLACEMENT_GRID_GFX_B;
            }
            tileX++;
            i = PLACEMENT_GRID_GFX_B;
        }
        return Bitmap.createBitmap(pixels, 32, 32, Bitmap.Config.ARGB_8888);
    }

    public ExplosionAnimation getExplosionAnimation(int explosionType) {
        return getExplosionAnimation(explosionType, 0);
    }

    public ExplosionAnimation getExplosionAnimation(int explosionType, int paletteVariant) {
        if (explosionType >= 0) {
            int i = 32;
            if (explosionType < 32) {
                int paletteVariant2 = paletteVariant & 7;
                int cacheKey = (paletteVariant2 << 8) | explosionType;
                ExplosionAnimation cached = this.explosionAnimationCache.get(Integer.valueOf(cacheKey));
                if (cached != null) {
                    return cached;
                }
                SpriteFrame[] tempFrames = new SpriteFrame[32];
                int[] tempDurations = new int[32];
                int count = 0;
                int total = 0;
                if (this.providerBacked) {
                    if (explosionType >= RecoveredWorldPresentationData.EXPLOSION_SCRIPTS.length) {
                        return null;
                    }
                    int[] script = RecoveredWorldPresentationData.EXPLOSION_SCRIPTS[explosionType];
                    for (int i2 = 0; i2 + 1 < script.length; i2 += 2) {
                        int visual = script[i2];
                        int duration = script[i2 + 1];
                        tempFrames[count] = decodeVisual(visual, 0, paletteVariant2);
                        tempDurations[count] = Math.max(1, duration);
                        total += tempDurations[count];
                        count++;
                    }
                } else {
                    int tableEntry = (explosionType * 4) + EXPLOSION_SCRIPT_TABLE;
                    int i3 = 4;
                    checkRange(tableEntry, 4);
                    int script2 = ptr24(be32(tableEntry));
                    checkRange(script2, 4);
                    int i4 = 0;
                    while (i4 < i) {
                        int pair = script2 + (i4 * 4);
                        checkRange(pair, i3);
                        int visual2 = be16(pair);
                        int duration2 = be16(pair + 2);
                        if ((visual2 == 0 && duration2 == 65535) || duration2 == 65535) {
                            break;
                        }
                        tempFrames[count] = decodeVisual(visual2, 0, paletteVariant2);
                        tempDurations[count] = Math.max(1, duration2);
                        total += tempDurations[count];
                        count++;
                        i4++;
                        i = 32;
                        i3 = 4;
                    }
                }
                SpriteFrame[] frames = new SpriteFrame[count];
                int[] durations = new int[count];
                System.arraycopy(tempFrames, 0, frames, 0, count);
                System.arraycopy(tempDurations, 0, durations, 0, count);
                ExplosionAnimation animation = new ExplosionAnimation(frames, durations, total);
                this.explosionAnimationCache.put(Integer.valueOf(cacheKey), animation);
                return animation;
            }
        }
        return null;
    }

    public SpriteFrame getUnitFrame(int unitType, int orientation, int spriteOffset, int house) {
        return getUnitFrame(unitType, orientation, orientation, spriteOffset, house);
    }

    public SpriteFrame getUnitFrame(int unitType, int bodyOrientation, int turretOrientation, int spriteOffset, int house) {
        return getUnitFrame(unitType, bodyOrientation, turretOrientation, spriteOffset, house, false);
    }

    public SpriteFrame getUnitFrame(int unitType, int bodyOrientation, int turretOrientation, int spriteOffset, int house, boolean carryallLoaded) {
        int info;
        int visual;
        if (unitType >= 0 && unitType < 27) {
            if (unitType == 9 || unitType == 10) {
                int visual2 = house & 7;
                return getTrackedCompositeFrame(unitType, bodyOrientation, turretOrientation, visual2);
            }
            if (this.providerBacked) {
                info = RecoveredWorldPresentationData.UNIT_BASE_VISUAL[unitType];
                visual = RecoveredWorldPresentationData.UNIT_VISUAL_MODE[unitType];
            } else {
                int visual3 = unitType * 4;
                int info2 = ptr24(be32(visual3 + UNIT_INFO_TABLE));
                checkRange(info2, 78);
                int visual4 = be16(info2 + 70);
                int be16 = be16(info2 + 76);
                info = visual4;
                visual = be16;
            }
            int transform = 0;
            if (unitType == 0 && carryallLoaded) {
                info += 3;
            }
            if (visual == 2) {
                int bucket = ((bodyOrientation + 8) & 255) >>> 4;
                if (!this.providerBacked) {
                    info += be16((bucket * 4) + ORIENTATION_16_TABLE);
                    transform = be16((bucket * 4) + ORIENTATION_16_TABLE + 2);
                } else {
                    info += RecoveredWorldPresentationData.ORIENTATION_16[bucket][0];
                    transform = RecoveredWorldPresentationData.ORIENTATION_16[bucket][1];
                }
            } else if (visual == 3 || visual == 4) {
                int bucket2 = ((bodyOrientation + 16) & 255) >>> 5;
                if (!this.providerBacked) {
                    int group = be16((bucket2 * 4) + ORIENTATION_8_TABLE);
                    info += (group * 3) + m5u8((spriteOffset & 3) + FOOT_ANIM_TABLE);
                    transform = be16((bucket2 * 4) + ORIENTATION_8_TABLE + 2);
                } else {
                    int group2 = RecoveredWorldPresentationData.ORIENTATION_8[bucket2][0];
                    info += (group2 * 3) + RecoveredWorldPresentationData.FOOT_ANIMATION_OFFSET[spriteOffset & 3];
                    transform = RecoveredWorldPresentationData.ORIENTATION_8[bucket2][1];
                }
            } else if ((visual == 1 && unitType != 25 && unitType != TRACKED_COMPOSITE_STRIDE) || visual == 5) {
                int bucket3 = ((bodyOrientation + 16) & 255) >>> 5;
                if (!this.providerBacked) {
                    info += be16((bucket3 * 4) + ORIENTATION_ALT_TABLE);
                    transform = be16((bucket3 * 4) + ORIENTATION_ALT_TABLE + 2);
                } else {
                    info += RecoveredWorldPresentationData.ORIENTATION_ALT[bucket3][0];
                    transform = RecoveredWorldPresentationData.ORIENTATION_ALT[bucket3][1];
                }
            }
            int transform2 = transform & 3;
            boolean reversePieces = unitType == 0 && carryallLoaded;
            int key = (info & 2047) | (transform2 << 12) | ((house & 7) << 15) | (reversePieces ? 262144 : 0);
            SpriteFrame cached = this.frameCache.get(Integer.valueOf(key));
            if (cached != null) {
                return cached;
            }
            SpriteFrame decoded = decodeVisual(info, transform2, house & 7, reversePieces);
            this.frameCache.put(Integer.valueOf(key), decoded);
            return decoded;
        }
        return null;
    }

    public SpriteFrame getHarvesterHarvestEffectFrame(int orientation, int spriteOffset, int house) {
        SpriteFrame decoded;
        int bucket = ((orientation + 16) & 255) >>> 5;
        int frame = Math.floorMod(spriteOffset, 3);
        int key = (bucket << 2) | frame | ((house & 7) << 5);
        SpriteFrame cached = this.harvesterEffectFrameCache.get(Integer.valueOf(key));
        if (cached != null) {
            return cached;
        }
        if (this.providerBacked) {
            decoded = decodeProviderDirectLayout(4, (frame * 8) + bucket, 0, house & 7, 36864 | (frame << 3) | bucket, false);
        } else {
            int entry = (((frame * 8) + bucket) * 4) + HARVESTER_EFFECT_LAYOUT_TABLE;
            checkRange(entry, 4);
            int layout = ptr24(be32(entry));
            decoded = decodeLayout(layout, 0, house & 7, 36864 | (frame << 3) | bucket);
        }
        if (decoded != null) {
            this.harvesterEffectFrameCache.put(Integer.valueOf(key), decoded);
        }
        return decoded;
    }

    private SpriteFrame getTrackedCompositeFrame(int unitType, int bodyOrientation, int turretOrientation, int house) {
        SpriteFrame decoded;
        int bodyBucket = ((bodyOrientation + 16) & 255) >>> 5;
        int turretBucket = ((turretOrientation + 16) & 255) >>> 5;
        int key = (bodyBucket << 5) | unitType | (turretBucket << 8) | (house << 11);
        SpriteFrame cached = this.compositeFrameCache.get(Integer.valueOf(key));
        if (cached != null) {
            return cached;
        }
        int directIndex = (bodyBucket * 8) + turretBucket;
        if (this.providerBacked) {
            decoded = decodeProviderDirectLayout(unitType == 9 ? 2 : 3, directIndex, 0, house, unitType == 9 ? 32777 : 32778, true);
        } else {
            int table = unitType == 9 ? TANK_COMPOSITE_TABLE : SIEGE_TANK_COMPOSITE_TABLE;
            int layout = table + (directIndex * TRACKED_COMPOSITE_STRIDE);
            decoded = decodeLayout(layout, 0, house, unitType == 9 ? 32777 : 32778, -1, true);
        }
        if (decoded != null) {
            this.compositeFrameCache.put(Integer.valueOf(key), decoded);
        }
        return decoded;
    }

    public int getHousePaletteLine(int house) {
        if (house < 0 || house >= this.housePaletteFlags.length) {
            return 0;
        }
        return (this.housePaletteFlags[house] >>> 13) & 3;
    }

    public int getStructureMetatile(int structureType, int anchorPacked, int cellPacked) {
        return getStructureMetatileForBase(structureType, anchorPacked, cellPacked, getStructureInitialBaseMetatile(structureType));
    }

    public int getPreferredStructureMetatile(int structureType, int anchorPacked, int cellPacked) {
        if (structureType < 0 || structureType >= this.structurePreferredBaseMetatiles.length) {
            return -1;
        }
        return getStructureMetatileForBase(structureType, anchorPacked, cellPacked, this.structurePreferredBaseMetatiles[structureType]);
    }

    public Bitmap getPreferredStructureMetatileBitmap(int structureType, int anchorPacked, int cellPacked) {
        return getPreferredStructureMetatileBitmap(structureType, anchorPacked, cellPacked, 0);
    }

    public Bitmap getPreferredStructureMetatileBitmap(int structureType, int anchorPacked, int cellPacked, int turretFacing) {
        int base;
        if (structureType == 15) {
            base = (turretFacing & 7) + 276;
        } else {
            if (structureType != 16) {
                return getPreferredStructureMetatileBitmapStatic(structureType, anchorPacked, cellPacked);
            }
            base = (turretFacing & 7) + RomRuntimeWorldDataAssets.LANDSCAPE_FIELDS;
        }
        int tile = getStructureMetatileForBase(structureType, anchorPacked, cellPacked, base);
        if (tile >= 0) {
            return this.terrainArt.getMetatile(tile);
        }
        return null;
    }

    private Bitmap getPreferredStructureMetatileBitmapStatic(int structureType, int anchorPacked, int cellPacked) {
        int tile = getPreferredStructureMetatile(structureType, anchorPacked, cellPacked);
        if (tile >= 0) {
            return this.terrainArt.getMetatile(tile);
        }
        return null;
    }

    public Bitmap getStructureFireMetatileBitmap(int structureType, int anchorPacked, int cellPacked, int visualId) {
        int[] stream;
        if ((structureType != 15 && structureType != 16) || visualId < 0 || visualId >= RecoveredWorldPresentationData.STRUCTURE_VISUAL_STREAMS.length || (stream = RecoveredWorldPresentationData.STRUCTURE_VISUAL_STREAMS[visualId]) == null || stream.length < 2) {
            return null;
        }
        int base = stream[0];
        int tile = getStructureMetatileForBase(structureType, anchorPacked, cellPacked, base);
        if (tile >= 0) {
            return this.terrainArt.getMetatile(tile);
        }
        return null;
    }

    private int getStructureInitialBaseMetatile(int structureType) {
        if (structureType < 0 || structureType >= 19) {
            return -1;
        }
        if (this.providerBacked) {
            int visualId = RecoveredWorldPresentationData.STRUCTURE_VISUAL_ID[structureType];
            int[] stream = RecoveredWorldPresentationData.STRUCTURE_VISUAL_STREAMS[visualId];
            if (stream.length >= 2) {
                return stream[0];
            }
            return -1;
        }
        int info = ptr24(be32((structureType * 4) + STRUCTURE_INFO_TABLE));
        checkRange(info, 64);
        int visualId2 = be16(info + 62) & 63;
        int visualStream = ptr24(be32((visualId2 * 4) + STRUCTURE_VISUAL_TABLE));
        checkRange(visualStream, 2);
        return be16(visualStream);
    }

    private int getStructureMetatileForBase(int structureType, int anchorPacked, int cellPacked, int baseMetatile) {
        int layoutId;
        int layoutId2;
        int candidateDelta;
        if (structureType < 0 || structureType >= 19 || baseMetatile < 0) {
            return -1;
        }
        if (!this.providerBacked) {
            int info = ptr24(be32((structureType * 4) + STRUCTURE_INFO_TABLE));
            checkRange(info, 64);
            int layoutId3 = be16(info + 60);
            if (layoutId3 < 0 || layoutId3 >= 8) {
                return -1;
            }
            layoutId = layoutId3;
            layoutId2 = m5u8(STRUCTURE_LAYOUT_COUNTS + layoutId3) + 1;
        } else {
            layoutId = RecoveredWorldPresentationData.STRUCTURE_LAYOUT_ID[structureType];
            if (layoutId < 0 || layoutId >= RecoveredWorldPresentationData.STRUCTURE_LAYOUT_CELL_COUNT.length) {
                return -1;
            }
            layoutId2 = RecoveredWorldPresentationData.STRUCTURE_LAYOUT_CELL_COUNT[layoutId];
        }
        if (layoutId2 < 1 || layoutId2 > 9) {
            return -1;
        }
        int ax = anchorPacked & 63;
        int ay = (anchorPacked >>> 6) & 63;
        int cx = cellPacked & 63;
        int cy = (cellPacked >>> 6) & 63;
        int dx = cx - ax;
        int dy = cy - ay;
        if (dx < 0 || dy < 0 || dx > 63 || dy > 63) {
            return -1;
        }
        int delta = (dy << 6) | dx;
        for (int i = 0; i < layoutId2; i++) {
            if (!this.providerBacked) {
                candidateDelta = be16((layoutId * 18) + STRUCTURE_LAYOUT_OFFSETS + (i * 2));
            } else {
                candidateDelta = RecoveredWorldPresentationData.STRUCTURE_LAYOUT_OFFSETS[layoutId][i];
            }
            if (candidateDelta == delta) {
                int tile = baseMetatile + i;
                if (tile < 362) {
                    return tile;
                }
                return -1;
            }
        }
        return -1;
    }

    public Bitmap getStructureMetatileBitmap(int structureType, int anchorPacked, int cellPacked) {
        int tile = getStructureMetatile(structureType, anchorPacked, cellPacked);
        if (tile >= 0) {
            return this.terrainArt.getMetatile(tile);
        }
        return null;
    }

    public Bitmap getStructureConstructionMetatileBitmap(int structureType, int anchorPacked, int cellPacked, int ageTicks) {
        int tile;
        if (structureType < 0 || structureType >= 19) {
            return null;
        }
        if ((ageTicks & 65535) == 65535) {
            return getPreferredStructureMetatileBitmapStatic(structureType, anchorPacked, cellPacked);
        }
        int base = getStructureVisualBaseAtAge(structureType, Math.max(0, ageTicks));
        if (base > 0 && (tile = getStructureMetatileForBase(structureType, anchorPacked, cellPacked, base)) >= 0) {
            return this.terrainArt.getMetatile(tile);
        }
        return null;
    }

    public Bitmap getStructureRubbleMetatileBitmap(int structureType, int anchorPacked, int cellPacked, int ageTicks) {
        int layoutId;
        int tile;
        if (structureType < 0 || structureType >= 19) {
            return null;
        }
        if (this.providerBacked) {
            int layoutId2 = RecoveredWorldPresentationData.STRUCTURE_LAYOUT_ID[structureType];
            if (layoutId2 < 0 || layoutId2 >= RecoveredWorldPresentationData.STRUCTURE_REMOVE_VISUAL_ID.length) {
                return null;
            }
            layoutId = RecoveredWorldPresentationData.STRUCTURE_REMOVE_VISUAL_ID[layoutId2];
        } else {
            int info = ptr24(be32((structureType * 4) + STRUCTURE_INFO_TABLE));
            checkRange(info, 64);
            int layoutId3 = be16(info + 60);
            if (layoutId3 < 0 || layoutId3 >= 8) {
                return null;
            }
            checkRange((layoutId3 * 2) + STRUCTURE_REMOVE_VISUAL_TABLE, 2);
            layoutId = be16((layoutId3 * 2) + STRUCTURE_REMOVE_VISUAL_TABLE) & 63;
        }
        int base = getVisualStreamBaseAtAge(layoutId, ageTicks, true);
        if (base > 0 && (tile = getStructureMetatileForBase(structureType, anchorPacked, cellPacked, base)) >= 0) {
            return this.terrainArt.getMetatile(tile);
        }
        return null;
    }

    private int getStructureVisualBaseAtAge(int structureType, int ageTicks) {
        int info;
        if (this.providerBacked) {
            if (structureType < 0 || structureType >= RecoveredWorldPresentationData.STRUCTURE_VISUAL_ID.length) {
                return -1;
            }
            info = RecoveredWorldPresentationData.STRUCTURE_VISUAL_ID[structureType];
        } else {
            int info2 = ptr24(be32((structureType * 4) + STRUCTURE_INFO_TABLE));
            checkRange(info2, 64);
            info = be16(info2 + 62) & 63;
        }
        return getVisualStreamBaseAtAge(info, ageTicks, false);
    }

    private int getVisualStreamBaseAtAge(int visualId, int ageTicks, boolean persistLast) {
        if (visualId < 0 || visualId >= 64) {
            return -1;
        }
        if ((ageTicks & 65535) == 65535) {
            ageTicks = 536870911;
        }
        int remaining = Math.max(0, ageTicks);
        int lastNonzero = 0;
        if (this.providerBacked) {
            int[] stream = RecoveredWorldPresentationData.STRUCTURE_VISUAL_STREAMS[visualId];
            for (int i = 0; i + 1 < stream.length; i += 2) {
                int base = stream[i];
                int duration = stream[i + 1];
                if (base != 0) {
                    lastNonzero = base;
                }
                int d = Math.max(1, duration);
                if (remaining < d) {
                    return base;
                }
                remaining -= d;
            }
        } else {
            int visualStream = ptr24(be32((visualId * 4) + STRUCTURE_VISUAL_TABLE));
            checkRange(visualStream, 4);
            for (int step = 0; step < 32; step++) {
                int pair = (step * 4) + visualStream;
                checkRange(pair, 4);
                int base2 = be16(pair);
                int duration2 = be16(pair + 2);
                if ((base2 == 0 && duration2 == 65535) || duration2 == 65535) {
                    break;
                }
                if (base2 != 0) {
                    lastNonzero = base2;
                }
                int d2 = Math.max(1, duration2);
                if (remaining < d2) {
                    return base2;
                }
                remaining -= d2;
            }
        }
        if (!persistLast && lastNonzero == 0) {
            return -1;
        }
        return lastNonzero;
    }

    private void decodeStructurePreferredBases() {
        for (int type = 0; type < this.structurePreferredBaseMetatiles.length; type++) {
            int initial = getStructureInitialBaseMetatile(type);
            int preferred = initial;
            if (initial >= 0) {
                if (this.providerBacked) {
                    int visualId = RecoveredWorldPresentationData.STRUCTURE_VISUAL_ID[type];
                    int[] stream = RecoveredWorldPresentationData.STRUCTURE_VISUAL_STREAMS[visualId];
                    int i = 0;
                    while (true) {
                        if (i + 1 >= stream.length) {
                            break;
                        }
                        int candidate = stream[i];
                        if (candidate == 0 || candidate == initial) {
                            i += 2;
                        } else {
                            preferred = candidate;
                            break;
                        }
                    }
                } else {
                    int visualId2 = type * 4;
                    int info = ptr24(be32(visualId2 + STRUCTURE_INFO_TABLE));
                    int visualId3 = be16(info + 62) & 63;
                    int visualStream = ptr24(be32((visualId3 * 4) + STRUCTURE_VISUAL_TABLE));
                    int step = 0;
                    while (true) {
                        if (step < 16) {
                            int pair = (step * 4) + visualStream;
                            checkRange(pair, 4);
                            int candidate2 = be16(pair);
                            int duration = be16(pair + 2);
                            if (candidate2 != 0 || duration != 65535) {
                                if (candidate2 == 0 || candidate2 == initial) {
                                    step++;
                                } else {
                                    preferred = candidate2;
                                    break;
                                }
                            }
                        }
                    }
                }
            }
            this.structurePreferredBaseMetatiles[type] = preferred;
        }
    }

    private void decodePaletteAndHouseFlags() {
        checkRange(PALETTE, 128);
        for (int i = 0; i < 64; i++) {
            int word = be16((i * 2) + PALETTE);
            int r3 = (word >>> 1) & 7;
            int g3 = (word >>> 5) & 7;
            int b3 = (word >>> 9) & 7;
            this.palette[i] = Color.rgb(Math.round((r3 * 255.0f) / 7.0f), Math.round((g3 * 255.0f) / 7.0f), Math.round((b3 * 255.0f) / 7.0f));
        }
        for (int i2 = 0; i2 < 8; i2++) {
            this.housePaletteFlags[i2] = be16((i2 * 2) + HOUSE_PALETTE_TABLE);
        }
        int[] expected = {0, 8192, 24576, 8192, RazorVramPatternLoader.METATILE_BANK_BYTES, 0, 0, 0};
        for (int i3 = 0; i3 < 8; i3++) {
            if (this.housePaletteFlags[i3] != expected[i3]) {
                throw new IllegalArgumentException("Unexpected Genesis house palette table");
            }
        }
    }

    private void decodeProviderPaletteAndHouseFlags(byte[] paletteBytes) throws IOException {
        if (paletteBytes == null || paletteBytes.length != 128) {
            throw new IOException("Installed tactical palette has wrong size");
        }
        for (int i = 0; i < 64; i++) {
            int word = be16Bytes(paletteBytes, i * 2);
            int r3 = (word >>> 1) & 7;
            int g3 = (word >>> 5) & 7;
            int b3 = (word >>> 9) & 7;
            this.palette[i] = Color.rgb(Math.round((r3 * 255.0f) / 7.0f), Math.round((g3 * 255.0f) / 7.0f), Math.round((b3 * 255.0f) / 7.0f));
        }
        System.arraycopy(RecoveredWorldPresentationData.HOUSE_PALETTE_FLAGS, 0, this.housePaletteFlags, 0, this.housePaletteFlags.length);
    }

    private void loadProviderStaticPatterns(byte[] slice) throws IOException {
        if (slice == null || slice.length != 36032) {
            throw new IOException("Installed tactical static pattern slice has wrong size");
        }
        System.arraycopy(slice, 0, this.vramPatterns, 29504, slice.length);
        this.loadedSpritePatterns = 698;
    }

    private void parseProviderVisualCatalog(byte[] data) throws IOException {
        int p = requireCatalogHeader(data, "DVIS", 1);
        int count = be16Bytes(data, 6);
        for (int i = 0; i < count; i++) {
            if (p > data.length - 8) {
                throw new IOException("DVIS entry header truncated");
            }
            int visualId = be16Bytes(data, p);
            int pieceCount = be16Bytes(data, p + 2);
            int p2 = p + 8;
            int bytes = pieceCount * 12;
            if (pieceCount < 1 || pieceCount > 32 || p2 > data.length - bytes) {
                throw new IOException("DVIS entry pieces truncated");
            }
            this.providerVisuals.put(Integer.valueOf(visualId), new ProviderVisual(visualId, Arrays.copyOfRange(data, p2, p2 + bytes)));
            p = p2 + bytes;
        }
        if (p != data.length || this.providerVisuals.size() != count || count < 180 || count > 350) {
            throw new IOException("Unexpected DVIS catalog structural coverage");
        }
        for (Integer visualId2 : this.providerVisuals.keySet()) {
            if (visualId2 == null || visualId2.intValue() < 0 || visualId2.intValue() >= 350) {
                throw new IOException("DVIS visual id outside recovered presentation range");
            }
        }
    }

    private void parseProviderDynamicPatterns(byte[] data) throws IOException {
        int p = requireCatalogHeader(data, "DDYN", 1);
        int count = be16Bytes(data, 6);
        for (int i = 0; i < count; i++) {
            if (p > data.length - 8) {
                throw new IOException("DDYN entry header truncated");
            }
            int visualId = be16Bytes(data, p);
            int minPattern = be16Bytes(data, p + 2);
            int patternCount = be16Bytes(data, p + 4);
            int p2 = p + 8;
            int bytes = patternCount * 32;
            if (patternCount < 1 || minPattern < 0 || minPattern + patternCount > 2048 || visualId < 0 || visualId >= 350 || !this.providerVisuals.containsKey(Integer.valueOf(visualId)) || p2 > data.length - bytes) {
                throw new IOException("DDYN entry outside tactical media bounds");
            }
            this.providerDynamics.put(Integer.valueOf(visualId), new ProviderDynamic(minPattern, patternCount, Arrays.copyOfRange(data, p2, p2 + bytes)));
            p = p2 + bytes;
        }
        if (p != data.length || this.providerDynamics.size() != count || count < 8 || count > 350) {
            throw new IOException("Unexpected DDYN catalog structural coverage");
        }
    }

    private void parseProviderDirectLayouts(byte[] data) throws IOException {
        int p = requireCatalogHeader(data, "DDIR", 1);
        int count = be16Bytes(data, 6);
        for (int i = 0; i < count; i++) {
            if (p > data.length - 8) {
                throw new IOException("DDIR entry header truncated");
            }
            int kind = data[p] & 255;
            int index = data[p + 1] & 255;
            int pieceCount = be16Bytes(data, p + 2);
            int p2 = p + 8;
            int bytes = pieceCount * 12;
            if (pieceCount < 1 || pieceCount > 32 || p2 > data.length - bytes) {
                throw new IOException("DDIR pieces truncated");
            }
            this.providerDirectLayouts.put(Integer.valueOf((kind << 16) | index), Arrays.copyOfRange(data, p2, p2 + bytes));
            p = p2 + bytes;
        }
        if (p != data.length || this.providerDirectLayouts.size() != count || count != 156) {
            throw new IOException("Unexpected DDIR catalog coverage");
        }
    }

    private static int requireCatalogHeader(byte[] data, String magic, int version) throws IOException {
        if (data == null || data.length < 8) {
            throw new IOException(magic + " catalog is truncated");
        }
        for (int i = 0; i < 4; i++) {
            if ((data[i] & 255) != magic.charAt(i)) {
                throw new IOException(magic + " catalog magic mismatch");
            }
        }
        int i2 = be16Bytes(data, 4);
        if (i2 == version) {
            return 8;
        }
        throw new IOException(magic + " catalog version mismatch");
    }

    private static int be16Bytes(byte[] data, int offset) throws IOException {
        if (offset < 0 || offset > data.length - 2) {
            throw new IOException("Provider media offset outside file");
        }
        return ((data[offset] & 255) << 8) | (data[offset + 1] & 255);
    }

    private static int s16Bytes(byte[] data, int offset) throws IOException {
        return (short) be16Bytes(data, offset);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00bc, code lost:
    
        throw new java.lang.IllegalArgumentException("Unaligned Genesis tactical sprite loader block");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void loadTacticalSpritePatterns() {
        /*
            r21 = this;
            r0 = r21
            r1 = 42124(0xa48c, float:5.9028E-41)
            r2 = 0
            r3 = 0
            r4 = -1
        L8:
            long r5 = r0.be32u(r1)
            int r1 = r1 + 4
            r7 = 0
            int r9 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r9 != 0) goto L30
            r5 = 36
            if (r2 != r5) goto L28
            r5 = 698(0x2ba, float:9.78E-43)
            if (r3 != r5) goto L28
            r5 = 2047(0x7ff, float:2.868E-42)
            if (r4 != r5) goto L28
            r5 = 42416(0xa5b0, float:5.9437E-41)
            if (r1 != r5) goto L28
            r0.loadedSpritePatterns = r3
            return
        L28:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r6 = "Tactical sprite loader table coverage mismatch"
            r5.<init>(r6)
            throw r5
        L30:
            long r9 = r0.be32u(r1)
            int r1 = r1 + 4
            r11 = 16
            long r11 = r5 >>> r11
            r13 = 65535(0xffff, double:3.23786E-319)
            long r11 = r11 & r13
            int r11 = (int) r11
            long r12 = r5 & r13
            int r12 = (int) r12
            int r13 = r12 * 2
            r14 = r11 & 31
            if (r14 != 0) goto Lb1
            r14 = r13 & 31
            if (r14 != 0) goto Lb1
            if (r13 <= 0) goto Lb1
            int r14 = r11 / 32
            int r15 = r13 / 32
            r16 = r7
            r7 = 922(0x39a, float:1.292E-42)
            if (r14 < r7) goto La5
            int r7 = r14 + r15
            r8 = 2048(0x800, float:2.87E-42)
            if (r7 > r8) goto La5
            r7 = 2147483648(0x80000000, double:1.0609978955E-314)
            long r7 = r7 & r9
            int r7 = (r7 > r16 ? 1 : (r7 == r16 ? 0 : -1))
            r16 = 1
            if (r7 == 0) goto L6d
            r7 = r16
            goto L6e
        L6d:
            r7 = 0
        L6e:
            r17 = 16777215(0xffffff, double:8.2890456E-317)
            r19 = r9
            long r8 = r19 & r17
            int r8 = (int) r8
            if (r7 == 0) goto L86
            r0.checkRange(r8, r13)
            byte[] r9 = new byte[r13]
            byte[] r10 = r0.rom
            r18 = r1
            r1 = 0
            java.lang.System.arraycopy(r10, r8, r9, r1, r13)
            goto L8d
        L86:
            r18 = r1
            r1 = 0
            byte[] r9 = r0.decompress(r8, r13)
        L8d:
            byte[] r10 = r0.vramPatterns
            int r0 = r14 * 32
            java.lang.System.arraycopy(r9, r1, r10, r0, r13)
            int r2 = r2 + 1
            int r3 = r3 + r15
            int r0 = r14 + r15
            int r0 = r0 + (-1)
            int r4 = java.lang.Math.max(r4, r0)
            r0 = r21
            r1 = r18
            goto L8
        La5:
            r18 = r1
            r19 = r9
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "Genesis sprite block outside VRAM pattern range"
            r0.<init>(r1)
            throw r0
        Lb1:
            r18 = r1
            r19 = r9
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "Unaligned Genesis tactical sprite loader block"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisObjectArt.loadTacticalSpritePatterns():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x013e, code lost:
    
        throw new java.lang.IllegalArgumentException("Genesis long-copy range error");
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00cb, code lost:
    
        throw new java.lang.IllegalArgumentException("Genesis absolute-copy range error");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private byte[] decompress(int r11, int r12) {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisObjectArt.decompress(int, int):byte[]");
    }

    private SpriteFrame decodeVisual(int visualId, int transform, int house) {
        return decodeVisual(visualId, transform, house, false);
    }

    private SpriteFrame decodeVisual(int visualId, int transform, int house, boolean reversePieces) {
        int paletteHouse;
        if (visualId < 0 || visualId > 2047) {
            return null;
        }
        if (this.providerBacked) {
            ProviderVisual visual = this.providerVisuals.get(Integer.valueOf(visualId));
            if (visual == null) {
                return null;
            }
            paletteHouse = visualSkipsHousePalette(visualId) ? 0 : house;
            return decodeProviderPieces(visual.pieces, transform, paletteHouse, visualId, this.providerDynamics.get(Integer.valueOf(visualId)), reversePieces);
        }
        int entry = (visualId * 8) + VISUAL_TABLE;
        checkRange(entry, 8);
        long sourceWord = be32u(entry);
        long descriptorWord = be32u(entry + 4);
        if ((descriptorWord & 16777215) == 0) {
            return null;
        }
        int layout = (int) (descriptorWord & 16777215);
        int dynamicSource = ((sourceWord >>> 24) & 255) == 128 ? (int) (16777215 & sourceWord) : -1;
        paletteHouse = ((descriptorWord >>> 24) & 255) != 11 ? house : 0;
        return decodeLayout(layout, transform, paletteHouse, visualId, dynamicSource, reversePieces);
    }

    private static boolean visualSkipsHousePalette(int visualId) {
        switch (visualId) {
            case 174:
            case 180:
            case 181:
            case 182:
            case 301:
            case 302:
            case 303:
            case GenesisMissionSequenceArt.PANEL_WIDTH /* 304 */:
            case 305:
            case 306:
            case 307:
            case 308:
            case 309:
            case 310:
                return true;
            default:
                return false;
        }
    }

    private SpriteFrame decodeProviderDirectLayout(int kind, int index, int transform, int house, int visualId, boolean reversePieces) {
        byte[] pieces = this.providerDirectLayouts.get(Integer.valueOf((kind << 16) | (65535 & index)));
        if (pieces == null) {
            return null;
        }
        return decodeProviderPieces(pieces, transform, house, visualId, null, reversePieces);
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01a8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x017d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.ahsim.demulation.GenesisObjectArt.SpriteFrame decodeProviderPieces(byte[] r44, int r45, int r46, int r47, com.ahsim.demulation.GenesisObjectArt.ProviderDynamic r48, boolean r49) {
        /*
            Method dump skipped, instructions count: 497
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisObjectArt.decodeProviderPieces(byte[], int, int, int, com.ahsim.demulation.GenesisObjectArt$ProviderDynamic, boolean):com.ahsim.demulation.GenesisObjectArt$SpriteFrame");
    }

    private static int providerU16(byte[] data, int offset) {
        return ((data[offset] & 255) << 8) | (data[offset + 1] & 255);
    }

    private static int providerS16(byte[] data, int offset) {
        return (short) providerU16(data, offset);
    }

    private SpriteFrame decodeLayout(int layout, int transform, int house, int visualId) {
        return decodeLayout(layout, transform, house, visualId, -1, false);
    }

    private SpriteFrame decodeLayout(int layout, int transform, int house, int visualId, int dynamicSource) {
        return decodeLayout(layout, transform, house, visualId, dynamicSource, false);
    }

    private SpriteFrame decodeLayout(int layout, int transform, int house, int visualId, int dynamicSource, boolean reversePieces) {
        int attr;
        int spriteH;
        int packed;
        checkRange(layout, 2);
        boolean z = true;
        int pieceCount = be16(layout) + 1;
        if (pieceCount < 1) {
            return null;
        }
        char c = ' ';
        if (pieceCount > 32) {
            return null;
        }
        int p = layout + 2;
        checkRange(p, pieceCount * 12);
        int minX = 32767;
        int minPattern = Integer.MAX_VALUE;
        int minPattern2 = 0;
        int maxX = -32768;
        int maxY = -32768;
        int minY = 32767;
        int maxPattern = -1;
        while (minPattern2 < pieceCount) {
            int size = be16(p + 6);
            boolean z2 = z;
            int pieceAttr = be16(p + 8);
            int x = s16(p + 10);
            char c2 = c;
            int y = s16(p + 4);
            int wt = ((size >>> 10) & 3) + 1;
            int ht = ((size >>> 8) & 3) + 1;
            int firstPattern = pieceAttr & 2047;
            minX = Math.min(minX, x);
            minY = Math.min(minY, y);
            maxX = Math.max(maxX, x + (wt * 8));
            maxY = Math.max(maxY, (ht * 8) + y);
            minPattern = Math.min(minPattern, firstPattern);
            maxPattern = Math.max(maxPattern, ((wt * ht) + firstPattern) - 1);
            minPattern2++;
            p += 12;
            z = z2;
            c = c2;
        }
        boolean z3 = z;
        if (dynamicSource >= 0) {
            if (minPattern == Integer.MAX_VALUE || maxPattern < minPattern) {
                return null;
            }
            checkRange(dynamicSource, ((maxPattern - minPattern) + 1) * 32);
        }
        if (maxX > minX && maxY > minY && maxX - minX <= 256) {
            if (maxY - minY <= 256) {
                int width = maxX - minX;
                int height = maxY - minY;
                int[] pixels = new int[width * height];
                int i = 0;
                while (i < pieceCount) {
                    int pieceIndex = reversePieces ? (pieceCount - 1) - i : i;
                    int p2 = layout + 2 + (pieceIndex * 12);
                    int size2 = be16(p2 + 6);
                    int pieceAttr2 = be16(p2 + 8);
                    int pieceCount2 = pieceCount;
                    int x0 = s16(p2 + 10) - minX;
                    int x02 = p2 + 4;
                    int y0 = s16(x02) - minY;
                    int wt2 = ((size2 >>> 10) & 3) + 1;
                    int ht2 = ((size2 >>> 8) & 3) + 1;
                    int objectFlags = flipFlags(transform) | this.housePaletteFlags[house];
                    int attr2 = (pieceAttr2 & 40959) ^ (objectFlags & 63488);
                    int objectFlags2 = pieceAttr2 & 24576;
                    if (objectFlags2 == 0) {
                        attr = attr2;
                    } else {
                        attr = (attr2 & 40959) | (pieceAttr2 & 24576);
                    }
                    int pieceAttr3 = attr & 2047;
                    boolean hFlip = (attr & VRAM_PATTERN_COUNT) != 0 ? z3 : false;
                    boolean hFlip2 = hFlip;
                    boolean vFlip = (attr & DuneHackR82ScenarioRecordDecoder.MAX_RECORDS) != 0 ? z3 : false;
                    int paletteLine = (attr >>> 13) & 3;
                    int spriteW = wt2 * 8;
                    int spriteH2 = ht2 * 8;
                    int[] pixels2 = pixels;
                    int dx = 0;
                    while (dx < spriteW) {
                        int spriteW2 = spriteW;
                        int pattern = 0;
                        while (pattern < spriteH2) {
                            int sx = hFlip2 ? (spriteW2 - 1) - dx : dx;
                            int sy = vFlip ? (spriteH2 - 1) - pattern : pattern;
                            int tileX = sx >>> 3;
                            int tileY = sy >>> 3;
                            int dy = pattern;
                            int dy2 = pieceAttr3 + (tileX * ht2) + tileY;
                            if (dy2 >= 0) {
                                spriteH = spriteH2;
                                if (dy2 < 2048) {
                                    int px = sx & 7;
                                    int py = sy & 7;
                                    if (dynamicSource >= 0 && dy2 >= minPattern && dy2 <= maxPattern) {
                                        int offset = dynamicSource + ((dy2 - minPattern) * 32) + (py * 4) + (px >>> 1);
                                        packed = this.rom[offset] & 255;
                                    } else {
                                        int pattern2 = dy2 * 32;
                                        int offset2 = pattern2 + (py * 4) + (px >>> 1);
                                        packed = this.vramPatterns[offset2] & 255;
                                    }
                                    int offset3 = px & 1;
                                    int colorIndex = offset3 == 0 ? packed >>> 4 : packed & 15;
                                    if (colorIndex != 0) {
                                        int packed2 = x0 + dx;
                                        int px2 = y0 + dy;
                                        if (packed2 >= 0 && px2 >= 0 && packed2 < width && px2 < height) {
                                            pixels2[(px2 * width) + packed2] = this.palette[(paletteLine * 16) + colorIndex];
                                        }
                                    }
                                }
                            } else {
                                spriteH = spriteH2;
                            }
                            pattern = dy + 1;
                            spriteH2 = spriteH;
                        }
                        dx++;
                        spriteW = spriteW2;
                    }
                    i++;
                    pieceCount = pieceCount2;
                    pixels = pixels2;
                }
                Bitmap bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
                bitmap.setPixels(pixels, 0, width, 0, 0, width, height);
                return new SpriteFrame(bitmap, minX, minY, visualId, transform);
            }
        }
        return null;
    }

    private void verifyRecoveredPresentationAnchors() throws IOException {
        if (RecoveredWorldPresentationData.UNIT_BASE_VISUAL.length != 27 || RecoveredWorldPresentationData.UNIT_VISUAL_MODE.length != 27 || RecoveredWorldPresentationData.UNIT_BASE_VISUAL[4] != 311 || RecoveredWorldPresentationData.UNIT_VISUAL_MODE[4] != 3 || RecoveredWorldPresentationData.UNIT_BASE_VISUAL[2] != 329 || RecoveredWorldPresentationData.UNIT_VISUAL_MODE[2] != 4 || RecoveredWorldPresentationData.UNIT_BASE_VISUAL[13] != 243 || RecoveredWorldPresentationData.UNIT_VISUAL_MODE[13] != 2) {
            throw new IOException("Recovered Unit presentation anchors mismatch");
        }
        if (RecoveredWorldPresentationData.STRUCTURE_LAYOUT_ID[8] != 3 || RecoveredWorldPresentationData.STRUCTURE_VISUAL_ID[8] != 17 || getStructureMetatile(8, 0, 0) != 333 || getStructureMetatile(8, 0, 1) != 334 || getPreferredStructureMetatile(8, 0, 0) != 243 || getPreferredStructureMetatile(9, 0, 0) != 251 || getPreferredStructureMetatile(12, 0, 0) != 264 || getPreferredStructureMetatile(17, 0, 0) != 292) {
            throw new IOException("Recovered Structure presentation anchors mismatch");
        }
        if (this.providerVisuals.size() < 180 || this.providerVisuals.size() > 350 || this.providerDynamics.size() < 8 || this.providerDynamics.size() > 350 || this.providerDirectLayouts.size() != 156 || this.loadedSpritePatterns != 698) {
            throw new IOException("Installed tactical media structural coverage mismatch");
        }
    }

    private void verifyScena001Anchors() {
        int soldier = ptr24(be32(443852));
        int infantry = ptr24(be32(443844));
        int trike = ptr24(be32(443888));
        if (be16(soldier + 70) != 311 || be16(soldier + 76) != 3 || be16(infantry + 70) != 329 || be16(infantry + 76) != 4 || be16(trike + 70) != 243 || be16(trike + 76) != 2) {
            throw new IllegalArgumentException("SCENA001 UnitInfo visual anchors mismatch");
        }
        int structure = ptr24(be32(440692));
        if (be16(structure + 60) != 3 || be16(structure + 62) != 17) {
            throw new IllegalArgumentException("Construction Yard StructureInfo visual anchor mismatch");
        }
        int stream = ptr24(be32(436736));
        if (stream != 437204 || be16(stream) != 333 || m5u8(45219) != 3 || getStructureMetatile(8, 0, 0) != 333 || getStructureMetatile(8, 0, 1) != 334 || getPreferredStructureMetatile(8, 0, 0) != 243 || getPreferredStructureMetatile(9, 0, 0) != 251 || getPreferredStructureMetatile(12, 0, 0) != 264 || getPreferredStructureMetatile(17, 0, 0) != 292) {
            throw new IllegalArgumentException("Construction Yard metatile stream mismatch");
        }
    }

    private static int flipFlags(int transform) {
        switch (transform & 3) {
            case 1:
                return VRAM_PATTERN_COUNT;
            case 2:
                return DuneHackR82ScenarioRecordDecoder.MAX_RECORDS;
            case 3:
                return 6144;
            default:
                return 0;
        }
    }

    /* renamed from: u8 */
    private int m5u8(int offset) {
        checkRange(offset, 1);
        return this.rom[offset] & 255;
    }

    private int be16(int offset) {
        checkRange(offset, 2);
        return ((this.rom[offset] & 255) << 8) | (this.rom[offset + 1] & 255);
    }

    private int s16(int offset) {
        return (short) be16(offset);
    }

    private int be32(int offset) {
        return (int) be32u(offset);
    }

    private long be32u(int offset) {
        checkRange(offset, 4);
        return ((this.rom[offset] & 255) << 24) | ((this.rom[offset + 1] & 255) << 16) | ((this.rom[offset + 2] & 255) << 8) | (this.rom[offset + 3] & 255);
    }

    private static int ptr24(int value) {
        return 16777215 & value;
    }

    private void checkRange(int offset, int length) {
        if (offset < 0 || length < 0 || offset > this.rom.length - length) {
            throw new IllegalArgumentException("ROM object-art offset outside file: " + offset + "+" + length);
        }
    }
}
