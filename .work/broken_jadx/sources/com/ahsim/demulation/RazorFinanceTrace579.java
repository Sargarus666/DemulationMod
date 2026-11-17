package com.ahsim.demulation;

/* loaded from: classes2.dex */
public final class RazorFinanceTrace579 {
    public static final int BUILDING_TYPE_OFFSET = 28544;
    public static final int PAID_OFFSET = 28552;
    public static final int REMAINING_OFFSET = 28548;
    public static final int STATE_OFFSET = 28554;
    public final int buildingType = 12;
    public final int paidTotal;
    public final int paymentIndex;
    public final int productionState;
    public final int remainingFixed88;

    private RazorFinanceTrace579(int index) {
        this.paymentIndex = index;
        this.remainingFixed88 = (20 - index) * 256;
        this.paidTotal = index * 50;
        this.productionState = index == 20 ? 2 : 1;
    }

    public static RazorFinanceTrace579 expectedAfterManualPayment(RazorFinanceLive576 f) {
        if (f == null) {
            return null;
        }
        if (f.payments < 1 || f.payments > 20) {
            return null;
        }
        if ((f.phase != 1 && f.phase != 3) || f.paid != f.payments * 50 || f.remaining != 1000 - f.paid) {
            return null;
        }
        if ((f.phase == 3) != (f.payments == 20)) {
            return null;
        }
        return new RazorFinanceTrace579(f.payments);
    }
}
