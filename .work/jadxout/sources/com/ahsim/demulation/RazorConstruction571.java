package com.ahsim.demulation;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class RazorConstruction571 {
    public static final int DELIVERED = 4;
    public static final int IDLE = 0;
    public static final int ORDERED = 1;
    public static final int PENDING = 3;
    public static final int RESERVED = 2;
    public final int completions;
    public final int deliveries;
    public final int harvesterHandle;
    public final int orders;
    public final int owner;
    public final int phase;
    public final int reservations;

    /* renamed from: x */
    public final int f32x;

    /* renamed from: y */
    public final int f33y;

    private RazorConstruction571(int[] w) {
        this.phase = w[1];
        this.f32x = w[2];
        this.f33y = w[3];
        this.owner = w[4];
        this.harvesterHandle = w[5];
        this.orders = w[6];
        this.reservations = w[7];
        this.completions = w[8];
        this.deliveries = w[9];
    }

    public static RazorConstruction571 parse(int[] w, int width, int height, int house) throws IOException {
        if (w == null || w.length != 15 || w[0] != 571 || w[1] < 0 || w[1] > 4 || w[6] < 0 || w[7] < 0 || w[8] < 0 || w[9] < 0 || w[6] < w[7] || w[7] < w[8] || w[8] < w[9] || w[10] != 0 || w[11] != 12 || w[12] != 16 || w[13] != 0 || w[14] != 0 || width < 1 || width > 128 || height < 1 || height > 128 || house < 0 || house >= 5) {
            throw new IOException("Invalid Razor construction protocol");
        }
        if ((w[1] == 0 && (w[2] != -1 || w[3] != -1 || w[4] != -1 || w[5] != 0)) || ((w[1] == 1 && (w[2] != -1 || w[3] != -1 || w[4] != house || w[5] != 0)) || (w[1] >= 2 && (w[2] < 0 || w[2] >= width || w[3] < 0 || w[3] >= height || w[4] != house || ((w[1] == 2 && w[5] != 0) || (w[1] >= 3 && (w[5] <= 0 || (w[5] >>> 16) == 0))))))) {
            throw new IOException("Inconsistent Razor construction lifecycle");
        }
        return new RazorConstruction571(w);
    }

    public boolean busy() {
        return this.phase != 0;
    }

    /* renamed from: at */
    public boolean m8at(int tileX, int tileY) {
        return this.phase >= 2 && this.f32x == tileX && this.f33y == tileY;
    }
}
