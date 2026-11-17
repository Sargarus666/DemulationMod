package com.ahsim.demulation;

/* loaded from: classes2.dex */
final class MouseEdgeScroll764 {
    private MouseEdgeScroll764() {
    }

    static float axisVelocity(float position, float begin, float end, float margin) {
        float normalized;
        float sign;
        if (margin <= 0.0f || end <= begin || position < begin || position > end) {
            return 0.0f;
        }
        if (position < begin + margin) {
            normalized = 1.0f - ((position - begin) / margin);
            sign = -1.0f;
        } else {
            if (position <= end - margin) {
                return 0.0f;
            }
            normalized = 1.0f - ((end - position) / margin);
            sign = 1.0f;
        }
        float smooth = normalized * normalized * (3.0f - (2.0f * normalized));
        return 290.0f * sign * smooth;
    }
}
