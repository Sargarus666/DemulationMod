.class public final Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;
.super Ljava/lang/Object;
.source "GenesisCampaignTransitionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;,
        Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;,
        Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;,
        Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;,
        Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;,
        Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    }
.end annotation


# static fields
.field public static final AFTER_DROP_HOLD_TICKS:I = 0x33

.field private static final BACKDROP_H:I = 0x70

.field private static final BACKDROP_PIXELS:I = 0x7380

.field private static final BACKDROP_TILES_H:I = 0xe

.field private static final BACKDROP_TILES_W:I = 0x21

.field private static final BACKDROP_W:I = 0x108

.field private static final BACKDROP_X:I = 0x18

.field private static final BACKDROP_Y:I = 0x48

.field private static final COMMON_PALETTE:I = 0xa2d7e

.field private static final COMPONENT_BYTE_REMAP:I = 0x24082

.field private static final COMPONENT_HEIGHT:I = 0x24062

.field private static final COMPONENT_TILE_COUNT:I = 0x96304

.field private static final COMPONENT_WIDTH:I = 0x24042

.field public static final DEPARTURE_TICKS:I = 0x18

.field public static final FADE_TICKS:I = 0x18

.field private static final FINAL_MISSION_COMMON_PALETTE:I = 0xa2dfe

.field private static final FOCUS_PALETTE_OFFSET_TABLE:I = 0x95cf8

.field private static final FOCUS_SOURCE_H:I = 0x70

.field private static final FOCUS_SOURCE_W:I = 0x70

.field public static final FOCUS_TICKS:I = 0x5

