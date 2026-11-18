.class Lcom/ahsim/demulation/RazorTerrainPreviewActivity$3;
.super Landroid/widget/FrameLayout;
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
.field private final barPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/ahsim/demulation/RazorTerrainPreviewActivity;
    .param p2, "arg0"    # Landroid/content/Context;

    .line 558
    iput-object p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$3;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 559
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$3;->barPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 561
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 562
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$3;->barPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 563
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$3;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$3;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42900000    # 72.0f

    div-float/2addr v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 564
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$3;->barPaint:Landroid/graphics/Paint;

    const v1, -0x97867d

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 565
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$3;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float v6, v0, v1

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$3;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v7, v0, v1

    iget-object v8, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$3;->barPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f000000    # 0.5f

    move-object v3, p1

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 566
    iget-object p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$3;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetlastMaxHp743(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result p1

    if-lez p1, :cond_0

    .line 567
    iget-object p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$3;->barPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 568
    iget-object p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$3;->barPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 569
    iget-object p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$3;->barPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 570
    iget-object p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$3;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$3;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40900000    # 4.5f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 571
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$3;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetlastHp743(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$3;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetlastMaxHp743(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 572
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$3;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$3;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$3;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$3;->barPaint:Landroid/graphics/Paint;

    .line 571
    invoke-virtual {v3, p1, v0, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 574
    :cond_0
    return-void
.end method
