package com.ahsim.demulation;

import com.ahsim.demulation.RazorTerrainVisualSource;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class RazorTerrainPreviewNavigator {
    public static final int[] ZOOM_TILES = {8, 12, 16, 24, 32};
    private int classicCols678;
    private int classicRows678;
    private final int maxX;
    private final int maxY;
    private final int minX;
    private final int minY;
    private final int scenarioHeight;
    private final int scenarioWidth;
    private int viewportRows675;

    /* renamed from: x */
    private int f57x;

    /* renamed from: y */
    private int f58y;
    private int zoomIndex = 2;
    private float viewportAspect675 = 1.0f;

    public boolean classicMode678() {
        return this.classicCols678 > 0;
    }

    public void setClassicViewport678(int pixelWidth, int pixelHeight) {
        if (pixelWidth <= 0 || pixelHeight <= 0) {
            return;
        }
        int columns = Math.min(this.maxX - this.minX, RazorClassicMetrics678.columns(pixelWidth, pixelHeight));
        int rows = Math.min(this.maxY - this.minY, RazorClassicMetrics678.rows(pixelWidth, pixelHeight));
        if (columns <= 0 || rows <= 0) {
            return;
        }
        int centerX = this.f57x + (tiles() / 2);
        int centerY = this.f58y + (rows() / 2);
        this.classicCols678 = columns;
        this.classicRows678 = rows;
        this.viewportRows675 = this.classicRows678;
        moveTo(centerX - (tiles() / 2), centerY - (rows() / 2));
    }

    public RazorTerrainPreviewNavigator(RazorTerrainVisualSource.Audit.MapInfo info) throws IOException {
        this.viewportRows675 = ZOOM_TILES[2];
        if (info == null || info.scenarioWidth <= 0 || info.scenarioHeight <= 0 || info.loadedWidth <= 0 || info.loadedHeight <= 0) {
            throw new IOException("Razor preview lacks a validated map region");
        }
        this.scenarioWidth = info.scenarioWidth;
        this.scenarioHeight = info.scenarioHeight;
        this.minX = Math.max(0, info.loadedStartX);
        this.minY = Math.max(0, info.loadedStartY);
        this.maxX = Math.min(this.scenarioWidth, info.loadedStartX + info.loadedWidth);
        this.maxY = Math.min(this.scenarioHeight, info.loadedStartY + info.loadedHeight);
        if (this.maxX <= this.minX || this.maxY <= this.minY) {
            throw new IOException("No authenticated Razor terrain inside scenario bounds");
        }
        while (this.zoomIndex > 0 && (tiles() > this.maxX - this.minX || tiles() > this.maxY - this.minY)) {
            this.zoomIndex--;
        }
        if (tiles() > this.maxX - this.minX || tiles() > this.maxY - this.minY) {
            throw new IOException("Authenticated Razor viewport is smaller than minimum zoom");
        }
        this.viewportRows675 = tiles();
        center();
    }

    public int rows() {
        return this.viewportRows675;
    }

    public void setViewportAspect675(float heightOverWidth) {
        if (Float.isNaN(heightOverWidth) || Float.isInfinite(heightOverWidth) || heightOverWidth <= 0.0f) {
            return;
        }
        this.viewportAspect675 = Math.max(0.35f, Math.min(2.5f, heightOverWidth));
        if (classicMode678()) {
            return;
        }
        int oldRows = this.viewportRows675;
        this.viewportRows675 = rowsFor675(this.zoomIndex);
        moveTo(this.f57x, this.f58y + ((oldRows - this.viewportRows675) / 2));
    }

    private int rowsFor675(int index) {
        return Math.max(1, Math.min(Math.min(64, this.maxY - this.minY), Math.round(ZOOM_TILES[index] * this.viewportAspect675)));
    }

    public int tiles() {
        return classicMode678() ? this.classicCols678 : ZOOM_TILES[this.zoomIndex];
    }

    /* renamed from: x */
    public int m18x() {
        return this.f57x;
    }

    /* renamed from: y */
    public int m19y() {
        return this.f58y;
    }

    public int scenarioWidth() {
        return this.scenarioWidth;
    }

    public int scenarioHeight() {
        return this.scenarioHeight;
    }

    public int minX() {
        return this.minX;
    }

    public int minY() {
        return this.minY;
    }

    public int maxX() {
        return this.maxX;
    }

    public int maxY() {
        return this.maxY;
    }

    public boolean zoomIn() {
        return zoomTo(this.zoomIndex - 1);
    }

    public boolean zoomOut() {
        return zoomTo(this.zoomIndex + 1);
    }

    private boolean zoomTo(int next) {
        if (classicMode678() || next < 0 || next >= ZOOM_TILES.length || ZOOM_TILES[next] > this.maxX - this.minX || ZOOM_TILES[next] > this.maxY - this.minY) {
            return false;
        }
        int centreX = this.f57x + (tiles() / 2);
        int centreY = this.f58y + (rows() / 2);
        this.zoomIndex = next;
        this.viewportRows675 = rowsFor675(this.zoomIndex);
        moveTo(centreX - (tiles() / 2), centreY - (rows() / 2));
        return true;
    }

    public boolean pan(int dx, int dy) {
        return moveTo(this.f57x + dx, this.f58y + dy);
    }

    public void center() {
        moveTo(((this.minX + this.maxX) - tiles()) / 2, ((this.minY + this.maxY) - rows()) / 2);
    }

    public boolean focus(int tileX, int tileY) {
        if (tileX < this.minX || tileY < this.minY || tileX >= this.maxX || tileY >= this.maxY) {
            return false;
        }
        return moveTo(tileX - (tiles() / 2), tileY - (rows() / 2));
    }

    private boolean moveTo(int nx, int ny) {
        int nx2 = Math.max(this.minX, Math.min(this.maxX - tiles(), nx));
        int ny2 = Math.max(this.minY, Math.min(this.maxY - rows(), ny));
        boolean changed = (nx2 == this.f57x && ny2 == this.f58y) ? false : true;
        this.f57x = nx2;
        this.f58y = ny2;
        return changed;
    }
}
