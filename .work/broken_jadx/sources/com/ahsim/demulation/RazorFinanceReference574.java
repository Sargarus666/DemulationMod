package com.ahsim.demulation;

/* loaded from: classes2.dex */
public final class RazorFinanceReference574 {
    public static final int CANCELLED = 4;
    public static final int HELD = 2;
    public static final int IDLE = 0;
    public static final int READY = 3;
    public static final int RUNNING = 1;
    public final int cost;
    public final int openingCredits;
    public final int paid;
    public final int phase;
    public final int referenceSteps;
    public final int refunded;
    public final int remainder;
    public final int shadowCredits;
    public final int sourceSection;
    public final int time;
    public final int timer;

    private RazorFinanceReference574(int[] w) {
        this.phase = w[1];
        this.sourceSection = w[2];
        this.cost = w[3];
        this.time = w[4];
        this.timer = w[5];
        this.remainder = w[6];
        this.paid = w[7];
        this.shadowCredits = w[8];
        this.openingCredits = w[9];
        this.referenceSteps = w[10];
        this.refunded = w[11];
    }

    /* JADX WARN: Code restructure failed: missing block: B:77:0x00bb, code lost:
    
        if (r18[2] == 11) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x00ee, code lost:
    
        if (r18[5] == 0) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0100, code lost:
    
        if (r18[5] == 0) goto L92;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.ahsim.demulation.RazorFinanceReference574 parse(int[] r18, int r19, int r20) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.RazorFinanceReference574.parse(int[], int, int):com.ahsim.demulation.RazorFinanceReference574");
    }
}
