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

# Используем высокие регистры v20..v25, чтобы не менять типы v1..v6,
# которые дальше в методе используются для рисования круга/дуг.
rep("""    .line 12171
    move-object/from16 v2, p2

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->panelPaint:Landroid/graphics/Paint;

    iget-object v6, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->linePaint:Landroid/graphics/Paint;

    invoke-static/range {v1 .. v6}, Lcom/ahsim/demulation/DuneSegaHud;->drawHudButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;IZLandroid/graphics/Paint;Landroid/graphics/Paint;)V
""",
"""    .line 12171
    move-object/from16 v20, p1

    move-object/from16 v21, p2

    const/4 v22, 0x1

    const/4 v23, 0x1

    iget-object v24, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->panelPaint:Landroid/graphics/Paint;

    iget-object v25, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->linePaint:Landroid/graphics/Paint;

    invoke-static/range {v20 .. v25}, Lcom/ahsim/demulation/DuneSegaHud;->drawHudButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;IZLandroid/graphics/Paint;Landroid/graphics/Paint;)V
""", "drawFavoriteCircleButton high registers")

# Аналогично для кнопки юнитов: v15..v20 свободны сразу перед выходом из метода.
rep("""    iget-object v2, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->unitGroupingModeButtonRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetunitGroupingModeEnabled(Lcom/ahsim/demulation/MainActivity;)Z

    move-result v4

    iget-object v5, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->panelPaint:Landroid/graphics/Paint;

    iget-object v6, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->linePaint:Landroid/graphics/Paint;

    invoke-static/range {v1 .. v6}, Lcom/ahsim/demulation/DuneSegaHud;->drawHudButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;IZLandroid/graphics/Paint;Landroid/graphics/Paint;)V
""",
"""    move-object/from16 v15, p1

    iget-object v16, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->unitGroupingModeButtonRect:Landroid/graphics/RectF;

    const/4 v17, 0x0

    iget-object v18, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v18}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetunitGroupingModeEnabled(Lcom/ahsim/demulation/MainActivity;)Z

    move-result v18

    iget-object v19, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->panelPaint:Landroid/graphics/Paint;

    iget-object v20, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->linePaint:Landroid/graphics/Paint;

    invoke-static/range {v15 .. v20}, Lcom/ahsim/demulation/DuneSegaHud;->drawHudButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;IZLandroid/graphics/Paint;Landroid/graphics/Paint;)V
""", "drawUnitGroupingModeButton high registers")

io.open(P, "w", encoding="utf-8").write(s)
print("WROTE", P, len(s))
