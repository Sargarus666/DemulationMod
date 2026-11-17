package com.ahsim.demulation;

/* loaded from: classes2.dex */
final class MouseDisplayEdges766 {
    private MouseDisplayEdges766() {
    }

    static boolean insideScreen(float x, float y, int width, int height) {
        return width > 0 && height > 0 && !Float.isNaN(x) && !Float.isNaN(y) && x >= 0.0f && x <= ((float) width) && y >= 0.0f && y <= ((float) height);
    }

    static float velocity(float rawPosition, int physicalLength, float margin) {
        if (physicalLength <= 0) {
            return 0.0f;
        }
        return MouseEdgeScroll764.axisVelocity(rawPosition, 0.0f, physicalLength, margin);
    }
}
