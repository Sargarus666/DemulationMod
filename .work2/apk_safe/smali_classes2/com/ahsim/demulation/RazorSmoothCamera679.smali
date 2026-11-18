.class public final Lcom/ahsim/demulation/RazorSmoothCamera679;
.super Ljava/lang/Object;
.source "RazorSmoothCamera679.java"


# instance fields
.field private initialized:Z

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drag(FFFIIIIIIIIII)Z
    .locals 17
    .param p1, "screenDx"    # F
    .param p2, "screenDy"    # F
    .param p3, "cellPixels"    # F
    .param p4, "minX"    # I
    .param p5, "minY"    # I
    .param p6, "maxX"    # I
    .param p7, "maxY"    # I
    .param p8, "viewCols"    # I
    .param p9, "viewRows"    # I
    .param p10, "cacheX"    # I
    .param p11, "cacheY"    # I
    .param p12, "cacheCols"    # I
    .param p13, "cacheRows"    # I

    .line 22
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p8

    move/from16 v4, p9

    move/from16 v5, p10

    move/from16 v6, p11

    move/from16 v7, p12

    move/from16 v8, p13

    iget-boolean v9, v0, Lcom/ahsim/demulation/RazorSmoothCamera679;->initialized:Z

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    cmpl-float v9, p3, v9

    if-lez v9, :cond_5

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v9

    if-nez v9, :cond_5

    .line 23
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v16, 0x0

    goto :goto_2

    .line 24
    :cond_0
    int-to-float v9, v1

    .local v9, "lowX":F
    int-to-float v11, v2

    .line 25
    .local v11, "lowY":F
    sub-int v12, p6, v3

    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    int-to-float v12, v12

    .line 26
    .local v12, "highX":F
    sub-int v13, p7, v4

    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-float v13, v13

    .line 30
    .local v13, "highY":F
    if-lt v7, v3, :cond_1

    if-lt v8, v4, :cond_1

    .line 31
    int-to-float v14, v5

    invoke-static {v9, v14}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 32
    int-to-float v14, v6

    invoke-static {v11, v14}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 33
    add-int v14, v5, v7

    sub-int/2addr v14, v3

    int-to-float v14, v14

    invoke-static {v12, v14}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 34
    add-int v14, v6, v8

    sub-int/2addr v14, v4

    int-to-float v14, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 36
    :cond_1
    invoke-static {v9, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    invoke-static {v11, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 37
    iget v14, v0, Lcom/ahsim/demulation/RazorSmoothCamera679;->x:F

    div-float v15, p1, p3

    add-float/2addr v14, v15

    invoke-static {v12, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-static {v9, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 38
    .local v14, "nx":F
    iget v15, v0, Lcom/ahsim/demulation/RazorSmoothCamera679;->y:F

    div-float v16, p2, p3

    add-float v15, v15, v16

    invoke-static {v13, v15}, Ljava/lang/Math;->min(FF)F

    move-result v15

    invoke-static {v11, v15}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 39
    .local v15, "ny":F
    const/16 v16, 0x0

    iget v10, v0, Lcom/ahsim/demulation/RazorSmoothCamera679;->x:F

    cmpl-float v10, v14, v10

    if-nez v10, :cond_3

    iget v10, v0, Lcom/ahsim/demulation/RazorSmoothCamera679;->y:F

    cmpl-float v10, v15, v10

    if-eqz v10, :cond_2

    goto :goto_0

    :cond_2
    move/from16 v10, v16

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v10, 0x1

    .line 40
    .local v10, "changed":Z
    :goto_1
    iput v14, v0, Lcom/ahsim/demulation/RazorSmoothCamera679;->x:F

    iput v15, v0, Lcom/ahsim/demulation/RazorSmoothCamera679;->y:F

    .line 41
    return v10

    .line 23
    .end local v9    # "lowX":F
    .end local v10    # "changed":Z
    .end local v11    # "lowY":F
    .end local v12    # "highX":F
    .end local v13    # "highY":F
    .end local v14    # "nx":F
    .end local v15    # "ny":F
    :cond_4
    const/16 v16, 0x0

    goto :goto_2

    .line 22
    :cond_5
    const/16 v16, 0x0

    .line 23
    :goto_2
    return v16
.end method

.method public ensure(II)V
    .locals 1
    .param p1, "tileX"    # I
    .param p2, "tileY"    # I

    .line 17
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorSmoothCamera679;->initialized:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/ahsim/demulation/RazorSmoothCamera679;->reset(II)V

    .line 18
    :cond_0
    return-void
.end method

.method public reset(II)V
    .locals 1
    .param p1, "tileX"    # I
    .param p2, "tileY"    # I

    .line 14
    int-to-float v0, p1

    iput v0, p0, Lcom/ahsim/demulation/RazorSmoothCamera679;->x:F

    int-to-float v0, p2

    iput v0, p0, Lcom/ahsim/demulation/RazorSmoothCamera679;->y:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSmoothCamera679;->initialized:Z

    .line 15
    return-void
.end method
