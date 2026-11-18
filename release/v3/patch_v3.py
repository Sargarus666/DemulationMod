#!/usr/bin/env python3
"""v3 HUD patch: even 3-button row above the radar + real Dune font + radar margins."""
from __future__ import annotations

import io
from pathlib import Path

ROOT = Path("/tmp/opencode")
APK = ROOT / "build3"
HUD = APK / "smali_classes2/com/ahsim/demulation/DuneSegaHud.smali"
WORLD = APK / "smali_classes2/com/ahsim/demulation/MainActivity$WorldView.smali"


def replace_once(text, old, new, label):
    n = text.count(old)
    if n != 1:
        raise SystemExit(f"{label}: expected 1 match, got {n}")
    return text.replace(old, new, 1)


def replace_method(text, signature, body):
    start = text.find(".method " + signature)
    if start < 0:
        raise SystemExit("method not found: " + signature)
    end = text.find("\n.end method", start)
    if end < 0:
        raise SystemExit("method end not found: " + signature)
    end += len("\n.end method")
    return text[:start] + body.strip("\n") + text[end:]


ABOVE = r"""
.method public static aboveRadarRect(Landroid/graphics/RectF;FILandroid/graphics/RectF;)V
    .locals 6

    if-nez p3, :cond_ret

    return-void

    :cond_ret
    if-eqz p0, :cond_empty

    invoke-virtual {p0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ok

    goto :goto_empty

    :cond_ok
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x42900000    # 72.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x42900000    # 72.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v1

    sub-float/2addr v0, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v0, v3

    const/high16 v3, 0x41000000    # 8.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_calc

    goto :goto_empty

    :cond_calc
    rem-int/lit8 v3, p2, 0x3

    div-int/lit8 p2, p2, 0x3

    iget v4, p0, Landroid/graphics/RectF;->right:F

    iget p0, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p0, v2

    int-to-float p2, p2

    add-float v2, v0, v2

    mul-float/2addr p2, v2

    sub-float/2addr p0, p2

    sub-float/2addr v4, v0

    rsub-int/lit8 p2, v3, 0x2

    int-to-float p2, p2

    add-float v2, v1, v0

    mul-float/2addr p2, v2

    sub-float/2addr v4, p2

    sub-float p2, p0, v0

    add-float/2addr v0, v4

    invoke-virtual {p3, v4, p2, v0, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void

    :cond_empty
    :goto_empty
    invoke-virtual {p3}, Landroid/graphics/RectF;->setEmpty()V

    return-void
.end method
"""

APPLY = r"""
.method public static applyFont(Landroid/graphics/Paint;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/ahsim/demulation/DuneSegaHud;->cachedTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_set

    sget-object v1, Lcom/ahsim/demulation/DuneSegaHud;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_set

    invoke-static {v1}, Lcom/ahsim/demulation/DuneSegaHud;->typeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    :cond_set
    if-eqz v0, :cond_bold

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_bold
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method
"""

INIT = r"""
.method public static init(Landroid/content/Context;)V
    .locals 1

    sput-object p0, Lcom/ahsim/demulation/DuneSegaHud;->appContext:Landroid/content/Context;

    const/4 v0, 0x0

    sput-object v0, Lcom/ahsim/demulation/DuneSegaHud;->cachedTypeface:Landroid/graphics/Typeface;

    invoke-static {p0}, Lcom/ahsim/demulation/DuneSegaHud;->typeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    return-void
.end method
"""

TYPEFACE = r"""
.method public static typeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 4

    if-nez p0, :cond_ctx

    goto :after_ctx

    :cond_ctx
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_param

    sput-object v0, Lcom/ahsim/demulation/DuneSegaHud;->appContext:Landroid/content/Context;

    goto :after_ctx

    :cond_param
    sput-object p0, Lcom/ahsim/demulation/DuneSegaHud;->appContext:Landroid/content/Context;

    :after_ctx
    sget-object v0, Lcom/ahsim/demulation/DuneSegaHud;->cachedTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_load

    return-object v0

    :cond_load
    if-eqz p0, :cond_ctx2

    move-object v1, p0

    goto :have_ctx

    :cond_ctx2
    sget-object v1, Lcom/ahsim/demulation/DuneSegaHud;->appContext:Landroid/content/Context;

    :have_ctx
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    if-nez v1, :cond_try

    return-object v0

    :cond_try
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/dune_sega.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_save

    move-object v0, v2

    :cond_save
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :store

    :catchall_0
    move-exception v2

    :store
    sput-object v0, Lcom/ahsim/demulation/DuneSegaHud;->cachedTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method
"""

