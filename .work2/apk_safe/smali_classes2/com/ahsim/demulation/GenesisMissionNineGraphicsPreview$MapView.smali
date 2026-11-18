.class final Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;
.super Landroid/view/View;
.source "GenesisMissionNineGraphicsPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MapView"
.end annotation


# instance fields
.field centered:Z

.field volatile closed:Z

.field frame:Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;

.field final imagePaint:Landroid/graphics/Paint;

.field final labelPaint:Landroid/graphics/Paint;

.field lastX:F

.field lastY:F

.field final rect:Landroid/graphics/RectF;

.field scale:F

.field x:F

.field y:F


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;

    .line 177
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 168
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->imagePaint:Landroid/graphics/Paint;

    .line 169
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->labelPaint:Landroid/graphics/Paint;

    .line 170
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->rect:Landroid/graphics/RectF;

    .line 178
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->setBackgroundColor(I)V

    .line 179
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->labelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 180
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->labelPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v2, 0x41900000    # 18.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 181
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->labelPaint:Landroid/graphics/Paint;

    const/16 v1, 0xd2

    const/16 v2, 0xd6

    const/16 v3, 0xcb

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->labelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 183
    return-void
.end method

.method private centerIfNeeded()V
    .locals 5

    .line 192
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->frame:Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x44100000    # 576.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x43b00000    # 352.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->scale:F

    .line 194
    iget v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->scale:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    return-void

    .line 195
    :cond_1
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->centered:Z

    if-nez v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->frame:Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;

    iget v0, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->startX:F

    const/high16 v1, 0x42000000    # 32.0f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->scale:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->x:F

    .line 197
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->frame:Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;

    iget v0, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->startY:F

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->scale:F

    mul-float/2addr v2, v4

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->y:F

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->centered:Z

    .line 200
    :cond_2
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->clamp()V

    .line 201
    return-void

    .line 192
    :cond_3
    :goto_0
    return-void
.end method

