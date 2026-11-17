package com.ahsim.demulation;

/* loaded from: classes2.dex */
public final class TwoFingerSelection611 {
    private TwoFingerSelection611() {
    }

    public static boolean eligibleGroundCombatType(int type) {
        return (type >= 2 && type <= 5) || (type >= 7 && type <= 15);
    }

    public static boolean inside(float left, float top, float right, float bottom, float x, float y) {
        return right > left && bottom > top && x >= left && x <= right && y >= top && y <= bottom;
    }
}
