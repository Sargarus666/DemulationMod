package com.ahsim.demulation;

/* loaded from: classes2.dex */
public final class RazorFinanceLive576 {
    public static final int CANCELLED = 4;
    public static final int HELD = 2;
    public static final int IDLE = 0;
    public static final int READY = 3;
    public static final int RUNNING = 1;
    public final int cost;
    public final int credits;
    public final int ledgerRefunded;
    public final int ledgerSpent;
    public final int manualFrameEquivalents;
    public final int openingCredits;
    public final int paid;
    public final int payments;
    public final int phase;
    public final int refunded;
    public final int remaining;
    public final int sourceSection;
    public final int time;
    public final int timer;

    private RazorFinanceLive576(int[] w) {
        this.phase = w[1];
        this.sourceSection = w[2];
        this.cost = w[3];
        this.time = w[4];
        this.timer = w[5];
        this.paid = w[6];
        this.credits = w[7];
        this.openingCredits = w[8];
        this.payments = w[9];
        this.manualFrameEquivalents = w[10];
        this.refunded = w[11];
        this.remaining = w[13];
        this.ledgerSpent = w[14];
        this.ledgerRefunded = w[15];
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x0134, code lost:
    
        if (r17[1] != 3) goto L113;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.ahsim.demulation.RazorFinanceLive576 parse(int[] r17, int r18, int r19) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.RazorFinanceLive576.parse(int[], int, int):com.ahsim.demulation.RazorFinanceLive576");
    }
}
