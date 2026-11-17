package com.ahsim.demulation;

import com.ahsim.demulation.RomRuntimeOriginalContentAssets;
import java.io.IOException;

/* loaded from: classes2.dex */
final class GenesisMissionResultData {
    static final int RANK_COUNT = 9;
    private static final int RANK_NAMES = 682210;
    private static final int RANK_WIDTH = 17;
    private static final int THRESHOLDS = 682194;
    private final String[] ranks;
    private final int[] thresholds;

    GenesisMissionResultData(byte[] rom) {
        this.thresholds = new int[8];
        this.ranks = new String[9];
        if (rom == null || rom.length < 682363) {
            throw new IllegalArgumentException("ROM too small for Genesis result ranks");
        }
        for (int i = 0; i < this.thresholds.length; i++) {
            this.thresholds[i] = be16(rom, (i * 2) + THRESHOLDS);
        }
        for (int i2 = 0; i2 < 9; i2++) {
            int off = (i2 * 17) + RANK_NAMES;
            this.ranks[i2] = decodeRank(rom, off, 17);
        }
    }

    GenesisMissionResultData(RomRuntimeOriginalContentAssets assets) {
        this.thresholds = new int[8];
        this.ranks = new String[9];
        if (assets == null) {
            throw new IllegalArgumentException("Mission-result content provider is unavailable");
        }
        try {
            RomRuntimeOriginalContentAssets.MissionResultExactContent content = assets.missionResultExactContent();
            for (int i = 0; i < this.thresholds.length; i++) {
                this.thresholds[i] = content.threshold(i);
            }
            for (int i2 = 0; i2 < 9; i2++) {
                this.ranks[i2] = content.rankName(i2);
            }
        } catch (IOException e) {
            throw new IllegalArgumentException("Mission-result READY data is unavailable", e);
        }
    }

    String rankName(int rankIndex) {
        if (rankIndex < 0) {
            rankIndex = 0;
        }
        if (rankIndex >= this.ranks.length) {
            rankIndex = this.ranks.length - 1;
        }
        return this.ranks[rankIndex];
    }

    int rankIndexForScore(int displayScore, boolean finalMissionVictory) {
        if (finalMissionVictory) {
            return 8;
        }
        int score = Math.max(0, displayScore);
        int rank = 0;
        while (rank < 7 && score >= this.thresholds[rank]) {
            rank++;
        }
        return rank;
    }

    private static String decodeRank(byte[] data, int off, int width) {
        StringBuilder b = new StringBuilder(width);
        for (int j = 0; j < width; j++) {
            int c = data[off + j] & 255;
            if (c == 0) {
                break;
            }
            b.append((char) c);
        }
        return b.toString().trim();
    }

    private static int be16(byte[] b, int o) {
        return ((b[o] & 255) << 8) | (b[o + 1] & 255);
    }
}
