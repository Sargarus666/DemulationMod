#!/usr/bin/env python3
"""v4 patch (by AI Big Pickle): restore menu behaviour and alignment.

Applies to the v3 apktool source tree (sources_v3.zip / build3).

Fixes:
1. debugButtonHitAtScreen(): check all four RectF edges, not only right/bottom.
   In v3 the menu button was moved above the radar, so the old test treated
   the whole area (0,0)-(right,bottom) as a hit and every swipe opened MENU.
2. drawDebugOverlay(): compute panelTop from the original top-left button
   geometry (inset + buttonSize) instead of the moved button's bottom.
   Otherwise the panel is drawn at the bottom of the screen and is tiny.
3. placeBaseAboveRadar(): use the same scale (1.0) as the other two buttons
   so the right-hand row really is one aligned row.
"""

import pathlib
import sys

WORLDVIEW = (
    pathlib.Path(__file__).parent / "build3" / "smali_classes2" /
    "com" / "ahsim" / "demulation" / "MainActivity$WorldView.smali"
)

OLD_HIT = """.method private debugButtonHitAtScreen(FF)Z
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .line 11205
    iget-object v0, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->debugButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->debugButtonRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->debugButtonRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method"""

NEW_HIT = """.method private debugButtonHitAtScreen(FF)Z
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    # v4 / Big Pickle: full 4-edge hit test. The v3 version only compared
    # against right/bottom and therefore accepted almost the entire screen
    # once the button was moved next to the radar.
    iget-object v0, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->debugButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :v4_miss

    iget-object v0, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->debugButtonRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, p1, v0

    if-ltz v0, :v4_miss

    iget-object v0, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->debugButtonRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, p2, v0

    if-ltz v0, :v4_miss

    iget-object v0, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->debugButtonRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, p1, v0

    if-gtz v0, :v4_miss

    iget-object v0, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->debugButtonRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, p2, v0

    if-gtz v0, :v4_miss

    const/4 v0, 0x1

    goto :v4_ret

    :v4_miss
    const/4 v0, 0x0

    :v4_ret
    return v0
.end method"""

OLD_PANEL_TOP = """    .line 19767
    iget-object v4, p0, Lcom/ahsim/demulation/MainActivity$WorldView;->debugButtonRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F
"""

NEW_PANEL_TOP = """    .line 19767
    # v4 / Big Pickle: panel must start under the ORIGINAL top-left button
    # position. v3 used the moved button's bottom and pushed the panel to
    # the bottom edge, making it tiny.
    add-float v4, v2, v3
"""

OLD_BASE_SCALE = """    const/high16 v3, 0x40800000    # 4.0f
    const/4 v2, 0x2
    invoke-static {v0, v3, v2, v1}, Lcom/ahsim/demulation/DuneSegaHud;->aboveRadarRect(Landroid/graphics/RectF;FILandroid/graphics/RectF;)V"""

NEW_BASE_SCALE = """    const/high16 v3, 0x3f800000    # 1.0f
    const/4 v2, 0x2
    invoke-static {v0, v3, v2, v1}, Lcom/ahsim/demulation/DuneSegaHud;->aboveRadarRect(Landroid/graphics/RectF;FILandroid/graphics/RectF;)V"""


def replace_once(text, old, new, label):
    count = text.count(old)
    if count != 1:
        raise SystemExit(f"{label}: expected 1 occurrence, found {count}")
    print(f"OK: {label}")
    return text.replace(old, new, 1)


def main():
    text = WORLDVIEW.read_text()
    text = replace_once(text, OLD_HIT, NEW_HIT, "full menu-button hit test")
    text = replace_once(text, OLD_PANEL_TOP, NEW_PANEL_TOP, "menu panel top")
    text = replace_once(text, OLD_BASE_SCALE, NEW_BASE_SCALE, "base button scale")
    WORLDVIEW.write_text(text)
    print("v4 patch applied to", WORLDVIEW)


if __name__ == "__main__":
    sys.exit(main())