.method private clamp()V
    .locals 5

    .line 204
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->frame:Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->scale:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    iget v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->x:F

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->frame:Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;

    iget v2, v2, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->mapW:I

    mul-int/lit8 v2, v2, 0x20

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->scale:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->x:F

    .line 206
    iget v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->y:F

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->frame:Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;

    iget v2, v2, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->mapH:I

    mul-int/lit8 v2, v2, 0x20

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->scale:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->y:F

    .line 207
    return-void

    .line 204
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method install(Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;)V
    .locals 0
    .param p1, "next"    # Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;

    .line 186
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->frame:Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;

    .line 187
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->centerIfNeeded()V

    .line 188
    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->invalidate()V

    .line 189
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 33
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 239
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 240
    iget-object v2, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->frame:Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;

    .line 241
    .local v2, "f":Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;
    if-nez v2, :cond_0

    .line 242
    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/ahsim/demulation/R$string;->launcher_mission_preview_loading:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 243
    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    iget-object v5, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->labelPaint:Landroid/graphics/Paint;

    .line 242
    invoke-virtual {v1, v3, v4, v6, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 244
    return-void

    .line 246
    :cond_0
    iget v3, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->scale:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    invoke-direct {v0}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->centerIfNeeded()V

    .line 247
    :cond_1
    iget v3, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->scale:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    return-void

    .line 248
    :cond_2
    iget v3, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->scale:F

    const/high16 v4, 0x42000000    # 32.0f

    mul-float/2addr v3, v4

    .line 249
    .local v3, "size":F
    iget v5, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->x:F

    div-float/2addr v5, v4

    float-to-int v5, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    const/4 v7, 0x0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 250
    .local v5, "left":I
    iget v8, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->y:F

    div-float/2addr v8, v4

    float-to-int v8, v8

    sub-int/2addr v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 251
    .local v8, "top":I
    iget v9, v2, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->mapW:I

    iget v10, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->x:F

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget v12, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->scale:F

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    div-float/2addr v10, v4

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    add-int/2addr v10, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 252
    .local v9, "right":I
    iget v10, v2, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->mapH:I

    iget v11, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->y:F

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    iget v13, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->scale:F

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    div-float/2addr v11, v4

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    add-int/2addr v11, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 254
    .local v10, "bottom":I
    move v11, v8

    .local v11, "iy":I
    :goto_0
    const/16 v13, 0xe

    if-ge v11, v10, :cond_8

    move v15, v5

    .local v15, "ix":I
    :goto_1
    if-ge v15, v9, :cond_7

    .line 255
    move/from16 v16, v4

    iget v4, v2, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->minY:I

    add-int/2addr v4, v11

    shl-int/lit8 v4, v4, 0x6

    iget v7, v2, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->minX:I

    add-int/2addr v7, v15

    or-int/2addr v4, v7

    .line 256
    .local v4, "packed":I
    iget-object v7, v2, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->words:[I

    add-int/lit8 v17, v4, 0x10

    aget v7, v7, v17

    .line 257
    .local v7, "word":I
    and-int/lit8 v12, v7, 0xf

    .line 258
    .local v12, "type":I
    const/16 v6, 0xa

    if-ne v12, v6, :cond_3

    const/16 v6, 0x7e

    goto :goto_2

    :cond_3
    if-ne v12, v13, :cond_4

    const/16 v6, 0xd0

    goto :goto_2

    :cond_4
    ushr-int/lit8 v6, v7, 0x8

    and-int/lit16 v6, v6, 0xff

    .line 259
    .local v6, "id":I
    :goto_2
    iget-object v13, v2, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->terrain:Lcom/ahsim/demulation/GenesisTerrainArt;

    invoke-virtual {v13, v6}, Lcom/ahsim/demulation/GenesisTerrainArt;->getMetatile(I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 260
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    mul-int/lit8 v14, v15, 0x20

    int-to-float v14, v14

    move/from16 v19, v3

    .end local v3    # "size":F
    .local v19, "size":F
    iget v3, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->x:F

    sub-float/2addr v14, v3

    iget v3, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->scale:F

    mul-float/2addr v14, v3

    .local v14, "px":F
    mul-int/lit8 v3, v11, 0x20

    int-to-float v3, v3

    move/from16 v20, v3

    iget v3, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->y:F

    sub-float v3, v20, v3

    move/from16 v20, v3

    iget v3, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->scale:F

    mul-float v3, v3, v20

    .line 261
    .local v3, "py":F
    move/from16 v20, v4

    .end local v4    # "packed":I
    .local v20, "packed":I
    iget-object v4, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->rect:Landroid/graphics/RectF;

    move/from16 v21, v6

    .end local v6    # "id":I
    .local v21, "id":I
    add-float v6, v14, v19

    move/from16 v22, v7

    .end local v7    # "word":I
    .local v22, "word":I
    add-float v7, v3, v19

    invoke-virtual {v4, v14, v3, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 262
    if-eqz v13, :cond_5

    iget-object v4, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->rect:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->imagePaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v1, v13, v7, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 263
    :cond_5
    iget-object v4, v2, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->terrain:Lcom/ahsim/demulation/GenesisTerrainArt;

    ushr-int/lit8 v6, v22, 0x4

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v4, v6}, Lcom/ahsim/demulation/GenesisTerrainArt;->getImpactOverlay(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 264
    .local v4, "impact":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_6

    iget-object v6, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->rect:Landroid/graphics/RectF;

    iget-object v7, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->imagePaint:Landroid/graphics/Paint;

    move/from16 v23, v3

    const/4 v3, 0x0

    .end local v3    # "py":F
    .local v23, "py":F
    invoke-virtual {v1, v4, v3, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_3

    .end local v23    # "py":F
    .restart local v3    # "py":F
    :cond_6
    move/from16 v23, v3

    .line 254
    .end local v3    # "py":F
    .end local v4    # "impact":Landroid/graphics/Bitmap;
    .end local v12    # "type":I
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    .end local v14    # "px":F
    .end local v20    # "packed":I
    .end local v21    # "id":I
    .end local v22    # "word":I
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v16

    move/from16 v3, v19

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v13, 0xe

    goto/16 :goto_1

    .end local v19    # "size":F
    .local v3, "size":F
    :cond_7
    move/from16 v19, v3

    move/from16 v16, v4

    .end local v3    # "size":F
    .end local v15    # "ix":I
    .restart local v19    # "size":F
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    .end local v19    # "size":F
    .restart local v3    # "size":F
    :cond_8
    move/from16 v19, v3

    move/from16 v16, v4

    .line 267
    .end local v3    # "size":F
    .end local v11    # "iy":I
    .restart local v19    # "size":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    const/high16 v4, -0x80000000

    const/16 v6, 0x80

    if-ge v3, v6, :cond_11

    .line 268
    mul-int/lit8 v6, v3, 0xc

    add-int/lit16 v6, v6, 0x1210

    .line 269
    .local v6, "base":I
    iget-object v7, v2, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->words:[I

    aget v7, v7, v6

    .line 270
    .local v7, "meta":I
    and-int/2addr v4, v7

    if-nez v4, :cond_9

    move/from16 v20, v3

    move/from16 v24, v5

    move/from16 v26, v8

    goto/16 :goto_9

    .line 271
    :cond_9
    ushr-int/lit8 v4, v7, 0x8

    and-int/lit16 v4, v4, 0xff

    .line 272
    .local v4, "type":I
    ushr-int/lit8 v11, v7, 0x10

    and-int/lit16 v11, v11, 0xff

    const/16 v12, 0x9

    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 273
    .local v11, "count":I
    iget-object v12, v2, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->words:[I

    add-int/lit8 v13, v6, 0x1

    aget v12, v12, v13

    and-int/lit16 v12, v12, 0xfff

    .line 274
    .local v12, "anchor":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_5
    if-ge v13, v11, :cond_10

    .line 275
    iget-object v14, v2, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->words:[I

    add-int/lit8 v15, v6, 0x3

    add-int/2addr v15, v13

    aget v14, v14, v15

    and-int/lit16 v14, v14, 0xfff

    .line 276
    .local v14, "cell":I
    and-int/lit8 v15, v14, 0x3f

    move/from16 v20, v3

    .end local v3    # "i":I
    .local v20, "i":I
    iget v3, v2, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->minX:I

    sub-int/2addr v15, v3

    .restart local v15    # "ix":I
    ushr-int/lit8 v3, v14, 0x6

    move/from16 v21, v3

    iget v3, v2, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->minY:I

    sub-int v3, v21, v3

    .line 277
    .local v3, "iy":I
    if-lt v15, v5, :cond_f

    if-ge v15, v9, :cond_f

    if-lt v3, v8, :cond_f

    if-lt v3, v10, :cond_a

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v21, v6

    move/from16 v25, v7

    move/from16 v26, v8

    goto/16 :goto_8

    .line 279
    :cond_a
    if-eqz v4, :cond_d

    move/from16 v21, v6

    const/4 v6, 0x1

    .end local v6    # "base":I
    .local v21, "base":I
    if-ne v4, v6, :cond_b

    move/from16 v22, v3

    goto :goto_6

    .line 280
    :cond_b
    const/16 v6, 0xe

    if-ne v4, v6, :cond_c

    iget-object v6, v2, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->terrain:Lcom/ahsim/demulation/GenesisTerrainArt;

    move/from16 v22, v3

    .end local v3    # "iy":I
    .local v22, "iy":I
    const/16 v3, 0x23

    invoke-virtual {v6, v3}, Lcom/ahsim/demulation/GenesisTerrainArt;->getMetatile(I)Landroid/graphics/Bitmap;

    move-result-object v3

    const/16 v6, 0x7e

    .local v3, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_7

    .line 281
    .end local v22    # "iy":I
    .local v3, "iy":I
    :cond_c
    move/from16 v22, v3

    .end local v3    # "iy":I
    .restart local v22    # "iy":I
    iget-object v3, v2, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->objects:Lcom/ahsim/demulation/GenesisObjectArt;

    invoke-virtual {v3, v4, v12, v14}, Lcom/ahsim/demulation/GenesisObjectArt;->getPreferredStructureMetatileBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v3

    const/16 v6, 0x7e

    .local v3, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_7

    .line 279
    .end local v21    # "base":I
    .end local v22    # "iy":I
    .local v3, "iy":I
    .restart local v6    # "base":I
    :cond_d
    move/from16 v22, v3

    move/from16 v21, v6

    .end local v3    # "iy":I
    .end local v6    # "base":I
    .restart local v21    # "base":I
    .restart local v22    # "iy":I
    :goto_6
    iget-object v3, v2, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->terrain:Lcom/ahsim/demulation/GenesisTerrainArt;

    const/16 v6, 0x7e

    invoke-virtual {v3, v6}, Lcom/ahsim/demulation/GenesisTerrainArt;->getMetatile(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 282
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    :goto_7
    if-nez v3, :cond_e

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v7

    move/from16 v26, v8

    goto :goto_8

    .line 283
    :cond_e
    mul-int/lit8 v6, v15, 0x20

    int-to-float v6, v6

    move/from16 v23, v4

    .end local v4    # "type":I
    .local v23, "type":I
    iget v4, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->x:F

    sub-float/2addr v6, v4

    iget v4, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->scale:F

    mul-float/2addr v6, v4

    .local v6, "px":F
    mul-int/lit8 v4, v22, 0x20

    int-to-float v4, v4

    move/from16 v24, v4

    iget v4, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->y:F

    sub-float v4, v24, v4

    move/from16 v24, v4

    iget v4, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->scale:F

    mul-float v4, v4, v24

    .line 284
    .local v4, "py":F
    move/from16 v24, v5

    .end local v5    # "left":I
    .local v24, "left":I
    iget-object v5, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->rect:Landroid/graphics/RectF;

    move/from16 v25, v7

    .end local v7    # "meta":I
    .local v25, "meta":I
    add-float v7, v6, v19

    move/from16 v26, v8

    .end local v8    # "top":I
    .local v26, "top":I
    add-float v8, v4, v19

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 285
    iget-object v5, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->rect:Landroid/graphics/RectF;

    iget-object v7, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->imagePaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v1, v3, v8, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_8

    .line 277
    .end local v21    # "base":I
    .end local v22    # "iy":I
    .end local v23    # "type":I
    .end local v24    # "left":I
    .end local v25    # "meta":I
    .end local v26    # "top":I
    .local v3, "iy":I
    .local v4, "type":I
    .restart local v5    # "left":I
    .local v6, "base":I
    .restart local v7    # "meta":I
    .restart local v8    # "top":I
    :cond_f
    move/from16 v22, v3

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v21, v6

    move/from16 v25, v7

    move/from16 v26, v8

    .line 274
    .end local v3    # "iy":I
    .end local v4    # "type":I
    .end local v5    # "left":I
    .end local v6    # "base":I
    .end local v7    # "meta":I
    .end local v8    # "top":I
    .end local v14    # "cell":I
    .end local v15    # "ix":I
    .restart local v21    # "base":I
    .restart local v23    # "type":I
    .restart local v24    # "left":I
    .restart local v25    # "meta":I
    .restart local v26    # "top":I
    :goto_8
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v20

    move/from16 v6, v21

    move/from16 v4, v23

    move/from16 v5, v24

    move/from16 v7, v25

    move/from16 v8, v26

    goto/16 :goto_5

    .end local v20    # "i":I
    .end local v21    # "base":I
    .end local v23    # "type":I
    .end local v24    # "left":I
    .end local v25    # "meta":I
    .end local v26    # "top":I
    .local v3, "i":I
    .restart local v4    # "type":I
    .restart local v5    # "left":I
    .restart local v6    # "base":I
    .restart local v7    # "meta":I
    .restart local v8    # "top":I
    :cond_10
    move/from16 v20, v3

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v21, v6

    move/from16 v25, v7

    move/from16 v26, v8

    .line 267
    .end local v3    # "i":I
    .end local v4    # "type":I
    .end local v5    # "left":I
    .end local v6    # "base":I
    .end local v7    # "meta":I
    .end local v8    # "top":I
    .end local v11    # "count":I
    .end local v12    # "anchor":I
    .end local v13    # "j":I
    .restart local v20    # "i":I
    .restart local v24    # "left":I
    .restart local v26    # "top":I
    :goto_9
    add-int/lit8 v3, v20, 0x1

    move/from16 v5, v24

    move/from16 v8, v26

    .end local v20    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_4

    .end local v24    # "left":I
    .end local v26    # "top":I
    .restart local v5    # "left":I
    .restart local v8    # "top":I
    :cond_11
    move/from16 v20, v3

    move/from16 v24, v5

    move v3, v6

    move/from16 v26, v8

    .line 289
    .end local v3    # "i":I
    .end local v5    # "left":I
    .end local v8    # "top":I
    .restart local v24    # "left":I
    .restart local v26    # "top":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_a
    if-ge v5, v3, :cond_18

    .line 290
    mul-int/lit8 v6, v5, 0x4

    add-int/lit16 v6, v6, 0x1010

    .line 291
    .restart local v6    # "base":I
    iget-object v7, v2, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->words:[I

    aget v7, v7, v6

    .line 292
    .restart local v7    # "meta":I
    and-int v8, v7, v4

    if-nez v8, :cond_12

    move-object/from16 v18, v2

    move/from16 v21, v5

    const/4 v0, 0x0

    goto/16 :goto_c

    .line 293
    :cond_12
    ushr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    .line 294
    .local v8, "type":I
    iget-object v11, v2, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->words:[I

    add-int/lit8 v12, v6, 0x2

    aget v11, v11, v12

    and-int/lit16 v11, v11, 0xfff

    .line 295
    .local v11, "packed":I
    and-int/lit8 v12, v11, 0x3f

    iget v13, v2, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->minX:I

    sub-int/2addr v12, v13

    .local v12, "ix":I
    ushr-int/lit8 v13, v11, 0x6

    iget v14, v2, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->minY:I

    sub-int/2addr v13, v14

    .line 296
    .local v13, "iy":I
    add-int/lit8 v14, v24, -0x2

    if-lt v12, v14, :cond_17

    add-int/lit8 v14, v9, 0x2

    if-gt v12, v14, :cond_17

    add-int/lit8 v14, v26, -0x2

    if-lt v13, v14, :cond_17

    add-int/lit8 v14, v10, 0x2

    if-le v13, v14, :cond_13

    move-object/from16 v18, v2

    move/from16 v21, v5

    const/4 v0, 0x0

    goto/16 :goto_c

    .line 297
    :cond_13
    iget-object v14, v2, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->unitAux:[I

    aget v14, v14, v5

    .line 298
    .local v14, "aux":I
    iget-object v15, v2, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->objects:Lcom/ahsim/demulation/GenesisObjectArt;

    ushr-int/lit8 v3, v7, 0x10

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v4, v14, 0x10

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v18, v2

    .end local v2    # "f":Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;
    .local v18, "f":Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;
    and-int/lit16 v2, v14, 0xff

    .line 300
    move/from16 v31, v2

    const/16 v2, 0x19

    if-ne v8, v2, :cond_14

    const/16 v32, 0x0

    goto :goto_b

    :cond_14
    and-int/lit16 v2, v7, 0xff

    move/from16 v32, v2

    .line 298
    :goto_b
    move/from16 v29, v3

    move/from16 v30, v4

    move/from16 v28, v8

    move-object/from16 v27, v15

    .end local v8    # "type":I
    .local v28, "type":I
    invoke-virtual/range {v27 .. v32}, Lcom/ahsim/demulation/GenesisObjectArt;->getUnitFrame(IIIII)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    move-result-object v2

    .line 301
    .local v2, "image":Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    if-eqz v2, :cond_16

    iget-object v3, v2, Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;->bitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_15

    move/from16 v21, v5

    const/4 v0, 0x0

    goto :goto_c

    .line 302
    :cond_15
    int-to-float v3, v12

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    mul-float v3, v3, v16

    iget v8, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->x:F

    sub-float/2addr v3, v8

    iget v8, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->scale:F

    mul-float/2addr v3, v8

    .line 303
    .local v3, "cx":F
    int-to-float v8, v13

    add-float/2addr v8, v4

    mul-float v8, v8, v16

    iget v4, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->y:F

    sub-float/2addr v8, v4

    iget v4, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->scale:F

    mul-float/2addr v8, v4

    .line 304
    .local v8, "cy":F
    iget v4, v2, Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;->minX:I

    int-to-float v4, v4

    iget v15, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->scale:F

    mul-float/2addr v4, v15

    add-float/2addr v4, v3

    .local v4, "px":F
    iget v15, v2, Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;->minY:I

    int-to-float v15, v15

    move/from16 v20, v3

    .end local v3    # "cx":F
    .local v20, "cx":F
    iget v3, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->scale:F

    mul-float/2addr v15, v3

    add-float/2addr v15, v8

    .line 305
    .local v15, "py":F
    iget-object v3, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->rect:Landroid/graphics/RectF;

    move/from16 v21, v5

    .end local v5    # "i":I
    .local v21, "i":I
    iget-object v5, v2, Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    move/from16 v22, v5

    iget v5, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->scale:F

    mul-float v5, v5, v22

    add-float/2addr v5, v4

    move/from16 v22, v6

    .end local v6    # "base":I
    .local v22, "base":I
    iget-object v6, v2, Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;->bitmap:Landroid/graphics/Bitmap;

    .line 306
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move/from16 v23, v6

    iget v6, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->scale:F

    mul-float v6, v6, v23

    add-float/2addr v6, v15

    .line 305
    invoke-virtual {v3, v4, v15, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 307
    iget-object v3, v2, Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;->bitmap:Landroid/graphics/Bitmap;

    iget-object v5, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->rect:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->imagePaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {v1, v3, v0, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_c

    .line 301
    .end local v4    # "px":F
    .end local v8    # "cy":F
    .end local v15    # "py":F
    .end local v20    # "cx":F
    .end local v21    # "i":I
    .end local v22    # "base":I
    .restart local v5    # "i":I
    .restart local v6    # "base":I
    :cond_16
    move/from16 v21, v5

    move/from16 v22, v6

    const/4 v0, 0x0

    .end local v5    # "i":I
    .end local v6    # "base":I
    .restart local v21    # "i":I
    .restart local v22    # "base":I
    goto :goto_c

    .line 296
    .end local v14    # "aux":I
    .end local v18    # "f":Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;
    .end local v21    # "i":I
    .end local v22    # "base":I
    .end local v28    # "type":I
    .local v2, "f":Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;
    .restart local v5    # "i":I
    .restart local v6    # "base":I
    .local v8, "type":I
    :cond_17
    move-object/from16 v18, v2

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v28, v8

    const/4 v0, 0x0

    .line 289
    .end local v2    # "f":Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;
    .end local v5    # "i":I
    .end local v6    # "base":I
    .end local v7    # "meta":I
    .end local v8    # "type":I
    .end local v11    # "packed":I
    .end local v12    # "ix":I
    .end local v13    # "iy":I
    .restart local v18    # "f":Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;
    .restart local v21    # "i":I
    :goto_c
    add-int/lit8 v5, v21, 0x1

    const/16 v3, 0x80

    const/high16 v4, -0x80000000

    move-object/from16 v0, p0

    move-object/from16 v2, v18

    .end local v21    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_a

    .line 309
    .end local v5    # "i":I
    .end local v18    # "f":Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;
    .restart local v2    # "f":Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;
    :cond_18
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "ow"    # I
    .param p4, "oh"    # I

    .line 210
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 211
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->centerIfNeeded()V

    .line 212
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 215
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->frame:Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 216
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 234
    return v1

    .line 222
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->scale:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .local v0, "nextX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 224
    .local v2, "nextY":F
    iget v3, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->x:F

    iget v4, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->lastX:F

    sub-float v4, v0, v4

    iget v5, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->scale:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->x:F

    .line 225
    iget v3, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->y:F

    iget v4, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->lastY:F

    sub-float v4, v2, v4

    iget v5, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->scale:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->y:F

    .line 226
    iput v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->lastX:F

    .line 227
    iput v2, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->lastY:F

    .line 228
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->clamp()V

    .line 229
    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->invalidate()V

    .line 230
    return v1

    .line 222
    .end local v0    # "nextX":F
    .end local v2    # "nextY":F
    :cond_2
    :goto_0
    return v1

    .line 233
    :pswitch_1
    return v1

    .line 218
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->lastX:F

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->lastY:F

    .line 220
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
