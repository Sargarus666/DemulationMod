package com.ahsim.demulation;

import com.ahsim.demulation.MissionProgression;

/* loaded from: classes2.dex */
final class CampaignLevelFlow {
    static final int FIRST_LEVEL = 1;
    static final int LAST_LEVEL = 9;

    private CampaignLevelFlow() {
    }

    static int clampUnlockedLevel(int unlockedLevel) {
        return Math.max(1, Math.min(9, unlockedLevel));
    }

    static boolean showLevelSelectorAfterHouse(int unlockedLevel) {
        return clampUnlockedLevel(unlockedLevel) >= 2;
    }

    static boolean isLevelEnabled(int level, int unlockedLevel) {
        int unlocked = clampUnlockedLevel(unlockedLevel);
        return level >= 1 && level <= 9 && level <= unlocked;
    }

    static int highlightedLevel(int unlockedLevel) {
        return clampUnlockedLevel(unlockedLevel);
    }

    static int campaignIdForLevel(int level) {
        int l = Math.max(1, Math.min(9, level));
        return l - 1;
    }

    static int restartLevelAfterOutcome(MissionProgression.Decision decision) {
        if (decision == null || !decision.terminal || decision.won) {
            return 0;
        }
        return Math.max(1, Math.min(9, decision.currentLevel));
    }
}
