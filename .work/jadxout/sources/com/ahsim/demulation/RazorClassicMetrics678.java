package com.ahsim.demulation;

/* loaded from: classes2.dex */
public final class RazorClassicMetrics678 {
    public static final int GENESIS_VIEW_H = 240;
    public static final int GENESIS_WORLD_W = 240;
    public static final int METATILE_PX = 32;

    private RazorClassicMetrics678() {
    }

    public static int scale(int width, int height) {
        int scale = Math.max(1, Math.min(4, height / 240));
        while (scale > 1 && width / scale < 240) {
            scale--;
        }
        return scale;
    }

    public static int cellPixels(int width, int height) {
        return scale(width, height) * 32;
    }

    public static int columns(int width, int height) {
        return Math.max(1, ((cellPixels(width, height) + width) - 1) / cellPixels(width, height));
    }

    public static int rows(int width, int height) {
        return Math.max(1, ((cellPixels(width, height) + height) - 1) / cellPixels(width, height));
    }
}
