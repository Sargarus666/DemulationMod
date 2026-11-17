.method private drawUnitGroupingModeButton(Landroid/graphics/Canvas;Lcom/ahsim/demulation/MainActivity$WorldView$Layout;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Lcom/ahsim/demulation/MainActivity$WorldView$Layout;

    iget-object v0, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->unitGroupingModeButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-boolean v0, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->suppressOverlayForCapture:Z

    if-nez v0, :return

    iget-boolean v0, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->frontMenuOpen:Z

    if-nez v0, :return

    iget-object v0, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetrenderWords(Lcom/ahsim/demulation/MainActivity;)[I

    move-result-object v0

    if-nez v0, :return

    iget v0, p2, Lcom/ahsim/demulation/MainActivity$WorldView$Layout;->scale:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->unitGroupingModeButtonRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->tacticalHudRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->tacticalHudRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v4, v4, v0

    add-float/2addr v3, v4

    const/high16 v4, 0x41900000    # 18.0f

    mul-float/2addr v4, v0

    add-float v5, v2, v4

    add-float v6, v3, v4

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v7, p1

    move-object v8, v1

    const/4 v9, 0x0

    iget-object v2, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetunitGroupingModeEnabled(Lcom/ahsim/demulation/MainActivity;)Z

    move-result v2

    iget-object v3, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->panelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->linePaint:Landroid/graphics/Paint;

    invoke-static {v7, v8, v9, v2, v3, v4}, Lcom/ahsim/demulation/DuneSegaHud;->drawHudButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;IZLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    :return
    return-void
.end method
