import io, re, sys
P = "apk2/smali_classes2/com/ahsim/demulation/MainActivity$WorldView.smali"
s = io.open(P, encoding="utf-8").read()

def rep(old, new, label, n=1):
    global s
    c = s.count(old)
    if c != n:
        print("FAIL", label, "expected", n, "got", c); sys.exit(1)
    s = s.replace(old, new, n)
    print("OK", label)

# 1) Инициализация пиксельного шрифта сразу после создания textPaint
rep("""    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->textPaint:Landroid/graphics/Paint;

    .line 7306
""",
"""    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    invoke-static {v15}, Lcom/ahsim/demulation/DuneSegaHud;->init(Landroid/content/Context;)V

    .line 7306
""", "инициализация шрифта")

# 2) Все сбросы Typeface заменяем на наш шрифт
pat = re.compile(r"invoke-virtual \{(\w+), (\w+)\}, Landroid/graphics/Paint;->setTypeface\(Landroid/graphics/Typeface;\)Landroid/graphics/Typeface;")
s, n = pat.subn(lambda m: "invoke-static {%s}, Lcom/ahsim/demulation/DuneSegaHud;->applyFont(Landroid/graphics/Paint;)V" % m.group(1), s)
if n != 10:
    print("FAIL setTypeface count", n); sys.exit(1)
print("OK заменено setTypeface:", n)

# 3) Хитбокс кнопки базы = сам прямоугольник, без растяжения до низа экрана
rep("""    aget-object v3, v3, v1

    if-nez v3, :cond_1

    goto :goto_3

    .line 10942
    :cond_1
    if-nez v1, :cond_2
""",
"""    aget-object v3, v3, v1

    if-nez v3, :cond_1

    goto :goto_3

    .line 10942
    :cond_1
    if-nez v1, :cond_sega_base_hit

    invoke-virtual {v2, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    :cond_sega_base_hit
    if-nez v1, :cond_2
""", "хитбокс базы")

# 4) Кнопку базы перемещаем только если это действительно стройдвор (kind == 2)
rep("""    const/4 v11, 0x0

    if-ne v8, v11, :cond_sega_base

    invoke-direct {p0}, Lcom/ahsim/demulation/MainActivity$WorldView;->placeBaseAboveRadar()V

    :cond_sega_base
""",
"""    const/4 v11, 0x0

    if-ne v8, v11, :cond_sega_base

    iget-object v11, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->favoriteButtonTargets:[Lcom/ahsim/demulation/MainActivity$WorldView$FavoriteRef;

    aget-object v11, v11, v8

    if-eqz v11, :cond_sega_base

    iget v11, v11, Lcom/ahsim/demulation/MainActivity$WorldView$FavoriteRef;->kind:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_sega_base_do

    goto :cond_sega_base

    :cond_sega_base_do
    invoke-direct {p0}, Lcom/ahsim/demulation/MainActivity$WorldView;->placeBaseAboveRadar()V

    :cond_sega_base
""", "проверка kind стройдвора")

# 5) Не рисовать круглую рамку/дугу здоровья поверх квадратной кнопки базы
rep("""    .line 12227
    iget-object v0, v6, Lcom/ahsim/demulation/MainActivity$WorldView;->linePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 12228
""",
"""    .line 12227
    iget-object v0, v6, Lcom/ahsim/demulation/MainActivity$WorldView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v11, v6, Lcom/ahsim/demulation/MainActivity$WorldView;->favoriteButtonRects:[Landroid/graphics/RectF;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    if-eq v9, v11, :cond_sega_skip_overlays

    .line 12228
""", "guard круглых оверлеев")

rep("""    invoke-virtual {v1, v4, v5, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 12243
    return-void
.end method
""",
"""    invoke-virtual {v1, v4, v5, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_sega_skip_overlays
    .line 12243
    return-void
.end method
""", "метка пропуска оверлеев")

io.open(P, "w", encoding="utf-8").write(s)
print("WROTE", P, len(s))
