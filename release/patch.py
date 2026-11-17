import io, sys, os

P = "apktoolout/smali_classes2/com/ahsim/demulation/MainActivity$WorldView.smali"
s = io.open(P, encoding="utf-8").read()

def rep(old, new, label, count=1):
    global s
    n = s.count(old)
    if n != count:
        print("FAIL %s: expected %d got %d" % (label, count, n))
        sys.exit(1)
    s = s.replace(old, new, count)
    print("OK", label)

# ---------------- 1) UNIT GROUPING BUTTON -> SQUARE, MOVED TO RIGHT HUD MENU ----------------
# Reposition the button rect into the right HUD menu (where CREDITS label was).
rep(
"""    iget-object v2, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->unitGroupingModeButtonRect:Landroid/graphics/RectF;

    sub-float v3, v12, v9

    add-float v4, v11, v9

    invoke-virtual {v2, v11, v3, v4, v12}, Landroid/graphics/RectF;->set(FFFF)V
""",
"""    iget-object v2, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->unitGroupingModeButtonRect:Landroid/graphics/RectF;

    iget v3, v7, Lcom/ahsim/demulation/MainActivity$WorldView$Layout;->hudLeft:F

    iget v4, v7, Lcom/ahsim/demulation/MainActivity$WorldView$Layout;->viewTop:F

    const/high16 v5, 0x41400000    # 12.0f

    mul-float v5, v5, v8

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v6, v6, v8

    add-float v3, v3, v6

    const/high16 v6, 0x41800000    # 16.0f

    mul-float v6, v6, v8

    add-float v4, v4, v6

    sub-float v6, v4, v5

    add-float v5, v3, v5

    invoke-virtual {v2, v3, v6, v5, v4}, Landroid/graphics/RectF;->set(FFFF)V
""", "unit button reposition")

# Filled circle -> square rect
rep(
"""    iget-object v2, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->panelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v14, v15, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
""",
"""    iget-object v2, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->unitGroupingModeButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
""", "unit button fill square")

# Outline circle -> square rect
rep(
"""    iget-object v3, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v14, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 11752
""",
"""    iget-object v3, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->linePaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->unitGroupingModeButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 11752
""", "unit button outline square")

# ---------------- 2) FAVORITE (BASE) BUTTON -> SQUARE ----------------
rep(
"""    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v4, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->panelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v12, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
""",
"""    move-object/from16 v2, p2

    iget-object v4, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->panelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
""", "favorite fill square")

rep(
"""    iget-object v2, v6, Lcom/ahsim/demulation/MainActivity$WorldView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 12243
""",
"""    iget-object v2, v6, Lcom/ahsim/demulation/MainActivity$WorldView;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 12243
""", "favorite outline square")

# Clip path: circle -> rounded rect (keeps portrait square-ish)
rep(
"""    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V
""",
"""    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V
""", "clip path unchanged", count=1)

# ---------------- 3) MOVE BASE FAVORITE (index 0) INTO RIGHT HUD MENU ----------------
# Bump locals so we have scratch registers v13..v16 (params shift to p-names, which are used symbolically).
rep(
""".method private drawFavoriteNavigation(Landroid/graphics/Canvas;Lcom/ahsim/demulation/MainActivity$WorldView$Layout;)V
    .locals 13
""",
""".method private drawFavoriteNavigation(Landroid/graphics/Canvas;Lcom/ahsim/demulation/MainActivity$WorldView$Layout;)V
    .locals 18
""", "favorite nav locals")

rep(
"""    sub-float v12, v9, v3

    invoke-virtual {v10, v11, v12, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 11895
""",
"""    sub-float v12, v9, v3

    invoke-virtual {v10, v11, v12, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v11, 0x0

    if-ne v8, v11, :cond_base_moved

    iget v11, p2, Lcom/ahsim/demulation/MainActivity$WorldView$Layout;->hudLeft:F

    iget v12, p2, Lcom/ahsim/demulation/MainActivity$WorldView$Layout;->viewTop:F

    const/high16 v13, 0x41c00000    # 24.0f

    mul-float v13, v13, v1

    add-float v11, v11, v13

    const/high16 v13, 0x41200000    # 10.0f

    mul-float v13, v13, v1

    add-float v12, v12, v13

    const/high16 v13, 0x41400000    # 12.0f

    mul-float v13, v13, v1

    add-float v14, v11, v13

    add-float v15, v12, v13

    invoke-virtual {v10, v11, v12, v14, v15},Landroid/graphics/RectF;->set(FFFF)V

    :cond_base_moved

    .line 11895
""", "base favorite reposition")

# ---------------- 4) REMOVE CREDITS LABEL ----------------
rep(
"""    invoke-static {v0, v1}, Lcom/ahsim/demulation/MainActivity;->uiText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x438a0000    # 276.0f
""",
"""    const-string v0, ""

    const v1, 0x438a0000    # 276.0f
""", "credits label blank", count=0) if False else None

io.open(P, "w", encoding="utf-8").write(s)
print("WROTE", P, len(s))