MENU = r"""
.method private static drawMenuIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v0, -0x1852

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    const v0, 0x40b33333    # 5.6f

    mul-float/2addr v0, v8

    move v12, v0

    const v0, 0x3fcccccd    # 1.6f

    mul-float/2addr v0, v8

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v13, v0, v1

    const v0, 0x4059999a    # 3.4f

    mul-float/2addr v0, v8

    move v14, v0

    move-object v0, v6

    sub-float v1, v10, v12

    sub-float v2, v11, v14

    sub-float v2, v2, v13

    add-float v3, v10, v12

    add-float v4, v2, v13

    add-float v4, v4, v13

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object v0, v6

    sub-float v1, v10, v12

    sub-float v2, v11, v13

    add-float v3, v10, v12

    add-float v4, v11, v13

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object v0, v6

    sub-float v1, v10, v12

    add-float v2, v11, v14

    sub-float v2, v2, v13

    add-float v3, v10, v12

    add-float v4, v2, v13

    add-float v4, v4, v13

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
"""

DEBUG_DRAW = r"""
.method private drawDebugButton(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v1, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->debugButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    iget-object v1, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->debugButtonRect:Landroid/graphics/RectF;

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->debugPanelOpen:Z

    xor-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->panelPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->linePaint:Landroid/graphics/Paint;

    invoke-static/range {v0 .. v5}, Lcom/ahsim/demulation/DuneSegaHud;->drawHudButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;IZLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    return-void
.end method
"""


def patch_hud(text):
    text = replace_method(text, "public static aboveRadarRect(Landroid/graphics/RectF;FILandroid/graphics/RectF;)V", ABOVE)
    text = replace_method(text, "public static applyFont(Landroid/graphics/Paint;)V", APPLY)
    text = replace_method(text, "public static init(Landroid/content/Context;)V", INIT)
    text = replace_method(text, "public static typeface(Landroid/content/Context;)Landroid/graphics/Typeface;", TYPEFACE)

    old = """    .line 129
    if-nez p2, :cond_5

    invoke-static {v6, v7, v11, v9}, Lcom/ahsim/demulation/DuneSegaHud;->drawUnitsIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    goto :goto_4

    .line 130
    :cond_5
    invoke-static {v6, v7, v11, v9}, Lcom/ahsim/demulation/DuneSegaHud;->drawBaseIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
"""
    new = """    if-nez p2, :cond_5

    invoke-static {v6, v7, v11, v9}, Lcom/ahsim/demulation/DuneSegaHud;->drawUnitsIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_5
    const/4 v0, 0x2

    move/from16 v12, p2

    if-ne v12, v0, :cond_5b

    invoke-static {v6, v7, v11, v9}, Lcom/ahsim/demulation/DuneSegaHud;->drawMenuIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_5b
    invoke-static {v6, v7, v11, v9}, Lcom/ahsim/demulation/DuneSegaHud;->drawBaseIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
"""
    text = replace_once(text, old, new, "HUD icon branch")
    text = replace_once(
        text,
        ".field private static cachedTypeface:Landroid/graphics/Typeface;",
        ".field private static cachedTypeface:Landroid/graphics/Typeface;\n\n.field private static appContext:Landroid/content/Context;",
        "appContext field",
    )
    marker = "\n.method private static drawUnitsIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V"
    if marker not in text:
        raise SystemExit("drawUnitsIcon marker missing")
    return text.replace(marker, "\n" + MENU.strip("\n") + marker, 1)


