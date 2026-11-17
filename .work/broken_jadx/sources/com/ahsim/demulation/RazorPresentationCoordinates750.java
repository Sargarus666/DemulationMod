package com.ahsim.demulation;

/* loaded from: classes2.dex */
public final class RazorPresentationCoordinates750 {
    private RazorPresentationCoordinates750() {
    }

    public static int boundedRawOrCentre(int raw, int tileX, int tileY, int mapWidth, int mapHeight) {
        if (mapWidth < 1 || mapHeight < 1 || mapWidth > 128 || mapHeight > 128 || tileX < 0 || tileY < 0 || tileX >= mapWidth || tileY >= mapHeight) {
            throw new IllegalArgumentException("Invalid committed map cell");
        }
        int cx = (tileX << 8) + 128;
        int cy = (tileY << 8) + 128;
        int centre = (cy << 16) | cx;
        int fx = raw & 65535;
        int fy = 65535 & (raw >>> 16);
        if (fx >= mapWidth * 256 || fy >= mapHeight * 256 || Math.abs(fx - cx) > 256 || Math.abs(fy - cy) > 256) {
            return centre;
        }
        return raw;
    }
}
