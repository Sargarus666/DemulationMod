.class Lcom/ahsim/demulation/RazorTerrainPreviewActivity$2;
.super Landroid/view/View;
.source "RazorTerrainPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->installGameSurface674()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/ahsim/demulation/RazorTerrainPreviewActivity;
    .param p2, "arg0"    # Landroid/content/Context;

    .line 517
    iput-object p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$2;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 518
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$2;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 520
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 521
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$2;->getWidth()I

    move-result v0

    int-to-float v4, v0

    .local v4, "w":F
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$2;->getHeight()I

    move-result v0

    int-to-float v9, v0

    .local v9, "h":F
    const/high16 v0, 0x42d80000    # 108.0f

    div-float v0, v4, v0

    .line 522
    .local v0, "k":F
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$2;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 523
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$2;->paint:Landroid/graphics/Paint;

    const v2, -0x69efe8e1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v11, 0x41a00000    # 20.0f

    mul-float v5, v0, v11

    iget-object v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$2;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 524
    iget-object p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$2;->paint:Landroid/graphics/Paint;

    const v2, -0x71f3eee9

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    mul-float v3, v0, v11

    const/high16 p1, 0x42840000    # 66.0f

    mul-float v5, v0, p1

    iget-object v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$2;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 525
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$2;->paint:Landroid/graphics/Paint;

    const v3, -0x69f5f0eb

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    mul-float v3, v0, p1

    const/high16 v12, 0x431d0000    # 157.0f

    mul-float v5, v0, v12

    iget-object v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$2;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 526
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$2;->paint:Landroid/graphics/Paint;

    const v3, 0x60080c11

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    mul-float v3, v0, v12

    iget-object v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$2;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move v5, v9

    .end local v9    # "h":F
    .local v5, "h":F
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 527
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$2;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 528
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$2;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v3, v0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 529
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$2;->paint:Landroid/graphics/Paint;

    const v3, -0x41d4a982

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v8, 0x0

    iget-object v10, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$2;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .local v5, "canvas":Landroid/graphics/Canvas;
    .restart local v9    # "h":F
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 530
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$2;->paint:Landroid/graphics/Paint;

    const v3, -0x32c59a76    # -1.9545104E8f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 531
    mul-float v3, v0, v11

    mul-float v5, v0, v11

    iget-object v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$2;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 532
    mul-float v3, v0, p1

    mul-float v5, v0, p1

    iget-object v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$2;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 533
    mul-float v3, v0, v12

    mul-float v5, v0, v12

    iget-object v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$2;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 534
    return-void
.end method