def patch_world(text):
    text = replace_once(
        text,
        "    const v5, 0x42900000    # 72.0f\n\n    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F",
        "    const v5, 0x42800000    # 64.0f\n\n    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F",
        "radar size",
    )
    text = replace_once(
        text,
        "    const/high16 v19, 0x43ae0000    # 348.0f\n\n    sub-float v19, v19, v18\n\n    const/high16 v5, 0x41000000    # 8.0f\n\n    sub-float v19, v19, v5",
        "    const/high16 v19, 0x43ae0000    # 348.0f\n\n    sub-float v19, v19, v18\n\n    const/high16 v5, 0x41900000    # 18.0f\n\n    sub-float v19, v19, v5",
        "radar right margin",
    )
    text = replace_once(
        text,
        "    move/16 v20, v5\n\n    sub-float v20, v20, v18\n\n    const/high16 v5, 0x41000000    # 8.0f\n\n    sub-float v20, v20, v5",
        "    move/16 v20, v5\n\n    sub-float v20, v20, v18\n\n    const/high16 v5, 0x41800000    # 16.0f\n\n    sub-float v20, v20, v5",
        "radar bottom margin",
    )
    text = replace_once(
        text,
        "    iget-object v9, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->activeViewportRect:Landroid/graphics/RectF;\n\n    const/high16 v4, 0x41800000    # 16.0f\n\n    invoke-static {v9, v5, v4}, Lcom/ahsim/demulation/DuneSegaHud;->fitRadar(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V\n\n    const/4 v4, 0x0",
        "    const/4 v4, 0x0",
        "drop fitRadar",
    )
    old_place = """    iget-object v4, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->debugButtonRect:Landroid/graphics/RectF;

    add-float v5, v2, v3

    add-float v6, v2, v3

    invoke-virtual {v4, v2, v2, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V"""
    new_place = """    iget-object v4, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->radarRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_sega_menu_row

    iget-object v4, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->debugButtonRect:Landroid/graphics/RectF;

    add-float v5, v2, v3

    add-float v6, v2, v3

    invoke-virtual {v4, v2, v2, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    goto :cond_sega_menu_done

    :cond_sega_menu_row
    iget-object v8, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->radarRect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->debugButtonRect:Landroid/graphics/RectF;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-static {v8, v5, v6, v9}, Lcom/ahsim/demulation/DuneSegaHud;->aboveRadarRect(Landroid/graphics/RectF;FILandroid/graphics/RectF;)V

    :cond_sega_menu_done"""
    text = replace_once(text, old_place, new_place, "menu placement")
    text = replace_method(text, "private drawDebugButton(Landroid/graphics/Canvas;)V", DEBUG_DRAW)
    text = replace_once(
        text,
        "    iget-object v2, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->radarRect:Landroid/graphics/RectF;\n\n    iget-object v3, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->unitGroupingModeButtonRect:Landroid/graphics/RectF;\n\n    const/4 v4, 0x0\n\n    invoke-static {v2, v8, v4, v3}, Lcom/ahsim/demulation/DuneSegaHud;->aboveRadarRect(Landroid/graphics/RectF;FILandroid/graphics/RectF;)V",
        "    iget-object v2, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->radarRect:Landroid/graphics/RectF;\n\n    iget-object v3, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->unitGroupingModeButtonRect:Landroid/graphics/RectF;\n\n    const/4 v4, 0x1\n\n    invoke-static {v2, v8, v4, v3}, Lcom/ahsim/demulation/DuneSegaHud;->aboveRadarRect(Landroid/graphics/RectF;FILandroid/graphics/RectF;)V",
        "units slot",
    )
    text = replace_once(
        text,
        "    const/high16 v3, 0x40800000    # 4.0f\n    const/4 v2, 0x1\n    invoke-static {v0, v3, v2, v1}, Lcom/ahsim/demulation/DuneSegaHud;->aboveRadarRect(Landroid/graphics/RectF;FILandroid/graphics/RectF;)V",
        "    const/high16 v3, 0x40800000    # 4.0f\n    const/4 v2, 0x2\n    invoke-static {v0, v3, v2, v1}, Lcom/ahsim/demulation/DuneSegaHud;->aboveRadarRect(Landroid/graphics/RectF;FILandroid/graphics/RectF;)V",
        "base slot",
    )
    text = replace_once(
        text,
        "    const/4 v11, 0x1\n\n    if-nez v8, :cond_hud_slot\n\n    add-int/lit8 v11, v8, 0x1\n\n    :cond_hud_slot",
        "    add-int/lit8 v11, v8, 0x2",
        "favorite row slot",
    )
    text = replace_once(
        text,
        "    const/4 v11, 0x0\n\n    if-ne v8, v11, :cond_sega_base\n\n    iget-object v11, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->favoriteButtonTargets:[Lcom/ahsim/demulation/MainActivity$WorldView$FavoriteRef;\n\n    aget-object v11, v11, v8\n\n    if-eqz v11, :cond_sega_base\n\n    iget v11, v11, Lcom/ahsim/demulation/MainActivity$WorldView$FavoriteRef;->kind:I\n\n    const/4 v12, 0x2\n\n    if-ne v11, v12, :cond_sega_base_do\n\n    goto :cond_sega_base\n\n    :cond_sega_base_do\n    invoke-direct {p0}, Lcom/ahsim/demulation/MainActivity$WorldView;->placeBaseAboveRadar()V\n\n    :cond_sega_base",
        "    if-nez v8, :cond_sega_base\n\n    invoke-direct {p0}, Lcom/ahsim/demulation/MainActivity$WorldView;->placeBaseAboveRadar()V\n\n    :cond_sega_base",
        "favorite base override",
    )
    return text


def main():
    hud = io.open(HUD, encoding="utf-8").read()
    io.open(HUD, "w", encoding="utf-8").write(patch_hud(hud))
    world = io.open(WORLD, encoding="utf-8").read()
    io.open(WORLD, "w", encoding="utf-8").write(patch_world(world))
    print("patched DuneSegaHud + WorldView")


if __name__ == "__main__":
    main()
