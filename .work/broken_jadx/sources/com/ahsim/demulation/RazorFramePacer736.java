package com.ahsim.demulation;

/* loaded from: classes2.dex */
public final class RazorFramePacer736 {
    public static final long FRAME_NS = 16666667;
    public static final int MAX_BATCH = 8;
    private static final long MAX_DEBT_NS = 133333336;
    private long debtNs;
    private long lastNs;
    private boolean started;

    public void reset(long nowNs) {
        this.started = true;
        this.lastNs = nowNs;
        this.debtNs = FRAME_NS;
    }

    public void stop() {
        this.started = false;
        this.debtNs = 0L;
    }

    public int takeDue(long nowNs) {
        if (!this.started) {
            return 0;
        }
        long elapsed = nowNs > this.lastNs ? nowNs - this.lastNs : 0L;
        this.lastNs = nowNs;
        if (elapsed >= MAX_DEBT_NS) {
            this.debtNs = MAX_DEBT_NS;
        } else {
            this.debtNs = Math.min(MAX_DEBT_NS, this.debtNs + elapsed);
        }
        int due = (int) (this.debtNs / FRAME_NS);
        if (due > 8) {
            due = 8;
        }
        this.debtNs -= due * FRAME_NS;
        return due;
    }
}