.field private static final FRONTEND_TO_ROM_HOUSE:[I

.field private static final HOUSE_COMPONENT_PTRS:I = 0x95f6c

.field private static final HOUSE_DESCRIPTOR_PTRS:I = 0x962dc

.field private static final HOUSE_PALETTES:I = 0xa2c3e

.field private static final HOUSE_PATTERN_BYTES:I = 0x986e6

.field public static final INITIAL_MAP_HOLD_TICKS:I = 0x65

.field private static final MISSION_MAP_RECORD_PTRS:I = 0x96050

.field public static final PIECE7_DELAY_TICKS:I = 0x15

.field public static final SCREEN_HEIGHT:I = 0xe0

.field public static final SCREEN_WIDTH:I = 0x140

.field private static final STATIC_COMPONENT_STREAM:I = 0x95d00

.field private static final STATIC_DESCRIPTOR_PTRS:I = 0x96158

.field private static final STATIC_PATTERN_BYTES:I = 0x96324

.field private static final ZOOM_PIECE_STRIDE:I = 0xfc

.field private static final ZOOM_RECORD_BYTES:I = 0xc

.field private static final ZOOM_TABLE:I = 0x24b8e

.field public static final ZOOM_TICKS:I = 0x10


# instance fields
.field private cache:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;

.field private cachedFrame:Landroid/graphics/Bitmap;

.field private cachedTick:I

.field private final providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

.field private final rom:[B


# direct methods
.method static bridge synthetic -$$Nest$smparseGeometry([B)Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;
    .locals 0

    invoke-static {p0}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->parseGeometry([B)Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->FRONTEND_TO_ROM_HOUSE:[I

    return-void
.end method

.method public constructor <init>(Lcom/ahsim/demulation/RomRuntimeFrontendAssets;)V
    .locals 2
    .param p1, "assets"    # Lcom/ahsim/demulation/RomRuntimeFrontendAssets;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->cachedTick:I

    .line 89
    if-eqz p1, :cond_0

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    .line 91
    new-instance v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    invoke-direct {v0, p1}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;-><init>(Lcom/ahsim/demulation/RomRuntimeFrontendAssets;)V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    .line 92
    return-void

    .line 89
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Frontend READY asset source is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "rom"    # [B

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->cachedTick:I

    .line 81
    if-eqz p1, :cond_0

    array-length v0, p1

    const v1, 0xa4000

    if-lt v0, v1, :cond_0

    .line 83
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    .line 85
    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ROM is missing or too small for campaign transition"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static advanceOneVBlank(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;)V
    .locals 6
    .param p0, "c"    # Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;
    .param p1, "s"    # Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;

    .line 638
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->slots:[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 639
    iget-object v1, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->slots:[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;

    aget-object v1, v1, v0

    .line 640
    .local v1, "object":Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;
    iget v2, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;->piece:I

    if-ltz v2, :cond_1

    iget-boolean v2, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;->paused:Z

    if-eqz v2, :cond_0

    goto :goto_1

    .line 641
    :cond_0
    iget-wide v2, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;->velocityFixed:J

    const-wide/16 v4, 0x4000

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;->velocityFixed:J

    .line 642
    iget-wide v2, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;->displacementFixed:J

    iget-wide v4, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;->velocityFixed:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;->displacementFixed:J

    .line 643
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->houseY:[I

    iget v3, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;->piece:I

    aget v2, v2, v3

    iget-wide v3, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;->displacementFixed:J

    const/16 v5, 0x10

    shr-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    .line 644
    .local v2, "y":I
    const/16 v3, 0xe0

    if-lt v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;->clear()V

    .line 638
    .end local v1    # "object":Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;
    .end local v2    # "y":I
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 646
    .end local v0    # "i":I
    :cond_2
    iget v0, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->tick:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->tick:I

    .line 647
    iget v0, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->phase:I

    const/4 v2, 0x5

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->phase:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    iget v0, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->phase:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    iget v0, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->phase:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3

    iget v0, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->phase:I

    if-ne v0, v2, :cond_4

    .line 650
    :cond_3
    iget v0, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->waitTicks:I

    if-lez v0, :cond_4

    iget v0, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->waitTicks:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->waitTicks:I

    .line 652
    :cond_4
    iget v0, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->phase:I

    if-ne v0, v2, :cond_5

    iget v0, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->zoomFrame:I

    const/16 v2, 0xf

    if-ge v0, v2, :cond_5

    iget v0, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->zoomFrame:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->zoomFrame:I

    .line 653
    :cond_5
    iget v0, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->phase:I

    if-ne v0, v1, :cond_6

    iget v0, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->specialDelayTicks:I

    if-lez v0, :cond_6

    iget v0, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->specialDelayTicks:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->specialDelayTicks:I

    .line 654
    :cond_6
    return-void
.end method

.method private static allocateObjectSlot([Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;I)I
    .locals 3
    .param p0, "slots"    # [Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;
    .param p1, "piece"    # I

    .line 631
    const/4 v0, 0x7

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x2

    aget-object v2, p0, v0

    iget v2, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;->piece:I

    if-gez v2, :cond_0

    move v1, v0

    :cond_0
    return v1

    .line 632
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aget-object v2, p0, v0

    iget v2, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;->piece:I

    if-gez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 633
    .end local v0    # "i":I
    :cond_3
    return v1
.end method

.method private static be16([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "o"    # I

    .line 690
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->checkRange([BII)V

    .line 691
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static be32([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "o"    # I

    .line 695
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->checkRange([BII)V

    .line 696
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private blitComponent([[BIIIIII)V
    .locals 21
    .param p1, "layers"    # [[B
    .param p2, "sourceBase"    # I
    .param p3, "firstTile"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "code"    # I
    .param p7, "mode"    # I

    .line 225
    move-object/from16 v0, p0

    move/from16 v1, p7

    const/4 v2, 0x0

    .line 226
    .local v2, "layer":I
    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    .line 227
    const/4 v2, 0x1

    .line 228
    add-int/lit8 v1, v1, -0x2

    .line 230
    .end local p7    # "mode":I
    .local v1, "mode":I
    :cond_0
    iget-object v4, v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    mul-int/lit8 v5, p6, 0x2

    const v6, 0x24042

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v4

    add-int/2addr v4, v3

    .line 231
    .local v4, "tilesWide":I
    iget-object v5, v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    mul-int/lit8 v6, p6, 0x2

    const v7, 0x24062

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v5

    add-int/2addr v5, v3

    .line 232
    .local v5, "tilesHigh":I
    add-int/lit8 v6, p4, -0x18

    .line 233
    .local v6, "dx0":I
    add-int/lit8 v7, p5, -0x30

    .line 234
    .local v7, "dy0":I
    move/from16 v8, p3

    .line 235
    .local v8, "tile":I
    const/4 v9, 0x0

    .local v9, "cx":I
    :goto_0
    if-ge v9, v4, :cond_a

    .line 236
    const/4 v10, 0x0

    .local v10, "cy":I
    :goto_1
    if-ge v10, v5, :cond_9

    .line 237
    mul-int/lit8 v11, v8, 0x20

    add-int v11, p2, v11

    .line 238
    .local v11, "tileOffset":I
    iget-object v12, v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    const/16 v13, 0x20

    invoke-static {v12, v11, v13}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->checkRange([BII)V

    .line 239
    const/4 v12, 0x0

    .local v12, "py":I
    :goto_2
    const/16 v13, 0x8

    if-ge v12, v13, :cond_8

    .line 240
    mul-int/lit8 v13, v10, 0x8

    add-int/2addr v13, v7

    add-int/2addr v13, v12

    .line 241
    .local v13, "yy":I
    if-ltz v13, :cond_7

    const/16 v14, 0x70

    if-lt v13, v14, :cond_1

    move/from16 p7, v1

    move/from16 v17, v2

    move/from16 v16, v3

    goto/16 :goto_6

    .line 242
    :cond_1
    const/4 v14, 0x0

    .local v14, "pair":I
    :goto_3
    const/4 v15, 0x4

    if-ge v14, v15, :cond_6

    .line 243
    iget-object v15, v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    mul-int/lit8 v16, v12, 0x4

    add-int v16, v11, v16

    add-int v16, v16, v14

    aget-byte v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    .line 244
    .local v15, "packed":I
    if-eqz v1, :cond_2

    move/from16 v16, v3

    iget-object v3, v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    const v17, 0x24082

    add-int v17, v15, v17

    aget-byte v3, v3, v17

    and-int/lit16 v15, v3, 0xff

    goto :goto_4

    :cond_2
    move/from16 v16, v3

    .line 245
    :goto_4
    mul-int/lit8 v3, v9, 0x8

    add-int/2addr v3, v6

    mul-int/lit8 v17, v14, 0x2

    add-int v3, v3, v17

    .line 246
    .local v3, "px":I
    ushr-int/lit8 v0, v15, 0x4

    .line 247
    .local v0, "hi":I
    move/from16 p7, v1

    .end local v1    # "mode":I
    .restart local p7    # "mode":I
    and-int/lit8 v1, v15, 0xf

    .line 248
    .local v1, "lo":I
    move/from16 v17, v2

    .end local v2    # "layer":I
    .local v17, "layer":I
    const/16 v2, 0x108

    if-eqz v0, :cond_3

    if-ltz v3, :cond_3

    if-ge v3, v2, :cond_3

    .line 249
    aget-object v18, p1, v17

    mul-int/lit16 v2, v13, 0x108

    add-int/2addr v2, v3

    move/from16 v20, v2

    int-to-byte v2, v0

    aput-byte v2, v18, v20

    .line 250
    :cond_3
    if-eqz v1, :cond_4

    add-int/lit8 v2, v3, 0x1

    if-ltz v2, :cond_4

    add-int/lit8 v2, v3, 0x1

    move/from16 v18, v0

    const/16 v0, 0x108

    .end local v0    # "hi":I
    .local v18, "hi":I
    if-ge v2, v0, :cond_5

    .line 251
    aget-object v0, p1, v17

    mul-int/lit16 v2, v13, 0x108

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v19, v0

    int-to-byte v0, v1

    aput-byte v0, v19, v2

    goto :goto_5

    .line 250
    .end local v18    # "hi":I
    .restart local v0    # "hi":I
    :cond_4
    move/from16 v18, v0

    .line 242
    .end local v0    # "hi":I
    .end local v1    # "lo":I
    .end local v3    # "px":I
    .end local v15    # "packed":I
    :cond_5
    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v3, v16

    move/from16 v2, v17

    goto :goto_3

    .end local v17    # "layer":I
    .end local p7    # "mode":I
    .local v1, "mode":I
    .restart local v2    # "layer":I
    :cond_6
    move/from16 p7, v1

    move/from16 v17, v2

    move/from16 v16, v3

    .end local v1    # "mode":I
    .end local v2    # "layer":I
    .restart local v17    # "layer":I
    .restart local p7    # "mode":I
    goto :goto_6

    .line 241
    .end local v14    # "pair":I
    .end local v17    # "layer":I
    .end local p7    # "mode":I
    .restart local v1    # "mode":I
    .restart local v2    # "layer":I
    :cond_7
    move/from16 p7, v1

    move/from16 v17, v2

    move/from16 v16, v3

    .line 239
    .end local v1    # "mode":I
    .end local v2    # "layer":I
    .end local v13    # "yy":I
    .restart local v17    # "layer":I
    .restart local p7    # "mode":I
    :goto_6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v3, v16

    move/from16 v2, v17

    goto/16 :goto_2

    .end local v17    # "layer":I
    .end local p7    # "mode":I
    .restart local v1    # "mode":I
    .restart local v2    # "layer":I
    :cond_8
    move/from16 p7, v1

    move/from16 v17, v2

    move/from16 v16, v3

    .line 254
    .end local v1    # "mode":I
    .end local v2    # "layer":I
    .end local v12    # "py":I
    .restart local v17    # "layer":I
    .restart local p7    # "mode":I
    nop

    .end local v11    # "tileOffset":I
    add-int/lit8 v8, v8, 0x1

    .line 236
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_1

    .end local v17    # "layer":I
    .end local p7    # "mode":I
    .restart local v1    # "mode":I
    .restart local v2    # "layer":I
    :cond_9
    move/from16 p7, v1

    move/from16 v17, v2

    move/from16 v16, v3

    .line 235
    .end local v1    # "mode":I
    .end local v2    # "layer":I
    .end local v10    # "cy":I
    .restart local v17    # "layer":I
    .restart local p7    # "mode":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 257
    .end local v9    # "cx":I
    .end local v17    # "layer":I
    .end local p7    # "mode":I
    .restart local v1    # "mode":I
    .restart local v2    # "layer":I
    :cond_a
    return-void
.end method

.method private blitProviderComponent([[B[BLcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;I)V
    .locals 20
    .param p1, "layers"    # [[B
    .param p2, "patterns"    # [B
    .param p3, "component"    # Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    .param p4, "mode"    # I

    .line 271
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p4

    const/4 v3, 0x0

    .line 272
    .local v3, "layer":I
    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x2

    .line 273
    .end local p4    # "mode":I
    .local v2, "mode":I
    :cond_0
    iget v5, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;->x:I

    add-int/lit8 v5, v5, -0x18

    .local v5, "dx0":I
    iget v6, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;->y:I

    add-int/lit8 v6, v6, -0x30

    .line 274
    .local v6, "dy0":I
    iget v7, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;->firstTile:I

    .line 275
    .local v7, "tile":I
    const/4 v8, 0x0

    .local v8, "cx":I
    :goto_0
    iget v9, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;->tilesWide:I

    if-ge v8, v9, :cond_a

    const/4 v9, 0x0

    .local v9, "cy":I
    :goto_1
    iget v10, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;->tilesHigh:I

    if-ge v9, v10, :cond_9

    .line 276
    mul-int/lit8 v10, v7, 0x20

    .line 277
    .local v10, "tileOffset":I
    const/16 v11, 0x20

    invoke-static {v0, v10, v11}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->checkRange([BII)V

    .line 278
    const/4 v11, 0x0

    .local v11, "py":I
    :goto_2
    const/16 v12, 0x8

    if-ge v11, v12, :cond_8

    .line 279
    mul-int/lit8 v12, v9, 0x8

    add-int/2addr v12, v6

    add-int/2addr v12, v11

    .local v12, "yy":I
    if-ltz v12, :cond_7

    const/16 v13, 0x70

    if-lt v12, v13, :cond_1

    move-object/from16 v15, p0

    move/from16 p4, v2

    move/from16 v16, v4

    goto/16 :goto_6

    .line 280
    :cond_1
    const/4 v13, 0x0

    .local v13, "pair":I
    :goto_3
    const/4 v14, 0x4

    if-ge v13, v14, :cond_6

    .line 281
    mul-int/lit8 v14, v11, 0x4

    add-int/2addr v14, v10

    add-int/2addr v14, v13

    aget-byte v14, v0, v14

    and-int/lit16 v14, v14, 0xff

    .line 282
    .local v14, "packed":I
    if-eqz v2, :cond_2

    move-object/from16 v15, p0

    move/from16 v16, v4

    iget-object v4, v15, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    iget-object v4, v4, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->byteRemap:[B

    aget-byte v4, v4, v14

    and-int/lit16 v14, v4, 0xff

    goto :goto_4

    :cond_2
    move-object/from16 v15, p0

    move/from16 v16, v4

    .line 283
    :goto_4
    mul-int/lit8 v4, v8, 0x8

    add-int/2addr v4, v5

    mul-int/lit8 v17, v13, 0x2

    add-int v4, v4, v17

    .local v4, "px":I
    ushr-int/lit8 v0, v14, 0x4

    .local v0, "hi":I
    and-int/lit8 v1, v14, 0xf

    .line 284
    .local v1, "lo":I
    move/from16 p4, v2

    .end local v2    # "mode":I
    .restart local p4    # "mode":I
    const/16 v2, 0x108

    if-eqz v0, :cond_3

    if-ltz v4, :cond_3

    if-ge v4, v2, :cond_3

    aget-object v17, p1, v3

    mul-int/lit16 v2, v12, 0x108

    add-int/2addr v2, v4

    move/from16 v19, v2

    int-to-byte v2, v0

    aput-byte v2, v17, v19

    .line 285
    :cond_3
    if-eqz v1, :cond_4

    add-int/lit8 v2, v4, 0x1

    if-ltz v2, :cond_4

    add-int/lit8 v2, v4, 0x1

    move/from16 v17, v0

    const/16 v0, 0x108

    .end local v0    # "hi":I
    .local v17, "hi":I
    if-ge v2, v0, :cond_5

    aget-object v0, p1, v3

    mul-int/lit16 v2, v12, 0x108

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v18, v0

    int-to-byte v0, v1

    aput-byte v0, v18, v2

    goto :goto_5

    .end local v17    # "hi":I
    .restart local v0    # "hi":I
    :cond_4
    move/from16 v17, v0

    .line 280
    .end local v0    # "hi":I
    .end local v1    # "lo":I
    .end local v4    # "px":I
    .end local v14    # "packed":I
    :cond_5
    :goto_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v4, v16

    goto :goto_3

    .end local p4    # "mode":I
    .restart local v2    # "mode":I
    :cond_6
    move-object/from16 v15, p0

    move/from16 p4, v2

    move/from16 v16, v4

    .end local v2    # "mode":I
    .restart local p4    # "mode":I
    goto :goto_6

    .line 279
    .end local v13    # "pair":I
    .end local p4    # "mode":I
    .restart local v2    # "mode":I
    :cond_7
    move-object/from16 v15, p0

    move/from16 p4, v2

    move/from16 v16, v4

    .line 278
    .end local v2    # "mode":I
    .end local v12    # "yy":I
    .restart local p4    # "mode":I
    :goto_6
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v4, v16

    goto/16 :goto_2

    .end local p4    # "mode":I
    .restart local v2    # "mode":I
    :cond_8
    move-object/from16 v15, p0

    move/from16 p4, v2

    move/from16 v16, v4

    .line 288
    .end local v2    # "mode":I
    .end local v11    # "py":I
    .restart local p4    # "mode":I
    nop

    .end local v10    # "tileOffset":I
    add-int/lit8 v7, v7, 0x1

    .line 275
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    goto/16 :goto_1

    .end local p4    # "mode":I
    .restart local v2    # "mode":I
    :cond_9
    move-object/from16 v15, p0

    move/from16 p4, v2

    move/from16 v16, v4

    .end local v2    # "mode":I
    .end local v9    # "cy":I
    .restart local p4    # "mode":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    goto/16 :goto_0

    .line 290
    .end local v8    # "cx":I
    .end local p4    # "mode":I
    .restart local v2    # "mode":I
    :cond_a
    return-void
.end method

.method private blitRawFocusComponent([BIIIII)V
    .locals 17
    .param p1, "dst"    # [B
    .param p2, "sourceBase"    # I
    .param p3, "firstTile"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "code"    # I

    .line 443
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    mul-int/lit8 v2, p6, 0x2

    const v3, 0x24042

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 444
    .local v1, "tilesWide":I
    iget-object v2, v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    mul-int/lit8 v3, p6, 0x2

    const v4, 0x24062

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 445
    .local v2, "tilesHigh":I
    add-int/lit8 v3, p4, -0x18

    and-int/lit16 v3, v3, 0x1f8

    .line 446
    .local v3, "dx0":I
    add-int/lit8 v4, p5, -0x30

    .line 447
    .local v4, "dy0":I
    move/from16 v5, p3

    .line 448
    .local v5, "tile":I
    const/4 v6, 0x0

    .local v6, "cx":I
    :goto_0
    if-ge v6, v1, :cond_8

    .line 449
    const/4 v7, 0x0

    .local v7, "cy":I
    :goto_1
    if-ge v7, v2, :cond_7

    .line 450
    mul-int/lit8 v8, v5, 0x20

    add-int v8, p2, v8

    .line 451
    .local v8, "tileOffset":I
    iget-object v9, v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    const/16 v10, 0x20

    invoke-static {v9, v8, v10}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->checkRange([BII)V

    .line 452
    const/4 v9, 0x0

    .local v9, "py":I
    :goto_2
    const/16 v10, 0x8

    if-ge v9, v10, :cond_6

    .line 453
    mul-int/lit8 v10, v7, 0x8

    add-int/2addr v10, v4

    add-int/2addr v10, v9

    .line 454
    .local v10, "yy":I
    if-ltz v10, :cond_5

    const/16 v11, 0x70

    if-lt v10, v11, :cond_0

    move/from16 v16, v1

    goto :goto_5

    .line 455
    :cond_0
    const/4 v12, 0x0

    .local v12, "pair":I
    :goto_3
    const/4 v13, 0x4

    if-ge v12, v13, :cond_4

    .line 456
    iget-object v13, v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    mul-int/lit8 v14, v9, 0x4

    add-int/2addr v14, v8

    add-int/2addr v14, v12

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    .line 457
    .local v13, "packed":I
    mul-int/lit8 v14, v6, 0x8

    add-int/2addr v14, v3

    mul-int/lit8 v15, v12, 0x2

    add-int/2addr v14, v15

    .line 458
    .local v14, "px":I
    ushr-int/lit8 v15, v13, 0x4

    .line 459
    .local v15, "hi":I
    and-int/lit8 v11, v13, 0xf

    .line 460
    .local v11, "lo":I
    if-eqz v15, :cond_1

    if-ltz v14, :cond_1

    const/16 v0, 0x70

    if-ge v14, v0, :cond_1

    mul-int/lit8 v0, v10, 0x70

    add-int/2addr v0, v14

    move/from16 v16, v0

    int-to-byte v0, v15

    aput-byte v0, p1, v16

    .line 461
    :cond_1
    if-eqz v11, :cond_2

    add-int/lit8 v0, v14, 0x1

    if-ltz v0, :cond_2

    add-int/lit8 v0, v14, 0x1

    move/from16 v16, v1

    const/16 v1, 0x70

    .end local v1    # "tilesWide":I
    .local v16, "tilesWide":I
    if-ge v0, v1, :cond_3

    mul-int/lit8 v0, v10, 0x70

    add-int/2addr v0, v14

    add-int/lit8 v0, v0, 0x1

    int-to-byte v1, v11

    aput-byte v1, p1, v0

    goto :goto_4

    .end local v16    # "tilesWide":I
    .restart local v1    # "tilesWide":I
    :cond_2
    move/from16 v16, v1

    .line 455
    .end local v1    # "tilesWide":I
    .end local v11    # "lo":I
    .end local v13    # "packed":I
    .end local v14    # "px":I
    .end local v15    # "hi":I
    .restart local v16    # "tilesWide":I
    :cond_3
    :goto_4
    add-int/lit8 v12, v12, 0x1

    const/16 v11, 0x70

    move-object/from16 v0, p0

    move/from16 v1, v16

    goto :goto_3

    .end local v16    # "tilesWide":I
    .restart local v1    # "tilesWide":I
    :cond_4
    move/from16 v16, v1

    .end local v1    # "tilesWide":I
    .restart local v16    # "tilesWide":I
    goto :goto_5

    .line 454
    .end local v12    # "pair":I
    .end local v16    # "tilesWide":I
    .restart local v1    # "tilesWide":I
    :cond_5
    move/from16 v16, v1

    .line 452
    .end local v1    # "tilesWide":I
    .end local v10    # "yy":I
    .restart local v16    # "tilesWide":I
    :goto_5
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    goto :goto_2

    .end local v16    # "tilesWide":I
    .restart local v1    # "tilesWide":I
    :cond_6
    move/from16 v16, v1

    .line 464
    .end local v1    # "tilesWide":I
    .end local v9    # "py":I
    .restart local v16    # "tilesWide":I
    nop

    .end local v8    # "tileOffset":I
    add-int/lit8 v5, v5, 0x1

    .line 449
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    .end local v16    # "tilesWide":I
    .restart local v1    # "tilesWide":I
    :cond_7
    move/from16 v16, v1

    .line 448
    .end local v1    # "tilesWide":I
    .end local v7    # "cy":I
    .restart local v16    # "tilesWide":I
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 467
    .end local v6    # "cx":I
    .end local v16    # "tilesWide":I
    .restart local v1    # "tilesWide":I
    :cond_8
    return-void
.end method

.method private blitSelectedRaw([BIIIIII)V
    .locals 12
    .param p1, "dst"    # [B
    .param p2, "descriptorPointerTable"    # I
    .param p3, "componentStream"    # I
    .param p4, "patternBytes"    # I
    .param p5, "selectedPiece"    # I
    .param p6, "initialX"    # I
    .param p7, "initialY"    # I

    .line 418
    const/4 v1, 0x0

    .line 419
    .local v1, "tileIndex":I
    move v2, p3

    .line 420
    .local v2, "components":I
    const/4 v3, 0x0

    move v7, v3

    .local v7, "slot":I
    :goto_0
    const/16 v3, 0xa

    if-ge v7, v3, :cond_2

    .line 421
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    mul-int/lit8 v4, v7, 0x4

    add-int/2addr v4, p2

    invoke-static {v3, v4}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be32([BI)I

    move-result v3

    .line 422
    .local v3, "descriptor":I
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    add-int/lit8 v5, v3, 0x4

    invoke-static {v4, v5}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v4

    .line 423
    .local v4, "code":I
    add-int/lit8 v3, v3, 0x6

    .line 425
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    invoke-static {v5, v2}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    .line 426
    add-int/lit8 v8, v2, 0x2

    .line 427
    .end local v2    # "components":I
    .local v8, "components":I
    move/from16 v2, p6

    .line 428
    .local v2, "x":I
    move/from16 v5, p7

    move v9, v3

    move v6, v4

    move v3, v1

    move v4, v2

    .line 430
    .end local v1    # "tileIndex":I
    .end local v2    # "x":I
    .local v3, "tileIndex":I
    .local v4, "x":I
    .local v5, "y":I
    .local v6, "code":I
    .local v9, "descriptor":I
    :goto_1
    move/from16 v10, p5

    if-ne v7, v10, :cond_0

    .line 431
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p4

    invoke-direct/range {v0 .. v6}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->blitRawFocusComponent([BIIIII)V

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    mul-int/lit8 v2, v6, 0x2

    const v11, 0x96304

    add-int/2addr v2, v11

    invoke-static {v1, v2}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v1

    add-int/2addr v3, v1

    .line 433
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    invoke-static {v1, v9}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be32([BI)I

    move-result v1

    if-nez v1, :cond_1

    .line 420
    .end local v4    # "x":I
    .end local v5    # "y":I
    .end local v6    # "code":I
    .end local v9    # "descriptor":I
    add-int/lit8 v7, v7, 0x1

    move v1, v3

    move v2, v8

    goto :goto_0

    .line 434
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    .restart local v6    # "code":I
    .restart local v9    # "descriptor":I
    :cond_1
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    invoke-static {v1, v9}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->s16([BI)I

    move-result v1

    add-int/2addr v4, v1

    .line 435
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    add-int/lit8 v2, v9, 0x2

    invoke-static {v1, v2}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->s16([BI)I

    move-result v1

    add-int/2addr v5, v1

    .line 436
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    add-int/lit8 v2, v9, 0x4

    invoke-static {v1, v2}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v6

    .line 437
    add-int/lit8 v9, v9, 0x6

    goto :goto_1

    .line 420
    .end local v3    # "tileIndex":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    .end local v6    # "code":I
    .end local v8    # "components":I
    .end local v9    # "descriptor":I
    .restart local v1    # "tileIndex":I
    .local v2, "components":I
    :cond_2
    move/from16 v10, p5

    .line 440
    .end local v7    # "slot":I
    return-void
.end method

.method private static blitSelectedRawProvider([BLcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;[BIII)V
    .locals 22
    .param p0, "dst"    # [B
    .param p1, "geometry"    # Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;
    .param p2, "patterns"    # [B
    .param p3, "selectedPiece"    # I
    .param p4, "initialX"    # I
    .param p5, "initialY"    # I

    .line 380
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;->slots:[[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;

    aget-object v2, v2, p3

    .line 381
    .local v2, "components":[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    const/4 v3, 0x0

    aget-object v4, v2, v3

    .line 382
    .local v4, "first":Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    array-length v5, v2

    :goto_0
    if-ge v3, v5, :cond_9

    aget-object v6, v2, v3

    .line 383
    .local v6, "component":Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    iget v7, v6, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;->x:I

    add-int v7, p4, v7

    iget v8, v4, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;->x:I

    sub-int/2addr v7, v8

    .local v7, "x":I
    iget v8, v6, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;->y:I

    add-int v8, p5, v8

    iget v9, v4, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;->y:I

    sub-int/2addr v8, v9

    .line 384
    .local v8, "y":I
    add-int/lit8 v9, v7, -0x18

    and-int/lit16 v9, v9, 0x1f8

    .local v9, "dx0":I
    add-int/lit8 v10, v8, -0x30

    .local v10, "dy0":I
    iget v11, v6, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;->firstTile:I

    .line 385
    .local v11, "tile":I
    const/4 v12, 0x0

    .local v12, "cx":I
    :goto_1
    iget v13, v6, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;->tilesWide:I

    if-ge v12, v13, :cond_8

    const/4 v13, 0x0

    .local v13, "cy":I
    :goto_2
    iget v14, v6, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;->tilesHigh:I

    if-ge v13, v14, :cond_7

    .line 386
    mul-int/lit8 v14, v11, 0x20

    .local v14, "tileOffset":I
    const/16 v15, 0x20

    invoke-static {v0, v14, v15}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->checkRange([BII)V

    .line 387
    const/4 v15, 0x0

    .local v15, "py":I
    :goto_3
    const/16 v0, 0x8

    if-ge v15, v0, :cond_6

    .line 388
    mul-int/lit8 v0, v13, 0x8

    add-int/2addr v0, v10

    add-int/2addr v0, v15

    .local v0, "yy":I
    if-ltz v0, :cond_5

    const/16 v1, 0x70

    if-lt v0, v1, :cond_0

    move-object/from16 v18, v2

    move/from16 v20, v3

    goto/16 :goto_6

    .line 389
    :cond_0
    const/16 v16, 0x0

    move/from16 v1, v16

    .local v1, "pair":I
    :goto_4
    move/from16 v16, v0

    .end local v0    # "yy":I
    .local v16, "yy":I
    const/4 v0, 0x4

    if-ge v1, v0, :cond_4

    .line 390
    mul-int/lit8 v0, v15, 0x4

    add-int/2addr v0, v14

    add-int/2addr v0, v1

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    .line 391
    .local v0, "packed":I
    mul-int/lit8 v17, v12, 0x8

    add-int v17, v9, v17

    mul-int/lit8 v18, v1, 0x2

    move/from16 v19, v0

    .end local v0    # "packed":I
    .local v19, "packed":I
    add-int v0, v17, v18

    .local v0, "px":I
    move/from16 v17, v1

    .end local v1    # "pair":I
    .local v17, "pair":I
    ushr-int/lit8 v1, v19, 0x4

    .local v1, "hi":I
    move-object/from16 v18, v2

    .end local v2    # "components":[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    .local v18, "components":[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    and-int/lit8 v2, v19, 0xf

    .line 392
    .local v2, "lo":I
    if-eqz v1, :cond_2

    if-ltz v0, :cond_2

    move/from16 v20, v3

    const/16 v3, 0x70

    if-ge v0, v3, :cond_1

    mul-int/lit8 v3, v16, 0x70

    add-int/2addr v3, v0

    move/from16 v21, v0

    .end local v0    # "px":I
    .local v21, "px":I
    int-to-byte v0, v1

    aput-byte v0, p0, v3

    goto :goto_5

    .end local v21    # "px":I
    .restart local v0    # "px":I
    :cond_1
    move/from16 v21, v0

    goto :goto_5

    :cond_2
    move/from16 v21, v0

    move/from16 v20, v3

    .line 393
    .end local v0    # "px":I
    .restart local v21    # "px":I
    :goto_5
    if-eqz v2, :cond_3

    add-int/lit8 v0, v21, 0x1

    if-ltz v0, :cond_3

    add-int/lit8 v0, v21, 0x1

    const/16 v3, 0x70

    if-ge v0, v3, :cond_3

    mul-int/lit8 v0, v16, 0x70

    add-int v0, v0, v21

    add-int/lit8 v0, v0, 0x1

    int-to-byte v3, v2

    aput-byte v3, p0, v0

    .line 389
    .end local v1    # "hi":I
    .end local v2    # "lo":I
    .end local v19    # "packed":I
    .end local v21    # "px":I
    :cond_3
    add-int/lit8 v1, v17, 0x1

    move/from16 v0, v16

    move-object/from16 v2, v18

    move/from16 v3, v20

    .end local v17    # "pair":I
    .local v1, "pair":I
    goto :goto_4

    .end local v18    # "components":[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    .local v2, "components":[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    :cond_4
    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v20, v3

    .end local v1    # "pair":I
    .end local v2    # "components":[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    .restart local v17    # "pair":I
    .restart local v18    # "components":[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    goto :goto_6

    .line 388
    .end local v16    # "yy":I
    .end local v17    # "pair":I
    .end local v18    # "components":[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    .local v0, "yy":I
    .restart local v2    # "components":[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    :cond_5
    move/from16 v16, v0

    move-object/from16 v18, v2

    move/from16 v20, v3

    .line 387
    .end local v0    # "yy":I
    .end local v2    # "components":[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    .restart local v18    # "components":[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    :goto_6
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    move-object/from16 v2, v18

    move/from16 v3, v20

    goto/16 :goto_3

    .end local v18    # "components":[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    .restart local v2    # "components":[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    :cond_6
    move-object/from16 v18, v2

    move/from16 v20, v3

    .line 396
    .end local v2    # "components":[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    .end local v15    # "py":I
    .restart local v18    # "components":[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    nop

    .end local v14    # "tileOffset":I
    add-int/lit8 v11, v11, 0x1

    .line 385
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    goto/16 :goto_2

    .end local v18    # "components":[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    .restart local v2    # "components":[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    :cond_7
    move-object/from16 v18, v2

    move/from16 v20, v3

    .end local v2    # "components":[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    .end local v13    # "cy":I
    .restart local v18    # "components":[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    goto/16 :goto_1

    .end local v18    # "components":[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    .restart local v2    # "components":[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    :cond_8
    move-object/from16 v18, v2

    move/from16 v20, v3

    .line 382
    .end local v2    # "components":[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    .end local v6    # "component":Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    .end local v7    # "x":I
    .end local v8    # "y":I
    .end local v9    # "dx0":I
    .end local v10    # "dy0":I
    .end local v11    # "tile":I
    .end local v12    # "cx":I
    .restart local v18    # "components":[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    add-int/lit8 v3, v20, 0x1

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    goto/16 :goto_0

    .line 399
    .end local v18    # "components":[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    .restart local v2    # "components":[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    :cond_9
    return-void
.end method

.method private buildFocusPalette(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;)[I
    .locals 8
    .param p1, "c"    # Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;

    .line 471
    iget-object v0, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->palette:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 472
    .local v0, "out":[I
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    const/4 v2, 0x6

    if-eqz v1, :cond_1

    .line 473
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    iget v3, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->frontendHouse:I

    iget v4, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->missionOneBased:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->houseModesFor(II)[B

    move-result-object v1

    .line 474
    .local v1, "modes":[B
    iget v3, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->selectedPiece:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v3

    .line 475
    .local v3, "mode":I
    if-eqz v3, :cond_0

    .line 476
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    iget-object v4, v4, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->focusPaletteOffsets:[B

    mul-int/lit8 v5, v3, 0x2

    invoke-static {v4, v5}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v4

    .line 477
    .local v4, "offset":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_0

    iget-object v6, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    iget-object v6, v6, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->commonPalette:[B

    mul-int/lit8 v7, v5, 0x2

    add-int/2addr v7, v4

    invoke-static {v6, v7}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v6

    invoke-static {v6}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->genesisColor(I)I

    move-result v6

    aput v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 479
    .end local v1    # "modes":[B
    .end local v3    # "mode":I
    .end local v4    # "offset":I
    .end local v5    # "i":I
    :cond_0
    goto :goto_2

    .line 480
    :cond_1
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    iget v3, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->houseComponentStream:I

    iget v4, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->selectedPiece:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v1

    .line 481
    .local v1, "mode":I
    if-eqz v1, :cond_2

    .line 483
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    mul-int/lit8 v4, v1, 0x2

    const v5, 0x95cf8

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v3

    .line 484
    .local v3, "offset":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_2

    iget-object v5, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    const v6, 0xa2d7e

    add-int/2addr v6, v3

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v5

    invoke-static {v5}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->genesisColor(I)I

    move-result v5

    aput v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 487
    .end local v1    # "mode":I
    .end local v3    # "offset":I
    .end local v4    # "i":I
    :cond_2
    :goto_2
    return-object v0
.end method

.method private buildPieceLayers(III)[[[B
    .locals 14
    .param p1, "descriptorPointerTable"    # I
    .param p2, "componentStream"    # I
    .param p3, "patternBytes"    # I

    .line 198
    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x2

    const/16 v3, 0x7380

    aput v3, v1, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v2, 0x0

    const/16 v8, 0xa

    aput v8, v1, v2

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [[[B

    .line 199
    .local v9, "pieces":[[[B
    const/4 v1, 0x0

    .line 200
    .local v1, "tileIndex":I
    move/from16 v2, p2

    .line 201
    .local v2, "components":I
    const/4 v3, 0x0

    move v10, v3

    .local v10, "slot":I
    :goto_0
    if-ge v10, v8, :cond_1

    .line 202
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    mul-int/lit8 v4, v10, 0x4

    add-int/2addr v4, p1

    invoke-static {v3, v4}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be32([BI)I

    move-result v3

    .line 203
    .local v3, "descriptor":I
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    invoke-static {v4, v3}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->s16([BI)I

    move-result v4

    .line 204
    .local v4, "x":I
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    add-int/lit8 v6, v3, 0x2

    invoke-static {v5, v6}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->s16([BI)I

    move-result v5

    .line 205
    .local v5, "y":I
    iget-object v6, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    add-int/lit8 v7, v3, 0x4

    invoke-static {v6, v7}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v6

    .line 206
    .local v6, "code":I
    add-int/lit8 v3, v3, 0x6

    .line 208
    iget-object v7, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    invoke-static {v7, v2}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v7

    .line 209
    .local v7, "mode":I
    add-int/lit8 v11, v2, 0x2

    move v12, v3

    move v3, v1

    .line 211
    .end local v1    # "tileIndex":I
    .end local v2    # "components":I
    .local v3, "tileIndex":I
    .local v11, "components":I
    .local v12, "descriptor":I
    :goto_1
    aget-object v1, v9, v10

    move-object v0, p0

    move/from16 v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->blitComponent([[BIIIIII)V

    .line 212
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    mul-int/lit8 v2, v6, 0x2

    const v13, 0x96304

    add-int/2addr v2, v13

    invoke-static {v1, v2}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v1

    add-int/2addr v3, v1

    .line 213
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    invoke-static {v1, v12}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be32([BI)I

    move-result v1

    if-nez v1, :cond_0

    .line 201
    .end local v4    # "x":I
    .end local v5    # "y":I
    .end local v6    # "code":I
    .end local v7    # "mode":I
    .end local v12    # "descriptor":I
    add-int/lit8 v10, v10, 0x1

    move v1, v3

    move v2, v11

    goto :goto_0

    .line 214
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    .restart local v6    # "code":I
    .restart local v7    # "mode":I
    .restart local v12    # "descriptor":I
    :cond_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    invoke-static {v1, v12}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->s16([BI)I

    move-result v1

    add-int/2addr v4, v1

    .line 215
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    add-int/lit8 v2, v12, 0x2

    invoke-static {v1, v2}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->s16([BI)I

    move-result v1

    add-int/2addr v5, v1

    .line 216
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    add-int/lit8 v2, v12, 0x4

    invoke-static {v1, v2}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v6

    .line 217
    add-int/lit8 v12, v12, 0x6

    goto :goto_1

    .line 220
    .end local v3    # "tileIndex":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    .end local v6    # "code":I
    .end local v7    # "mode":I
    .end local v10    # "slot":I
    .end local v11    # "components":I
    .end local v12    # "descriptor":I
    .restart local v1    # "tileIndex":I
    .restart local v2    # "components":I
    :cond_1
    return-object v9
.end method

.method private buildPieceLayersProvider(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;[B[B)[[[B
    .locals 10
    .param p1, "geometry"    # Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;
    .param p2, "patterns"    # [B
    .param p3, "modes"    # [B

    .line 260
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x2

    const/16 v2, 0x7380

    aput v2, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput v2, v0, v1

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[B

    .line 261
    .local v0, "pieces":[[[B
    array-length v3, p3

    const/16 v4, 0x14

    if-ne v3, v4, :cond_2

    .line 262
    const/4 v3, 0x0

    .local v3, "slot":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 263
    mul-int/lit8 v4, v3, 0x2

    invoke-static {p3, v4}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v4

    .line 264
    .local v4, "mode":I
    iget-object v5, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;->slots:[[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;

    aget-object v5, v5, v3

    array-length v6, v5

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    .line 265
    .local v8, "component":Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    aget-object v9, v0, v3

    invoke-direct {p0, v9, p2, v8, v4}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->blitProviderComponent([[B[BLcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;I)V

    .line 264
    .end local v8    # "component":Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 262
    .end local v4    # "mode":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 267
    .end local v3    # "slot":I
    :cond_1
    return-object v0

    .line 261
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Installed campaign mode record size mismatch"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private buildSelectedFocusSource(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;)[B
    .locals 11
    .param p1, "c"    # Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;

    .line 402
    const/16 v0, 0x3100

    new-array v2, v0, [B

    .line 403
    .local v2, "dst":[B
    iget v4, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->houseComponentStream:I

    iget v6, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->selectedPiece:I

    const/16 v7, 0x18

    const/16 v8, 0x30

    const v3, 0x962dc

    const v5, 0x986e6

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->blitSelectedRaw([BIIIIII)V

    .line 406
    iget-object v0, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    iget v3, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->selectedPiece:I

    mul-int/lit8 v3, v3, 0x4

    const v4, 0x96158

    add-int/2addr v3, v4

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be32([BI)I

    move-result v0

    .line 407
    .local v0, "staticDescriptor":I
    iget-object v3, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    invoke-static {v3, v0}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->s16([BI)I

    move-result v9

    .line 408
    .local v9, "staticX":I
    iget-object v3, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    add-int/lit8 v4, v0, 0x2

    invoke-static {v3, v4}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->s16([BI)I

    move-result v10

    .line 409
    .local v10, "staticY":I
    iget-object v3, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->houseX:[I

    iget v4, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->selectedPiece:I

    aget v3, v3, v4

    rsub-int/lit8 v3, v3, 0x18

    add-int v7, v3, v9

    .line 410
    .local v7, "x":I
    iget-object v3, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->houseY:[I

    iget v4, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->selectedPiece:I

    aget v3, v3, v4

    rsub-int/lit8 v3, v3, 0x30

    add-int v8, v3, v10

    .line 411
    .local v8, "y":I
    const v5, 0x96324

    iget v6, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->selectedPiece:I

    const v3, 0x96158

    const v4, 0x95d00

    invoke-direct/range {v1 .. v8}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->blitSelectedRaw([BIIIIII)V

    .line 413
    return-object v2
.end method

.method private buildSelectedFocusSourceProvider(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;)[B
    .locals 8
    .param p1, "c"    # Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;

    .line 368
    const/16 v0, 0x3100

    new-array v1, v0, [B

    .line 369
    .local v1, "dst":[B
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    iget-object v2, v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->houseGeometry:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    iget-object v3, v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->housePatterns:[B

    iget v4, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->selectedPiece:I

    const/16 v5, 0x18

    const/16 v6, 0x30

    invoke-static/range {v1 .. v6}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->blitSelectedRawProvider([BLcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;[BIII)V

    .line 370
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    iget-object v0, v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->houseGeometry:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;

    iget-object v0, v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;->slots:[[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;

    iget v2, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->selectedPiece:I

    aget-object v0, v0, v2

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 371
    .local v0, "houseFirst":Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    iget-object v3, v3, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->staticGeometry:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;

    iget-object v3, v3, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;->slots:[[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;

    iget v4, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->selectedPiece:I

    aget-object v3, v3, v4

    aget-object v7, v3, v2

    .line 372
    .local v7, "staticFirst":Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    iget v2, v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;->x:I

    rsub-int/lit8 v2, v2, 0x18

    iget v3, v7, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;->x:I

    add-int v5, v2, v3

    .line 373
    .local v5, "x":I
    iget v2, v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;->y:I

    rsub-int/lit8 v2, v2, 0x30

    iget v3, v7, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;->y:I

    add-int v6, v2, v3

    .line 374
    .local v6, "y":I
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    iget-object v2, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->staticGeometry:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    iget-object v3, v3, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->staticPatterns:[B

    iget v4, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->selectedPiece:I

    invoke-static/range {v1 .. v6}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->blitSelectedRawProvider([BLcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;[BIII)V

    .line 375
    return-object v1
.end method

.method private static checkHouseMission(II)V
    .locals 2
    .param p0, "frontendHouse"    # I
    .param p1, "missionOneBased"    # I

    .line 680
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    .line 682
    return-void

    .line 681
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Genesis campaign transition House/mission"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkRange([BII)V
    .locals 2
    .param p0, "b"    # [B
    .param p1, "o"    # I
    .param p2, "n"    # I

    .line 701
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 703
    return-void

    .line 702
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Genesis campaign transition ROM range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decodePalette(II)[I
    .locals 8
    .param p1, "romHouse"    # I
    .param p2, "missionZero"    # I

    .line 657
    const/16 v0, 0x40

    new-array v0, v0, [I

    .line 658
    .local v0, "out":[I
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    const/16 v2, 0x8

    const/16 v3, 0x20

    if-eqz v1, :cond_3

    .line 659
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    if-ne p2, v2, :cond_0

    iget-object v1, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->finalCommonPalette:[B

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->commonPalette:[B

    .line 660
    .local v1, "common":[B
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    mul-int/lit8 v4, v2, 0x2

    invoke-static {v1, v4}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v4

    invoke-static {v4}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->genesisColor(I)I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 661
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    iget-object v2, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->housePalettes:[[B

    aget-object v2, v2, p1

    .line 662
    .local v2, "house":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_2

    add-int/lit8 v5, v4, 0x20

    mul-int/lit8 v6, v4, 0x2

    invoke-static {v2, v6}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v6

    invoke-static {v6}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->genesisColor(I)I

    move-result v6

    aput v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 663
    .end local v1    # "common":[B
    .end local v2    # "house":[B
    .end local v4    # "i":I
    :cond_2
    goto :goto_6

    .line 664
    :cond_3
    if-ne p2, v2, :cond_4

    const v1, 0xa2dfe

    goto :goto_3

    :cond_4
    const v1, 0xa2d7e

    .line 665
    .local v1, "common":I
    :goto_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v3, :cond_5

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v1

    invoke-static {v4, v5}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v4

    invoke-static {v4}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->genesisColor(I)I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 666
    .end local v2    # "i":I
    :cond_5
    mul-int/lit16 v2, p1, 0x80

    const v4, 0xa2c3e

    add-int/2addr v2, v4

    .line 667
    .local v2, "house":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5
    if-ge v4, v3, :cond_6

    add-int/lit8 v5, v4, 0x20

    iget-object v6, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v2

    invoke-static {v6, v7}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v6

    invoke-static {v6}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->genesisColor(I)I

    move-result v6

    aput v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 669
    .end local v1    # "common":I
    .end local v2    # "house":I
    .end local v4    # "i":I
    :cond_6
    :goto_6
    return-object v0
.end method

.method private drawFallingPieces([I[ILcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;)V
    .locals 10
    .param p1, "pixels"    # [I
    .param p2, "palette"    # [I
    .param p3, "c"    # Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;
    .param p4, "slots"    # [Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;

    .line 306
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_2

    .line 307
    aget-object v1, p4, v0

    .line 308
    .local v1, "s":Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;
    iget v2, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;->piece:I

    if-gez v2, :cond_0

    move-object v4, p1

    move-object v5, p2

    goto :goto_2

    .line 309
    :cond_0
    iget-wide v2, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;->displacementFixed:J

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    long-to-int v2, v2

    .line 310
    .local v2, "dy":I
    const/4 v3, 0x0

    move v7, v3

    .local v7, "layer":I
    :goto_1
    const/4 v3, 0x2

    if-ge v7, v3, :cond_1

    .line 311
    iget-object v3, p3, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->staticPieces:[[[B

    iget v4, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;->piece:I

    aget-object v3, v3, v4

    aget-object v6, v3, v7

    add-int/lit8 v9, v2, 0x48

    const/16 v8, 0x18

    move-object v4, p1

    move-object v5, p2

    .end local p1    # "pixels":[I
    .end local p2    # "palette":[I
    .local v4, "pixels":[I
    .local v5, "palette":[I
    invoke-static/range {v4 .. v9}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->drawPieceLayerAt([I[I[BIII)V

    .line 312
    iget-object p1, p3, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->housePieces:[[[B

    iget p2, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;->piece:I

    aget-object p1, p1, p2

    aget-object v6, p1, v7

    add-int/lit8 v9, v2, 0x48

    invoke-static/range {v4 .. v9}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->drawPieceLayerAt([I[I[BIII)V

    .line 310
    add-int/lit8 v7, v7, 0x1

    move-object p1, v4

    move-object p2, v5

    goto :goto_1

    .end local v4    # "pixels":[I
    .end local v5    # "palette":[I
    .restart local p1    # "pixels":[I
    .restart local p2    # "palette":[I
    :cond_1
    move-object v4, p1

    move-object v5, p2

    .line 306
    .end local v1    # "s":Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;
    .end local v2    # "dy":I
    .end local v7    # "layer":I
    .end local p1    # "pixels":[I
    .end local p2    # "palette":[I
    .restart local v4    # "pixels":[I
    .restart local v5    # "palette":[I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move-object p1, v4

    move-object p2, v5

    goto :goto_0

    .line 315
    .end local v0    # "i":I
    .end local v4    # "pixels":[I
    .end local v5    # "palette":[I
    .restart local p1    # "pixels":[I
    .restart local p2    # "palette":[I
    :cond_2
    return-void
.end method

.method private static drawLayersAt([I[I[[BII)V
    .locals 11
    .param p0, "pixels"    # [I
    .param p1, "palette"    # [I
    .param p2, "layers"    # [[B
    .param p3, "originX"    # I
    .param p4, "originY"    # I

    .line 342
    const/4 v0, 0x0

    .local v0, "layer":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_5

    .line 343
    mul-int/lit8 v1, v0, 0x10

    .line 344
    .local v1, "paletteBase":I
    aget-object v2, p2, v0

    .line 345
    .local v2, "src":[B
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_1
    const/16 v4, 0x70

    if-ge v3, v4, :cond_4

    .line 346
    add-int v4, p4, v3

    .line 347
    .local v4, "sy":I
    if-ltz v4, :cond_3

    const/16 v5, 0xe0

    if-lt v4, v5, :cond_0

    goto :goto_4

    .line 348
    :cond_0
    mul-int/lit16 v5, v3, 0x108

    .line 349
    .local v5, "row":I
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_2
    const/16 v7, 0x108

    if-ge v6, v7, :cond_3

    .line 350
    add-int v7, v5, v6

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    .line 351
    .local v7, "ci":I
    if-nez v7, :cond_1

    goto :goto_3

    .line 352
    :cond_1
    add-int v8, p3, v6

    .line 353
    .local v8, "sx":I
    if-ltz v8, :cond_2

    const/16 v9, 0x140

    if-ge v8, v9, :cond_2

    .line 354
    mul-int/lit16 v9, v4, 0x140

    add-int/2addr v9, v8

    add-int v10, v1, v7

    aget v10, p1, v10

    aput v10, p0, v9

    .line 349
    .end local v7    # "ci":I
    .end local v8    # "sx":I
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 345
    .end local v4    # "sy":I
    .end local v5    # "row":I
    .end local v6    # "x":I
    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 342
    .end local v1    # "paletteBase":I
    .end local v2    # "src":[B
    .end local v3    # "y":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    .end local v0    # "layer":I
    :cond_5
    return-void
.end method

.method private static drawPieceLayerAt([I[I[BIII)V
    .locals 9
    .param p0, "pixels"    # [I
    .param p1, "palette"    # [I
    .param p2, "src"    # [B
    .param p3, "layer"    # I
    .param p4, "originX"    # I
    .param p5, "originY"    # I

    .line 319
    mul-int/lit8 v0, p3, 0x10

    .line 320
    .local v0, "paletteBase":I
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_0
    const/16 v2, 0x70

    if-ge v1, v2, :cond_4

    .line 321
    add-int v2, p5, v1

    .line 322
    .local v2, "sy":I
    if-ltz v2, :cond_3

    const/16 v3, 0xe0

    if-lt v2, v3, :cond_0

    goto :goto_3

    .line 323
    :cond_0
    mul-int/lit16 v3, v1, 0x108

    .line 324
    .local v3, "row":I
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_1
    const/16 v5, 0x108

    if-ge v4, v5, :cond_3

    .line 325
    add-int v5, v3, v4

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    .line 326
    .local v5, "ci":I
    if-nez v5, :cond_1

    goto :goto_2

    .line 327
    :cond_1
    add-int v6, p4, v4

    .line 328
    .local v6, "sx":I
    if-ltz v6, :cond_2

    const/16 v7, 0x140

    if-ge v6, v7, :cond_2

    mul-int/lit16 v7, v2, 0x140

    add-int/2addr v7, v6

    add-int v8, v0, v5

    aget v8, p1, v8

    aput v8, p0, v7

    .line 324
    .end local v5    # "ci":I
    .end local v6    # "sx":I
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 320
    .end local v2    # "sy":I
    .end local v3    # "row":I
    .end local v4    # "x":I
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 331
    .end local v1    # "y":I
    :cond_4
    return-void
.end method

.method private drawRemainingMap([I[ILcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;I)V
    .locals 8
    .param p1, "pixels"    # [I
    .param p2, "palette"    # [I
    .param p3, "c"    # Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;
    .param p4, "mask"    # I

    .line 296
    const/4 v0, 0x0

    move v4, v0

    .local v4, "layer":I
    :goto_0
    const/4 v0, 0x2

    if-ge v4, v0, :cond_4

    .line 297
    const/4 v0, 0x0

    .local v0, "slot":I
    :goto_1
    const/16 v7, 0xa

    if-ge v0, v7, :cond_1

    .line 298
    invoke-static {p4, v0}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->maskContainsSlot(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p3, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->staticPieces:[[[B

    aget-object v1, v1, v0

    aget-object v3, v1, v4

    const/16 v5, 0x18

    const/16 v6, 0x48

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "pixels":[I
    .end local p2    # "palette":[I
    .local v1, "pixels":[I
    .local v2, "palette":[I
    invoke-static/range {v1 .. v6}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->drawPieceLayerAt([I[I[BIII)V

    goto :goto_2

    .end local v1    # "pixels":[I
    .end local v2    # "palette":[I
    .restart local p1    # "pixels":[I
    .restart local p2    # "palette":[I
    :cond_0
    move-object v1, p1

    move-object v2, p2

    .line 297
    .end local p1    # "pixels":[I
    .end local p2    # "palette":[I
    .restart local v1    # "pixels":[I
    .restart local v2    # "palette":[I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move-object p1, v1

    move-object p2, v2

    goto :goto_1

    .end local v1    # "pixels":[I
    .end local v2    # "palette":[I
    .restart local p1    # "pixels":[I
    .restart local p2    # "palette":[I
    :cond_1
    move-object v1, p1

    move-object v2, p2

    .line 299
    .end local v0    # "slot":I
    .end local p1    # "pixels":[I
    .end local p2    # "palette":[I
    .restart local v1    # "pixels":[I
    .restart local v2    # "palette":[I
    const/4 p1, 0x0

    .local p1, "slot":I
    :goto_3
    if-ge p1, v7, :cond_3

    .line 300
    invoke-static {p4, p1}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->maskContainsSlot(II)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p3, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->housePieces:[[[B

    aget-object p2, p2, p1

    aget-object v3, p2, v4

    const/16 v5, 0x18

    const/16 v6, 0x48

    invoke-static/range {v1 .. v6}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->drawPieceLayerAt([I[I[BIII)V

    .line 299
    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 296
    .end local p1    # "slot":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    move-object p1, v1

    move-object p2, v2

    goto :goto_0

    .line 302
    .end local v1    # "pixels":[I
    .end local v2    # "palette":[I
    .end local v4    # "layer":I
    .local p1, "pixels":[I
    .restart local p2    # "palette":[I
    :cond_4
    return-void
.end method

.method private ensureCache(II)V
    .locals 12
    .param p1, "frontendHouse"    # I
    .param p2, "missionOneBased"    # I

    .line 152
    invoke-static {p1, p2}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->checkHouseMission(II)V

    .line 153
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->cache:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->cache:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;

    iget v0, v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->frontendHouse:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->cache:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;

    iget v0, v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->missionOneBased:I

    if-ne v0, p2, :cond_0

    .line 154
    return-void

    .line 156
    :cond_0
    sget-object v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->FRONTEND_TO_ROM_HOUSE:[I

    aget v0, v0, p1

    .line 157
    .local v0, "romHouse":I
    add-int/lit8 v1, p2, -0x1

    .line 158
    .local v1, "missionZero":I
    new-instance v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;-><init>(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer-IA;)V

    .line 159
    .local v2, "c":Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;
    iput p1, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->frontendHouse:I

    .line 160
    iput p2, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->missionOneBased:I

    .line 161
    iput v0, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->romHouse:I

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->selectedPiece(II)I

    move-result v4

    iput v4, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->selectedPiece:I

    .line 163
    iget v4, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->selectedPiece:I

    if-ltz v4, :cond_5

    iget v4, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->selectedPiece:I

    const/16 v5, 0x9

    if-gt v4, v5, :cond_5

    .line 165
    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->decodePalette(II)[I

    move-result-object v4

    iput-object v4, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->palette:[I

    .line 166
    const/16 v4, 0xa

    new-array v5, v4, [I

    iput-object v5, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->houseX:[I

    .line 167
    new-array v5, v4, [I

    iput-object v5, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->houseY:[I

    .line 168
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    if-eqz v5, :cond_2

    .line 169
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    invoke-virtual {v5, p1, v1}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->houseModesFor(II)[B

    move-result-object v5

    .line 170
    .local v5, "houseModes":[B
    iget-object v6, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    iget-object v6, v6, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->staticGeometry:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;

    iget-object v7, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    iget-object v7, v7, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->staticPatterns:[B

    iget-object v8, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    iget-object v8, v8, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->staticModes:[B

    invoke-direct {p0, v6, v7, v8}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->buildPieceLayersProvider(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;[B[B)[[[B

    move-result-object v6

    iput-object v6, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->staticPieces:[[[B

    .line 171
    iget-object v6, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    iget-object v6, v6, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->houseGeometry:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;

    iget-object v7, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    iget-object v7, v7, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->housePatterns:[B

    invoke-direct {p0, v6, v7, v5}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->buildPieceLayersProvider(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;[B[B)[[[B

    move-result-object v6

    iput-object v6, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->housePieces:[[[B

    .line 172
    const/4 v6, 0x0

    .local v6, "piece":I
    :goto_0
    if-ge v6, v4, :cond_1

    .line 173
    iget-object v7, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    iget-object v7, v7, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->houseGeometry:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;

    iget-object v7, v7, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;->slots:[[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;

    aget-object v7, v7, v6

    const/4 v8, 0x0

    aget-object v7, v7, v8

    .line 174
    .local v7, "first":Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    iget-object v8, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->houseX:[I

    iget v9, v7, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;->x:I

    aput v9, v8, v6

    iget-object v8, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->houseY:[I

    iget v9, v7, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;->y:I

    aput v9, v8, v6

    .line 172
    .end local v7    # "first":Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 176
    .end local v5    # "houseModes":[B
    .end local v6    # "piece":I
    :cond_1
    goto :goto_2

    .line 177
    :cond_2
    const v5, 0x95d00

    const v6, 0x96324

    const v7, 0x96158

    invoke-direct {p0, v7, v5, v6}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->buildPieceLayers(III)[[[B

    move-result-object v5

    iput-object v5, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->staticPieces:[[[B

    .line 178
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    mul-int/lit8 v6, v0, 0x4

    const v7, 0x95f6c

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be32([BI)I

    move-result v5

    mul-int/lit8 v6, v1, 0x14

    add-int/2addr v5, v6

    .line 179
    .local v5, "houseComponents":I
    const v6, 0x986e6

    const v7, 0x962dc

    invoke-direct {p0, v7, v5, v6}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->buildPieceLayers(III)[[[B

    move-result-object v6

    iput-object v6, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->housePieces:[[[B

    .line 180
    iput v5, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->houseComponentStream:I

    .line 181
    const/4 v6, 0x0

    .restart local v6    # "piece":I
    :goto_1
    if-ge v6, v4, :cond_3

    .line 182
    iget-object v8, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    mul-int/lit8 v9, v6, 0x4

    add-int/2addr v9, v7

    invoke-static {v8, v9}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be32([BI)I

    move-result v8

    .line 183
    .local v8, "descriptor":I
    iget-object v9, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->houseX:[I

    iget-object v10, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    invoke-static {v10, v8}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->s16([BI)I

    move-result v10

    aput v10, v9, v6

    iget-object v9, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->houseY:[I

    iget-object v10, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    add-int/lit8 v11, v8, 0x2

    invoke-static {v10, v11}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->s16([BI)I

    move-result v10

    aput v10, v9, v6

    .line 181
    .end local v8    # "descriptor":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 186
    .end local v5    # "houseComponents":I
    .end local v6    # "piece":I
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    if-eqz v4, :cond_4

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->buildSelectedFocusSourceProvider(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;)[B

    move-result-object v4

    goto :goto_3

    :cond_4
    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->buildSelectedFocusSource(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;)[B

    move-result-object v4

    :goto_3
    iput-object v4, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->focusSource:[B

    .line 187
    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->buildFocusPalette(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;)[I

    move-result-object v4

    iput-object v4, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->focusPalette:[I

    .line 188
    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->simulateToCompletion(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;)Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;

    move-result-object v4

    .line 189
    .local v4, "end":Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;
    iget v5, v4, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->focusStartTick:I

    iput v5, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->focusStartTick:I

    .line 190
    iget v5, v4, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->completionTick:I

    iput v5, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->completionTick:I

    .line 191
    iput-object v2, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->cache:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;

    .line 192
    const/high16 v5, -0x80000000

    iput v5, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->cachedTick:I

    .line 193
    iput-object v3, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->cachedFrame:Landroid/graphics/Bitmap;

    .line 194
    return-void

    .line 164
    .end local v4    # "end":Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid ROM selected map piece "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->selectedPiece:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static genesisColor(I)I
    .locals 8
    .param p0, "word"    # I

    .line 673
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v0, v0, 0x7

    .line 674
    .local v0, "r":I
    ushr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x7

    .line 675
    .local v1, "g":I
    ushr-int/lit8 v2, p0, 0x9

    and-int/lit8 v2, v2, 0x7

    .line 676
    .local v2, "b":I
    int-to-float v3, v0

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    const/high16 v5, 0x40e00000    # 7.0f

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v6, v1

    mul-float/2addr v6, v4

    div-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v7, v2

    mul-float/2addr v7, v4

    div-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3, v6, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    return v3
.end method

.method private static maskContainsSlot(II)Z
    .locals 2
    .param p0, "mask"    # I
    .param p1, "descriptorSlot"    # I

    .line 531
    rsub-int/lit8 v0, p1, 0x9

    const/4 v1, 0x1

    shl-int v0, v1, v0

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static overlay([[B[[B)V
    .locals 5
    .param p0, "dst"    # [[B
    .param p1, "src"    # [[B

    .line 334
    const/4 v0, 0x0

    .local v0, "layer":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 335
    aget-object v1, p0, v0

    .line 336
    .local v1, "d":[B
    aget-object v2, p1, v0

    .line 337
    .local v2, "s":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget-byte v4, v2, v3

    if-eqz v4, :cond_0

    aget-byte v4, v2, v3

    aput-byte v4, v1, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 334
    .end local v1    # "d":[B
    .end local v2    # "s":[B
    .end local v3    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    .end local v0    # "layer":I
    :cond_2
    return-void
.end method

.method private static parseGeometry([B)Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;
    .locals 17
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 706
    move-object/from16 v0, p0

    array-length v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_6

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/16 v2, 0x44

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_6

    const/4 v2, 0x2

    aget-byte v3, v0, v2

    const/16 v4, 0x50

    if-ne v3, v4, :cond_6

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    const/16 v4, 0x47

    if-ne v3, v4, :cond_6

    .line 707
    const/4 v3, 0x4

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v3

    if-ne v3, v1, :cond_6

    const/4 v3, 0x6

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_6

    .line 709
    const/16 v3, 0x8

    .local v3, "p":I
    new-array v5, v4, [[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;

    .line 710
    .local v5, "slots":[[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    const/4 v6, 0x0

    .local v6, "slot":I
    :goto_0
    if-ge v6, v4, :cond_4

    .line 711
    array-length v7, v0

    sub-int/2addr v7, v2

    if-gt v3, v7, :cond_3

    .line 712
    invoke-static {v0, v3}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v7

    .local v7, "count":I
    add-int/lit8 v3, v3, 0x2

    .line 713
    if-lt v7, v1, :cond_2

    const/16 v8, 0x20

    if-gt v7, v8, :cond_2

    array-length v8, v0

    mul-int/lit8 v9, v7, 0xc

    sub-int/2addr v8, v9

    if-gt v3, v8, :cond_2

    .line 715
    new-array v8, v7, [Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;

    aput-object v8, v5, v6

    .line 716
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_1

    .line 717
    invoke-static {v0, v3}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->s16([BI)I

    move-result v10

    .local v10, "x":I
    add-int/lit8 v9, v3, 0x2

    invoke-static {v0, v9}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->s16([BI)I

    move-result v11

    .local v11, "y":I
    add-int/lit8 v9, v3, 0x4

    invoke-static {v0, v9}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v12

    .line 718
    .local v12, "first":I
    add-int/lit8 v9, v3, 0x6

    invoke-static {v0, v9}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v13

    .local v13, "w":I
    add-int/lit8 v9, v3, 0x8

    invoke-static {v0, v9}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v14

    .local v14, "h":I
    add-int/lit8 v9, v3, 0xa

    invoke-static {v0, v9}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v15

    .local v15, "tiles":I
    add-int/lit8 v3, v3, 0xc

    .line 719
    if-lt v13, v1, :cond_0

    if-lt v14, v1, :cond_0

    if-lt v15, v1, :cond_0

    .line 720
    aget-object v16, v5, v6

    new-instance v9, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;

    invoke-direct/range {v9 .. v15}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;-><init>(IIIIII)V

    aput-object v9, v16, v8

    .line 716
    .end local v10    # "x":I
    .end local v11    # "y":I
    .end local v12    # "first":I
    .end local v13    # "w":I
    .end local v14    # "h":I
    .end local v15    # "tiles":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 719
    .restart local v10    # "x":I
    .restart local v11    # "y":I
    .restart local v12    # "first":I
    .restart local v13    # "w":I
    .restart local v14    # "h":I
    .restart local v15    # "tiles":I
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Installed campaign geometry component invalid"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 710
    .end local v7    # "count":I
    .end local v8    # "i":I
    .end local v10    # "x":I
    .end local v11    # "y":I
    .end local v12    # "first":I
    .end local v13    # "w":I
    .end local v14    # "h":I
    .end local v15    # "tiles":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 714
    .restart local v7    # "count":I
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Installed campaign geometry component count mismatch"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 711
    .end local v7    # "count":I
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Installed campaign geometry truncated"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 723
    .end local v6    # "slot":I
    :cond_4
    array-length v1, v0

    if-ne v3, v1, :cond_5

    .line 724
    new-instance v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;

    invoke-direct {v1, v5}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;-><init>([[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;)V

    return-object v1

    .line 723
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Installed campaign geometry trailing bytes"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 708
    .end local v3    # "p":I
    .end local v5    # "slots":[[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Installed campaign geometry header mismatch"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static processInstantaneous(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;)V
    .locals 10
    .param p0, "c"    # Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;
    .param p1, "s"    # Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;

    .line 558
    const/4 v0, 0x1

    .line 559
    .local v0, "again":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_c

    iget v1, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->phase:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_c

    .line 560
    const/4 v0, 0x0

    .line 561
    iget v1, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->phase:I

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 562
    iget v1, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->waitTicks:I

    if-gtz v1, :cond_0

    .line 563
    iput v3, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->phase:I

    .line 564
    const/4 v0, 0x1

    goto :goto_0

    .line 566
    :cond_1
    iget v1, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->phase:I

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    if-ne v1, v3, :cond_7

    .line 567
    iget v1, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->specialDelayTicks:I

    if-lez v1, :cond_2

    return-void

    .line 568
    :cond_2
    :goto_1
    iget v1, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->nextPiece:I

    if-ltz v1, :cond_6

    .line 569
    iget v1, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->nextPiece:I

    .line 570
    .local v1, "piece":I
    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    iget-boolean v2, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->piece7DelayStarted:Z

    if-nez v2, :cond_3

    .line 571
    iput-boolean v3, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->piece7DelayStarted:Z

    .line 572
    const/16 v2, 0x15

    iput v2, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->specialDelayTicks:I

    .line 573
    return-void

    .line 575
    :cond_3
    iget v2, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->selectedPiece:I

    if-ne v1, v2, :cond_4

    .line 576
    iget v2, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->nextPiece:I

    sub-int/2addr v2, v3

    iput v2, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->nextPiece:I

    .line 577
    goto :goto_1

    .line 579
    :cond_4
    iget-object v2, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->slots:[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;

    invoke-static {v2, v1}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->allocateObjectSlot([Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;I)I

    move-result v2

    .line 580
    .local v2, "objectSlot":I
    if-gez v2, :cond_5

    return-void

    .line 581
    :cond_5
    iget-object v7, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->slots:[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;

    aget-object v7, v7, v2

    .line 582
    .local v7, "object":Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;
    iput v1, v7, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;->piece:I

    .line 583
    iput-wide v5, v7, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;->velocityFixed:J

    .line 584
    iput-wide v5, v7, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;->displacementFixed:J

    .line 586
    iget v8, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->remainingMask:I

    rsub-int/lit8 v9, v1, 0x9

    shl-int v9, v3, v9

    not-int v9, v9

    and-int/2addr v8, v9

    iput v8, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->remainingMask:I

    .line 587
    iget v8, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->nextPiece:I

    sub-int/2addr v8, v3

    iput v8, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->nextPiece:I

    .line 589
    .end local v1    # "piece":I
    .end local v2    # "objectSlot":I
    .end local v7    # "object":Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;
    goto :goto_1

    .line 590
    :cond_6
    iput v4, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->phase:I

    .line 591
    const/16 v1, 0x33

    iput v1, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->waitTicks:I

    .line 592
    const/4 v0, 0x1

    goto :goto_0

    .line 593
    :cond_7
    iget v1, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->phase:I

    const/4 v7, 0x3

    if-ne v1, v4, :cond_8

    .line 594
    iget v1, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->waitTicks:I

    if-gtz v1, :cond_0

    .line 595
    iput v7, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->phase:I

    .line 596
    iput v3, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->waitTicks:I

    goto :goto_0

    .line 598
    :cond_8
    iget v1, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->phase:I

    const/4 v4, 0x4

    const/4 v8, 0x5

    if-ne v1, v7, :cond_a

    .line 599
    iget v1, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->waitTicks:I

    if-gtz v1, :cond_0

    .line 600
    iget-object v1, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->slots:[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;

    iget v2, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->selectedPiece:I

    invoke-static {v1, v2}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->allocateObjectSlot([Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;I)I

    move-result v1

    .line 601
    .local v1, "slot":I
    if-gez v1, :cond_9

    .line 602
    iput v3, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->waitTicks:I

    .line 603
    return-void

    .line 605
    :cond_9
    iget-object v2, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->slots:[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;

    aget-object v2, v2, v1

    .line 606
    .local v2, "selected":Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;
    iget v7, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->selectedPiece:I

    iput v7, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;->piece:I

    .line 607
    iput-wide v5, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;->velocityFixed:J

    .line 608
    iput-wide v5, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;->displacementFixed:J

    .line 609
    iput-boolean v3, v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;->paused:Z

    .line 610
    iput v4, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->phase:I

    .line 611
    iget v3, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->tick:I

    iput v3, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->focusStartTick:I

    .line 612
    iput v8, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->waitTicks:I

    .line 613
    .end local v1    # "slot":I
    .end local v2    # "selected":Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;
    goto/16 :goto_0

    .line 614
    :cond_a
    iget v1, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->phase:I

    if-ne v1, v4, :cond_b

    .line 615
    iget v1, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->waitTicks:I

    if-gtz v1, :cond_0

    .line 616
    iput v8, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->phase:I

    .line 617
    const/4 v1, 0x0

    iput v1, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->zoomFrame:I

    .line 618
    const/16 v1, 0x10

    iput v1, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->waitTicks:I

    goto/16 :goto_0

    .line 620
    :cond_b
    iget v1, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->phase:I

    if-ne v1, v8, :cond_0

    .line 621
    iget v1, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->waitTicks:I

    if-gtz v1, :cond_0

    .line 622
    iput v2, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->phase:I

    .line 623
    iget v1, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->tick:I

    iput v1, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->completionTick:I

    goto/16 :goto_0

    .line 627
    :cond_c
    return-void
.end method

.method private renderZoomFrame(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;I)Landroid/graphics/Bitmap;
    .locals 22
    .param p1, "c"    # Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;
    .param p2, "frame"    # I

    .line 492
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0xf

    move/from16 v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 493
    .end local p2    # "frame":I
    .local v2, "frame":I
    iget-object v3, v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    iget-object v3, v3, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->zoomRecords:[B

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    .line 494
    .local v3, "zoom":[B
    :goto_0
    iget-object v4, v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    const v5, 0x24b8e

    const/16 v6, 0x10

    if-eqz v4, :cond_1

    .line 495
    iget v4, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->selectedPiece:I

    mul-int/2addr v4, v6

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0xc

    goto :goto_1

    .line 496
    :cond_1
    iget v4, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->selectedPiece:I

    mul-int/lit16 v4, v4, 0xfc

    add-int/2addr v4, v5

    mul-int/lit8 v7, v2, 0xc

    add-int/2addr v4, v7

    :goto_1
    nop

    .line 497
    .local v4, "record":I
    add-int/lit8 v7, v4, 0x4

    invoke-static {v3, v7}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be32([BI)I

    move-result v7

    int-to-long v7, v7

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    .line 498
    .local v7, "step":J
    add-int/lit8 v9, v4, 0x8

    invoke-static {v3, v9}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v9

    mul-int/lit8 v9, v9, 0x8

    .line 499
    .local v9, "width":I
    add-int/lit8 v10, v4, 0xa

    invoke-static {v3, v10}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v10

    mul-int/lit8 v10, v10, 0x8

    .line 501
    .local v10, "height":I
    const/4 v11, 0x0

    .local v11, "cumulativeX":I
    const/4 v12, 0x0

    .line 502
    .local v12, "cumulativeY":I
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_2
    if-gt v13, v2, :cond_3

    .line 503
    iget-object v14, v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    if-eqz v14, :cond_2

    .line 504
    iget v14, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->selectedPiece:I

    mul-int/2addr v14, v6

    add-int/2addr v14, v13

    mul-int/lit8 v14, v14, 0xc

    goto :goto_3

    .line 505
    :cond_2
    iget v14, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->selectedPiece:I

    mul-int/lit16 v14, v14, 0xfc

    add-int/2addr v14, v5

    mul-int/lit8 v15, v13, 0xc

    add-int/2addr v14, v15

    :goto_3
    nop

    .line 506
    .local v14, "r":I
    invoke-static {v3, v14}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->s16([BI)I

    move-result v15

    add-int/2addr v11, v15

    add-int/lit8 v15, v14, 0x2

    invoke-static {v3, v15}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->s16([BI)I

    move-result v15

    add-int/2addr v12, v15

    .line 502
    .end local v14    # "r":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 508
    .end local v13    # "i":I
    :cond_3
    iget-object v5, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->houseX:[I

    iget v13, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->selectedPiece:I

    aget v5, v5, v13

    sub-int/2addr v5, v11

    .line 509
    .local v5, "originX":I
    iget-object v13, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->houseY:[I

    iget v14, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->selectedPiece:I

    aget v13, v13, v14

    add-int/lit8 v13, v13, 0x18

    add-int/2addr v13, v12

    .line 511
    .local v13, "originY":I
    const v14, 0x11800

    new-array v14, v14, [I

    .line 512
    .local v14, "pixels":[I
    const/4 v15, 0x0

    .local v15, "y":I
    :goto_4
    move/from16 p2, v6

    if-ge v15, v10, :cond_e

    .line 513
    move-wide/from16 v17, v7

    .end local v7    # "step":J
    .local v17, "step":J
    int-to-long v6, v15

    mul-long v6, v6, v17

    ushr-long v6, v6, p2

    long-to-int v6, v6

    .line 514
    .local v6, "srcY":I
    if-ltz v6, :cond_d

    const/16 v7, 0x70

    if-lt v6, v7, :cond_4

    move/from16 v19, v2

    move-object/from16 v20, v3

    goto/16 :goto_7

    .line 515
    :cond_4
    add-int v8, v13, v15

    .line 516
    .local v8, "py":I
    if-ltz v8, :cond_c

    const/16 v7, 0xe0

    if-lt v8, v7, :cond_5

    move/from16 v19, v2

    move-object/from16 v20, v3

    goto/16 :goto_7

    .line 517
    :cond_5
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_5
    if-ge v7, v9, :cond_b

    .line 518
    move/from16 v19, v2

    move-object/from16 v20, v3

    .end local v2    # "frame":I
    .end local v3    # "zoom":[B
    .local v19, "frame":I
    .local v20, "zoom":[B
    int-to-long v2, v7

    mul-long v2, v2, v17

    ushr-long v2, v2, p2

    long-to-int v2, v2

    .line 519
    .local v2, "srcX":I
    if-ltz v2, :cond_a

    const/16 v3, 0x70

    if-lt v2, v3, :cond_6

    goto :goto_6

    .line 520
    :cond_6
    iget-object v3, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->focusSource:[B

    mul-int/lit8 v16, v6, 0x70

    add-int v16, v16, v2

    aget-byte v3, v3, v16

    and-int/lit16 v3, v3, 0xff

    .line 521
    .local v3, "ci":I
    if-nez v3, :cond_7

    goto :goto_6

    .line 522
    :cond_7
    add-int v0, v5, v7

    .line 523
    .local v0, "px":I
    if-ltz v0, :cond_9

    move/from16 v16, v2

    const/16 v2, 0x140

    .end local v2    # "srcX":I
    .local v16, "srcX":I
    if-ge v0, v2, :cond_8

    mul-int/lit16 v2, v8, 0x140

    add-int/2addr v2, v0

    move/from16 v21, v0

    .end local v0    # "px":I
    .local v21, "px":I
    iget-object v0, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->focusPalette:[I

    aget v0, v0, v3

    aput v0, v14, v2

    goto :goto_6

    .end local v21    # "px":I
    .restart local v0    # "px":I
    :cond_8
    move/from16 v21, v0

    .end local v0    # "px":I
    .restart local v21    # "px":I
    goto :goto_6

    .end local v16    # "srcX":I
    .end local v21    # "px":I
    .restart local v0    # "px":I
    .restart local v2    # "srcX":I
    :cond_9
    move/from16 v21, v0

    move/from16 v16, v2

    .end local v0    # "px":I
    .end local v2    # "srcX":I
    .restart local v16    # "srcX":I
    .restart local v21    # "px":I
    goto :goto_6

    .line 519
    .end local v3    # "ci":I
    .end local v16    # "srcX":I
    .end local v21    # "px":I
    .restart local v2    # "srcX":I
    :cond_a
    move/from16 v16, v2

    .line 517
    .end local v2    # "srcX":I
    :goto_6
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v19

    move-object/from16 v3, v20

    goto :goto_5

    .end local v19    # "frame":I
    .end local v20    # "zoom":[B
    .local v2, "frame":I
    .local v3, "zoom":[B
    :cond_b
    move/from16 v19, v2

    move-object/from16 v20, v3

    .end local v2    # "frame":I
    .end local v3    # "zoom":[B
    .restart local v19    # "frame":I
    .restart local v20    # "zoom":[B
    goto :goto_7

    .line 516
    .end local v7    # "x":I
    .end local v19    # "frame":I
    .end local v20    # "zoom":[B
    .restart local v2    # "frame":I
    .restart local v3    # "zoom":[B
    :cond_c
    move/from16 v19, v2

    move-object/from16 v20, v3

    .end local v2    # "frame":I
    .end local v3    # "zoom":[B
    .restart local v19    # "frame":I
    .restart local v20    # "zoom":[B
    goto :goto_7

    .line 514
    .end local v8    # "py":I
    .end local v19    # "frame":I
    .end local v20    # "zoom":[B
    .restart local v2    # "frame":I
    .restart local v3    # "zoom":[B
    :cond_d
    move/from16 v19, v2

    move-object/from16 v20, v3

    .line 512
    .end local v2    # "frame":I
    .end local v3    # "zoom":[B
    .end local v6    # "srcY":I
    .restart local v19    # "frame":I
    .restart local v20    # "zoom":[B
    :goto_7
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v6, p2

    move-wide/from16 v7, v17

    move/from16 v2, v19

    move-object/from16 v3, v20

    goto/16 :goto_4

    .end local v17    # "step":J
    .end local v19    # "frame":I
    .end local v20    # "zoom":[B
    .restart local v2    # "frame":I
    .restart local v3    # "zoom":[B
    .local v7, "step":J
    :cond_e
    move/from16 v19, v2

    move-wide/from16 v17, v7

    .line 526
    .end local v2    # "frame":I
    .end local v7    # "step":J
    .end local v15    # "y":I
    .restart local v17    # "step":J
    .restart local v19    # "frame":I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x140

    const/16 v7, 0xe0

    invoke-static {v14, v2, v7, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static s16([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "o"    # I

    .line 685
    invoke-static {p0, p1}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v0

    .line 686
    .local v0, "v":I
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/high16 v1, 0x10000

    sub-int v1, v0, v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method private simulate(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;I)Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;
    .locals 3
    .param p1, "c"    # Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;
    .param p2, "targetTick"    # I

    .line 535
    new-instance v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;

    iget v1, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->selectedPiece:I

    invoke-direct {v0, v1}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;-><init>(I)V

    .line 536
    .local v0, "s":Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;
    invoke-static {p1, v0}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->processInstantaneous(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;)V

    .line 537
    :goto_0
    iget v1, v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->tick:I

    if-ge v1, p2, :cond_0

    iget v1, v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->phase:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 538
    invoke-static {p1, v0}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->advanceOneVBlank(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;)V

    .line 539
    invoke-static {p1, v0}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->processInstantaneous(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;)V

    goto :goto_0

    .line 541
    :cond_0
    return-object v0
.end method

.method private simulateToCompletion(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;)Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;
    .locals 4
    .param p1, "c"    # Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;

    .line 545
    new-instance v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;

    iget v1, p1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->selectedPiece:I

    invoke-direct {v0, v1}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;-><init>(I)V

    .line 546
    .local v0, "s":Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;
    invoke-static {p1, v0}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->processInstantaneous(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;)V

    .line 547
    const/4 v1, 0x0

    .line 548
    .local v1, "guard":I
    :goto_0
    iget v2, v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->phase:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    .line 549
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xfa0

    if-gt v1, v2, :cond_0

    .line 550
    invoke-static {p1, v0}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->advanceOneVBlank(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;)V

    .line 551
    invoke-static {p1, v0}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->processInstantaneous(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;)V

    goto :goto_0

    .line 549
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Campaign map transition simulation guard"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 553
    :cond_1
    return-object v0
.end method


# virtual methods
.method public focusStartTick(II)I
    .locals 1
    .param p1, "frontendHouse"    # I
    .param p2, "missionOneBased"    # I

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->ensureCache(II)V

    .line 116
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->cache:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;

    iget v0, v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->focusStartTick:I

    return v0
.end method

.method public isComplete(IIJ)Z
    .locals 2
    .param p1, "frontendHouse"    # I
    .param p2, "missionOneBased"    # I
    .param p3, "mapTick"    # J

    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->mapSequenceTicks(II)I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mapSequenceTicks(II)I
    .locals 1
    .param p1, "frontendHouse"    # I
    .param p2, "missionOneBased"    # I

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->ensureCache(II)V

    .line 110
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->cache:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;

    iget v0, v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->completionTick:I

    return v0
.end method

.method public render(IIJ)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "frontendHouse"    # I
    .param p2, "missionOneBased"    # I
    .param p3, "mapTick"    # J

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->ensureCache(II)V

    .line 130
    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 131
    .local v0, "tick":I
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->cachedFrame:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->cachedTick:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->cachedFrame:Landroid/graphics/Bitmap;

    return-object v1

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->cache:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;

    invoke-direct {p0, v1, v0}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->simulate(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;I)Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;

    move-result-object v1

    .line 135
    .local v1, "state":Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;
    iget v2, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->phase:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 136
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->cache:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->renderZoomFrame(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "result":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 137
    .end local v2    # "result":Landroid/graphics/Bitmap;
    :cond_1
    iget v2, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->phase:I

    const/4 v3, 0x5

    const/4 v4, 0x6

    if-eq v2, v3, :cond_3

    iget v2, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->phase:I

    if-ne v2, v4, :cond_2

    goto :goto_0

    .line 140
    :cond_2
    const v2, 0x11800

    new-array v2, v2, [I

    .line 141
    .local v2, "pixels":[I
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->cache:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;

    iget-object v3, v3, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;->palette:[I

    .line 142
    .local v3, "palette":[I
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->cache:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;

    iget v5, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->remainingMask:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->drawRemainingMap([I[ILcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;I)V

    .line 143
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->cache:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;

    iget-object v5, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->slots:[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->drawFallingPieces([I[ILcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;)V

    .line 144
    const/16 v4, 0xe0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v6, 0x140

    invoke-static {v2, v6, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v2, v4

    .local v4, "result":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 138
    .end local v2    # "pixels":[I
    .end local v3    # "palette":[I
    .end local v4    # "result":Landroid/graphics/Bitmap;
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->cache:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;

    iget v3, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->phase:I

    if-ne v3, v4, :cond_4

    const/16 v3, 0xf

    goto :goto_1

    :cond_4
    iget v3, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->zoomFrame:I

    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->renderZoomFrame(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 146
    .local v2, "result":Landroid/graphics/Bitmap;
    :goto_2
    iput v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->cachedTick:I

    .line 147
    iput-object v2, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->cachedFrame:Landroid/graphics/Bitmap;

    .line 148
    return-object v2
.end method

.method public selectedPiece(II)I
    .locals 5
    .param p1, "frontendHouse"    # I
    .param p2, "missionOneBased"    # I

    .line 96
    invoke-static {p1, p2}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->checkHouseMission(II)V

    .line 97
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    if-eqz v0, :cond_0

    .line 98
    mul-int/lit8 v0, p1, 0x9

    add-int/lit8 v1, p2, -0x1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    .line 99
    .local v0, "record":I
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->providerData:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;

    iget-object v1, v1, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->missionRecords:[B

    add-int/lit8 v2, v0, 0x6

    invoke-static {v1, v2}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v1

    return v1

    .line 101
    .end local v0    # "record":I
    :cond_0
    sget-object v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->FRONTEND_TO_ROM_HOUSE:[I

    aget v0, v0, p1

    .line 102
    .local v0, "romHouse":I
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    mul-int/lit8 v2, v0, 0x4

    const v3, 0x96050

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be32([BI)I

    move-result v1

    .line 103
    .local v1, "table":I
    add-int/lit8 v2, p2, -0x1

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v1

    .line 104
    .local v2, "record":I
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->rom:[B

    add-int/lit8 v4, v2, 0x6

    invoke-static {v3, v4}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->be16([BI)I

    move-result v3

    return v3
.end method
