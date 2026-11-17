package com.ahsim.demulation;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;

/** Small, dependency-free renderer for the Sega Dune inspired HUD controls. */
public final class DuneSegaHud {
    private static Typeface TYPEFACE;

    private DuneSegaHud() {
    }

    public static Typeface typeface(Context context) {
        if (TYPEFACE == null) {
            try {
                TYPEFACE = Typeface.createFromAsset(context.getAssets(), "fonts/dune_sega.ttf");
            } catch (Throwable ignored) {
                TYPEFACE = Typeface.create("serif", Typeface.BOLD);
            }
        }
        return TYPEFACE;
    }

    public static void applyTypeface(Paint paint, Context context) {
        paint.setTypeface(typeface(context));
    }

    public static void drawHudButton(Canvas canvas, RectF r, int kind, boolean enabled,
                                     Paint fill, Paint line) {
        if (canvas == null || r == null || r.isEmpty()) {
            return;
        }
        float s = Math.max(1.0f, r.width() / 18.0f);
        float l = r.left;
        float t = r.top;
        float rt = r.right;
        float b = r.bottom;

        fill.setStyle(Paint.Style.FILL);
        fill.setColor(0x99000000);
        canvas.drawRect(l + (1.4f * s), t + (1.4f * s), rt + (1.4f * s), b + (1.4f * s), fill);

        fill.setColor(0xff080a0c);
        canvas.drawRect(l, t, rt, b, fill);

        line.setStyle(Paint.Style.STROKE);
        line.setStrokeWidth(Math.max(1.0f, 1.05f * s));
        line.setColor(0xffc9a24d);
        canvas.drawRect(l + (0.55f * s), t + (0.55f * s), rt - (0.55f * s), b - (0.55f * s), line);

        float in = 1.75f * s;
        fill.setColor(enabled ? 0xff2b2416 : 0xff1a1a17);
        canvas.drawRect(l + in, t + in, rt - in, b - in, fill);

        line.setStrokeWidth(Math.max(1.0f, 1.1f * s));
        line.setColor(enabled ? 0xffffe7a6 : 0xff756e5b);
        canvas.drawLine(l + in, b - in, l + in, t + in, line);
        canvas.drawLine(l + in, t + in, rt - in, t + in, line);
        line.setColor(0xff6b4a1e);
        canvas.drawLine(l + in, b - in, rt - in, b - in, line);
        canvas.drawLine(rt - in, b - in, rt - in, t + in, line);

        line.setStrokeWidth(Math.max(0.8f, 0.75f * s));
        line.setColor(0xff3a2e1a);
        canvas.drawRect(l + in + (0.9f * s), t + in + (0.9f * s),
                rt - in - (0.9f * s), b - in - (0.9f * s), line);

        // corner rivets
        fill.setColor(enabled ? 0xffffdf8c : 0xff5f5949);
        float d = 0.85f * s;
        canvas.drawRect(l + (1.0f * s), t + (1.0f * s), l + (1.0f * s) + d, t + (1.0f * s) + d, fill);
        canvas.drawRect(rt - (1.0f * s) - d, b - (1.0f * s) - d, rt - (1.0f * s), b - (1.0f * s), fill);

        if (kind == 0) {
            drawUnitIcon(canvas, r, enabled, line);
        } else {
            drawBaseIcon(canvas, r, enabled, line);
        }
    }

    private static void drawUnitIcon(Canvas canvas, RectF r, boolean enabled, Paint line) {
        float s = Math.max(1.0f, r.width() / 18.0f);
        float cx = r.centerX();
        float cy = r.centerY() + (0.2f * s);
        line.setStyle(Paint.Style.STROKE);
        line.setStrokeWidth(Math.max(1.2f, 1.25f * s));
        line.setStrokeCap(Paint.Cap.ROUND);
        line.setColor(enabled ? 0xfff2dfae : 0xff736d5e);

        RectF a = new RectF(cx - (6.1f * s), cy - (3.0f * s), cx - (1.0f * s), cy + (3.0f * s));
        RectF b = new RectF(cx + (1.0f * s), cy - (3.0f * s), cx + (6.1f * s), cy + (3.0f * s));
        int save = canvas.save();
        canvas.rotate(-28.0f, cx - (3.9f * s), cy);
        canvas.drawOval(a, line);
        canvas.restoreToCount(save);
        save = canvas.save();
        canvas.rotate(-28.0f, cx + (3.9f * s), cy);
        canvas.drawOval(b, line);
        canvas.restoreToCount(save);
        canvas.drawLine(cx - (2.1f * s), cy + (1.4f * s), cx + (2.1f * s), cy - (1.4f * s), line);
        line.setStrokeCap(Paint.Cap.BUTT);
    }

    private static void drawBaseIcon(Canvas canvas, RectF r, boolean enabled, Paint line) {
        float s = Math.max(1.0f, r.width() / 18.0f);
        float cx = r.centerX();
        float cy = r.centerY() + (0.5f * s);
        int color = enabled ? 0xfff2dfae : 0xff736d5e;
        line.setStyle(Paint.Style.STROKE);
        line.setStrokeWidth(Math.max(1.0f, 1.15f * s));
        line.setStrokeCap(Paint.Cap.SQUARE);
        line.setColor(color);

        // construction yard: squat hangar with a chamfered roof and a crane mast
        canvas.drawRect(cx - (6.4f * s), cy - (0.5f * s), cx + (6.4f * s), cy + (5.7f * s), line);
        canvas.drawLine(cx - (7.2f * s), cy - (0.5f * s), cx - (4.2f * s), cy - (4.6f * s), line);
        canvas.drawLine(cx - (4.2f * s), cy - (4.6f * s), cx + (4.2f * s), cy - (4.6f * s), line);
        canvas.drawLine(cx + (4.2f * s), cy - (4.6f * s), cx + (7.2f * s), cy - (0.5f * s), line);
        canvas.drawLine(cx - (2.8f * s), cy + (5.7f * s), cx - (2.8f * s), cy - (4.6f * s), line);
        canvas.drawLine(cx + (2.8f * s), cy + (5.7f * s), cx + (2.8f * s), cy + (1.5f * s), line);
        canvas.drawLine(cx + (2.8f * s), cy + (1.5f * s), cx + (6.4f * s), cy + (1.5f * s), line);

        line.setStrokeWidth(Math.max(0.8f, 0.9f * s));
        canvas.drawLine(cx - (5.6f * s), cy + (4.8f * s), cx + (5.6f * s), cy + (4.8f * s), line);
        canvas.drawLine(cx - (6.0f * s), cy + (1.8f * s), cx - (3.4f * s), cy + (1.8f * s), line);
        line.setStrokeCap(Paint.Cap.BUTT);
    }
}
