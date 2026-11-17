.class public final Lcom/ahsim/demulation/GenesisObjectArt;
.super Ljava/lang/Object;
.source "GenesisObjectArt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;,
        Lcom/ahsim/demulation/GenesisObjectArt$ExplosionAnimation;,
        Lcom/ahsim/demulation/GenesisObjectArt$ProviderVisual;,
        Lcom/ahsim/demulation/GenesisObjectArt$ProviderDynamic;
    }
.end annotation


# static fields
.field private static final EXPLOSION_SCRIPT_TABLE:I = 0xc80fe

.field private static final FOOT_ANIM_TABLE:I = 0x6c6c8

.field private static final HARVESTER_EFFECT_LAYOUT_TABLE:I = 0x641ee

.field private static final HOUSE_PALETTE_TABLE:I = 0x9588

.field private static final ORIENTATION_16_TABLE:I = 0x6c688

.field private static final ORIENTATION_8_TABLE:I = 0x6c648

.field private static final ORIENTATION_ALT_TABLE:I = 0x6c668

.field private static final PALETTE:I = 0xa6c98

.field private static final PLACEMENT_GRID_GFX_A:I = 0x64746

.field private static final PLACEMENT_GRID_GFX_B:I = 0x64846

.field private static final SIEGE_TANK_COMPOSITE_TABLE:I = 0x2f2fa

.field public static final SPRITE_FIRST_PATTERN:I = 0x39a

.field public static final SPRITE_LOADER_BLOCKS:I = 0x24

.field private static final SPRITE_LOADER_TABLE:I = 0xa48c

.field private static final STRUCTURE_INFO_TABLE:I = 0x6b954

.field private static final STRUCTURE_LAYOUT_COUNTS:I = 0xb0a0

.field private static final STRUCTURE_LAYOUT_OFFSETS:I = 0x6b740

.field private static final STRUCTURE_LAYOUT_STRIDE:I = 0x12

.field private static final STRUCTURE_REMOVE_VISUAL_TABLE:I = 0x6bbfa

.field private static final STRUCTURE_VISUAL_TABLE:I = 0x6a9bc

.field private static final TANK_COMPOSITE_TABLE:I = 0x2ec7a

.field private static final TRACKED_COMPOSITE_STRIDE:I = 0x1a

.field private static final UNIT_INFO_TABLE:I = 0x6c5bc

.field private static final VICTORY_FLYOVER_LAYOUTS:[I

.field private static final VISUAL_TABLE:I = 0x60e8c

.field public static final VRAM_PATTERN_COUNT:I = 0x800


# instance fields
.field private final compositeFrameCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;",
            ">;"
        }
    .end annotation
.end field

.field private constructionReadyFrame:Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

