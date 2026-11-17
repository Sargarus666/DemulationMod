package com.ahsim.demulation;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class RazorCampaignMapSnapshot559 {
    public static final int FIELDS = 6;
    public static final int HEADER = 20;
    public final int activeUnit;
    public final Building[] buildings;
    public final int gameTicks;
    public final int groundRecords;
    public final int height;
    public final int house;
    public final int mission;
    public final int orderSteps;
    public final int steps;
    public final int stride;
    public final int targetX;
    public final int targetY;
    public final Unit[] units;
    public final int width;

    public static final class Unit {
        public final int ordinal;
        public final int owner;
        public final boolean retired;
        public final int sourceTag;
        public final int type;

        /* renamed from: x */
        public final int f28x;

        /* renamed from: y */
        public final int f29y;

        Unit(int[] w, int at) {
            this.ordinal = w[at];
            this.owner = w[at + 1];
            this.type = w[at + 2];
            this.f28x = w[at + 3];
            this.f29y = w[at + 4];
            this.sourceTag = w[at + 5] & 255;
            this.retired = (w[at + 5] & 256) != 0;
        }
    }

    public static final class Building {
        public final int ordinal;
        public final int owner;
        public final int type;

        /* renamed from: x */
        public final int f26x;

        /* renamed from: y */
        public final int f27y;

        Building(int[] w, int at) {
            this.ordinal = w[at];
            this.owner = w[at + 1];
            this.type = w[at + 2];
            this.f26x = w[at + 3];
            this.f27y = w[at + 4];
        }
    }

    private RazorCampaignMapSnapshot559(int[] w, int unitCount, int buildingCount) {
        this.house = w[2];
        this.mission = w[3];
        this.width = w[4];
        this.height = w[5];
        this.stride = w[6];
        this.groundRecords = w[9];
        this.steps = w[10];
        this.orderSteps = w[11];
        this.activeUnit = w[12] - 1;
        this.targetX = w[13];
        this.targetY = w[14];
        this.gameTicks = w[15];
        this.units = new Unit[unitCount];
        this.buildings = new Building[buildingCount];
        int at = 20;
        int i = 0;
        while (i < unitCount) {
            this.units[i] = new Unit(w, at);
            i++;
            at += 6;
        }
        int i2 = 0;
        while (i2 < buildingCount) {
            this.buildings[i2] = new Building(w, at);
            i2++;
            at += 6;
        }
    }

    static RazorCampaignMapSnapshot559 parse(int[] w, int house, int mission, int unitCount, int buildingCount, int width, int height, int stride, int mapHash, int sceneHash, int objectHash, RazorCampaignMapSnapshot559 previous) throws IOException {
        if (w != null && w.length >= 20) {
            if (w[8] >= buildingCount && w[8] <= 128 && w.length == ((w[8] + unitCount) * 6) + 20 && w[0] == 559 && w[1] == 1) {
                if (w[2] == house) {
                    if (w[3] == mission && w[4] == width) {
                        int i = 5;
                        if (w[5] == height) {
                            if (w[6] == stride && w[7] == unitCount && w[9] >= 0 && w[10] >= 0 && w[10] <= 1000000 && w[11] >= 0 && w[11] <= w[10] && w[12] >= 0 && w[12] <= unitCount) {
                                if ((w[12] == 0 || (w[13] >= 0 && w[13] < width && w[14] >= 0 && w[14] < height)) && (w[12] != 0 || (w[13] == -1 && w[14] == -1))) {
                                    if (w[15] == 0) {
                                        if (w[16] == mapHash) {
                                            if (w[17] == sceneHash) {
                                                if (w[18] == objectHash && w[19] == 6) {
                                                    int at = 20;
                                                    int i2 = 0;
                                                    while (i2 < unitCount) {
                                                        if (w[at] == i2 && w[at + 1] >= 0 && w[at + 1] < i && w[at + 2] >= 0 && w[at + 2] < 32 && w[at + 3] >= 0 && w[at + 3] < width && w[at + 4] >= 0 && w[at + 4] < height && w[at + 5] >= 0 && w[at + 5] <= 511 && (w[at + 5] & (-512)) == 0) {
                                                            i2++;
                                                            at += 6;
                                                            i = 5;
                                                        } else {
                                                            throw new IOException("Razor map unit record out of bounds");
                                                        }
                                                    }
                                                    int i3 = 0;
                                                    while (i3 < w[8]) {
                                                        if (w[at] == i3 && w[at + 1] >= 0 && w[at + 1] < 5 && w[at + 2] >= 0 && w[at + 2] < 19 && w[at + 3] >= 0 && w[at + 3] < width && w[at + 4] >= 0 && w[at + 4] < height && w[at + 5] == 0) {
                                                            i3++;
                                                            at += 6;
                                                        } else {
                                                            throw new IOException("Razor map building record out of bounds");
                                                        }
                                                    }
                                                    if (previous != null) {
                                                        if (w[10] < previous.steps || w[11] < previous.orderSteps || w[15] != previous.gameTicks || w[10] - previous.steps > 1000000) {
                                                            throw new IOException("Razor map snapshot counter regressed");
                                                        }
                                                        for (int i4 = 0; i4 < unitCount; i4++) {
                                                            int p = (i4 * 6) + 20;
                                                            Unit u = previous.units[i4];
                                                            if (w[p + 1] != u.owner || w[p + 2] != u.type || (w[p + 5] & 255) != u.sourceTag || ((u.retired && (w[p + 5] & 256) == 0) || (w[10] == previous.steps && (w[p + 3] != u.f28x || w[p + 4] != u.f29y)))) {
                                                                throw new IOException("Razor map immutable identity or position changed");
                                                            }
                                                        }
                                                    }
                                                    return new RazorCampaignMapSnapshot559(w, unitCount, w[8]);
                                                }
                                            }
                                        }
                                    }
                                }
                                throw new IOException("Invalid or unrelated native Razor map frame");
                            }
                            throw new IOException("Invalid or unrelated native Razor map frame");
                        }
                    }
                }
            }
        }
        throw new IOException("Invalid or unrelated native Razor map frame");
    }

    public Unit unitAt(int x, int y) {
        for (int i = this.units.length - 1; i >= 0; i--) {
            if (!this.units[i].retired && this.units[i].f28x == x && this.units[i].f29y == y) {
                return this.units[i];
            }
        }
        return null;
    }
}
