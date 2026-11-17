package com.ahsim.demulation;

/* loaded from: classes2.dex */
final class MissionProgression {
    static final int LAST_CAMPAIGN_ID = 8;
    static final int LOSE = 2;
    static final int ROM_COMPLETE_CAMPAIGN_ID = 9;
    static final int RUNNING = 0;
    static final int WIN = 1;

    static final class Decision {
        final boolean campaignComplete;
        final int campaignIdAfter;
        final int campaignIdBefore;
        final int currentLevel;
        final int nextLevel;
        final boolean terminal;
        final int unlockedLevel;
        final boolean won;

        Decision(boolean terminal, boolean won, boolean campaignComplete, int campaignIdBefore, int campaignIdAfter, int currentLevel, int nextLevel, int unlockedLevel) {
            this.terminal = terminal;
            this.won = won;
            this.campaignComplete = campaignComplete;
            this.campaignIdBefore = campaignIdBefore;
            this.campaignIdAfter = campaignIdAfter;
            this.currentLevel = currentLevel;
            this.nextLevel = nextLevel;
            this.unlockedLevel = unlockedLevel;
        }
    }

    private MissionProgression() {
    }

    static Decision resolve(int missionState, int campaignId, int currentUnlockedLevel) {
        int before = Math.max(0, Math.min(8, campaignId));
        int currentLevel = before + 1;
        int unlocked = Math.max(1, Math.min(9, currentUnlockedLevel));
        if (missionState != 1 && missionState != 2) {
            return new Decision(false, false, false, before, before, currentLevel, 0, unlocked);
        }
        if (missionState == 2) {
            return new Decision(true, false, false, before, before, currentLevel, 0, unlocked);
        }
        int after = before + 1;
        boolean complete = after == 9;
        int nextLevel = complete ? 0 : after + 1;
        int unlockedAfter = complete ? Math.max(unlocked, 9) : Math.max(unlocked, nextLevel);
        return new Decision(true, true, complete, before, after, currentLevel, nextLevel, Math.min(9, unlockedAfter));
    }

    static boolean isSaveResumableAfterWin(long saveTimestamp, long lastVictoryCutoffMillis) {
        return lastVictoryCutoffMillis <= 0 || saveTimestamp >= lastVictoryCutoffMillis;
    }
}
