import io, sys, shutil, os
P = "apk_safe/smali_classes2/com/ahsim/demulation/MainActivity$WorldView.smali"
s = io.open(P, encoding="utf-8").read()

def rep(old, new, label, n=1):
    global s
    c = s.count(old)
    if c != n:
        print("FAIL", label, "expected", n, "got", c); sys.exit(1)
    s = s.replace(old, new, n)
    print("OK", label)

# Возвращаем активную область карты к исходному размеру (убираем отступ 24 px)
rep("""    const/high16 v14, 0x41c00000    # 24.0f

    add-float v10, v10, v14

    add-float v11, v11, v14

    sub-float v12, v12, v14

    sub-float v13, v13, v14

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V
""",
"""    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V
""", "возврат activeViewportRect")

io.open(P, "w", encoding="utf-8").write(s)
print("WROTE", P, len(s))

# Убираем добавленный шрифт из APK: безопасная сборка не зависит от внешнего TTF
font = "apk_safe/assets/fonts/dune_sega.ttf"
if os.path.exists(font):
    os.remove(font)
    print("OK удалён внешний шрифт")
