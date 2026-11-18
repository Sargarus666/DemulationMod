#!/usr/bin/env python3
"""Apply the Dune SEGA HUD layout/font patch to the decompiled FIXED build."""
from __future__ import annotations

import io
import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parent
APK = ROOT / "apk_safe"
WORLD = APK / "smali_classes2/com/ahsim/demulation/MainActivity$WorldView.smali"
HUD = APK / "smali_classes2/com/ahsim/demulation/DuneSegaHud.smali"
GEN_HUD = Path("/tmp/opencode/hudbuild/out4/smali/com/ahsim/demulation/DuneSegaHud.smali")
FONT = Path("/home/runner/work/DemulationMod/DemulationMod/release/dune_sega.ttf")


def replace_once(text: str, old: str, new: str, label: str) -> str:
    count = text.count(old)
    if count != 1:
        raise RuntimeError(f"{label}: expected one match, got {count}")
    return text.replace(old, new, 1)


def main() -> None:
    # 1) New HUD helper: fixed-pixel radar/button layout + real Dune SEGA font.
    shutil.copyfile(GEN_HUD, HUD)

    # 2) Asset font used by DuneSegaHud.typeface().
    assets_fonts = APK / "assets/fonts"
    assets_fonts.mkdir(parents=True, exist_ok=True)
    shutil.copyfile(FONT, assets_fonts / "dune_sega.ttf")

    world = io.open(WORLD, encoding="utf-8").read()

    # 3) Keep the radar inside the viewport with a real 16 px margin.
    old_radar = """    invoke-virtual {v5, v10, v11, v9, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 17556
"""
    new_radar = """    invoke-virtual {v5, v10, v11, v9, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v9, v0, Lcom/ahsim/demulation/MainActivity$WorldView;->activeViewportRect:Landroid/graphics/RectF;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v9, v5, v4}, Lcom/ahsim/demulation/DuneSegaHud;->fitRadar(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    const/4 v4, 0x0

    .line 17556
"""
    world = replace_once(world, old_radar, new_radar, "radar fit")

    # 4) Favourite/base buttons: one aligned square row above the radar instead
    # of small circles stacked along the radar's left edge.
    old_fav = """    sub-float v11, v6, v3

    sub-float v12, v9, v3

    invoke-virtual {v10, v11, v12, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V
"""
    new_fav = """    const/4 v11, 0x1

    if-nez v8, :cond_hud_slot

    add-int/lit8 v11, v8, 0x1

    :cond_hud_slot
    iget-object v6, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->radarRect:Landroid/graphics/RectF;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v6, v9, v11, v10}, Lcom/ahsim/demulation/DuneSegaHud;->aboveRadarRect(Landroid/graphics/RectF;FILandroid/graphics/RectF;)V
"""
    world = replace_once(world, old_fav, new_fav, "favourite row")

    io.open(WORLD, "w", encoding="utf-8").write(world)
    print("HUD patch applied")


if __name__ == "__main__":
    main()
