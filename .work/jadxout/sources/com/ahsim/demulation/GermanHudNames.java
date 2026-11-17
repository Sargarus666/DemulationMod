package com.ahsim.demulation;

/* loaded from: classes2.dex */
final class GermanHudNames {
    private static final String[] STRUCTURES = {"BETON", "BETON", "PALAST", "LEICHTE FABRIK", "SCHWERE FABRIK", "HI-TECH", "HAUS IX", "WOR", "BAUHOF", "WINDFALLE", "KASERNE", "STARPORT", "RAFFINERIE", "REPARATUR", "MAUER", "TURM", "RAKETENTURM", "SILO", "VORPOSTEN"};

    private GermanHudNames() {
    }

    static String structure(int type) {
        if (type < 0 || type >= STRUCTURES.length) {
            return null;
        }
        return STRUCTURES[type];
    }
}
