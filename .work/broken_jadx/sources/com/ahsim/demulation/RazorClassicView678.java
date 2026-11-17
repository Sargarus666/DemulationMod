package com.ahsim.demulation;

import android.graphics.Canvas;
import android.graphics.Paint;

/* loaded from: classes2.dex */
final class RazorClassicView678 {
    private RazorClassicView678() {
    }

    static void drawCorners(Canvas c, Paint p, float left, float top, float right, float bottom, float arm, float stroke, int color) {
        p.setStyle(Paint.Style.STROKE);
        p.setColor(color);
        p.setStrokeWidth(stroke);
        c.drawLine(left, top, left + arm, top, p);
        c.drawLine(left, top, left, top + arm, p);
        c.drawLine(right, top, right - arm, top, p);
        c.drawLine(right, top, right, top + arm, p);
        c.drawLine(left, bottom, left + arm, bottom, p);
        c.drawLine(left, bottom, left, bottom - arm, p);
        c.drawLine(right, bottom, right - arm, bottom, p);
        c.drawLine(right, bottom, right, bottom - arm, p);
        p.setStyle(Paint.Style.FILL);
    }
}
