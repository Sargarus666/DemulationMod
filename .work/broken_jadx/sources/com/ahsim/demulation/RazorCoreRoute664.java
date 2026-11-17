package com.ahsim.demulation;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class RazorCoreRoute664 {
    public static final int BLOCKED = 3;
    public static final int CLASSIC = 1;
    public static final int FALLBACK = 2;
    public static final int FULL = 1;
    public static final int MAX = 40;
    public static final int PARTIAL = 2;
    public static final int SCHEMA = 664;
    public static final int STABLE732 = 3;
    public final int fromX;
    public final int fromY;
    public final int goalX;
    public final int goalY;
    public final int mode;
    public final int status;
    public final int steps;
    public final int unit;

    /* renamed from: xs */
    public final int[] f34xs;

    /* renamed from: ys */
    public final int[] f35ys;

    private RazorCoreRoute664(int[] w) {
        this.mode = w[1];
        this.status = w[2];
        this.unit = w[3];
        this.fromX = w[4];
        this.fromY = w[5];
        this.goalX = w[6];
        this.goalY = w[7];
        this.steps = w[10];
        this.f34xs = new int[w[8]];
        this.f35ys = new int[w[8]];
        for (int i = 0; i < this.f34xs.length; i++) {
            this.f34xs[i] = w[(i * 2) + 12];
            this.f35ys[i] = w[(i * 2) + 13];
        }
    }

    public static RazorCoreRoute664 parse(int[] w, RazorCampaignMapSnapshot559 frame, int unit, int x, int y) throws IOException {
        if (w == null || frame == null || w.length != 92 || w[0] != 664 || ((w[1] != 1 && w[1] != 2 && w[1] != 3) || ((w[2] != 1 && w[2] != 2 && w[2] != 3) || w[3] != unit || unit < 0 || unit >= frame.units.length || w[4] != frame.units[unit].f28x || w[5] != frame.units[unit].f29y || w[6] != x || w[7] != y || w[8] < 0 || w[8] > 40 || w[10] != frame.steps || w[11] != 0 || frame.gameTicks != 0 || ((frame.stride == 128 && w[1] != 2) || ((w[2] == 3 && w[8] != 0) || (w[2] == 1 && x == w[4] && y == w[5] && w[8] != 0)))))) {
            throw new IOException("Razor 664 route witness mismatch");
        }
        int px = w[4];
        int py = w[5];
        for (int i = 0; i < w[8]; i++) {
            int nx = w[(i * 2) + 12];
            int ny = w[(i * 2) + 13];
            if (nx < 0 || nx >= frame.width || ny < 0 || ny >= frame.height || Math.max(Math.abs(px - nx), Math.abs(py - ny)) != 1 || (w[1] == 2 && Math.abs(px - nx) + Math.abs(py - ny) != 1)) {
                throw new IOException("Razor 664 route contains invalid cell");
            }
            px = nx;
            py = ny;
        }
        if (w[2] == 1 && (px != x || py != y)) {
            throw new IOException("Razor 664 full route does not end at target");
        }
        return new RazorCoreRoute664(w);
    }

    public String describe() {
        String name = this.mode == 1 ? "Genesis 64" : this.mode == 3 ? "Razor 64 (устойчивый маршрут)" : "Razor sandbox";
        String state = this.status == 1 ? "цель" : this.status == 2 ? "частично" : "нет маршрута";
        return name + ": " + state + ", шагов " + this.f34xs.length;
    }
}
