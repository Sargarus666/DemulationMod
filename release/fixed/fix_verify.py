import io, sys

P = "apk_safe/smali_classes2/com/ahsim/demulation/MainActivity$WorldView.smali"
s = io.open(P, encoding="utf-8").read()

def rep(old, new, label):
    global s
    c = s.count(old)
    if c != 1:
        print("FAIL", label, "expected 1, got", c)
        sys.exit(1)
    s = s.replace(old, new, 1)
    print("OK", label)

# drawFavoriteCircleButton: передаём 6 аргументов в правильных регистрах:
# v1=canvas, v2=RectF, v3=kind, v4=enabled, v5=fill paint, v6=line paint
rep("""    .line 12171
    const/4 v2, 0x1

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->panelPaint:Landroid/graphics/Paint;

    iget-object v5, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->linePaint:Landroid/graphics/Paint;

    invoke-static/range {v1 .. v5}, Lcom/ahsim/demulation/DuneSegaHud;->drawHudButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;IZLandroid/graphics/Paint;Landroid/graphics/Paint;)V
""",
"""    .line 12171
    move-object/from16 v2, p2

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->panelPaint:Landroid/graphics/Paint;

    iget-object v6, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->linePaint:Landroid/graphics/Paint;

    invoke-static/range {v1 .. v6}, Lcom/ahsim/demulation/DuneSegaHud;->drawHudButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;IZLandroid/graphics/Paint;Landroid/graphics/Paint;)V
""", "drawFavoriteCircleButton register fix")

# drawUnitGroupingModeButton: те же 6 аргументов, без подмены v3 Paint вместо int
rep("""    iget-object v2, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->unitGroupingModeButtonRect:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->panelPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->linePaint:Landroid/graphics/Paint;

    iget-object v5, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v5}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetunitGroupingModeEnabled(Lcom/ahsim/demulation/MainActivity;)Z

    move-result v5

    const/4 v6, 0x0

    invoke-static/range {v1 .. v5}, Lcom/ahsim/demulation/DuneSegaHud;->drawHudButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;IZLandroid/graphics/Paint;Landroid/graphics/Paint;)V
""",
"""    iget-object v2, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->unitGroupingModeButtonRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetunitGroupingModeEnabled(Lcom/ahsim/demulation/MainActivity;)Z

    move-result v4

    iget-object v5, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->panelPaint:Landroid/graphics/Paint;

    iget-object v6, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->linePaint:Landroid/graphics/Paint;

    invoke-static/range {v1 .. v6}, Lcom/ahsim/demulation/DuneSegaHud;->drawHudButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;IZLandroid/graphics/Paint;Landroid/graphics/Paint;)V
""", "drawUnitGroupingModeButton register fix")

io.open(P, "w", encoding="utf-8").write(s)
print("WROTE", P, len(s))
