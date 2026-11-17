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

# В Dex инструкции const/4 и iget-object работают только с v0..v15.
# Берём безопасный непрерывный диапазон v3..v8: v1/v2, v11/v12 остаются нетронутыми.
rep("""    .line 12171
    move-object/from16 v20, p1

    move-object/from16 v21, p2

    const/4 v22, 0x1

    const/4 v23, 0x1

    iget-object v24, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->panelPaint:Landroid/graphics/Paint;

    iget-object v25, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->linePaint:Landroid/graphics/Paint;

    invoke-static/range {v20 .. v25}, Lcom/ahsim/demulation/DuneSegaHud;->drawHudButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;IZLandroid/graphics/Paint;Landroid/graphics/Paint;)V
""",
"""    .line 12171
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    const/4 v5, 0x1

    const/4 v6, 0x1

    iget-object v7, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->panelPaint:Landroid/graphics/Paint;

    iget-object v8, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->linePaint:Landroid/graphics/Paint;

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/DuneSegaHud;->drawHudButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;IZLandroid/graphics/Paint;Landroid/graphics/Paint;)V
""", "drawFavoriteCircleButton safe low registers")

# Для кнопки юнитов v5..v10: после вызова сразу выход из метода, поэтому безопасно.
rep("""    move-object/from16 v15, p1

    iget-object v16, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->unitGroupingModeButtonRect:Landroid/graphics/RectF;

    const/4 v17, 0x0

    iget-object v18, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v18}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetunitGroupingModeEnabled(Lcom/ahsim/demulation/MainActivity;)Z

    move-result v18

    iget-object v19, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->panelPaint:Landroid/graphics/Paint;

    iget-object v20, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->linePaint:Landroid/graphics/Paint;

    invoke-static/range {v15 .. v20}, Lcom/ahsim/demulation/DuneSegaHud;->drawHudButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;IZLandroid/graphics/Paint;Landroid/graphics/Paint;)V
""",
"""    move-object/from16 v5, p1

    move-object/from16 v6, v2

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v8}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetunitGroupingModeEnabled(Lcom/ahsim/demulation/MainActivity;)Z

    move-result v8

    iget-object v9, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->panelPaint:Landroid/graphics/Paint;

    iget-object v10, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->linePaint:Landroid/graphics/Paint;

    invoke-static/range {v5 .. v10}, Lcom/ahsim/demulation/DuneSegaHud;->drawHudButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;IZLandroid/graphics/Paint;Landroid/graphics/Paint;)V
""", "drawUnitGroupingModeButton safe low registers")

io.open(P, "w", encoding="utf-8").write(s)
print("WROTE", P, len(s))
