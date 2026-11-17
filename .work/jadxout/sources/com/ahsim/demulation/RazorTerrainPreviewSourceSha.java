package com.ahsim.demulation;

/* loaded from: classes2.dex */
public final class RazorTerrainPreviewSourceSha {
    private static final String ONE = "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a";
    private static final String TWO = "e32b1846ff38fac3163caa03b204148e60a19371131a8806fc1937c7aff383af";

    private RazorTerrainPreviewSourceSha() {
    }

    public static boolean isAttested(String sha) {
        return sha != null && ("9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a".equalsIgnoreCase(sha) || "e32b1846ff38fac3163caa03b204148e60a19371131a8806fc1937c7aff383af".equalsIgnoreCase(sha));
    }
}
