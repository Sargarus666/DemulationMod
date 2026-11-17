package com.ahsim.demulation;

import java.io.IOException;

/* loaded from: classes2.dex */
final class RazorCampaignSessionGuard {
    private int[] baseline;
    private final int gridSide;
    private final int height;
    private final int house;
    private int lastRead;
    private final int mission;
    private final int side;
    private final int storedCells;
    private final int structures;
    private final int teams;
    private final int units;
    private final int width;

    RazorCampaignSessionGuard(int house, int mission, int side, int width, int height, int units, int structures, int teams, int cells) throws IOException {
        if (house >= 0 && house < 5 && mission >= 1 && mission <= 9) {
            if ((side == 32 || side == 64 || side == 128) && cells == side * side && width >= 1) {
                if (width <= (side == 128 ? 128 : 64) && height >= 1) {
                    if (height <= (side == 128 ? 128 : 64) && units >= 0 && units <= 128 && structures >= 0 && structures <= 1024 && teams >= 0 && teams <= 64) {
                        this.house = house;
                        this.mission = mission;
                        this.side = side;
                        this.width = width;
                        this.height = height;
                        this.units = units;
                        this.structures = structures;
                        this.teams = teams;
                        this.storedCells = cells;
                        this.gridSide = side == 128 ? 128 : 64;
                        return;
                    }
                }
            }
        }
        throw new IOException("Invalid authenticated Razor mission geometry");
    }

    int unitCount() {
        return this.units;
    }

    int buildingCount() {
        if (this.baseline == null) {
            return -1;
        }
        return this.baseline[8];
    }

    int worldWidth() {
        return this.width;
    }

    int worldHeight() {
        return this.height;
    }

    int worldStride() {
        return this.gridSide;
    }

    int[] sourceHashes() {
        if (this.baseline == null) {
            return null;
        }
        return new int[]{this.baseline[21], this.baseline[22], this.baseline[20]};
    }

    synchronized boolean sameSourceHashes(int mapHash, int sceneHash, int objectHash) {
        boolean z;
        if (this.baseline != null && this.baseline[21] == mapHash && this.baseline[22] == sceneHash) {
            z = this.baseline[20] == objectHash;
        }
        return z;
    }

    synchronized Snapshot accept(int[] w) throws IOException {
        if (w != null) {
            if (w.length == 32) {
                if (w[0] == 1 && w[1] == 0 && w[2] == this.house && w[3] == this.mission && w[4] == this.gridSide && w[5] == this.side && w[6] == ((this.width << 16) | this.height) && w[7] == this.units && w[8] >= 0 && w[9] >= 0 && w[8] + w[9] == this.structures && w[10] == this.teams && w[18] == this.storedCells && w[19] == (this.gridSide * this.gridSide) - this.storedCells && w[26] == 1 && w[27] > this.lastRead) {
                    if (w[28] == ((w[19] == 0 ? 4 : 0) | 3) && w[29] == 63 && w[30] == 0 && w[31] == 0) {
                        if (this.baseline != null) {
                            for (int i = 0; i < 26; i++) {
                                if (w[i] != this.baseline[i]) {
                                    throw new IOException("Unauthorized change of native Razor world");
                                }
                            }
                        } else {
                            this.baseline = (int[]) w.clone();
                        }
                        this.lastRead = w[27];
                    }
                }
            }
        }
        throw new IOException("Razor native world state/capability gate mismatch");
        return new Snapshot(this.house, this.mission, this.gridSide, this.units, w[8], w[9], this.storedCells, w[19], w[27], w[30], w[29]);
    }

    static final class Snapshot {
        final int blockedMask;
        final int buildings;
        final int gridSide;
        final int groundMarkers;
        final int house;
        final int mission;
        final int reads;
        final int storedCells;
        final int ticks;
        final int uninitializedCells;
        final int units;

        Snapshot(int h, int m, int s, int u, int b, int g, int cells, int pending, int reads, int ticks, int blocked) {
            this.house = h;
            this.mission = m;
            this.gridSide = s;
            this.units = u;
            this.buildings = b;
            this.groundMarkers = g;
            this.storedCells = cells;
            this.uninitializedCells = pending;
            this.reads = reads;
            this.ticks = ticks;
            this.blockedMask = blocked;
        }
    }
}
