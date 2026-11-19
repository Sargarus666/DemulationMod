.class public final Lcom/ahsim/demulation/GenesisMissionSequenceArt;
.super Ljava/lang/Object;
.source "GenesisMissionSequenceArt.java"


# static fields
.field private static final BANNER_PALETTE:I = 0xa3dc

.field private static final BANNER_PATTERN_BASE:I = 0x580

.field private static final BANNER_PATTERN_BYTES:I = 0x380

.field public static final BANNER_START_Y:I = 0xf0

.field public static final BANNER_STEP_TICKS:I = 0x3

.field public static final BANNER_STOP_Y:I = 0xb0

.field public static final BANNER_X:I = 0x80

.field public static final FRAME_CADENCE_TICKS:I = 0xb

.field public static final FRAME_COUNT:I = 0x4

.field private static final LOSS_BANNER_GFX:I = 0x9ddc

.field private static final LOSS_BANNER_LAYOUT:I = 0x9d9c

.field private static final LOSS_FRAME_DESCRIPTOR:I = 0xc3dd4

.field private static final LOSS_FRAME_TABLE:I = 0xc5044

.field private static final LOSS_PALETTE:I = 0xa6a98

.field private static final LOSS_PATTERN_TABLE:I = 0xa9b9e

.field public static final PANEL_HEIGHT:I = 0x78

.field public static final PANEL_WIDTH:I = 0x130

.field public static final PANEL_X:I = 0x8

.field public static final PANEL_Y:I = 0x28

.field private static final PATTERN_BYTES:I = 0x20

.field private static final RESOURCE_LOSS:I = 0x9

.field private static final RESOURCE_TABLE:I = 0xc7c72

.field private static final RESOURCE_WIN:I = 0xb

.field public static final SCREEN_HEIGHT:I = 0xe0

.field public static final SCREEN_WIDTH:I = 0x140

.field private static final WINDOW_MAP_BYTES:I = 0xe00

.field private static final WINDOW_MAP_COLUMNS:I = 0x40

.field private static final WINDOW_MAP_DECOMPRESSED_BYTES:I = 0x1000

.field private static final WINDOW_MAP_ROWS:I = 0x1c

.field private static final WIN_BANNER_GFX:I = 0xa07c

.field private static final WIN_BANNER_LAYOUT:I = 0x9db6

.field private static final WIN_FRAME_DESCRIPTOR:I = 0xc5054

.field private static final WIN_FRAME_TABLE:I = 0xc5dfc

.field private static final WIN_PALETTE:I = 0xa6b18

.field private static final WIN_PATTERN_TABLE:I = 0xafe8c


# instance fields
.field private final lossBanner:Landroid/graphics/Bitmap;

