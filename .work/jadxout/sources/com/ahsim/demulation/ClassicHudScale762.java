package com.ahsim.demulation;

/* loaded from: classes2.dex */
final class ClassicHudScale762 {
    static final int DEFAULT = 0;
    private static final float MAX_HUD_SCREEN_FRACTION = 0.42f;
    private static final float MIN_RADAR_LOGICAL_H = 36.0f;
    static final int PRESET_COUNT = 3;
    private static final float[] RATIOS = {1.0f, 1.15f, 1.3f};
    private static final String[] LABELS = {"100%", "115%", "130%"};

    private ClassicHudScale762() {
    }

    static int normalize(int preset) {
        if (preset < 0 || preset >= 3) {
            return 0;
        }
        return preset;
    }

    static int next(int preset) {
        return (normalize(preset) + 1) % 3;
    }

    static String label(int preset) {
        return LABELS[normalize(preset)];
    }

    static float resolve(int preset, float worldScale, float screenW, float screenH, float hudLogicalW, float hudMenuBottom) {
        float base = Math.max(1.0f, worldScale);
        int level = normalize(preset);
        if (level == 0) {
            return base;
        }
        float wanted = RATIOS[level] * base;
        float capHeight = screenH / Math.max(1.0f, MIN_RADAR_LOGICAL_H + hudMenuBottom);
        float capWidth = (MAX_HUD_SCREEN_FRACTION * screenW) / Math.max(1.0f, hudLogicalW);
        return Math.max(base, Math.min(wanted, Math.min(capHeight, capWidth)));
    }
}