.field private final explosionAnimationCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/ahsim/demulation/GenesisObjectArt$ExplosionAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private final frameCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final harvesterEffectFrameCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final housePaletteFlags:[I

.field private loadedSpritePatterns:I

.field private final palette:[I

.field private placementGridIllegalCell:Landroid/graphics/Bitmap;

.field private placementGridLegalCell:Landroid/graphics/Bitmap;

.field private powerWarningFrame:Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

.field private final providerBacked:Z

.field private final providerDirectLayouts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private final providerDynamics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/ahsim/demulation/GenesisObjectArt$ProviderDynamic;",
            ">;"
        }
    .end annotation
.end field

.field private final providerPlacementGridPatterns:[B

.field private final providerVisuals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/ahsim/demulation/GenesisObjectArt$ProviderVisual;",
            ">;"
        }
    .end annotation
.end field

.field private repairHammerFrame:Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

.field private final rom:[B

.field private final structurePreferredBaseMetatiles:[I

.field private final terrainArt:Lcom/ahsim/demulation/GenesisTerrainArt;

.field private final vramPatterns:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    const v0, 0xb6a8

    const v1, 0xb6fe

    const v2, 0xb5fc

    const v3, 0xb652

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/GenesisObjectArt;->VICTORY_FLYOVER_LAYOUTS:[I

    return-void
.end method

.method public constructor <init>(Lcom/ahsim/demulation/RomRuntimeWorldAssets;Lcom/ahsim/demulation/GenesisTerrainArt;)V
    .locals 3
    .param p1, "assets"    # Lcom/ahsim/demulation/RomRuntimeWorldAssets;
    .param p2, "terrainArt"    # Lcom/ahsim/demulation/GenesisTerrainArt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerVisuals:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerDynamics:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerDirectLayouts:Ljava/util/Map;

    .line 74
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->vramPatterns:[B

    .line 75
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->palette:[I

    .line 76
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->housePaletteFlags:[I

    .line 77
    const/16 v0, 0x13

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->structurePreferredBaseMetatiles:[I

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->frameCache:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->compositeFrameCache:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->harvesterEffectFrameCache:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->explosionAnimationCache:Ljava/util/Map;

    .line 162
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->rom:[B

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerBacked:Z

    .line 167
    iput-object p2, p0, Lcom/ahsim/demulation/GenesisObjectArt;->terrainArt:Lcom/ahsim/demulation/GenesisTerrainArt;

    .line 168
    const-string v0, "terrain/palette.bin"

    invoke-virtual {p1, v0}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    .line 169
    .local v0, "paletteBytes":[B
    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisObjectArt;->decodeProviderPaletteAndHouseFlags([B)V

    .line 170
    const-string v1, "tactical/static_patterns_922_2047.bin"

    invoke-virtual {p1, v1}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->read(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisObjectArt;->loadProviderStaticPatterns([B)V

    .line 171
    const-string v1, "tactical/visual_catalog.bin"

    invoke-virtual {p1, v1}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->read(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisObjectArt;->parseProviderVisualCatalog([B)V

    .line 172
    const-string v1, "tactical/dynamic_patterns.bin"

    invoke-virtual {p1, v1}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->read(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisObjectArt;->parseProviderDynamicPatterns([B)V

    .line 173
    const-string v1, "tactical/direct_layouts.bin"

    invoke-virtual {p1, v1}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->read(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisObjectArt;->parseProviderDirectLayouts([B)V

    .line 174
    const-string v1, "tactical/placement_grid_patterns.bin"

    invoke-virtual {p1, v1}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->read(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerPlacementGridPatterns:[B

    .line 175
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerPlacementGridPatterns:[B

    array-length v1, v1

    const/16 v2, 0x200

    if-ne v1, v2, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisObjectArt;->decodeStructurePreferredBases()V

    .line 179
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisObjectArt;->verifyRecoveredPresentationAnchors()V

    .line 180
    return-void

    .line 176
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Installed placement-grid graphics have wrong size"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    .end local v0    # "paletteBytes":[B
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "World media/terrain art missing for Genesis object decoder"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([BLcom/ahsim/demulation/GenesisTerrainArt;)V
    .locals 2
    .param p1, "rom"    # [B
    .param p2, "terrainArt"    # Lcom/ahsim/demulation/GenesisTerrainArt;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerVisuals:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerDynamics:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerDirectLayouts:Ljava/util/Map;

    .line 74
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->vramPatterns:[B

    .line 75
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->palette:[I

    .line 76
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->housePaletteFlags:[I

    .line 77
    const/16 v0, 0x13

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->structurePreferredBaseMetatiles:[I

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->frameCache:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->compositeFrameCache:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->harvesterEffectFrameCache:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->explosionAnimationCache:Ljava/util/Map;

    .line 147
    if-eqz p1, :cond_0

    array-length v0, p1

    const v1, 0xc8000

    if-lt v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 150
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisObjectArt;->rom:[B

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerBacked:Z

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerPlacementGridPatterns:[B

    .line 153
    iput-object p2, p0, Lcom/ahsim/demulation/GenesisObjectArt;->terrainArt:Lcom/ahsim/demulation/GenesisTerrainArt;

    .line 154
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisObjectArt;->decodePaletteAndHouseFlags()V

    .line 155
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisObjectArt;->loadTacticalSpritePatterns()V

    .line 156
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisObjectArt;->decodeStructurePreferredBases()V

    .line 157
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisObjectArt;->verifyScena001Anchors()V

    .line 158
    return-void

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ROM/terrain art missing for Genesis object decoder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private be16(I)I
    .locals 3
    .param p1, "offset"    # I

    .line 1312
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/ahsim/demulation/GenesisObjectArt;->checkRange(II)V

    .line 1313
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->rom:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisObjectArt;->rom:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static be16Bytes([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 878
    if-ltz p1, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    if-gt p1, v0, :cond_0

    .line 879
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 878
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Provider media offset outside file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private be32(I)I
    .locals 2
    .param p1, "offset"    # I

    .line 1321
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisObjectArt;->be32u(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private be32u(I)J
    .locals 5
    .param p1, "offset"    # I

    .line 1325
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/ahsim/demulation/GenesisObjectArt;->checkRange(II)V

    .line 1326
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->rom:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisObjectArt;->rom:[B

    add-int/lit8 v3, p1, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisObjectArt;->rom:[B

    add-int/lit8 v3, p1, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisObjectArt;->rom:[B

    add-int/lit8 v3, p1, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private checkRange(II)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 1337
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->rom:[B

    array-length v0, v0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 1340
    return-void

    .line 1338
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ROM object-art offset outside file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decodeLayout(IIII)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    .locals 7
    .param p1, "layout"    # I
    .param p2, "transform"    # I
    .param p3, "house"    # I
    .param p4, "visualId"    # I

    .line 1142
    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "layout":I
    .end local p2    # "transform":I
    .end local p3    # "house":I
    .end local p4    # "visualId":I
    .local v1, "layout":I
    .local v2, "transform":I
    .local v3, "house":I
    .local v4, "visualId":I
    invoke-direct/range {v0 .. v6}, Lcom/ahsim/demulation/GenesisObjectArt;->decodeLayout(IIIIIZ)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    move-result-object p1

    return-object p1
.end method

.method private decodeLayout(IIIII)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    .locals 7
    .param p1, "layout"    # I
    .param p2, "transform"    # I
    .param p3, "house"    # I
    .param p4, "visualId"    # I
    .param p5, "dynamicSource"    # I

    .line 1147
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "layout":I
    .end local p2    # "transform":I
    .end local p3    # "house":I
    .end local p4    # "visualId":I
    .end local p5    # "dynamicSource":I
    .local v1, "layout":I
    .local v2, "transform":I
    .local v3, "house":I
    .local v4, "visualId":I
    .local v5, "dynamicSource":I
    invoke-direct/range {v0 .. v6}, Lcom/ahsim/demulation/GenesisObjectArt;->decodeLayout(IIIIIZ)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    move-result-object p1

    return-object p1
.end method

.method private decodeLayout(IIIIIZ)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    .locals 46
    .param p1, "layout"    # I
    .param p2, "transform"    # I
    .param p3, "house"    # I
    .param p4, "visualId"    # I
    .param p5, "dynamicSource"    # I
    .param p6, "reversePieces"    # Z

    .line 1152
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p5

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Lcom/ahsim/demulation/GenesisObjectArt;->checkRange(II)V

    .line 1153
    invoke-direct/range {p0 .. p1}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 1154
    .local v3, "pieceCount":I
    if-lt v3, v4, :cond_16

    const/16 v6, 0x20

    if-le v3, v6, :cond_0

    move/from16 v27, v3

    const/16 v17, 0x0

    goto/16 :goto_f

    .line 1155
    :cond_0
    add-int/lit8 v7, v1, 0x2

    .line 1156
    .local v7, "p":I
    mul-int/lit8 v8, v3, 0xc

    invoke-direct {v0, v7, v8}, Lcom/ahsim/demulation/GenesisObjectArt;->checkRange(II)V

    .line 1158
    const/16 v8, 0x7fff

    .local v8, "minX":I
    const/16 v9, 0x7fff

    .local v9, "minY":I
    const/16 v10, -0x8000

    .local v10, "maxX":I
    const/16 v11, -0x8000

    .line 1159
    .local v11, "maxY":I
    const v12, 0x7fffffff

    .local v12, "minPattern":I
    const/4 v13, -0x1

    .line 1160
    .local v13, "maxPattern":I
    const/4 v14, 0x0

    move v15, v10

    move v10, v8

    move v8, v12

    move v12, v14

    move v14, v15

    move v15, v11

    move v11, v9

    move v9, v13

    .end local v13    # "maxPattern":I
    .local v8, "minPattern":I
    .local v9, "maxPattern":I
    .local v10, "minX":I
    .local v11, "minY":I
    .local v12, "i":I
    .local v14, "maxX":I
    .local v15, "maxY":I
    :goto_0
    if-ge v12, v3, :cond_1

    .line 1161
    add-int/lit8 v13, v7, 0x6

    invoke-direct {v0, v13}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v13

    .line 1162
    .local v13, "size":I
    move/from16 v16, v4

    add-int/lit8 v4, v7, 0x8

    invoke-direct {v0, v4}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v4

    .line 1163
    .local v4, "pieceAttr":I
    const/16 v17, 0x0

    add-int/lit8 v5, v7, 0xa

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/GenesisObjectArt;->s16(I)I

    move-result v5

    .line 1164
    .local v5, "x":I
    move/from16 v18, v6

    add-int/lit8 v6, v7, 0x4

    invoke-direct {v0, v6}, Lcom/ahsim/demulation/GenesisObjectArt;->s16(I)I

    move-result v6

    .line 1165
    .local v6, "y":I
    ushr-int/lit8 v19, v13, 0xa

    and-int/lit8 v19, v19, 0x3

    add-int/lit8 v19, v19, 0x1

    .line 1166
    .local v19, "wt":I
    ushr-int/lit8 v20, v13, 0x8

    and-int/lit8 v20, v20, 0x3

    add-int/lit8 v20, v20, 0x1

    .line 1167
    .local v20, "ht":I
    and-int/lit16 v1, v4, 0x7ff

    .line 1168
    .local v1, "firstPattern":I
    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1169
    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1170
    mul-int/lit8 v21, v19, 0x8

    move/from16 v22, v4

    .end local v4    # "pieceAttr":I
    .local v22, "pieceAttr":I
    add-int v4, v5, v21

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1171
    mul-int/lit8 v4, v20, 0x8

    add-int/2addr v4, v6

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1172
    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1173
    mul-int v4, v19, v20

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1160
    .end local v1    # "firstPattern":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v13    # "size":I
    .end local v19    # "wt":I
    .end local v20    # "ht":I
    .end local v22    # "pieceAttr":I
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v7, v7, 0xc

    move/from16 v1, p1

    move/from16 v4, v16

    move/from16 v6, v18

    goto :goto_0

    :cond_1
    move/from16 v16, v4

    move/from16 v18, v6

    const/16 v17, 0x0

    .line 1175
    .end local v12    # "i":I
    if-ltz v2, :cond_4

    .line 1176
    const v1, 0x7fffffff

    if-eq v8, v1, :cond_3

    if-ge v9, v8, :cond_2

    goto :goto_1

    .line 1177
    :cond_2
    sub-int v1, v9, v8

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x20

    invoke-direct {v0, v2, v1}, Lcom/ahsim/demulation/GenesisObjectArt;->checkRange(II)V

    goto :goto_2

    .line 1176
    :cond_3
    :goto_1
    return-object v17

    .line 1181
    :cond_4
    :goto_2
    if-le v14, v10, :cond_15

    if-le v15, v11, :cond_15

    sub-int v1, v14, v10

    const/16 v4, 0x100

    if-gt v1, v4, :cond_15

    sub-int v1, v15, v11

    if-le v1, v4, :cond_5

    move/from16 v27, v3

    move v1, v8

    move v2, v9

    goto/16 :goto_e

    .line 1182
    :cond_5
    sub-int v1, v14, v10

    .line 1183
    .local v1, "width":I
    sub-int v4, v15, v11

    .line 1184
    .local v4, "height":I
    mul-int v5, v1, v4

    new-array v5, v5, [I

    .line 1186
    .local v5, "pixels":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v3, :cond_14

    .line 1187
    if-eqz p6, :cond_6

    add-int/lit8 v12, v3, -0x1

    sub-int/2addr v12, v6

    goto :goto_4

    :cond_6
    move v12, v6

    .line 1188
    .local v12, "pieceIndex":I
    :goto_4
    add-int/lit8 v13, p1, 0x2

    mul-int/lit8 v17, v12, 0xc

    add-int v7, v13, v17

    .line 1189
    add-int/lit8 v13, v7, 0x6

    invoke-direct {v0, v13}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v13

    .line 1190
    .restart local v13    # "size":I
    add-int/lit8 v2, v7, 0x8

    invoke-direct {v0, v2}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v2

    .line 1191
    .local v2, "pieceAttr":I
    move/from16 v27, v3

    .end local v3    # "pieceCount":I
    .local v27, "pieceCount":I
    add-int/lit8 v3, v7, 0xa

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/GenesisObjectArt;->s16(I)I

    move-result v3

    sub-int/2addr v3, v10

    .line 1192
    .local v3, "x0":I
    move/from16 v17, v3

    .end local v3    # "x0":I
    .local v17, "x0":I
    add-int/lit8 v3, v7, 0x4

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/GenesisObjectArt;->s16(I)I

    move-result v3

    sub-int/2addr v3, v11

    .line 1193
    .local v3, "y0":I
    ushr-int/lit8 v19, v13, 0xa

    and-int/lit8 v19, v19, 0x3

    add-int/lit8 v19, v19, 0x1

    .line 1194
    .restart local v19    # "wt":I
    ushr-int/lit8 v20, v13, 0x8

    and-int/lit8 v20, v20, 0x3

    add-int/lit8 v20, v20, 0x1

    .line 1196
    .restart local v20    # "ht":I
    invoke-static/range {p2 .. p2}, Lcom/ahsim/demulation/GenesisObjectArt;->flipFlags(I)I

    move-result v21

    move/from16 v22, v3

    .end local v3    # "y0":I
    .local v22, "y0":I
    iget-object v3, v0, Lcom/ahsim/demulation/GenesisObjectArt;->housePaletteFlags:[I

    aget v3, v3, p3

    or-int v3, v21, v3

    .line 1197
    .local v3, "objectFlags":I
    const v21, 0x9fff

    and-int v23, v2, v21

    const v24, 0xf800

    and-int v24, v3, v24

    xor-int v23, v23, v24

    .line 1198
    .local v23, "attr":I
    move/from16 v24, v3

    .end local v3    # "objectFlags":I
    .local v24, "objectFlags":I
    and-int/lit16 v3, v2, 0x6000

    if-eqz v3, :cond_7

    .line 1199
    and-int v3, v23, v21

    move/from16 v21, v3

    and-int/lit16 v3, v2, 0x6000

    or-int v23, v21, v3

    move/from16 v3, v23

    goto :goto_5

    .line 1198
    :cond_7
    move/from16 v3, v23

    .line 1201
    .end local v23    # "attr":I
    .local v3, "attr":I
    :goto_5
    move/from16 v21, v2

    .end local v2    # "pieceAttr":I
    .local v21, "pieceAttr":I
    and-int/lit16 v2, v3, 0x7ff

    .line 1202
    .local v2, "firstPattern":I
    move/from16 v23, v2

    .end local v2    # "firstPattern":I
    .local v23, "firstPattern":I
    and-int/lit16 v2, v3, 0x800

    const/16 v25, 0x0

    if-eqz v2, :cond_8

    move/from16 v2, v16

    goto :goto_6

    :cond_8
    move/from16 v2, v25

    .line 1203
    .local v2, "hFlip":Z
    :goto_6
    move/from16 v26, v2

    .end local v2    # "hFlip":Z
    .local v26, "hFlip":Z
    and-int/lit16 v2, v3, 0x1000

    if-eqz v2, :cond_9

    move/from16 v25, v16

    .line 1204
    .local v25, "vFlip":Z
    :cond_9
    ushr-int/lit8 v2, v3, 0xd

    and-int/lit8 v2, v2, 0x3

    .line 1205
    .local v2, "paletteLine":I
    move/from16 v28, v2

    .end local v2    # "paletteLine":I
    .local v28, "paletteLine":I
    mul-int/lit8 v2, v19, 0x8

    .line 1206
    .local v2, "spriteW":I
    move/from16 v29, v3

    .end local v3    # "attr":I
    .local v29, "attr":I
    mul-int/lit8 v3, v20, 0x8

    .line 1208
    .local v3, "spriteH":I
    const/16 v30, 0x0

    move-object/from16 v31, v5

    move/from16 v5, v30

    .local v5, "dx":I
    .local v31, "pixels":[I
    :goto_7
    if-ge v5, v2, :cond_13

    .line 1209
    const/16 v30, 0x0

    move/from16 v32, v2

    move/from16 v2, v30

    .local v2, "dy":I
    .local v32, "spriteW":I
    :goto_8
    if-ge v2, v3, :cond_12

    .line 1210
    if-eqz v26, :cond_a

    add-int/lit8 v30, v32, -0x1

    sub-int v30, v30, v5

    goto :goto_9

    :cond_a
    move/from16 v30, v5

    .line 1211
    .local v30, "sx":I
    :goto_9
    if-eqz v25, :cond_b

    add-int/lit8 v33, v3, -0x1

    sub-int v33, v33, v2

    goto :goto_a

    :cond_b
    move/from16 v33, v2

    .line 1213
    .local v33, "sy":I
    :goto_a
    ushr-int/lit8 v34, v30, 0x3

    .line 1214
    .local v34, "tileX":I
    ushr-int/lit8 v35, v33, 0x3

    .line 1215
    .local v35, "tileY":I
    mul-int v36, v34, v20

    add-int v36, v23, v36

    move/from16 v37, v2

    .end local v2    # "dy":I
    .local v37, "dy":I
    add-int v2, v36, v35

    .line 1216
    .local v2, "pattern":I
    if-ltz v2, :cond_11

    move/from16 v36, v3

    .end local v3    # "spriteH":I
    .local v36, "spriteH":I
    const/16 v3, 0x800

    if-lt v2, v3, :cond_c

    goto/16 :goto_d

    .line 1217
    :cond_c
    and-int/lit8 v3, v30, 0x7

    .line 1218
    .local v3, "px":I
    and-int/lit8 v38, v33, 0x7

    .line 1220
    .local v38, "py":I
    if-ltz p5, :cond_d

    if-lt v2, v8, :cond_d

    if-gt v2, v9, :cond_d

    .line 1221
    sub-int v39, v2, v8

    mul-int/lit8 v39, v39, 0x20

    add-int v39, p5, v39

    mul-int/lit8 v40, v38, 0x4

    add-int v39, v39, v40

    ushr-int/lit8 v40, v3, 0x1

    add-int v39, v39, v40

    .line 1223
    .local v39, "offset":I
    move/from16 v40, v2

    .end local v2    # "pattern":I
    .local v40, "pattern":I
    iget-object v2, v0, Lcom/ahsim/demulation/GenesisObjectArt;->rom:[B

    aget-byte v2, v2, v39

    and-int/lit16 v2, v2, 0xff

    .line 1224
    .end local v39    # "offset":I
    .local v2, "packed":I
    goto :goto_b

    .line 1220
    .end local v40    # "pattern":I
    .local v2, "pattern":I
    :cond_d
    move/from16 v40, v2

    .line 1225
    .end local v2    # "pattern":I
    .restart local v40    # "pattern":I
    mul-int/lit8 v2, v40, 0x20

    mul-int/lit8 v39, v38, 0x4

    add-int v2, v2, v39

    ushr-int/lit8 v39, v3, 0x1

    add-int v2, v2, v39

    .line 1226
    .local v2, "offset":I
    move/from16 v39, v2

    .end local v2    # "offset":I
    .restart local v39    # "offset":I
    iget-object v2, v0, Lcom/ahsim/demulation/GenesisObjectArt;->vramPatterns:[B

    aget-byte v2, v2, v39

    and-int/lit16 v2, v2, 0xff

    .line 1228
    .end local v39    # "offset":I
    .local v2, "packed":I
    :goto_b
    and-int/lit8 v39, v3, 0x1

    if-nez v39, :cond_e

    ushr-int/lit8 v39, v2, 0x4

    goto :goto_c

    :cond_e
    and-int/lit8 v39, v2, 0xf

    .line 1229
    .local v39, "colorIndex":I
    :goto_c
    if-nez v39, :cond_f

    goto :goto_d

    .line 1230
    :cond_f
    move/from16 v41, v2

    .end local v2    # "packed":I
    .local v41, "packed":I
    add-int v2, v17, v5

    .line 1231
    .local v2, "xx":I
    move/from16 v42, v3

    .end local v3    # "px":I
    .local v42, "px":I
    add-int v3, v22, v37

    .line 1232
    .local v3, "yy":I
    if-ltz v2, :cond_10

    if-ltz v3, :cond_10

    if-ge v2, v1, :cond_10

    if-ge v3, v4, :cond_10

    .line 1233
    mul-int v43, v3, v1

    add-int v43, v43, v2

    move/from16 v44, v2

    .end local v2    # "xx":I
    .local v44, "xx":I
    iget-object v2, v0, Lcom/ahsim/demulation/GenesisObjectArt;->palette:[I

    mul-int/lit8 v45, v28, 0x10

    add-int v45, v45, v39

    aget v2, v2, v45

    aput v2, v31, v43

    goto :goto_d

    .line 1232
    .end local v44    # "xx":I
    .restart local v2    # "xx":I
    :cond_10
    move/from16 v44, v2

    .end local v2    # "xx":I
    .restart local v44    # "xx":I
    goto :goto_d

    .line 1216
    .end local v36    # "spriteH":I
    .end local v38    # "py":I
    .end local v39    # "colorIndex":I
    .end local v40    # "pattern":I
    .end local v41    # "packed":I
    .end local v42    # "px":I
    .end local v44    # "xx":I
    .local v2, "pattern":I
    .local v3, "spriteH":I
    :cond_11
    move/from16 v40, v2

    move/from16 v36, v3

    .line 1209
    .end local v2    # "pattern":I
    .end local v3    # "spriteH":I
    .end local v30    # "sx":I
    .end local v33    # "sy":I
    .end local v34    # "tileX":I
    .end local v35    # "tileY":I
    .restart local v36    # "spriteH":I
    :goto_d
    add-int/lit8 v2, v37, 0x1

    move/from16 v3, v36

    .end local v37    # "dy":I
    .local v2, "dy":I
    goto/16 :goto_8

    .end local v36    # "spriteH":I
    .restart local v3    # "spriteH":I
    :cond_12
    move/from16 v37, v2

    move/from16 v36, v3

    .line 1208
    .end local v2    # "dy":I
    .end local v3    # "spriteH":I
    .restart local v36    # "spriteH":I
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v32

    goto/16 :goto_7

    .end local v32    # "spriteW":I
    .end local v36    # "spriteH":I
    .local v2, "spriteW":I
    .restart local v3    # "spriteH":I
    :cond_13
    move/from16 v32, v2

    move/from16 v36, v3

    .line 1186
    .end local v2    # "spriteW":I
    .end local v3    # "spriteH":I
    .end local v5    # "dx":I
    .end local v12    # "pieceIndex":I
    .end local v13    # "size":I
    .end local v17    # "x0":I
    .end local v19    # "wt":I
    .end local v20    # "ht":I
    .end local v21    # "pieceAttr":I
    .end local v22    # "y0":I
    .end local v23    # "firstPattern":I
    .end local v24    # "objectFlags":I
    .end local v25    # "vFlip":Z
    .end local v26    # "hFlip":Z
    .end local v28    # "paletteLine":I
    .end local v29    # "attr":I
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, p5

    move/from16 v3, v27

    move-object/from16 v5, v31

    goto/16 :goto_3

    .end local v27    # "pieceCount":I
    .end local v31    # "pixels":[I
    .local v3, "pieceCount":I
    .local v5, "pixels":[I
    :cond_14
    move-object/from16 v31, v5

    .line 1238
    .end local v5    # "pixels":[I
    .end local v6    # "i":I
    .restart local v31    # "pixels":[I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 1239
    .local v19, "bitmap":Landroid/graphics/Bitmap;
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v21, 0x0

    move/from16 v25, v1

    move/from16 v22, v1

    move/from16 v26, v4

    move-object/from16 v20, v31

    .end local v1    # "width":I
    .end local v4    # "height":I
    .end local v31    # "pixels":[I
    .local v20, "pixels":[I
    .local v22, "width":I
    .local v26, "height":I
    invoke-virtual/range {v19 .. v26}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1240
    .end local v20    # "pixels":[I
    .restart local v31    # "pixels":[I
    move v12, v8

    .end local v8    # "minPattern":I
    .local v12, "minPattern":I
    new-instance v8, Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    move/from16 v13, p2

    move v2, v9

    move v1, v12

    move-object/from16 v9, v19

    move/from16 v12, p4

    .end local v12    # "minPattern":I
    .end local v19    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "minPattern":I
    .local v2, "maxPattern":I
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct/range {v8 .. v13}, Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;-><init>(Landroid/graphics/Bitmap;IIII)V

    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v19    # "bitmap":Landroid/graphics/Bitmap;
    return-object v8

    .line 1181
    .end local v1    # "minPattern":I
    .end local v2    # "maxPattern":I
    .end local v19    # "bitmap":Landroid/graphics/Bitmap;
    .end local v22    # "width":I
    .end local v26    # "height":I
    .end local v31    # "pixels":[I
    .restart local v8    # "minPattern":I
    .local v9, "maxPattern":I
    :cond_15
    move/from16 v27, v3

    move v1, v8

    move v2, v9

    .end local v3    # "pieceCount":I
    .end local v8    # "minPattern":I
    .end local v9    # "maxPattern":I
    .restart local v1    # "minPattern":I
    .restart local v2    # "maxPattern":I
    .restart local v27    # "pieceCount":I
    :goto_e
    return-object v17

    .line 1154
    .end local v1    # "minPattern":I
    .end local v2    # "maxPattern":I
    .end local v7    # "p":I
    .end local v10    # "minX":I
    .end local v11    # "minY":I
    .end local v14    # "maxX":I
    .end local v15    # "maxY":I
    .end local v27    # "pieceCount":I
    .restart local v3    # "pieceCount":I
    :cond_16
    move/from16 v27, v3

    const/16 v17, 0x0

    .end local v3    # "pieceCount":I
    .restart local v27    # "pieceCount":I
    :goto_f
    return-object v17
.end method

.method private decodePaletteAndHouseFlags()V
    .locals 12

    .line 749
    const/16 v0, 0x80

    const v1, 0xa6c98

    invoke-direct {p0, v1, v0}, Lcom/ahsim/demulation/GenesisObjectArt;->checkRange(II)V

    .line 750
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x40

    if-ge v0, v2, :cond_0

    .line 751
    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v2

    .line 752
    .local v2, "word":I
    ushr-int/lit8 v3, v2, 0x1

    and-int/lit8 v3, v3, 0x7

    .line 753
    .local v3, "r3":I
    ushr-int/lit8 v4, v2, 0x5

    and-int/lit8 v4, v4, 0x7

    .line 754
    .local v4, "g3":I
    ushr-int/lit8 v5, v2, 0x9

    and-int/lit8 v5, v5, 0x7

    .line 755
    .local v5, "b3":I
    iget-object v6, p0, Lcom/ahsim/demulation/GenesisObjectArt;->palette:[I

    int-to-float v7, v3

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v7, v8

    const/high16 v9, 0x40e00000    # 7.0f

    div-float/2addr v7, v9

    .line 756
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v10, v4

    mul-float/2addr v10, v8

    div-float/2addr v10, v9

    .line 757
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v11, v5

    mul-float/2addr v11, v8

    div-float/2addr v11, v9

    .line 758
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 755
    invoke-static {v7, v10, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    aput v7, v6, v0

    .line 750
    .end local v2    # "word":I
    .end local v3    # "r3":I
    .end local v4    # "g3":I
    .end local v5    # "b3":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 760
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 761
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisObjectArt;->housePaletteFlags:[I

    const v2, 0x9588

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v3, v2

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v2

    aput v2, v1, v0

    .line 760
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 763
    .end local v0    # "i":I
    :cond_1
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 764
    .local v0, "expected":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_3

    .line 765
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisObjectArt;->housePaletteFlags:[I

    aget v3, v3, v2

    aget v4, v0, v2

    if-ne v3, v4, :cond_2

    .line 764
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 766
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unexpected Genesis house palette table"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 769
    .end local v2    # "i":I
    :cond_3
    return-void

    :array_0
    .array-data 4
        0x0
        0x2000
        0x6000
        0x2000
        0x4000
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private decodePlacementGridCell(I)Landroid/graphics/Bitmap;
    .locals 19
    .param p1, "paletteLine"    # I

    .line 235
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ahsim/demulation/GenesisObjectArt;->providerBacked:Z

    const v2, 0x64846

    const v3, 0x64746

    if-nez v1, :cond_0

    .line 236
    const/16 v1, 0x100

    invoke-direct {v0, v3, v1}, Lcom/ahsim/demulation/GenesisObjectArt;->checkRange(II)V

    .line 237
    invoke-direct {v0, v2, v1}, Lcom/ahsim/demulation/GenesisObjectArt;->checkRange(II)V

    .line 239
    :cond_0
    const/16 v1, 0x400

    new-array v1, v1, [I

    .line 240
    .local v1, "pixels":[I
    const/4 v4, 0x0

    .local v4, "tileX":I
    :goto_0
    const/16 v5, 0x20

    const/4 v6, 0x4

    if-ge v4, v6, :cond_8

    .line 241
    const/4 v7, 0x0

    .local v7, "tileY":I
    :goto_1
    if-ge v7, v6, :cond_7

    .line 242
    mul-int/lit8 v8, v4, 0x4

    add-int/2addr v8, v7

    .line 243
    .local v8, "pattern":I
    mul-int/lit8 v9, v8, 0x20

    .line 244
    .local v9, "srcBase":I
    const/4 v10, 0x0

    .local v10, "py":I
    :goto_2
    const/16 v11, 0x8

    if-ge v10, v11, :cond_6

    .line 245
    const/4 v12, 0x0

    .local v12, "px":I
    :goto_3
    if-ge v12, v11, :cond_5

    .line 247
    iget-boolean v13, v0, Lcom/ahsim/demulation/GenesisObjectArt;->providerBacked:Z

    if-eqz v13, :cond_1

    .line 248
    iget-object v13, v0, Lcom/ahsim/demulation/GenesisObjectArt;->providerPlacementGridPatterns:[B

    mul-int/lit8 v14, v10, 0x4

    add-int/2addr v14, v9

    ushr-int/lit8 v15, v12, 0x1

    add-int/2addr v14, v15

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    .local v13, "packed":I
    goto :goto_5

    .line 250
    .end local v13    # "packed":I
    :cond_1
    if-ge v8, v11, :cond_2

    .line 251
    mul-int/lit8 v13, v8, 0x20

    add-int/2addr v13, v3

    goto :goto_4

    .line 252
    :cond_2
    add-int/lit8 v13, v8, -0x8

    mul-int/2addr v13, v5

    add-int/2addr v13, v2

    :goto_4
    nop

    .line 253
    .local v13, "romBase":I
    mul-int/lit8 v14, v10, 0x4

    add-int/2addr v14, v13

    ushr-int/lit8 v15, v12, 0x1

    add-int/2addr v14, v15

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/GenesisObjectArt;->u8(I)I

    move-result v14

    move v13, v14

    .line 255
    .local v13, "packed":I
    :goto_5
    and-int/lit8 v14, v12, 0x1

    if-eqz v14, :cond_3

    and-int/lit8 v14, v13, 0xf

    goto :goto_6

    :cond_3
    ushr-int/lit8 v14, v13, 0x4

    and-int/lit8 v14, v14, 0xf

    .line 256
    .local v14, "ci":I
    :goto_6
    if-nez v14, :cond_4

    goto :goto_7

    .line 257
    :cond_4
    mul-int/lit8 v15, v4, 0x8

    add-int/2addr v15, v12

    .line 258
    .local v15, "x":I
    mul-int/lit8 v16, v7, 0x8

    add-int v16, v16, v10

    .line 259
    .local v16, "y":I
    mul-int/lit8 v17, v16, 0x20

    add-int v17, v17, v15

    iget-object v2, v0, Lcom/ahsim/demulation/GenesisObjectArt;->palette:[I

    and-int/lit8 v18, p1, 0x3

    mul-int/lit8 v18, v18, 0x10

    add-int v18, v18, v14

    aget v2, v2, v18

    aput v2, v1, v17

    .line 245
    .end local v13    # "packed":I
    .end local v14    # "ci":I
    .end local v15    # "x":I
    .end local v16    # "y":I
    :goto_7
    add-int/lit8 v12, v12, 0x1

    const v2, 0x64846

    goto :goto_3

    .line 244
    .end local v12    # "px":I
    :cond_5
    add-int/lit8 v10, v10, 0x1

    const v2, 0x64846

    goto :goto_2

    .line 241
    .end local v8    # "pattern":I
    .end local v9    # "srcBase":I
    .end local v10    # "py":I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    const v2, 0x64846

    goto :goto_1

    .line 240
    .end local v7    # "tileY":I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    const v2, 0x64846

    goto :goto_0

    .line 264
    .end local v4    # "tileX":I
    :cond_8
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v5, v5, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private decodeProviderDirectLayout(IIIIIZ)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    .locals 8
    .param p1, "kind"    # I
    .param p2, "index"    # I
    .param p3, "transform"    # I
    .param p4, "house"    # I
    .param p5, "visualId"    # I
    .param p6, "reversePieces"    # Z

    .line 1055
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerDirectLayouts:Ljava/util/Map;

    shl-int/lit8 v1, p1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p2

    or-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [B

    .line 1056
    .local v2, "pieces":[B
    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1057
    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    .end local p3    # "transform":I
    .end local p4    # "house":I
    .end local p5    # "visualId":I
    .end local p6    # "reversePieces":Z
    .local v3, "transform":I
    .local v4, "house":I
    .local v5, "visualId":I
    .local v7, "reversePieces":Z
    invoke-direct/range {v1 .. v7}, Lcom/ahsim/demulation/GenesisObjectArt;->decodeProviderPieces([BIIILcom/ahsim/demulation/GenesisObjectArt$ProviderDynamic;Z)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    move-result-object p3

    return-object p3
.end method

.method private decodeProviderPaletteAndHouseFlags([B)V
    .locals 11
    .param p1, "paletteBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 772
    if-eqz p1, :cond_1

    array-length v0, p1

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    .line 775
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 776
    mul-int/lit8 v1, v0, 0x2

    invoke-static {p1, v1}, Lcom/ahsim/demulation/GenesisObjectArt;->be16Bytes([BI)I

    move-result v1

    .line 777
    .local v1, "word":I
    ushr-int/lit8 v2, v1, 0x1

    and-int/lit8 v2, v2, 0x7

    .line 778
    .local v2, "r3":I
    ushr-int/lit8 v3, v1, 0x5

    and-int/lit8 v3, v3, 0x7

    .line 779
    .local v3, "g3":I
    ushr-int/lit8 v4, v1, 0x9

    and-int/lit8 v4, v4, 0x7

    .line 780
    .local v4, "b3":I
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisObjectArt;->palette:[I

    int-to-float v6, v2

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v6, v7

    const/high16 v8, 0x40e00000    # 7.0f

    div-float/2addr v6, v8

    .line 781
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v9, v3

    mul-float/2addr v9, v7

    div-float/2addr v9, v8

    .line 782
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v10, v4

    mul-float/2addr v10, v7

    div-float/2addr v10, v8

    .line 783
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 780
    invoke-static {v6, v9, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    aput v6, v5, v0

    .line 775
    .end local v1    # "word":I
    .end local v2    # "r3":I
    .end local v3    # "g3":I
    .end local v4    # "b3":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 785
    .end local v0    # "i":I
    :cond_0
    sget-object v0, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->HOUSE_PALETTE_FLAGS:[I

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisObjectArt;->housePaletteFlags:[I

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisObjectArt;->housePaletteFlags:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 787
    return-void

    .line 773
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Installed tactical palette has wrong size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decodeProviderPieces([BIIILcom/ahsim/demulation/GenesisObjectArt$ProviderDynamic;Z)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    .locals 43
    .param p1, "pieces"    # [B
    .param p2, "transform"    # I
    .param p3, "house"    # I
    .param p4, "visualId"    # I
    .param p5, "dynamic"    # Lcom/ahsim/demulation/GenesisObjectArt$ProviderDynamic;
    .param p6, "reversePieces"    # Z

    .line 1062
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    const/4 v3, 0x0

    if-eqz v1, :cond_14

    array-length v4, v1

    if-eqz v4, :cond_14

    array-length v4, v1

    rem-int/lit8 v4, v4, 0xc

    if-eqz v4, :cond_0

    goto/16 :goto_d

    .line 1063
    :cond_0
    array-length v4, v1

    div-int/lit8 v4, v4, 0xc

    .line 1064
    .local v4, "pieceCount":I
    const/16 v5, 0x7fff

    .local v5, "minX":I
    const/16 v6, 0x7fff

    .local v6, "minY":I
    const/16 v7, -0x8000

    .local v7, "maxX":I
    const/16 v8, -0x8000

    .line 1065
    .local v8, "maxY":I
    const/4 v9, 0x0

    move v12, v5

    move v13, v6

    .end local v5    # "minX":I
    .end local v6    # "minY":I
    .local v9, "i":I
    .local v12, "minX":I
    .local v13, "minY":I
    :goto_0
    const/4 v5, 0x1

    if-ge v9, v4, :cond_1

    .line 1066
    mul-int/lit8 v6, v9, 0xc

    .line 1067
    .local v6, "p":I
    add-int/lit8 v10, v6, 0x6

    invoke-static {v1, v10}, Lcom/ahsim/demulation/GenesisObjectArt;->providerU16([BI)I

    move-result v10

    .line 1068
    .local v10, "size":I
    add-int/lit8 v11, v6, 0xa

    invoke-static {v1, v11}, Lcom/ahsim/demulation/GenesisObjectArt;->providerS16([BI)I

    move-result v11

    .line 1069
    .local v11, "x":I
    add-int/lit8 v14, v6, 0x4

    invoke-static {v1, v14}, Lcom/ahsim/demulation/GenesisObjectArt;->providerS16([BI)I

    move-result v14

    .line 1070
    .local v14, "y":I
    ushr-int/lit8 v15, v10, 0xa

    and-int/lit8 v15, v15, 0x3

    add-int/2addr v15, v5

    .line 1071
    .local v15, "wt":I
    ushr-int/lit8 v16, v10, 0x8

    and-int/lit8 v16, v16, 0x3

    add-int/lit8 v16, v16, 0x1

    .line 1072
    .local v16, "ht":I
    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1073
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1074
    mul-int/lit8 v5, v15, 0x8

    add-int/2addr v5, v11

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1075
    mul-int/lit8 v5, v16, 0x8

    add-int/2addr v5, v14

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1065
    .end local v6    # "p":I
    .end local v10    # "size":I
    .end local v11    # "x":I
    .end local v14    # "y":I
    .end local v15    # "wt":I
    .end local v16    # "ht":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1077
    .end local v9    # "i":I
    :cond_1
    if-le v7, v12, :cond_13

    if-le v8, v13, :cond_13

    sub-int v6, v7, v12

    const/16 v9, 0x100

    if-gt v6, v9, :cond_13

    sub-int v6, v8, v13

    if-le v6, v9, :cond_2

    move/from16 v22, v4

    goto/16 :goto_c

    .line 1078
    :cond_2
    sub-int v3, v7, v12

    .line 1079
    .local v3, "width":I
    sub-int v6, v8, v13

    .line 1080
    .local v6, "height":I
    mul-int v9, v3, v6

    new-array v15, v9, [I

    .line 1081
    .local v15, "pixels":[I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_1
    if-ge v9, v4, :cond_12

    .line 1082
    if-eqz p6, :cond_3

    add-int/lit8 v10, v4, -0x1

    sub-int/2addr v10, v9

    goto :goto_2

    :cond_3
    move v10, v9

    .line 1083
    .local v10, "pieceIndex":I
    :goto_2
    mul-int/lit8 v11, v10, 0xc

    .line 1084
    .local v11, "p":I
    add-int/lit8 v14, v11, 0x6

    invoke-static {v1, v14}, Lcom/ahsim/demulation/GenesisObjectArt;->providerU16([BI)I

    move-result v14

    .line 1085
    .local v14, "size":I
    move/from16 v16, v5

    add-int/lit8 v5, v11, 0x8

    invoke-static {v1, v5}, Lcom/ahsim/demulation/GenesisObjectArt;->providerU16([BI)I

    move-result v5

    .line 1086
    .local v5, "pieceAttr":I
    move/from16 v22, v4

    .end local v4    # "pieceCount":I
    .local v22, "pieceCount":I
    add-int/lit8 v4, v11, 0xa

    invoke-static {v1, v4}, Lcom/ahsim/demulation/GenesisObjectArt;->providerS16([BI)I

    move-result v4

    sub-int/2addr v4, v12

    .line 1087
    .local v4, "x0":I
    move/from16 v17, v4

    .end local v4    # "x0":I
    .local v17, "x0":I
    add-int/lit8 v4, v11, 0x4

    invoke-static {v1, v4}, Lcom/ahsim/demulation/GenesisObjectArt;->providerS16([BI)I

    move-result v4

    sub-int/2addr v4, v13

    .line 1088
    .local v4, "y0":I
    ushr-int/lit8 v18, v14, 0xa

    and-int/lit8 v18, v18, 0x3

    add-int/lit8 v18, v18, 0x1

    .line 1089
    .local v18, "wt":I
    ushr-int/lit8 v19, v14, 0x8

    and-int/lit8 v19, v19, 0x3

    add-int/lit8 v19, v19, 0x1

    .line 1090
    .local v19, "ht":I
    invoke-static/range {p2 .. p2}, Lcom/ahsim/demulation/GenesisObjectArt;->flipFlags(I)I

    move-result v20

    iget-object v1, v0, Lcom/ahsim/demulation/GenesisObjectArt;->housePaletteFlags:[I

    and-int/lit8 v21, p3, 0x7

    aget v1, v1, v21

    or-int v1, v20, v1

    .line 1091
    .local v1, "objectFlags":I
    const v20, 0x9fff

    and-int v21, v5, v20

    const v23, 0xf800

    and-int v23, v1, v23

    xor-int v21, v21, v23

    .line 1092
    .local v21, "attr":I
    move/from16 v23, v1

    .end local v1    # "objectFlags":I
    .local v23, "objectFlags":I
    and-int/lit16 v1, v5, 0x6000

    if-eqz v1, :cond_4

    and-int v1, v21, v20

    move/from16 v20, v1

    and-int/lit16 v1, v5, 0x6000

    or-int v21, v20, v1

    :cond_4
    move/from16 v1, v21

    .line 1093
    .end local v21    # "attr":I
    .local v1, "attr":I
    move/from16 v20, v4

    .end local v4    # "y0":I
    .local v20, "y0":I
    and-int/lit16 v4, v1, 0x7ff

    .line 1094
    .local v4, "firstPattern":I
    move/from16 v21, v4

    .end local v4    # "firstPattern":I
    .local v21, "firstPattern":I
    and-int/lit16 v4, v1, 0x800

    const/16 v24, 0x0

    if-eqz v4, :cond_5

    move/from16 v4, v16

    goto :goto_3

    :cond_5
    move/from16 v4, v24

    .line 1095
    .local v4, "hFlip":Z
    :goto_3
    move/from16 v25, v4

    .end local v4    # "hFlip":Z
    .local v25, "hFlip":Z
    and-int/lit16 v4, v1, 0x1000

    if-eqz v4, :cond_6

    move/from16 v24, v16

    .line 1096
    .local v24, "vFlip":Z
    :cond_6
    ushr-int/lit8 v4, v1, 0xd

    and-int/lit8 v4, v4, 0x3

    .line 1097
    .local v4, "paletteLine":I
    move/from16 v26, v1

    .end local v1    # "attr":I
    .local v26, "attr":I
    mul-int/lit8 v1, v18, 0x8

    .line 1098
    .local v1, "spriteW":I
    move/from16 v27, v4

    .end local v4    # "paletteLine":I
    .local v27, "paletteLine":I
    mul-int/lit8 v4, v19, 0x8

    .line 1099
    .local v4, "spriteH":I
    const/16 v28, 0x0

    move/from16 v29, v5

    move/from16 v5, v28

    .local v5, "dx":I
    .local v29, "pieceAttr":I
    :goto_4
    if-ge v5, v1, :cond_11

    .line 1100
    const/16 v28, 0x0

    move/from16 v30, v1

    move/from16 v1, v28

    .local v1, "dy":I
    .local v30, "spriteW":I
    :goto_5
    if-ge v1, v4, :cond_10

    .line 1101
    if-eqz v25, :cond_7

    add-int/lit8 v28, v30, -0x1

    sub-int v28, v28, v5

    goto :goto_6

    :cond_7
    move/from16 v28, v5

    .line 1102
    .local v28, "sx":I
    :goto_6
    if-eqz v24, :cond_8

    add-int/lit8 v31, v4, -0x1

    sub-int v31, v31, v1

    goto :goto_7

    :cond_8
    move/from16 v31, v1

    .line 1103
    .local v31, "sy":I
    :goto_7
    ushr-int/lit8 v32, v28, 0x3

    .line 1104
    .local v32, "tileX":I
    ushr-int/lit8 v33, v31, 0x3

    .line 1105
    .local v33, "tileY":I
    mul-int v34, v32, v19

    add-int v34, v21, v34

    move/from16 v35, v1

    .end local v1    # "dy":I
    .local v35, "dy":I
    add-int v1, v34, v33

    .line 1106
    .local v1, "pattern":I
    if-ltz v1, :cond_f

    move/from16 v34, v4

    .end local v4    # "spriteH":I
    .local v34, "spriteH":I
    const/16 v4, 0x800

    if-lt v1, v4, :cond_9

    goto/16 :goto_b

    .line 1107
    :cond_9
    and-int/lit8 v4, v28, 0x7

    .line 1108
    .local v4, "px":I
    and-int/lit8 v36, v31, 0x7

    .line 1110
    .local v36, "py":I
    if-eqz v2, :cond_b

    move/from16 v37, v4

    .end local v4    # "px":I
    .local v37, "px":I
    iget v4, v2, Lcom/ahsim/demulation/GenesisObjectArt$ProviderDynamic;->minPattern:I

    if-lt v1, v4, :cond_a

    iget v4, v2, Lcom/ahsim/demulation/GenesisObjectArt$ProviderDynamic;->minPattern:I

    move/from16 v38, v4

    iget v4, v2, Lcom/ahsim/demulation/GenesisObjectArt$ProviderDynamic;->patternCount:I

    add-int v4, v38, v4

    if-ge v1, v4, :cond_a

    .line 1112
    iget v4, v2, Lcom/ahsim/demulation/GenesisObjectArt$ProviderDynamic;->minPattern:I

    sub-int v4, v1, v4

    mul-int/lit8 v4, v4, 0x20

    mul-int/lit8 v38, v36, 0x4

    add-int v4, v4, v38

    ushr-int/lit8 v38, v37, 0x1

    add-int v4, v4, v38

    .line 1113
    .local v4, "offset":I
    move/from16 v38, v1

    .end local v1    # "pattern":I
    .local v38, "pattern":I
    iget-object v1, v2, Lcom/ahsim/demulation/GenesisObjectArt$ProviderDynamic;->pixels:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    .line 1114
    .end local v4    # "offset":I
    .local v1, "packed":I
    goto :goto_9

    .line 1110
    .end local v38    # "pattern":I
    .local v1, "pattern":I
    :cond_a
    move/from16 v38, v1

    .end local v1    # "pattern":I
    .restart local v38    # "pattern":I
    goto :goto_8

    .end local v37    # "px":I
    .end local v38    # "pattern":I
    .restart local v1    # "pattern":I
    .local v4, "px":I
    :cond_b
    move/from16 v38, v1

    move/from16 v37, v4

    .line 1115
    .end local v1    # "pattern":I
    .end local v4    # "px":I
    .restart local v37    # "px":I
    .restart local v38    # "pattern":I
    :goto_8
    mul-int/lit8 v1, v38, 0x20

    mul-int/lit8 v4, v36, 0x4

    add-int/2addr v1, v4

    ushr-int/lit8 v4, v37, 0x1

    add-int/2addr v1, v4

    .line 1116
    .local v1, "offset":I
    iget-object v4, v0, Lcom/ahsim/demulation/GenesisObjectArt;->vramPatterns:[B

    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0xff

    move v1, v4

    .line 1118
    .local v1, "packed":I
    :goto_9
    and-int/lit8 v4, v37, 0x1

    if-nez v4, :cond_c

    ushr-int/lit8 v4, v1, 0x4

    goto :goto_a

    :cond_c
    and-int/lit8 v4, v1, 0xf

    .line 1119
    .local v4, "colorIndex":I
    :goto_a
    if-nez v4, :cond_d

    goto :goto_b

    .line 1120
    :cond_d
    move/from16 v39, v1

    .end local v1    # "packed":I
    .local v39, "packed":I
    add-int v1, v17, v5

    .line 1121
    .local v1, "xx":I
    add-int v2, v20, v35

    .line 1122
    .local v2, "yy":I
    if-ltz v1, :cond_e

    if-ltz v2, :cond_e

    if-ge v1, v3, :cond_e

    if-ge v2, v6, :cond_e

    .line 1123
    mul-int v40, v2, v3

    add-int v40, v40, v1

    move/from16 v41, v1

    .end local v1    # "xx":I
    .local v41, "xx":I
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisObjectArt;->palette:[I

    mul-int/lit8 v42, v27, 0x10

    add-int v42, v42, v4

    aget v1, v1, v42

    aput v1, v15, v40

    goto :goto_b

    .line 1122
    .end local v41    # "xx":I
    .restart local v1    # "xx":I
    :cond_e
    move/from16 v41, v1

    .end local v1    # "xx":I
    .restart local v41    # "xx":I
    goto :goto_b

    .line 1106
    .end local v2    # "yy":I
    .end local v34    # "spriteH":I
    .end local v36    # "py":I
    .end local v37    # "px":I
    .end local v38    # "pattern":I
    .end local v39    # "packed":I
    .end local v41    # "xx":I
    .local v1, "pattern":I
    .local v4, "spriteH":I
    :cond_f
    move/from16 v38, v1

    move/from16 v34, v4

    .line 1100
    .end local v1    # "pattern":I
    .end local v4    # "spriteH":I
    .end local v28    # "sx":I
    .end local v31    # "sy":I
    .end local v32    # "tileX":I
    .end local v33    # "tileY":I
    .restart local v34    # "spriteH":I
    :goto_b
    add-int/lit8 v1, v35, 0x1

    move-object/from16 v2, p5

    move/from16 v4, v34

    .end local v35    # "dy":I
    .local v1, "dy":I
    goto/16 :goto_5

    .end local v34    # "spriteH":I
    .restart local v4    # "spriteH":I
    :cond_10
    move/from16 v35, v1

    move/from16 v34, v4

    .line 1099
    .end local v1    # "dy":I
    .end local v4    # "spriteH":I
    .restart local v34    # "spriteH":I
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p5

    move/from16 v1, v30

    goto/16 :goto_4

    .end local v30    # "spriteW":I
    .end local v34    # "spriteH":I
    .local v1, "spriteW":I
    .restart local v4    # "spriteH":I
    :cond_11
    move/from16 v30, v1

    move/from16 v34, v4

    .line 1081
    .end local v1    # "spriteW":I
    .end local v4    # "spriteH":I
    .end local v5    # "dx":I
    .end local v10    # "pieceIndex":I
    .end local v11    # "p":I
    .end local v14    # "size":I
    .end local v17    # "x0":I
    .end local v18    # "wt":I
    .end local v19    # "ht":I
    .end local v20    # "y0":I
    .end local v21    # "firstPattern":I
    .end local v23    # "objectFlags":I
    .end local v24    # "vFlip":Z
    .end local v25    # "hFlip":Z
    .end local v26    # "attr":I
    .end local v27    # "paletteLine":I
    .end local v29    # "pieceAttr":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move/from16 v5, v16

    move/from16 v4, v22

    goto/16 :goto_1

    .line 1128
    .end local v9    # "i":I
    .end local v22    # "pieceCount":I
    .local v4, "pieceCount":I
    :cond_12
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v6, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1129
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v16, 0x0

    move/from16 v20, v3

    move/from16 v17, v3

    move/from16 v21, v6

    move-object v14, v11

    .end local v3    # "width":I
    .end local v6    # "height":I
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .local v14, "bitmap":Landroid/graphics/Bitmap;
    .local v17, "width":I
    .local v21, "height":I
    invoke-virtual/range {v14 .. v21}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1130
    move-object v1, v15

    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    .end local v15    # "pixels":[I
    .local v1, "pixels":[I
    .restart local v11    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v10, Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    move/from16 v15, p2

    move/from16 v14, p4

    invoke-direct/range {v10 .. v15}, Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;-><init>(Landroid/graphics/Bitmap;IIII)V

    return-object v10

    .line 1077
    .end local v1    # "pixels":[I
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v17    # "width":I
    .end local v21    # "height":I
    :cond_13
    move/from16 v22, v4

    .end local v4    # "pieceCount":I
    .restart local v22    # "pieceCount":I
    :goto_c
    return-object v3

    .line 1062
    .end local v7    # "maxX":I
    .end local v8    # "maxY":I
    .end local v12    # "minX":I
    .end local v13    # "minY":I
    .end local v22    # "pieceCount":I
    :cond_14
    :goto_d
    return-object v3
.end method

.method private decodeStructurePreferredBases()V
    .locals 11

    .line 712
    const/4 v0, 0x0

    .local v0, "type":I
    :goto_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisObjectArt;->structurePreferredBaseMetatiles:[I

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 713
    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisObjectArt;->getStructureInitialBaseMetatile(I)I

    move-result v1

    .line 714
    .local v1, "initial":I
    move v2, v1

    .line 715
    .local v2, "preferred":I
    if-ltz v1, :cond_5

    .line 717
    iget-boolean v3, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerBacked:Z

    if-eqz v3, :cond_2

    .line 718
    sget-object v3, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->STRUCTURE_VISUAL_ID:[I

    aget v3, v3, v0

    .line 719
    .local v3, "visualId":I
    sget-object v4, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->STRUCTURE_VISUAL_STREAMS:[[I

    aget-object v4, v4, v3

    .line 720
    .local v4, "stream":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    add-int/lit8 v6, v5, 0x1

    array-length v7, v4

    if-ge v6, v7, :cond_1

    .line 721
    aget v6, v4, v5

    .line 722
    .local v6, "candidate":I
    if-eqz v6, :cond_0

    if-eq v6, v1, :cond_0

    .line 723
    move v2, v6

    .line 724
    goto :goto_2

    .line 720
    .end local v6    # "candidate":I
    :cond_0
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 727
    .end local v4    # "stream":[I
    .end local v5    # "i":I
    :cond_1
    :goto_2
    goto :goto_4

    .line 728
    .end local v3    # "visualId":I
    :cond_2
    mul-int/lit8 v3, v0, 0x4

    const v4, 0x6b954

    add-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisObjectArt;->be32(I)I

    move-result v3

    invoke-static {v3}, Lcom/ahsim/demulation/GenesisObjectArt;->ptr24(I)I

    move-result v3

    .line 729
    .local v3, "info":I
    add-int/lit8 v4, v3, 0x3e

    invoke-direct {p0, v4}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v4

    and-int/lit8 v4, v4, 0x3f

    .line 730
    .local v4, "visualId":I
    mul-int/lit8 v5, v4, 0x4

    const v6, 0x6a9bc

    add-int/2addr v5, v6

    invoke-direct {p0, v5}, Lcom/ahsim/demulation/GenesisObjectArt;->be32(I)I

    move-result v5

    invoke-static {v5}, Lcom/ahsim/demulation/GenesisObjectArt;->ptr24(I)I

    move-result v5

    .line 731
    .local v5, "visualStream":I
    const/4 v6, 0x0

    .local v6, "step":I
    :goto_3
    const/16 v7, 0x10

    if-ge v6, v7, :cond_5

    .line 732
    mul-int/lit8 v7, v6, 0x4

    add-int/2addr v7, v5

    .line 733
    .local v7, "pair":I
    const/4 v8, 0x4

    invoke-direct {p0, v7, v8}, Lcom/ahsim/demulation/GenesisObjectArt;->checkRange(II)V

    .line 734
    invoke-direct {p0, v7}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v8

    .line 735
    .local v8, "candidate":I
    add-int/lit8 v9, v7, 0x2

    invoke-direct {p0, v9}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v9

    .line 736
    .local v9, "duration":I
    if-nez v8, :cond_3

    const v10, 0xffff

    if-ne v9, v10, :cond_3

    goto :goto_4

    .line 737
    :cond_3
    if-eqz v8, :cond_4

    if-eq v8, v1, :cond_4

    .line 738
    move v2, v8

    .line 739
    goto :goto_4

    .line 731
    .end local v7    # "pair":I
    .end local v8    # "candidate":I
    .end local v9    # "duration":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 744
    .end local v3    # "info":I
    .end local v4    # "visualId":I
    .end local v5    # "visualStream":I
    .end local v6    # "step":I
    :cond_5
    :goto_4
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisObjectArt;->structurePreferredBaseMetatiles:[I

    aput v2, v3, v0

    .line 712
    .end local v1    # "initial":I
    .end local v2    # "preferred":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 746
    .end local v0    # "type":I
    :cond_6
    return-void
.end method

.method private decodeVisual(III)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    .locals 1
    .param p1, "visualId"    # I
    .param p2, "transform"    # I
    .param p3, "house"    # I

    .line 986
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ahsim/demulation/GenesisObjectArt;->decodeVisual(IIIZ)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    move-result-object v0

    return-object v0
.end method

.method private decodeVisual(IIIZ)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    .locals 18
    .param p1, "visualId"    # I
    .param p2, "transform"    # I
    .param p3, "house"    # I
    .param p4, "reversePieces"    # Z

    .line 990
    move-object/from16 v0, p0

    move/from16 v4, p1

    const/4 v1, 0x0

    if-ltz v4, :cond_7

    const/16 v2, 0x7ff

    if-le v4, v2, :cond_0

    goto/16 :goto_3

    .line 991
    :cond_0
    iget-boolean v2, v0, Lcom/ahsim/demulation/GenesisObjectArt;->providerBacked:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 992
    iget-object v2, v0, Lcom/ahsim/demulation/GenesisObjectArt;->providerVisuals:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/ahsim/demulation/GenesisObjectArt$ProviderVisual;

    .line 993
    .local v7, "visual":Lcom/ahsim/demulation/GenesisObjectArt$ProviderVisual;
    if-nez v7, :cond_1

    return-object v1

    .line 1001
    :cond_1
    invoke-static {v4}, Lcom/ahsim/demulation/GenesisObjectArt;->visualSkipsHousePalette(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move/from16 v3, p3

    .line 1002
    .local v3, "paletteHouse":I
    :goto_0
    iget-object v1, v7, Lcom/ahsim/demulation/GenesisObjectArt$ProviderVisual;->pieces:[B

    iget-object v2, v0, Lcom/ahsim/demulation/GenesisObjectArt;->providerDynamics:Ljava/util/Map;

    .line 1003
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/ahsim/demulation/GenesisObjectArt$ProviderDynamic;

    .line 1002
    move/from16 v2, p2

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ahsim/demulation/GenesisObjectArt;->decodeProviderPieces([BIIILcom/ahsim/demulation/GenesisObjectArt$ProviderDynamic;Z)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    move-result-object v1

    return-object v1

    .line 1005
    .end local v3    # "paletteHouse":I
    .end local v7    # "visual":Lcom/ahsim/demulation/GenesisObjectArt$ProviderVisual;
    :cond_3
    mul-int/lit8 v2, p1, 0x8

    const v4, 0x60e8c

    add-int v7, v2, v4

    .line 1006
    .local v7, "entry":I
    const/16 v2, 0x8

    invoke-direct {v0, v7, v2}, Lcom/ahsim/demulation/GenesisObjectArt;->checkRange(II)V

    .line 1007
    invoke-direct {v0, v7}, Lcom/ahsim/demulation/GenesisObjectArt;->be32u(I)J

    move-result-wide v8

    .line 1008
    .local v8, "sourceWord":J
    add-int/lit8 v2, v7, 0x4

    invoke-direct {v0, v2}, Lcom/ahsim/demulation/GenesisObjectArt;->be32u(I)J

    move-result-wide v10

    .line 1009
    .local v10, "descriptorWord":J
    const-wide/32 v4, 0xffffff

    and-long v12, v10, v4

    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-nez v2, :cond_4

    return-object v1

    .line 1010
    :cond_4
    and-long v1, v10, v4

    long-to-int v1, v1

    .line 1019
    .local v1, "layout":I
    const/16 v2, 0x18

    ushr-long v12, v8, v2

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    const-wide/16 v16, 0x80

    cmp-long v6, v12, v16

    if-nez v6, :cond_5

    .line 1020
    and-long/2addr v4, v8

    long-to-int v4, v4

    goto :goto_1

    :cond_5
    const/4 v4, -0x1

    :goto_1
    move v5, v4

    .line 1023
    .local v5, "dynamicSource":I
    ushr-long v12, v10, v2

    and-long/2addr v12, v14

    const-wide/16 v14, 0xb

    cmp-long v2, v12, v14

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    move/from16 v3, p3

    .line 1024
    .restart local v3    # "paletteHouse":I
    :goto_2
    move/from16 v4, p1

    move/from16 v2, p2

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ahsim/demulation/GenesisObjectArt;->decodeLayout(IIIIIZ)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    move-result-object v12

    return-object v12

    .line 990
    .end local v1    # "layout":I
    .end local v3    # "paletteHouse":I
    .end local v5    # "dynamicSource":I
    .end local v7    # "entry":I
    .end local v8    # "sourceWord":J
    .end local v10    # "descriptorWord":J
    :cond_7
    :goto_3
    return-object v1
.end method

.method private decompress(II)[B
    .locals 10
    .param p1, "source"    # I
    .param p2, "expectedBytes"    # I

    .line 931
    new-array v0, p2, [B

    .line 932
    .local v0, "out":[B
    move v1, p1

    .line 933
    .local v1, "src":I
    const/4 v2, 0x0

    .line 934
    .local v2, "dst":I
    const/4 v3, 0x0

    .line 936
    .local v3, "guard":I
    :goto_0
    add-int/lit8 v3, v3, 0x1

    const v4, 0x186a0

    if-gt v3, v4, :cond_f

    .line 937
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "src":I
    .local v4, "src":I
    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisObjectArt;->u8(I)I

    move-result v1

    .line 938
    .local v1, "c":I
    const/16 v5, 0x80

    if-ne v1, v5, :cond_1

    .line 978
    .end local v1    # "c":I
    if-ne v2, p2, :cond_0

    .line 982
    return-object v0

    .line 979
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Genesis sprite block decompressed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes, expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 939
    .restart local v1    # "c":I
    :cond_1
    const/16 v5, 0x81

    if-lt v1, v5, :cond_3

    const/16 v5, 0xbf

    if-gt v1, v5, :cond_3

    .line 940
    and-int/lit8 v5, v1, 0x3f

    .line 941
    .local v5, "n":I
    invoke-direct {p0, v4, v5}, Lcom/ahsim/demulation/GenesisObjectArt;->checkRange(II)V

    .line 942
    array-length v6, v0

    sub-int/2addr v6, v5

    if-gt v2, v6, :cond_2

    .line 943
    iget-object v6, p0, Lcom/ahsim/demulation/GenesisObjectArt;->rom:[B

    invoke-static {v6, v4, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 944
    add-int/2addr v4, v5

    .line 945
    add-int/2addr v2, v5

    .line 946
    .end local v5    # "n":I
    move v1, v4

    goto/16 :goto_5

    .line 942
    .restart local v5    # "n":I
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Genesis literal overrun"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 946
    .end local v5    # "n":I
    :cond_3
    const/16 v5, 0x7f

    if-gt v1, v5, :cond_6

    .line 947
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "src":I
    .local v5, "src":I
    invoke-direct {p0, v4}, Lcom/ahsim/demulation/GenesisObjectArt;->u8(I)I

    move-result v4

    .line 948
    .local v4, "b":I
    shl-int/lit8 v6, v1, 0x8

    or-int/2addr v6, v4

    and-int/lit16 v6, v6, 0xfff

    .line 949
    .local v6, "back":I
    ushr-int/lit8 v7, v1, 0x4

    add-int/lit8 v7, v7, 0x3

    .line 950
    .local v7, "n":I
    if-lez v6, :cond_5

    if-gt v6, v2, :cond_5

    array-length v8, v0

    sub-int/2addr v8, v7

    if-gt v2, v8, :cond_5

    .line 953
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_4

    sub-int v9, v2, v6

    aget-byte v9, v0, v9

    aput-byte v9, v0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 954
    .end local v4    # "b":I
    .end local v6    # "back":I
    .end local v7    # "n":I
    .end local v8    # "i":I
    :cond_4
    move v1, v5

    goto/16 :goto_5

    .line 951
    .restart local v4    # "b":I
    .restart local v6    # "back":I
    .restart local v7    # "n":I
    :cond_5
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Genesis short-copy range error"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 954
    .end local v5    # "src":I
    .end local v6    # "back":I
    .end local v7    # "n":I
    .local v4, "src":I
    :cond_6
    const/16 v5, 0xfd

    if-gt v1, v5, :cond_9

    .line 955
    and-int/lit8 v5, v1, 0x3f

    add-int/lit8 v5, v5, 0x3

    .line 956
    .local v5, "n":I
    invoke-direct {p0, v4}, Lcom/ahsim/demulation/GenesisObjectArt;->u8(I)I

    move-result v6

    add-int/lit8 v7, v4, 0x1

    invoke-direct {p0, v7}, Lcom/ahsim/demulation/GenesisObjectArt;->u8(I)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    .line 957
    .local v6, "from":I
    add-int/lit8 v4, v4, 0x2

    .line 958
    if-ltz v6, :cond_8

    if-ge v6, v2, :cond_8

    array-length v7, v0

    sub-int/2addr v7, v5

    if-gt v2, v7, :cond_8

    .line 961
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v5, :cond_7

    add-int/lit8 v8, v2, 0x1

    .end local v2    # "dst":I
    .local v8, "dst":I
    add-int v9, v6, v7

    aget-byte v9, v0, v9

    aput-byte v9, v0, v2

    add-int/lit8 v7, v7, 0x1

    move v2, v8

    goto :goto_2

    .line 962
    .end local v5    # "n":I
    .end local v6    # "from":I
    .end local v7    # "i":I
    .end local v8    # "dst":I
    .restart local v2    # "dst":I
    :cond_7
    move v1, v4

    goto/16 :goto_5

    .line 959
    .restart local v5    # "n":I
    .restart local v6    # "from":I
    :cond_8
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Genesis absolute-copy range error"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 962
    .end local v5    # "n":I
    .end local v6    # "from":I
    :cond_9
    const/16 v5, 0xfe

    if-ne v1, v5, :cond_c

    .line 963
    invoke-direct {p0, v4}, Lcom/ahsim/demulation/GenesisObjectArt;->u8(I)I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v6}, Lcom/ahsim/demulation/GenesisObjectArt;->u8(I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    .line 964
    .restart local v5    # "n":I
    add-int/lit8 v6, v4, 0x2

    invoke-direct {p0, v6}, Lcom/ahsim/demulation/GenesisObjectArt;->u8(I)I

    move-result v6

    .line 965
    .local v6, "value":I
    add-int/lit8 v4, v4, 0x3

    .line 966
    array-length v7, v0

    sub-int/2addr v7, v5

    if-gt v2, v7, :cond_b

    .line 967
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    if-ge v7, v5, :cond_a

    add-int/lit8 v8, v2, 0x1

    .end local v2    # "dst":I
    .restart local v8    # "dst":I
    int-to-byte v9, v6

    aput-byte v9, v0, v2

    add-int/lit8 v7, v7, 0x1

    move v2, v8

    goto :goto_3

    .line 968
    .end local v5    # "n":I
    .end local v6    # "value":I
    .end local v7    # "i":I
    .end local v8    # "dst":I
    .restart local v2    # "dst":I
    :cond_a
    move v1, v4

    goto :goto_5

    .line 966
    .restart local v5    # "n":I
    .restart local v6    # "value":I
    :cond_b
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Genesis RLE overrun"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 969
    .end local v5    # "n":I
    .end local v6    # "value":I
    :cond_c
    invoke-direct {p0, v4}, Lcom/ahsim/demulation/GenesisObjectArt;->u8(I)I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v6}, Lcom/ahsim/demulation/GenesisObjectArt;->u8(I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    .line 970
    .restart local v5    # "n":I
    add-int/lit8 v6, v4, 0x2

    invoke-direct {p0, v6}, Lcom/ahsim/demulation/GenesisObjectArt;->u8(I)I

    move-result v6

    add-int/lit8 v7, v4, 0x3

    invoke-direct {p0, v7}, Lcom/ahsim/demulation/GenesisObjectArt;->u8(I)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    .line 971
    .local v6, "from":I
    add-int/lit8 v4, v4, 0x4

    .line 972
    if-ltz v6, :cond_e

    if-ge v6, v2, :cond_e

    array-length v7, v0

    sub-int/2addr v7, v5

    if-gt v2, v7, :cond_e

    .line 975
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v5, :cond_d

    add-int/lit8 v8, v2, 0x1

    .end local v2    # "dst":I
    .restart local v8    # "dst":I
    add-int v9, v6, v7

    aget-byte v9, v0, v9

    aput-byte v9, v0, v2

    add-int/lit8 v7, v7, 0x1

    move v2, v8

    goto :goto_4

    .end local v8    # "dst":I
    .restart local v2    # "dst":I
    :cond_d
    move v1, v4

    .line 977
    .end local v4    # "src":I
    .end local v5    # "n":I
    .end local v6    # "from":I
    .end local v7    # "i":I
    .local v1, "src":I
    :goto_5
    goto/16 :goto_0

    .line 973
    .local v1, "c":I
    .restart local v4    # "src":I
    .restart local v5    # "n":I
    .restart local v6    # "from":I
    :cond_e
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Genesis long-copy range error"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 936
    .end local v4    # "src":I
    .end local v5    # "n":I
    .end local v6    # "from":I
    .local v1, "src":I
    :cond_f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Genesis decompressor guard"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static flipFlags(I)I
    .locals 1
    .param p0, "transform"    # I

    .line 1298
    and-int/lit8 v0, p0, 0x3

    packed-switch v0, :pswitch_data_0

    .line 1302
    const/4 v0, 0x0

    return v0

    .line 1301
    :pswitch_0
    const/16 v0, 0x1800

    return v0

    .line 1300
    :pswitch_1
    const/16 v0, 0x1000

    return v0

    .line 1299
    :pswitch_2
    const/16 v0, 0x800

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPreferredStructureMetatileBitmapStatic(III)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "structureType"    # I
    .param p2, "anchorPacked"    # I
    .param p3, "cellPacked"    # I

    .line 533
    invoke-virtual {p0, p1, p2, p3}, Lcom/ahsim/demulation/GenesisObjectArt;->getPreferredStructureMetatile(III)I

    move-result v0

    .line 534
    .local v0, "tile":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisObjectArt;->terrainArt:Lcom/ahsim/demulation/GenesisTerrainArt;

    invoke-virtual {v1, v0}, Lcom/ahsim/demulation/GenesisTerrainArt;->getMetatile(I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private getStructureInitialBaseMetatile(I)I
    .locals 5
    .param p1, "structureType"    # I

    .line 560
    const/4 v0, -0x1

    if-ltz p1, :cond_3

    const/16 v1, 0x13

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 561
    :cond_0
    iget-boolean v1, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerBacked:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    .line 562
    sget-object v1, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->STRUCTURE_VISUAL_ID:[I

    aget v1, v1, p1

    .line 563
    .local v1, "visualId":I
    sget-object v3, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->STRUCTURE_VISUAL_STREAMS:[[I

    aget-object v3, v3, v1

    .line 564
    .local v3, "stream":[I
    array-length v4, v3

    if-lt v4, v2, :cond_1

    const/4 v0, 0x0

    aget v0, v3, v0

    :cond_1
    return v0

    .line 566
    .end local v1    # "visualId":I
    .end local v3    # "stream":[I
    :cond_2
    mul-int/lit8 v0, p1, 0x4

    const v1, 0x6b954

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisObjectArt;->be32(I)I

    move-result v0

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisObjectArt;->ptr24(I)I

    move-result v0

    .line 567
    .local v0, "info":I
    const/16 v1, 0x40

    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/GenesisObjectArt;->checkRange(II)V

    .line 568
    add-int/lit8 v1, v0, 0x3e

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x3f

    .line 569
    .restart local v1    # "visualId":I
    const v3, 0x6a9bc

    mul-int/lit8 v4, v1, 0x4

    add-int/2addr v4, v3

    invoke-direct {p0, v4}, Lcom/ahsim/demulation/GenesisObjectArt;->be32(I)I

    move-result v3

    invoke-static {v3}, Lcom/ahsim/demulation/GenesisObjectArt;->ptr24(I)I

    move-result v3

    .line 570
    .local v3, "visualStream":I
    invoke-direct {p0, v3, v2}, Lcom/ahsim/demulation/GenesisObjectArt;->checkRange(II)V

    .line 571
    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v2

    return v2

    .line 560
    .end local v0    # "info":I
    .end local v1    # "visualId":I
    .end local v3    # "visualStream":I
    :cond_3
    :goto_0
    return v0
.end method

.method private getStructureMetatileForBase(IIII)I
    .locals 16
    .param p1, "structureType"    # I
    .param p2, "anchorPacked"    # I
    .param p3, "cellPacked"    # I
    .param p4, "baseMetatile"    # I

    .line 576
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, -0x1

    if-ltz v1, :cond_e

    const/16 v3, 0x13

    if-ge v1, v3, :cond_e

    if-gez p4, :cond_0

    goto/16 :goto_7

    .line 579
    :cond_0
    iget-boolean v3, v0, Lcom/ahsim/demulation/GenesisObjectArt;->providerBacked:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 580
    sget-object v3, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->STRUCTURE_LAYOUT_ID:[I

    aget v3, v3, v1

    .line 581
    .local v3, "layoutId":I
    if-ltz v3, :cond_2

    sget-object v5, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->STRUCTURE_LAYOUT_CELL_COUNT:[I

    array-length v5, v5

    if-lt v3, v5, :cond_1

    goto :goto_0

    .line 582
    :cond_1
    sget-object v5, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->STRUCTURE_LAYOUT_CELL_COUNT:[I

    aget v5, v5, v3

    .local v5, "count":I
    goto :goto_1

    .line 581
    .end local v5    # "count":I
    :cond_2
    :goto_0
    return v2

    .line 584
    .end local v3    # "layoutId":I
    :cond_3
    mul-int/lit8 v3, v1, 0x4

    const v5, 0x6b954

    add-int/2addr v3, v5

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/GenesisObjectArt;->be32(I)I

    move-result v3

    invoke-static {v3}, Lcom/ahsim/demulation/GenesisObjectArt;->ptr24(I)I

    move-result v3

    .line 585
    .local v3, "info":I
    const/16 v5, 0x40

    invoke-direct {v0, v3, v5}, Lcom/ahsim/demulation/GenesisObjectArt;->checkRange(II)V

    .line 586
    add-int/lit8 v5, v3, 0x3c

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v5

    .line 587
    .local v5, "layoutId":I
    if-ltz v5, :cond_d

    const/16 v6, 0x8

    if-lt v5, v6, :cond_4

    goto :goto_6

    .line 588
    :cond_4
    const v6, 0xb0a0

    add-int/2addr v6, v5

    invoke-direct {v0, v6}, Lcom/ahsim/demulation/GenesisObjectArt;->u8(I)I

    move-result v6

    add-int/2addr v6, v4

    move v3, v5

    move v5, v6

    .line 590
    .local v3, "layoutId":I
    .local v5, "count":I
    :goto_1
    if-lt v5, v4, :cond_c

    const/16 v4, 0x9

    if-le v5, v4, :cond_5

    goto :goto_5

    .line 592
    :cond_5
    and-int/lit8 v4, p2, 0x3f

    .line 593
    .local v4, "ax":I
    ushr-int/lit8 v6, p2, 0x6

    const/16 v7, 0x3f

    and-int/2addr v6, v7

    .line 594
    .local v6, "ay":I
    and-int/lit8 v8, p3, 0x3f

    .line 595
    .local v8, "cx":I
    ushr-int/lit8 v9, p3, 0x6

    and-int/2addr v9, v7

    .line 596
    .local v9, "cy":I
    sub-int v10, v8, v4

    .line 597
    .local v10, "dx":I
    sub-int v11, v9, v6

    .line 598
    .local v11, "dy":I
    if-ltz v10, :cond_b

    if-ltz v11, :cond_b

    if-gt v10, v7, :cond_b

    if-le v11, v7, :cond_6

    goto :goto_4

    .line 599
    :cond_6
    shl-int/lit8 v7, v11, 0x6

    or-int/2addr v7, v10

    .line 600
    .local v7, "delta":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v5, :cond_a

    .line 601
    iget-boolean v13, v0, Lcom/ahsim/demulation/GenesisObjectArt;->providerBacked:Z

    if-eqz v13, :cond_7

    .line 602
    sget-object v13, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->STRUCTURE_LAYOUT_OFFSETS:[[I

    aget-object v13, v13, v3

    aget v13, v13, v12

    goto :goto_3

    .line 603
    :cond_7
    mul-int/lit8 v13, v3, 0x12

    const v14, 0x6b740

    add-int/2addr v13, v14

    mul-int/lit8 v14, v12, 0x2

    add-int/2addr v13, v14

    invoke-direct {v0, v13}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v13

    :goto_3
    nop

    .line 604
    .local v13, "candidateDelta":I
    if-ne v13, v7, :cond_9

    .line 605
    add-int v14, p4, v12

    .line 606
    .local v14, "tile":I
    const/16 v15, 0x16a

    if-ge v14, v15, :cond_8

    move v2, v14

    :cond_8
    return v2

    .line 600
    .end local v13    # "candidateDelta":I
    .end local v14    # "tile":I
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 609
    .end local v12    # "i":I
    :cond_a
    return v2

    .line 598
    .end local v7    # "delta":I
    :cond_b
    :goto_4
    return v2

    .line 590
    .end local v4    # "ax":I
    .end local v6    # "ay":I
    .end local v8    # "cx":I
    .end local v9    # "cy":I
    .end local v10    # "dx":I
    .end local v11    # "dy":I
    :cond_c
    :goto_5
    return v2

    .line 587
    .local v3, "info":I
    .local v5, "layoutId":I
    :cond_d
    :goto_6
    return v2

    .line 576
    .end local v3    # "info":I
    .end local v5    # "layoutId":I
    :cond_e
    :goto_7
    return v2
.end method

.method private getStructureVisualBaseAtAge(II)I
    .locals 2
    .param p1, "structureType"    # I
    .param p2, "ageTicks"    # I

    .line 666
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerBacked:Z

    if-eqz v0, :cond_2

    .line 667
    if-ltz p1, :cond_1

    sget-object v0, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->STRUCTURE_VISUAL_ID:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 668
    :cond_0
    sget-object v0, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->STRUCTURE_VISUAL_ID:[I

    aget v0, v0, p1

    .local v0, "visualId":I
    goto :goto_1

    .line 667
    .end local v0    # "visualId":I
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0

    .line 670
    :cond_2
    mul-int/lit8 v0, p1, 0x4

    const v1, 0x6b954

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisObjectArt;->be32(I)I

    move-result v0

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisObjectArt;->ptr24(I)I

    move-result v0

    .line 671
    .local v0, "info":I
    const/16 v1, 0x40

    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/GenesisObjectArt;->checkRange(II)V

    .line 672
    add-int/lit8 v1, v0, 0x3e

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x3f

    move v0, v1

    .line 674
    .local v0, "visualId":I
    :goto_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/ahsim/demulation/GenesisObjectArt;->getVisualStreamBaseAtAge(IIZ)I

    move-result v1

    return v1
.end method

.method private getTrackedCompositeFrame(IIII)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    .locals 13
    .param p1, "unitType"    # I
    .param p2, "bodyOrientation"    # I
    .param p3, "turretOrientation"    # I
    .param p4, "house"    # I

    .line 454
    add-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v7, v1, 0x5

    .line 455
    .local v7, "bodyBucket":I
    add-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v8, v1, 0x5

    .line 456
    .local v8, "turretBucket":I
    shl-int/lit8 v1, v7, 0x5

    or-int/2addr v1, p1

    shl-int/lit8 v2, v8, 0x8

    or-int/2addr v1, v2

    shl-int/lit8 v2, p4, 0xb

    or-int v9, v1, v2

    .line 457
    .local v9, "key":I
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisObjectArt;->compositeFrameCache:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    .line 458
    .local v10, "cached":Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    if-eqz v10, :cond_0

    return-object v10

    .line 459
    :cond_0
    mul-int/lit8 v1, v7, 0x8

    add-int v2, v1, v8

    .line 468
    .local v2, "directIndex":I
    iget-boolean v1, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerBacked:Z

    const v3, 0x8009

    const v4, 0x800a

    const/16 v5, 0x9

    if-eqz v1, :cond_3

    .line 469
    if-ne p1, v5, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    .line 470
    :goto_0
    if-ne p1, v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v4

    .line 469
    :goto_1
    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move/from16 v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/ahsim/demulation/GenesisObjectArt;->decodeProviderDirectLayout(IIIIIZ)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    move-result-object v1

    move v11, v2

    .end local v2    # "directIndex":I
    .local v1, "decoded":Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    .local v11, "directIndex":I
    goto :goto_3

    .line 472
    .end local v1    # "decoded":Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    .end local v11    # "directIndex":I
    .restart local v2    # "directIndex":I
    :cond_3
    move v11, v2

    .end local v2    # "directIndex":I
    .restart local v11    # "directIndex":I
    if-ne p1, v5, :cond_4

    const v0, 0x2ec7a

    goto :goto_2

    :cond_4
    const v0, 0x2f2fa

    :goto_2
    move v12, v0

    .line 473
    .local v12, "table":I
    mul-int/lit8 v2, v11, 0x1a

    add-int v1, v12, v2

    .line 474
    .local v1, "layout":I
    nop

    .line 475
    if-ne p1, v5, :cond_5

    move v4, v3

    .line 474
    :cond_5
    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    move-object v0, p0

    move/from16 v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/ahsim/demulation/GenesisObjectArt;->decodeLayout(IIIIIZ)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    move-result-object v2

    move-object v1, v2

    .line 477
    .end local v12    # "table":I
    .local v1, "decoded":Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    :goto_3
    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisObjectArt;->compositeFrameCache:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    :cond_6
    return-object v1
.end method

.method private getVisualStreamBaseAtAge(IIZ)I
    .locals 12
    .param p1, "visualId"    # I
    .param p2, "ageTicks"    # I
    .param p3, "persistLast"    # Z

    .line 678
    const/4 v0, -0x1

    if-ltz p1, :cond_d

    const/16 v1, 0x40

    if-lt p1, v1, :cond_0

    goto/16 :goto_5

    .line 679
    :cond_0
    const v1, 0xffff

    and-int v2, p2, v1

    if-ne v2, v1, :cond_1

    const p2, 0x1fffffff

    .line 680
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 681
    .local v2, "remaining":I
    const/4 v3, 0x0

    .line 682
    .local v3, "lastNonzero":I
    iget-boolean v4, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerBacked:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    .line 683
    sget-object v1, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->STRUCTURE_VISUAL_STREAMS:[[I

    aget-object v1, v1, p1

    .line 684
    .local v1, "stream":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    add-int/lit8 v6, v4, 0x1

    array-length v7, v1

    if-ge v6, v7, :cond_4

    .line 685
    aget v6, v1, v4

    .line 686
    .local v6, "base":I
    add-int/lit8 v7, v4, 0x1

    aget v7, v1, v7

    .line 687
    .local v7, "duration":I
    if-eqz v6, :cond_2

    move v3, v6

    .line 688
    :cond_2
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 689
    .local v8, "d":I
    if-ge v2, v8, :cond_3

    return v6

    .line 690
    :cond_3
    sub-int/2addr v2, v8

    .line 684
    .end local v6    # "base":I
    .end local v7    # "duration":I
    .end local v8    # "d":I
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 692
    .end local v1    # "stream":[I
    .end local v4    # "i":I
    :cond_4
    goto :goto_2

    .line 693
    :cond_5
    mul-int/lit8 v4, p1, 0x4

    const v6, 0x6a9bc

    add-int/2addr v4, v6

    invoke-direct {p0, v4}, Lcom/ahsim/demulation/GenesisObjectArt;->be32(I)I

    move-result v4

    invoke-static {v4}, Lcom/ahsim/demulation/GenesisObjectArt;->ptr24(I)I

    move-result v4

    .line 694
    .local v4, "visualStream":I
    const/4 v6, 0x4

    invoke-direct {p0, v4, v6}, Lcom/ahsim/demulation/GenesisObjectArt;->checkRange(II)V

    .line 695
    const/4 v7, 0x0

    .local v7, "step":I
    :goto_1
    const/16 v8, 0x20

    if-ge v7, v8, :cond_a

    .line 696
    mul-int/lit8 v8, v7, 0x4

    add-int/2addr v8, v4

    .line 697
    .local v8, "pair":I
    invoke-direct {p0, v8, v6}, Lcom/ahsim/demulation/GenesisObjectArt;->checkRange(II)V

    .line 698
    invoke-direct {p0, v8}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v9

    .line 699
    .local v9, "base":I
    add-int/lit8 v10, v8, 0x2

    invoke-direct {p0, v10}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v10

    .line 700
    .local v10, "duration":I
    if-nez v9, :cond_6

    if-ne v10, v1, :cond_6

    goto :goto_2

    .line 701
    :cond_6
    if-ne v10, v1, :cond_7

    goto :goto_2

    .line 702
    :cond_7
    if-eqz v9, :cond_8

    move v3, v9

    .line 703
    :cond_8
    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 704
    .local v11, "d":I
    if-ge v2, v11, :cond_9

    return v9

    .line 705
    :cond_9
    sub-int/2addr v2, v11

    .line 695
    .end local v8    # "pair":I
    .end local v9    # "base":I
    .end local v10    # "duration":I
    .end local v11    # "d":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 708
    .end local v4    # "visualStream":I
    .end local v7    # "step":I
    :cond_a
    :goto_2
    if-eqz p3, :cond_b

    :goto_3
    goto :goto_4

    :cond_b
    if-eqz v3, :cond_c

    goto :goto_3

    :goto_4
    move v0, v3

    :cond_c
    return v0

    .line 678
    .end local v2    # "remaining":I
    .end local v3    # "lastNonzero":I
    :cond_d
    :goto_5
    return v0
.end method

.method private loadProviderStaticPatterns([B)V
    .locals 5
    .param p1, "slice"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 790
    const v0, 0x8cc0

    .line 791
    .local v0, "expected":I
    if-eqz p1, :cond_0

    array-length v1, p1

    if-ne v1, v0, :cond_0

    .line 794
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisObjectArt;->vramPatterns:[B

    const/16 v2, 0x7340

    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 795
    const/16 v1, 0x2ba

    iput v1, p0, Lcom/ahsim/demulation/GenesisObjectArt;->loadedSpritePatterns:I

    .line 796
    return-void

    .line 792
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Installed tactical static pattern slice has wrong size"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private loadTacticalSpritePatterns()V
    .locals 21

    .line 887
    move-object/from16 v0, p0

    const v1, 0xa48c

    .line 888
    .local v1, "table":I
    const/4 v2, 0x0

    .line 889
    .local v2, "blocks":I
    const/4 v3, 0x0

    .line 890
    .local v3, "patterns":I
    const/4 v4, -0x1

    .line 892
    .local v4, "maxPattern":I
    :goto_0
    invoke-direct {v0, v1}, Lcom/ahsim/demulation/GenesisObjectArt;->be32u(I)J

    move-result-wide v5

    .line 893
    .local v5, "d3":J
    add-int/lit8 v1, v1, 0x4

    .line 894
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    .line 923
    .end local v5    # "d3":J
    const/16 v5, 0x24

    if-ne v2, v5, :cond_0

    const/16 v5, 0x2ba

    if-ne v3, v5, :cond_0

    const/16 v5, 0x7ff

    if-ne v4, v5, :cond_0

    const v5, 0xa5b0

    if-ne v1, v5, :cond_0

    .line 926
    iput v3, v0, Lcom/ahsim/demulation/GenesisObjectArt;->loadedSpritePatterns:I

    .line 927
    return-void

    .line 924
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Tactical sprite loader table coverage mismatch"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 895
    .restart local v5    # "d3":J
    :cond_1
    invoke-direct {v0, v1}, Lcom/ahsim/demulation/GenesisObjectArt;->be32u(I)J

    move-result-wide v9

    .line 896
    .local v9, "sourceWord":J
    add-int/lit8 v1, v1, 0x4

    .line 897
    const/16 v11, 0x10

    ushr-long v11, v5, v11

    const-wide/32 v13, 0xffff

    and-long/2addr v11, v13

    long-to-int v11, v11

    .line 898
    .local v11, "vramByteAddress":I
    and-long v12, v5, v13

    long-to-int v12, v12

    .line 899
    .local v12, "words":I
    mul-int/lit8 v13, v12, 0x2

    .line 900
    .local v13, "bytes":I
    and-int/lit8 v14, v11, 0x1f

    if-nez v14, :cond_5

    and-int/lit8 v14, v13, 0x1f

    if-nez v14, :cond_5

    if-lez v13, :cond_5

    .line 903
    div-int/lit8 v14, v11, 0x20

    .line 904
    .local v14, "firstPattern":I
    div-int/lit8 v15, v13, 0x20

    .line 905
    .local v15, "count":I
    move-wide/from16 v16, v7

    const/16 v7, 0x39a

    if-lt v14, v7, :cond_4

    add-int v7, v14, v15

    const/16 v8, 0x800

    if-gt v7, v8, :cond_4

    .line 908
    const-wide v7, 0x80000000L

    and-long/2addr v7, v9

    cmp-long v7, v7, v16

    const/16 v16, 0x1

    if-eqz v7, :cond_2

    move/from16 v7, v16

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 909
    .local v7, "raw":Z
    :goto_1
    const-wide/32 v17, 0xffffff

    move-wide/from16 v19, v9

    .end local v9    # "sourceWord":J
    .local v19, "sourceWord":J
    and-long v8, v19, v17

    long-to-int v8, v8

    .line 911
    .local v8, "source":I
    if-eqz v7, :cond_3

    .line 912
    invoke-direct {v0, v8, v13}, Lcom/ahsim/demulation/GenesisObjectArt;->checkRange(II)V

    .line 913
    new-array v9, v13, [B

    .line 914
    .local v9, "decoded":[B
    iget-object v10, v0, Lcom/ahsim/demulation/GenesisObjectArt;->rom:[B

    move/from16 v18, v1

    const/4 v1, 0x0

    .end local v1    # "table":I
    .local v18, "table":I
    invoke-static {v10, v8, v9, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 916
    .end local v9    # "decoded":[B
    .end local v18    # "table":I
    .restart local v1    # "table":I
    :cond_3
    move/from16 v18, v1

    const/4 v1, 0x0

    .end local v1    # "table":I
    .restart local v18    # "table":I
    invoke-direct {v0, v8, v13}, Lcom/ahsim/demulation/GenesisObjectArt;->decompress(II)[B

    move-result-object v9

    .line 918
    .restart local v9    # "decoded":[B
    :goto_2
    iget-object v10, v0, Lcom/ahsim/demulation/GenesisObjectArt;->vramPatterns:[B

    mul-int/lit8 v0, v14, 0x20

    invoke-static {v9, v1, v10, v0, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 919
    add-int/lit8 v2, v2, 0x1

    .line 920
    add-int/2addr v3, v15

    .line 921
    add-int v0, v14, v15

    add-int/lit8 v0, v0, -0x1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 922
    .end local v5    # "d3":J
    .end local v7    # "raw":Z
    .end local v8    # "source":I
    .end local v9    # "decoded":[B
    .end local v11    # "vramByteAddress":I
    .end local v12    # "words":I
    .end local v13    # "bytes":I
    .end local v14    # "firstPattern":I
    .end local v15    # "count":I
    .end local v19    # "sourceWord":J
    move-object/from16 v0, p0

    move/from16 v1, v18

    goto/16 :goto_0

    .line 905
    .end local v18    # "table":I
    .restart local v1    # "table":I
    .restart local v5    # "d3":J
    .local v9, "sourceWord":J
    .restart local v11    # "vramByteAddress":I
    .restart local v12    # "words":I
    .restart local v13    # "bytes":I
    .restart local v14    # "firstPattern":I
    .restart local v15    # "count":I
    :cond_4
    move/from16 v18, v1

    move-wide/from16 v19, v9

    .line 906
    .end local v1    # "table":I
    .end local v9    # "sourceWord":J
    .restart local v18    # "table":I
    .restart local v19    # "sourceWord":J
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Genesis sprite block outside VRAM pattern range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 900
    .end local v14    # "firstPattern":I
    .end local v15    # "count":I
    .end local v18    # "table":I
    .end local v19    # "sourceWord":J
    .restart local v1    # "table":I
    .restart local v9    # "sourceWord":J
    :cond_5
    move/from16 v18, v1

    move-wide/from16 v19, v9

    .line 901
    .end local v1    # "table":I
    .end local v9    # "sourceWord":J
    .restart local v18    # "table":I
    .restart local v19    # "sourceWord":J
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unaligned Genesis tactical sprite loader block"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseProviderDirectLayouts([B)V
    .locals 11
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 848
    const-string v0, "DDIR"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/ahsim/demulation/GenesisObjectArt;->requireCatalogHeader([BLjava/lang/String;I)I

    move-result v0

    .line 849
    .local v0, "p":I
    const/4 v2, 0x6

    invoke-static {p1, v2}, Lcom/ahsim/demulation/GenesisObjectArt;->be16Bytes([BI)I

    move-result v2

    .line 850
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 851
    array-length v4, p1

    add-int/lit8 v4, v4, -0x8

    if-gt v0, v4, :cond_1

    .line 852
    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    .line 853
    .local v4, "kind":I
    add-int/lit8 v5, v0, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    .line 854
    .local v5, "index":I
    add-int/lit8 v6, v0, 0x2

    invoke-static {p1, v6}, Lcom/ahsim/demulation/GenesisObjectArt;->be16Bytes([BI)I

    move-result v6

    .line 855
    .local v6, "pieceCount":I
    add-int/lit8 v0, v0, 0x8

    .line 856
    mul-int/lit8 v7, v6, 0xc

    .line 857
    .local v7, "bytes":I
    if-lt v6, v1, :cond_0

    const/16 v8, 0x20

    if-gt v6, v8, :cond_0

    array-length v8, p1

    sub-int/2addr v8, v7

    if-gt v0, v8, :cond_0

    .line 860
    iget-object v8, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerDirectLayouts:Ljava/util/Map;

    shl-int/lit8 v9, v4, 0x10

    or-int/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    add-int v10, v0, v7

    invoke-static {p1, v0, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    add-int/2addr v0, v7

    .line 850
    .end local v4    # "kind":I
    .end local v5    # "index":I
    .end local v6    # "pieceCount":I
    .end local v7    # "bytes":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 858
    .restart local v4    # "kind":I
    .restart local v5    # "index":I
    .restart local v6    # "pieceCount":I
    .restart local v7    # "bytes":I
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v8, "DDIR pieces truncated"

    invoke-direct {v1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 851
    .end local v4    # "kind":I
    .end local v5    # "index":I
    .end local v6    # "pieceCount":I
    .end local v7    # "bytes":I
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v4, "DDIR entry header truncated"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 863
    .end local v3    # "i":I
    :cond_2
    array-length v1, p1

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerDirectLayouts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v1, v2, :cond_3

    const/16 v1, 0x9c

    if-ne v2, v1, :cond_3

    .line 866
    return-void

    .line 864
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Unexpected DDIR catalog coverage"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseProviderDynamicPatterns([B)V
    .locals 12
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 824
    const-string v0, "DDYN"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/ahsim/demulation/GenesisObjectArt;->requireCatalogHeader([BLjava/lang/String;I)I

    move-result v0

    .line 825
    .local v0, "p":I
    const/4 v2, 0x6

    invoke-static {p1, v2}, Lcom/ahsim/demulation/GenesisObjectArt;->be16Bytes([BI)I

    move-result v2

    .line 826
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x15e

    const/16 v5, 0x8

    if-ge v3, v2, :cond_2

    .line 827
    array-length v6, p1

    sub-int/2addr v6, v5

    if-gt v0, v6, :cond_1

    .line 828
    invoke-static {p1, v0}, Lcom/ahsim/demulation/GenesisObjectArt;->be16Bytes([BI)I

    move-result v5

    .line 829
    .local v5, "visualId":I
    add-int/lit8 v6, v0, 0x2

    invoke-static {p1, v6}, Lcom/ahsim/demulation/GenesisObjectArt;->be16Bytes([BI)I

    move-result v6

    .line 830
    .local v6, "minPattern":I
    add-int/lit8 v7, v0, 0x4

    invoke-static {p1, v7}, Lcom/ahsim/demulation/GenesisObjectArt;->be16Bytes([BI)I

    move-result v7

    .line 831
    .local v7, "patternCount":I
    add-int/lit8 v0, v0, 0x8

    .line 832
    mul-int/lit8 v8, v7, 0x20

    .line 833
    .local v8, "bytes":I
    if-lt v7, v1, :cond_0

    if-ltz v6, :cond_0

    add-int v9, v6, v7

    const/16 v10, 0x800

    if-gt v9, v10, :cond_0

    if-ltz v5, :cond_0

    if-ge v5, v4, :cond_0

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerVisuals:Ljava/util/Map;

    .line 834
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    array-length v4, p1

    sub-int/2addr v4, v8

    if-gt v0, v4, :cond_0

    .line 838
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerDynamics:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Lcom/ahsim/demulation/GenesisObjectArt$ProviderDynamic;

    add-int v11, v0, v8

    .line 839
    invoke-static {p1, v0, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    invoke-direct {v10, v6, v7, v11}, Lcom/ahsim/demulation/GenesisObjectArt$ProviderDynamic;-><init>(II[B)V

    .line 838
    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    add-int/2addr v0, v8

    .line 826
    .end local v5    # "visualId":I
    .end local v6    # "minPattern":I
    .end local v7    # "patternCount":I
    .end local v8    # "bytes":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 836
    .restart local v5    # "visualId":I
    .restart local v6    # "minPattern":I
    .restart local v7    # "patternCount":I
    .restart local v8    # "bytes":I
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v4, "DDYN entry outside tactical media bounds"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 827
    .end local v5    # "visualId":I
    .end local v6    # "minPattern":I
    .end local v7    # "patternCount":I
    .end local v8    # "bytes":I
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v4, "DDYN entry header truncated"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 842
    .end local v3    # "i":I
    :cond_2
    array-length v1, p1

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerDynamics:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v1, v2, :cond_3

    if-lt v2, v5, :cond_3

    if-gt v2, v4, :cond_3

    .line 845
    return-void

    .line 843
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Unexpected DDYN catalog structural coverage"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseProviderVisualCatalog([B)V
    .locals 11
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 799
    const-string v0, "DVIS"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/ahsim/demulation/GenesisObjectArt;->requireCatalogHeader([BLjava/lang/String;I)I

    move-result v0

    .line 800
    .local v0, "p":I
    const/4 v2, 0x6

    invoke-static {p1, v2}, Lcom/ahsim/demulation/GenesisObjectArt;->be16Bytes([BI)I

    move-result v2

    .line 801
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 802
    array-length v4, p1

    add-int/lit8 v4, v4, -0x8

    if-gt v0, v4, :cond_1

    .line 803
    invoke-static {p1, v0}, Lcom/ahsim/demulation/GenesisObjectArt;->be16Bytes([BI)I

    move-result v4

    .line 804
    .local v4, "visualId":I
    add-int/lit8 v5, v0, 0x2

    invoke-static {p1, v5}, Lcom/ahsim/demulation/GenesisObjectArt;->be16Bytes([BI)I

    move-result v5

    .line 805
    .local v5, "pieceCount":I
    add-int/lit8 v0, v0, 0x8

    .line 806
    mul-int/lit8 v6, v5, 0xc

    .line 807
    .local v6, "bytes":I
    if-lt v5, v1, :cond_0

    const/16 v7, 0x20

    if-gt v5, v7, :cond_0

    array-length v7, p1

    sub-int/2addr v7, v6

    if-gt v0, v7, :cond_0

    .line 810
    iget-object v7, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerVisuals:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/ahsim/demulation/GenesisObjectArt$ProviderVisual;

    add-int v10, v0, v6

    invoke-static {p1, v0, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    invoke-direct {v9, v4, v10}, Lcom/ahsim/demulation/GenesisObjectArt$ProviderVisual;-><init>(I[B)V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    add-int/2addr v0, v6

    .line 801
    .end local v4    # "visualId":I
    .end local v5    # "pieceCount":I
    .end local v6    # "bytes":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 808
    .restart local v4    # "visualId":I
    .restart local v5    # "pieceCount":I
    .restart local v6    # "bytes":I
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v7, "DVIS entry pieces truncated"

    invoke-direct {v1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 802
    .end local v4    # "visualId":I
    .end local v5    # "pieceCount":I
    .end local v6    # "bytes":I
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v4, "DVIS entry header truncated"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 813
    .end local v3    # "i":I
    :cond_2
    array-length v1, p1

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerVisuals:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v1, v2, :cond_5

    const/16 v1, 0xb4

    if-lt v2, v1, :cond_5

    const/16 v1, 0x15e

    if-gt v2, v1, :cond_5

    .line 816
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerVisuals:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 817
    .local v4, "visualId":Ljava/lang/Integer;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v1, :cond_3

    .line 820
    .end local v4    # "visualId":Ljava/lang/Integer;
    goto :goto_1

    .line 818
    .restart local v4    # "visualId":Ljava/lang/Integer;
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v3, "DVIS visual id outside recovered presentation range"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 821
    .end local v4    # "visualId":Ljava/lang/Integer;
    :cond_4
    return-void

    .line 814
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Unexpected DVIS catalog structural coverage"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static providerS16([BI)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 1138
    invoke-static {p0, p1}, Lcom/ahsim/demulation/GenesisObjectArt;->providerU16([BI)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method private static providerU16([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 1134
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static ptr24(I)I
    .locals 1
    .param p0, "value"    # I

    .line 1333
    const v0, 0xffffff

    and-int/2addr v0, p0

    return v0
.end method

.method private static requireCatalogHeader([BLjava/lang/String;I)I
    .locals 4
    .param p0, "data"    # [B
    .param p1, "magic"    # Ljava/lang/String;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 869
    if-eqz p0, :cond_3

    array-length v0, p0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_3

    .line 870
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 871
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 870
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 871
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " catalog magic mismatch"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 873
    .end local v0    # "i":I
    :cond_1
    invoke-static {p0, v2}, Lcom/ahsim/demulation/GenesisObjectArt;->be16Bytes([BI)I

    move-result v0

    if-ne v0, p2, :cond_2

    .line 874
    return v1

    .line 873
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " catalog version mismatch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 869
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " catalog is truncated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private s16(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 1317
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method private static s16Bytes([BI)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 883
    invoke-static {p0, p1}, Lcom/ahsim/demulation/GenesisObjectArt;->be16Bytes([BI)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method private u8(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 1307
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ahsim/demulation/GenesisObjectArt;->checkRange(II)V

    .line 1308
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->rom:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private verifyRecoveredPresentationAnchors()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1244
    sget-object v0, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->UNIT_BASE_VISUAL:[I

    array-length v0, v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->UNIT_VISUAL_MODE:[I

    array-length v0, v0

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->UNIT_BASE_VISUAL:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    const/16 v2, 0x137

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->UNIT_VISUAL_MODE:[I

    aget v0, v0, v1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->UNIT_BASE_VISUAL:[I

    const/4 v3, 0x2

    aget v0, v0, v3

    const/16 v4, 0x149

    if-ne v0, v4, :cond_2

    sget-object v0, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->UNIT_VISUAL_MODE:[I

    aget v0, v0, v3

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->UNIT_BASE_VISUAL:[I

    const/16 v1, 0xd

    aget v0, v0, v1

    const/16 v4, 0xf3

    if-ne v0, v4, :cond_2

    sget-object v0, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->UNIT_VISUAL_MODE:[I

    aget v0, v0, v1

    if-ne v0, v3, :cond_2

    .line 1254
    sget-object v0, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->STRUCTURE_LAYOUT_ID:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->STRUCTURE_VISUAL_ID:[I

    aget v0, v0, v1

    const/16 v2, 0x11

    if-ne v0, v2, :cond_1

    .line 1256
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v0}, Lcom/ahsim/demulation/GenesisObjectArt;->getStructureMetatile(III)I

    move-result v3

    const/16 v5, 0x14d

    if-ne v3, v5, :cond_1

    .line 1257
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v3}, Lcom/ahsim/demulation/GenesisObjectArt;->getStructureMetatile(III)I

    move-result v3

    const/16 v5, 0x14e

    if-ne v3, v5, :cond_1

    .line 1258
    invoke-virtual {p0, v1, v0, v0}, Lcom/ahsim/demulation/GenesisObjectArt;->getPreferredStructureMetatile(III)I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 1259
    const/16 v3, 0x9

    invoke-virtual {p0, v3, v0, v0}, Lcom/ahsim/demulation/GenesisObjectArt;->getPreferredStructureMetatile(III)I

    move-result v3

    const/16 v4, 0xfb

    if-ne v3, v4, :cond_1

    .line 1260
    const/16 v3, 0xc

    invoke-virtual {p0, v3, v0, v0}, Lcom/ahsim/demulation/GenesisObjectArt;->getPreferredStructureMetatile(III)I

    move-result v3

    const/16 v4, 0x108

    if-ne v3, v4, :cond_1

    .line 1261
    invoke-virtual {p0, v2, v0, v0}, Lcom/ahsim/demulation/GenesisObjectArt;->getPreferredStructureMetatile(III)I

    move-result v0

    const/16 v2, 0x124

    if-ne v0, v2, :cond_1

    .line 1264
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerVisuals:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0xb4

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerVisuals:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0x15e

    if-gt v0, v2, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerDynamics:Ljava/util/Map;

    .line 1265
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerDynamics:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gt v0, v2, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerDirectLayouts:Ljava/util/Map;

    .line 1266
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x9c

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->loadedSpritePatterns:I

    const/16 v1, 0x2ba

    if-ne v0, v1, :cond_0

    .line 1269
    return-void

    .line 1267
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Installed tactical media structural coverage mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1262
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Recovered Structure presentation anchors mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1252
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Recovered Unit presentation anchors mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyScena001Anchors()V
    .locals 11

    .line 1272
    const v0, 0x6c5cc

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisObjectArt;->be32(I)I

    move-result v0

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisObjectArt;->ptr24(I)I

    move-result v0

    .line 1273
    .local v0, "soldier":I
    const v1, 0x6c5c4

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisObjectArt;->be32(I)I

    move-result v1

    invoke-static {v1}, Lcom/ahsim/demulation/GenesisObjectArt;->ptr24(I)I

    move-result v1

    .line 1274
    .local v1, "infantry":I
    const v2, 0x6c5f0

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisObjectArt;->be32(I)I

    move-result v2

    invoke-static {v2}, Lcom/ahsim/demulation/GenesisObjectArt;->ptr24(I)I

    move-result v2

    .line 1275
    .local v2, "trike":I
    add-int/lit8 v3, v0, 0x46

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v3

    const/16 v4, 0x137

    if-ne v3, v4, :cond_2

    add-int/lit8 v3, v0, 0x4c

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    add-int/lit8 v3, v1, 0x46

    .line 1276
    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v3

    const/16 v5, 0x149

    if-ne v3, v5, :cond_2

    add-int/lit8 v3, v1, 0x4c

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_2

    add-int/lit8 v3, v2, 0x46

    .line 1277
    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v3

    const/16 v5, 0xf3

    if-ne v3, v5, :cond_2

    add-int/lit8 v3, v2, 0x4c

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    .line 1280
    const v3, 0x6b974

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisObjectArt;->be32(I)I

    move-result v3

    invoke-static {v3}, Lcom/ahsim/demulation/GenesisObjectArt;->ptr24(I)I

    move-result v3

    .line 1281
    .local v3, "structure":I
    add-int/lit8 v6, v3, 0x3c

    invoke-direct {p0, v6}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v6

    if-ne v6, v4, :cond_1

    add-int/lit8 v6, v3, 0x3e

    invoke-direct {p0, v6}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v6

    const/16 v7, 0x11

    if-ne v6, v7, :cond_1

    .line 1284
    const v6, 0x6aa00

    invoke-direct {p0, v6}, Lcom/ahsim/demulation/GenesisObjectArt;->be32(I)I

    move-result v6

    invoke-static {v6}, Lcom/ahsim/demulation/GenesisObjectArt;->ptr24(I)I

    move-result v6

    .line 1285
    .local v6, "stream":I
    const v8, 0x6abd4

    if-ne v6, v8, :cond_0

    invoke-direct {p0, v6}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v8

    const/16 v9, 0x14d

    if-ne v8, v9, :cond_0

    .line 1286
    const v8, 0xb0a3

    invoke-direct {p0, v8}, Lcom/ahsim/demulation/GenesisObjectArt;->u8(I)I

    move-result v8

    if-ne v8, v4, :cond_0

    .line 1287
    const/16 v4, 0x8

    const/4 v8, 0x0

    invoke-virtual {p0, v4, v8, v8}, Lcom/ahsim/demulation/GenesisObjectArt;->getStructureMetatile(III)I

    move-result v10

    if-ne v10, v9, :cond_0

    .line 1288
    const/4 v9, 0x1

    invoke-virtual {p0, v4, v8, v9}, Lcom/ahsim/demulation/GenesisObjectArt;->getStructureMetatile(III)I

    move-result v9

    const/16 v10, 0x14e

    if-ne v9, v10, :cond_0

    .line 1289
    invoke-virtual {p0, v4, v8, v8}, Lcom/ahsim/demulation/GenesisObjectArt;->getPreferredStructureMetatile(III)I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 1290
    const/16 v4, 0x9

    invoke-virtual {p0, v4, v8, v8}, Lcom/ahsim/demulation/GenesisObjectArt;->getPreferredStructureMetatile(III)I

    move-result v4

    const/16 v5, 0xfb

    if-ne v4, v5, :cond_0

    .line 1291
    const/16 v4, 0xc

    invoke-virtual {p0, v4, v8, v8}, Lcom/ahsim/demulation/GenesisObjectArt;->getPreferredStructureMetatile(III)I

    move-result v4

    const/16 v5, 0x108

    if-ne v4, v5, :cond_0

    .line 1292
    invoke-virtual {p0, v7, v8, v8}, Lcom/ahsim/demulation/GenesisObjectArt;->getPreferredStructureMetatile(III)I

    move-result v4

    const/16 v5, 0x124

    if-ne v4, v5, :cond_0

    .line 1295
    return-void

    .line 1293
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Construction Yard metatile stream mismatch"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1282
    .end local v6    # "stream":I
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Construction Yard StructureInfo visual anchor mismatch"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1278
    .end local v3    # "structure":I
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "SCENA001 UnitInfo visual anchors mismatch"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static visualSkipsHousePalette(I)Z
    .locals 1
    .param p0, "visualId"    # I

    .line 1032
    sparse-switch p0, :sswitch_data_0

    .line 1049
    const/4 v0, 0x0

    return v0

    .line 1047
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xae -> :sswitch_0
        0xb4 -> :sswitch_0
        0xb5 -> :sswitch_0
        0xb6 -> :sswitch_0
        0x12d -> :sswitch_0
        0x12e -> :sswitch_0
        0x12f -> :sswitch_0
        0x130 -> :sswitch_0
        0x131 -> :sswitch_0
        0x132 -> :sswitch_0
        0x133 -> :sswitch_0
        0x134 -> :sswitch_0
        0x135 -> :sswitch_0
        0x136 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getConstructionPlacementCell(Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "legal"    # Z

    .line 226
    if-eqz p1, :cond_1

    .line 227
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->placementGridLegalCell:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisObjectArt;->decodePlacementGridCell(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->placementGridLegalCell:Landroid/graphics/Bitmap;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->placementGridLegalCell:Landroid/graphics/Bitmap;

    return-object v0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->placementGridIllegalCell:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisObjectArt;->decodePlacementGridCell(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->placementGridIllegalCell:Landroid/graphics/Bitmap;

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->placementGridIllegalCell:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getConstructionReadyFrame()Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->constructionReadyFrame:Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    if-nez v0, :cond_0

    const/16 v0, 0x18

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/ahsim/demulation/GenesisObjectArt;->decodeVisual(III)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->constructionReadyFrame:Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->constructionReadyFrame:Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    return-object v0
.end method

.method public getExplosionAnimation(I)Lcom/ahsim/demulation/GenesisObjectArt$ExplosionAnimation;
    .locals 1
    .param p1, "explosionType"    # I

    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ahsim/demulation/GenesisObjectArt;->getExplosionAnimation(II)Lcom/ahsim/demulation/GenesisObjectArt$ExplosionAnimation;

    move-result-object v0

    return-object v0
.end method

.method public getExplosionAnimation(II)Lcom/ahsim/demulation/GenesisObjectArt$ExplosionAnimation;
    .locals 18
    .param p1, "explosionType"    # I
    .param p2, "paletteVariant"    # I

    .line 286
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    if-ltz v1, :cond_8

    const/16 v3, 0x20

    if-lt v1, v3, :cond_0

    goto/16 :goto_3

    .line 287
    :cond_0
    and-int/lit8 v4, p2, 0x7

    .line 288
    .end local p2    # "paletteVariant":I
    .local v4, "paletteVariant":I
    shl-int/lit8 v5, v4, 0x8

    or-int/2addr v5, v1

    .line 289
    .local v5, "cacheKey":I
    iget-object v6, v0, Lcom/ahsim/demulation/GenesisObjectArt;->explosionAnimationCache:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ahsim/demulation/GenesisObjectArt$ExplosionAnimation;

    .line 290
    .local v6, "cached":Lcom/ahsim/demulation/GenesisObjectArt$ExplosionAnimation;
    if-eqz v6, :cond_1

    return-object v6

    .line 291
    :cond_1
    new-array v7, v3, [Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    .line 292
    .local v7, "tempFrames":[Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    new-array v8, v3, [I

    .line 293
    .local v8, "tempDurations":[I
    const/4 v9, 0x0

    .line 294
    .local v9, "count":I
    const/4 v10, 0x0

    .line 295
    .local v10, "total":I
    iget-boolean v11, v0, Lcom/ahsim/demulation/GenesisObjectArt;->providerBacked:Z

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v11, :cond_4

    .line 296
    sget-object v3, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->EXPLOSION_SCRIPTS:[[I

    array-length v3, v3

    if-lt v1, v3, :cond_2

    return-object v2

    .line 297
    :cond_2
    sget-object v2, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->EXPLOSION_SCRIPTS:[[I

    aget-object v2, v2, v1

    .line 298
    .local v2, "script":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    add-int/lit8 v11, v3, 0x1

    array-length v14, v2

    if-ge v11, v14, :cond_3

    .line 299
    aget v11, v2, v3

    .line 300
    .local v11, "visual":I
    add-int/lit8 v14, v3, 0x1

    aget v14, v2, v14

    .line 301
    .local v14, "duration":I
    invoke-direct {v0, v11, v12, v4}, Lcom/ahsim/demulation/GenesisObjectArt;->decodeVisual(III)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    move-result-object v15

    aput-object v15, v7, v9

    .line 302
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v15

    aput v15, v8, v9

    .line 303
    aget v15, v8, v9

    add-int/2addr v10, v15

    .line 304
    nop

    .end local v11    # "visual":I
    .end local v14    # "duration":I
    add-int/lit8 v9, v9, 0x1

    .line 298
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 306
    .end local v2    # "script":[I
    .end local v3    # "i":I
    :cond_3
    goto :goto_2

    .line 307
    :cond_4
    mul-int/lit8 v2, v1, 0x4

    const v11, 0xc80fe

    add-int/2addr v2, v11

    .line 308
    .local v2, "tableEntry":I
    const/4 v11, 0x4

    invoke-direct {v0, v2, v11}, Lcom/ahsim/demulation/GenesisObjectArt;->checkRange(II)V

    .line 309
    invoke-direct {v0, v2}, Lcom/ahsim/demulation/GenesisObjectArt;->be32(I)I

    move-result v14

    invoke-static {v14}, Lcom/ahsim/demulation/GenesisObjectArt;->ptr24(I)I

    move-result v14

    .line 310
    .local v14, "script":I
    invoke-direct {v0, v14, v11}, Lcom/ahsim/demulation/GenesisObjectArt;->checkRange(II)V

    .line 311
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    if-ge v15, v3, :cond_7

    .line 312
    mul-int/lit8 v16, v15, 0x4

    add-int v3, v14, v16

    .line 313
    .local v3, "pair":I
    invoke-direct {v0, v3, v11}, Lcom/ahsim/demulation/GenesisObjectArt;->checkRange(II)V

    .line 314
    invoke-direct {v0, v3}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v11

    .line 315
    .restart local v11    # "visual":I
    add-int/lit8 v13, v3, 0x2

    invoke-direct {v0, v13}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v13

    .line 316
    .local v13, "duration":I
    const v12, 0xffff

    if-nez v11, :cond_5

    if-ne v13, v12, :cond_5

    goto :goto_2

    .line 317
    :cond_5
    if-ne v13, v12, :cond_6

    goto :goto_2

    .line 318
    :cond_6
    const/4 v12, 0x0

    invoke-direct {v0, v11, v12, v4}, Lcom/ahsim/demulation/GenesisObjectArt;->decodeVisual(III)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    move-result-object v17

    aput-object v17, v7, v9

    .line 319
    const/4 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v16

    aput v16, v8, v9

    .line 320
    aget v16, v8, v9

    add-int v10, v10, v16

    .line 321
    nop

    .end local v3    # "pair":I
    .end local v11    # "visual":I
    .end local v13    # "duration":I
    add-int/lit8 v9, v9, 0x1

    .line 311
    add-int/lit8 v15, v15, 0x1

    move v13, v12

    const/16 v3, 0x20

    const/4 v11, 0x4

    const/4 v12, 0x0

    goto :goto_1

    .line 324
    .end local v2    # "tableEntry":I
    .end local v14    # "script":I
    .end local v15    # "i":I
    :cond_7
    :goto_2
    new-array v2, v9, [Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    .line 325
    .local v2, "frames":[Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    new-array v3, v9, [I

    .line 326
    .local v3, "durations":[I
    const/4 v12, 0x0

    invoke-static {v7, v12, v2, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    invoke-static {v8, v12, v3, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    new-instance v11, Lcom/ahsim/demulation/GenesisObjectArt$ExplosionAnimation;

    invoke-direct {v11, v2, v3, v10}, Lcom/ahsim/demulation/GenesisObjectArt$ExplosionAnimation;-><init>([Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;[II)V

    .line 329
    .local v11, "animation":Lcom/ahsim/demulation/GenesisObjectArt$ExplosionAnimation;
    iget-object v12, v0, Lcom/ahsim/demulation/GenesisObjectArt;->explosionAnimationCache:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    return-object v11

    .line 286
    .end local v2    # "frames":[Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    .end local v3    # "durations":[I
    .end local v4    # "paletteVariant":I
    .end local v5    # "cacheKey":I
    .end local v6    # "cached":Lcom/ahsim/demulation/GenesisObjectArt$ExplosionAnimation;
    .end local v7    # "tempFrames":[Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    .end local v8    # "tempDurations":[I
    .end local v9    # "count":I
    .end local v10    # "total":I
    .end local v11    # "animation":Lcom/ahsim/demulation/GenesisObjectArt$ExplosionAnimation;
    .restart local p2    # "paletteVariant":I
    :cond_8
    :goto_3
    return-object v2
.end method

.method public getHarvesterHarvestEffectFrame(III)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    .locals 11
    .param p1, "orientation"    # I
    .param p2, "spriteOffset"    # I
    .param p3, "house"    # I

    .line 433
    add-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v7, v1, 0x5

    .line 434
    .local v7, "bucket":I
    const/4 v1, 0x3

    invoke-static {p2, v1}, Ljava/lang/Math;->floorMod(II)I

    move-result v8

    .line 435
    .local v8, "frame":I
    shl-int/lit8 v1, v7, 0x2

    or-int/2addr v1, v8

    and-int/lit8 v2, p3, 0x7

    shl-int/lit8 v2, v2, 0x5

    or-int v9, v1, v2

    .line 436
    .local v9, "key":I
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisObjectArt;->harvesterEffectFrameCache:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    .line 437
    .local v10, "cached":Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    if-eqz v10, :cond_0

    return-object v10

    .line 439
    :cond_0
    iget-boolean v1, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerBacked:Z

    const v2, 0x9000

    if-eqz v1, :cond_1

    .line 440
    mul-int/lit8 v1, v8, 0x8

    add-int/2addr v1, v7

    and-int/lit8 v4, p3, 0x7

    shl-int/lit8 v3, v8, 0x3

    or-int/2addr v2, v3

    or-int v5, v2, v7

    const/4 v6, 0x0

    move v2, v1

    const/4 v1, 0x4

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/ahsim/demulation/GenesisObjectArt;->decodeProviderDirectLayout(IIIIIZ)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    move-result-object v1

    .local v1, "decoded":Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    goto :goto_0

    .line 443
    .end local v1    # "decoded":Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    :cond_1
    mul-int/lit8 v1, v8, 0x8

    add-int/2addr v1, v7

    const/4 v3, 0x4

    mul-int/2addr v1, v3

    const v4, 0x641ee

    add-int/2addr v1, v4

    .line 444
    .local v1, "entry":I
    invoke-direct {p0, v1, v3}, Lcom/ahsim/demulation/GenesisObjectArt;->checkRange(II)V

    .line 445
    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisObjectArt;->be32(I)I

    move-result v3

    invoke-static {v3}, Lcom/ahsim/demulation/GenesisObjectArt;->ptr24(I)I

    move-result v3

    .line 446
    .local v3, "layout":I
    and-int/lit8 v4, p3, 0x7

    shl-int/lit8 v5, v8, 0x3

    or-int/2addr v2, v5

    or-int/2addr v2, v7

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5, v4, v2}, Lcom/ahsim/demulation/GenesisObjectArt;->decodeLayout(IIII)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    move-result-object v2

    move-object v1, v2

    .line 448
    .end local v3    # "layout":I
    .local v1, "decoded":Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisObjectArt;->harvesterEffectFrameCache:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    :cond_2
    return-object v1
.end method

.method public getHousePaletteLine(I)I
    .locals 1
    .param p1, "house"    # I

    .line 487
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->housePaletteFlags:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->housePaletteFlags:[I

    aget v0, v0, p1

    ushr-int/lit8 v0, v0, 0xd

    and-int/lit8 v0, v0, 0x3

    return v0

    .line 487
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLoadedSpritePatterns()I
    .locals 1

    .line 183
    iget v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->loadedSpritePatterns:I

    return v0
.end method

.method public getPowerWarningFrame()Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->powerWarningFrame:Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    if-nez v0, :cond_0

    const/16 v0, 0xb1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/ahsim/demulation/GenesisObjectArt;->decodeVisual(III)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->powerWarningFrame:Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->powerWarningFrame:Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    return-object v0
.end method

.method public getPreferredStructureMetatile(III)I
    .locals 1
    .param p1, "structureType"    # I
    .param p2, "anchorPacked"    # I
    .param p3, "cellPacked"    # I

    .line 507
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->structurePreferredBaseMetatiles:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->structurePreferredBaseMetatiles:[I

    aget v0, v0, p1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ahsim/demulation/GenesisObjectArt;->getStructureMetatileForBase(IIII)I

    move-result v0

    return v0

    .line 507
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public getPreferredStructureMetatileBitmap(III)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "structureType"    # I
    .param p2, "anchorPacked"    # I
    .param p3, "cellPacked"    # I

    .line 513
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ahsim/demulation/GenesisObjectArt;->getPreferredStructureMetatileBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredStructureMetatileBitmap(IIII)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "structureType"    # I
    .param p2, "anchorPacked"    # I
    .param p3, "cellPacked"    # I
    .param p4, "turretFacing"    # I

    .line 525
    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    and-int/lit8 v0, p4, 0x7

    add-int/lit16 v0, v0, 0x114

    .local v0, "base":I
    goto :goto_0

    .line 526
    .end local v0    # "base":I
    :cond_0
    const/16 v0, 0x10

    if-ne p1, v0, :cond_2

    and-int/lit8 v0, p4, 0x7

    add-int/lit16 v0, v0, 0x11c

    .line 528
    .restart local v0    # "base":I
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ahsim/demulation/GenesisObjectArt;->getStructureMetatileForBase(IIII)I

    move-result v1

    .line 529
    .local v1, "tile":I
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisObjectArt;->terrainArt:Lcom/ahsim/demulation/GenesisTerrainArt;

    invoke-virtual {v2, v1}, Lcom/ahsim/demulation/GenesisTerrainArt;->getMetatile(I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 527
    .end local v0    # "base":I
    .end local v1    # "tile":I
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/GenesisObjectArt;->getPreferredStructureMetatileBitmapStatic(III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRepairHammerFrame()Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->repairHammerFrame:Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    if-nez v0, :cond_0

    const/16 v0, 0x1a

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/ahsim/demulation/GenesisObjectArt;->decodeVisual(III)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->repairHammerFrame:Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->repairHammerFrame:Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    return-object v0
.end method

.method public getStructureConstructionMetatileBitmap(IIII)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "structureType"    # I
    .param p2, "anchorPacked"    # I
    .param p3, "cellPacked"    # I
    .param p4, "ageTicks"    # I

    .line 626
    const/4 v0, 0x0

    if-ltz p1, :cond_4

    const/16 v1, 0x13

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 627
    :cond_0
    const v1, 0xffff

    and-int v2, p4, v1

    if-ne v2, v1, :cond_1

    .line 628
    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/GenesisObjectArt;->getPreferredStructureMetatileBitmapStatic(III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 629
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/ahsim/demulation/GenesisObjectArt;->getStructureVisualBaseAtAge(II)I

    move-result v1

    .line 630
    .local v1, "base":I
    if-gtz v1, :cond_2

    return-object v0

    .line 631
    :cond_2
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/ahsim/demulation/GenesisObjectArt;->getStructureMetatileForBase(IIII)I

    move-result v2

    .line 632
    .local v2, "tile":I
    if-ltz v2, :cond_3

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->terrainArt:Lcom/ahsim/demulation/GenesisTerrainArt;

    invoke-virtual {v0, v2}, Lcom/ahsim/demulation/GenesisTerrainArt;->getMetatile(I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    return-object v0

    .line 626
    .end local v1    # "base":I
    .end local v2    # "tile":I
    :cond_4
    :goto_0
    return-object v0
.end method

.method public getStructureFireMetatileBitmap(IIII)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "structureType"    # I
    .param p2, "anchorPacked"    # I
    .param p3, "cellPacked"    # I
    .param p4, "visualId"    # I

    .line 548
    const/16 v0, 0xf

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10

    if-ne p1, v0, :cond_5

    :cond_0
    if-ltz p4, :cond_5

    sget-object v0, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->STRUCTURE_VISUAL_STREAMS:[[I

    array-length v0, v0

    if-lt p4, v0, :cond_1

    goto :goto_1

    .line 552
    :cond_1
    sget-object v0, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->STRUCTURE_VISUAL_STREAMS:[[I

    aget-object v0, v0, p4

    .line 553
    .local v0, "stream":[I
    if-eqz v0, :cond_4

    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    goto :goto_0

    .line 554
    :cond_2
    const/4 v2, 0x0

    aget v2, v0, v2

    .line 555
    .local v2, "base":I
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/ahsim/demulation/GenesisObjectArt;->getStructureMetatileForBase(IIII)I

    move-result v3

    .line 556
    .local v3, "tile":I
    if-ltz v3, :cond_3

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisObjectArt;->terrainArt:Lcom/ahsim/demulation/GenesisTerrainArt;

    invoke-virtual {v1, v3}, Lcom/ahsim/demulation/GenesisTerrainArt;->getMetatile(I)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_3
    return-object v1

    .line 553
    .end local v2    # "base":I
    .end local v3    # "tile":I
    :cond_4
    :goto_0
    return-object v1

    .line 550
    .end local v0    # "stream":[I
    :cond_5
    :goto_1
    return-object v1
.end method

.method public getStructureMetatile(III)I
    .locals 1
    .param p1, "structureType"    # I
    .param p2, "anchorPacked"    # I
    .param p3, "cellPacked"    # I

    .line 492
    nop

    .line 493
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisObjectArt;->getStructureInitialBaseMetatile(I)I

    move-result v0

    .line 492
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ahsim/demulation/GenesisObjectArt;->getStructureMetatileForBase(IIII)I

    move-result v0

    return v0
.end method

.method public getStructureMetatileBitmap(III)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "structureType"    # I
    .param p2, "anchorPacked"    # I
    .param p3, "cellPacked"    # I

    .line 613
    invoke-virtual {p0, p1, p2, p3}, Lcom/ahsim/demulation/GenesisObjectArt;->getStructureMetatile(III)I

    move-result v0

    .line 614
    .local v0, "tile":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisObjectArt;->terrainArt:Lcom/ahsim/demulation/GenesisTerrainArt;

    invoke-virtual {v1, v0}, Lcom/ahsim/demulation/GenesisTerrainArt;->getMetatile(I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getStructureRubbleMetatileBitmap(IIII)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "structureType"    # I
    .param p2, "anchorPacked"    # I
    .param p3, "cellPacked"    # I
    .param p4, "ageTicks"    # I

    .line 643
    const/4 v0, 0x0

    if-ltz p1, :cond_8

    const/16 v1, 0x13

    if-lt p1, v1, :cond_0

    goto :goto_3

    .line 646
    :cond_0
    iget-boolean v1, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerBacked:Z

    if-eqz v1, :cond_3

    .line 647
    sget-object v1, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->STRUCTURE_LAYOUT_ID:[I

    aget v1, v1, p1

    .line 648
    .local v1, "layoutId":I
    if-ltz v1, :cond_2

    sget-object v2, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->STRUCTURE_REMOVE_VISUAL_ID:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    goto :goto_0

    .line 649
    :cond_1
    sget-object v2, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->STRUCTURE_REMOVE_VISUAL_ID:[I

    aget v2, v2, v1

    .local v2, "visualId":I
    goto :goto_1

    .line 648
    .end local v2    # "visualId":I
    :cond_2
    :goto_0
    return-object v0

    .line 651
    .end local v1    # "layoutId":I
    :cond_3
    mul-int/lit8 v1, p1, 0x4

    const v2, 0x6b954

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisObjectArt;->be32(I)I

    move-result v1

    invoke-static {v1}, Lcom/ahsim/demulation/GenesisObjectArt;->ptr24(I)I

    move-result v1

    .line 652
    .local v1, "info":I
    const/16 v2, 0x40

    invoke-direct {p0, v1, v2}, Lcom/ahsim/demulation/GenesisObjectArt;->checkRange(II)V

    .line 653
    add-int/lit8 v2, v1, 0x3c

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v2

    .line 654
    .local v2, "layoutId":I
    if-ltz v2, :cond_7

    const/16 v3, 0x8

    if-lt v2, v3, :cond_4

    goto :goto_2

    .line 655
    :cond_4
    mul-int/lit8 v3, v2, 0x2

    const v4, 0x6bbfa

    add-int/2addr v3, v4

    const/4 v5, 0x2

    invoke-direct {p0, v3, v5}, Lcom/ahsim/demulation/GenesisObjectArt;->checkRange(II)V

    .line 656
    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v3

    and-int/lit8 v3, v3, 0x3f

    move v1, v2

    move v2, v3

    .line 658
    .local v1, "layoutId":I
    .local v2, "visualId":I
    :goto_1
    const/4 v3, 0x1

    invoke-direct {p0, v2, p4, v3}, Lcom/ahsim/demulation/GenesisObjectArt;->getVisualStreamBaseAtAge(IIZ)I

    move-result v3

    .line 659
    .local v3, "base":I
    if-gtz v3, :cond_5

    return-object v0

    .line 660
    :cond_5
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/ahsim/demulation/GenesisObjectArt;->getStructureMetatileForBase(IIII)I

    move-result v4

    .line 661
    .local v4, "tile":I
    if-ltz v4, :cond_6

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt;->terrainArt:Lcom/ahsim/demulation/GenesisTerrainArt;

    invoke-virtual {v0, v4}, Lcom/ahsim/demulation/GenesisTerrainArt;->getMetatile(I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_6
    return-object v0

    .line 654
    .end local v3    # "base":I
    .end local v4    # "tile":I
    .local v1, "info":I
    .local v2, "layoutId":I
    :cond_7
    :goto_2
    return-object v0

    .line 643
    .end local v1    # "info":I
    .end local v2    # "layoutId":I
    :cond_8
    :goto_3
    return-object v0
.end method

.method public getUnitFrame(IIII)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    .locals 6
    .param p1, "unitType"    # I
    .param p2, "orientation"    # I
    .param p3, "spriteOffset"    # I
    .param p4, "house"    # I

    .line 334
    move v3, p2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    .end local p1    # "unitType":I
    .end local p2    # "orientation":I
    .end local p3    # "spriteOffset":I
    .end local p4    # "house":I
    .local v1, "unitType":I
    .local v2, "orientation":I
    .local v4, "spriteOffset":I
    .local v5, "house":I
    invoke-virtual/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisObjectArt;->getUnitFrame(IIIII)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    move-result-object p1

    return-object p1
.end method

.method public getUnitFrame(IIIII)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    .locals 7
    .param p1, "unitType"    # I
    .param p2, "bodyOrientation"    # I
    .param p3, "turretOrientation"    # I
    .param p4, "spriteOffset"    # I
    .param p5, "house"    # I

    .line 344
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "unitType":I
    .end local p2    # "bodyOrientation":I
    .end local p3    # "turretOrientation":I
    .end local p4    # "spriteOffset":I
    .end local p5    # "house":I
    .local v1, "unitType":I
    .local v2, "bodyOrientation":I
    .local v3, "turretOrientation":I
    .local v4, "spriteOffset":I
    .local v5, "house":I
    invoke-virtual/range {v0 .. v6}, Lcom/ahsim/demulation/GenesisObjectArt;->getUnitFrame(IIIIIZ)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    move-result-object p1

    return-object p1
.end method

.method public getUnitFrame(IIIIIZ)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    .locals 16
    .param p1, "unitType"    # I
    .param p2, "bodyOrientation"    # I
    .param p3, "turretOrientation"    # I
    .param p4, "spriteOffset"    # I
    .param p5, "house"    # I
    .param p6, "carryallLoaded"    # Z

    .line 350
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-ltz v1, :cond_11

    const/16 v3, 0x1b

    if-lt v1, v3, :cond_0

    move/from16 v4, p3

    goto/16 :goto_7

    .line 351
    :cond_0
    const/16 v3, 0x9

    if-eq v1, v3, :cond_10

    const/16 v3, 0xa

    if-ne v1, v3, :cond_1

    goto/16 :goto_6

    .line 356
    :cond_1
    iget-boolean v3, v0, Lcom/ahsim/demulation/GenesisObjectArt;->providerBacked:Z

    if-eqz v3, :cond_2

    .line 357
    sget-object v3, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->UNIT_BASE_VISUAL:[I

    aget v3, v3, v1

    .line 358
    .local v3, "visual":I
    sget-object v4, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->UNIT_VISUAL_MODE:[I

    aget v4, v4, v1

    .local v4, "mode":I
    goto :goto_0

    .line 360
    .end local v3    # "visual":I
    .end local v4    # "mode":I
    :cond_2
    mul-int/lit8 v3, v1, 0x4

    const v4, 0x6c5bc

    add-int/2addr v3, v4

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/GenesisObjectArt;->be32(I)I

    move-result v3

    invoke-static {v3}, Lcom/ahsim/demulation/GenesisObjectArt;->ptr24(I)I

    move-result v3

    .line 361
    .local v3, "info":I
    const/16 v4, 0x4e

    invoke-direct {v0, v3, v4}, Lcom/ahsim/demulation/GenesisObjectArt;->checkRange(II)V

    .line 362
    add-int/lit8 v4, v3, 0x46

    invoke-direct {v0, v4}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v4

    .line 363
    .local v4, "visual":I
    add-int/lit8 v5, v3, 0x4c

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v5

    move v3, v4

    move v4, v5

    .line 365
    .local v3, "visual":I
    .local v4, "mode":I
    :goto_0
    const/4 v5, 0x0

    .line 370
    .local v5, "transform":I
    if-nez v1, :cond_3

    if-eqz p6, :cond_3

    add-int/lit8 v3, v3, 0x3

    .line 372
    :cond_3
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x4

    if-ne v4, v6, :cond_5

    .line 373
    add-int/lit8 v11, v2, 0x8

    and-int/lit16 v11, v11, 0xff

    ushr-int/lit8 v10, v11, 0x4

    .line 374
    .local v10, "bucket":I
    iget-boolean v11, v0, Lcom/ahsim/demulation/GenesisObjectArt;->providerBacked:Z

    if-eqz v11, :cond_4

    .line 375
    sget-object v6, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->ORIENTATION_16:[[I

    aget-object v6, v6, v10

    aget v6, v6, v8

    add-int/2addr v3, v6

    .line 376
    sget-object v6, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->ORIENTATION_16:[[I

    aget-object v6, v6, v10

    aget v5, v6, v7

    goto :goto_1

    .line 378
    :cond_4
    mul-int/lit8 v11, v10, 0x4

    const v12, 0x6c688

    add-int/2addr v11, v12

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v11

    add-int/2addr v3, v11

    .line 379
    mul-int/lit8 v11, v10, 0x4

    add-int/2addr v11, v12

    add-int/2addr v11, v6

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v5

    .line 381
    .end local v10    # "bucket":I
    :goto_1
    goto/16 :goto_4

    :cond_5
    const/4 v11, 0x5

    if-eq v4, v9, :cond_a

    if-ne v4, v10, :cond_6

    goto :goto_2

    .line 393
    :cond_6
    if-ne v4, v7, :cond_7

    const/16 v10, 0x19

    if-eq v1, v10, :cond_7

    const/16 v10, 0x1a

    if-ne v1, v10, :cond_8

    :cond_7
    if-ne v4, v11, :cond_c

    .line 399
    :cond_8
    add-int/lit8 v10, v2, 0x10

    and-int/lit16 v10, v10, 0xff

    ushr-int/2addr v10, v11

    .line 400
    .restart local v10    # "bucket":I
    iget-boolean v11, v0, Lcom/ahsim/demulation/GenesisObjectArt;->providerBacked:Z

    if-eqz v11, :cond_9

    .line 401
    sget-object v6, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->ORIENTATION_ALT:[[I

    aget-object v6, v6, v10

    aget v6, v6, v8

    add-int/2addr v3, v6

    .line 402
    sget-object v6, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->ORIENTATION_ALT:[[I

    aget-object v6, v6, v10

    aget v5, v6, v7

    goto :goto_4

    .line 404
    :cond_9
    mul-int/lit8 v11, v10, 0x4

    const v12, 0x6c668

    add-int/2addr v11, v12

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v11

    add-int/2addr v3, v11

    .line 405
    mul-int/lit8 v11, v10, 0x4

    add-int/2addr v11, v12

    add-int/2addr v11, v6

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v5

    goto :goto_4

    .line 382
    .end local v10    # "bucket":I
    :cond_a
    :goto_2
    add-int/lit8 v10, v2, 0x10

    and-int/lit16 v10, v10, 0xff

    ushr-int/2addr v10, v11

    .line 384
    .restart local v10    # "bucket":I
    iget-boolean v11, v0, Lcom/ahsim/demulation/GenesisObjectArt;->providerBacked:Z

    if-eqz v11, :cond_b

    .line 385
    sget-object v6, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->ORIENTATION_8:[[I

    aget-object v6, v6, v10

    aget v6, v6, v8

    .line 386
    .local v6, "group":I
    mul-int/lit8 v11, v6, 0x3

    sget-object v12, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->FOOT_ANIMATION_OFFSET:[I

    and-int/lit8 v13, p4, 0x3

    aget v12, v12, v13

    add-int/2addr v11, v12

    add-int/2addr v3, v11

    .line 387
    sget-object v11, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->ORIENTATION_8:[[I

    aget-object v11, v11, v10

    aget v5, v11, v7

    goto :goto_3

    .line 389
    .end local v6    # "group":I
    :cond_b
    mul-int/lit8 v11, v10, 0x4

    const v12, 0x6c648

    add-int/2addr v11, v12

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v11

    .line 390
    .local v11, "group":I
    mul-int/lit8 v13, v11, 0x3

    and-int/lit8 v14, p4, 0x3

    const v15, 0x6c6c8

    add-int/2addr v14, v15

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/GenesisObjectArt;->u8(I)I

    move-result v14

    add-int/2addr v13, v14

    add-int/2addr v3, v13

    .line 391
    mul-int/lit8 v13, v10, 0x4

    add-int/2addr v13, v12

    add-int/2addr v13, v6

    invoke-direct {v0, v13}, Lcom/ahsim/demulation/GenesisObjectArt;->be16(I)I

    move-result v5

    .line 393
    .end local v10    # "bucket":I
    .end local v11    # "group":I
    :cond_c
    :goto_3
    nop

    .line 409
    :goto_4
    and-int/2addr v5, v9

    .line 417
    if-nez v1, :cond_d

    if-eqz p6, :cond_d

    goto :goto_5

    :cond_d
    move v7, v8

    .line 418
    .local v7, "reversePieces":Z
    :goto_5
    and-int/lit16 v6, v3, 0x7ff

    shl-int/lit8 v9, v5, 0xc

    or-int/2addr v6, v9

    and-int/lit8 v9, p5, 0x7

    shl-int/lit8 v9, v9, 0xf

    or-int/2addr v6, v9

    .line 419
    if-eqz v7, :cond_e

    const/high16 v8, 0x40000

    :cond_e
    or-int/2addr v6, v8

    .line 420
    .local v6, "key":I
    iget-object v8, v0, Lcom/ahsim/demulation/GenesisObjectArt;->frameCache:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    .line 421
    .local v8, "cached":Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    if-eqz v8, :cond_f

    return-object v8

    .line 422
    :cond_f
    and-int/lit8 v9, p5, 0x7

    invoke-direct {v0, v3, v5, v9, v7}, Lcom/ahsim/demulation/GenesisObjectArt;->decodeVisual(IIIZ)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    move-result-object v9

    .line 423
    .local v9, "decoded":Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    iget-object v10, v0, Lcom/ahsim/demulation/GenesisObjectArt;->frameCache:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    return-object v9

    .line 352
    .end local v3    # "visual":I
    .end local v4    # "mode":I
    .end local v5    # "transform":I
    .end local v6    # "key":I
    .end local v7    # "reversePieces":Z
    .end local v8    # "cached":Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    .end local v9    # "decoded":Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    :cond_10
    :goto_6
    and-int/lit8 v3, p5, 0x7

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/ahsim/demulation/GenesisObjectArt;->getTrackedCompositeFrame(IIII)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    move-result-object v3

    return-object v3

    .line 350
    :cond_11
    move/from16 v4, p3

    :goto_7
    const/4 v3, 0x0

    return-object v3
.end method

.method public getVictoryFlyoverFormation(II)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    .locals 11
    .param p1, "variant"    # I
    .param p2, "frontendHouse"    # I

    .line 191
    sget-object v0, Lcom/ahsim/demulation/GenesisObjectArt;->VICTORY_FLYOVER_LAYOUTS:[I

    array-length v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->floorMod(II)I

    move-result v3

    .line 192
    .local v3, "v":I
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    .line 193
    .local v0, "frontendToRomHouse":[I
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget v5, v0, v1

    .line 194
    .local v5, "h":I
    iget-boolean v1, p0, Lcom/ahsim/demulation/GenesisObjectArt;->providerBacked:Z

    if-eqz v1, :cond_0

    .line 195
    const v6, 0xb576

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/ahsim/demulation/GenesisObjectArt;->decodeProviderDirectLayout(IIIIIZ)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    move-result-object v2

    return-object v2

    .line 197
    :cond_0
    sget-object v1, Lcom/ahsim/demulation/GenesisObjectArt;->VICTORY_FLYOVER_LAYOUTS:[I

    aget v1, v1, v3

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    const v8, 0xb576

    move-object v4, p0

    move v7, v5

    move v5, v1

    .end local v5    # "h":I
    .local v7, "h":I
    invoke-direct/range {v4 .. v10}, Lcom/ahsim/demulation/GenesisObjectArt;->decodeLayout(IIIIIZ)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    move-result-object v1

    move v5, v7

    .end local v7    # "h":I
    .restart local v5    # "h":I
    return-object v1
.end method
