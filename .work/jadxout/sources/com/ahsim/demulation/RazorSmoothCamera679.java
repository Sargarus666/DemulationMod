package com.ahsim.demulation;

/* loaded from: classes2.dex */
public final class RazorSmoothCamera679 {
    private boolean initialized;

    /* renamed from: x */
    public float f52x;

    /* renamed from: y */
    public float f53y;

    public void reset(int tileX, int tileY) {
        this.f52x = tileX;
        this.f53y = tileY;
        this.initialized = true;
    }

    public void ensure(int tileX, int tileY) {
        if (!this.initialized) {
            reset(tileX, tileY);
        }
    }

    public boolean drag(float screenDx, float screenDy, float cellPixels, int minX, int minY, int maxX, int maxY, int viewCols, int viewRows, int cacheX, int cacheY, int cacheCols, int cacheRows) {
        if (!this.initialized || cellPixels <= 0.0f || Float.isNaN(screenDx) || Float.isInfinite(screenDx) || Float.isNaN(screenDy) || Float.isInfinite(screenDy)) {
            return false;
        }
        float lowX = minX;
        float lowY = minY;
        float highX = Math.max(minX, maxX - viewCols);
        float highY = Math.max(minY, maxY - viewRows);
        if (cacheCols >= viewCols && cacheRows >= viewRows) {
            lowX = Math.max(lowX, cacheX);
            lowY = Math.max(lowY, cacheY);
            highX = Math.min(highX, (cacheX + cacheCols) - viewCols);
            highY = Math.min(highY, (cacheY + cacheRows) - viewRows);
        }
        float highX2 = Math.max(lowX, highX);
        float highY2 = Math.max(lowY, highY);
        float nx = Math.max(lowX, Math.min(highX2, this.f52x + (screenDx / cellPixels)));
        float ny = Math.max(lowY, Math.min(highY2, this.f53y + (screenDy / cellPixels)));
        boolean changed = (nx == this.f52x && ny == this.f53y) ? false : true;
        this.f52x = nx;
        this.f53y = ny;
        return changed;
    }
}
