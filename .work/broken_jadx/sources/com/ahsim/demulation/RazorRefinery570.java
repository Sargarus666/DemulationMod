package com.ahsim.demulation;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class RazorRefinery570 {
    public static final int DELIVERED = 2;
    public static final int NONE = 0;
    public static final int PENDING = 1;
    public final int commissions;
    public final int deliveries;
    public final int harvesterHandle;
    public final int owner;
    public final int phase;

    /* renamed from: x */
    public final int f50x;

    /* renamed from: y */
    public final int f51y;

    private RazorRefinery570(int[] data) {
        this.phase = data[1];
        this.f50x = data[2];
        this.f51y = data[3];
        this.harvesterHandle = data[4];
        this.owner = data[5];
        this.commissions = data[8];
        this.deliveries = data[9];
    }

    public static RazorRefinery570 parse(int[] data, int width, int height, int house) throws IOException {
        if (data == null || data.length != 11 || data[0] != 570 || data[1] < 0 || data[1] > 2 || data[6] != 12 || data[7] != 16 || data[8] < 0 || data[9] < 0 || data[9] > data[8] || data[10] != 0 || width < 1 || width > 128 || height < 1 || height > 128 || house < 0 || house >= 5) {
            throw new IOException("Invalid Razor refinery event envelope");
        }
        if (data[1] == 0) {
            if (data[2] != -1 || data[3] != -1 || data[4] != 0 || data[5] != -1) {
                throw new IOException("Inactive test refinery has an object");
            }
        } else if (data[2] < 0 || data[2] >= width || data[3] < 0 || data[3] >= height || data[5] != house || data[4] <= 0 || (data[4] >>> 16) == 0 || data[8] == 0 || ((data[1] == 1 && data[9] >= data[8]) || (data[1] == 2 && data[9] == 0))) {
            throw new IOException("Invalid Razor refinery event identity");
        }
        return new RazorRefinery570(data);
    }

    public boolean active() {
        return this.phase != 0;
    }

    /* renamed from: at */
    public boolean m12at(int tileX, int tileY) {
        return active() && this.f50x == tileX && this.f51y == tileY;
    }
}
