package com.ahsim.demulation;

/* loaded from: classes2.dex */
final class MouseMarquee763 {
    private boolean active;
    private boolean dragging;
    private float startX;
    private float startY;

    MouseMarquee763() {
    }

    void begin(float x, float y) {
        this.startX = x;
        this.startY = y;
        this.active = true;
        this.dragging = false;
    }

    boolean move(float x, float y, float slop) {
        if (!this.active) {
            return false;
        }
        if (!this.dragging && Math.hypot(x - this.startX, y - this.startY) >= slop) {
            this.dragging = true;
        }
        return this.dragging;
    }

    void cancel() {
        this.active = false;
        this.dragging = false;
    }

    boolean isDragging() {
        return this.active && this.dragging;
    }

    float startX() {
        return this.startX;
    }

    float startY() {
        return this.startY;
    }
}