.field private final lossBannerFade:[Landroid/graphics/Bitmap;

.field private final lossBannerFadeOut:[Landroid/graphics/Bitmap;

.field private final lossFadeFrames:[[Landroid/graphics/Bitmap;

.field private final lossFadeOutFrames:[[Landroid/graphics/Bitmap;

.field private final lossFrames:[Landroid/graphics/Bitmap;

.field private final winBanner:Landroid/graphics/Bitmap;

.field private final winBannerFade:[Landroid/graphics/Bitmap;

.field private final winBannerFadeOut:[Landroid/graphics/Bitmap;

.field private final winFadeFrames:[[Landroid/graphics/Bitmap;

.field private final winFadeOutFrames:[[Landroid/graphics/Bitmap;

.field private final winFrames:[Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/ahsim/demulation/RomRuntimeFrontendAssets;)V
    .locals 7
    .param p1, "assets"    # Lcom/ahsim/demulation/RomRuntimeFrontendAssets;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/16 v3, 0x8

    aput v3, v1, v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    aput v5, v1, v4

    const-class v6, Landroid/graphics/Bitmap;

    invoke-static {v6, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->winFadeFrames:[[Landroid/graphics/Bitmap;

    .line 76
    new-array v1, v0, [I

    aput v3, v1, v2

    aput v5, v1, v4

    const-class v6, Landroid/graphics/Bitmap;

    invoke-static {v6, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->lossFadeFrames:[[Landroid/graphics/Bitmap;

    .line 77
    new-array v1, v3, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->winBannerFade:[Landroid/graphics/Bitmap;

    .line 78
    new-array v1, v3, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->lossBannerFade:[Landroid/graphics/Bitmap;

    .line 79
    new-array v1, v0, [I

    aput v3, v1, v2

    aput v5, v1, v4

    const-class v6, Landroid/graphics/Bitmap;

    invoke-static {v6, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->winFadeOutFrames:[[Landroid/graphics/Bitmap;

    .line 80
    new-array v0, v0, [I

    aput v3, v0, v2

    aput v5, v0, v4

    const-class v1, Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->lossFadeOutFrames:[[Landroid/graphics/Bitmap;

    .line 81
    new-array v0, v3, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->winBannerFadeOut:[Landroid/graphics/Bitmap;

    .line 82
    new-array v0, v3, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->lossBannerFadeOut:[Landroid/graphics/Bitmap;

    .line 101
    if-eqz p1, :cond_0

    .line 102
    const-string v0, "loss"

    invoke-static {p1, v0}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->decodeSequenceAssets(Lcom/ahsim/demulation/RomRuntimeFrontendAssets;Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->lossFrames:[Landroid/graphics/Bitmap;

    .line 103
    const-string v0, "win"

    invoke-static {p1, v0}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->decodeSequenceAssets(Lcom/ahsim/demulation/RomRuntimeFrontendAssets;Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->winFrames:[Landroid/graphics/Bitmap;

    .line 104
    const-string v0, "frontend/mission_sequence/banner_palette.bin"

    invoke-virtual {p1, v0}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    .line 105
    .local v0, "bannerPalette":[B
    nop

    .line 106
    const-string v1, "frontend/mission_sequence/loss_banner_patterns.bin"

    invoke-virtual {p1, v1}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v1

    .line 107
    const-string v2, "frontend/mission_sequence/loss_banner_layout.bin"

    invoke-virtual {p1, v2}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v2

    .line 105
    invoke-static {v1, v2, v0}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->decodeBannerAssets([B[B[B)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->lossBanner:Landroid/graphics/Bitmap;

    .line 108
    nop

    .line 109
    const-string v1, "frontend/mission_sequence/win_banner_patterns.bin"

    invoke-virtual {p1, v1}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v1

    .line 110
    const-string v2, "frontend/mission_sequence/win_banner_layout.bin"

    invoke-virtual {p1, v2}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v2

    .line 108
    invoke-static {v1, v2, v0}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->decodeBannerAssets([B[B[B)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->winBanner:Landroid/graphics/Bitmap;

    .line 111
    return-void

    .line 101
    .end local v0    # "bannerPalette":[B
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Frontend READY asset source is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 8
    .param p1, "rom"    # [B

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/16 v3, 0x8

    aput v3, v1, v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    aput v5, v1, v4

    const-class v6, Landroid/graphics/Bitmap;

    invoke-static {v6, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->winFadeFrames:[[Landroid/graphics/Bitmap;

    .line 76
    new-array v1, v0, [I

    aput v3, v1, v2

    aput v5, v1, v4

    const-class v6, Landroid/graphics/Bitmap;

    invoke-static {v6, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->lossFadeFrames:[[Landroid/graphics/Bitmap;

    .line 77
    new-array v1, v3, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->winBannerFade:[Landroid/graphics/Bitmap;

    .line 78
    new-array v1, v3, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->lossBannerFade:[Landroid/graphics/Bitmap;

    .line 79
    new-array v1, v0, [I

    aput v3, v1, v2

    aput v5, v1, v4

    const-class v6, Landroid/graphics/Bitmap;

    invoke-static {v6, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->winFadeOutFrames:[[Landroid/graphics/Bitmap;

    .line 80
    new-array v0, v0, [I

    aput v3, v0, v2

    aput v5, v0, v4

    const-class v1, Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->lossFadeOutFrames:[[Landroid/graphics/Bitmap;

    .line 81
    new-array v0, v3, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->winBannerFadeOut:[Landroid/graphics/Bitmap;

    .line 82
    new-array v0, v3, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->lossBannerFadeOut:[Landroid/graphics/Bitmap;

    .line 85
    if-eqz p1, :cond_0

    array-length v0, p1

    const v1, 0xc8000

    if-lt v0, v1, :cond_0

    .line 88
    const/16 v0, 0x9

    const v1, 0xa9b9e

    const v2, 0xc3dd4

    const v3, 0xa6a98

    invoke-static {p1, v0, v1, v2, v3}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->verifyResourceEntry([BIIII)V

    .line 89
    const/16 v0, 0xb

    const v4, 0xafe8c

    const v5, 0xc5054

    const v6, 0xa6b18

    invoke-static {p1, v0, v4, v5, v6}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->verifyResourceEntry([BIIII)V

    .line 90
    const v0, 0xc5044

    invoke-static {p1, v0}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be32([BI)I

    move-result v7

    invoke-static {p1, v2, v7}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->verifyFrameDescriptor([BII)V

    .line 91
    const v2, 0xc5dfc

    invoke-static {p1, v2}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be32([BI)I

    move-result v7

    invoke-static {p1, v5, v7}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->verifyFrameDescriptor([BII)V

    .line 93
    invoke-static {p1, v1, v3, v0}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->decodeSequence([BIII)[Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->lossFrames:[Landroid/graphics/Bitmap;

    .line 94
    invoke-static {p1, v4, v6, v2}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->decodeSequence([BIII)[Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->winFrames:[Landroid/graphics/Bitmap;

    .line 95
    const v0, 0x9ddc

    const v1, 0x9d9c

    invoke-static {p1, v0, v1}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->decodeBanner([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->lossBanner:Landroid/graphics/Bitmap;

    .line 96
    const v0, 0xa07c

    const v1, 0x9db6

    invoke-static {p1, v0, v1}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->decodeBanner([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->winBanner:Landroid/graphics/Bitmap;

    .line 97
    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ROM is missing or too small for Genesis mission sequences"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static be16([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 559
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->checkRange([BII)V

    .line 560
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
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 564
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->checkRange([BII)V

    .line 565
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

.method private static checkRange([BII)V
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 572
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 575
    return-void

    .line 573
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ROM mission sequence offset outside file: "

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

.method private static decodeBanner([BII)Landroid/graphics/Bitmap;
    .locals 37
    .param p0, "rom"    # [B
    .param p1, "gfxOffset"    # I
    .param p2, "layoutOffset"    # I

    .line 190
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/16 v3, 0x380

    invoke-static {v0, v1, v3}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->checkRange([BII)V

    .line 191
    const/4 v4, 0x2

    invoke-static {v0, v2, v4}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->checkRange([BII)V

    .line 192
    const v4, 0xa3dc

    invoke-static {v0, v4}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->decodePalette([BI)[I

    move-result-object v4

    .line 193
    .local v4, "palette":[I
    invoke-static {v0, v2}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be16([BI)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 194
    .local v5, "pieces":I
    if-lt v5, v6, :cond_c

    const/16 v7, 0x8

    if-gt v5, v7, :cond_c

    .line 195
    add-int/lit8 v7, v2, 0x2

    mul-int/lit8 v8, v5, 0xc

    invoke-static {v0, v7, v8}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->checkRange([BII)V

    .line 196
    const/16 v7, 0x7fff

    .local v7, "minX":I
    const/16 v8, 0x7fff

    .local v8, "minY":I
    const/16 v9, -0x8000

    .local v9, "maxX":I
    const/16 v10, -0x8000

    .line 197
    .local v10, "maxY":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v5, :cond_0

    .line 198
    add-int/lit8 v12, v2, 0x2

    mul-int/lit8 v13, v11, 0xc

    add-int/2addr v12, v13

    .line 199
    .local v12, "p":I
    add-int/lit8 v13, v12, 0x6

    invoke-static {v0, v13}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be16([BI)I

    move-result v13

    .line 200
    .local v13, "size":I
    add-int/lit8 v14, v12, 0xa

    invoke-static {v0, v14}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be16([BI)I

    move-result v14

    int-to-short v14, v14

    .line 201
    .local v14, "x":I
    add-int/lit8 v15, v12, 0x4

    invoke-static {v0, v15}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be16([BI)I

    move-result v15

    int-to-short v15, v15

    .line 202
    .local v15, "y":I
    ushr-int/lit8 v16, v13, 0xa

    and-int/lit8 v16, v16, 0x3

    add-int/lit8 v16, v16, 0x1

    .line 203
    .local v16, "wt":I
    ushr-int/lit8 v17, v13, 0x8

    and-int/lit8 v17, v17, 0x3

    add-int/lit8 v17, v17, 0x1

    .line 204
    .local v17, "ht":I
    invoke-static {v7, v14}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 205
    mul-int/lit8 v18, v16, 0x8

    move/from16 v19, v6

    add-int v6, v14, v18

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    mul-int/lit8 v6, v17, 0x8

    add-int/2addr v6, v15

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 197
    .end local v12    # "p":I
    .end local v13    # "size":I
    .end local v14    # "x":I
    .end local v15    # "y":I
    .end local v16    # "wt":I
    .end local v17    # "ht":I
    add-int/lit8 v11, v11, 0x1

    move/from16 v6, v19

    goto :goto_0

    :cond_0
    move/from16 v19, v6

    .line 207
    .end local v11    # "i":I
    sub-int v6, v9, v7

    .local v6, "width":I
    sub-int v11, v10, v8

    .line 208
    .local v11, "height":I
    mul-int v12, v6, v11

    new-array v12, v12, [I

    .line 209
    .local v12, "pixels":[I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v5, :cond_b

    .line 210
    add-int/lit8 v14, v2, 0x2

    mul-int/lit8 v15, v13, 0xc

    add-int/2addr v14, v15

    .line 211
    .local v14, "p":I
    add-int/lit8 v15, v14, 0x6

    invoke-static {v0, v15}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be16([BI)I

    move-result v15

    .line 212
    .local v15, "size":I
    add-int/lit8 v3, v14, 0x8

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be16([BI)I

    move-result v3

    .line 213
    .local v3, "attr":I
    add-int/lit8 v1, v14, 0xa

    invoke-static {v0, v1}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be16([BI)I

    move-result v1

    int-to-short v1, v1

    sub-int/2addr v1, v7

    .line 214
    .local v1, "x0":I
    move/from16 v17, v1

    .end local v1    # "x0":I
    .local v17, "x0":I
    add-int/lit8 v1, v14, 0x4

    invoke-static {v0, v1}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be16([BI)I

    move-result v1

    int-to-short v1, v1

    sub-int/2addr v1, v8

    .line 215
    .local v1, "y0":I
    ushr-int/lit8 v18, v15, 0xa

    and-int/lit8 v18, v18, 0x3

    add-int/lit8 v18, v18, 0x1

    .line 216
    .local v18, "wt":I
    ushr-int/lit8 v20, v15, 0x8

    and-int/lit8 v20, v20, 0x3

    add-int/lit8 v20, v20, 0x1

    .line 217
    .local v20, "ht":I
    and-int/lit16 v0, v3, 0x7ff

    .line 218
    .local v0, "first":I
    move/from16 v21, v0

    .end local v0    # "first":I
    .local v21, "first":I
    and-int/lit16 v0, v3, 0x800

    const/16 v22, 0x0

    if-eqz v0, :cond_1

    move/from16 v0, v19

    goto :goto_2

    :cond_1
    move/from16 v0, v22

    .local v0, "hf":Z
    :goto_2
    move/from16 v23, v0

    .end local v0    # "hf":Z
    .local v23, "hf":Z
    and-int/lit16 v0, v3, 0x1000

    if-eqz v0, :cond_2

    move/from16 v22, v19

    .line 219
    .local v22, "vf":Z
    :cond_2
    ushr-int/lit8 v0, v3, 0xd

    and-int/lit8 v0, v0, 0x3

    .line 220
    .local v0, "pl":I
    move/from16 v24, v0

    .end local v0    # "pl":I
    .local v24, "pl":I
    mul-int/lit8 v0, v18, 0x8

    .local v0, "sw":I
    move/from16 v25, v1

    .end local v1    # "y0":I
    .local v25, "y0":I
    mul-int/lit8 v1, v20, 0x8

    .line 224
    .local v1, "sh":I
    const/16 v26, 0x0

    move/from16 v2, v26

    .local v2, "dx":I
    :goto_3
    if-ge v2, v0, :cond_a

    const/16 v26, 0x0

    move/from16 v27, v0

    move/from16 v0, v26

    .local v0, "dy":I
    .local v27, "sw":I
    :goto_4
    if-ge v0, v1, :cond_9

    .line 225
    if-eqz v23, :cond_3

    add-int/lit8 v26, v27, -0x1

    sub-int v26, v26, v2

    goto :goto_5

    :cond_3
    move/from16 v26, v2

    .line 226
    .local v26, "sx":I
    :goto_5
    if-eqz v22, :cond_4

    add-int/lit8 v28, v1, -0x1

    sub-int v28, v28, v0

    goto :goto_6

    :cond_4
    move/from16 v28, v0

    .line 227
    .local v28, "sy":I
    :goto_6
    ushr-int/lit8 v29, v26, 0x3

    mul-int v29, v29, v20

    add-int v29, v21, v29

    ushr-int/lit8 v30, v28, 0x3

    move/from16 v31, v0

    .end local v0    # "dy":I
    .local v31, "dy":I
    add-int v0, v29, v30

    .line 228
    .local v0, "pattern":I
    move/from16 v29, v1

    .end local v1    # "sh":I
    .local v29, "sh":I
    add-int/lit16 v1, v0, -0x580

    .line 229
    .local v1, "localPattern":I
    if-ltz v1, :cond_8

    mul-int/lit8 v30, v1, 0x20

    move/from16 v32, v0

    .end local v0    # "pattern":I
    .local v32, "pattern":I
    add-int/lit8 v0, v30, 0x1f

    move/from16 v30, v1

    const/16 v1, 0x380

    .end local v1    # "localPattern":I
    .local v30, "localPattern":I
    if-lt v0, v1, :cond_5

    goto :goto_8

    .line 230
    :cond_5
    and-int/lit8 v0, v26, 0x7

    .local v0, "px":I
    and-int/lit8 v16, v28, 0x7

    .line 231
    .local v16, "py":I
    mul-int/lit8 v33, v30, 0x20

    add-int v33, p1, v33

    mul-int/lit8 v34, v16, 0x4

    add-int v33, v33, v34

    ushr-int/lit8 v34, v0, 0x1

    add-int v33, v33, v34

    aget-byte v1, p0, v33

    and-int/lit16 v1, v1, 0xff

    .line 232
    .local v1, "packed":I
    and-int/lit8 v33, v0, 0x1

    if-nez v33, :cond_6

    ushr-int/lit8 v33, v1, 0x4

    goto :goto_7

    :cond_6
    and-int/lit8 v33, v1, 0xf

    .line 233
    .local v33, "ci":I
    :goto_7
    if-nez v33, :cond_7

    goto :goto_8

    .line 234
    :cond_7
    add-int v35, v25, v31

    mul-int v35, v35, v6

    add-int v35, v35, v17

    add-int v35, v35, v2

    aget v36, v4, v33

    aput v36, v12, v35

    goto :goto_8

    .line 229
    .end local v16    # "py":I
    .end local v30    # "localPattern":I
    .end local v32    # "pattern":I
    .end local v33    # "ci":I
    .local v0, "pattern":I
    .local v1, "localPattern":I
    :cond_8
    move/from16 v32, v0

    move/from16 v30, v1

    .line 224
    .end local v0    # "pattern":I
    .end local v1    # "localPattern":I
    .end local v26    # "sx":I
    .end local v28    # "sy":I
    :goto_8
    add-int/lit8 v0, v31, 0x1

    move/from16 v1, v29

    .end local v31    # "dy":I
    .local v0, "dy":I
    goto :goto_4

    .end local v29    # "sh":I
    .local v1, "sh":I
    :cond_9
    move/from16 v31, v0

    move/from16 v29, v1

    .end local v0    # "dy":I
    .end local v1    # "sh":I
    .restart local v29    # "sh":I
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v27

    goto :goto_3

    .end local v27    # "sw":I
    .end local v29    # "sh":I
    .local v0, "sw":I
    .restart local v1    # "sh":I
    :cond_a
    move/from16 v27, v0

    move/from16 v29, v1

    .line 209
    .end local v0    # "sw":I
    .end local v1    # "sh":I
    .end local v2    # "dx":I
    .end local v3    # "attr":I
    .end local v14    # "p":I
    .end local v15    # "size":I
    .end local v17    # "x0":I
    .end local v18    # "wt":I
    .end local v20    # "ht":I
    .end local v21    # "first":I
    .end local v22    # "vf":Z
    .end local v23    # "hf":Z
    .end local v24    # "pl":I
    .end local v25    # "y0":I
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/16 v3, 0x380

    goto/16 :goto_1

    .line 237
    .end local v13    # "i":I
    :cond_b
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v11, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 238
    .local v20, "b":Landroid/graphics/Bitmap;
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v22, 0x0

    move/from16 v26, v6

    move/from16 v23, v6

    move/from16 v27, v11

    move-object/from16 v21, v12

    .end local v6    # "width":I
    .end local v11    # "height":I
    .end local v12    # "pixels":[I
    .local v21, "pixels":[I
    .local v23, "width":I
    .local v27, "height":I
    invoke-virtual/range {v20 .. v27}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 239
    return-object v20

    .line 194
    .end local v7    # "minX":I
    .end local v8    # "minY":I
    .end local v9    # "maxX":I
    .end local v10    # "maxY":I
    .end local v20    # "b":Landroid/graphics/Bitmap;
    .end local v21    # "pixels":[I
    .end local v23    # "width":I
    .end local v27    # "height":I
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected mission banner layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodeBannerAssets([B[B[B)Landroid/graphics/Bitmap;
    .locals 36
    .param p0, "patterns"    # [B
    .param p1, "layout"    # [B
    .param p2, "paletteBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_d

    move-object/from16 v2, p2

    array-length v4, v2

    const/16 v5, 0x80

    if-ne v4, v5, :cond_d

    .line 258
    invoke-static {v2}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->decodePaletteBytes([B)[I

    move-result-object v4

    .line 259
    .local v4, "palette":[I
    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be16([BI)I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 260
    .local v6, "pieces":I
    if-lt v6, v7, :cond_c

    const/16 v8, 0x8

    if-gt v6, v8, :cond_c

    array-length v8, v1

    mul-int/lit8 v9, v6, 0xc

    add-int/2addr v9, v3

    if-ne v8, v9, :cond_c

    .line 262
    const/16 v8, 0x7fff

    .local v8, "minX":I
    const/16 v9, 0x7fff

    .local v9, "minY":I
    const/16 v10, -0x8000

    .local v10, "maxX":I
    const/16 v11, -0x8000

    .line 263
    .local v11, "maxY":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v6, :cond_0

    .line 264
    mul-int/lit8 v13, v12, 0xc

    add-int/2addr v13, v3

    .line 265
    .local v13, "p":I
    add-int/lit8 v14, v13, 0x6

    invoke-static {v1, v14}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be16([BI)I

    move-result v14

    .line 266
    .local v14, "size":I
    add-int/lit8 v15, v13, 0xa

    invoke-static {v1, v15}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be16([BI)I

    move-result v15

    int-to-short v15, v15

    .line 267
    .local v15, "x":I
    move/from16 v16, v3

    add-int/lit8 v3, v13, 0x4

    invoke-static {v1, v3}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be16([BI)I

    move-result v3

    int-to-short v3, v3

    .line 268
    .local v3, "y":I
    ushr-int/lit8 v17, v14, 0xa

    and-int/lit8 v17, v17, 0x3

    add-int/lit8 v17, v17, 0x1

    .local v17, "wt":I
    ushr-int/lit8 v18, v14, 0x8

    and-int/lit8 v18, v18, 0x3

    add-int/lit8 v18, v18, 0x1

    .line 269
    .local v18, "ht":I
    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 270
    mul-int/lit8 v19, v17, 0x8

    add-int v5, v15, v19

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    mul-int/lit8 v5, v18, 0x8

    add-int/2addr v5, v3

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 263
    .end local v3    # "y":I
    .end local v13    # "p":I
    .end local v14    # "size":I
    .end local v15    # "x":I
    .end local v17    # "wt":I
    .end local v18    # "ht":I
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v16

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move/from16 v16, v3

    .line 272
    .end local v12    # "i":I
    sub-int v3, v10, v8

    .local v3, "width":I
    sub-int v5, v11, v9

    .line 273
    .local v5, "height":I
    mul-int v12, v3, v5

    new-array v12, v12, [I

    .line 274
    .local v12, "pixels":[I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v6, :cond_b

    .line 275
    mul-int/lit8 v14, v13, 0xc

    add-int/lit8 v14, v14, 0x2

    .line 276
    .local v14, "p":I
    add-int/lit8 v15, v14, 0x6

    invoke-static {v1, v15}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be16([BI)I

    move-result v15

    .local v15, "size":I
    move/from16 v17, v7

    add-int/lit8 v7, v14, 0x8

    invoke-static {v1, v7}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be16([BI)I

    move-result v7

    .line 277
    .local v7, "attr":I
    add-int/lit8 v2, v14, 0xa

    invoke-static {v1, v2}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be16([BI)I

    move-result v2

    int-to-short v2, v2

    sub-int/2addr v2, v8

    .local v2, "x0":I
    move/from16 v18, v2

    .end local v2    # "x0":I
    .local v18, "x0":I
    add-int/lit8 v2, v14, 0x4

    invoke-static {v1, v2}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be16([BI)I

    move-result v2

    int-to-short v2, v2

    sub-int/2addr v2, v9

    .line 278
    .local v2, "y0":I
    ushr-int/lit8 v19, v15, 0xa

    and-int/lit8 v19, v19, 0x3

    add-int/lit8 v19, v19, 0x1

    .local v19, "wt":I
    ushr-int/lit8 v20, v15, 0x8

    and-int/lit8 v20, v20, 0x3

    add-int/lit8 v20, v20, 0x1

    .line 279
    .local v20, "ht":I
    and-int/lit16 v1, v7, 0x7ff

    .line 280
    .local v1, "first":I
    move/from16 v21, v1

    .end local v1    # "first":I
    .local v21, "first":I
    and-int/lit16 v1, v7, 0x800

    if-eqz v1, :cond_1

    move/from16 v1, v17

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .local v1, "hf":Z
    :goto_2
    move/from16 v22, v1

    .end local v1    # "hf":Z
    .local v22, "hf":Z
    and-int/lit16 v1, v7, 0x1000

    if-eqz v1, :cond_2

    move/from16 v1, v17

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    .line 281
    .local v1, "vf":Z
    :goto_3
    ushr-int/lit8 v23, v7, 0xd

    and-int/lit8 v23, v23, 0x3

    .local v23, "pl":I
    move/from16 v24, v1

    .end local v1    # "vf":Z
    .local v24, "vf":Z
    mul-int/lit8 v1, v19, 0x8

    .local v1, "sw":I
    move/from16 v25, v2

    .end local v2    # "y0":I
    .local v25, "y0":I
    mul-int/lit8 v2, v20, 0x8

    .line 284
    .local v2, "sh":I
    const/16 v26, 0x0

    move-object/from16 v28, v4

    move/from16 v4, v26

    .local v4, "dx":I
    .local v28, "palette":[I
    :goto_4
    if-ge v4, v1, :cond_a

    const/16 v26, 0x0

    move/from16 v27, v1

    move/from16 v1, v26

    .local v1, "dy":I
    .local v27, "sw":I
    :goto_5
    if-ge v1, v2, :cond_9

    .line 285
    if-eqz v22, :cond_3

    add-int/lit8 v26, v27, -0x1

    sub-int v26, v26, v4

    goto :goto_6

    :cond_3
    move/from16 v26, v4

    .local v26, "sx":I
    :goto_6
    if-eqz v24, :cond_4

    add-int/lit8 v29, v2, -0x1

    sub-int v29, v29, v1

    goto :goto_7

    :cond_4
    move/from16 v29, v1

    .line 286
    .local v29, "sy":I
    :goto_7
    ushr-int/lit8 v30, v26, 0x3

    mul-int v30, v30, v20

    add-int v30, v21, v30

    ushr-int/lit8 v31, v29, 0x3

    move/from16 v32, v1

    .end local v1    # "dy":I
    .local v32, "dy":I
    add-int v1, v30, v31

    add-int/lit16 v1, v1, -0x580

    .line 287
    .local v1, "localPattern":I
    if-ltz v1, :cond_7

    mul-int/lit8 v30, v1, 0x20

    move/from16 v31, v1

    .end local v1    # "localPattern":I
    .local v31, "localPattern":I
    add-int/lit8 v1, v30, 0x1f

    move/from16 v30, v2

    .end local v2    # "sh":I
    .local v30, "sh":I
    array-length v2, v0

    if-lt v1, v2, :cond_5

    goto :goto_9

    .line 288
    :cond_5
    and-int/lit8 v1, v26, 0x7

    .local v1, "px":I
    and-int/lit8 v2, v29, 0x7

    .line 289
    .local v2, "py":I
    mul-int/lit8 v33, v31, 0x20

    mul-int/lit8 v34, v2, 0x4

    add-int v33, v33, v34

    ushr-int/lit8 v34, v1, 0x1

    add-int v33, v33, v34

    aget-byte v0, p0, v33

    and-int/lit16 v0, v0, 0xff

    .line 290
    .local v0, "packed":I
    and-int/lit8 v33, v1, 0x1

    if-nez v33, :cond_6

    ushr-int/lit8 v33, v0, 0x4

    goto :goto_8

    :cond_6
    and-int/lit8 v33, v0, 0xf

    .line 291
    .local v33, "ci":I
    :goto_8
    if-eqz v33, :cond_8

    add-int v34, v25, v32

    mul-int v34, v34, v3

    add-int v34, v34, v18

    add-int v34, v34, v4

    aget v35, v28, v33

    aput v35, v12, v34

    goto :goto_9

    .line 287
    .end local v0    # "packed":I
    .end local v30    # "sh":I
    .end local v31    # "localPattern":I
    .end local v33    # "ci":I
    .local v1, "localPattern":I
    .local v2, "sh":I
    :cond_7
    move/from16 v31, v1

    move/from16 v30, v2

    .line 284
    .end local v1    # "localPattern":I
    .end local v2    # "sh":I
    .end local v26    # "sx":I
    .end local v29    # "sy":I
    .restart local v30    # "sh":I
    :cond_8
    :goto_9
    add-int/lit8 v1, v32, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v30

    .end local v32    # "dy":I
    .local v1, "dy":I
    goto :goto_5

    .end local v30    # "sh":I
    .restart local v2    # "sh":I
    :cond_9
    move/from16 v32, v1

    move/from16 v30, v2

    .end local v1    # "dy":I
    .end local v2    # "sh":I
    .restart local v30    # "sh":I
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    goto :goto_4

    .end local v27    # "sw":I
    .end local v30    # "sh":I
    .local v1, "sw":I
    .restart local v2    # "sh":I
    :cond_a
    move/from16 v27, v1

    move/from16 v30, v2

    .line 274
    .end local v1    # "sw":I
    .end local v2    # "sh":I
    .end local v4    # "dx":I
    .end local v7    # "attr":I
    .end local v14    # "p":I
    .end local v15    # "size":I
    .end local v18    # "x0":I
    .end local v19    # "wt":I
    .end local v20    # "ht":I
    .end local v21    # "first":I
    .end local v22    # "hf":Z
    .end local v23    # "pl":I
    .end local v24    # "vf":Z
    .end local v25    # "y0":I
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v7, v17

    move-object/from16 v4, v28

    goto/16 :goto_1

    .line 294
    .end local v13    # "i":I
    .end local v28    # "palette":[I
    .local v4, "palette":[I
    :cond_b
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 295
    .local v20, "b":Landroid/graphics/Bitmap;
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v22, 0x0

    move/from16 v26, v3

    move/from16 v23, v3

    move/from16 v27, v5

    move-object/from16 v21, v12

    .end local v3    # "width":I
    .end local v5    # "height":I
    .end local v12    # "pixels":[I
    .local v21, "pixels":[I
    .local v23, "width":I
    .local v27, "height":I
    invoke-virtual/range {v20 .. v27}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 296
    return-object v20

    .line 260
    .end local v8    # "minX":I
    .end local v9    # "minY":I
    .end local v10    # "maxX":I
    .end local v11    # "maxY":I
    .end local v20    # "b":Landroid/graphics/Bitmap;
    .end local v21    # "pixels":[I
    .end local v23    # "width":I
    .end local v27    # "height":I
    :cond_c
    move-object/from16 v28, v4

    .line 261
    .end local v4    # "palette":[I
    .restart local v28    # "palette":[I
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Installed mission banner layout is invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    .end local v6    # "pieces":I
    .end local v28    # "palette":[I
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Installed mission banner metadata is incomplete"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodePalette([BI)[I
    .locals 11
    .param p0, "rom"    # [B
    .param p1, "offset"    # I

    .line 537
    const/16 v0, 0x80

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->checkRange([BII)V

    .line 538
    const/16 v0, 0x40

    new-array v0, v0, [I

    .line 539
    .local v0, "palette":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 540
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p1

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be16([BI)I

    move-result v2

    .line 541
    .local v2, "word":I
    ushr-int/lit8 v3, v2, 0x1

    and-int/lit8 v3, v3, 0x7

    .line 542
    .local v3, "r3":I
    ushr-int/lit8 v4, v2, 0x5

    and-int/lit8 v4, v4, 0x7

    .line 543
    .local v4, "g3":I
    ushr-int/lit8 v5, v2, 0x9

    and-int/lit8 v5, v5, 0x7

    .line 544
    .local v5, "b3":I
    int-to-float v6, v3

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v6, v7

    const/high16 v8, 0x40e00000    # 7.0f

    div-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 545
    .local v6, "r":I
    int-to-float v9, v4

    mul-float/2addr v9, v7

    div-float/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 546
    .local v9, "g":I
    int-to-float v10, v5

    mul-float/2addr v10, v7

    div-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 547
    .local v7, "b":I
    invoke-static {v6, v9, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    aput v8, v0, v1

    .line 539
    .end local v2    # "word":I
    .end local v3    # "r3":I
    .end local v4    # "g3":I
    .end local v5    # "b3":I
    .end local v6    # "r":I
    .end local v7    # "b":I
    .end local v9    # "g":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 549
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static decodePaletteBytes([B)[I
    .locals 11
    .param p0, "data"    # [B

    .line 342
    array-length v0, p0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    .line 343
    const/16 v0, 0x40

    new-array v0, v0, [I

    .line 344
    .local v0, "palette":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 345
    mul-int/lit8 v2, v1, 0x2

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be16([BI)I

    move-result v2

    .line 346
    .local v2, "word":I
    ushr-int/lit8 v3, v2, 0x1

    and-int/lit8 v3, v3, 0x7

    .local v3, "r3":I
    ushr-int/lit8 v4, v2, 0x5

    and-int/lit8 v4, v4, 0x7

    .local v4, "g3":I
    ushr-int/lit8 v5, v2, 0x9

    and-int/lit8 v5, v5, 0x7

    .line 347
    .local v5, "b3":I
    int-to-float v6, v3

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v6, v7

    const/high16 v8, 0x40e00000    # 7.0f

    div-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v9, v4

    mul-float/2addr v9, v7

    div-float/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v10, v5

    mul-float/2addr v10, v7

    div-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v6, v9, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    aput v6, v0, v1

    .line 344
    .end local v2    # "word":I
    .end local v3    # "r3":I
    .end local v4    # "g3":I
    .end local v5    # "b3":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 342
    .end local v0    # "palette":[I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Genesis palette asset must be 128 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodeSequence([BIII)[Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "rom"    # [B
    .param p1, "patternTable"    # I
    .param p2, "paletteOffset"    # I
    .param p3, "framePointerTable"    # I

    .line 372
    invoke-static {p0, p1}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->loadPatternChunksPersistentScratch([BI)[B

    move-result-object v0

    .line 373
    .local v0, "patterns":[B
    invoke-static {p0, p2}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->decodePalette([BI)[I

    move-result-object v1

    .line 374
    .local v1, "palette":[I
    const/4 v2, 0x4

    new-array v3, v2, [Landroid/graphics/Bitmap;

    .line 375
    .local v3, "frames":[Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .local v4, "frame":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 376
    mul-int/lit8 v5, v4, 0x4

    add-int/2addr v5, p3

    invoke-static {p0, v5}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be32([BI)I

    move-result v5

    .line 377
    .local v5, "source":I
    const/16 v6, 0x1000

    new-array v7, v6, [B

    .line 378
    .local v7, "mapScratch":[B
    invoke-static {p0, v5, v7}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->decompressInto([BI[B)I

    move-result v8

    .line 379
    .local v8, "produced":I
    if-ne v8, v6, :cond_0

    .line 383
    invoke-static {v0, v1, v7}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->renderWindow([B[I[B)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v3, v4

    .line 375
    .end local v5    # "source":I
    .end local v7    # "mapScratch":[B
    .end local v8    # "produced":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 380
    .restart local v5    # "source":I
    .restart local v7    # "mapScratch":[B
    .restart local v8    # "produced":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 381
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v6, v9}, [Ljava/lang/Object;

    move-result-object v6

    .line 380
    const-string v9, "Genesis sequence frame %d decompressed to %d bytes"

    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 385
    .end local v4    # "frame":I
    .end local v5    # "source":I
    .end local v7    # "mapScratch":[B
    .end local v8    # "produced":I
    :cond_1
    return-object v3
.end method

.method private static decodeSequenceAssets(Lcom/ahsim/demulation/RomRuntimeFrontendAssets;Ljava/lang/String;)[Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "assets"    # Lcom/ahsim/demulation/RomRuntimeFrontendAssets;
    .param p1, "stem"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frontend/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_patterns.bin"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    .line 244
    .local v0, "patterns":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_palette.bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->decodePaletteBytes([B)[I

    move-result-object v2

    .line 245
    .local v2, "palette":[I
    const/4 v3, 0x4

    new-array v4, v3, [Landroid/graphics/Bitmap;

    .line 246
    .local v4, "frames":[Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .local v5, "frame":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 247
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_frame"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".bin"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v6

    .line 248
    .local v6, "map":[B
    array-length v7, v6

    const/16 v8, 0x1000

    if-ne v7, v8, :cond_0

    .line 250
    invoke-static {v0, v2, v6}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->renderWindow([B[I[B)Landroid/graphics/Bitmap;

    move-result-object v7

    aput-object v7, v4, v5

    .line 246
    .end local v6    # "map":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 249
    .restart local v6    # "map":[B
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Installed mission sequence frame size mismatch: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "#"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    .end local v5    # "frame":I
    .end local v6    # "map":[B
    :cond_1
    return-object v4
.end method

.method private static decompressInto([BI[B)I
    .locals 9
    .param p0, "rom"    # [B
    .param p1, "source"    # I
    .param p2, "out"    # [B

    .line 438
    move v0, p1

    .line 439
    .local v0, "src":I
    const/4 v1, 0x0

    .line 440
    .local v1, "dst":I
    const/4 v2, 0x0

    .line 442
    .local v2, "guard":I
    :goto_0
    const/4 v3, 0x1

    add-int/2addr v2, v3

    const v4, 0x186a0

    if-gt v2, v4, :cond_c

    .line 445
    invoke-static {p0, v0, v3}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->checkRange([BII)V

    .line 446
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "src":I
    .local v4, "src":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 447
    .local v0, "c":I
    const/16 v5, 0x80

    if-ne v0, v5, :cond_0

    .line 497
    .end local v0    # "c":I
    return v1

    .line 449
    .restart local v0    # "c":I
    :cond_0
    const/16 v5, 0x81

    if-lt v0, v5, :cond_1

    const/16 v5, 0xbf

    if-gt v0, v5, :cond_1

    .line 450
    and-int/lit8 v3, v0, 0x3f

    .line 451
    .local v3, "n":I
    invoke-static {p0, v4, v3}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->checkRange([BII)V

    .line 452
    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->ensureOutput([BII)V

    .line 453
    invoke-static {p0, v4, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 454
    add-int/2addr v4, v3

    .line 455
    add-int/2addr v1, v3

    .line 456
    .end local v3    # "n":I
    move v0, v4

    goto/16 :goto_5

    :cond_1
    const/16 v5, 0x7f

    const/4 v6, 0x3

    if-gt v0, v5, :cond_4

    .line 457
    invoke-static {p0, v4, v3}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->checkRange([BII)V

    .line 458
    shl-int/lit8 v3, v0, 0x8

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "src":I
    .local v5, "src":I
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xfff

    .line 459
    .local v3, "back":I
    ushr-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v6

    .line 460
    .local v4, "n":I
    if-lez v3, :cond_3

    if-gt v3, v1, :cond_3

    .line 463
    invoke-static {p2, v1, v4}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->ensureOutput([BII)V

    .line 464
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_2

    .line 465
    sub-int v7, v1, v3

    aget-byte v7, p2, v7

    aput-byte v7, p2, v1

    .line 466
    add-int/lit8 v1, v1, 0x1

    .line 464
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 468
    .end local v3    # "back":I
    .end local v4    # "n":I
    .end local v6    # "i":I
    :cond_2
    move v0, v5

    goto/16 :goto_5

    .line 461
    .restart local v3    # "back":I
    .restart local v4    # "n":I
    :cond_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Genesis mission sequence short-copy range error"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 468
    .end local v3    # "back":I
    .end local v5    # "src":I
    .local v4, "src":I
    :cond_4
    const/16 v3, 0xfd

    if-gt v0, v3, :cond_7

    .line 469
    const/4 v3, 0x2

    invoke-static {p0, v4, v3}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->checkRange([BII)V

    .line 470
    and-int/lit8 v3, v0, 0x3f

    add-int/2addr v3, v6

    .line 471
    .local v3, "n":I
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    .line 472
    .local v5, "from":I
    add-int/lit8 v4, v4, 0x2

    .line 473
    if-ltz v5, :cond_6

    if-ge v5, v1, :cond_6

    .line 476
    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->ensureOutput([BII)V

    .line 477
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    if-ge v6, v3, :cond_5

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "dst":I
    .local v7, "dst":I
    add-int v8, v5, v6

    aget-byte v8, p2, v8

    aput-byte v8, p2, v1

    add-int/lit8 v6, v6, 0x1

    move v1, v7

    goto :goto_2

    .line 478
    .end local v3    # "n":I
    .end local v5    # "from":I
    .end local v6    # "i":I
    .end local v7    # "dst":I
    .restart local v1    # "dst":I
    :cond_5
    move v0, v4

    goto/16 :goto_5

    .line 474
    .restart local v3    # "n":I
    .restart local v5    # "from":I
    :cond_6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Genesis mission sequence absolute-copy range error"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 478
    .end local v3    # "n":I
    .end local v5    # "from":I
    :cond_7
    const/16 v3, 0xfe

    if-ne v0, v3, :cond_9

    .line 479
    invoke-static {p0, v4, v6}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->checkRange([BII)V

    .line 480
    aget-byte v3, p0, v4

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    .line 481
    .restart local v3    # "n":I
    add-int/lit8 v5, v4, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .line 482
    .local v5, "value":I
    add-int/lit8 v4, v4, 0x3

    .line 483
    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->ensureOutput([BII)V

    .line 484
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    if-ge v6, v3, :cond_8

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "dst":I
    .restart local v7    # "dst":I
    int-to-byte v8, v5

    aput-byte v8, p2, v1

    add-int/lit8 v6, v6, 0x1

    move v1, v7

    goto :goto_3

    .line 485
    .end local v3    # "n":I
    .end local v5    # "value":I
    .end local v6    # "i":I
    .end local v7    # "dst":I
    .restart local v1    # "dst":I
    :cond_8
    move v0, v4

    goto :goto_5

    .line 486
    :cond_9
    const/4 v3, 0x4

    invoke-static {p0, v4, v3}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->checkRange([BII)V

    .line 487
    aget-byte v3, p0, v4

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    .line 488
    .restart local v3    # "n":I
    add-int/lit8 v5, v4, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v4, 0x3

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    .line 489
    .local v5, "from":I
    add-int/lit8 v4, v4, 0x4

    .line 490
    if-ltz v5, :cond_b

    if-ge v5, v1, :cond_b

    .line 493
    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->ensureOutput([BII)V

    .line 494
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    if-ge v6, v3, :cond_a

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "dst":I
    .restart local v7    # "dst":I
    add-int v8, v5, v6

    aget-byte v8, p2, v8

    aput-byte v8, p2, v1

    add-int/lit8 v6, v6, 0x1

    move v1, v7

    goto :goto_4

    .end local v7    # "dst":I
    .restart local v1    # "dst":I
    :cond_a
    move v0, v4

    .line 496
    .end local v3    # "n":I
    .end local v4    # "src":I
    .end local v5    # "from":I
    .end local v6    # "i":I
    .local v0, "src":I
    :goto_5
    goto/16 :goto_0

    .line 491
    .local v0, "c":I
    .restart local v3    # "n":I
    .restart local v4    # "src":I
    .restart local v5    # "from":I
    :cond_b
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Genesis mission sequence long-copy range error"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 443
    .end local v3    # "n":I
    .end local v4    # "src":I
    .end local v5    # "from":I
    .local v0, "src":I
    :cond_c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Genesis mission sequence decompressor guard"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static ensureOutput([BII)V
    .locals 2
    .param p0, "out"    # [B
    .param p1, "dst"    # I
    .param p2, "length"    # I

    .line 553
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 556
    return-void

    .line 554
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Genesis mission sequence decompressor output overrun"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static fadeGenesisBitmapFromBlack(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "step"    # I

    .line 300
    const/4 v0, 0x7

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 301
    .local v2, "s":I
    if-lt v2, v0, :cond_0

    return-object p0

    .line 302
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .local v6, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 303
    .local v10, "height":I
    mul-int v0, v6, v10

    new-array v4, v0, [I

    .line 304
    .local v4, "pixels":[I
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move v9, v6

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 305
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v4

    if-ge v0, v3, :cond_2

    .line 306
    aget v3, v4, v0

    .line 307
    .local v3, "c":I
    ushr-int/lit8 v5, v3, 0x18

    and-int/lit16 v5, v5, 0xff

    .line 308
    .local v5, "a":I
    if-nez v5, :cond_1

    goto :goto_1

    .line 309
    :cond_1
    ushr-int/lit8 v7, v3, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    const/high16 v8, 0x40e00000    # 7.0f

    mul-float/2addr v7, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 310
    .local v7, "r3":I
    ushr-int/lit8 v11, v3, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-float v11, v11

    mul-float/2addr v11, v8

    div-float/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 311
    .local v11, "g3":I
    and-int/lit16 v12, v3, 0xff

    int-to-float v12, v12

    mul-float/2addr v12, v8

    div-float/2addr v12, v9

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 312
    .local v12, "b3":I
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v9

    div-float/2addr v13, v8

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 313
    .local v13, "r":I
    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v9

    div-float/2addr v14, v8

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 314
    .local v14, "g":I
    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v9

    div-float/2addr v15, v8

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 315
    .local v8, "b":I
    shl-int/lit8 v9, v5, 0x18

    shl-int/lit8 v15, v13, 0x10

    or-int/2addr v9, v15

    shl-int/lit8 v15, v14, 0x8

    or-int/2addr v9, v15

    or-int/2addr v9, v8

    aput v9, v4, v0

    .line 305
    .end local v3    # "c":I
    .end local v5    # "a":I
    .end local v7    # "r3":I
    .end local v8    # "b":I
    .end local v11    # "g3":I
    .end local v12    # "b3":I
    .end local v13    # "r":I
    .end local v14    # "g":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    .end local v0    # "i":I
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v10, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static fadeGenesisBitmapToBlack(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "fadeOutStep"    # I

    .line 321
    const/4 v0, 0x7

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 322
    .local v0, "s":I
    if-gtz v0, :cond_0

    return-object p0

    .line 323
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .local v6, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 324
    .local v10, "height":I
    mul-int v3, v6, v10

    new-array v4, v3, [I

    .line 325
    .local v4, "pixels":[I
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move v9, v6

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 326
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 327
    aget v5, v4, v3

    .line 328
    .local v5, "c":I
    ushr-int/lit8 v7, v5, 0x18

    and-int/lit16 v7, v7, 0xff

    .line 329
    .local v7, "a":I
    if-nez v7, :cond_1

    goto :goto_1

    .line 330
    :cond_1
    ushr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    const/high16 v9, 0x40e00000    # 7.0f

    mul-float/2addr v8, v9

    const/high16 v11, 0x437f0000    # 255.0f

    div-float/2addr v8, v11

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 331
    .local v8, "r3":I
    ushr-int/lit8 v12, v5, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    mul-float/2addr v12, v9

    div-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 332
    .local v12, "g3":I
    and-int/lit16 v13, v5, 0xff

    int-to-float v13, v13

    mul-float/2addr v13, v9

    div-float/2addr v13, v11

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 333
    .local v13, "b3":I
    sub-int v14, v8, v0

    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v11

    div-float/2addr v14, v9

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 334
    .local v14, "r":I
    sub-int v15, v12, v0

    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v11

    div-float/2addr v15, v9

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 335
    .local v15, "g":I
    move/from16 v16, v9

    sub-int v9, v13, v0

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v11

    div-float v9, v9, v16

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 336
    .local v9, "b":I
    shl-int/lit8 v11, v7, 0x18

    shl-int/lit8 v16, v14, 0x10

    or-int v11, v11, v16

    shl-int/lit8 v16, v15, 0x8

    or-int v11, v11, v16

    or-int/2addr v11, v9

    aput v11, v4, v3

    .line 326
    .end local v5    # "c":I
    .end local v7    # "a":I
    .end local v8    # "r3":I
    .end local v9    # "b":I
    .end local v12    # "g3":I
    .end local v13    # "b3":I
    .end local v14    # "r":I
    .end local v15    # "g":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 338
    .end local v3    # "i":I
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v10, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private static loadPatternChunksPersistentScratch([BI)[B
    .locals 11
    .param p0, "rom"    # [B
    .param p1, "tableOffset"    # I

    .line 390
    move v0, p1

    .line 391
    .local v0, "table":I
    const/4 v1, 0x0

    .line 393
    .local v1, "nominalPatterns":I
    :goto_0
    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be16([BI)I

    move-result v2

    .line 394
    .local v2, "flags":I
    if-nez v2, :cond_5

    .line 401
    .end local v2    # "flags":I
    if-lez v1, :cond_4

    .line 405
    mul-int/lit8 v2, v1, 0x20

    new-array v2, v2, [B

    .line 406
    .local v2, "vram":[B
    const/high16 v3, 0x10000

    new-array v3, v3, [B

    .line 407
    .local v3, "scratch":[B
    move v0, p1

    .line 408
    const/4 v4, 0x0

    .line 410
    .local v4, "dst":I
    :goto_1
    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be16([BI)I

    move-result v5

    .line 411
    .local v5, "flags":I
    if-nez v5, :cond_1

    .line 430
    .end local v5    # "flags":I
    array-length v5, v2

    if-ne v4, v5, :cond_0

    .line 433
    return-object v2

    .line 431
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Mission sequence pattern table size mismatch"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 412
    .restart local v5    # "flags":I
    :cond_1
    add-int/lit8 v6, v0, 0x2

    invoke-static {p0, v6}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be32([BI)I

    move-result v6

    .line 413
    .local v6, "pointer":I
    add-int/lit8 v0, v0, 0x6

    .line 414
    and-int/lit16 v7, v5, 0x7fff

    .line 415
    .local v7, "count":I
    mul-int/lit8 v8, v7, 0x20

    .line 416
    .local v8, "bytes":I
    array-length v9, v2

    sub-int/2addr v9, v8

    if-gt v4, v9, :cond_3

    .line 419
    const v9, 0x8000

    and-int/2addr v9, v5

    if-eqz v9, :cond_2

    .line 422
    invoke-static {p0, v6, v3}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->decompressInto([BI[B)I

    .line 423
    const/4 v9, 0x0

    invoke-static {v3, v9, v2, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 425
    :cond_2
    invoke-static {p0, v6, v8}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->checkRange([BII)V

    .line 426
    invoke-static {p0, v6, v2, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 428
    :goto_2
    add-int/2addr v4, v8

    .line 429
    .end local v5    # "flags":I
    .end local v6    # "pointer":I
    .end local v7    # "count":I
    .end local v8    # "bytes":I
    goto :goto_1

    .line 417
    .restart local v5    # "flags":I
    .restart local v6    # "pointer":I
    .restart local v7    # "count":I
    .restart local v8    # "bytes":I
    :cond_3
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Mission sequence pattern VRAM overrun"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 402
    .end local v2    # "vram":[B
    .end local v3    # "scratch":[B
    .end local v4    # "dst":I
    .end local v5    # "flags":I
    .end local v6    # "pointer":I
    .end local v7    # "count":I
    .end local v8    # "bytes":I
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Mission sequence pattern table is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 395
    .local v2, "flags":I
    :cond_5
    and-int/lit16 v3, v2, 0x7fff

    add-int/2addr v1, v3

    .line 396
    add-int/lit8 v0, v0, 0x6

    .line 397
    const/16 v3, 0x800

    if-gt v1, v3, :cond_6

    .line 400
    .end local v2    # "flags":I
    goto :goto_0

    .line 398
    .restart local v2    # "flags":I
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Mission sequence pattern table guard"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static renderWindow([B[I[B)Landroid/graphics/Bitmap;
    .locals 20
    .param p0, "patterns"    # [B
    .param p1, "palette"    # [I
    .param p2, "map"    # [B

    .line 501
    move-object/from16 v0, p0

    const v1, 0x11800

    new-array v3, v1, [I

    .line 502
    .local v3, "pixels":[I
    const/4 v1, 0x0

    .local v1, "ty":I
    :goto_0
    const/16 v2, 0x1c

    if-ge v1, v2, :cond_a

    .line 503
    const/4 v2, 0x0

    .local v2, "tx":I
    :goto_1
    const/16 v4, 0x28

    if-ge v2, v4, :cond_9

    .line 504
    mul-int/lit8 v4, v1, 0x40

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x2

    .line 505
    .local v4, "mapOffset":I
    add-int/lit8 v5, v4, 0x2

    const/16 v6, 0xe00

    if-gt v5, v6, :cond_8

    .line 508
    aget-byte v5, p2, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    .line 509
    .local v5, "attr":I
    and-int/lit16 v7, v5, 0x7ff

    .line 510
    .local v7, "pattern":I
    mul-int/lit8 v8, v7, 0x20

    .line 511
    .local v8, "patternOffset":I
    add-int/lit8 v9, v8, 0x20

    array-length v10, v0

    if-gt v9, v10, :cond_7

    .line 514
    and-int/lit16 v9, v5, 0x800

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v9, :cond_0

    move v9, v11

    goto :goto_2

    :cond_0
    move v9, v10

    .line 515
    .local v9, "hFlip":Z
    :goto_2
    and-int/lit16 v12, v5, 0x1000

    if-eqz v12, :cond_1

    move v10, v11

    .line 516
    .local v10, "vFlip":Z
    :cond_1
    ushr-int/lit8 v11, v5, 0xd

    and-int/lit8 v11, v11, 0x3

    .line 517
    .local v11, "paletteLine":I
    const/4 v12, 0x0

    .local v12, "dy":I
    :goto_3
    if-ge v12, v6, :cond_6

    .line 518
    if-eqz v10, :cond_2

    rsub-int/lit8 v13, v12, 0x7

    goto :goto_4

    :cond_2
    move v13, v12

    .line 519
    .local v13, "sy":I
    :goto_4
    mul-int/lit8 v14, v13, 0x4

    add-int/2addr v14, v8

    .line 520
    .local v14, "rowOffset":I
    mul-int/lit8 v15, v1, 0x8

    add-int/2addr v15, v12

    .line 521
    .local v15, "py":I
    const/16 v16, 0x0

    move/from16 v0, v16

    .local v0, "dx":I
    :goto_5
    if-ge v0, v6, :cond_5

    .line 522
    if-eqz v9, :cond_3

    rsub-int/lit8 v16, v0, 0x7

    goto :goto_6

    :cond_3
    move/from16 v16, v0

    .line 523
    .local v16, "sx":I
    :goto_6
    ushr-int/lit8 v17, v16, 0x1

    add-int v17, v14, v17

    aget-byte v6, p0, v17

    and-int/lit16 v6, v6, 0xff

    .line 524
    .local v6, "packed":I
    and-int/lit8 v17, v16, 0x1

    if-nez v17, :cond_4

    ushr-int/lit8 v17, v6, 0x4

    goto :goto_7

    :cond_4
    and-int/lit8 v17, v6, 0xf

    .line 525
    .local v17, "colorIndex":I
    :goto_7
    move/from16 v18, v0

    .end local v0    # "dx":I
    .local v18, "dx":I
    mul-int/lit16 v0, v15, 0x140

    mul-int/lit8 v19, v2, 0x8

    add-int v0, v0, v19

    add-int v0, v0, v18

    mul-int/lit8 v19, v11, 0x10

    add-int v19, v19, v17

    aget v19, p1, v19

    aput v19, v3, v0

    .line 521
    .end local v6    # "packed":I
    .end local v16    # "sx":I
    .end local v17    # "colorIndex":I
    add-int/lit8 v0, v18, 0x1

    const/16 v6, 0x8

    .end local v18    # "dx":I
    .restart local v0    # "dx":I
    goto :goto_5

    :cond_5
    move/from16 v18, v0

    .line 517
    .end local v0    # "dx":I
    .end local v13    # "sy":I
    .end local v14    # "rowOffset":I
    .end local v15    # "py":I
    add-int/lit8 v12, v12, 0x1

    const/16 v6, 0x8

    move-object/from16 v0, p0

    goto :goto_3

    .line 503
    .end local v4    # "mapOffset":I
    .end local v5    # "attr":I
    .end local v7    # "pattern":I
    .end local v8    # "patternOffset":I
    .end local v9    # "hFlip":Z
    .end local v10    # "vFlip":Z
    .end local v11    # "paletteLine":I
    .end local v12    # "dy":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_1

    .line 512
    .restart local v4    # "mapOffset":I
    .restart local v5    # "attr":I
    .restart local v7    # "pattern":I
    .restart local v8    # "patternOffset":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Mission sequence pattern index outside resource: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    .end local v5    # "attr":I
    .end local v7    # "pattern":I
    .end local v8    # "patternOffset":I
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Mission sequence tilemap outside ROM upload prefix"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    .end local v2    # "tx":I
    .end local v4    # "mapOffset":I
    :cond_9
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 531
    .end local v1    # "ty":I
    :cond_a
    const/16 v0, 0xe0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x140

    invoke-static {v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 532
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/16 v8, 0x140

    const/16 v9, 0xe0

    const/4 v4, 0x0

    const/16 v5, 0x140

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 533
    return-object v2
.end method

.method private static verifyFrameDescriptor([BII)V
    .locals 5
    .param p0, "rom"    # [B
    .param p1, "descriptor"    # I
    .param p2, "frame0"    # I

    .line 362
    invoke-static {p0, p1}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be16([BI)I

    move-result v0

    .line 363
    .local v0, "flags":I
    add-int/lit8 v1, p1, 0x2

    invoke-static {p0, v1}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be32([BI)I

    move-result v1

    .line 364
    .local v1, "pointer":I
    const v2, 0x8e00

    if-ne v0, v2, :cond_0

    if-ne v1, p2, :cond_0

    .line 368
    return-void

    .line 365
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 366
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 365
    const-string v4, "Unexpected Genesis sequence frame descriptor at %06X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static verifyResourceEntry([BIIII)V
    .locals 4
    .param p0, "rom"    # [B
    .param p1, "id"    # I
    .param p2, "patterns"    # I
    .param p3, "map"    # I
    .param p4, "palette"    # I

    .line 353
    mul-int/lit8 v0, p1, 0x10

    const v1, 0xc7c72

    add-int/2addr v0, v1

    .line 354
    .local v0, "entry":I
    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be32([BI)I

    move-result v1

    if-ne v1, p2, :cond_0

    add-int/lit8 v1, v0, 0x4

    invoke-static {p0, v1}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be32([BI)I

    move-result v1

    if-ne v1, p3, :cond_0

    add-int/lit8 v1, v0, 0x8

    .line 355
    invoke-static {p0, v1}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be32([BI)I

    move-result v1

    if-ne v1, p4, :cond_0

    add-int/lit8 v1, v0, 0xc

    invoke-static {p0, v1}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->be32([BI)I

    move-result v1

    if-nez v1, :cond_0

    .line 359
    return-void

    .line 356
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 357
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 356
    const-string v3, "Unexpected Genesis mission sequence resource %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public bannerYAtTick(J)I
    .locals 4
    .param p1, "tick"    # J

    .line 157
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 158
    .local v0, "steps":J
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    rsub-int v2, v2, 0xf0

    const/16 v3, 0xb0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method public getBanner(Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "won"    # Z

    .line 127
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->winBanner:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->lossBanner:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0
.end method

.method public getBannerFadeFromBlack(ZI)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "won"    # Z
    .param p2, "fadeStep"    # I

    .line 131
    const/4 v0, 0x7

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 132
    .local v1, "step":I
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->winBanner:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->lossBanner:Landroid/graphics/Bitmap;

    .line 133
    .local v2, "source":Landroid/graphics/Bitmap;
    :goto_0
    if-lt v1, v0, :cond_1

    return-object v2

    .line 134
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->winBannerFade:[Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->lossBannerFade:[Landroid/graphics/Bitmap;

    .line 135
    .local v0, "cache":[Landroid/graphics/Bitmap;
    :goto_1
    aget-object v3, v0, v1

    .line 136
    .local v3, "cached":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_3

    return-object v3

    .line 137
    :cond_3
    invoke-static {v2, v1}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->fadeGenesisBitmapFromBlack(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 138
    aput-object v3, v0, v1

    .line 139
    return-object v3
.end method

.method public getBannerFadeToBlack(ZI)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "won"    # Z
    .param p2, "fadeOutStep"    # I

    .line 143
    const/4 v0, 0x7

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 144
    .local v0, "step":I
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->winBanner:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->lossBanner:Landroid/graphics/Bitmap;

    .line 145
    .local v1, "source":Landroid/graphics/Bitmap;
    :goto_0
    if-gtz v0, :cond_1

    return-object v1

    .line 146
    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->winBannerFadeOut:[Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->lossBannerFadeOut:[Landroid/graphics/Bitmap;

    .line 147
    .local v2, "cache":[Landroid/graphics/Bitmap;
    :goto_1
    aget-object v3, v2, v0

    .line 148
    .local v3, "cached":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_3

    return-object v3

    .line 149
    :cond_3
    invoke-static {v1, v0}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->fadeGenesisBitmapToBlack(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 150
    aput-object v3, v2, v0

    .line 151
    return-object v3
.end method

.method public getFrame(ZI)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "won"    # Z
    .param p2, "frame"    # I

    .line 122
    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->getWinFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->getLossFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFrameFadeFromBlack(ZII)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "won"    # Z
    .param p2, "frame"    # I
    .param p3, "fadeStep"    # I

    .line 164
    const/4 v0, 0x4

    invoke-static {p2, v0}, Ljava/lang/Math;->floorMod(II)I

    move-result v0

    .line 165
    .local v0, "index":I
    const/4 v1, 0x7

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 166
    .local v2, "step":I
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->winFrames:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->lossFrames:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    .line 167
    .local v3, "source":Landroid/graphics/Bitmap;
    :goto_0
    if-lt v2, v1, :cond_1

    return-object v3

    .line 168
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->winFadeFrames:[[Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->lossFadeFrames:[[Landroid/graphics/Bitmap;

    .line 169
    .local v1, "cache":[[Landroid/graphics/Bitmap;
    :goto_1
    aget-object v4, v1, v0

    aget-object v4, v4, v2

    .line 170
    .local v4, "cached":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_3

    return-object v4

    .line 171
    :cond_3
    invoke-static {v3, v2}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->fadeGenesisBitmapFromBlack(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 172
    aget-object v5, v1, v0

    aput-object v4, v5, v2

    .line 173
    return-object v4
.end method

.method public getFrameFadeToBlack(ZII)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "won"    # Z
    .param p2, "frame"    # I
    .param p3, "fadeOutStep"    # I

    .line 177
    const/4 v0, 0x4

    invoke-static {p2, v0}, Ljava/lang/Math;->floorMod(II)I

    move-result v0

    .line 178
    .local v0, "index":I
    const/4 v1, 0x7

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 179
    .local v1, "step":I
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->winFrames:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->lossFrames:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    .line 180
    .local v2, "source":Landroid/graphics/Bitmap;
    :goto_0
    if-gtz v1, :cond_1

    return-object v2

    .line 181
    :cond_1
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->winFadeOutFrames:[[Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->lossFadeOutFrames:[[Landroid/graphics/Bitmap;

    .line 182
    .local v3, "cache":[[Landroid/graphics/Bitmap;
    :goto_1
    aget-object v4, v3, v0

    aget-object v4, v4, v1

    .line 183
    .local v4, "cached":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_3

    return-object v4

    .line 184
    :cond_3
    invoke-static {v2, v1}, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->fadeGenesisBitmapToBlack(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 185
    aget-object v5, v3, v0

    aput-object v4, v5, v1

    .line 186
    return-object v4
.end method

.method public getLossFrame(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "frame"    # I

    .line 118
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->lossFrames:[Landroid/graphics/Bitmap;

    const/4 v1, 0x4

    invoke-static {p1, v1}, Ljava/lang/Math;->floorMod(II)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getWinFrame(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "frame"    # I

    .line 114
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMissionSequenceArt;->winFrames:[Landroid/graphics/Bitmap;

    const/4 v1, 0x4

    invoke-static {p1, v1}, Ljava/lang/Math;->floorMod(II)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
