.class final Lcom/ahsim/demulation/RetroVideoFilter;
.super Ljava/lang/Object;
.source "RetroVideoFilter.java"


# static fields
.field static final COMPOSITE_TV:I = 0x2

.field static final CRT_MONITOR:I = 0x1

.field static final LEGACY_COMPOSITE_TV:I = 0x2

.field static final OFF:I = 0x0

.field static final OLD_TV:I = 0x1


# instance fields
.field private final edge:Landroid/graphics/Paint;

.field private patternH:I

.field private patternW:I

.field private final phosphor:Landroid/graphics/Paint;

.field private tileKeepAlive:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/RetroVideoFilter;->phosphor:Landroid/graphics/Paint;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ahsim/demulation/RetroVideoFilter;->edge:Landroid/graphics/Paint;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/RetroVideoFilter;->patternW:I

    iput v0, p0, Lcom/ahsim/demulation/RetroVideoFilter;->patternH:I

    return-void
.end method

.method private ensurePattern(II)V
    .locals 19
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 41
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget v3, v0, Lcom/ahsim/demulation/RetroVideoFilter;->patternW:I

    if-ne v1, v3, :cond_0

    iget v3, v0, Lcom/ahsim/demulation/RetroVideoFilter;->patternH:I

    if-ne v2, v3, :cond_0

    return-void

    .line 44
    :cond_0
    int-to-float v3, v2

    const/high16 v4, 0x43600000    # 224.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/16 v4, 0x9

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 45
    .local v3, "period":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x6

    invoke-static {v6, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 46
    .local v5, "tile":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_0
    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x40000000    # 2.0f

    if-ge v7, v3, :cond_7

    .line 47
    int-to-float v10, v7

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    int-to-float v11, v3

    div-float/2addr v10, v11

    .line 48
    .local v10, "t":F
    const v11, 0x3f051eb8    # 0.52f

    sub-float v11, v10, v11

    const v12, 0x3ef5c28f    # 0.48f

    div-float/2addr v11, v12

    invoke-static {v8, v11}, Ljava/lang/Math;->min(FF)F

    move-result v8

    const/4 v11, 0x0

    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 49
    .local v8, "edgePhase":F
    mul-float v11, v8, v8

    const/high16 v12, 0x40400000    # 3.0f

    mul-float/2addr v9, v8

    sub-float/2addr v12, v9

    mul-float/2addr v11, v12

    .line 50
    .local v11, "softened":F
    const/high16 v9, 0x42580000    # 54.0f

    mul-float/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 51
    .local v9, "gap":I
    const/4 v12, 0x0

    .local v12, "x":I
    :goto_1
    if-ge v12, v6, :cond_6

    .line 53
    div-int/lit8 v13, v12, 0x2

    .line 54
    .local v13, "triad":I
    const/4 v14, 0x1

    if-nez v13, :cond_1

    const/16 v15, 0xd

    goto :goto_2

    :cond_1
    if-ne v13, v14, :cond_2

    const/16 v15, 0xa

    goto :goto_2

    :cond_2
    const/16 v15, 0xe

    :goto_2
    add-int/2addr v15, v9

    const/16 v6, 0x5a

    invoke-static {v6, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 55
    .local v6, "alpha":I
    const/4 v15, 0x2

    if-nez v13, :cond_3

    const/16 v17, 0xc

    goto :goto_3

    :cond_3
    move/from16 v17, v15

    :goto_3
    move/from16 v18, v17

    .line 56
    .local v18, "r":I
    if-ne v13, v14, :cond_4

    const/16 v14, 0xb

    goto :goto_4

    :cond_4
    move v14, v15

    .line 57
    .local v14, "g":I
    :goto_4
    if-ne v13, v15, :cond_5

    const/16 v15, 0xc

    .line 58
    .local v15, "b":I
    :cond_5
    move/from16 v17, v3

    move/from16 v4, v18

    .end local v3    # "period":I
    .end local v18    # "r":I
    .local v4, "r":I
    .local v17, "period":I
    invoke-static {v6, v4, v14, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v5, v12, v7, v3}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 51
    .end local v4    # "r":I
    .end local v6    # "alpha":I
    .end local v13    # "triad":I
    .end local v14    # "g":I
    .end local v15    # "b":I
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v17

    const/4 v4, 0x3

    const/4 v6, 0x6

    goto :goto_1

    .end local v17    # "period":I
    .restart local v3    # "period":I
    :cond_6
    move/from16 v17, v3

    .line 46
    .end local v3    # "period":I
    .end local v8    # "edgePhase":F
    .end local v9    # "gap":I
    .end local v10    # "t":F
    .end local v11    # "softened":F
    .end local v12    # "x":I
    .restart local v17    # "period":I
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x3

    const/4 v6, 0x6

    goto :goto_0

    .end local v17    # "period":I
    .restart local v3    # "period":I
    :cond_7
    move/from16 v17, v3

    .line 61
    .end local v3    # "period":I
    .end local v7    # "y":I
    .restart local v17    # "period":I
    iget-object v3, v0, Lcom/ahsim/demulation/RetroVideoFilter;->phosphor:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v5, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 62
    int-to-float v3, v1

    div-float/2addr v3, v9

    float-to-double v3, v3

    int-to-float v6, v2

    div-float/2addr v6, v9

    float-to-double v6, v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    .line 63
    .local v3, "radius":F
    iget-object v4, v0, Lcom/ahsim/demulation/RetroVideoFilter;->edge:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/RadialGradient;

    int-to-float v6, v1

    div-float v11, v6, v9

    int-to-float v6, v2

    div-float v12, v6, v9

    .line 64
    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 65
    const/16 v6, 0x2f

    const/4 v7, 0x0

    invoke-static {v6, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    filled-new-array {v7, v7, v6}, [I

    move-result-object v14

    const/4 v6, 0x3

    new-array v15, v6, [F

    fill-array-data v15, :array_0

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v10 .. v16}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 63
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 67
    iput-object v5, v0, Lcom/ahsim/demulation/RetroVideoFilter;->tileKeepAlive:Landroid/graphics/Bitmap;

    .line 68
    iput v1, v0, Lcom/ahsim/demulation/RetroVideoFilter;->patternW:I

    .line 69
    iput v2, v0, Lcom/ahsim/demulation/RetroVideoFilter;->patternH:I

    .line 70
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static normalizeMode(I)I
    .locals 2
    .param p0, "saved"    # I

    .line 25
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method drawOverlay(Landroid/graphics/Canvas;II)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 34
    if-lez p2, :cond_1

    if-gtz p3, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 35
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/ahsim/demulation/RetroVideoFilter;->ensurePattern(II)V

    .line 36
    int-to-float v3, p2

    int-to-float v4, p3

    iget-object v5, p0, Lcom/ahsim/demulation/RetroVideoFilter;->phosphor:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 37
    int-to-float v9, p2

    int-to-float v10, p3

    iget-object v11, p0, Lcom/ahsim/demulation/RetroVideoFilter;->edge:Landroid/graphics/Paint;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v0

    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .local v6, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 38
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    return-void

    .line 34
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    move-object v0, p1

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    :goto_0
    return-void
.end method
