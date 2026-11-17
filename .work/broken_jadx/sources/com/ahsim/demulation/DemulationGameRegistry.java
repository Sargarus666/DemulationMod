package com.ahsim.demulation;

/* loaded from: classes2.dex */
public final class DemulationGameRegistry {
    public static final String CLASSIC = "dune_battle_for_arrakis_genesis";
    private static final Game CLASSIC_GAME = new Game(CLASSIC, "Dune: The Battle for Arrakis", Engine.CLASSIC_NATIVE, true);
    public static final String RAZOR = "dune_razor_missions_native";
    private static final Game RAZOR_ENGINE = new Game(RAZOR, "Dune: Razor Missions", Engine.DUNEHACK_NATIVE, false);

    public enum Engine {
        CLASSIC_NATIVE,
        DUNEHACK_NATIVE
    }

    public static final class Game {
        public final Engine engine;

        /* renamed from: id */
        public final String f0id;
        public final boolean playable;
        public final String title;

        private Game(String id, String title, Engine engine, boolean playable) {
            this.f0id = id;
            this.title = title;
            this.engine = engine;
            this.playable = playable;
        }
    }

    private DemulationGameRegistry() {
    }

    public static Game find(String id) {
        if (CLASSIC.equals(id)) {
            return CLASSIC_GAME;
        }
        if (RAZOR.equals(id)) {
            return RAZOR_ENGINE;
        }
        return null;
    }

    public static Game[] all() {
        return new Game[]{CLASSIC_GAME};
    }

    public static boolean isPlayable(String id) {
        Game g = find(id);
        return g != null && g.playable;
    }
}
