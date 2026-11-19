.class final Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;
.super Landroid/view/View;
.source "RazorTerrainPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorTerrainPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MapCanvas"
.end annotation


# instance fields
.field private final artRect674:Landroid/graphics/RectF;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private final borderPaint:Landroid/graphics/Paint;

.field private displayCell675:F

.field private displayHeight675:I

.field private displayLeft:I

.field private displaySize:I

.field private displayTop:I

.field private displayWidth675:I

.field private downX:F

.field private downY:F

.field private dragging679:Z

.field private lastX679:F

.field private lastY679:F

.field private final markerPaint:Landroid/graphics/Paint;

.field private final markerStroke:Landroid/graphics/Paint;

.field private final ownerColors:[I

.field private pinchInProgress675:Z

.field private pinchSpan675:F

.field private final spriteBounds677:[F

.field final synthetic this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V
    .locals 6

    .line 2922
    iput-object p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    .line 2923
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2909
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->bitmapPaint:Landroid/graphics/Paint;

    .line 2910
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->borderPaint:Landroid/graphics/Paint;

    .line 2911
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    .line 2912
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerStroke:Landroid/graphics/Paint;

    .line 2913
    const v0, -0x214a96

    const v2, -0x3a691e

    const v3, -0x9c4b1b

    const v4, -0x249397

    const v5, -0x6c3a92

    filled-new-array {v3, v4, v5, v0, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->ownerColors:[I

    .line 2946
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->artRect674:Landroid/graphics/RectF;

    .line 2948
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->spriteBounds677:[F

    .line 2924
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->setBackgroundColor(I)V

    .line 2925
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 2926
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2927
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->borderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2928
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->borderPaint:Landroid/graphics/Paint;

    invoke-static {p1, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2929
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->borderPaint:Landroid/graphics/Paint;

    const v1, -0x264d94

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2930
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2931
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerStroke:Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2932
    iget-object p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerStroke:Landroid/graphics/Paint;

    const v0, -0xefeff0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2933
    return-void
.end method

.method private drawBuildingArt674(Landroid/graphics/Canvas;Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;F)Z
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "b"    # Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    .param p3, "cell"    # F

    .line 2996
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetoriginalSprites674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/GenesisObjectArt;

    move-result-object v3

    .line 2997
    .local v3, "art":Lcom/ahsim/demulation/GenesisObjectArt;
    const/4 v4, 0x0

    if-eqz v3, :cond_a

    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v0

    if-eqz v0, :cond_a

    iget v0, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->type:I

    if-ltz v0, :cond_a

    iget v0, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->type:I

    const/16 v5, 0x13

    if-lt v0, v5, :cond_0

    move-object/from16 v5, p1

    move/from16 v16, v4

    goto/16 :goto_7

    .line 2998
    :cond_0
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetstructureDimensions674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)[[I

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetstructureDimensions674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)[[I

    move-result-object v0

    iget v6, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->type:I

    aget-object v0, v0, v6

    :goto_0
    move-object v6, v0

    .line 2999
    .local v6, "dims":[I
    const/4 v0, 0x1

    if-nez v6, :cond_2

    move v7, v0

    goto :goto_1

    :cond_2
    aget v7, v6, v4

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 3000
    .local v7, "width":I
    :goto_1
    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    aget v8, v6, v0

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2
    move v8, v0

    .line 3001
    .local v8, "height":I
    const/4 v0, 0x0

    .line 3004
    .local v0, "drawn":Z
    const/16 v9, 0x208

    .line 3006
    .local v9, "virtualAnchor":I
    const/4 v10, 0x0

    .local v10, "dy":I
    :goto_3
    if-ge v10, v8, :cond_9

    const/4 v11, 0x0

    move/from16 v18, v11

    move v11, v0

    move/from16 v0, v18

    .local v0, "dx":I
    .local v11, "drawn":Z
    :goto_4
    if-ge v0, v7, :cond_8

    .line 3007
    :try_start_0
    iget v12, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->x:I

    add-int/2addr v12, v0

    .local v12, "mapX":I
    iget v13, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->y:I

    add-int/2addr v13, v10

    .line 3008
    .local v13, "mapY":I
    iget-object v14, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v14}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v14

    if-lt v12, v14, :cond_7

    iget-object v14, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v14}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v14

    if-lt v13, v14, :cond_7

    iget-object v14, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v14}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v14

    .line 3009
    invoke-virtual {v14}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v14

    iget-object v15, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v15}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v15

    invoke-virtual {v15}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v15

    add-int/2addr v14, v15

    if-ge v12, v14, :cond_6

    iget-object v14, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v14}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v14

    .line 3010
    invoke-virtual {v14}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v14

    iget-object v15, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v15}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v15

    invoke-virtual {v15}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->rows()I

    move-result v15

    add-int/2addr v14, v15

    if-lt v13, v14, :cond_4

    move-object/from16 v5, p1

    move/from16 v17, v0

    move/from16 v16, v4

    const/4 v1, 0x0

    goto/16 :goto_5

    .line 3011
    :cond_4
    iget v14, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->type:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    mul-int/lit8 v15, v10, 0x40

    move/from16 v16, v4

    const/16 v4, 0x208

    add-int/2addr v15, v4

    add-int/2addr v15, v0

    :try_start_1
    invoke-virtual {v3, v14, v4, v15}, Lcom/ahsim/demulation/GenesisObjectArt;->getPreferredStructureMetatileBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 3013
    .local v4, "sprite":Landroid/graphics/Bitmap;
    if-nez v4, :cond_5

    move-object/from16 v5, p1

    move/from16 v17, v0

    const/4 v1, 0x0

    goto :goto_5

    .line 3014
    :cond_5
    iget v14, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    int-to-float v14, v14

    iget-object v15, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v15}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v15

    invoke-virtual {v15}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v15

    sub-int v15, v12, v15

    int-to-float v15, v15

    mul-float v15, v15, p3

    add-float/2addr v14, v15

    .line 3015
    .local v14, "x":F
    iget v15, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    int-to-float v15, v15

    iget-object v5, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v5

    sub-int v5, v13, v5

    int-to-float v5, v5

    mul-float v5, v5, p3

    add-float/2addr v15, v5

    .line 3016
    .local v15, "y":F
    iget-object v5, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->artRect674:Landroid/graphics/RectF;

    move/from16 v17, v0

    .end local v0    # "dx":I
    .local v17, "dx":I
    add-float v0, v14, p3

    add-float v2, v15, p3

    invoke-virtual {v5, v14, v15, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3017
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->artRect674:Landroid/graphics/RectF;

    iget-object v2, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->bitmapPaint:Landroid/graphics/Paint;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v5, p1

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v5, v4, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3018
    const/4 v11, 0x1

    goto :goto_5

    .line 3020
    .end local v4    # "sprite":Landroid/graphics/Bitmap;
    .end local v10    # "dy":I
    .end local v12    # "mapX":I
    .end local v13    # "mapY":I
    .end local v14    # "x":F
    .end local v15    # "y":F
    .end local v17    # "dx":I
    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v5, p1

    goto :goto_6

    .line 3009
    .restart local v0    # "dx":I
    .restart local v10    # "dy":I
    .restart local v12    # "mapX":I
    .restart local v13    # "mapY":I
    :cond_6
    move-object/from16 v5, p1

    move/from16 v17, v0

    move/from16 v16, v4

    const/4 v1, 0x0

    .end local v0    # "dx":I
    .restart local v17    # "dx":I
    goto :goto_5

    .line 3008
    .end local v17    # "dx":I
    .restart local v0    # "dx":I
    :cond_7
    move-object/from16 v5, p1

    move/from16 v17, v0

    move/from16 v16, v4

    const/4 v1, 0x0

    .line 3006
    .end local v0    # "dx":I
    .end local v12    # "mapX":I
    .end local v13    # "mapY":I
    .restart local v17    # "dx":I
    :goto_5
    add-int/lit8 v0, v17, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v4, v16

    .end local v17    # "dx":I
    .restart local v0    # "dx":I
    goto/16 :goto_4

    .line 3020
    .end local v0    # "dx":I
    .end local v10    # "dy":I
    :catch_2
    move-exception v0

    move-object/from16 v5, p1

    move/from16 v16, v4

    .local v0, "ex":Ljava/lang/RuntimeException;
    :goto_6
    return v16

    .line 3006
    .local v0, "dx":I
    .restart local v10    # "dy":I
    :cond_8
    move-object/from16 v5, p1

    move/from16 v17, v0

    move/from16 v16, v4

    const/4 v1, 0x0

    .end local v0    # "dx":I
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v0, v11

    goto/16 :goto_3

    .end local v11    # "drawn":Z
    .local v0, "drawn":Z
    :cond_9
    move-object/from16 v5, p1

    .line 3020
    .end local v10    # "dy":I
    nop

    .line 3021
    return v0

    .line 2997
    .end local v0    # "drawn":Z
    .end local v6    # "dims":[I
    .end local v7    # "width":I
    .end local v8    # "height":I
    .end local v9    # "virtualAnchor":I
    :cond_a
    move-object/from16 v5, p1

    move/from16 v16, v4

    :goto_7
    return v16
.end method

.method private drawBuildingSelection675(Landroid/graphics/Canvas;Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;F)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "b"    # Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    .param p3, "cell"    # F

    .line 3072
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 3073
    :cond_0
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetstructureDimensions674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)[[I

    move-result-object v2

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->type:I

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetstructureDimensions674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)[[I

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_1

    goto :goto_0

    .line 3074
    :cond_1
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetstructureDimensions674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)[[I

    move-result-object v2

    iget v3, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->type:I

    aget-object v2, v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 3075
    .local v2, "dims":[I
    :goto_1
    const/4 v3, 0x1

    if-nez v2, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    aget v4, v2, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3076
    .local v4, "bw":I
    :goto_2
    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    aget v5, v2, v3

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3077
    .local v3, "bh":I
    :goto_3
    iget v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    int-to-float v5, v5

    iget v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    int-to-float v6, v6

    iget v7, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->x:I

    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float v7, v7, p3

    add-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 3078
    .local v9, "left":F
    iget v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    int-to-float v5, v5

    iget v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    int-to-float v6, v6

    iget v7, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->y:I

    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float v7, v7, p3

    add-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 3079
    .local v10, "top":F
    iget v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    iget v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayWidth675:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    int-to-float v6, v6

    iget v7, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->x:I

    add-int/2addr v7, v4

    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v8

    .line 3080
    invoke-virtual {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float v7, v7, p3

    add-float/2addr v6, v7

    .line 3079
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 3081
    .local v11, "right":F
    iget v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    iget v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayHeight675:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    int-to-float v6, v6

    iget v7, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->y:I

    add-int/2addr v7, v3

    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v8

    .line 3082
    invoke-virtual {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float v7, v7, p3

    add-float/2addr v6, v7

    .line 3081
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 3083
    .local v12, "bottom":F
    cmpg-float v5, v11, v9

    if-lez v5, :cond_6

    cmpg-float v5, v12, v10

    if-gtz v5, :cond_5

    goto :goto_4

    .line 3085
    :cond_5
    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float v5, v5, p3

    const/high16 v6, 0x42000000    # 32.0f

    div-float v13, v5, v6

    div-float v5, p3, v6

    .line 3086
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 3085
    const/4 v15, -0x1

    move-object/from16 v7, p1

    invoke-static/range {v7 .. v15}, Lcom/ahsim/demulation/RazorClassicView678;->drawCorners(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFFFI)V

    .line 3087
    return-void

    .line 3083
    :cond_6
    :goto_4
    return-void
.end method

.method private drawClassicCursor678(Landroid/graphics/Canvas;F)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cell"    # F

    .line 3060
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetquickPlay662(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetclassicCursorX678(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetclassicCursorY678(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v0

    if-gez v0, :cond_0

    move-object v4, p1

    goto/16 :goto_1

    .line 3062
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetclassicCursorX678(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3063
    .local v0, "mx":I
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetclassicCursorY678(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3064
    .local v1, "my":I
    if-ltz v0, :cond_2

    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->rows()I

    move-result v2

    if-lt v1, v2, :cond_1

    move-object v4, p1

    goto :goto_0

    .line 3065
    :cond_1
    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    int-to-float v2, v2

    int-to-float v3, v0

    mul-float/2addr v3, p2

    add-float v6, v2, v3

    .local v6, "x":F
    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    int-to-float v2, v2

    int-to-float v3, v1

    mul-float/2addr v3, p2

    add-float v7, v2, v3

    .line 3066
    .local v7, "y":F
    iget-object v5, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    add-float v8, v6, p2

    add-float v9, v7, p2

    const/high16 v2, 0x40e00000    # 7.0f

    mul-float/2addr v2, p2

    const/high16 v3, 0x42000000    # 32.0f

    div-float v10, v2, v3

    div-float v2, p2, v3

    .line 3068
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v11

    const/16 v2, 0xe1

    const/16 v3, 0x87

    const/16 v4, 0xf5

    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    .line 3066
    move-object v4, p1

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .local v4, "canvas":Landroid/graphics/Canvas;
    invoke-static/range {v4 .. v12}, Lcom/ahsim/demulation/RazorClassicView678;->drawCorners(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFFFI)V

    .line 3069
    return-void

    .line 3064
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "x":F
    .end local v7    # "y":F
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    move-object v4, p1

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    :goto_0
    return-void

    .line 3060
    .end local v0    # "mx":I
    .end local v1    # "my":I
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    :cond_3
    move-object v4, p1

    .line 3061
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    :goto_1
    return-void
.end method

.method private drawClassicUnitSelection678(Landroid/graphics/Canvas;FFF)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cx"    # F
    .param p3, "cy"    # F
    .param p4, "cell"    # F

    .line 3054
    const/high16 v0, 0x41500000    # 13.0f

    mul-float/2addr v0, p4

    const/high16 v1, 0x42000000    # 32.0f

    div-float/2addr v0, v1

    .line 3055
    .local v0, "half":F
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    sub-float v4, p2, v0

    sub-float v5, p3, v0

    add-float v6, p2, v0

    add-float v7, p3, v0

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr v2, p4

    div-float v8, v2, v1

    div-float v1, p4, v1

    .line 3057
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 3055
    const/4 v10, -0x1

    move-object v2, p1

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-static/range {v2 .. v10}, Lcom/ahsim/demulation/RazorClassicView678;->drawCorners(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFFFI)V

    .line 3058
    return-void
.end method

.method private drawUnitArt674(Landroid/graphics/Canvas;Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;FFF)Z
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "u"    # Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    .param p3, "cx"    # F
    .param p4, "cy"    # F
    .param p5, "cell"    # F

    .line 2951
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "RazorTerrainPreview"

    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetoriginalSprites674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/GenesisObjectArt;

    move-result-object v4

    .line 2952
    .local v4, "art":Lcom/ahsim/demulation/GenesisObjectArt;
    const/4 v10, 0x0

    if-eqz v4, :cond_8

    iget v0, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    if-ltz v0, :cond_8

    iget v0, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    const/16 v5, 0x1b

    if-lt v0, v5, :cond_0

    move-object/from16 v12, p1

    goto/16 :goto_3

    .line 2954
    :cond_0
    const/4 v0, 0x0

    .line 2955
    .local v0, "facing":I
    :try_start_0
    iget-object v5, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetfacing666(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)[I

    move-result-object v5

    const/4 v11, 0x1

    const/4 v12, 0x2

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetfacing666(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)[I

    move-result-object v5

    array-length v5, v5

    iget-object v6, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetcampaignMapFrame559(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    move-result-object v6

    iget-object v6, v6, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v6, v6

    mul-int/2addr v6, v12

    add-int/lit8 v6, v6, 0x6

    if-ne v5, v6, :cond_1

    iget-object v5, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetfacing666(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)[I

    move-result-object v5

    iget v6, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->ordinal:I

    mul-int/2addr v6, v12

    add-int/lit8 v6, v6, 0x6

    aget v5, v5, v6

    if-ne v5, v11, :cond_1

    .line 2956
    iget-object v5, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetfacing666(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)[I

    move-result-object v5

    iget v6, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->ordinal:I

    mul-int/2addr v6, v12

    add-int/lit8 v6, v6, 0x7

    aget v5, v5, v6

    move v0, v5

    move v6, v0

    goto :goto_0

    .line 2957
    :cond_1
    move v6, v0

    .end local v0    # "facing":I
    .local v6, "facing":I
    :goto_0
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetsandboxTicks560(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v0

    const/4 v13, 0x3

    div-int/2addr v0, v13

    and-int/lit8 v8, v0, 0x3

    .line 2958
    .local v8, "animation":I
    iget v5, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    iget v9, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->owner:I

    move v7, v6

    invoke-virtual/range {v4 .. v9}, Lcom/ahsim/demulation/GenesisObjectArt;->getUnitFrame(IIIII)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    move-result-object v0

    move v14, v8

    .line 2963
    .end local v8    # "animation":I
    .local v0, "frame":Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    .local v14, "animation":I
    if-eqz v0, :cond_2

    iget-object v5, v0, Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;->bitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_3

    :cond_2
    if-eqz v14, :cond_3

    .line 2964
    iget v5, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    iget v9, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->owner:I

    const/4 v8, 0x0

    move v7, v6

    invoke-virtual/range {v4 .. v9}, Lcom/ahsim/demulation/GenesisObjectArt;->getUnitFrame(IIIII)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    move-result-object v5

    move-object v0, v5

    .line 2965
    :cond_3
    if-eqz v0, :cond_5

    iget-object v5, v0, Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;->bitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_4

    move-object/from16 v12, p1

    goto :goto_1

    .line 2977
    :cond_4
    iget v5, v0, Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;->minX:I

    iget v7, v0, Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;->minY:I

    iget-object v8, v0, Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;->bitmap:Landroid/graphics/Bitmap;

    .line 2978
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    iget-object v8, v0, Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;->bitmap:Landroid/graphics/Bitmap;

    .line 2979
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    iget-object v8, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->spriteBounds677:[F

    .line 2977
    move/from16 v15, p3

    move/from16 v16, p4

    move/from16 v17, p5

    move/from16 v18, v5

    move/from16 v19, v7

    move-object/from16 v22, v8

    invoke-static/range {v15 .. v22}, Lcom/ahsim/demulation/RazorPlayGeometry677;->spriteBounds(FFFIIII[F)V

    .line 2980
    iget-object v5, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->artRect674:Landroid/graphics/RectF;

    iget-object v7, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->spriteBounds677:[F

    aget v7, v7, v10

    iget-object v8, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->spriteBounds677:[F

    aget v8, v8, v11

    iget-object v9, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->spriteBounds677:[F

    aget v9, v9, v12

    iget-object v12, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->spriteBounds677:[F

    aget v12, v12, v13

    invoke-virtual {v5, v7, v8, v9, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2982
    iget-object v5, v0, Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;->bitmap:Landroid/graphics/Bitmap;

    iget-object v7, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->artRect674:Landroid/graphics/RectF;

    iget-object v8, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->bitmapPaint:Landroid/graphics/Paint;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v9, 0x0

    move-object/from16 v12, p1

    :try_start_1
    invoke-virtual {v12, v5, v9, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 2983
    return v11

    .line 2965
    :cond_5
    move-object/from16 v12, p1

    .line 2966
    :goto_1
    iget-object v5, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetlastMissingArtType740(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v5

    iget v7, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    if-eq v5, v7, :cond_6

    .line 2967
    iget-object v5, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    iget v7, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    invoke-static {v5, v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputlastMissingArtType740(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V

    .line 2968
    iget-object v5, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u041d\u0435\u0442 \u0438\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u044f \u044e\u043d\u0438\u0442\u0430 \u0442\u0438\u043f\u0430 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \u0432 \u0432\u044b\u0431\u0440\u0430\u043d\u043d\u043e\u0439 \u0433\u0440\u0430\u0444\u0438\u043a\u0435 Dune"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputartFrameError740(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Ljava/lang/String;)V

    .line 2970
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Razor art frame missing for unit type "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2972
    :cond_6
    return v10

    .line 2984
    .end local v0    # "frame":Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    .end local v6    # "facing":I
    .end local v14    # "animation":I
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v12, p1

    .line 2985
    .local v0, "ex":Ljava/lang/RuntimeException;
    :goto_2
    iget-object v5, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetlastMissingArtType740(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v5

    iget v6, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    if-eq v5, v6, :cond_7

    .line 2986
    iget-object v5, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    iget v6, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    invoke-static {v5, v6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputlastMissingArtType740(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V

    .line 2987
    iget-object v5, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u041e\u0448\u0438\u0431\u043a\u0430 \u0438\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u044f \u044e\u043d\u0438\u0442\u0430 \u0442\u0438\u043f\u0430 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputartFrameError740(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Ljava/lang/String;)V

    .line 2988
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Razor unit art failed type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2989
    iget-object v3, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetruntimeDiagnostics749(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UNIT_ART_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2991
    :cond_7
    return v10

    .line 2952
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_8
    move-object/from16 v12, p1

    :goto_3
    return v10
.end method

.method private drawUnitSelection677(Landroid/graphics/Canvas;FZ)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cell"    # F
    .param p3, "enemy"    # Z

    .line 3026
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3d8f5c29    # 0.07f

    mul-float v3, v3, p2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 3027
    .local v1, "pad":F
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->artRect674:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v1

    .local v3, "left":F
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->artRect674:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v1

    .line 3028
    .local v4, "top":F
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->artRect674:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v1

    .local v5, "right":F
    iget-object v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->artRect674:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v1

    .line 3030
    .local v6, "bottom":F
    iget-object v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/16 v8, 0xa

    invoke-static {v7, v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3eae147b    # 0.34f

    mul-float v8, v8, p2

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 3031
    .local v7, "minSpan":F
    sub-float v8, v5, v3

    cmpg-float v8, v8, v7

    const/high16 v9, 0x3f000000    # 0.5f

    if-gez v8, :cond_0

    .line 3032
    add-float v8, v3, v5

    mul-float/2addr v8, v9

    .line 3033
    .local v8, "middle":F
    mul-float v10, v7, v9

    sub-float v3, v8, v10

    mul-float v10, v7, v9

    add-float v5, v8, v10

    .line 3035
    .end local v8    # "middle":F
    :cond_0
    sub-float v8, v6, v4

    cmpg-float v8, v8, v7

    if-gez v8, :cond_1

    .line 3036
    add-float v8, v4, v6

    mul-float/2addr v8, v9

    .line 3037
    .restart local v8    # "middle":F
    mul-float v10, v7, v9

    sub-float v4, v8, v10

    mul-float/2addr v9, v7

    add-float v6, v8, v9

    .line 3039
    .end local v8    # "middle":F
    :cond_1
    const v8, 0x3e6147ae    # 0.22f

    mul-float v8, v8, p2

    sub-float v9, v5, v3

    sub-float v10, v6, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const v10, 0x3ecccccd    # 0.4f

    mul-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 3040
    .local v8, "len":F
    iget-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    if-eqz p3, :cond_2

    const v10, -0xe898f

    goto :goto_0

    :cond_2
    const v10, -0x6e0487

    :goto_0
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 3041
    iget-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    iget-object v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/high16 v11, 0x3fc00000    # 1.5f

    invoke-static {v10, v11}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;F)F

    move-result v10

    const v11, 0x3d851eb8    # 0.065f

    mul-float v11, v11, p2

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3042
    iget-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3043
    const/4 v9, 0x0

    .local v9, "sx":I
    :goto_1
    if-gt v9, v2, :cond_8

    const/4 v10, 0x0

    .local v10, "sy":I
    :goto_2
    if-gt v10, v2, :cond_7

    .line 3044
    if-nez v9, :cond_3

    move v11, v3

    goto :goto_3

    :cond_3
    move v11, v5

    :goto_3
    move v13, v11

    .local v13, "x":F
    if-nez v10, :cond_4

    move v14, v4

    goto :goto_4

    :cond_4
    move v14, v6

    .line 3045
    .local v14, "y":F
    :goto_4
    if-nez v9, :cond_5

    move v11, v8

    goto :goto_5

    :cond_5
    neg-float v11, v8

    .local v11, "ix":F
    :goto_5
    if-nez v10, :cond_6

    move v12, v8

    goto :goto_6

    :cond_6
    neg-float v12, v8

    :goto_6
    move/from16 v18, v12

    .line 3046
    .local v18, "iy":F
    add-float v15, v13, v11

    iget-object v12, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    move/from16 v16, v14

    move-object/from16 v17, v12

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3047
    add-float v16, v14, v18

    iget-object v12, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    move v15, v13

    move-object/from16 v17, v12

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3043
    .end local v11    # "ix":F
    .end local v13    # "x":F
    .end local v14    # "y":F
    .end local v18    # "iy":F
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .end local v10    # "sy":I
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3049
    .end local v9    # "sx":I
    :cond_8
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3050
    return-void
.end method

.method private pickObject(FF)V
    .locals 17
    .param p1, "px"    # F
    .param p2, "py"    # F

    .line 3469
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetprofile558(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_10

    .line 3470
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetcampaignMapFrame559(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    move-result-object v3

    .line 3471
    .local v3, "state":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    if-eqz v3, :cond_f

    iget-object v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v6

    if-eqz v6, :cond_f

    iget v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    int-to-float v6, v6

    cmpg-float v6, v1, v6

    if-ltz v6, :cond_f

    iget v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    int-to-float v6, v6

    cmpg-float v6, v2, v6

    if-ltz v6, :cond_f

    iget v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    iget v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayWidth675:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-gez v6, :cond_f

    iget v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    iget v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayHeight675:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_0

    goto/16 :goto_4

    .line 3473
    :cond_0
    iget v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    int-to-float v6, v6

    iget v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayCell675:F

    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v8

    .line 3474
    invoke-virtual {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v8

    .line 3473
    invoke-static {v1, v6, v7, v8}, Lcom/ahsim/demulation/RazorPlayGeometry677;->screenToCell(FFFI)I

    move-result v6

    .line 3475
    .local v6, "x":I
    iget v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    int-to-float v7, v7

    iget v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayCell675:F

    iget-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v9}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v9

    .line 3476
    invoke-virtual {v9}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v9

    .line 3475
    invoke-static {v2, v7, v8, v9}, Lcom/ahsim/demulation/RazorPlayGeometry677;->screenToCell(FFFI)I

    move-result v7

    .line 3477
    .local v7, "y":I
    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetconstruction571(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorConstruction571;

    move-result-object v8

    const/4 v9, 0x2

    if-eqz v8, :cond_3

    .line 3478
    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetconstruction571(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorConstruction571;

    move-result-object v8

    iget v8, v8, Lcom/ahsim/demulation/RazorConstruction571;->phase:I

    if-ne v8, v5, :cond_1

    .line 3479
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4, v9, v6, v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mrequestConstruction571(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;III)V

    return-void

    .line 3481
    :cond_1
    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetconstruction571(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorConstruction571;

    move-result-object v8

    iget v8, v8, Lcom/ahsim/demulation/RazorConstruction571;->phase:I

    const/4 v10, 0x3

    if-ne v8, v10, :cond_2

    .line 3482
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/4 v5, 0x4

    invoke-static {v4, v5, v6, v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mrequestConstruction571(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;III)V

    return-void

    .line 3484
    :cond_2
    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetconstruction571(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorConstruction571;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Lcom/ahsim/demulation/RazorConstruction571;->at(II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3485
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetobjectDetails(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    sget v8, Lcom/ahsim/demulation/R$string;->razor_order571_selected:I

    iget-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v9}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetconstruction571(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorConstruction571;

    move-result-object v9

    iget v9, v9, Lcom/ahsim/demulation/RazorConstruction571;->owner:I

    .line 3486
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v10}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetconstruction571(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorConstruction571;

    move-result-object v10

    iget v10, v10, Lcom/ahsim/demulation/RazorConstruction571;->x:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v11}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetconstruction571(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorConstruction571;

    move-result-object v11

    iget v11, v11, Lcom/ahsim/demulation/RazorConstruction571;->y:I

    .line 3487
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v12}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetconstruction571(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorConstruction571;

    move-result-object v12

    iget v12, v12, Lcom/ahsim/demulation/RazorConstruction571;->phase:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v9, v10, v11, v12}, [Ljava/lang/Object;

    move-result-object v9

    .line 3485
    invoke-virtual {v5, v8, v9}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3488
    return-void

    .line 3491
    :cond_3
    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetdemoHandle569(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetdemoPending569(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3492
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4, v9, v6, v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mrequestLifecycleDemo569(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;III)V

    .line 3493
    return-void

    .line 3495
    :cond_4
    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetdynamicObjects569(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorDynamicObjects569;

    move-result-object v8

    if-nez v8, :cond_5

    move-object v8, v4

    goto :goto_0

    .line 3496
    :cond_5
    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetdynamicObjects569(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorDynamicObjects569;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Lcom/ahsim/demulation/RazorDynamicObjects569;->at(II)Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;

    move-result-object v8

    :goto_0
    nop

    .line 3497
    .local v8, "dynamic":Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;
    if-eqz v8, :cond_6

    .line 3498
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetobjectDetails(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    sget v9, Lcom/ahsim/demulation/R$string;->razor_demo569_selected:I

    iget v10, v8, Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;->slot:I

    .line 3499
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v11, v8, Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;->owner:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v12, v8, Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;->type:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v10, v11, v12, v13, v14}, [Ljava/lang/Object;

    move-result-object v10

    .line 3498
    invoke-virtual {v5, v9, v10}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3500
    return-void

    .line 3506
    :cond_6
    iget-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v9}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetgameBar674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Landroid/widget/TextView;

    move-result-object v9

    if-nez v9, :cond_7

    invoke-static {v3, v6, v7}, Lcom/ahsim/demulation/RazorPrototypeView663;->buildingAt(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;II)Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;

    move-result-object v9

    goto :goto_1

    .line 3507
    :cond_7
    iget-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v9, v3, v6, v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mgameBuildingAt674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;II)Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;

    move-result-object v9

    :goto_1
    nop

    .line 3509
    .local v9, "building663":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    const-string v10, " cell="

    const-string v11, " type="

    const-string v12, "id="

    const-string v13, ","

    const/4 v14, -0x1

    if-eqz v9, :cond_8

    invoke-virtual {v3, v6, v7}, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->unitAt(II)Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    move-result-object v15

    if-nez v15, :cond_8

    .line 3510
    iget-object v15, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v15, v14}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputselectedUnitOrdinal559(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V

    .line 3511
    iget-object v15, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v15, v14}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputselectedEnemy674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V

    .line 3512
    iget-object v14, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    iget v15, v9, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->ordinal:I

    invoke-static {v14, v15}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputselectedBuilding674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V

    .line 3513
    iget-object v14, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v14}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectionCount749(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v15

    add-int/2addr v15, v5

    invoke-static {v14, v15}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputselectionCount749(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V

    .line 3514
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetruntimeDiagnostics749(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;

    move-result-object v5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, v9, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->ordinal:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v9, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->type:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v9, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->x:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v9, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->y:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "SELECT_BUILDING"

    invoke-virtual {v5, v11, v10}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->event(Ljava/lang/String;Ljava/lang/String;)V

    .line 3517
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v5, v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputrouteWitness664(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Lcom/ahsim/demulation/RazorCoreRoute664;)V

    .line 3518
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetobjectDetails(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    sget v10, Lcom/ahsim/demulation/R$string;->razor_preview_object_selected:I

    iget-object v11, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    sget v12, Lcom/ahsim/demulation/R$string;->razor_preview_structure:I

    .line 3519
    invoke-virtual {v11, v12}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget v12, v9, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->owner:I

    .line 3520
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v13, v9, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->type:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v14, v9, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->x:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v15, v9, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->y:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v11, v12, v13, v14, v15}, [Ljava/lang/Object;

    move-result-object v11

    .line 3518
    invoke-virtual {v5, v10, v11}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3521
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mupdateGameBar674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    .line 3522
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mupdateMapActions559(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->invalidate()V

    return-void

    .line 3524
    :cond_8
    invoke-virtual {v3, v6, v7}, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->unitAt(II)Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    move-result-object v15

    .line 3525
    .local v15, "touched":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    if-eqz v15, :cond_d

    .line 3528
    move/from16 v16, v5

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetquickPlay662(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, v15, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->owner:I

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgethouseSpinner(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Landroid/widget/Spinner;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-eq v5, v4, :cond_9

    .line 3529
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4, v14}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputselectedUnitOrdinal559(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V

    .line 3530
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4, v14}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputselectedBuilding674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V

    .line 3531
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    iget v5, v15, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->ordinal:I

    invoke-static {v4, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputselectedEnemy674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V

    .line 3532
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectionCount749(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputselectionCount749(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V

    .line 3533
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetruntimeDiagnostics749(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v10, v15, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->ordinal:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v10, v15, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v10, "SELECT_ENEMY"

    invoke-virtual {v4, v10, v5}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->event(Ljava/lang/String;Ljava/lang/String;)V

    .line 3535
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputrouteWitness664(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Lcom/ahsim/demulation/RazorCoreRoute664;)V

    .line 3536
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetobjectDetails(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Landroid/widget/TextView;

    move-result-object v4

    sget v5, Lcom/ahsim/demulation/R$string;->razor_quick662_enemy:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 3537
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mupdateGameBar674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    .line 3538
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mupdateMapActions559(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->invalidate()V

    .line 3539
    return-void

    .line 3541
    :cond_9
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectedUnitOrdinal559(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v4

    iget v5, v15, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->ordinal:I

    if-eq v4, v5, :cond_a

    .line 3542
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputrouteWitness664(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Lcom/ahsim/demulation/RazorCoreRoute664;)V

    .line 3546
    :cond_a
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    iget v5, v15, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->ordinal:I

    invoke-static {v4, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputselectedUnitOrdinal559(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V

    .line 3547
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectionCount749(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputselectionCount749(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V

    .line 3548
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetruntimeDiagnostics749(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v12, v15, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->ordinal:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v11, v15, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v10, v15, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->x:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v10, v15, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->y:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " camera="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3551
    iget-object v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v10}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v10

    if-nez v10, :cond_b

    const-string v10, "null"

    goto :goto_2

    :cond_b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v11}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v11}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_2
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3548
    const-string v10, "SELECT_UNIT"

    invoke-virtual {v4, v10, v5}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->event(Ljava/lang/String;Ljava/lang/String;)V

    .line 3552
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4, v14}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputselectedEnemy674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V

    .line 3553
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4, v14}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputselectedBuilding674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V

    .line 3554
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetquickPlay662(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetfollowSelected663(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 3555
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v4

    .local v4, "beforeX749":I
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v5

    .line 3556
    .local v5, "beforeY749":I
    iget-object v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v10}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v10

    iget v11, v15, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->x:I

    iget v12, v15, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->y:I

    invoke-virtual {v10, v11, v12}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->focus(II)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 3560
    iget-object v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v10, v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputfocusOldX749(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V

    iget-object v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v10, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputfocusOldY749(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V

    .line 3561
    iget-object v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    move/from16 v11, v16

    invoke-static {v10, v11}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputpendingSelectionFocus749(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Z)V

    .line 3562
    iget-object v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v10}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetruntimeDiagnostics749(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "selected="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v15, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->ordinal:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " from="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v12}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v12

    .line 3564
    invoke-virtual {v12}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v12}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3562
    const-string v12, "FOLLOW_CAMERA"

    invoke-virtual {v10, v12, v11}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->event(Ljava/lang/String;Ljava/lang/String;)V

    .line 3565
    iget-object v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mrequestFrame(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Z)V

    .line 3568
    .end local v4    # "beforeX749":I
    .end local v5    # "beforeY749":I
    :cond_c
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetobjectDetails(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v5, v15}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mselectedUnitLabel566(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3569
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mupdateGameBar674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    .line 3570
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mupdateMapActions559(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->invalidate()V

    goto :goto_3

    .line 3571
    :cond_d
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectedUnitOrdinal559(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v4

    if-ltz v4, :cond_e

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetmapActionPending559(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 3572
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4, v6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputclassicCursorX678(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4, v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputclassicCursorY678(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V

    .line 3573
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectedUnitOrdinal559(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v5

    const/4 v11, 0x1

    invoke-static {v4, v11, v5, v6, v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mrequestMapCommand559(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;IIII)V

    goto :goto_3

    .line 3575
    :cond_e
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetobjectDetails(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    sget v10, Lcom/ahsim/demulation/R$string;->razor_map559_tile:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v11, v12}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3577
    :goto_3
    return-void

    .line 3472
    .end local v6    # "x":I
    .end local v7    # "y":I
    .end local v8    # "dynamic":Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;
    .end local v9    # "building663":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    .end local v15    # "touched":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    :cond_f
    :goto_4
    return-void

    .line 3579
    .end local v3    # "state":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    :cond_10
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetobjectFrame(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;

    move-result-object v3

    .line 3580
    .local v3, "frame":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    if-eqz v3, :cond_16

    iget v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-ltz v4, :cond_16

    iget v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-ltz v4, :cond_16

    iget v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    iget v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayWidth675:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-gez v4, :cond_16

    iget v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    iget v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayHeight675:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_11

    goto/16 :goto_8

    .line 3582
    :cond_11
    iget v4, v3, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->x:I

    iget v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    int-to-float v5, v5

    sub-float v5, v1, v5

    iget v6, v3, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->width:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displaySize:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    .line 3583
    .local v4, "x":I
    iget v5, v3, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->y:I

    iget v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    int-to-float v6, v6

    sub-float v6, v2, v6

    iget v7, v3, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->height:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    iget v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayHeight675:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    .line 3584
    .local v5, "y":I
    iget-object v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputselectedObject(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;)V

    .line 3585
    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->count()I

    move-result v6

    const/16 v16, 0x1

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_5
    if-ltz v6, :cond_13

    .line 3586
    invoke-virtual {v3, v6}, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->marker(I)Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;

    move-result-object v7

    .line 3587
    .local v7, "marker":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;
    iget v8, v7, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;->x:I

    if-ne v8, v4, :cond_12

    iget v8, v7, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;->y:I

    if-ne v8, v5, :cond_12

    .line 3588
    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8, v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputselectedObject(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;)V

    .line 3589
    goto :goto_6

    .line 3585
    .end local v7    # "marker":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;
    :cond_12
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 3592
    .end local v6    # "i":I
    :cond_13
    :goto_6
    iget-object v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectedObject(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;

    move-result-object v6

    if-eqz v6, :cond_15

    .line 3593
    iget-object v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetobjectDetails(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    sget v8, Lcom/ahsim/demulation/R$string;->razor_preview_object_selected:I

    .line 3594
    iget-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v9}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectedObject(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;

    move-result-object v9

    iget v9, v9, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;->kind:I

    const/4 v11, 0x1

    if-ne v9, v11, :cond_14

    .line 3595
    iget-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    sget v10, Lcom/ahsim/demulation/R$string;->razor_preview_unit:I

    invoke-virtual {v9, v10}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    .line 3596
    :cond_14
    iget-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    sget v10, Lcom/ahsim/demulation/R$string;->razor_preview_structure:I

    invoke-virtual {v9, v10}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_7
    iget-object v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v10}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectedObject(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;

    move-result-object v10

    iget v10, v10, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;->owner:I

    .line 3597
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v11}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectedObject(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;

    move-result-object v11

    iget v11, v11, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;->type:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v12}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectedObject(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;

    move-result-object v12

    iget v12, v12, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;->x:I

    .line 3598
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v13, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v13}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectedObject(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;

    move-result-object v13

    iget v13, v13, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;->y:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v9, v10, v11, v12, v13}, [Ljava/lang/Object;

    move-result-object v9

    .line 3593
    invoke-virtual {v7, v8, v9}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3600
    :cond_15
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->invalidate()V

    .line 3601
    return-void

    .line 3581
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_16
    :goto_8
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 34
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 3089
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 3090
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetcanvasBitmap(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 3091
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    const-string v2, "CANVAS_BLANK"

    if-eqz v8, :cond_39

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v30, v8

    move-object v8, v0

    goto/16 :goto_1a

    .line 3100
    :cond_0
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetquickPlay662(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3104
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/ahsim/demulation/RazorClassicMetrics678;->cellPixels(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayCell675:F

    .line 3105
    iget v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayCell675:F

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayWidth675:I

    .line 3106
    iget v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayCell675:F

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->rows()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayHeight675:I

    goto :goto_1

    .line 3108
    :cond_1
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->getWidth()I

    move-result v3

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 3109
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->getHeight()I

    move-result v4

    iget-object v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v6, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v5

    sub-int/2addr v4, v5

    .line 3108
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayHeight675:I

    iput v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayWidth675:I

    .line 3110
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    .line 3111
    :cond_2
    iget v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayWidth675:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    :goto_0
    iput v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayCell675:F

    .line 3113
    :goto_1
    iget v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayWidth675:I

    iput v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displaySize:I

    .line 3114
    iget v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayWidth675:I

    if-lez v3, :cond_38

    iget v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayHeight675:I

    if-gtz v3, :cond_3

    move-object/from16 v30, v8

    move-object v8, v0

    goto/16 :goto_19

    .line 3115
    :cond_3
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetquickPlay662(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v3

    const/4 v9, 0x2

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3116
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetsmoothCamera679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorSmoothCamera679;

    move-result-object v3

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v4

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/ahsim/demulation/RazorSmoothCamera679;->ensure(II)V

    .line 3119
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetsmoothCamera679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorSmoothCamera679;

    move-result-object v3

    iget v3, v3, Lcom/ahsim/demulation/RazorSmoothCamera679;->x:F

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    neg-float v3, v3

    iget v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayCell675:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    .line 3120
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetsmoothCamera679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorSmoothCamera679;

    move-result-object v3

    iget v3, v3, Lcom/ahsim/demulation/RazorSmoothCamera679;->y:F

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    neg-float v3, v3

    iget v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayCell675:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    goto :goto_2

    .line 3122
    :cond_4
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->getWidth()I

    move-result v3

    iget v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayWidth675:I

    sub-int/2addr v3, v4

    div-int/2addr v3, v9

    iput v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    .line 3123
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->getHeight()I

    move-result v3

    iget v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayHeight675:I

    sub-int/2addr v3, v4

    div-int/2addr v3, v9

    iput v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    .line 3126
    :goto_2
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetquickPlay662(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 3127
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetterrainCols679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x20

    if-ne v3, v4, :cond_6

    .line 3128
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetterrainRows679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x20

    if-eq v3, v4, :cond_5

    goto :goto_3

    .line 3137
    :cond_5
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputlastCanvasWarning749(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Ljava/lang/String;)V

    .line 3138
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetterrainOriginX679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetsmoothCamera679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorSmoothCamera679;

    move-result-object v3

    iget v3, v3, Lcom/ahsim/demulation/RazorSmoothCamera679;->x:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayCell675:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 3139
    .local v2, "left":I
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetterrainOriginY679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetsmoothCamera679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorSmoothCamera679;

    move-result-object v4

    iget v4, v4, Lcom/ahsim/demulation/RazorSmoothCamera679;->y:F

    sub-float/2addr v3, v4

    iget v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayCell675:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 3140
    .local v3, "top":I
    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetterrainCols679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayCell675:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetterrainRows679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayCell675:F

    mul-float/2addr v6, v7

    .line 3141
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v6, v3

    invoke-direct {v4, v2, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3142
    .end local v2    # "left":I
    .end local v3    # "top":I
    .local v4, "dest":Landroid/graphics/Rect;
    move-object v10, v4

    goto :goto_4

    .line 3129
    .end local v4    # "dest":Landroid/graphics/Rect;
    :cond_6
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIZE_MISMATCH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " expected="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetterrainCols679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetterrainRows679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3131
    .local v3, "why":Ljava/lang/String;
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetlastCanvasWarning749(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 3132
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputlastCanvasWarning749(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Ljava/lang/String;)V

    .line 3133
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetruntimeDiagnostics749(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->event(Ljava/lang/String;Ljava/lang/String;)V

    .line 3135
    :cond_7
    return-void

    .line 3143
    .end local v3    # "why":Ljava/lang/String;
    :cond_8
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    iget v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    iget v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    iget v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayWidth675:I

    add-int/2addr v5, v6

    iget v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    iget v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayHeight675:I

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v4, v2

    move-object v10, v4

    .line 3146
    .local v10, "dest":Landroid/graphics/Rect;
    :goto_4
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 3147
    .local v11, "clip677":I
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetquickPlay662(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v2

    const/4 v12, 0x0

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->getHeight()I

    move-result v3

    invoke-virtual {v1, v12, v12, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_5

    .line 3148
    :cond_9
    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3149
    :goto_5
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v1, v8, v7, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3152
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetobjectFrame(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;

    move-result-object v13

    .line 3153
    .local v13, "frame":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetquickPlay662(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v2

    const/16 v15, 0xb

    const/4 v3, 0x3

    const/high16 v16, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v17, 0x3f000000    # 0.5f

    if-nez v2, :cond_f

    if-eqz v13, :cond_f

    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v2

    if-eqz v2, :cond_f

    iget v2, v13, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->x:I

    iget-object v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v6

    if-ne v2, v6, :cond_f

    iget v2, v13, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->y:I

    iget-object v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v6

    .line 3154
    invoke-virtual {v6}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v6

    if-ne v2, v6, :cond_e

    iget v2, v13, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->width:I

    iget-object v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v6

    if-ne v2, v6, :cond_e

    iget v2, v13, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->height:I

    iget-object v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v6

    .line 3155
    invoke-virtual {v6}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->rows()I

    move-result v6

    if-ne v2, v6, :cond_d

    .line 3156
    iget v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displaySize:I

    int-to-float v2, v2

    iget v6, v13, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->width:I

    int-to-float v6, v6

    div-float v18, v2, v6

    .line 3157
    .local v18, "cell":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    invoke-virtual {v13}, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->count()I

    move-result v6

    if-ge v2, v6, :cond_c

    .line 3158
    invoke-virtual {v13, v2}, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->marker(I)Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;

    move-result-object v6

    .line 3159
    .local v6, "o":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;
    iget v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    int-to-float v4, v4

    iget v7, v6, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;->x:I

    move/from16 v21, v12

    iget v12, v13, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->x:I

    sub-int/2addr v7, v12

    int-to-float v7, v7

    add-float v7, v7, v17

    mul-float v7, v7, v18

    add-float/2addr v7, v4

    .line 3160
    .local v7, "cx":F
    iget v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    int-to-float v4, v4

    iget v12, v6, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;->y:I

    move/from16 v22, v9

    iget v9, v13, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->y:I

    sub-int/2addr v12, v9

    int-to-float v9, v12

    add-float v9, v9, v17

    mul-float v9, v9, v18

    add-float/2addr v9, v4

    .line 3161
    .local v9, "cy":F
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v4

    int-to-float v4, v4

    const v12, 0x3ea3d70a    # 0.32f

    mul-float v12, v12, v18

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3, v15}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v12, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 3162
    .local v12, "radius":F
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3163
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->ownerColors:[I

    iget v15, v6, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;->owner:I

    aget v4, v4, v15

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3164
    iget v3, v6, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;->kind:I

    if-ne v3, v5, :cond_a

    .line 3165
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v12

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerStroke:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v9, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3166
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v9, v12, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move/from16 v19, v2

    move-object v15, v6

    const/4 v14, -0x1

    goto :goto_7

    .line 3168
    :cond_a
    sub-float v3, v7, v12

    sub-float v3, v3, v16

    sub-float v4, v9, v12

    sub-float v4, v4, v16

    add-float v15, v7, v12

    add-float v15, v15, v16

    move/from16 v23, v5

    add-float v5, v9, v12

    move-object/from16 v24, v6

    .end local v6    # "o":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;
    .local v24, "o":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;
    iget-object v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerStroke:Landroid/graphics/Paint;

    move/from16 v19, v2

    move v2, v3

    move v3, v4

    move v4, v15

    move-object/from16 v15, v24

    const/4 v14, -0x1

    .end local v2    # "i":I
    .end local v24    # "o":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;
    .local v15, "o":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;
    .local v19, "i":I
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3170
    sub-float v2, v7, v12

    sub-float v3, v9, v12

    add-float v4, v7, v12

    add-float v5, v9, v12

    iget-object v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3172
    :goto_7
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectedObject(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectedObject(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;

    move-result-object v2

    iget v2, v2, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;->kind:I

    iget v3, v15, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;->kind:I

    if-ne v2, v3, :cond_b

    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectedObject(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;

    move-result-object v2

    iget v2, v2, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;->packedLocation:I

    iget v3, v15, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;->packedLocation:I

    if-ne v2, v3, :cond_b

    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectedObject(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;

    move-result-object v2

    iget v2, v2, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;->type:I

    iget v3, v15, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;->type:I

    if-ne v2, v3, :cond_b

    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectedObject(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;

    move-result-object v2

    iget v2, v2, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;->owner:I

    iget v3, v15, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;->owner:I

    if-ne v2, v3, :cond_b

    .line 3175
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerStroke:Landroid/graphics/Paint;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 3176
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v12

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerStroke:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v9, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3177
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerStroke:Landroid/graphics/Paint;

    const v3, -0xefeff0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 3157
    .end local v7    # "cx":F
    .end local v9    # "cy":F
    .end local v12    # "radius":F
    .end local v15    # "o":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;
    :cond_b
    add-int/lit8 v2, v19, 0x1

    move/from16 v12, v21

    move/from16 v9, v22

    const/4 v3, 0x3

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/16 v15, 0xb

    .end local v19    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_6

    :cond_c
    move/from16 v19, v2

    move/from16 v22, v9

    move/from16 v21, v12

    const/4 v14, -0x1

    .end local v2    # "i":I
    .restart local v19    # "i":I
    goto :goto_8

    .line 3155
    .end local v18    # "cell":F
    .end local v19    # "i":I
    :cond_d
    move/from16 v22, v9

    move/from16 v21, v12

    const/4 v14, -0x1

    goto :goto_8

    .line 3154
    :cond_e
    move/from16 v22, v9

    move/from16 v21, v12

    const/4 v14, -0x1

    goto :goto_8

    .line 3153
    :cond_f
    move/from16 v22, v9

    move/from16 v21, v12

    const/4 v14, -0x1

    .line 3184
    :goto_8
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetcampaignMapFrame559(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    move-result-object v9

    .line 3185
    .local v9, "nativeFrame559":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetprofile558(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetshowObjectMarkers(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v2

    if-eqz v2, :cond_2c

    if-eqz v9, :cond_2c

    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 3186
    iget v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displaySize:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 3187
    .local v2, "cell":F
    iget-object v3, v9, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->buildings:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;

    array-length v4, v3

    move/from16 v5, v21

    :goto_9
    if-ge v5, v4, :cond_1b

    aget-object v6, v3, v5

    .line 3188
    .local v6, "b":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    const/16 v18, 0x4

    iget-object v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetstructureDimensions674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)[[I

    move-result-object v7

    if-eqz v7, :cond_11

    iget v7, v6, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->type:I

    const v19, 0x3e99999a    # 0.3f

    iget-object v12, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v12}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetstructureDimensions674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)[[I

    move-result-object v12

    array-length v12, v12

    if-lt v7, v12, :cond_10

    goto :goto_a

    .line 3189
    :cond_10
    iget-object v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetstructureDimensions674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)[[I

    move-result-object v7

    iget v12, v6, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->type:I

    aget-object v7, v7, v12

    goto :goto_b

    .line 3188
    :cond_11
    const v19, 0x3e99999a    # 0.3f

    .line 3189
    :goto_a
    const/4 v7, 0x0

    .line 3190
    .local v7, "bd":[I
    :goto_b
    if-nez v7, :cond_12

    const/4 v15, 0x1

    const/16 v23, 0x1

    goto :goto_c

    :cond_12
    aget v12, v7, v21

    const/4 v15, 0x1

    invoke-static {v15, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    move/from16 v23, v12

    :goto_c
    move/from16 v12, v23

    .line 3191
    .local v12, "buildingW":I
    if-nez v7, :cond_13

    move v14, v15

    goto :goto_d

    :cond_13
    aget v14, v7, v15

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 3192
    .local v14, "buildingH":I
    :goto_d
    iget v15, v6, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->x:I

    add-int/2addr v15, v12

    move-object/from16 v25, v3

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v3

    if-le v15, v3, :cond_19

    iget v3, v6, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->y:I

    add-int/2addr v3, v14

    iget-object v15, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v15}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v15

    invoke-virtual {v15}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v15

    if-le v3, v15, :cond_19

    iget v3, v6, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->x:I

    iget-object v15, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v15}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v15

    .line 3193
    invoke-virtual {v15}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v15

    move/from16 v26, v4

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v4

    add-int/2addr v15, v4

    if-ge v3, v15, :cond_18

    iget v3, v6, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->y:I

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v4

    .line 3194
    invoke-virtual {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v4

    iget-object v15, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v15}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v15

    invoke-virtual {v15}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->rows()I

    move-result v15

    add-int/2addr v4, v15

    if-lt v3, v4, :cond_14

    move v7, v2

    move/from16 v28, v5

    move-object/from16 v30, v8

    goto/16 :goto_e

    .line 3195
    :cond_14
    iget v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    int-to-float v3, v3

    iget v4, v6, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->x:I

    iget-object v15, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v15}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v15

    invoke-virtual {v15}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v15

    sub-int/2addr v4, v15

    int-to-float v4, v4

    add-float v4, v4, v17

    mul-float/2addr v4, v2

    add-float v15, v3, v4

    .line 3196
    .local v15, "cx":F
    iget v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    int-to-float v3, v3

    iget v4, v6, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->y:I

    move/from16 v27, v3

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v3

    sub-int/2addr v4, v3

    int-to-float v3, v4

    add-float v3, v3, v17

    mul-float/2addr v3, v2

    add-float v27, v27, v3

    .line 3197
    .local v27, "cy":F
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e9eb852    # 0.31f

    mul-float/2addr v4, v2

    move/from16 v28, v5

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    move-object/from16 v29, v7

    const/16 v7, 0xb

    .end local v7    # "bd":[I
    .local v29, "bd":[I
    invoke-static {v5, v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 3198
    .local v7, "r":F
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetquickPlay662(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetgameBar674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-direct {v0, v1, v6, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->drawBuildingArt674(Landroid/graphics/Canvas;Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;F)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 3199
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectedBuilding674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v3

    iget v4, v6, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->ordinal:I

    if-ne v3, v4, :cond_15

    .line 3200
    invoke-direct {v0, v1, v6, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->drawBuildingSelection675(Landroid/graphics/Canvas;Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;F)V

    move v7, v2

    move-object/from16 v30, v8

    goto/16 :goto_e

    .line 3199
    :cond_15
    move v7, v2

    move-object/from16 v30, v8

    goto/16 :goto_e

    .line 3203
    :cond_16
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->ownerColors:[I

    iget v5, v6, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->owner:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3204
    sub-float v3, v15, v7

    sub-float v3, v3, v16

    sub-float v4, v27, v7

    sub-float v4, v4, v16

    add-float v5, v15, v7

    add-float v5, v5, v16

    add-float v30, v27, v7

    add-float v30, v30, v16

    move-object/from16 v31, v6

    .end local v6    # "b":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    .local v31, "b":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    iget-object v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerStroke:Landroid/graphics/Paint;

    move/from16 v32, v7

    move v7, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move/from16 v5, v30

    move-object/from16 v30, v8

    move-object/from16 v8, v31

    .end local v2    # "cell":F
    .end local v31    # "b":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    .local v7, "cell":F
    .local v8, "b":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    .local v30, "bitmap":Landroid/graphics/Bitmap;
    .local v32, "r":F
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3205
    sub-float v2, v15, v32

    sub-float v3, v27, v32

    add-float v4, v15, v32

    add-float v5, v27, v32

    iget-object v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3207
    iget-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetquickPlay662(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetgameBar674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 3208
    iget-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    const v2, -0xd6d1ca

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3209
    const v1, 0x3f19999a    # 0.6f

    mul-float v2, v32, v1

    sub-float v2, v15, v2

    mul-float v3, v32, v1

    sub-float v3, v27, v3

    mul-float v4, v32, v1

    add-float/2addr v4, v15

    mul-float v1, v1, v32

    add-float v5, v27, v1

    iget-object v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3210
    iget v2, v8, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->ordinal:I

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectedBuilding674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v3

    if-ne v2, v3, :cond_1a

    .line 3211
    invoke-direct {v0, v1, v8, v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->drawBuildingSelection675(Landroid/graphics/Canvas;Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;F)V

    goto :goto_e

    .line 3207
    :cond_17
    move-object/from16 v1, p1

    .line 3212
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetquickPlay662(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/16 v3, 0x12

    invoke-static {v2, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v7, v2

    if-ltz v2, :cond_1a

    .line 3213
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 3214
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    const v3, 0x3eb851ec    # 0.36f

    mul-float/2addr v3, v7

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/16 v5, 0xd

    invoke-static {v4, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3215
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3216
    iget v2, v8, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x3e051eb8    # 0.13f

    mul-float/2addr v3, v7

    add-float v3, v27, v3

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v15, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3217
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_e

    .line 3193
    .end local v15    # "cx":F
    .end local v27    # "cy":F
    .end local v29    # "bd":[I
    .end local v30    # "bitmap":Landroid/graphics/Bitmap;
    .end local v32    # "r":F
    .restart local v2    # "cell":F
    .restart local v6    # "b":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    .local v7, "bd":[I
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    :cond_18
    move/from16 v28, v5

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move v7, v2

    move-object v8, v6

    .end local v2    # "cell":F
    .end local v6    # "b":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    .local v7, "cell":F
    .local v8, "b":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    .restart local v29    # "bd":[I
    .restart local v30    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_e

    .line 3192
    .end local v29    # "bd":[I
    .end local v30    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "cell":F
    .restart local v6    # "b":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    .local v7, "bd":[I
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    :cond_19
    move/from16 v26, v4

    move/from16 v28, v5

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move v7, v2

    move-object v8, v6

    .line 3187
    .end local v2    # "cell":F
    .end local v6    # "b":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "buildingW":I
    .end local v14    # "buildingH":I
    .local v7, "cell":F
    .restart local v30    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1a
    :goto_e
    add-int/lit8 v5, v28, 0x1

    move v2, v7

    move-object/from16 v3, v25

    move/from16 v4, v26

    move-object/from16 v8, v30

    const/4 v14, -0x1

    goto/16 :goto_9

    .line 3220
    .end local v7    # "cell":F
    .end local v30    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "cell":F
    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1b
    move v7, v2

    move-object/from16 v30, v8

    const/16 v18, 0x4

    const v19, 0x3e99999a    # 0.3f

    .end local v2    # "cell":F
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "cell":F
    .restart local v30    # "bitmap":Landroid/graphics/Bitmap;
    iget-object v8, v9, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v12, v8

    move/from16 v14, v21

    :goto_f
    if-ge v14, v12, :cond_2b

    aget-object v2, v8, v14

    .line 3221
    .local v2, "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    iget-boolean v3, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->retired:Z

    if-eqz v3, :cond_1c

    move-object/from16 v24, v8

    move-object/from16 v28, v10

    move/from16 v31, v11

    move-object/from16 v25, v13

    move/from16 v26, v14

    move/from16 v11, v18

    const/16 v29, 0x3

    move-object v8, v0

    move/from16 v18, v12

    move v12, v7

    goto/16 :goto_13

    .line 3224
    :cond_1c
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetcampaignSubtiles565(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)[I

    move-result-object v15

    .line 3225
    .local v15, "f565":[I
    iget v3, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->x:I

    int-to-float v3, v3

    add-float v3, v3, v17

    .local v3, "fx":F
    iget v4, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->y:I

    int-to-float v4, v4

    add-float v4, v4, v17

    .line 3226
    .local v4, "fy":F
    if-eqz v15, :cond_1d

    array-length v5, v15

    iget-object v6, v9, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v6, v6

    add-int/lit8 v6, v6, 0x4

    if-ne v5, v6, :cond_1d

    .line 3227
    iget v5, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->ordinal:I

    add-int/lit8 v5, v5, 0x4

    aget v5, v15, v5

    .line 3228
    .local v5, "raw":I
    const v16, 0xffff

    and-int v6, v5, v16

    int-to-float v6, v6

    const/high16 v20, 0x43800000    # 256.0f

    div-float v3, v6, v20

    ushr-int/lit8 v6, v5, 0x10

    and-int v6, v6, v16

    int-to-float v6, v6

    div-float v4, v6, v20

    move/from16 v16, v3

    move/from16 v20, v4

    goto :goto_10

    .line 3230
    .end local v5    # "raw":I
    :cond_1d
    move/from16 v16, v3

    move/from16 v20, v4

    .end local v3    # "fx":F
    .end local v4    # "fy":F
    .local v16, "fx":F
    .local v20, "fy":F
    :goto_10
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v3, v17

    cmpg-float v3, v16, v3

    if-ltz v3, :cond_29

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v3, v17

    cmpg-float v3, v20, v3

    if-ltz v3, :cond_29

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v3

    .line 3231
    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v3

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-float v3, v3, v17

    cmpl-float v3, v16, v3

    if-gez v3, :cond_28

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v3

    .line 3232
    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v3

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->rows()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-float v3, v3, v17

    cmpl-float v3, v20, v3

    if-ltz v3, :cond_1e

    move-object/from16 v24, v8

    move-object/from16 v28, v10

    move/from16 v31, v11

    move-object/from16 v25, v13

    move/from16 v26, v14

    move/from16 v11, v18

    const/16 v29, 0x3

    move-object v8, v0

    move/from16 v18, v12

    move v12, v7

    goto/16 :goto_13

    .line 3233
    :cond_1e
    iget v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v16, v4

    mul-float/2addr v4, v7

    add-float/2addr v3, v4

    .line 3234
    .local v3, "cx":F
    iget v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    int-to-float v4, v4

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v20, v5

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    .line 3235
    .local v4, "cy":F
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v5

    int-to-float v5, v5

    const v24, 0x3e9eb852    # 0.31f

    mul-float v6, v7, v24

    iget-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    move-object/from16 v24, v8

    const/16 v8, 0xb

    invoke-static {v1, v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 3236
    .local v6, "r":F
    iget-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetquickPlay662(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetgameBar674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 3237
    move-object/from16 v1, p1

    move v5, v7

    .end local v7    # "cell":F
    .local v5, "cell":F
    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->drawUnitArt674(Landroid/graphics/Canvas;Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;FFF)Z

    move-result v7

    move/from16 v33, v3

    move-object v3, v2

    move v2, v5

    move v5, v4

    move/from16 v4, v33

    .local v2, "cell":F
    .local v3, "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    .local v4, "cx":F
    .local v5, "cy":F
    if-eqz v7, :cond_22

    .line 3238
    iget v7, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->ordinal:I

    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectedUnitOrdinal559(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v8

    if-eq v7, v8, :cond_20

    iget v7, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->ordinal:I

    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectedEnemy674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v8

    if-ne v7, v8, :cond_1f

    goto :goto_11

    :cond_1f
    move-object v8, v0

    move-object/from16 v28, v10

    move/from16 v31, v11

    move-object/from16 v25, v13

    move/from16 v26, v14

    move/from16 v11, v18

    const/16 v29, 0x3

    move/from16 v18, v12

    move v12, v2

    goto/16 :goto_13

    .line 3239
    :cond_20
    :goto_11
    invoke-direct {v0, v1, v4, v5, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->drawClassicUnitSelection678(Landroid/graphics/Canvas;FFF)V

    move-object v8, v0

    move-object/from16 v28, v10

    move/from16 v31, v11

    move-object/from16 v25, v13

    move/from16 v26, v14

    move/from16 v11, v18

    const/16 v29, 0x3

    move/from16 v18, v12

    move v12, v2

    goto/16 :goto_13

    .line 3236
    .end local v5    # "cy":F
    .local v2, "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    .local v3, "cx":F
    .local v4, "cy":F
    .restart local v7    # "cell":F
    :cond_21
    move-object/from16 v1, p1

    move v5, v4

    move v4, v3

    move-object v3, v2

    move v2, v7

    .line 3242
    .end local v7    # "cell":F
    .local v2, "cell":F
    .local v3, "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    .local v4, "cx":F
    .restart local v5    # "cy":F
    :cond_22
    iget-object v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->ownerColors:[I

    iget v1, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->owner:I

    aget v1, v8, v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3243
    iget-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetquickPlay662(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v1

    const/high16 v8, 0x3f400000    # 0.75f

    if-eqz v1, :cond_23

    iget-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetgameBar674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 3244
    iget-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3245
    sub-float v1, v4, v6

    mul-float v7, v6, v8

    sub-float v7, v5, v7

    move-object/from16 v26, v3

    .end local v3    # "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    .local v26, "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    add-float v3, v4, v6

    mul-float v27, v6, v8

    add-float v27, v5, v27

    const v28, 0x3df5c28f    # 0.12f

    mul-float v28, v28, v2

    const v29, 0x3df5c28f    # 0.12f

    mul-float v29, v29, v2

    move/from16 v31, v2

    move v2, v7

    .end local v2    # "cell":F
    .local v31, "cell":F
    iget-object v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    move/from16 v25, v31

    move/from16 v31, v11

    move/from16 v11, v18

    move/from16 v18, v12

    move/from16 v12, v25

    move/from16 v32, v8

    move-object/from16 v25, v13

    move-object/from16 v13, v26

    move-object v8, v0

    move/from16 v26, v14

    move-object/from16 v0, p1

    move v14, v4

    move/from16 v4, v27

    move-object/from16 v27, v15

    move v15, v5

    move/from16 v5, v28

    move-object/from16 v28, v10

    move v10, v6

    move/from16 v6, v29

    const/16 v29, 0x3

    .end local v4    # "cx":F
    .end local v5    # "cy":F
    .end local v6    # "r":F
    .end local v11    # "clip677":I
    .end local v26    # "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    .local v10, "r":F
    .local v12, "cell":F
    .local v13, "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    .local v14, "cx":F
    .local v15, "cy":F
    .local v25, "frame":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    .local v27, "f565":[I
    .local v28, "dest":Landroid/graphics/Rect;
    .local v31, "clip677":I
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 3247
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    const v1, -0xddd9d4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3248
    const v0, 0x3ee66666    # 0.45f

    mul-float v6, v10, v0

    sub-float v1, v14, v6

    mul-float v6, v10, v19

    sub-float v2, v15, v6

    mul-float v6, v10, v0

    add-float v3, v14, v6

    mul-float v6, v10, v19

    add-float v4, v15, v6

    iget-object v5, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object v1, v0

    goto :goto_12

    .line 3243
    .end local v12    # "cell":F
    .end local v14    # "cx":F
    .end local v25    # "frame":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    .end local v27    # "f565":[I
    .end local v28    # "dest":Landroid/graphics/Rect;
    .end local v31    # "clip677":I
    .restart local v2    # "cell":F
    .restart local v3    # "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    .restart local v4    # "cx":F
    .restart local v5    # "cy":F
    .restart local v6    # "r":F
    .local v10, "dest":Landroid/graphics/Rect;
    .restart local v11    # "clip677":I
    .local v13, "frame":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    .local v15, "f565":[I
    :cond_23
    move-object/from16 v1, p1

    move/from16 v32, v8

    move-object/from16 v28, v10

    move/from16 v31, v11

    move-object/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v27, v15

    move/from16 v11, v18

    const/16 v29, 0x3

    move-object v8, v0

    move-object v13, v3

    move v14, v4

    move v15, v5

    move v10, v6

    move/from16 v18, v12

    move v12, v2

    .line 3250
    .end local v2    # "cell":F
    .end local v3    # "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    .end local v4    # "cx":F
    .end local v5    # "cy":F
    .end local v6    # "r":F
    .end local v11    # "clip677":I
    .local v10, "r":F
    .restart local v12    # "cell":F
    .local v13, "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    .restart local v14    # "cx":F
    .local v15, "cy":F
    .restart local v25    # "frame":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    .restart local v27    # "f565":[I
    .restart local v28    # "dest":Landroid/graphics/Rect;
    .restart local v31    # "clip677":I
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v0

    int-to-float v0, v0

    add-float v6, v10, v0

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerStroke:Landroid/graphics/Paint;

    invoke-virtual {v1, v14, v15, v6, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3251
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14, v15, v10, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3253
    :goto_12
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetquickPlay662(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetgameBar674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_24

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/16 v2, 0x12

    invoke-static {v0, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v12, v0

    if-ltz v0, :cond_24

    .line 3254
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 3255
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    const v2, 0x3eb851ec    # 0.36f

    mul-float/2addr v2, v12

    iget-object v3, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/16 v4, 0xd

    invoke-static {v3, v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3256
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3257
    iget v0, v13, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x3e051eb8    # 0.13f

    mul-float/2addr v2, v12

    add-float v4, v15, v2

    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v14, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3258
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3260
    :cond_24
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetquickPlay662(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetfacing666(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)[I

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetfacing666(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)[I

    move-result-object v0

    array-length v0, v0

    iget-object v2, v9, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x6

    if-ne v0, v2, :cond_25

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetfacing666(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)[I

    move-result-object v0

    iget v2, v13, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->ordinal:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x6

    aget v0, v0, v2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_25

    .line 3264
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetfacing666(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)[I

    move-result-object v0

    iget v2, v13, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->ordinal:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x7

    aget v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-double v2, v0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4060000000000000L    # 128.0

    div-double v6, v2, v4

    .line 3265
    .local v6, "a":D
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v10

    mul-float/2addr v0, v2

    add-float/2addr v0, v14

    .line 3266
    .local v0, "tx":F
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v2, v4

    iget-object v4, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v4

    int-to-float v3, v4

    add-float/2addr v3, v10

    mul-float/2addr v2, v3

    sub-float v4, v15, v2

    .line 3267
    .local v4, "ty":F
    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 3268
    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    iget-object v3, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-static {v3, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;F)F

    move-result v3

    const v5, 0x3d3851ec    # 0.045f

    mul-float/2addr v5, v12

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3269
    iget-object v5, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    move v3, v0

    move-object v0, v1

    move v1, v14

    move v2, v15

    .end local v0    # "tx":F
    .end local v14    # "cx":F
    .end local v15    # "cy":F
    .local v1, "cx":F
    .local v2, "cy":F
    .local v3, "tx":F
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object v1, v0

    .line 3271
    .end local v1    # "cx":F
    .end local v2    # "cy":F
    .end local v3    # "tx":F
    .end local v4    # "ty":F
    .end local v6    # "a":D
    .restart local v14    # "cx":F
    .restart local v15    # "cy":F
    :cond_25
    iget v0, v13, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->ordinal:I

    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectedUnitOrdinal559(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v2

    if-eq v0, v2, :cond_26

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetgameBar674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget v0, v13, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->ordinal:I

    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectedEnemy674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v2

    if-ne v0, v2, :cond_2a

    .line 3273
    :cond_26
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetgameBar674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 3279
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->artRect674:Landroid/graphics/RectF;

    sub-float v3, v14, v10

    mul-float v6, v10, v32

    sub-float v4, v15, v6

    add-float v2, v14, v10

    mul-float v6, v10, v32

    add-float v5, v15, v6

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3280
    invoke-direct {v8, v1, v14, v15, v12}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->drawClassicUnitSelection678(Landroid/graphics/Canvas;FFF)V

    goto :goto_13

    .line 3282
    :cond_27
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerStroke:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 3283
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0, v11}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v0

    int-to-float v0, v0

    add-float v6, v10, v0

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerStroke:Landroid/graphics/Paint;

    invoke-virtual {v1, v14, v15, v6, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3284
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerStroke:Landroid/graphics/Paint;

    const v3, -0xefeff0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_13

    .line 3231
    .end local v12    # "cell":F
    .end local v14    # "cx":F
    .end local v25    # "frame":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    .end local v27    # "f565":[I
    .end local v28    # "dest":Landroid/graphics/Rect;
    .end local v31    # "clip677":I
    .local v2, "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    .restart local v7    # "cell":F
    .local v10, "dest":Landroid/graphics/Rect;
    .restart local v11    # "clip677":I
    .local v13, "frame":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    .local v15, "f565":[I
    :cond_28
    move-object/from16 v24, v8

    move-object/from16 v28, v10

    move/from16 v31, v11

    move-object/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v27, v15

    move/from16 v11, v18

    const/16 v29, 0x3

    move-object v8, v0

    move-object v13, v2

    move/from16 v18, v12

    move v12, v7

    .end local v2    # "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    .end local v7    # "cell":F
    .end local v10    # "dest":Landroid/graphics/Rect;
    .end local v11    # "clip677":I
    .end local v15    # "f565":[I
    .restart local v12    # "cell":F
    .local v13, "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    .restart local v25    # "frame":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    .restart local v27    # "f565":[I
    .restart local v28    # "dest":Landroid/graphics/Rect;
    .restart local v31    # "clip677":I
    goto :goto_13

    .line 3230
    .end local v12    # "cell":F
    .end local v25    # "frame":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    .end local v27    # "f565":[I
    .end local v28    # "dest":Landroid/graphics/Rect;
    .end local v31    # "clip677":I
    .restart local v2    # "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    .restart local v7    # "cell":F
    .restart local v10    # "dest":Landroid/graphics/Rect;
    .restart local v11    # "clip677":I
    .local v13, "frame":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    .restart local v15    # "f565":[I
    :cond_29
    move-object/from16 v24, v8

    move-object/from16 v28, v10

    move/from16 v31, v11

    move-object/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v27, v15

    move/from16 v11, v18

    const/16 v29, 0x3

    move-object v8, v0

    move-object v13, v2

    move/from16 v18, v12

    move v12, v7

    .line 3220
    .end local v2    # "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    .end local v7    # "cell":F
    .end local v10    # "dest":Landroid/graphics/Rect;
    .end local v11    # "clip677":I
    .end local v13    # "frame":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    .end local v15    # "f565":[I
    .end local v16    # "fx":F
    .end local v20    # "fy":F
    .restart local v12    # "cell":F
    .restart local v25    # "frame":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    .restart local v28    # "dest":Landroid/graphics/Rect;
    .restart local v31    # "clip677":I
    :cond_2a
    :goto_13
    add-int/lit8 v14, v26, 0x1

    move-object v0, v8

    move v7, v12

    move/from16 v12, v18

    move-object/from16 v8, v24

    move-object/from16 v13, v25

    move-object/from16 v10, v28

    move/from16 v18, v11

    move/from16 v11, v31

    goto/16 :goto_f

    .end local v12    # "cell":F
    .end local v25    # "frame":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    .end local v28    # "dest":Landroid/graphics/Rect;
    .end local v31    # "clip677":I
    .restart local v7    # "cell":F
    .restart local v10    # "dest":Landroid/graphics/Rect;
    .restart local v11    # "clip677":I
    .restart local v13    # "frame":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    :cond_2b
    move-object v8, v0

    move v12, v7

    move-object/from16 v28, v10

    move/from16 v31, v11

    move-object/from16 v25, v13

    move/from16 v11, v18

    .end local v7    # "cell":F
    .end local v10    # "dest":Landroid/graphics/Rect;
    .end local v11    # "clip677":I
    .end local v13    # "frame":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    .restart local v12    # "cell":F
    .restart local v25    # "frame":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    .restart local v28    # "dest":Landroid/graphics/Rect;
    .restart local v31    # "clip677":I
    goto :goto_14

    .line 3185
    .end local v12    # "cell":F
    .end local v25    # "frame":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    .end local v28    # "dest":Landroid/graphics/Rect;
    .end local v30    # "bitmap":Landroid/graphics/Bitmap;
    .end local v31    # "clip677":I
    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "dest":Landroid/graphics/Rect;
    .restart local v11    # "clip677":I
    .restart local v13    # "frame":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    :cond_2c
    move-object/from16 v30, v8

    move-object/from16 v28, v10

    move/from16 v31, v11

    move-object/from16 v25, v13

    const/4 v11, 0x4

    const v19, 0x3e99999a    # 0.3f

    move-object v8, v0

    .line 3291
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "dest":Landroid/graphics/Rect;
    .end local v11    # "clip677":I
    .end local v13    # "frame":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    .restart local v25    # "frame":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    .restart local v28    # "dest":Landroid/graphics/Rect;
    .restart local v30    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v31    # "clip677":I
    :goto_14
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetquickPlay662(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetgameBar674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_2d

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetprofile558(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_2d

    if-eqz v9, :cond_2d

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectedUnitOrdinal559(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v0

    if-ltz v0, :cond_2d

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectedUnitOrdinal559(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v0

    iget-object v2, v9, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v2, v2

    if-ge v0, v2, :cond_2d

    iget v0, v9, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->activeUnit:I

    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectedUnitOrdinal559(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v2

    if-ne v0, v2, :cond_2d

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 3295
    iget-object v0, v9, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectedUnitOrdinal559(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v2

    aget-object v6, v0, v2

    .line 3297
    .local v6, "current":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    iget v0, v6, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->ordinal:I

    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v2

    .line 3299
    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v2

    iget-object v3, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v3

    iget-object v4, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v4

    .line 3298
    invoke-static {v9, v0, v2, v3, v4}, Lcom/ahsim/demulation/RazorPrototypeView663;->orderOverlay(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;IIII)Lcom/ahsim/demulation/RazorPrototypeView663$Overlay;

    move-result-object v7

    .line 3300
    .local v7, "destination":Lcom/ahsim/demulation/RazorPrototypeView663$Overlay;
    if-eqz v7, :cond_2d

    .line 3301
    iget v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displaySize:I

    int-to-float v0, v0

    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v2

    int-to-float v2, v2

    div-float v10, v0, v2

    .line 3302
    .local v10, "scale":F
    iget v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    int-to-float v0, v0

    iget v2, v6, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->x:I

    iget-object v3, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float v2, v2, v17

    mul-float/2addr v2, v10

    add-float/2addr v0, v2

    .line 3303
    .local v0, "cx":F
    iget v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    int-to-float v2, v2

    iget v3, v6, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->y:I

    iget-object v4, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    add-float v3, v3, v17

    mul-float/2addr v3, v10

    add-float/2addr v2, v3

    .line 3304
    .local v2, "cy":F
    iget v3, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    int-to-float v3, v3

    iget v4, v7, Lcom/ahsim/demulation/RazorPrototypeView663$Overlay;->x:I

    iget-object v5, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float v4, v4, v17

    mul-float/2addr v4, v10

    add-float/2addr v3, v4

    .line 3305
    .restart local v3    # "tx":F
    iget v4, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    int-to-float v4, v4

    iget v5, v7, Lcom/ahsim/demulation/RazorPrototypeView663$Overlay;->y:I

    iget-object v12, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v12}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v12

    sub-int/2addr v5, v12

    int-to-float v5, v5

    add-float v5, v5, v17

    mul-float/2addr v5, v10

    add-float/2addr v4, v5

    .line 3306
    .restart local v4    # "ty":F
    iget-object v5, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerStroke:Landroid/graphics/Paint;

    const v12, -0xa1d5b

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 3307
    iget-object v5, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerStroke:Landroid/graphics/Paint;

    iget-object v12, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    move/from16 v13, v22

    invoke-static {v12, v13}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3308
    iget-object v5, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerStroke:Landroid/graphics/Paint;

    move-object/from16 v33, v1

    move v1, v0

    move-object/from16 v0, v33

    .end local v0    # "cx":F
    .restart local v1    # "cx":F
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3309
    move/from16 v33, v1

    move-object v1, v0

    move/from16 v0, v33

    .end local v1    # "cx":F
    .restart local v0    # "cx":F
    iget-object v5, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerStroke:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3310
    iget-object v5, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/4 v12, 0x5

    invoke-static {v5, v12}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v5

    int-to-float v5, v5

    mul-float v12, v10, v19

    invoke-static {v5, v12}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v12, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerStroke:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v5, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3311
    iget-object v5, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerStroke:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3312
    iget-object v5, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerStroke:Landroid/graphics/Paint;

    iget-object v12, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/4 v13, 0x2

    invoke-static {v12, v13}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3313
    iget-object v5, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerStroke:Landroid/graphics/Paint;

    const v12, -0xefeff0

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 3319
    .end local v0    # "cx":F
    .end local v2    # "cy":F
    .end local v3    # "tx":F
    .end local v4    # "ty":F
    .end local v6    # "current":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    .end local v7    # "destination":Lcom/ahsim/demulation/RazorPrototypeView663$Overlay;
    .end local v10    # "scale":F
    :cond_2d
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetrouteWitness664(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorCoreRoute664;

    move-result-object v6

    .line 3320
    .local v6, "route":Lcom/ahsim/demulation/RazorCoreRoute664;
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetquickPlay662(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetgameBar674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_30

    if-eqz v6, :cond_30

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v0

    if-eqz v0, :cond_30

    if-eqz v9, :cond_30

    iget v0, v9, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->activeUnit:I

    iget v2, v6, Lcom/ahsim/demulation/RazorCoreRoute664;->unit:I

    if-ne v0, v2, :cond_30

    iget v0, v9, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->targetX:I

    iget v2, v6, Lcom/ahsim/demulation/RazorCoreRoute664;->goalX:I

    if-ne v0, v2, :cond_30

    iget v0, v9, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->targetY:I

    iget v2, v6, Lcom/ahsim/demulation/RazorCoreRoute664;->goalY:I

    if-ne v0, v2, :cond_30

    iget v0, v6, Lcom/ahsim/demulation/RazorCoreRoute664;->unit:I

    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectedUnitOrdinal559(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v2

    if-ne v0, v2, :cond_30

    .line 3325
    iget v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displaySize:I

    int-to-float v0, v0

    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v2

    int-to-float v2, v2

    div-float v7, v0, v2

    .line 3326
    .local v7, "cell":F
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    const v2, -0xad2910

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3327
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3328
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/4 v15, 0x1

    invoke-static {v2, v15}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3db851ec    # 0.09f

    mul-float/2addr v3, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3329
    iget v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    int-to-float v0, v0

    iget v2, v6, Lcom/ahsim/demulation/RazorCoreRoute664;->fromX:I

    iget-object v3, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float v2, v2, v17

    mul-float/2addr v2, v7

    add-float/2addr v0, v2

    .line 3330
    .local v0, "px":F
    iget v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    int-to-float v2, v2

    iget v3, v6, Lcom/ahsim/demulation/RazorCoreRoute664;->fromY:I

    iget-object v4, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    add-float v3, v3, v17

    mul-float/2addr v3, v7

    add-float/2addr v2, v3

    .line 3331
    .local v2, "py":F
    const/4 v3, 0x0

    move v10, v3

    .local v10, "i":I
    :goto_15
    iget-object v3, v6, Lcom/ahsim/demulation/RazorCoreRoute664;->xs:[I

    array-length v3, v3

    if-ge v10, v3, :cond_2f

    .line 3332
    iget v3, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    int-to-float v3, v3

    iget-object v4, v6, Lcom/ahsim/demulation/RazorCoreRoute664;->xs:[I

    aget v4, v4, v10

    iget-object v5, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float v4, v4, v17

    mul-float/2addr v4, v7

    add-float/2addr v3, v4

    .line 3333
    .local v3, "nx":F
    iget v4, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    int-to-float v4, v4

    iget-object v5, v6, Lcom/ahsim/demulation/RazorCoreRoute664;->ys:[I

    aget v5, v5, v10

    iget-object v12, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v12}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v12

    sub-int/2addr v5, v12

    int-to-float v5, v5

    add-float v5, v5, v17

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    .line 3336
    .local v4, "ny":F
    iget v5, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_2e

    iget v5, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_2e

    iget v5, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    iget v12, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displaySize:I

    add-int/2addr v5, v12

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gtz v5, :cond_2e

    iget v5, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    iget v12, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayHeight675:I

    add-int/2addr v5, v12

    int-to-float v5, v5

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_2e

    iget v5, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_2e

    iget v5, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_2e

    iget v5, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    iget v12, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displaySize:I

    add-int/2addr v5, v12

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_2e

    iget v5, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    iget v12, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayHeight675:I

    add-int/2addr v5, v12

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_2e

    .line 3340
    iget-object v5, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    move-object/from16 v33, v1

    move v1, v0

    move-object/from16 v0, v33

    .end local v0    # "px":F
    .local v1, "px":F
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v33, v1

    move-object v1, v0

    move/from16 v0, v33

    .line 3341
    .end local v1    # "px":F
    .restart local v0    # "px":F
    :cond_2e
    move v0, v3

    move v2, v4

    .line 3331
    .end local v3    # "nx":F
    .end local v4    # "ny":F
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_15

    .line 3343
    .end local v10    # "i":I
    :cond_2f
    iget-object v3, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3347
    .end local v0    # "px":F
    .end local v2    # "py":F
    .end local v7    # "cell":F
    :cond_30
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetprofile558(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v0

    const/16 v2, 0xc

    if-eqz v0, :cond_33

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetshowObjectMarkers(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetdynamicObjects569(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorDynamicObjects569;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 3348
    iget v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displaySize:I

    int-to-float v0, v0

    iget-object v3, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 3349
    .local v0, "cell":F
    iget-object v3, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetdynamicObjects569(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorDynamicObjects569;

    move-result-object v3

    iget-object v3, v3, Lcom/ahsim/demulation/RazorDynamicObjects569;->entries:[Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;

    array-length v4, v3

    move/from16 v12, v21

    :goto_16
    if-ge v12, v4, :cond_33

    aget-object v5, v3, v12

    .line 3350
    .local v5, "u":Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;
    iget v7, v5, Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;->phase:I

    const/4 v13, 0x2

    if-ne v7, v13, :cond_32

    iget v7, v5, Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;->x:I

    iget-object v10, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v10}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v10

    .line 3351
    invoke-virtual {v10}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v10

    if-lt v7, v10, :cond_32

    iget v7, v5, Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;->y:I

    iget-object v10, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v10}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v10

    if-lt v7, v10, :cond_32

    iget v7, v5, Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;->x:I

    iget-object v10, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v10}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v10

    .line 3352
    invoke-virtual {v10}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v10

    iget-object v13, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v13}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v13

    add-int/2addr v10, v13

    if-ge v7, v10, :cond_32

    iget v7, v5, Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;->y:I

    iget-object v10, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v10}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v10

    .line 3353
    invoke-virtual {v10}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v10

    iget-object v13, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v13}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->rows()I

    move-result v13

    add-int/2addr v10, v13

    if-lt v7, v10, :cond_31

    goto/16 :goto_17

    .line 3354
    :cond_31
    iget v7, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    int-to-float v7, v7

    iget v10, v5, Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;->x:I

    iget-object v13, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v13}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v13

    sub-int/2addr v10, v13

    int-to-float v10, v10

    add-float v10, v10, v17

    mul-float/2addr v10, v0

    add-float/2addr v7, v10

    .line 3355
    .local v7, "cx":F
    iget v10, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    int-to-float v10, v10

    iget v13, v5, Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;->y:I

    iget-object v14, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v14}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    add-float v13, v13, v17

    mul-float/2addr v13, v0

    add-float/2addr v10, v13

    .line 3356
    .local v10, "cy":F
    iget-object v13, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v13, v11}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v13

    int-to-float v13, v13

    const v14, 0x3eb33333    # 0.35f

    mul-float/2addr v14, v0

    iget-object v15, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v15, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v15

    int-to-float v15, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 3357
    .local v13, "r":F
    iget-object v14, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    iget-object v15, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->ownerColors:[I

    iget v2, v5, Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;->owner:I

    aget v2, v15, v2

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3358
    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/4 v14, 0x2

    invoke-static {v2, v14}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v13

    iget-object v14, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerStroke:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v10, v2, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3359
    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v10, v13, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3360
    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    const/4 v14, -0x1

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 3361
    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    iget-object v14, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/16 v15, 0x9

    invoke-static {v14, v15}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v14

    int-to-float v14, v14

    const v15, 0x3ec28f5c    # 0.38f

    mul-float/2addr v15, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3362
    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3363
    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2, v11}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v10

    iget-object v14, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    const-string v15, "H"

    invoke-virtual {v1, v15, v7, v2, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3364
    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3349
    .end local v5    # "u":Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;
    .end local v7    # "cx":F
    .end local v10    # "cy":F
    .end local v13    # "r":F
    :cond_32
    :goto_17
    add-int/lit8 v12, v12, 0x1

    const/16 v2, 0xc

    goto/16 :goto_16

    .line 3368
    .end local v0    # "cell":F
    :cond_33
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetprofile558(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetshowObjectMarkers(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetconstruction571(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorConstruction571;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetconstruction571(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorConstruction571;

    move-result-object v0

    iget v0, v0, Lcom/ahsim/demulation/RazorConstruction571;->phase:I

    const/4 v13, 0x2

    if-ne v0, v13, :cond_34

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetconstruction571(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorConstruction571;

    move-result-object v0

    iget v0, v0, Lcom/ahsim/demulation/RazorConstruction571;->x:I

    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v2

    .line 3370
    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v2

    if-lt v0, v2, :cond_34

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetconstruction571(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorConstruction571;

    move-result-object v0

    iget v0, v0, Lcom/ahsim/demulation/RazorConstruction571;->y:I

    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v2

    if-lt v0, v2, :cond_34

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetconstruction571(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorConstruction571;

    move-result-object v0

    iget v0, v0, Lcom/ahsim/demulation/RazorConstruction571;->x:I

    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v2

    .line 3371
    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v2

    iget-object v3, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_34

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetconstruction571(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorConstruction571;

    move-result-object v0

    iget v0, v0, Lcom/ahsim/demulation/RazorConstruction571;->y:I

    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v2

    .line 3372
    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v2

    iget-object v3, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_34

    .line 3373
    iget v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displaySize:I

    int-to-float v0, v0

    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 3374
    .restart local v0    # "cell":F
    iget v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    int-to-float v2, v2

    iget-object v3, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetconstruction571(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorConstruction571;

    move-result-object v3

    iget v3, v3, Lcom/ahsim/demulation/RazorConstruction571;->x:I

    iget-object v4, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    add-float v3, v3, v17

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    .line 3375
    .local v2, "cx":F
    iget v3, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    int-to-float v3, v3

    iget-object v4, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetconstruction571(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorConstruction571;

    move-result-object v4

    iget v4, v4, Lcom/ahsim/demulation/RazorConstruction571;->y:I

    iget-object v5, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float v4, v4, v17

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    .line 3376
    .local v3, "cy":F
    iget-object v4, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    const v5, -0x264d94

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 3377
    const v4, 0x3eae147b    # 0.34f

    mul-float/2addr v4, v0

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget-object v5, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3378
    iget-object v4, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    const v5, -0xefebe6

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 3379
    iget-object v4, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3380
    const v4, 0x3e428f5c    # 0.19f

    mul-float/2addr v4, v0

    add-float/2addr v4, v3

    iget-object v5, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    const-string v7, "r"

    invoke-virtual {v1, v7, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3381
    iget-object v4, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3385
    .end local v0    # "cell":F
    .end local v2    # "cx":F
    .end local v3    # "cy":F
    :cond_34
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetprofile558(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetshowObjectMarkers(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetrefinery570(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorRefinery570;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetrefinery570(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorRefinery570;

    move-result-object v0

    .line 3386
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorRefinery570;->active()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetrefinery570(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorRefinery570;

    move-result-object v0

    iget v0, v0, Lcom/ahsim/demulation/RazorRefinery570;->x:I

    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v2

    .line 3387
    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v2

    if-lt v0, v2, :cond_35

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetrefinery570(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorRefinery570;

    move-result-object v0

    iget v0, v0, Lcom/ahsim/demulation/RazorRefinery570;->y:I

    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v2

    if-lt v0, v2, :cond_35

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetrefinery570(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorRefinery570;

    move-result-object v0

    iget v0, v0, Lcom/ahsim/demulation/RazorRefinery570;->x:I

    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v2

    .line 3388
    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v2

    iget-object v3, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_35

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetrefinery570(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorRefinery570;

    move-result-object v0

    iget v0, v0, Lcom/ahsim/demulation/RazorRefinery570;->y:I

    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v2

    .line 3389
    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v2

    iget-object v3, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_35

    .line 3390
    iget v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displaySize:I

    int-to-float v0, v0

    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v2

    int-to-float v2, v2

    div-float v7, v0, v2

    .line 3391
    .local v7, "cell":F
    iget v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayLeft:I

    int-to-float v0, v0

    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetrefinery570(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorRefinery570;

    move-result-object v2

    iget v2, v2, Lcom/ahsim/demulation/RazorRefinery570;->x:I

    iget-object v3, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float v2, v2, v17

    mul-float/2addr v2, v7

    add-float v10, v0, v2

    .line 3392
    .local v10, "cx":F
    iget v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayTop:I

    int-to-float v0, v0

    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetrefinery570(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorRefinery570;

    move-result-object v2

    iget v2, v2, Lcom/ahsim/demulation/RazorRefinery570;->y:I

    iget-object v3, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float v2, v2, v17

    mul-float/2addr v2, v7

    add-float v12, v0, v2

    .line 3393
    .local v12, "cy":F
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0, v11}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3edc28f6    # 0.43f

    mul-float/2addr v2, v7

    iget-object v3, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/16 v4, 0xc

    invoke-static {v3, v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 3394
    .restart local v13    # "r":F
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->ownerColors:[I

    iget-object v3, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetrefinery570(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorRefinery570;

    move-result-object v3

    iget v3, v3, Lcom/ahsim/demulation/RazorRefinery570;->owner:I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3395
    sub-float v1, v10, v13

    sub-float v2, v12, v13

    add-float v3, v10, v13

    add-float v4, v12, v13

    iget-object v5, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3396
    move-object v1, v0

    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 3397
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ec28f5c    # 0.38f

    mul-float/2addr v3, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3398
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3399
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0, v11}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v12

    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    const-string v3, "R"

    invoke-virtual {v1, v3, v10, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3400
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->markerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3402
    .end local v7    # "cell":F
    .end local v10    # "cx":F
    .end local v12    # "cy":F
    .end local v13    # "r":F
    :cond_35
    iget-object v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetquickPlay662(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget v0, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayCell675:F

    invoke-direct {v8, v1, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->drawClassicCursor678(Landroid/graphics/Canvas;F)V

    .line 3403
    :cond_36
    move/from16 v0, v31

    .end local v31    # "clip677":I
    .local v0, "clip677":I
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3404
    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetquickPlay662(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v2

    if-nez v2, :cond_37

    iget-object v2, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->borderPaint:Landroid/graphics/Paint;

    move-object/from16 v4, v28

    .end local v28    # "dest":Landroid/graphics/Rect;
    .local v4, "dest":Landroid/graphics/Rect;
    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_18

    .end local v4    # "dest":Landroid/graphics/Rect;
    .restart local v28    # "dest":Landroid/graphics/Rect;
    :cond_37
    move-object/from16 v4, v28

    .line 3405
    .end local v28    # "dest":Landroid/graphics/Rect;
    .restart local v4    # "dest":Landroid/graphics/Rect;
    :goto_18
    return-void

    .line 3114
    .end local v0    # "clip677":I
    .end local v4    # "dest":Landroid/graphics/Rect;
    .end local v6    # "route":Lcom/ahsim/demulation/RazorCoreRoute664;
    .end local v9    # "nativeFrame559":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .end local v25    # "frame":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    .end local v30    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    :cond_38
    move-object/from16 v30, v8

    move-object v8, v0

    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v30    # "bitmap":Landroid/graphics/Bitmap;
    :goto_19
    return-void

    .line 3091
    .end local v30    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    :cond_39
    move-object/from16 v30, v8

    move-object v8, v0

    .line 3092
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v30    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1a
    if-nez v30, :cond_3a

    const-string v0, "NULL_BITMAP"

    goto :goto_1b

    :cond_3a
    const-string v0, "RECYCLED_BITMAP"

    .line 3093
    .local v0, "why":Ljava/lang/String;
    :goto_1b
    iget-object v3, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetlastCanvasWarning749(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 3094
    iget-object v3, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputlastCanvasWarning749(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Ljava/lang/String;)V

    .line 3095
    iget-object v3, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetruntimeDiagnostics749(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " selected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v8, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectedUnitOrdinal559(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->event(Ljava/lang/String;Ljava/lang/String;)V

    .line 3098
    :cond_3b
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldW"    # I
    .param p4, "oldH"    # I

    .line 2935
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2936
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetquickPlay662(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v0

    if-le p1, v0, :cond_3

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v0

    if-gt p2, v0, :cond_0

    goto :goto_0

    .line 2937
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputclassicViewWidth678(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V

    .line 2938
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0, p2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputclassicViewHeight678(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V

    .line 2939
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 2940
    .local v0, "ratio":F
    if-ne p1, p3, :cond_1

    if-ne p2, p4, :cond_1

    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v1

    .line 2941
    invoke-virtual {v1}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->classicMode678()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2942
    :cond_1
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v1, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputgameViewportRatio675(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;F)V

    .line 2943
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetsource(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mrequestFrame(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Z)V

    .line 2945
    :cond_2
    return-void

    .line 2936
    .end local v0    # "ratio":F
    :cond_3
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 3407
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    iget v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displaySize:I

    if-gtz v1, :cond_0

    goto/16 :goto_1

    .line 3408
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 3409
    .local v1, "action":I
    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 3410
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->lastX679:F

    iput v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->downX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->lastY679:F

    iput v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->downY:F

    .line 3411
    iput-boolean v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->dragging679:Z

    iput-boolean v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->pinchInProgress675:Z

    .line 3412
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetsmoothCamera679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorSmoothCamera679;

    move-result-object v3

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v4

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/ahsim/demulation/RazorSmoothCamera679;->ensure(II)V

    .line 3413
    return v2

    .line 3415
    :cond_1
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetquickPlay662(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_2

    const/4 v4, 0x5

    if-ne v1, v4, :cond_2

    .line 3416
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-lt v4, v5, :cond_2

    .line 3417
    iput-boolean v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->pinchInProgress675:Z

    .line 3418
    return v2

    .line 3420
    :cond_2
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetquickPlay662(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v4

    const/4 v6, 0x6

    if-eqz v4, :cond_3

    if-ne v1, v6, :cond_3

    return v2

    .line 3421
    :cond_3
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetquickPlay662(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-lt v4, v5, :cond_4

    return v2

    .line 3422
    :cond_4
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetquickPlay662(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-ne v1, v5, :cond_8

    iget-boolean v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->pinchInProgress675:Z

    if-nez v4, :cond_8

    .line 3423
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .local v4, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 3424
    .local v5, "y":F
    iget-boolean v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->dragging679:Z

    if-nez v7, :cond_5

    iget v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->downX:F

    sub-float v7, v4, v7

    float-to-double v7, v7

    iget v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->downY:F

    sub-float v9, v5, v9

    float-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    iget-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v9, v6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v6

    int-to-double v9, v6

    cmpl-double v6, v7, v9

    if-lez v6, :cond_5

    .line 3425
    iput-boolean v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->dragging679:Z

    .line 3426
    iget-object v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v6, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputfollowSelected663(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Z)V

    .line 3428
    :cond_5
    iget-boolean v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->dragging679:Z

    if-eqz v6, :cond_7

    .line 3429
    iget-object v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v6

    .local v6, "oldX":I
    iget-object v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v7

    .line 3430
    .local v7, "oldY":I
    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetsmoothCamera679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorSmoothCamera679;

    move-result-object v9

    iget v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->lastX679:F

    sub-float v10, v8, v4

    iget v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->lastY679:F

    sub-float v11, v8, v5

    iget v12, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayCell675:F

    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v8

    .line 3431
    invoke-virtual {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->minX()I

    move-result v13

    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->minY()I

    move-result v14

    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->maxX()I

    move-result v15

    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v8

    .line 3432
    invoke-virtual {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->maxY()I

    move-result v16

    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v17

    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->rows()I

    move-result v18

    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetterrainOriginX679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v19

    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetterrainOriginY679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v20

    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetterrainCols679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v21

    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetterrainRows679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v22

    .line 3430
    invoke-virtual/range {v9 .. v22}, Lcom/ahsim/demulation/RazorSmoothCamera679;->drag(FFFIIIIIIIIII)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3434
    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v8

    iget-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v9}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetsmoothCamera679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorSmoothCamera679;

    move-result-object v9

    iget v9, v9, Lcom/ahsim/demulation/RazorSmoothCamera679;->x:F

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    sub-int/2addr v9, v6

    iget-object v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v10}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetsmoothCamera679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorSmoothCamera679;

    move-result-object v10

    iget v10, v10, Lcom/ahsim/demulation/RazorSmoothCamera679;->y:F

    float-to-double v10, v10

    .line 3435
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    sub-int/2addr v10, v7

    .line 3434
    invoke-virtual {v8, v9, v10}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->pan(II)Z

    .line 3436
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->invalidate()V

    .line 3437
    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v8

    if-ne v6, v8, :cond_6

    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v8

    if-eq v7, v8, :cond_7

    :cond_6
    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetpanFrameRequested679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 3439
    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputpanFrameRequested679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Z)V

    .line 3440
    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v8, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mrequestFrame(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Z)V

    .line 3444
    .end local v6    # "oldX":I
    .end local v7    # "oldY":I
    :cond_7
    iput v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->lastX679:F

    iput v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->lastY679:F

    .line 3445
    return v2

    .line 3447
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_8
    const/4 v4, 0x3

    if-ne v1, v4, :cond_9

    .line 3448
    iput-boolean v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->dragging679:Z

    iput-boolean v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->pinchInProgress675:Z

    return v2

    .line 3450
    :cond_9
    if-ne v1, v2, :cond_d

    .line 3451
    iget-boolean v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->pinchInProgress675:Z

    if-nez v4, :cond_c

    .line 3452
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetquickPlay662(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3453
    iget-boolean v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->dragging679:Z

    if-nez v4, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v0, v4, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->pickObject(FF)V

    goto :goto_0

    .line 3455
    :cond_a
    iget v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->downX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    .local v4, "deltaX":F
    iget v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->downY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    .line 3456
    .local v5, "deltaY":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/16 v8, 0x8

    invoke-static {v7, v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_b

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v7, v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_b

    .line 3457
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {v0, v6, v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->pickObject(FF)V

    goto :goto_0

    .line 3458
    :cond_b
    iget-object v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    move-result-object v6

    iget v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayCell675:F

    div-float v7, v4, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->displayCell675:F

    div-float v8, v5, v8

    .line 3459
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 3458
    invoke-virtual {v6, v7, v8}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->pan(II)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 3460
    iget-object v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v6, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mrequestFrame(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Z)V

    .line 3463
    .end local v4    # "deltaX":F
    .end local v5    # "deltaY":F
    :cond_c
    :goto_0
    iput-boolean v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->dragging679:Z

    iput-boolean v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->pinchInProgress675:Z

    .line 3464
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->performClick()Z

    return v2

    .line 3466
    :cond_d
    return v2

    .line 3407
    .end local v1    # "action":I
    :cond_e
    :goto_1
    return v2
.end method

.method public performClick()Z
    .locals 1

    .line 3602
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    const/4 v0, 0x1

    return v0
.end method
