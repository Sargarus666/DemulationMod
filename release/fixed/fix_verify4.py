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

# 1) В drawFavoriteCircleButton патч убрал загрузку Paint$Cap.ROUND,
#    но оставил setStrokeCap(v2) — восстановливаем константу.
rep("""    .line 12227
    iget-object v0, v6, Lcom/ahsim/demulation/MainActivity$WorldView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V
""",
"""    .line 12227
    iget-object v0, v6, Lcom/ahsim/demulation/MainActivity$WorldView;->linePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V
""", "restore Paint.Cap.ROUND")

# 2) В drawUnitGroupingModeButton v2 к моменту вызова уже содержит цвет (int),
#    поэтому прямоугольник нужно взять из поля, а не из v2.
rep("""    move-object/from16 v5, p1

    move-object/from16 v6, v2

    const/4 v7, 0x0
""",
"""    move-object/from16 v5, p1

    iget-object v6, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->unitGroupingModeButtonRect:Landroid/graphics/RectF;

    const/4 v7, 0x0
""", "load RectF from field instead of v2")

io.open(P, "w", encoding="utf-8").write(s)
print("WROTE", P, len(s))
