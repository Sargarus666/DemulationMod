package com.ahsim.demulation;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;

/* loaded from: classes2.dex */
final class RetroVideoFilter {
    static final int COMPOSITE_TV = 2;
    static final int CRT_MONITOR = 1;
    static final int LEGACY_COMPOSITE_TV = 2;
    static final int OFF = 0;
    static final int OLD_TV = 1;
    private Bitmap tileKeepAlive;
    private final Paint phosphor = new Paint();
    private final Paint edge = new Paint(1);
    private int patternW = -1;
    private int patternH = -1;

    RetroVideoFilter() {
    }

    static int normalizeMode(int saved) {
        return (saved == 1 || saved == 2) ? 1 : 0;
    }

    void drawOverlay(Canvas canvas, int width, int height) {
        if (width > 0 && height > 0) {
            ensurePattern(width, height);
            canvas.drawRect(0.0f, 0.0f, width, height, this.phosphor);
            canvas.drawRect(0.0f, 0.0f, width, height, this.edge);
        }
    }

    private void ensurePattern(int width, int height) {
        int i;
        if (width == this.patternW && height == this.patternH) {
            return;
        }
        int period = Math.max(3, Math.min(9, Math.round(height / 224.0f)));
        int i2 = 6;
        Bitmap tile = Bitmap.createBitmap(6, period, Bitmap.Config.ARGB_8888);
        int y = 0;
        while (y < period) {
            float t = (y + 0.5f) / period;
            float edgePhase = Math.max(0.0f, Math.min(1.0f, (t - 0.52f) / 0.48f));
            float softened = edgePhase * edgePhase * (3.0f - (2.0f * edgePhase));
            int gap = Math.round(54.0f * softened);
            int x = 0;
            while (x < i2) {
                int triad = x / 2;
                if (triad == 0) {
                    i = 13;
                } else {
                    i = triad == 1 ? 10 : 14;
                }
                int alpha = Math.min(90, i + gap);
                int b = 2;
                int r = triad == 0 ? 12 : 2;
                int g = triad == 1 ? 11 : 2;
                if (triad == 2) {
                    b = 12;
                }
                tile.setPixel(x, y, Color.argb(alpha, r, g, b));
                x++;
                period = period;
                i2 = 6;
            }
            y++;
            i2 = 6;
        }
        this.phosphor.setShader(new BitmapShader(tile, Shader.TileMode.REPEAT, Shader.TileMode.REPEAT));
        float radius = (float) Math.hypot(width / 2.0f, height / 2.0f);
        this.edge.setShader(new RadialGradient(width / 2.0f, height / 2.0f, Math.max(1.0f, radius), new int[]{0, 0, Color.argb(47, 0, 0, 0)}, new float[]{0.0f, 0.6f, 1.0f}, Shader.TileMode.CLAMP));
        this.tileKeepAlive = tile;
        this.patternW = width;
        this.patternH = height;
    }
}
