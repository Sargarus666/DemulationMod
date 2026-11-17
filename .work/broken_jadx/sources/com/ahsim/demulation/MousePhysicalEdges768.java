package com.ahsim.demulation;

/* loaded from: classes2.dex */
final class MousePhysicalEdges768 {
    private MousePhysicalEdges768() {
    }

    static float velocity(float raw, int physicalSize, float normalMargin, int safeInsetAtStart, int safeInsetAtEnd) {
        if (physicalSize <= 0 || normalMargin <= 0.0f || !Float.isFinite(raw) || raw < 0.0f || raw > physicalSize) {
            return 0.0f;
        }
        float near = safeInsetAtStart > 2 ? Math.min(normalMargin, safeInsetAtStart * 0.65f) : normalMargin;
        float far = safeInsetAtEnd > 2 ? Math.min(normalMargin, safeInsetAtEnd * 0.65f) : normalMargin;
        float near2 = Math.min(near, physicalSize * 0.45f);
        float near3 = physicalSize;
        float far2 = Math.min(far, near3 * 0.45f);
        if (raw < near2) {
            return MouseEdgeScroll764.axisVelocity(raw, 0.0f, physicalSize, near2);
        }
        if (raw > physicalSize - far2) {
            return MouseEdgeScroll764.axisVelocity(raw, 0.0f, physicalSize, far2);
        }
        return 0.0f;
    }
}
