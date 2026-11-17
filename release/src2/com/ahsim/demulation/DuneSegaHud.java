package com.ahsim.demulation;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;

/** Оформление HUD в стиле Dune: The Battle for Arrakis (Sega Genesis). */
public final class DuneSegaHud {
    private static Typeface cachedTypeface;

    private DuneSegaHud() {}

    public static Typeface typeface(Context context) {
        if (cachedTypeface == null) {
            try {
                cachedTypeface = Typeface.createFromAsset(context.getAssets(), "fonts/dune_sega.ttf");
            } catch (Throwable t) {
                cachedTypeface = Typeface.create("monospace", Typeface.BOLD);
            }
        }
        return cachedTypeface;
    }

    /** Вызывается один раз при создании View, чтобы шрифт был готов до первой отрисовки. */
    public static void init(Context context) {
        typeface(context);
    }

    /** Применяет пиксельный шрифт ко всем текстовым Paint HUD. */
    public static void applyFont(Paint paint) {
        if (paint == null) return;
        Typeface tf = cachedTypeface;
        paint.setTypeface(tf == null ? Typeface.DEFAULT : tf);
        paint.setFakeBoldText(false);
    }

    /** Прямоугольник кнопки над радаром. slot=0 — левая (юниты), slot=1 — правая (база). */
    public static void aboveRadarRect(RectF radar, float s, int slot, RectF out) {
        if (radar == null || radar.isEmpty()) {
            out.setEmpty();
            return;
        }
        float size = Math.min(26f * s, radar.width() * 0.44f);
        float gap = 5f * s;
        float total = size * 2f + gap;
        float cx = radar.centerX();
        float left = cx - total * 0.5f + slot * (size + gap);
        float bottom = radar.top - 3f * s;
        out.set(left, bottom - size, left + size, bottom);
    }

    public static void drawHudButton(Canvas canvas, RectF r, int kind, boolean enabled,
                                     Paint fill, Paint line) {
        if (canvas == null || r == null || r.isEmpty()) return;
        float s = Math.max(1f, r.width() / 20f);
        float l = r.left, t = r.top, rt = r.right, b = r.bottom;

        // тень
        fill.setStyle(Paint.Style.FILL);
        fill.setColor(0xAA000000);
        canvas.drawRect(l + 1.2f*s, t + 1.2f*s, rt + 1.2f*s, b + 1.2f*s, fill);

        // корпус
        fill.setColor(0xFF0B0E10);
        canvas.drawRect(l, t, rt, b, fill);

        // внешняя золотая рамка
        line.setStyle(Paint.Style.STROKE);
        line.setStrokeWidth(Math.max(1f, 1.1f*s));
        line.setColor(enabled ? 0xFFD8B75C : 0xFF6B6350);
        canvas.drawRect(l + .5f*s, t + .5f*s, rt - .5f*s, b - .5f*s, line);

        // внутренняя панель с фаской
        float in = 1.8f*s;
        fill.setColor(enabled ? 0xFF2A2417 : 0xFF171715);
        canvas.drawRect(l+in, t+in, rt-in, b-in, fill);
        line.setStrokeWidth(Math.max(.8f, .9f*s));
        line.setColor(0xFFF4DE9B);
        canvas.drawLine(l+in, t+in, l+in, b-in, line);
        canvas.drawLine(l+in, t+in, rt-in, t+in, line);
        line.setColor(0xFF6E4A1C);
        canvas.drawLine(rt-in, t+in, rt-in, b-in, line);
        canvas.drawLine(l+in, b-in, rt-in, b-in, line);

        // заклёпки по углам
        fill.setColor(enabled ? 0xFFFFE39A : 0xFF5C5748);
        float d = .9f*s;
        canvas.drawRect(l+1f*s, t+1f*s, l+1f*s+d, t+1f*s+d, fill);
        canvas.drawRect(rt-1f*s-d, t+1f*s, rt-1f*s, t+1f*s+d, fill);
        canvas.drawRect(l+1f*s, b-1f*s-d, l+1f*s+d, b-1f*s, fill);
        canvas.drawRect(rt-1f*s-d, b-1f*s-d, rt-1f*s, b-1f*s, fill);

        int c = enabled ? 0xFFFFE7AE : 0xFF7A7462;
        line.setColor(c);
        if (kind == 0) drawUnitsIcon(canvas, r, s, line);
        else drawBaseIcon(canvas, r, s, line);
    }

    private static void drawUnitsIcon(Canvas c, RectF r, float s, Paint p) {
        float cx = r.centerX(), cy = r.centerY() + .5f*s;
        p.setStyle(Paint.Style.STROKE);
        p.setStrokeWidth(Math.max(1f, 1.15f*s));
        p.setColor(0xFFFFE7AE);
        RectF a = new RectF(cx-5.6f*s, cy-2.6f*s, cx-.8f*s, cy+2.6f*s);
        RectF b = new RectF(cx+.8f*s, cy-2.6f*s, cx+5.6f*s, cy+2.6f*s);
        int sv = c.save();
        c.rotate(-30f, cx-3.4f*s, cy);
        c.drawOval(a, p);
        c.restoreToCount(sv);
        sv = c.save();
        c.rotate(-30f, cx+3.4f*s, cy);
        c.drawOval(b, p);
        c.restoreToCount(sv);
        c.drawLine(cx-1.8f*s, cy+1.2f*s, cx+1.8f*s, cy-1.2f*s, p);
    }

    private static void drawBaseIcon(Canvas c, RectF r, float s, Paint p) {
        float cx = r.centerX(), cy = r.centerY() + .5f*s;
        p.setStyle(Paint.Style.STROKE);
        p.setStrokeWidth(Math.max(1f, 1.05f*s));
        p.setColor(0xFFFFE7AE);
        c.drawRect(cx-5.8f*s, cy-.3f*s, cx+5.8f*s, cy+5f*s, p);
        c.drawLine(cx-6.5f*s, cy-.3f*s, cx-3.8f*s, cy-4.2f*s, p);
        c.drawLine(cx-3.8f*s, cy-4.2f*s, cx+3.8f*s, cy-4.2f*s, p);
        c.drawLine(cx+3.8f*s, cy-4.2f*s, cx+6.5f*s, cy-.3f*s, p);
        c.drawLine(cx-2.5f*s, cy+5f*s, cx-2.5f*s, cy-4.2f*s, p);
        c.drawLine(cx+2.5f*s, cy+5f*s, cx+2.5f*s, cy+.8f*s, p);
        c.drawLine(cx+2.5f*s, cy+.8f*s, cx+5.8f*s, cy+.8f*s, p);
    }
}
