import io, re, shutil, os

src = "mod3decoded/smali_classes3/com/ahsim/demulation/DuneSegaHud.smali"
dst = "apk_safe/smali_classes2/com/ahsim/demulation/DuneSegaHud.smali"
os.makedirs(os.path.dirname(dst), exist_ok=True)
shutil.copyfile(src, dst)
s = io.open(dst, encoding="utf-8").read()

def replace_method(name, body):
    global s
    pat = re.compile(r"\.method public static " + re.escape(name) + r"\([^)]*\)[^\n]*\n.*?\.end method\n", re.S)
    s2, n = pat.subn(body, s, count=1)
    if n != 1:
        print("FAIL", name, n); raise SystemExit(1)
    s = s2
    print("OK", name)

replace_method("typeface", """.method public static typeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    sput-object v0, Lcom/ahsim/demulation/DuneSegaHud;->cachedTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method
""")

replace_method("init", """.method public static init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
""")

replace_method("applyFont", """.method public static applyFont(Landroid/graphics/Paint;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method
""")

io.open(dst, "w", encoding="utf-8").write(s)
print("WROTE", dst, len(s))
