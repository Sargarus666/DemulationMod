import io, sys
P = "apk2/smali_classes2/com/ahsim/demulation/MainActivity$WorldView.smali"
s = io.open(P, encoding="utf-8").read()

def rep(old, new, label, n=1):
    global s
    c = s.count(old)
    if c != n:
        print("FAIL", label, "expected", n, "got", c); sys.exit(1)
    s = s.replace(old, new, n)
    print("OK", label)

# ---- 1) ОТСТУП КАРТЫ: activeViewportRect ----
rep("""    .line 13368
    iget-object v7, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->activeViewportRect:Landroid/graphics/RectF;

    iget v10, v6, Lcom/ahsim/demulation/MainActivity$WorldView$Layout;->viewLeft:F

    iget v11, v6, Lcom/ahsim/demulation/MainActivity$WorldView$Layout;->viewTop:F

    iget v12, v6, Lcom/ahsim/demulation/MainActivity$WorldView$Layout;->hudLeft:F

    iget v13, v6, Lcom/ahsim/demulation/MainActivity$WorldView$Layout;->viewTop:F

    iget v14, v6, Lcom/ahsim/demulation/MainActivity$WorldView$Layout;->viewportHeight:F

    add-float/2addr v13, v14

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V
""",
"""    .line 13368
    iget-object v7, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->activeViewportRect:Landroid/graphics/RectF;

    iget v10, v6, Lcom/ahsim/demulation/MainActivity$WorldView$Layout;->viewLeft:F

    iget v11, v6, Lcom/ahsim/demulation/MainActivity$WorldView$Layout;->viewTop:F

    iget v12, v6, Lcom/ahsim/demulation/MainActivity$WorldView$Layout;->hudLeft:F

    iget v13, v6, Lcom/ahsim/demulation/MainActivity$WorldView$Layout;->viewTop:F

    iget v14, v6, Lcom/ahsim/demulation/MainActivity$WorldView$Layout;->viewportHeight:F

    add-float/2addr v13, v14

    const/high16 v14, 0x41c00000    # 24.0f

    add-float v10, v10, v14

    add-float v11, v11, v14

    sub-float v12, v12, v14

    sub-float v13, v13, v14

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V
""", "отступ карты")

# ---- 2) ОТСТУП РАДАРА ----
rep("""    const/high16 v5, 0x40800000    # 4.0f

    sub-float v19, v19, v5

    .line 17547
""",
"""    const/high16 v5, 0x41000000    # 8.0f

    sub-float v19, v19, v5

    .line 17547
""", "отступ радара X")

rep("""    const/high16 v5, 0x40400000    # 3.0f

    sub-float v20, v20, v5

    .line 17548
""",
"""    const/high16 v5, 0x41000000    # 8.0f

    sub-float v20, v20, v5

    .line 17548
""", "отступ радара Y")

# ---- 3) КНОПКА ЮНИТОВ: над радаром + стиль Dune ----
rep("""    iget-object v2, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->unitGroupingModeButtonRect:Landroid/graphics/RectF;

    sub-float v3, v12, v9

    add-float v4, v11, v9

    invoke-virtual {v2, v11, v3, v4, v12}, Landroid/graphics/RectF;->set(FFFF)V
""",
"""    iget-object v2, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->radarRect:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->unitGroupingModeButtonRect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-static {v2, v8, v4, v3}, Lcom/ahsim/demulation/DuneSegaHud;->aboveRadarRect(Landroid/graphics/RectF;FILandroid/graphics/RectF;)V
""", "позиция кнопки юнитов")

rep("""    iget-object v2, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->panelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v14, v15, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 11746
""",
"""    iget-object v2, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->unitGroupingModeButtonRect:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->panelPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->linePaint:Landroid/graphics/Paint;

    iget-object v5, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v5}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetunitGroupingModeEnabled(Lcom/ahsim/demulation/MainActivity;)Z

    move-result v5

    const/4 v6, 0x0

    invoke-static {v1, v2, v6, v5, v3, v4}, Lcom/ahsim/demulation/DuneSegaHud;->drawHudButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;IZLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 11746
""", "стиль кнопки юнитов")

# ---- 4) КНОПКА БАЗЫ: стиль Dune ----
rep("""    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v4, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->panelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v12, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 12173
""",
"""    const/4 v2, 0x1

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->panelPaint:Landroid/graphics/Paint;

    iget-object v5, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->linePaint:Landroid/graphics/Paint;

    invoke-static {v1, v9, v2, v3, v4, v5}, Lcom/ahsim/demulation/DuneSegaHud;->drawHudButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;IZLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 12173
""", "стиль кнопки базы")

# ---- 5) ШРИФТ И ЦИФРЫ КРЕДИТОВ ----
rep("""    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
""",
"""    invoke-virtual {p0}, Lcom/ahsim/demulation/MainActivity$WorldView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ahsim/demulation/DuneSegaHud;->typeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
""", "шрифт кредитов", n=1)

# ---- 6) МЕТОД ДЛЯ ПЕРЕНОСА БАЗЫ НАД РАДАР ----
helper = """
.method private placeBaseAboveRadar()V
    .locals 4
    iget-object v0, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->radarRect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->favoriteButtonRects:[Landroid/graphics/RectF;
    const/4 v2, 0x0
    aget-object v1, v1, v2
    const/high16 v3, 0x40800000    # 4.0f
    const/4 v2, 0x1
    invoke-static {v0, v3, v2, v1}, Lcom/ahsim/demulation/DuneSegaHud;->aboveRadarRect(Landroid/graphics/RectF;FILandroid/graphics/RectF;)V
    return-void
.end method

"""
anchor = ".method private drawFavoriteNavigation(Landroid/graphics/Canvas;Lcom/ahsim/demulation/MainActivity$WorldView$Layout;)V\n"
if s.count(anchor) != 1:
    print("FAIL helper anchor"); sys.exit(1)
s = s.replace(anchor, helper + anchor)
print("OK метод переноса базы")

# вызов метода после заполнения rect из массива
rep("""    sub-float v12, v9, v3

    invoke-virtual {v10, v11, v12, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 11895
""",
"""    sub-float v12, v9, v3

    invoke-virtual {v10, v11, v12, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v11, 0x0

    if-ne v8, v11, :cond_sega_base

    invoke-direct {p0}, Lcom/ahsim/demulation/MainActivity$WorldView;->placeBaseAboveRadar()V

    :cond_sega_base

    .line 11895
""", "вызов переноса базы")

io.open(P, "w", encoding="utf-8").write(s)
print("WROTE", P, len(s))
