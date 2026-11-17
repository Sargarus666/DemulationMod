package com.ahsim.demulation;

/* loaded from: classes2.dex */
final class MouseReachableEdges767 {
    private MouseReachableEdges767() {
    }

    static float velocity(float local, float viewLength, float screenOrigin, float displayLength, float normalMargin, float insetMargin) {
        if (viewLength <= 0.0f || displayLength <= 0.0f || normalMargin <= 0.0f || !Float.isFinite(local) || !Float.isFinite(screenOrigin) || local < 0.0f || local > viewLength) {
            return 0.0f;
        }
        boolean insetAtStart = screenOrigin > 2.0f;
        boolean insetAtEnd = screenOrigin + viewLength < displayLength - 2.0f;
        float leftMargin = insetAtStart ? Math.min(normalMargin, insetMargin) : normalMargin;
        float rightMargin = insetAtEnd ? Math.min(normalMargin, insetMargin) : normalMargin;
        float leftMargin2 = Math.min(leftMargin, viewLength * 0.45f);
        float rightMargin2 = Math.min(rightMargin, 0.45f * viewLength);
        if (local < leftMargin2) {
            return MouseEdgeScroll764.axisVelocity(local, 0.0f, viewLength, leftMargin2);
        }
        if (local <= viewLength - rightMargin2) {
            return 0.0f;
        }
        return MouseEdgeScroll764.axisVelocity(local, 0.0f, viewLength, rightMargin2);
    }
}
