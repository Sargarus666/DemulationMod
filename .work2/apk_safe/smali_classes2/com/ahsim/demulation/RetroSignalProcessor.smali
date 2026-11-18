.class final Lcom/ahsim/demulation/RetroSignalProcessor;
.super Ljava/lang/Object;
.source "RetroSignalProcessor.java"


# instance fields
.field private beamFactor:[I

.field private beamHeight:I

.field private blueDiff:[I

.field private luma:[I

.field private redDiff:[I

.field private rowWidth:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static at(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "w"    # I

    .line 62
    if-gez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method private static blue(I)I
    .locals 1
    .param p0, "p"    # I

    .line 65
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method private static clamp(I)I
    .locals 1
    .param p0, "x"    # I

    .line 61
    if-gez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method private compositeRow([IIII)V
    .locals 18
    .param p1, "dst"    # [I
    .param p2, "base"    # I
    .param p3, "w"    # I
    .param p4, "y"    # I

    .line 80
    move-object/from16 v0, p0

    move/from16 v1, p3

    iget-object v2, v0, Lcom/ahsim/demulation/RetroSignalProcessor;->beamFactor:[I

    aget v2, v2, p4

    mul-int/lit8 v2, v2, 0x3

    add-int/lit16 v2, v2, 0x100

    div-int/lit8 v2, v2, 0x4

    .line 81
    .local v2, "beam":I
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 82
    add-int/lit8 v4, v3, -0x1

    invoke-static {v4, v1}, Lcom/ahsim/demulation/RetroSignalProcessor;->at(II)I

    move-result v4

    .local v4, "m1":I
    add-int/lit8 v5, v3, 0x1

    invoke-static {v5, v1}, Lcom/ahsim/demulation/RetroSignalProcessor;->at(II)I

    move-result v5

    .line 83
    .local v5, "p1":I
    add-int/lit8 v6, v3, -0x2

    invoke-static {v6, v1}, Lcom/ahsim/demulation/RetroSignalProcessor;->at(II)I

    move-result v6

    .local v6, "m2":I
    add-int/lit8 v7, v3, 0x2

    invoke-static {v7, v1}, Lcom/ahsim/demulation/RetroSignalProcessor;->at(II)I

    move-result v7

    .local v7, "p2":I
    add-int/lit8 v8, v3, 0x3

    invoke-static {v8, v1}, Lcom/ahsim/demulation/RetroSignalProcessor;->at(II)I

    move-result v8

    .line 86
    .local v8, "p3":I
    iget-object v9, v0, Lcom/ahsim/demulation/RetroSignalProcessor;->luma:[I

    aget v9, v9, v4

    iget-object v10, v0, Lcom/ahsim/demulation/RetroSignalProcessor;->luma:[I

    aget v10, v10, v3

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    iget-object v10, v0, Lcom/ahsim/demulation/RetroSignalProcessor;->luma:[I

    aget v10, v10, v5

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x2

    shr-int/lit8 v9, v9, 0x2

    .line 87
    .local v9, "yy":I
    iget-object v10, v0, Lcom/ahsim/demulation/RetroSignalProcessor;->redDiff:[I

    aget v10, v10, v6

    iget-object v11, v0, Lcom/ahsim/demulation/RetroSignalProcessor;->redDiff:[I

    aget v11, v11, v4

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    iget-object v11, v0, Lcom/ahsim/demulation/RetroSignalProcessor;->redDiff:[I

    aget v11, v11, v3

    mul-int/lit8 v11, v11, 0x4

    add-int/2addr v10, v11

    iget-object v11, v0, Lcom/ahsim/demulation/RetroSignalProcessor;->redDiff:[I

    aget v11, v11, v5

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    iget-object v11, v0, Lcom/ahsim/demulation/RetroSignalProcessor;->redDiff:[I

    aget v11, v11, v7

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0xa

    .line 89
    .local v10, "cr":I
    iget-object v11, v0, Lcom/ahsim/demulation/RetroSignalProcessor;->blueDiff:[I

    aget v11, v11, v4

    iget-object v12, v0, Lcom/ahsim/demulation/RetroSignalProcessor;->blueDiff:[I

    aget v12, v12, v3

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    iget-object v12, v0, Lcom/ahsim/demulation/RetroSignalProcessor;->blueDiff:[I

    aget v12, v12, v5

    mul-int/lit8 v12, v12, 0x4

    add-int/2addr v11, v12

    iget-object v12, v0, Lcom/ahsim/demulation/RetroSignalProcessor;->blueDiff:[I

    aget v12, v12, v7

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    iget-object v12, v0, Lcom/ahsim/demulation/RetroSignalProcessor;->blueDiff:[I

    aget v12, v12, v8

    add-int/2addr v11, v12

    div-int/lit8 v11, v11, 0xa

    .line 93
    .local v11, "cb":I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int/2addr v12, v13

    .line 94
    .local v12, "chroma":I
    const/16 v13, 0x23

    if-le v12, v13, :cond_1

    add-int v13, v3, p4

    const/4 v14, 0x1

    and-int/2addr v13, v14

    if-nez v13, :cond_0

    goto :goto_1

    :cond_0
    const/4 v14, -0x1

    :goto_1
    add-int/2addr v9, v14

    .line 95
    :cond_1
    add-int v13, v9, v10

    add-int/lit8 v13, v13, 0x2

    invoke-static {v13}, Lcom/ahsim/demulation/RetroSignalProcessor;->clamp(I)I

    move-result v13

    .line 96
    .local v13, "r":I
    add-int v14, v9, v11

    add-int/lit8 v14, v14, -0x2

    invoke-static {v14}, Lcom/ahsim/demulation/RetroSignalProcessor;->clamp(I)I

    move-result v14

    .line 97
    .local v14, "b":I
    mul-int/lit16 v15, v9, 0x100

    mul-int/lit8 v16, v13, 0x4d

    sub-int v15, v15, v16

    mul-int/lit8 v16, v14, 0x1d

    sub-int v15, v15, v16

    add-int/lit8 v15, v15, 0x4b

    div-int/lit16 v15, v15, 0x96

    invoke-static {v15}, Lcom/ahsim/demulation/RetroSignalProcessor;->clamp(I)I

    move-result v15

    .line 99
    .local v15, "g":I
    ushr-int/lit8 v0, v9, 0x4

    const/16 v1, 0x10

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v2

    .line 100
    .local v0, "gain":I
    mul-int v1, v13, v0

    add-int/lit16 v1, v1, 0x80

    shr-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Lcom/ahsim/demulation/RetroSignalProcessor;->clamp(I)I

    move-result v1

    .line 101
    .end local v13    # "r":I
    .local v1, "r":I
    mul-int v13, v15, v0

    add-int/lit16 v13, v13, 0x80

    shr-int/lit8 v13, v13, 0x8

    invoke-static {v13}, Lcom/ahsim/demulation/RetroSignalProcessor;->clamp(I)I

    move-result v13

    .line 102
    .end local v15    # "g":I
    .local v13, "g":I
    mul-int v15, v14, v0

    add-int/lit16 v15, v15, 0x80

    shr-int/lit8 v15, v15, 0x8

    invoke-static {v15}, Lcom/ahsim/demulation/RetroSignalProcessor;->clamp(I)I

    move-result v14

    .line 103
    add-int v15, p2, v3

    shl-int/lit8 v16, v1, 0x10

    const/high16 v17, -0x1000000

    or-int v16, v16, v17

    shl-int/lit8 v17, v13, 0x8

    or-int v16, v16, v17

    or-int v16, v16, v14

    aput v16, p1, v15

    .line 81
    .end local v0    # "gain":I
    .end local v1    # "r":I
    .end local v4    # "m1":I
    .end local v5    # "p1":I
    .end local v6    # "m2":I
    .end local v7    # "p2":I
    .end local v8    # "p3":I
    .end local v9    # "yy":I
    .end local v10    # "cr":I
    .end local v11    # "cb":I
    .end local v12    # "chroma":I
    .end local v13    # "g":I
    .end local v14    # "b":I
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    goto/16 :goto_0

    .line 105
    .end local v3    # "x":I
    :cond_2
    return-void
.end method

.method private crtRow([I[IIII)V
    .locals 14
    .param p1, "src"    # [I
    .param p2, "dst"    # [I
    .param p3, "base"    # I
    .param p4, "w"    # I
    .param p5, "y"    # I

    .line 108
    move/from16 v0, p4

    iget-object v1, p0, Lcom/ahsim/demulation/RetroSignalProcessor;->beamFactor:[I

    aget v1, v1, p5

    .line 109
    .local v1, "beam":I
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 110
    add-int v3, p3, v2

    aget v3, p1, v3

    .line 111
    .local v3, "c":I
    add-int/lit8 v4, v2, -0x1

    invoke-static {v4, v0}, Lcom/ahsim/demulation/RetroSignalProcessor;->at(II)I

    move-result v4

    add-int v4, p3, v4

    aget v4, p1, v4

    .line 112
    .local v4, "l":I
    add-int/lit8 v5, v2, 0x1

    invoke-static {v5, v0}, Lcom/ahsim/demulation/RetroSignalProcessor;->at(II)I

    move-result v5

    add-int v5, p3, v5

    aget v5, p1, v5

    .line 113
    .local v5, "r":I
    invoke-static {v4}, Lcom/ahsim/demulation/RetroSignalProcessor;->red(I)I

    move-result v6

    invoke-static {v3}, Lcom/ahsim/demulation/RetroSignalProcessor;->red(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x6

    add-int/2addr v6, v7

    invoke-static {v5}, Lcom/ahsim/demulation/RetroSignalProcessor;->red(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x4

    shr-int/lit8 v6, v6, 0x3

    .line 114
    .local v6, "rr":I
    invoke-static {v4}, Lcom/ahsim/demulation/RetroSignalProcessor;->green(I)I

    move-result v7

    invoke-static {v3}, Lcom/ahsim/demulation/RetroSignalProcessor;->green(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x6

    add-int/2addr v7, v8

    invoke-static {v5}, Lcom/ahsim/demulation/RetroSignalProcessor;->green(I)I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x4

    shr-int/lit8 v7, v7, 0x3

    .line 115
    .local v7, "gg":I
    invoke-static {v4}, Lcom/ahsim/demulation/RetroSignalProcessor;->blue(I)I

    move-result v8

    invoke-static {v3}, Lcom/ahsim/demulation/RetroSignalProcessor;->blue(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x6

    add-int/2addr v8, v9

    invoke-static {v5}, Lcom/ahsim/demulation/RetroSignalProcessor;->blue(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x4

    shr-int/lit8 v8, v8, 0x3

    .line 117
    .local v8, "bb":I
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 118
    .local v9, "peak":I
    ushr-int/lit8 v10, v9, 0x4

    const/16 v11, 0x12

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/2addr v10, v1

    .line 119
    .local v10, "gain":I
    mul-int v11, v6, v10

    add-int/lit16 v11, v11, 0x80

    shr-int/lit8 v6, v11, 0x8

    .line 120
    mul-int v11, v7, v10

    add-int/lit16 v11, v11, 0x80

    shr-int/lit8 v7, v11, 0x8

    .line 121
    mul-int v11, v8, v10

    add-int/lit16 v11, v11, 0x80

    shr-int/lit8 v8, v11, 0x8

    .line 123
    rem-int/lit8 v11, v2, 0x3

    packed-switch v11, :pswitch_data_0

    .line 126
    mul-int/lit16 v11, v6, 0xf5

    shr-int/lit8 v6, v11, 0x8

    mul-int/lit16 v11, v7, 0xf7

    shr-int/lit8 v7, v11, 0x8

    goto :goto_1

    .line 125
    :pswitch_0
    mul-int/lit16 v11, v6, 0xf8

    shr-int/lit8 v6, v11, 0x8

    mul-int/lit16 v11, v8, 0xf7

    shr-int/lit8 v8, v11, 0x8

    goto :goto_1

    .line 124
    :pswitch_1
    mul-int/lit16 v11, v7, 0xf6

    shr-int/lit8 v7, v11, 0x8

    mul-int/lit16 v11, v8, 0xf4

    shr-int/lit8 v8, v11, 0x8

    .line 128
    :goto_1
    add-int v11, p3, v2

    invoke-static {v6}, Lcom/ahsim/demulation/RetroSignalProcessor;->clamp(I)I

    move-result v12

    shl-int/lit8 v12, v12, 0x10

    const/high16 v13, -0x1000000

    or-int/2addr v12, v13

    .line 129
    invoke-static {v7}, Lcom/ahsim/demulation/RetroSignalProcessor;->clamp(I)I

    move-result v13

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    invoke-static {v8}, Lcom/ahsim/demulation/RetroSignalProcessor;->clamp(I)I

    move-result v13

    or-int/2addr v12, v13

    aput v12, p2, v11

    .line 109
    .end local v3    # "c":I
    .end local v4    # "l":I
    .end local v5    # "r":I
    .end local v6    # "rr":I
    .end local v7    # "gg":I
    .end local v8    # "bb":I
    .end local v9    # "peak":I
    .end local v10    # "gain":I
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 131
    .end local v2    # "x":I
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private ensureRows(III)V
    .locals 12
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "mode"    # I

    .line 41
    iget v0, p0, Lcom/ahsim/demulation/RetroSignalProcessor;->rowWidth:I

    if-eq v0, p1, :cond_0

    .line 42
    iput p1, p0, Lcom/ahsim/demulation/RetroSignalProcessor;->rowWidth:I

    .line 43
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/ahsim/demulation/RetroSignalProcessor;->luma:[I

    .line 44
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/ahsim/demulation/RetroSignalProcessor;->redDiff:[I

    .line 45
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/ahsim/demulation/RetroSignalProcessor;->blueDiff:[I

    .line 47
    :cond_0
    iget v0, p0, Lcom/ahsim/demulation/RetroSignalProcessor;->beamHeight:I

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RetroSignalProcessor;->beamFactor:[I

    if-nez v0, :cond_2

    .line 48
    :cond_1
    iput p2, p0, Lcom/ahsim/demulation/RetroSignalProcessor;->beamHeight:I

    .line 49
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/ahsim/demulation/RetroSignalProcessor;->beamFactor:[I

    .line 52
    const/4 v0, 0x0

    .local v0, "y":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 53
    int-to-double v1, v0

    const-wide/high16 v3, 0x406c000000000000L    # 224.0

    mul-double/2addr v1, v3

    int-to-double v3, p2

    div-double/2addr v1, v3

    .line 54
    .local v1, "phase":D
    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    .line 55
    .local v3, "beam":D
    int-to-double v5, p2

    const-wide/high16 v7, 0x4075000000000000L    # 336.0

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    .line 56
    .local v5, "visibility":D
    iget-object v7, p0, Lcom/ahsim/demulation/RetroSignalProcessor;->beamFactor:[I

    const-wide v8, 0x3fc0a3d70a3d70a4L    # 0.13

    mul-double/2addr v8, v5

    mul-double/2addr v8, v3

    const-wide v10, 0x3fed70a3d70a3d71L    # 0.92

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4070000000000000L    # 256.0

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    aput v8, v7, v0

    .line 52
    .end local v1    # "phase":D
    .end local v3    # "beam":D
    .end local v5    # "visibility":D
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "y":I
    :cond_2
    return-void
.end method

.method private static green(I)I
    .locals 1
    .param p0, "p"    # I

    .line 64
    ushr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private static luminance(III)I
    .locals 2
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I

    .line 66
    mul-int/lit8 v0, p0, 0x4d

    mul-int/lit16 v1, p1, 0x96

    add-int/2addr v0, v1

    mul-int/lit8 v1, p2, 0x1d

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x80

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private makeCompositeRow([III)V
    .locals 8
    .param p1, "source"    # [I
    .param p2, "base"    # I
    .param p3, "w"    # I

    .line 69
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 70
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 71
    .local v1, "p":I
    invoke-static {v1}, Lcom/ahsim/demulation/RetroSignalProcessor;->red(I)I

    move-result v2

    .local v2, "r":I
    invoke-static {v1}, Lcom/ahsim/demulation/RetroSignalProcessor;->green(I)I

    move-result v3

    .local v3, "g":I
    invoke-static {v1}, Lcom/ahsim/demulation/RetroSignalProcessor;->blue(I)I

    move-result v4

    .line 72
    .local v4, "b":I
    invoke-static {v2, v3, v4}, Lcom/ahsim/demulation/RetroSignalProcessor;->luminance(III)I

    move-result v5

    .line 73
    .local v5, "yy":I
    iget-object v6, p0, Lcom/ahsim/demulation/RetroSignalProcessor;->luma:[I

    aput v5, v6, v0

    .line 74
    iget-object v6, p0, Lcom/ahsim/demulation/RetroSignalProcessor;->redDiff:[I

    sub-int v7, v2, v5

    aput v7, v6, v0

    .line 75
    iget-object v6, p0, Lcom/ahsim/demulation/RetroSignalProcessor;->blueDiff:[I

    sub-int v7, v4, v5

    aput v7, v6, v0

    .line 69
    .end local v1    # "p":I
    .end local v2    # "r":I
    .end local v3    # "g":I
    .end local v4    # "b":I
    .end local v5    # "yy":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "x":I
    :cond_0
    return-void
.end method

.method private static red(I)I
    .locals 1
    .param p0, "p"    # I

    .line 63
    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method process([I[IIII)V
    .locals 9
    .param p1, "source"    # [I
    .param p2, "result"    # [I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "mode"    # I

    .line 24
    if-lez p3, :cond_5

    if-lez p4, :cond_5

    array-length v0, p1

    mul-int v1, p3, p4

    if-lt v0, v1, :cond_5

    array-length v0, p2

    mul-int v1, p3, p4

    if-lt v0, v1, :cond_5

    .line 26
    if-eq p1, p2, :cond_4

    .line 27
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p5, v1, :cond_1

    if-ne p5, v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid video mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_1
    :goto_0
    invoke-direct {p0, p3, p4, p5}, Lcom/ahsim/demulation/RetroSignalProcessor;->ensureRows(III)V

    .line 30
    const/4 v1, 0x0

    .local v1, "y":I
    const/4 v2, 0x0

    move v8, v1

    move v6, v2

    .end local v1    # "y":I
    .local v6, "offset":I
    .local v8, "y":I
    :goto_1
    if-ge v8, p4, :cond_3

    .line 31
    if-ne p5, v0, :cond_2

    .line 32
    invoke-direct {p0, p1, v6, p3}, Lcom/ahsim/demulation/RetroSignalProcessor;->makeCompositeRow([III)V

    .line 33
    invoke-direct {p0, p2, v6, p3, v8}, Lcom/ahsim/demulation/RetroSignalProcessor;->compositeRow([IIII)V

    move-object v4, p1

    move-object v5, p2

    move v7, p3

    goto :goto_2

    .line 35
    :cond_2
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v7, p3

    .end local p1    # "source":[I
    .end local p2    # "result":[I
    .end local p3    # "w":I
    .local v4, "source":[I
    .local v5, "result":[I
    .local v7, "w":I
    invoke-direct/range {v3 .. v8}, Lcom/ahsim/demulation/RetroSignalProcessor;->crtRow([I[IIII)V

    .line 30
    :goto_2
    add-int/lit8 v8, v8, 0x1

    add-int/2addr v6, v7

    move-object p1, v4

    move-object p2, v5

    move p3, v7

    goto :goto_1

    .line 38
    .end local v4    # "source":[I
    .end local v5    # "result":[I
    .end local v6    # "offset":I
    .end local v7    # "w":I
    .end local v8    # "y":I
    .restart local p1    # "source":[I
    .restart local p2    # "result":[I
    .restart local p3    # "w":I
    :cond_3
    return-void

    .line 26
    :cond_4
    move-object v4, p1

    move-object v5, p2

    .end local p1    # "source":[I
    .end local p2    # "result":[I
    .restart local v4    # "source":[I
    .restart local v5    # "result":[I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Distinct source/result required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    .end local v4    # "source":[I
    .end local v5    # "result":[I
    .restart local p1    # "source":[I
    .restart local p2    # "result":[I
    :cond_5
    move-object v4, p1

    move-object v5, p2

    move v7, p3

    .line 25
    .end local p1    # "source":[I
    .end local p2    # "result":[I
    .end local p3    # "w":I
    .restart local v4    # "source":[I
    .restart local v5    # "result":[I
    .restart local v7    # "w":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid video buffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
