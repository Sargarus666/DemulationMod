package com.ahsim.demulation;

/* loaded from: classes2.dex */
final class RazorBuildStatus729 {
    private RazorBuildStatus729() {
    }

    static boolean accept(int[] r, int committedDynamicBuilds) {
        return r != null && r.length == 16 && committedDynamicBuilds >= 0 && r[0] == 715 && r[1] == 1 && r[2] >= 0 && r[2] <= 73 && committedDynamicBuilds <= 128 - r[2] && r[3] >= 0 && r[3] <= r[2] && r[5] >= r[3] && r[5] <= r[2] + committedDynamicBuilds && r[7] >= 0 && r[11] == 0 && r[12] == 0 && r[10] == 22860814;
    }
}
