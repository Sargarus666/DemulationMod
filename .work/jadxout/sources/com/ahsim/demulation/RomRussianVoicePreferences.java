package com.ahsim.demulation;

import android.content.Context;

/* loaded from: classes2.dex */
public final class RomRussianVoicePreferences {
    private static final String KEY_ENABLED = "enabled";
    private static final String PREFS = "russian_voice_options";

    private RomRussianVoicePreferences() {
    }

    public static boolean isEnabled(Context context) {
        return context != null && context.getSharedPreferences(PREFS, 0).getBoolean(KEY_ENABLED, false);
    }

    public static void setEnabled(Context context, boolean enabled) {
        if (context != null) {
            context.getSharedPreferences(PREFS, 0).edit().putBoolean(KEY_ENABLED, enabled).apply();
        }
    }
}
