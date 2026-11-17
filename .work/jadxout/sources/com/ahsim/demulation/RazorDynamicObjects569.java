package com.ahsim.demulation;

import com.ahsim.demulation.RazorCampaignMapSnapshot559;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class RazorDynamicObjects569 {
    public static final int HEADER = 7;
    public static final int PENDING = 1;
    public static final int PLACED = 2;
    public static final int STRIDE = 8;
    public final Entry[] entries;
    public final int pending;
    public final int placed;

    public static final class Entry {
        public final int handle;
        public final int owner;
        public final int phase;
        public final int provenance;
        public final int slot;
        public final int type;

        /* renamed from: x */
        public final int f38x;

        /* renamed from: y */
        public final int f39y;

        Entry(int[] v, int i) {
            this.handle = v[i];
            this.slot = v[i + 1];
            this.owner = v[i + 2];
            this.type = v[i + 3];
            this.f38x = v[i + 4];
            this.f39y = v[i + 5];
            this.phase = v[i + 6];
            this.provenance = v[i + 7];
        }
    }

    private RazorDynamicObjects569(int[] data) {
        this.pending = data[3];
        this.placed = data[4];
        this.entries = new Entry[data[2]];
        for (int i = 0; i < this.entries.length; i++) {
            this.entries[i] = new Entry(data, (i * 8) + 7);
        }
    }

    public static RazorDynamicObjects569 parse(int[] data, RazorCampaignMapSnapshot559 frame) throws IOException {
        int j;
        RazorCampaignMapSnapshot559 razorCampaignMapSnapshot559 = frame;
        if (data != null && razorCampaignMapSnapshot559 != null) {
            int i = 7;
            if (data.length >= 7 && data[0] == 569 && data[1] == razorCampaignMapSnapshot559.units.length) {
                int i2 = 2;
                if (data[2] >= 0) {
                    int i3 = 256;
                    if (data[2] <= 256 - data[1] && data[3] >= 0) {
                        int type = 4;
                        if (data[4] >= 0 && data[3] + data[4] == data[2] && data[5] == 0 && data[6] == 8 && data.length == (data[2] * 8) + 7) {
                            int previousSlot = data[1] - 1;
                            int countPending = 0;
                            int countPlaced = 0;
                            int i4 = 0;
                            while (i4 < data[i2]) {
                                int at = (i4 * 8) + i;
                                int handle = data[at];
                                int slot = data[at + 1];
                                int i5 = i;
                                int owner = data[at + 2];
                                int i6 = type;
                                int type2 = data[at + 3];
                                int x = data[at + 4];
                                int y = data[at + 5];
                                int phase = data[at + 6];
                                int provenance = data[at + 7];
                                if (handle > 0 && slot > previousSlot && slot < i3 && (handle & 65535) == slot && (handle >>> 16) != 0 && owner >= 0 && owner < 5 && type2 >= 0 && type2 < 32) {
                                    if (provenance == 2 || provenance == 3) {
                                        previousSlot = slot;
                                        if (phase == 1) {
                                            if (x != -1 || y != -1) {
                                                throw new IOException("Pending object has map coordinates");
                                            }
                                            countPending++;
                                            j = 2;
                                        } else if (phase == 2) {
                                            if (x < 0 || x >= razorCampaignMapSnapshot559.width || y < 0 || y >= razorCampaignMapSnapshot559.height || razorCampaignMapSnapshot559.unitAt(x, y) != null) {
                                                throw new IOException("Dynamic object overlaps a source unit");
                                            }
                                            RazorCampaignMapSnapshot559.Building[] buildingArr = razorCampaignMapSnapshot559.buildings;
                                            int length = buildingArr.length;
                                            int i7 = 0;
                                            while (i7 < length) {
                                                int i8 = i7;
                                                RazorCampaignMapSnapshot559.Building b = buildingArr[i8];
                                                RazorCampaignMapSnapshot559.Building[] buildingArr2 = buildingArr;
                                                if (b.f26x != x || b.f27y != y) {
                                                    i7 = i8 + 1;
                                                    buildingArr = buildingArr2;
                                                } else {
                                                    throw new IOException("Dynamic object overlaps a building");
                                                }
                                            }
                                            int j2 = 0;
                                            while (j2 < i4) {
                                                int p = (j2 * 8) + 7;
                                                int j3 = j2;
                                                if (data[p + 6] != 2 || data[p + 4] != x || data[p + 5] != y) {
                                                    j2 = j3 + 1;
                                                } else {
                                                    throw new IOException("Two native units occupy the same cell");
                                                }
                                            }
                                            j = 2;
                                            countPlaced++;
                                        } else {
                                            throw new IOException("Unknown Razor lifecycle phase");
                                        }
                                        i4++;
                                        i2 = j;
                                        i = i5;
                                        type = i6;
                                        i3 = 256;
                                        razorCampaignMapSnapshot559 = frame;
                                    }
                                }
                                throw new IOException("Invalid Razor dynamic object identity");
                            }
                            int i9 = type;
                            if (countPending == data[3] && countPlaced == data[i9]) {
                                return new RazorDynamicObjects569(data);
                            }
                            throw new IOException("Razor lifecycle phase counts disagree");
                        }
                    }
                }
            }
        }
        throw new IOException("Invalid Razor dynamic roster metadata");
    }

    /* renamed from: at */
    public Entry m9at(int x, int y) {
        for (int i = this.entries.length - 1; i >= 0; i--) {
            if (this.entries[i].phase == 2 && this.entries[i].f38x == x && this.entries[i].f39y == y) {
                return this.entries[i];
            }
        }
        return null;
    }
}
