package com.ahsim.demulation;

/* loaded from: classes2.dex */
public final class RazorPlayGeometry677 {
    public static final int GENESIS_PIXELS_PER_MAP_CELL = 32;

    private RazorPlayGeometry677() {
    }

    public static float sourcePixelScale(float displayCell) {
        if (displayCell <= 0.0f || Float.isInfinite(displayCell)) {
            throw new IllegalArgumentException("Invalid map cell size");
        }
        return displayCell / 32.0f;
    }

    public static void spriteBounds(float cx, float cy, float cell, int minX, int minY, int spriteWidth, int spriteHeight, float[] out) {
        if (out == null || out.length < 4 || spriteWidth <= 0 || spriteHeight <= 0) {
            throw new IllegalArgumentException("Invalid source sprite size");
        }
        float s = sourcePixelScale(cell);
        out[0] = (minX * s) + cx;
        out[1] = (minY * s) + cy;
        out[2] = out[0] + (spriteWidth * s);
        out[3] = out[1] + (spriteHeight * s);
    }

    public static int screenToCell(float screen, float displayStart, float displayCell, int mapStart) {
        sourcePixelScale(displayCell);
        return ((int) Math.floor((screen - displayStart) / displayCell)) + mapStart;
    }
}
