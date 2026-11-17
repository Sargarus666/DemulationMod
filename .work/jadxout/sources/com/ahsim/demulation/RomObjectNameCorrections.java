package com.ahsim.demulation;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.Locale;

/* loaded from: classes2.dex */
final class RomObjectNameCorrections {
    private static final String ENABLED = "enabled";
    static final int MAX_CHARS = 40;
    private static final String PREFS = "classic_object_name_corrections_v1";
    static final int STRUCTURES = 19;
    static final int UNITS = 27;

    private RomObjectNameCorrections() {
    }

    static boolean supported(String profile, String sha256) {
        return sha256 != null && sha256.matches("(?i)[0-9a-f]{64}") && ("dune_arrakis_germany_gm_t70246_00".equals(profile) || "translation_ru_shedevr_lipetsk_usa".equals(profile));
    }

    private static String prefix(String profile, String sha256) {
        if (supported(profile, sha256)) {
            return profile + "." + sha256.toLowerCase(Locale.ROOT) + ".";
        }
        return null;
    }

    static String key(boolean unit, int type, boolean fremen) {
        if (unit) {
            if (type < 0 || type >= 27) {
                throw new IllegalArgumentException("Unknown unit type");
            }
            return "u." + type + ((fremen && (type == 3 || type == 5)) ? ".fremen" : "");
        }
        if (type < 0 || type >= 19 || fremen) {
            throw new IllegalArgumentException("Unknown structure type");
        }
        return "s." + type;
    }

    static boolean isEnabled(Context context, String profile, String sha256) {
        String p = prefix(profile, sha256);
        return p != null && context.getSharedPreferences(PREFS, 0).getBoolean(new StringBuilder().append(p).append(ENABLED).toString(), false);
    }

    static void setEnabled(Context context, String profile, String sha256, boolean enabled) {
        String p = prefix(profile, sha256);
        if (p == null) {
            return;
        }
        context.getSharedPreferences(PREFS, 0).edit().putBoolean(p + ENABLED, enabled).apply();
    }

    static String saved(Context context, String profile, String sha256, boolean unit, int type, boolean fremen) {
        String p = prefix(profile, sha256);
        if (p == null) {
            return null;
        }
        return context.getSharedPreferences(PREFS, 0).getString(p + key(unit, type, fremen), null);
    }

    static void save(Context context, String profile, String sha256, boolean unit, int type, boolean fremen, String value) {
        String p = prefix(profile, sha256);
        if (p == null) {
            throw new IllegalArgumentException("Unsupported BASE ROM for name correction");
        }
        String k = p + key(unit, type, fremen);
        SharedPreferences.Editor editor = context.getSharedPreferences(PREFS, 0).edit();
        if (value == null) {
            editor.remove(k);
        } else {
            editor.putString(k, clean(value));
        }
        editor.apply();
    }

    static String clean(String value) {
        if (value == null) {
            throw new IllegalArgumentException("Name missing");
        }
        String trimmed = value.trim();
        if (trimmed.isEmpty() || trimmed.codePointCount(0, trimmed.length()) > 40) {
            throw new IllegalArgumentException("Object name must have 1–40 characters");
        }
        for (int i = 0; i < trimmed.length(); i++) {
            char c = trimmed.charAt(i);
            if (Character.isISOControl(c)) {
                throw new IllegalArgumentException("Control character in name");
            }
        }
        return trimmed;
    }

    static Snapshot load(Context context, String profile, String sha256) {
        String p = prefix(profile, sha256);
        if (p == null) {
            return Snapshot.EMPTY;
        }
        SharedPreferences prefs = context.getSharedPreferences(PREFS, 0);
        if (!prefs.getBoolean(p + ENABLED, false)) {
            return Snapshot.EMPTY;
        }
        String[] units = new String[27];
        String[] structures = new String[19];
        for (int i = 0; i < 27; i++) {
            units[i] = validOrNull(prefs.getString(p + key(true, i, false), null));
        }
        for (int i2 = 0; i2 < 19; i2++) {
            structures[i2] = validOrNull(prefs.getString(p + key(false, i2, false), null));
        }
        String fremenGroup = validOrNull(prefs.getString(p + key(true, 3, true), null));
        String fremenSingle = validOrNull(prefs.getString(p + key(true, 5, true), null));
        return new Snapshot(units, structures, fremenGroup, fremenSingle);
    }

    private static String validOrNull(String value) {
        if (value == null) {
            return null;
        }
        try {
            return clean(value);
        } catch (IllegalArgumentException e) {
            return null;
        }
    }

    static final class Snapshot {
        static final Snapshot EMPTY = new Snapshot(null, null, null, null);
        private final String fremenGroup;
        private final String fremenSingle;
        private final String[] structures;
        private final String[] units;

        private Snapshot(String[] units, String[] structures, String group, String single) {
            this.units = units;
            this.structures = structures;
            this.fremenGroup = group;
            this.fremenSingle = single;
        }

        String structure(int type, String original) {
            if (this.structures == null || type < 0 || type >= this.structures.length || this.structures[type] == null) {
                return original;
            }
            return this.structures[type];
        }

        String unit(int type, int house, String original) {
            if (house == 3 && type == 3) {
                return this.fremenGroup == null ? original : this.fremenGroup;
            }
            if (house == 3 && type == 5) {
                return this.fremenSingle == null ? original : this.fremenSingle;
            }
            if (this.units == null || type < 0 || type >= this.units.length || this.units[type] == null) {
                return original;
            }
            return this.units[type];
        }
    }
}
