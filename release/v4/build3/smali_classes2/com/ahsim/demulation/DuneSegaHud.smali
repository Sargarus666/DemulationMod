.class public final Lcom/ahsim/demulation/DuneSegaHud;
.super Ljava/lang/Object;
.source "DuneSegaHud.java"


# static fields
.field private static cachedTypeface:Landroid/graphics/Typeface;

.field private static appContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aboveRadarRect(Landroid/graphics/RectF;FILandroid/graphics/RectF;)V
    .locals 6

    if-nez p3, :cond_ret

    return-void

    :cond_ret
    if-eqz p0, :cond_empty

    invoke-virtual {p0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ok

    goto :goto_empty

    :cond_ok
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x42900000    # 72.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x42900000    # 72.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v1

    sub-float/2addr v0, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v0, v3

    const/high16 v3, 0x41000000    # 8.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_calc

    goto :goto_empty

    :cond_calc
    rem-int/lit8 v3, p2, 0x3

    div-int/lit8 p2, p2, 0x3

    iget v4, p0, Landroid/graphics/RectF;->right:F

    iget p0, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p0, v2

    int-to-float p2, p2

    add-float v2, v0, v2

    mul-float/2addr p2, v2

    sub-float/2addr p0, p2

    sub-float/2addr v4, v0

    rsub-int/lit8 p2, v3, 0x2

    int-to-float p2, p2

    add-float v2, v1, v0

    mul-float/2addr p2, v2

    sub-float/2addr v4, p2

    sub-float p2, p0, v0

    add-float/2addr v0, v4

    invoke-virtual {p3, v4, p2, v0, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void

    :cond_empty
    :goto_empty
    invoke-virtual {p3}, Landroid/graphics/RectF;->setEmpty()V

    return-void
.end method

.method public static applyFont(Landroid/graphics/Paint;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/ahsim/demulation/DuneSegaHud;->cachedTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_set

    sget-object v1, Lcom/ahsim/demulation/DuneSegaHud;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_set

    invoke-static {v1}, Lcom/ahsim/demulation/DuneSegaHud;->typeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    :cond_set
    if-eqz v0, :cond_bold

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_bold
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method

.method private static drawBaseIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .locals 16

    .line 152
    move-object/from16 v6, p3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v1, v1, p2

    add-float v8, v0, v1

    .line 153
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 154
    const v0, 0x3f866666    # 1.05f

    mul-float v0, v0, p2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 155
    const/16 v0, -0x1852

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    const v0, 0x40b9999a    # 5.8f

    mul-float v0, v0, p2

    sub-float v1, v7, v0

    const v2, 0x3e99999a    # 0.3f

    mul-float v2, v2, p2

    sub-float v9, v8, v2

    add-float v10, v7, v0

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float v0, v0, p2

    add-float v11, v8, v0

    move-object/from16 v0, p0

    move v2, v9

    move v3, v10

    move v4, v11

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 157
    const/high16 v0, 0x40d00000    # 6.5f

    mul-float v12, p2, v0

    sub-float v1, v7, v12

    const v0, 0x40733333    # 3.8f

    mul-float v13, p2, v0

    sub-float v14, v7, v13

    const v0, 0x40866666    # 4.2f

    mul-float v0, v0, p2

    sub-float v15, v8, v0

    move-object/from16 v0, p0

    move v3, v14

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 158
    add-float/2addr v13, v7

    move v1, v14

    move v2, v15

    move v3, v13

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 159
    add-float v3, v7, v12

    move v1, v13

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 160
    const/high16 v0, 0x40200000    # 2.5f

    mul-float v9, p2, v0

    sub-float v3, v7, v9

    move-object/from16 v0, p0

    move v1, v3

    move v2, v11

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 161
    add-float/2addr v7, v9

    const v0, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, p2

    add-float/2addr v8, v0

    move-object/from16 v0, p0

    move v1, v7

    move v3, v7

    move v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 162
    move v2, v8

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 163
    return-void
.end method

.method public static drawHudButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;IZLandroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 21

    .line 94
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v8, :cond_6

    if-nez v9, :cond_0

    goto/16 :goto_5

    .line 95
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr v0, v1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 96
    iget v12, v7, Landroid/graphics/RectF;->left:F

    iget v13, v7, Landroid/graphics/RectF;->top:F

    iget v14, v7, Landroid/graphics/RectF;->right:F

    iget v15, v7, Landroid/graphics/RectF;->bottom:F

    .line 98
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    const/high16 v0, -0x56000000

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    const v0, 0x3f99999a    # 1.2f

    mul-float v0, v0, v11

    add-float v1, v12, v0

    add-float v2, v13, v0

    add-float v3, v14, v0

    add-float v4, v15, v0

    move-object/from16 v0, p0

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 102
    const v0, -0xf4f1f0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 105
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    const v0, 0x3f8ccccd    # 1.1f

    mul-float v0, v0, v11

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 107
    if-eqz p3, :cond_1

    const v0, -0x2748a4

    goto :goto_0

    :cond_1
    const v0, -0x949cb0

    :goto_0
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v0, v0, v11

    add-float v1, v12, v0

    add-float v2, v13, v0

    sub-float v3, v14, v0

    sub-float v4, v15, v0

    move-object/from16 v0, p0

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 110
    const v0, 0x3fe66666    # 1.8f

    mul-float v0, v0, v11

    .line 111
    if-eqz p3, :cond_2

    const v1, -0xd5dbe9

    goto :goto_1

    :cond_2
    const v1, -0xe8e8eb

    :goto_1
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    add-float v16, v12, v0

    add-float v17, v13, v0

    sub-float v18, v14, v0

    sub-float v19, v15, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 113
    const v0, 0x3f666666    # 0.9f

    mul-float v5, v11, v0

    const v0, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 114
    const v0, -0xb2165

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    move-object/from16 v0, p0

    move/from16 v3, v16

    move/from16 v20, v5

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 116
    move/from16 v3, v18

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 117
    const v0, -0x91b5e4

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 119
    move/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 121
    if-eqz p3, :cond_3

    const/16 v0, -0x1c66

    goto :goto_2

    :cond_3
    const v0, -0xa3a8b8

    :goto_2
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    nop

    .line 123
    mul-float v10, v10, v11

    add-float/2addr v12, v10

    add-float/2addr v13, v10

    add-float v16, v12, v20

    add-float v17, v13, v20

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 124
    sub-float/2addr v14, v10

    sub-float v18, v14, v20

    move/from16 v1, v18

    move v3, v14

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 125
    sub-float v10, v15, v10

    sub-float v13, v10, v20

    move v1, v12

    move v2, v13

    move/from16 v3, v16

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 126
    move/from16 v1, v18

    move v3, v14

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 128
    if-eqz p3, :cond_4

    const/16 v0, -0x1852

    goto :goto_3

    :cond_4
    const v0, -0x858b9e

    :goto_3
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    if-nez p2, :cond_5

    invoke-static {v6, v7, v11, v9}, Lcom/ahsim/demulation/DuneSegaHud;->drawUnitsIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_5
    const/4 v0, 0x2

    move/from16 v12, p2

    if-ne v12, v0, :cond_5b

    invoke-static {v6, v7, v11, v9}, Lcom/ahsim/demulation/DuneSegaHud;->drawMenuIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_5b
    invoke-static {v6, v7, v11, v9}, Lcom/ahsim/demulation/DuneSegaHud;->drawBaseIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    .line 131
    :goto_4
    return-void

    .line 94
    :cond_6
    :goto_5
    return-void
.end method

.method private static drawMenuIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v0, -0x1852

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    const v0, 0x40b33333    # 5.6f

    mul-float/2addr v0, v8

    move v12, v0

    const v0, 0x3fcccccd    # 1.6f

    mul-float/2addr v0, v8

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v13, v0, v1

    const v0, 0x4059999a    # 3.4f

    mul-float/2addr v0, v8

    move v14, v0

    move-object v0, v6

    sub-float v1, v10, v12

    sub-float v2, v11, v14

    sub-float v2, v2, v13

    add-float v3, v10, v12

    add-float v4, v2, v13

    add-float v4, v4, v13

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object v0, v6

    sub-float v1, v10, v12

    sub-float v2, v11, v13

    add-float v3, v10, v12

    add-float v4, v11, v13

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object v0, v6

    sub-float v1, v10, v12

    add-float v2, v11, v14

    sub-float v2, v2, v13

    add-float v3, v10, v12

    add-float v4, v2, v13

    add-float v4, v4, v13

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
.method private static drawUnitsIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .locals 8

    .line 134
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v1, v1, p2

    add-float/2addr p1, v1

    .line 135
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    const v1, 0x3f933333    # 1.15f

    mul-float v1, v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    const/16 v1, -0x1852

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    new-instance v1, Landroid/graphics/RectF;

    const v2, 0x40b33333    # 5.6f

    mul-float v2, v2, p2

    sub-float v3, v0, v2

    const v4, 0x40266666    # 2.6f

    mul-float v4, v4, p2

    sub-float v5, p1, v4

    const v6, 0x3f4ccccd    # 0.8f

    mul-float v6, v6, p2

    sub-float v7, v0, v6

    add-float/2addr v4, p1

    invoke-direct {v1, v3, v5, v7, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 139
    new-instance v3, Landroid/graphics/RectF;

    add-float/2addr v6, v0

    add-float/2addr v2, v0

    invoke-direct {v3, v6, v5, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 140
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 141
    const v4, 0x4059999a    # 3.4f

    mul-float v4, v4, p2

    sub-float v5, v0, v4

    const/high16 v6, -0x3e100000    # -30.0f

    invoke-virtual {p0, v6, v5, p1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 142
    invoke-virtual {p0, v1, p3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 143
    invoke-virtual {p0, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 144
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 145
    add-float/2addr v4, v0

    invoke-virtual {p0, v6, v4, p1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 146
    invoke-virtual {p0, v3, p3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 147
    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 148
    const v1, 0x3fe66666    # 1.8f

    mul-float v1, v1, p2

    sub-float v3, v0, v1

    const v2, 0x3f99999a    # 1.2f

    mul-float p2, p2, v2

    add-float v4, p1, p2

    add-float v5, v0, v1

    sub-float v6, p1, p2

    move-object v2, p0

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 149
    return-void
.end method

.method public static fitRadar(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 4

    .line 50
    if-nez p1, :cond_0

    return-void

    .line 51
    :cond_0
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, p2, v1

    sub-float/2addr v0, v2

    .line 56
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v3, v2

    .line 57
    cmpg-float v2, v0, v1

    if-lez v2, :cond_3

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_2

    goto :goto_0

    .line 61
    :cond_2
    const/high16 v1, 0x438f0000    # 286.0f

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 62
    iget v1, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, p2

    sub-float/2addr v1, v0

    .line 63
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p0, p2

    sub-float/2addr p0, v0

    .line 64
    add-float p2, v1, v0

    add-float/2addr v0, p0

    invoke-virtual {p1, v1, p0, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 65
    return-void

    .line 58
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    .line 59
    return-void

    .line 52
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    .line 53
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    sput-object p0, Lcom/ahsim/demulation/DuneSegaHud;->appContext:Landroid/content/Context;

    const/4 v0, 0x0

    sput-object v0, Lcom/ahsim/demulation/DuneSegaHud;->cachedTypeface:Landroid/graphics/Typeface;

    invoke-static {p0}, Lcom/ahsim/demulation/DuneSegaHud;->typeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    return-void
.end method

.method public static typeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 4

    if-nez p0, :cond_ctx

    goto :after_ctx

    :cond_ctx
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_param

    sput-object v0, Lcom/ahsim/demulation/DuneSegaHud;->appContext:Landroid/content/Context;

    goto :after_ctx

    :cond_param
    sput-object p0, Lcom/ahsim/demulation/DuneSegaHud;->appContext:Landroid/content/Context;

    :after_ctx
    sget-object v0, Lcom/ahsim/demulation/DuneSegaHud;->cachedTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_load

    return-object v0

    :cond_load
    if-eqz p0, :cond_ctx2

    move-object v1, p0

    goto :have_ctx

    :cond_ctx2
    sget-object v1, Lcom/ahsim/demulation/DuneSegaHud;->appContext:Landroid/content/Context;

    :have_ctx
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    if-nez v1, :cond_try

    return-object v0

    :cond_try
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/dune_sega.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_save

    move-object v0, v2

    :cond_save
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :store

    :catchall_0
    move-exception v2

    :store
    sput-object v0, Lcom/ahsim/demulation/DuneSegaHud;->cachedTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method
