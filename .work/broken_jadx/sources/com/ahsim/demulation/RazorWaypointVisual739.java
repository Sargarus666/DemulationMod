package com.ahsim.demulation;

/* loaded from: classes2.dex */
final class RazorWaypointVisual739 {
    private RazorWaypointVisual739() {
    }

    static int committedCentre740(int tileX, int tileY, int width, int height) {
        if (width < 1 || width > 128 || height < 1 || height > 128 || tileX < 0 || tileY < 0 || tileX >= width || tileY >= height) {
            throw new IllegalArgumentException("Invalid committed Razor cell");
        }
        return (((tileY * 256) + 128) << 16) | ((tileX * 256) + 128);
    }

    static boolean isCommittedCell(int packedRaw, int tileX, int tileY) {
        if (tileX < 0 || tileY < 0 || tileX >= 128 || tileY >= 128) {
            return false;
        }
        int expectedX = (tileX << 8) + 128;
        int expectedY = (tileY << 8) + 128;
        return (packedRaw & 65535) == expectedX && (65535 & (packedRaw >>> 16)) == expectedY;
    }
}
