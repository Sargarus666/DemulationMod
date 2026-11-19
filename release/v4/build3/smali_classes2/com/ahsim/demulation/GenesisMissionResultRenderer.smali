.class final Lcom/ahsim/demulation/GenesisMissionResultRenderer;
.super Ljava/lang/Object;
.source "GenesisMissionResultRenderer.java"


# static fields
.field private static final BACKDROP_PTRS:[I

.field private static final BAR_PAUSE_TICKS:I = 0xb

.field private static final COMMON_PTRS:I = 0xa2e80

.field private static final FONT:I = 0x50c34

.field private static final MAP_BYTES:I = 0xe00

.field private static final OVERLAY:I = 0xa5d8e

.field private static final PALETTE:I = 0xa5d0e

.field static final PASSWORD_REVEAL_TICKS:I = 0x48

.field private static final RANK_NAMES:I = 0xa68e2

.field private static final RANK_WIDTH:I = 0x11

.field static final RESULT_BACKGROUND_FADE_TICKS:I = 0x18

.field static final RESULT_PALETTE_FADE_TICKS:I = 0x18

.field static final RESULT_REVEAL_TICKS:I = 0x48

.field static final SCREEN_HEIGHT:I = 0xe0

.field static final SCREEN_WIDTH:I = 0x140

.field private static final VRAM_SIZE:I = 0x10000


# instance fields
.field private final backdropCache:[Landroid/graphics/Bitmap;

.field private final backdropFadeCache:[[Landroid/graphics/Bitmap;

.field private final commonVram:[B

.field private final mediaAssets:Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

.field private final palette:[I

.field private final providerBackdropMaps:[[B

.field private final providerOverlayMap:[B

.field private final providerPasswordOverlayMap:[B

.field private final resultContent:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;

.field private final rom:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    const v0, 0xa6290

    const v1, 0xa659a

    const v2, 0xa5ee4

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->BACKDROP_PTRS:[I

    return-void
.end method

.method constructor <init>(Lcom/ahsim/demulation/RomRuntimeFrontendAssets;Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;)V
    .locals 6
    .param p1, "assets"    # Lcom/ahsim/demulation/RomRuntimeFrontendAssets;
    .param p2, "contentAssets"    # Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x3

    new-array v1, v0, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->backdropCache:[Landroid/graphics/Bitmap;

    .line 46
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    const/16 v3, 0x8

    aput v3, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    const-class v0, Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->backdropFadeCache:[[Landroid/graphics/Bitmap;

    .line 71
    if-eqz p1, :cond_3

    .line 72
    if-eqz p2, :cond_2

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->rom:[B

    .line 74
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->mediaAssets:Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

    .line 76
    :try_start_0
    invoke-virtual {p2}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->missionResultExactContent()Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultContent:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    nop

    .line 80
    const-string v0, "mission_result/palette.bin"

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->decodePalette([B)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->palette:[I

    .line 81
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->commonVram:[B

    .line 82
    const-string v0, "mission_result/common_patterns.bin"

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v0

    .line 83
    .local v0, "common":[B
    array-length v1, v0

    const/16 v3, 0x7000

    if-ne v1, v3, :cond_1

    .line 84
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->commonVram:[B

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    const-string v1, "mission_result/font.bin"

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v1

    .line 86
    .local v1, "font":[B
    array-length v3, v1

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_0

    .line 87
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->commonVram:[B

    const v4, 0xa000

    array-length v5, v1

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    nop

    .line 89
    const-string v2, "mission_result/backdrop0.map"

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v2

    .line 90
    const-string v3, "mission_result/backdrop1.map"

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v3

    .line 91
    const-string v4, "mission_result/backdrop2.map"

    invoke-direct {p0, v4}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v4

    filled-new-array {v2, v3, v4}, [[B

    move-result-object v2

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->providerBackdropMaps:[[B

    .line 93
    const-string v2, "mission_result/overlay.map"

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->providerOverlayMap:[B

    .line 94
    const-string v2, "mission_result/password_overlay.map"

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->providerPasswordOverlayMap:[B

    .line 95
    return-void

    .line 86
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Mission-result font size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    .end local v1    # "font":[B
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Mission-result common pattern size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    .end local v0    # "common":[B
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Mission-result READY data is unavailable"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 72
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mission-result content provider is unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mission-result media provider is unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lcom/ahsim/demulation/RomRuntimeFrontendAssets;[B)V
    .locals 6
    .param p1, "assets"    # Lcom/ahsim/demulation/RomRuntimeFrontendAssets;
    .param p2, "rom"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x3

    new-array v1, v0, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->backdropCache:[Landroid/graphics/Bitmap;

    .line 46
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    const/16 v3, 0x8

    aput v3, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    const-class v0, Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->backdropFadeCache:[[Landroid/graphics/Bitmap;

    .line 101
    if-eqz p1, :cond_3

    .line 102
    if-eqz p2, :cond_2

    array-length v0, p2

    const v1, 0xa7000

    if-lt v0, v1, :cond_2

    .line 104
    iput-object p2, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->rom:[B

    .line 105
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->mediaAssets:Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultContent:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;

    .line 107
    const-string v0, "mission_result/palette.bin"

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->decodePalette([B)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->palette:[I

    .line 108
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->commonVram:[B

    .line 109
    const-string v0, "mission_result/common_patterns.bin"

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v0

    .line 110
    .local v0, "common":[B
    array-length v1, v0

    const/16 v3, 0x7000

    if-ne v1, v3, :cond_1

    .line 111
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->commonVram:[B

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    const-string v1, "mission_result/font.bin"

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v1

    .line 113
    .local v1, "font":[B
    array-length v3, v1

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_0

    .line 114
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->commonVram:[B

    const v4, 0xa000

    array-length v5, v1

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    nop

    .line 116
    const-string v2, "mission_result/backdrop0.map"

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v2

    .line 117
    const-string v3, "mission_result/backdrop1.map"

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v3

    .line 118
    const-string v4, "mission_result/backdrop2.map"

    invoke-direct {p0, v4}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v4

    filled-new-array {v2, v3, v4}, [[B

    move-result-object v2

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->providerBackdropMaps:[[B

    .line 120
    const-string v2, "mission_result/overlay.map"

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->providerOverlayMap:[B

    .line 121
    const-string v2, "mission_result/password_overlay.map"

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->providerPasswordOverlayMap:[B

    .line 122
    return-void

    .line 113
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Mission-result font size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    .end local v1    # "font":[B
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Mission-result common pattern size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    .end local v0    # "common":[B
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mission-result reference ROM data is missing/truncated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mission-result media provider is unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>([B)V
    .locals 7
    .param p1, "rom"    # [B

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x3

    new-array v1, v0, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->backdropCache:[Landroid/graphics/Bitmap;

    .line 46
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    const/16 v3, 0x8

    aput v3, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    const-class v0, Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->backdropFadeCache:[[Landroid/graphics/Bitmap;

    .line 49
    if-eqz p1, :cond_1

    array-length v0, p1

    const v1, 0xa7000

    if-lt v0, v1, :cond_1

    .line 50
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->rom:[B

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->mediaAssets:Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

    .line 52
    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultContent:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;

    .line 53
    const v1, 0xa5d0e

    invoke-static {p1, v1}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->decodePalette([BI)[I

    move-result-object v1

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->palette:[I

    .line 54
    const/high16 v1, 0x10000

    new-array v3, v1, [B

    iput-object v3, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->commonVram:[B

    .line 55
    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->providerBackdropMaps:[[B

    .line 56
    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->providerOverlayMap:[B

    .line 57
    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->providerPasswordOverlayMap:[B

    .line 58
    new-array v0, v1, [B

    .line 59
    .local v0, "scratch":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x7

    const/16 v4, 0x1000

    if-ge v1, v3, :cond_0

    .line 60
    mul-int/lit8 v3, v1, 0x4

    const v5, 0xa2e80

    add-int/2addr v3, v5

    invoke-static {p1, v3}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->be32([BI)I

    move-result v3

    .line 61
    .local v3, "ptr":I
    invoke-static {p1, v3, v0}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->decompressInto([BI[B)I

    .line 62
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->commonVram:[B

    mul-int/lit16 v6, v1, 0x1000

    invoke-static {v0, v2, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    .end local v3    # "ptr":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    .end local v1    # "i":I
    :cond_0
    const v1, 0x50c34

    invoke-static {p1, v1, v4}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->checkRange([BII)V

    .line 65
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->commonVram:[B

    const v3, 0xa000

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    return-void

    .line 49
    .end local v0    # "scratch":[B
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ROM too small for result screen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static animatedValues([I[IJ)[I
    .locals 10
    .param p0, "target"    # [I
    .param p1, "scale"    # [I
    .param p2, "presentationTick"    # J

    .line 321
    array-length v0, p0

    new-array v0, v0, [I

    .line 322
    .local v0, "shown":[I
    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const-wide/16 v5, 0x48

    sub-long/2addr v3, v5

    .line 323
    .local v3, "tick":J
    cmp-long v1, v3, v1

    if-gez v1, :cond_0

    return-object v0

    .line 324
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 325
    aget v2, p0, v1

    aget v5, p1, v1

    invoke-static {v2, v5}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->countIterations(II)I

    move-result v2

    .line 326
    .local v2, "iterations":I
    int-to-long v5, v2

    cmp-long v5, v3, v5

    if-gez v5, :cond_1

    .line 327
    aget v5, p0, v1

    aget v6, p1, v1

    int-to-long v6, v6

    mul-long/2addr v6, v3

    const-wide/32 v8, 0x7fffffff

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    aput v5, v0, v1

    .line 328
    return-object v0

    .line 330
    :cond_1
    aget v5, p0, v1

    aput v5, v0, v1

    .line 331
    int-to-long v5, v2

    sub-long/2addr v3, v5

    .line 332
    const-wide/16 v5, 0xb

    cmp-long v7, v3, v5

    if-gez v7, :cond_2

    return-object v0

    .line 333
    :cond_2
    sub-long/2addr v3, v5

    .line 324
    .end local v2    # "iterations":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 335
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method private static be16([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "o"    # I

    .line 657
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->checkRange([BII)V

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

    .line 658
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->checkRange([BII)V

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
    .locals 2
    .param p0, "b"    # [B
    .param p1, "o"    # I
    .param p2, "n"    # I

    .line 659
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "result ROM range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static clampResult(I)I
    .locals 2
    .param p0, "value"    # I

    .line 342
    const v0, 0xfde8

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static countIterations(II)I
    .locals 3
    .param p0, "target"    # I
    .param p1, "scale"    # I

    .line 339
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, p0

    sub-int/2addr v1, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static decodePalette([B)[I
    .locals 8
    .param p0, "data"    # [B

    .line 597
    if-eqz p0, :cond_1

    array-length v0, p0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    .line 598
    const/16 v0, 0x40

    new-array v0, v0, [I

    .line 599
    .local v0, "p":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 600
    mul-int/lit8 v2, v1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 601
    .local v2, "w":I
    ushr-int/lit8 v3, v2, 0x1

    and-int/lit8 v3, v3, 0x7

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    const/high16 v5, 0x40e00000    # 7.0f

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 602
    .local v3, "r":I
    ushr-int/lit8 v6, v2, 0x5

    and-int/lit8 v6, v6, 0x7

    int-to-float v6, v6

    mul-float/2addr v6, v4

    div-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 603
    .local v6, "g":I
    ushr-int/lit8 v7, v2, 0x9

    and-int/lit8 v7, v7, 0x7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    div-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 604
    .local v4, "b":I
    invoke-static {v3, v6, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v0, v1

    .line 599
    .end local v2    # "w":I
    .end local v3    # "r":I
    .end local v4    # "b":I
    .end local v6    # "g":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 606
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 597
    .end local v0    # "p":[I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mission-result palette size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodePalette([BI)[I
    .locals 8
    .param p0, "rom"    # [B
    .param p1, "off"    # I

    .line 610
    const/16 v0, 0x40

    new-array v0, v0, [I

    .line 611
    .local v0, "p":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 612
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p1

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->be16([BI)I

    move-result v2

    .line 613
    .local v2, "w":I
    ushr-int/lit8 v3, v2, 0x1

    and-int/lit8 v3, v3, 0x7

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    const/high16 v5, 0x40e00000    # 7.0f

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 614
    .local v3, "r":I
    ushr-int/lit8 v6, v2, 0x5

    and-int/lit8 v6, v6, 0x7

    int-to-float v6, v6

    mul-float/2addr v6, v4

    div-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 615
    .local v6, "g":I
    ushr-int/lit8 v7, v2, 0x9

    and-int/lit8 v7, v7, 0x7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    div-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 616
    .local v4, "b":I
    invoke-static {v3, v6, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v0, v1

    .line 611
    .end local v2    # "w":I
    .end local v3    # "r":I
    .end local v4    # "b":I
    .end local v6    # "g":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 618
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static decompressInto([BI[B)I
    .locals 9
    .param p0, "rom"    # [B
    .param p1, "source"    # I
    .param p2, "out"    # [B

    .line 622
    move v0, p1

    .local v0, "src":I
    const/4 v1, 0x0

    .local v1, "dst":I
    const/4 v2, 0x0

    .line 624
    .local v2, "guard":I
    :goto_0
    const/4 v3, 0x1

    add-int/2addr v2, v3

    const v4, 0x186a0

    if-gt v2, v4, :cond_c

    .line 625
    invoke-static {p0, v0, v3}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->checkRange([BII)V

    .line 626
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "src":I
    .local v4, "src":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 627
    .local v0, "c":I
    const/16 v5, 0x80

    if-ne v0, v5, :cond_0

    .line 651
    .end local v0    # "c":I
    return v1

    .line 628
    .restart local v0    # "c":I
    :cond_0
    const/16 v5, 0x81

    if-lt v0, v5, :cond_1

    const/16 v5, 0xbf

    if-gt v0, v5, :cond_1

    .line 629
    and-int/lit8 v3, v0, 0x3f

    .local v3, "n":I
    invoke-static {p0, v4, v3}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->checkRange([BII)V

    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->ensure([BII)V

    .line 630
    invoke-static {p0, v4, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v3

    add-int/2addr v1, v3

    .line 631
    .end local v3    # "n":I
    move v0, v4

    goto/16 :goto_5

    :cond_1
    const/16 v5, 0x7f

    const/4 v6, 0x3

    if-gt v0, v5, :cond_4

    .line 632
    invoke-static {p0, v4, v3}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->checkRange([BII)V

    shl-int/lit8 v3, v0, 0x8

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "src":I
    .local v5, "src":I
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xfff

    .line 633
    .local v3, "back":I
    ushr-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v6

    .local v4, "n":I
    if-lez v3, :cond_3

    if-gt v3, v1, :cond_3

    .line 634
    invoke-static {p2, v1, v4}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->ensure([BII)V

    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_2

    sub-int v7, v1, v3

    aget-byte v7, p2, v7

    aput-byte v7, p2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 635
    .end local v3    # "back":I
    .end local v4    # "n":I
    .end local v6    # "i":I
    :cond_2
    move v0, v5

    goto/16 :goto_5

    .line 633
    .restart local v3    # "back":I
    .restart local v4    # "n":I
    :cond_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "result short copy"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 635
    .end local v3    # "back":I
    .end local v5    # "src":I
    .local v4, "src":I
    :cond_4
    const/16 v3, 0xfd

    if-gt v0, v3, :cond_7

    .line 636
    const/4 v3, 0x2

    invoke-static {p0, v4, v3}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->checkRange([BII)V

    and-int/lit8 v3, v0, 0x3f

    add-int/2addr v3, v6

    .line 637
    .local v3, "n":I
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    .local v5, "from":I
    add-int/lit8 v4, v4, 0x2

    .line 638
    if-ltz v5, :cond_6

    if-ge v5, v1, :cond_6

    .line 639
    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->ensure([BII)V

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

    .line 640
    .end local v3    # "n":I
    .end local v5    # "from":I
    .end local v6    # "i":I
    .end local v7    # "dst":I
    .restart local v1    # "dst":I
    :cond_5
    move v0, v4

    goto/16 :goto_5

    .line 638
    .restart local v3    # "n":I
    .restart local v5    # "from":I
    :cond_6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "result absolute copy"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 640
    .end local v3    # "n":I
    .end local v5    # "from":I
    :cond_7
    const/16 v3, 0xfe

    if-ne v0, v3, :cond_9

    .line 641
    invoke-static {p0, v4, v6}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->checkRange([BII)V

    aget-byte v3, p0, v4

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    .line 642
    .restart local v3    # "n":I
    add-int/lit8 v5, v4, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .local v5, "value":I
    add-int/lit8 v4, v4, 0x3

    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->ensure([BII)V

    .line 643
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

    .line 644
    .end local v3    # "n":I
    .end local v5    # "value":I
    .end local v6    # "i":I
    .end local v7    # "dst":I
    .restart local v1    # "dst":I
    :cond_8
    move v0, v4

    goto :goto_5

    .line 645
    :cond_9
    const/4 v3, 0x4

    invoke-static {p0, v4, v3}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->checkRange([BII)V

    aget-byte v3, p0, v4

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    .line 646
    .restart local v3    # "n":I
    add-int/lit8 v5, v4, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v4, 0x3

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    .local v5, "from":I
    add-int/lit8 v4, v4, 0x4

    .line 647
    if-ltz v5, :cond_b

    if-ge v5, v1, :cond_b

    .line 648
    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->ensure([BII)V

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

    .line 650
    .end local v3    # "n":I
    .end local v4    # "src":I
    .end local v5    # "from":I
    .end local v6    # "i":I
    .local v0, "src":I
    :goto_5
    goto/16 :goto_0

    .line 647
    .local v0, "c":I
    .restart local v3    # "n":I
    .restart local v4    # "src":I
    .restart local v5    # "from":I
    :cond_b
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "result long copy"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 624
    .end local v3    # "n":I
    .end local v4    # "src":I
    .end local v5    # "from":I
    .local v0, "src":I
    :cond_c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "result decompressor guard"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static ensure([BII)V
    .locals 2
    .param p0, "out"    # [B
    .param p1, "dst"    # I
    .param p2, "n"    # I

    .line 655
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 656
    return-void

    .line 655
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "result output overrun"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static fadeGenesisBitmapFromBlack(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "step"    # I

    .line 515
    const/4 v0, 0x7

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 516
    .local v2, "s":I
    if-lt v2, v0, :cond_0

    return-object p0

    .line 517
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .local v6, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 518
    .local v10, "height":I
    mul-int v0, v6, v10

    new-array v4, v0, [I

    .line 519
    .local v4, "pixels":[I
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move v9, v6

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 520
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v4

    if-ge v0, v3, :cond_2

    .line 521
    aget v3, v4, v0

    .line 522
    .local v3, "c":I
    ushr-int/lit8 v5, v3, 0x18

    and-int/lit16 v5, v5, 0xff

    .line 523
    .local v5, "a":I
    if-nez v5, :cond_1

    goto :goto_1

    .line 524
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

    .line 525
    .local v7, "r3":I
    ushr-int/lit8 v11, v3, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-float v11, v11

    mul-float/2addr v11, v8

    div-float/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 526
    .local v11, "g3":I
    and-int/lit16 v12, v3, 0xff

    int-to-float v12, v12

    mul-float/2addr v12, v8

    div-float/2addr v12, v9

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 527
    .local v12, "b3":I
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v9

    div-float/2addr v13, v8

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 528
    .local v13, "r":I
    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v9

    div-float/2addr v14, v8

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 529
    .local v14, "g":I
    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v9

    div-float/2addr v15, v8

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 530
    .local v8, "b":I
    shl-int/lit8 v9, v5, 0x18

    shl-int/lit8 v15, v13, 0x10

    or-int/2addr v9, v15

    shl-int/lit8 v15, v14, 0x8

    or-int/2addr v9, v15

    or-int/2addr v9, v8

    aput v9, v4, v0

    .line 520
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

    .line 532
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

    .line 536
    const/4 v0, 0x7

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 537
    .local v0, "s":I
    if-gtz v0, :cond_0

    return-object p0

    .line 538
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .local v6, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 539
    .local v10, "height":I
    mul-int v3, v6, v10

    new-array v4, v3, [I

    .line 540
    .local v4, "pixels":[I
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move v9, v6

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 541
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 542
    aget v5, v4, v3

    .line 543
    .local v5, "c":I
    ushr-int/lit8 v7, v5, 0x18

    and-int/lit16 v7, v7, 0xff

    .line 544
    .local v7, "a":I
    if-nez v7, :cond_1

    goto :goto_1

    .line 545
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

    .line 546
    .local v8, "r3":I
    ushr-int/lit8 v12, v5, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    mul-float/2addr v12, v9

    div-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 547
    .local v12, "g3":I
    and-int/lit16 v13, v5, 0xff

    int-to-float v13, v13

    mul-float/2addr v13, v9

    div-float/2addr v13, v11

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 548
    .local v13, "b3":I
    sub-int v14, v8, v0

    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v11

    div-float/2addr v14, v9

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 549
    .local v14, "r":I
    sub-int v15, v12, v0

    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v11

    div-float/2addr v15, v9

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 550
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

    .line 551
    .local v9, "b":I
    shl-int/lit8 v11, v7, 0x18

    shl-int/lit8 v16, v14, 0x10

    or-int v11, v11, v16

    shl-int/lit8 v16, v15, 0x8

    or-int v11, v11, v16

    or-int/2addr v11, v9

    aput v11, v4, v3

    .line 541
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

    .line 553
    .end local v3    # "i":I
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v10, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private loadBackdropMap([BI)V
    .locals 6
    .param p1, "vram"    # [B
    .param p2, "mission"    # I

    .line 418
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->mediaAssets:Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

    const v1, 0xc000

    const/4 v2, 0x0

    const/16 v3, 0xe00

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->providerBackdropMaps:[[B

    rem-int/lit8 v4, p2, 0x3

    aget-object v0, v0, v4

    .line 420
    .local v0, "backdrop":[B
    array-length v4, v0

    if-ne v4, v3, :cond_0

    .line 422
    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    return-void

    .line 421
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Mission-result provider backdrop size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 425
    .end local v0    # "backdrop":[B
    :cond_1
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    .line 426
    .local v0, "scratch":[B
    sget-object v4, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->BACKDROP_PTRS:[I

    rem-int/lit8 v5, p2, 0x3

    aget v4, v4, v5

    .line 427
    .local v4, "backdrop":I
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->rom:[B

    invoke-static {v5, v4, v0}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->decompressInto([BI[B)I

    .line 428
    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 429
    return-void
.end method

.method private loadPasswordOverlayMap([B)V
    .locals 6
    .param p1, "vram"    # [B

    .line 432
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->mediaAssets:Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

    const/4 v1, 0x0

    const/16 v2, 0xe00

    const v3, 0xee00

    if-eqz v0, :cond_3

    .line 433
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->providerPasswordOverlayMap:[B

    array-length v0, v0

    const/16 v4, 0x700

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->providerPasswordOverlayMap:[B

    array-length v0, v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 434
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mission-result password overlay size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .local v0, "o":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 440
    add-int v4, v0, v3

    const/16 v5, 0x20

    aput-byte v5, p1, v4

    .line 441
    add-int v4, v0, v3

    add-int/lit8 v4, v4, 0x1

    aput-byte v1, p1, v4

    .line 439
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 443
    .end local v0    # "o":I
    :cond_2
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->providerPasswordOverlayMap:[B

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->providerPasswordOverlayMap:[B

    array-length v4, v4

    .line 444
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 443
    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 445
    return-void

    .line 447
    :cond_3
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    .line 448
    .local v0, "scratch":[B
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->rom:[B

    const v5, 0xa5e64

    invoke-static {v4, v5, v0}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->decompressInto([BI[B)I

    .line 449
    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    return-void
.end method

.method private loadResultMaps([BI)V
    .locals 0
    .param p1, "vram"    # [B
    .param p2, "mission"    # I

    .line 401
    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->loadBackdropMap([BI)V

    .line 402
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->loadResultOverlayMap([B)V

    .line 403
    return-void
.end method

.method private loadResultOverlayMap([B)V
    .locals 6
    .param p1, "vram"    # [B

    .line 406
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->mediaAssets:Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

    const v1, 0xee00

    const/4 v2, 0x0

    const/16 v3, 0xe00

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->providerOverlayMap:[B

    array-length v0, v0

    if-ne v0, v3, :cond_0

    .line 409
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->providerOverlayMap:[B

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    return-void

    .line 408
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mission-result provider overlay size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_1
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    .line 413
    .local v0, "scratch":[B
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->rom:[B

    const v5, 0xa5d8e

    invoke-static {v4, v5, v0}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->decompressInto([BI[B)I

    .line 414
    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    return-void
.end method

.method private static putWord([BII)V
    .locals 2
    .param p0, "b"    # [B
    .param p1, "o"    # I
    .param p2, "v"    # I

    .line 591
    if-ltz p1, :cond_0

    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 592
    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 593
    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 594
    return-void

    .line 591
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "result VRAM write outside range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readMedia(Ljava/lang/String;)[B
    .locals 4
    .param p1, "relativePath"    # Ljava/lang/String;

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->mediaAssets:Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

    invoke-virtual {v0, p1}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mission-result media asset unavailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private renderOverlayWithBars(IIIIIIIIIIIIIIII)Landroid/graphics/Bitmap;
    .locals 17
    .param p1, "missionOneBased"    # I
    .param p2, "displayScore"    # I
    .param p3, "rankIndex"    # I
    .param p4, "elapsedTicks"    # I
    .param p5, "spiceYou"    # I
    .param p6, "spiceEnemy"    # I
    .param p7, "unitsYou"    # I
    .param p8, "unitsEnemy"    # I
    .param p9, "structuresYou"    # I
    .param p10, "structuresEnemy"    # I
    .param p11, "shownSpiceYou"    # I
    .param p12, "shownSpiceEnemy"    # I
    .param p13, "shownUnitsYou"    # I
    .param p14, "shownUnitsEnemy"    # I
    .param p15, "shownStructuresYou"    # I
    .param p16, "shownStructuresEnemy"    # I

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->commonVram:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 271
    .local v1, "vram":[B
    invoke-direct {v0, v1}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->loadResultOverlayMap([B)V

    .line 272
    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->writeResultFields([BIIIIIIIIIIIIIII)V

    .line 276
    const v2, 0xee00

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->renderSinglePlane([BIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private renderPlane([BI[IZ)V
    .locals 20
    .param p1, "vram"    # [B
    .param p2, "mapBase"    # I
    .param p3, "pixels"    # [I
    .param p4, "transparentZero"    # Z

    .line 566
    const/4 v0, 0x0

    .local v0, "ty":I
    :goto_0
    const/16 v1, 0x1c

    if-ge v0, v1, :cond_9

    .line 567
    const/4 v1, 0x0

    .local v1, "tx":I
    :goto_1
    const/16 v2, 0x28

    if-ge v1, v2, :cond_8

    .line 568
    mul-int/lit8 v2, v0, 0x40

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x2

    add-int v2, p2, v2

    .line 569
    .local v2, "mo":I
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    .line 570
    .local v3, "attr":I
    and-int/lit16 v5, v3, 0x7ff

    .line 571
    .local v5, "pattern":I
    mul-int/lit8 v6, v5, 0x20

    .line 572
    .local v6, "po":I
    and-int/lit16 v7, v3, 0x800

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_0

    move v7, v9

    goto :goto_2

    :cond_0
    move v7, v8

    .line 573
    .local v7, "hf":Z
    :goto_2
    and-int/lit16 v10, v3, 0x1000

    if-eqz v10, :cond_1

    move v8, v9

    .line 574
    .local v8, "vf":Z
    :cond_1
    ushr-int/lit8 v9, v3, 0xd

    and-int/lit8 v9, v9, 0x3

    .line 575
    .local v9, "pl":I
    const/4 v10, 0x0

    .local v10, "dy":I
    :goto_3
    if-ge v10, v4, :cond_7

    .line 576
    if-eqz v8, :cond_2

    rsub-int/lit8 v11, v10, 0x7

    goto :goto_4

    :cond_2
    move v11, v10

    .line 577
    .local v11, "sy":I
    :goto_4
    mul-int/lit8 v12, v11, 0x4

    add-int/2addr v12, v6

    .line 578
    .local v12, "row":I
    const/4 v13, 0x0

    .local v13, "dx":I
    :goto_5
    if-ge v13, v4, :cond_6

    .line 579
    if-eqz v7, :cond_3

    rsub-int/lit8 v14, v13, 0x7

    goto :goto_6

    :cond_3
    move v14, v13

    .line 580
    .local v14, "sx":I
    :goto_6
    ushr-int/lit8 v15, v14, 0x1

    add-int/2addr v15, v12

    aget-byte v15, p1, v15

    and-int/lit16 v15, v15, 0xff

    .line 581
    .local v15, "packed":I
    and-int/lit8 v16, v14, 0x1

    if-nez v16, :cond_4

    ushr-int/lit8 v16, v15, 0x4

    goto :goto_7

    :cond_4
    and-int/lit8 v16, v15, 0xf

    .line 582
    .local v16, "ci":I
    :goto_7
    if-eqz p4, :cond_5

    if-nez v16, :cond_5

    move/from16 v17, v0

    move/from16 v18, v1

    move-object/from16 v0, p0

    goto :goto_8

    .line 583
    :cond_5
    mul-int/lit8 v17, v0, 0x8

    add-int v4, v17, v10

    mul-int/lit16 v4, v4, 0x140

    mul-int/lit8 v17, v1, 0x8

    add-int v4, v4, v17

    add-int/2addr v4, v13

    move/from16 v17, v0

    move/from16 v18, v1

    move-object/from16 v0, p0

    .end local v0    # "ty":I
    .end local v1    # "tx":I
    .local v17, "ty":I
    .local v18, "tx":I
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->palette:[I

    mul-int/lit8 v19, v9, 0x10

    add-int v19, v19, v16

    aget v1, v1, v19

    aput v1, p3, v4

    .line 578
    .end local v14    # "sx":I
    .end local v15    # "packed":I
    .end local v16    # "ci":I
    :goto_8
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    const/16 v4, 0x8

    goto :goto_5

    .end local v17    # "ty":I
    .end local v18    # "tx":I
    .restart local v0    # "ty":I
    .restart local v1    # "tx":I
    :cond_6
    move/from16 v17, v0

    move/from16 v18, v1

    move-object/from16 v0, p0

    .line 575
    .end local v0    # "ty":I
    .end local v1    # "tx":I
    .end local v11    # "sy":I
    .end local v12    # "row":I
    .end local v13    # "dx":I
    .restart local v17    # "ty":I
    .restart local v18    # "tx":I
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v17

    const/16 v4, 0x8

    goto :goto_3

    .end local v17    # "ty":I
    .end local v18    # "tx":I
    .restart local v0    # "ty":I
    .restart local v1    # "tx":I
    :cond_7
    move/from16 v17, v0

    move/from16 v18, v1

    move-object/from16 v0, p0

    .line 567
    .end local v0    # "ty":I
    .end local v1    # "tx":I
    .end local v2    # "mo":I
    .end local v3    # "attr":I
    .end local v5    # "pattern":I
    .end local v6    # "po":I
    .end local v7    # "hf":Z
    .end local v8    # "vf":Z
    .end local v9    # "pl":I
    .end local v10    # "dy":I
    .restart local v17    # "ty":I
    .restart local v18    # "tx":I
    add-int/lit8 v1, v18, 0x1

    move/from16 v0, v17

    .end local v18    # "tx":I
    .restart local v1    # "tx":I
    goto/16 :goto_1

    .end local v17    # "ty":I
    .restart local v0    # "ty":I
    :cond_8
    move/from16 v17, v0

    move/from16 v18, v1

    move-object/from16 v0, p0

    .line 566
    .end local v0    # "ty":I
    .end local v1    # "tx":I
    .restart local v17    # "ty":I
    add-int/lit8 v1, v17, 0x1

    move v0, v1

    .end local v17    # "ty":I
    .local v1, "ty":I
    goto/16 :goto_0

    .line 588
    .end local v1    # "ty":I
    :cond_9
    return-void
.end method

.method private renderPlanes([B)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "vram"    # [B

    .line 557
    const v0, 0x11800

    new-array v2, v0, [I

    .line 558
    .local v2, "pixels":[I
    const v0, 0xc000

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->renderPlane([BI[IZ)V

    .line 559
    const v0, 0xee00

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->renderPlane([BI[IZ)V

    .line 560
    const/16 v0, 0xe0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v3, 0x140

    invoke-static {v3, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 561
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/16 v7, 0x140

    const/16 v8, 0xe0

    const/4 v3, 0x0

    const/16 v4, 0x140

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 562
    return-object v1
.end method

.method private renderSinglePlane([BIZ)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "vram"    # [B
    .param p2, "mapBase"    # I
    .param p3, "transparentZero"    # Z

    .line 507
    const v0, 0x11800

    new-array v2, v0, [I

    .line 508
    .local v2, "pixels":[I
    invoke-direct {p0, p1, p2, v2, p3}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->renderPlane([BI[IZ)V

    .line 509
    const/16 v0, 0xe0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v3, 0x140

    invoke-static {v3, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 510
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/16 v7, 0x140

    const/16 v8, 0xe0

    const/4 v3, 0x0

    const/16 v4, 0x140

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 511
    return-object v1
.end method

.method private renderWithBars(IIIIIIIIIIIIIIII)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "missionOneBased"    # I
    .param p2, "displayScore"    # I
    .param p3, "rankIndex"    # I
    .param p4, "elapsedTicks"    # I
    .param p5, "spiceYou"    # I
    .param p6, "spiceEnemy"    # I
    .param p7, "unitsYou"    # I
    .param p8, "unitsEnemy"    # I
    .param p9, "structuresYou"    # I
    .param p10, "structuresEnemy"    # I
    .param p11, "shownSpiceYou"    # I
    .param p12, "shownSpiceEnemy"    # I
    .param p13, "shownUnitsYou"    # I
    .param p14, "shownUnitsEnemy"    # I
    .param p15, "shownStructuresYou"    # I
    .param p16, "shownStructuresEnemy"    # I

    .line 285
    move-object/from16 v0, p0

    const/16 v1, 0x9

    move/from16 v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 286
    .local v1, "mission":I
    iget-object v3, v0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->commonVram:[B

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 287
    .local v3, "vram":[B
    invoke-direct {v0, v3, v1}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->loadResultMaps([BI)V

    .line 288
    move/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, v1

    move-object v1, v3

    move/from16 v3, p3

    .end local v3    # "vram":[B
    .local v1, "vram":[B
    .local v17, "mission":I
    invoke-direct/range {v0 .. v16}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->writeResultFields([BIIIIIIIIIIIIIII)V

    .line 292
    invoke-direct {v0, v1}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->renderPlanes([B)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private static resultScale(II)I
    .locals 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 461
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const v1, 0xfde8

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 462
    .local v0, "max":I
    const/16 v1, 0xa8

    const/4 v2, 0x1

    if-gt v0, v1, :cond_0

    return v2

    .line 463
    :cond_0
    div-int/lit16 v1, v0, 0xa8

    add-int/2addr v1, v2

    return v1
.end method

.method private static writeBar([BIIII)V
    .locals 7
    .param p0, "vram"    # [B
    .param p1, "address"    # I
    .param p2, "value"    # I
    .param p3, "scale"    # I
    .param p4, "baseAttr"    # I

    .line 467
    const v0, 0xfde8

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 468
    .local v0, "v":I
    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x1

    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int/2addr v2, v3

    .line 469
    .local v2, "index":I
    :goto_0
    move v3, p1

    .line 470
    .local v3, "p":I
    ushr-int/lit8 v4, v2, 0x3

    .line 471
    .local v4, "full":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_1

    .line 472
    add-int/lit8 v6, p4, 0x17

    invoke-static {p0, v3, v6}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->putWord([BII)V

    .line 473
    add-int/lit8 v3, v3, 0x2

    .line 471
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 475
    .end local v5    # "i":I
    :cond_1
    add-int/lit8 v5, p4, 0x18

    and-int/lit8 v6, v2, 0x7

    add-int/2addr v5, v6

    invoke-static {p0, v3, v5}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->putWord([BII)V

    .line 476
    add-int/lit8 v5, p1, 0x2c

    const/4 v6, 0x5

    invoke-static {p0, v5, v0, v6, v1}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->writeNumber([BIIIZ)V

    .line 477
    return-void
.end method

.method private static writeFixedText([BI[B)V
    .locals 2
    .param p0, "vram"    # [B
    .param p1, "address"    # I
    .param p2, "data"    # [B

    .line 391
    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p0, p1, p2, v0, v1}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->writeFixedText([BI[BII)V

    .line 392
    return-void
.end method

.method private static writeFixedText([BI[BII)V
    .locals 3
    .param p0, "vram"    # [B
    .param p1, "address"    # I
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 395
    invoke-static {p2, p3, p4}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->checkRange([BII)V

    .line 396
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 397
    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p1

    add-int v2, p3, v0

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Lcom/ahsim/demulation/GermanFontGlyphMapper;->mapFixedTileByte(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x4500

    invoke-static {p0, v1, v2}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->putWord([BII)V

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static writeNumber([BIIIZ)V
    .locals 4
    .param p0, "vram"    # [B
    .param p1, "address"    # I
    .param p2, "value"    # I
    .param p3, "digits"    # I
    .param p4, "leadingZeroes"    # Z

    .line 480
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 481
    .local v0, "v":I
    add-int/lit8 v1, p3, -0x1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    .line 482
    .local v1, "p":I
    rem-int/lit8 v2, v0, 0xa

    add-int/lit16 v2, v2, 0x4530

    invoke-static {p0, v1, v2}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->putWord([BII)V

    .line 483
    add-int/lit8 v2, p3, -0x1

    .local v2, "left":I
    :goto_0
    if-lez v2, :cond_1

    .line 484
    add-int/lit8 v1, v1, -0x2

    .line 485
    div-int/lit8 v0, v0, 0xa

    .line 486
    if-nez p4, :cond_0

    if-nez v0, :cond_0

    goto :goto_1

    .line 487
    :cond_0
    rem-int/lit8 v3, v0, 0xa

    add-int/lit16 v3, v3, 0x4530

    invoke-static {p0, v1, v3}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->putWord([BII)V

    .line 483
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 489
    .end local v2    # "left":I
    :cond_1
    :goto_1
    return-void
.end method

.method private writeRank([BI)V
    .locals 7
    .param p1, "vram"    # [B
    .param p2, "rankIndex"    # I

    .line 492
    const v0, 0xf198

    .line 493
    .local v0, "dst":I
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultContent:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;

    const/16 v2, 0x11

    if-eqz v1, :cond_1

    .line 494
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultContent:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;

    invoke-virtual {v1, p2}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;->rankRecord(I)[B

    move-result-object v1

    .line 495
    .local v1, "record":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 496
    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v0

    aget-byte v5, v1, v3

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, 0x4500

    invoke-static {p1, v4, v5}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->putWord([BII)V

    .line 495
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 497
    .end local v3    # "i":I
    :cond_0
    return-void

    .line 499
    .end local v1    # "record":[B
    :cond_1
    mul-int/lit8 v1, p2, 0x11

    const v3, 0xa68e2

    add-int/2addr v1, v3

    .line 500
    .local v1, "src":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 501
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->rom:[B

    add-int v5, v1, v3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    .line 502
    .local v4, "c":I
    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v0

    add-int/lit16 v6, v4, 0x4500

    invoke-static {p1, v5, v6}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->putWord([BII)V

    .line 500
    .end local v4    # "c":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 504
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method private writeResultFields([BIIIIIIIIIIIIIII)V
    .locals 16
    .param p1, "vram"    # [B
    .param p2, "displayScore"    # I
    .param p3, "rankIndex"    # I
    .param p4, "elapsedTicks"    # I
    .param p5, "spiceYou"    # I
    .param p6, "spiceEnemy"    # I
    .param p7, "unitsYou"    # I
    .param p8, "unitsEnemy"    # I
    .param p9, "structuresYou"    # I
    .param p10, "structuresEnemy"    # I
    .param p11, "shownSpiceYou"    # I
    .param p12, "shownSpiceEnemy"    # I
    .param p13, "shownUnitsYou"    # I
    .param p14, "shownUnitsEnemy"    # I
    .param p15, "shownStructuresYou"    # I
    .param p16, "shownStructuresEnemy"    # I

    .line 301
    move-object/from16 v0, p1

    const v1, 0xffff

    move/from16 v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v4, 0x5

    const v5, 0xef92

    invoke-static {v0, v5, v1, v4, v3}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->writeNumber([BIIIZ)V

    .line 302
    move/from16 v1, p4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 303
    .local v4, "ticks":I
    const v5, 0x34bc0

    div-int v5, v4, v5

    .line 304
    .local v5, "hours":I
    mul-int/lit16 v6, v5, 0xe10

    mul-int/lit8 v6, v6, 0x3c

    sub-int v6, v4, v6

    div-int/lit16 v6, v6, 0xe10

    .line 305
    .local v6, "minutes":I
    const v7, 0xefbc    # 8.6E-41f

    const/4 v8, 0x2

    invoke-static {v0, v7, v5, v8, v3}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->writeNumber([BIIIZ)V

    .line 306
    const v7, 0xefc2

    const/4 v9, 0x1

    invoke-static {v0, v7, v6, v8, v9}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->writeNumber([BIIIZ)V

    .line 307
    const/16 v7, 0x8

    move/from16 v8, p3

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v7, p0

    invoke-direct {v7, v0, v3}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->writeRank([BI)V

    .line 309
    invoke-static/range {p5 .. p6}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultScale(II)I

    move-result v3

    .line 310
    .local v3, "scale":I
    const v9, 0xf494

    const/16 v10, 0x500

    move/from16 v11, p11

    invoke-static {v0, v9, v11, v3, v10}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->writeBar([BIIII)V

    .line 311
    const v9, 0xf514

    const/16 v12, 0x2500

    move/from16 v13, p12

    invoke-static {v0, v9, v13, v3, v12}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->writeBar([BIIII)V

    .line 312
    invoke-static/range {p7 .. p8}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultScale(II)I

    move-result v3

    .line 313
    const v9, 0xf714

    move/from16 v14, p13

    invoke-static {v0, v9, v14, v3, v10}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->writeBar([BIIII)V

    .line 314
    const v9, 0xf794

    move/from16 v15, p14

    invoke-static {v0, v9, v15, v3, v12}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->writeBar([BIIII)V

    .line 315
    invoke-static/range {p9 .. p10}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultScale(II)I

    move-result v3

    .line 316
    const v9, 0xf994

    move/from16 v12, p15

    invoke-static {v0, v9, v12, v3, v10}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->writeBar([BIIII)V

    .line 317
    const v9, 0xfa14

    move/from16 v10, p16

    const/16 v1, 0x2500

    invoke-static {v0, v9, v10, v3, v1}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->writeBar([BIIII)V

    .line 318
    return-void
.end method


# virtual methods
.method fadeToBlack(Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "fadeTick"    # J

    .line 150
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x7

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 151
    .local v0, "step":I
    invoke-static {p1, v0}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->fadeGenesisBitmapToBlack(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method isTallyTickSoundAt(IIIIIIJ)Z
    .locals 15
    .param p1, "spiceYou"    # I
    .param p2, "spiceEnemy"    # I
    .param p3, "unitsYou"    # I
    .param p4, "unitsEnemy"    # I
    .param p5, "structuresYou"    # I
    .param p6, "structuresEnemy"    # I
    .param p7, "presentationTick"    # J

    .line 247
    const-wide/16 v0, 0x48

    sub-long v0, p7, v0

    .line 248
    .local v0, "tick":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-gez v4, :cond_0

    return v5

    .line 249
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->clampResult(I)I

    move-result v6

    invoke-static/range {p2 .. p2}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->clampResult(I)I

    move-result v7

    invoke-static/range {p3 .. p3}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->clampResult(I)I

    move-result v8

    .line 250
    invoke-static/range {p4 .. p4}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->clampResult(I)I

    move-result v9

    invoke-static/range {p5 .. p5}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->clampResult(I)I

    move-result v10

    invoke-static/range {p6 .. p6}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->clampResult(I)I

    move-result v11

    filled-new-array/range {v6 .. v11}, [I

    move-result-object v4

    .line 251
    .local v4, "t":[I
    aget v6, v4, v5

    const/4 v7, 0x1

    aget v8, v4, v7

    invoke-static {v6, v8}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultScale(II)I

    move-result v9

    aget v6, v4, v5

    aget v8, v4, v7

    invoke-static {v6, v8}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultScale(II)I

    move-result v10

    const/4 v6, 0x2

    aget v8, v4, v6

    const/4 v11, 0x3

    aget v12, v4, v11

    .line 252
    invoke-static {v8, v12}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultScale(II)I

    move-result v8

    aget v6, v4, v6

    aget v11, v4, v11

    invoke-static {v6, v11}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultScale(II)I

    move-result v12

    const/4 v6, 0x4

    aget v11, v4, v6

    const/4 v13, 0x5

    aget v14, v4, v13

    .line 253
    invoke-static {v11, v14}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultScale(II)I

    move-result v11

    aget v6, v4, v6

    aget v13, v4, v13

    invoke-static {v6, v13}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultScale(II)I

    move-result v14

    move v13, v11

    move v11, v8

    filled-new-array/range {v9 .. v14}, [I

    move-result-object v6

    .line 254
    .local v6, "scale":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v9, v4

    if-ge v8, v9, :cond_4

    .line 255
    aget v9, v4, v8

    aget v10, v6, v8

    invoke-static {v9, v10}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->countIterations(II)I

    move-result v9

    .line 256
    .local v9, "iterations":I
    int-to-long v10, v9

    cmp-long v10, v0, v10

    if-gez v10, :cond_2

    const-wide/16 v10, 0x1

    add-long/2addr v10, v0

    const-wide/16 v12, 0x3

    and-long/2addr v10, v12

    cmp-long v2, v10, v2

    if-nez v2, :cond_1

    move v5, v7

    :cond_1
    return v5

    .line 257
    :cond_2
    int-to-long v10, v9

    sub-long/2addr v0, v10

    .line 258
    const-wide/16 v10, 0xb

    cmp-long v12, v0, v10

    if-gez v12, :cond_3

    return v5

    .line 259
    :cond_3
    sub-long/2addr v0, v10

    .line 254
    .end local v9    # "iterations":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 261
    .end local v8    # "i":I
    :cond_4
    return v5
.end method

.method render(IIIIIIIIII)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "missionOneBased"    # I
    .param p2, "displayScore"    # I
    .param p3, "rankIndex"    # I
    .param p4, "elapsedTicks"    # I
    .param p5, "spiceYou"    # I
    .param p6, "spiceEnemy"    # I
    .param p7, "unitsYou"    # I
    .param p8, "unitsEnemy"    # I
    .param p9, "structuresYou"    # I
    .param p10, "structuresEnemy"    # I

    .line 184
    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v16, p9

    move/from16 v17, p10

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v17}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->renderWithBars(IIIIIIIIIIIIIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method renderAnimated(IIIIIIIIIIJ)Landroid/graphics/Bitmap;
    .locals 30
    .param p1, "missionOneBased"    # I
    .param p2, "displayScore"    # I
    .param p3, "rankIndex"    # I
    .param p4, "elapsedTicks"    # I
    .param p5, "spiceYou"    # I
    .param p6, "spiceEnemy"    # I
    .param p7, "unitsYou"    # I
    .param p8, "unitsEnemy"    # I
    .param p9, "structuresYou"    # I
    .param p10, "structuresEnemy"    # I
    .param p11, "presentationTick"    # J

    .line 194
    nop

    .line 195
    invoke-static/range {p5 .. p5}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->clampResult(I)I

    move-result v0

    invoke-static/range {p6 .. p6}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->clampResult(I)I

    move-result v1

    .line 196
    invoke-static/range {p7 .. p7}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->clampResult(I)I

    move-result v2

    invoke-static/range {p8 .. p8}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->clampResult(I)I

    move-result v3

    .line 197
    invoke-static/range {p9 .. p9}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->clampResult(I)I

    move-result v4

    invoke-static/range {p10 .. p10}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->clampResult(I)I

    move-result v5

    filled-new-array/range {v0 .. v5}, [I

    move-result-object v0

    .line 199
    .local v0, "target":[I
    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    .line 200
    invoke-static {v2, v4}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultScale(II)I

    move-result v5

    aget v2, v0, v1

    aget v4, v0, v3

    invoke-static {v2, v4}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultScale(II)I

    move-result v6

    const/4 v2, 0x2

    aget v4, v0, v2

    const/4 v11, 0x3

    aget v7, v0, v11

    .line 201
    invoke-static {v4, v7}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultScale(II)I

    move-result v7

    aget v4, v0, v2

    aget v8, v0, v11

    invoke-static {v4, v8}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultScale(II)I

    move-result v8

    const/4 v4, 0x4

    aget v9, v0, v4

    const/4 v12, 0x5

    aget v10, v0, v12

    .line 202
    invoke-static {v9, v10}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultScale(II)I

    move-result v9

    aget v10, v0, v4

    aget v13, v0, v12

    invoke-static {v10, v13}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultScale(II)I

    move-result v10

    filled-new-array/range {v5 .. v10}, [I

    move-result-object v5

    .line 204
    .local v5, "scale":[I
    move-wide/from16 v6, p11

    invoke-static {v0, v5, v6, v7}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->animatedValues([I[IJ)[I

    move-result-object v8

    .line 205
    .local v8, "shown":[I
    aget v24, v8, v1

    aget v25, v8, v3

    aget v26, v8, v2

    aget v27, v8, v11

    aget v28, v8, v4

    aget v29, v8, v12

    move-object/from16 v13, p0

    move/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, p3

    move/from16 v17, p4

    move/from16 v18, p5

    move/from16 v19, p6

    move/from16 v20, p7

    move/from16 v21, p8

    move/from16 v22, p9

    move/from16 v23, p10

    invoke-direct/range {v13 .. v29}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->renderWithBars(IIIIIIIIIIIIIIII)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method renderBackdrop(I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "missionOneBased"    # I

    .line 125
    const/16 v0, 0x9

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 126
    .local v0, "mission":I
    rem-int/lit8 v1, v0, 0x3

    .line 127
    .local v1, "index":I
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->backdropCache:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v1

    .line 128
    .local v2, "cached":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    return-object v2

    .line 129
    :cond_0
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->commonVram:[B

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 130
    .local v3, "vram":[B
    invoke-direct {p0, v3, v0}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->loadBackdropMap([BI)V

    .line 131
    const v4, 0xc000

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->renderSinglePlane([BIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 132
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->backdropCache:[Landroid/graphics/Bitmap;

    aput-object v2, v4, v1

    .line 133
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->backdropFadeCache:[[Landroid/graphics/Bitmap;

    aget-object v4, v4, v1

    const/4 v5, 0x7

    aput-object v2, v4, v5

    .line 134
    return-object v2
.end method

.method renderBackdropFade(IJ)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "missionOneBased"    # I
    .param p2, "fadeTick"    # J

    .line 138
    const/16 v0, 0x9

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 139
    .local v0, "mission":I
    rem-int/lit8 v2, v0, 0x3

    .line 140
    .local v2, "index":I
    const-wide/16 v3, 0x0

    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const-wide/16 v5, 0x3

    div-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v3, v1

    const/4 v4, 0x7

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 141
    .local v1, "step":I
    if-lt v1, v4, :cond_0

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->renderBackdrop(I)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 142
    :cond_0
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->backdropFadeCache:[[Landroid/graphics/Bitmap;

    aget-object v3, v3, v2

    aget-object v3, v3, v1

    .line 143
    .local v3, "cached":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    return-object v3

    .line 144
    :cond_1
    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->renderBackdrop(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->fadeGenesisBitmapFromBlack(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 145
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->backdropFadeCache:[[Landroid/graphics/Bitmap;

    aget-object v4, v4, v2

    aput-object v3, v4, v1

    .line 146
    return-object v3
.end method

.method renderNextMissionPassword(IIIIIIIIIII)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "missionOneBased"    # I
    .param p2, "frontendHouseIndex"    # I
    .param p3, "displayScore"    # I
    .param p4, "rankIndex"    # I
    .param p5, "elapsedTicks"    # I
    .param p6, "spiceYou"    # I
    .param p7, "spiceEnemy"    # I
    .param p8, "unitsYou"    # I
    .param p9, "unitsEnemy"    # I
    .param p10, "structuresYou"    # I
    .param p11, "structuresEnemy"    # I

    .line 370
    move-object/from16 v0, p0

    const/16 v1, 0x8

    move/from16 v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 371
    .local v1, "mission":I
    iget-object v4, v0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->commonVram:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 372
    .local v4, "vram":[B
    invoke-direct {v0, v4, v1}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->loadBackdropMap([BI)V

    .line 373
    invoke-direct {v0, v4}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->loadPasswordOverlayMap([B)V

    .line 374
    const/4 v5, 0x2

    move/from16 v6, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 375
    .local v7, "frontHouse":I
    filled-new-array {v3, v8, v5}, [I

    move-result-object v5

    .line 376
    .local v5, "romHouseFromFrontend":[I
    aget v9, v5, v7

    .line 377
    .local v9, "romHouse":I
    iget-object v10, v0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultContent:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;

    const v11, 0xf220

    const v12, 0xf41e

    if-eqz v10, :cond_0

    .line 378
    iget-object v10, v0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultContent:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;

    invoke-virtual {v10, v1, v9}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;->password(II)[B

    move-result-object v10

    invoke-static {v4, v12, v10}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->writeFixedText([BI[B)V

    .line 379
    iget-object v10, v0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultContent:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;

    invoke-virtual {v10, v9}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;->houseLabel(I)[B

    move-result-object v10

    invoke-static {v4, v11, v10}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->writeFixedText([BI[B)V

    goto :goto_0

    .line 381
    :cond_0
    add-int/lit8 v10, v1, -0x1

    mul-int/lit8 v10, v10, 0x18

    const v13, 0x88124

    add-int/2addr v10, v13

    mul-int/lit8 v13, v9, 0x8

    add-int/2addr v10, v13

    .line 382
    .local v10, "record":I
    iget-object v13, v0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->rom:[B

    invoke-static {v13, v10}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->be32([BI)I

    move-result v13

    .line 383
    .local v13, "passwordPtr":I
    iget-object v14, v0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->rom:[B

    const/16 v15, 0xa

    invoke-static {v4, v12, v14, v13, v15}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->writeFixedText([BI[BII)V

    .line 384
    iget-object v12, v0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->rom:[B

    mul-int/lit8 v14, v9, 0x9

    const v15, 0xa697c

    add-int/2addr v14, v15

    const/16 v15, 0x9

    invoke-static {v4, v11, v12, v14, v15}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->writeFixedText([BI[BII)V

    .line 386
    .end local v10    # "record":I
    .end local v13    # "passwordPtr":I
    :goto_0
    const v10, 0xf32c

    invoke-static {v4, v10, v1, v3, v8}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->writeNumber([BIIIZ)V

    .line 387
    invoke-direct {v0, v4}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->renderPlanes([B)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method renderNextMissionPasswordOverlay(II)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "missionOneBased"    # I
    .param p2, "frontendHouseIndex"    # I

    .line 347
    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 348
    .local v0, "mission":I
    const/4 v2, 0x2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 349
    .local v3, "frontHouse":I
    filled-new-array {v1, v4, v2}, [I

    move-result-object v2

    .line 350
    .local v2, "romHouseFromFrontend":[I
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->commonVram:[B

    invoke-virtual {v5}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 351
    .local v5, "vram":[B
    invoke-direct {p0, v5}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->loadPasswordOverlayMap([B)V

    .line 352
    aget v6, v2, v3

    .line 353
    .local v6, "romHouse":I
    iget-object v7, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultContent:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;

    const v8, 0xf220

    const v9, 0xf41e

    if-eqz v7, :cond_0

    .line 354
    iget-object v7, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultContent:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;

    invoke-virtual {v7, v0, v6}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;->password(II)[B

    move-result-object v7

    invoke-static {v5, v9, v7}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->writeFixedText([BI[B)V

    .line 355
    iget-object v7, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultContent:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;

    invoke-virtual {v7, v6}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;->houseLabel(I)[B

    move-result-object v7

    invoke-static {v5, v8, v7}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->writeFixedText([BI[B)V

    goto :goto_0

    .line 357
    :cond_0
    add-int/lit8 v7, v0, -0x1

    mul-int/lit8 v7, v7, 0x18

    const v10, 0x88124

    add-int/2addr v7, v10

    mul-int/lit8 v10, v6, 0x8

    add-int/2addr v7, v10

    .line 358
    .local v7, "record":I
    iget-object v10, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->rom:[B

    invoke-static {v10, v7}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->be32([BI)I

    move-result v10

    .line 359
    .local v10, "passwordPtr":I
    iget-object v11, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->rom:[B

    const/16 v12, 0xa

    invoke-static {v5, v9, v11, v10, v12}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->writeFixedText([BI[BII)V

    .line 360
    iget-object v9, p0, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->rom:[B

    mul-int/lit8 v11, v6, 0x9

    const v12, 0xa697c

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-static {v5, v8, v9, v11, v12}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->writeFixedText([BI[BII)V

    .line 362
    .end local v7    # "record":I
    .end local v10    # "passwordPtr":I
    :goto_0
    const v7, 0xf32c

    invoke-static {v5, v7, v0, v1, v4}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->writeNumber([BIIIZ)V

    .line 363
    const v4, 0xee00

    invoke-direct {p0, v5, v4, v1}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->renderSinglePlane([BIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method renderOverlay(IIIIIIIIII)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "missionOneBased"    # I
    .param p2, "displayScore"    # I
    .param p3, "rankIndex"    # I
    .param p4, "elapsedTicks"    # I
    .param p5, "spiceYou"    # I
    .param p6, "spiceEnemy"    # I
    .param p7, "unitsYou"    # I
    .param p8, "unitsEnemy"    # I
    .param p9, "structuresYou"    # I
    .param p10, "structuresEnemy"    # I

    .line 176
    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v16, p9

    move/from16 v17, p10

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v17}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->renderOverlayWithBars(IIIIIIIIIIIIIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method renderOverlayAnimated(IIIIIIIIIIJ)Landroid/graphics/Bitmap;
    .locals 30
    .param p1, "missionOneBased"    # I
    .param p2, "displayScore"    # I
    .param p3, "rankIndex"    # I
    .param p4, "elapsedTicks"    # I
    .param p5, "spiceYou"    # I
    .param p6, "spiceEnemy"    # I
    .param p7, "unitsYou"    # I
    .param p8, "unitsEnemy"    # I
    .param p9, "structuresYou"    # I
    .param p10, "structuresEnemy"    # I
    .param p11, "presentationTick"    # J

    .line 157
    nop

    .line 158
    invoke-static/range {p5 .. p5}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->clampResult(I)I

    move-result v0

    invoke-static/range {p6 .. p6}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->clampResult(I)I

    move-result v1

    .line 159
    invoke-static/range {p7 .. p7}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->clampResult(I)I

    move-result v2

    invoke-static/range {p8 .. p8}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->clampResult(I)I

    move-result v3

    .line 160
    invoke-static/range {p9 .. p9}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->clampResult(I)I

    move-result v4

    invoke-static/range {p10 .. p10}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->clampResult(I)I

    move-result v5

    filled-new-array/range {v0 .. v5}, [I

    move-result-object v0

    .line 162
    .local v0, "target":[I
    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    .line 163
    invoke-static {v2, v4}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultScale(II)I

    move-result v5

    aget v2, v0, v1

    aget v4, v0, v3

    invoke-static {v2, v4}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultScale(II)I

    move-result v6

    const/4 v2, 0x2

    aget v4, v0, v2

    const/4 v11, 0x3

    aget v7, v0, v11

    .line 164
    invoke-static {v4, v7}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultScale(II)I

    move-result v7

    aget v4, v0, v2

    aget v8, v0, v11

    invoke-static {v4, v8}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultScale(II)I

    move-result v8

    const/4 v4, 0x4

    aget v9, v0, v4

    const/4 v12, 0x5

    aget v10, v0, v12

    .line 165
    invoke-static {v9, v10}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultScale(II)I

    move-result v9

    aget v10, v0, v4

    aget v13, v0, v12

    invoke-static {v10, v13}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultScale(II)I

    move-result v10

    filled-new-array/range {v5 .. v10}, [I

    move-result-object v5

    .line 167
    .local v5, "scale":[I
    move-wide/from16 v6, p11

    invoke-static {v0, v5, v6, v7}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->animatedValues([I[IJ)[I

    move-result-object v8

    .line 168
    .local v8, "shown":[I
    aget v24, v8, v1

    aget v25, v8, v3

    aget v26, v8, v2

    aget v27, v8, v11

    aget v28, v8, v4

    aget v29, v8, v12

    move-object/from16 v13, p0

    move/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, p3

    move/from16 v17, p4

    move/from16 v18, p5

    move/from16 v19, p6

    move/from16 v20, p7

    move/from16 v21, p8

    move/from16 v22, p9

    move/from16 v23, p10

    invoke-direct/range {v13 .. v29}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->renderOverlayWithBars(IIIIIIIIIIIIIIII)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method revealFraction(J)F
    .locals 19
    .param p1, "tick"    # J

    .line 226
    const-wide/16 v0, 0x47

    move-wide/from16 v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 227
    .local v0, "t":J
    const-wide/32 v4, 0x10000

    .line 228
    .local v4, "d2":J
    const-wide/16 v6, 0x0

    .line 229
    .local v6, "d3":J
    const-wide/16 v8, 0x0

    .line 231
    .local v8, "frame":J
    :goto_0
    const-wide/16 v10, 0x1

    add-long v12, v8, v10

    .end local v8    # "frame":J
    .local v12, "frame":J
    cmp-long v8, v8, v0

    const/high16 v9, 0x4b600000    # 1.4680064E7f

    const/high16 v14, 0x3f800000    # 1.0f

    if-nez v8, :cond_0

    long-to-float v8, v6

    div-float/2addr v8, v9

    invoke-static {v14, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    return v8

    .line 232
    :cond_0
    const-wide/16 v15, 0x2000

    add-long/2addr v4, v15

    .line 233
    const-wide/32 v17, 0x100000

    cmp-long v8, v4, v17

    if-ltz v8, :cond_1

    goto :goto_1

    :cond_1
    move-wide/from16 v17, v4

    :goto_1
    add-long v6, v6, v17

    .line 234
    const-wide/32 v17, 0x700000

    cmp-long v8, v6, v17

    if-ltz v8, :cond_5

    .line 237
    :goto_2
    add-long v17, v12, v10

    .end local v12    # "frame":J
    .local v17, "frame":J
    cmp-long v8, v12, v0

    if-nez v8, :cond_2

    long-to-float v8, v6

    div-float/2addr v8, v9

    invoke-static {v14, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    return v8

    .line 238
    :cond_2
    sub-long/2addr v4, v15

    .line 239
    const-wide/32 v12, 0x10000

    cmp-long v8, v4, v12

    if-gtz v8, :cond_3

    goto :goto_3

    :cond_3
    move-wide v12, v4

    :goto_3
    add-long/2addr v6, v12

    .line 240
    const-wide/32 v12, 0xe00000

    cmp-long v8, v6, v12

    if-ltz v8, :cond_4

    .line 242
    return v14

    .line 240
    :cond_4
    move-wide/from16 v12, v17

    goto :goto_2

    .line 234
    .end local v17    # "frame":J
    .restart local v12    # "frame":J
    :cond_5
    move-wide v8, v12

    goto :goto_0
.end method

.method tallyDurationTicks(IIIIII)J
    .locals 11
    .param p1, "spiceYou"    # I
    .param p2, "spiceEnemy"    # I
    .param p3, "unitsYou"    # I
    .param p4, "unitsEnemy"    # I
    .param p5, "structuresYou"    # I
    .param p6, "structuresEnemy"    # I

    .line 212
    invoke-static {p1}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->clampResult(I)I

    move-result v0

    invoke-static {p2}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->clampResult(I)I

    move-result v1

    invoke-static {p3}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->clampResult(I)I

    move-result v2

    .line 213
    invoke-static {p4}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->clampResult(I)I

    move-result v3

    invoke-static/range {p5 .. p5}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->clampResult(I)I

    move-result v4

    invoke-static/range {p6 .. p6}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->clampResult(I)I

    move-result v5

    filled-new-array/range {v0 .. v5}, [I

    move-result-object v0

    .line 214
    .local v0, "t":[I
    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-static {v2, v4}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultScale(II)I

    move-result v5

    aget v1, v0, v1

    aget v2, v0, v3

    invoke-static {v1, v2}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultScale(II)I

    move-result v6

    const/4 v1, 0x2

    aget v2, v0, v1

    const/4 v3, 0x3

    aget v4, v0, v3

    .line 215
    invoke-static {v2, v4}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultScale(II)I

    move-result v7

    aget v1, v0, v1

    aget v2, v0, v3

    invoke-static {v1, v2}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultScale(II)I

    move-result v8

    const/4 v1, 0x4

    aget v2, v0, v1

    const/4 v3, 0x5

    aget v4, v0, v3

    .line 216
    invoke-static {v2, v4}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultScale(II)I

    move-result v9

    aget v1, v0, v1

    aget v2, v0, v3

    invoke-static {v1, v2}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->resultScale(II)I

    move-result v10

    filled-new-array/range {v5 .. v10}, [I

    move-result-object v1

    .line 217
    .local v1, "scale":[I
    const-wide/16 v2, 0x48

    .line 218
    .local v2, "total":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_0

    aget v5, v0, v4

    aget v6, v1, v4

    invoke-static {v5, v6}, Lcom/ahsim/demulation/GenesisMissionResultRenderer;->countIterations(II)I

    move-result v5

    add-int/lit8 v5, v5, 0xb

    int-to-long v5, v5

    add-long/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 219
    .end local v4    # "i":I
    :cond_0
    return-wide v2
.end method
