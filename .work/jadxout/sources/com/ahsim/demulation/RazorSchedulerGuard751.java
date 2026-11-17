package com.ahsim.demulation;

/* loaded from: classes2.dex */
final class RazorSchedulerGuard751 {
    private RazorSchedulerGuard751() {
    }

    static boolean validMovementDelta(int[] row, int previousOrderSteps, int previousExperimentalSteps, int previousMovedFrames, int unitCount) {
        boolean z;
        if (row == null || row.length != 16 || unitCount < 1 || previousOrderSteps < 0 || previousExperimentalSteps < 0) {
            return false;
        }
        if (previousMovedFrames < 0) {
            return false;
        }
        int moved = row[2];
        if (moved != 0 && moved != 1) {
            return false;
        }
        long orderDelta = row[7] - previousOrderSteps;
        long experimentalDelta = row[8] - previousExperimentalSteps;
        if (orderDelta >= 0) {
            z = false;
            if (orderDelta <= unitCount) {
                if (experimentalDelta != orderDelta) {
                    return z;
                }
                if ((moved == 0) != (orderDelta == 0)) {
                    return false;
                }
                return ((long) row[15]) == ((long) previousMovedFrames) + ((long) moved) && row[15] >= 0 && row[15] <= row[7];
            }
        } else {
            z = false;
        }
        return z;
    }

    static String diagnostic(int[] row, int oldOrder, int oldExperimental, int oldTick, int oldMovedFrames) {
        if (row == null) {
            return " (null packet; previousTick=" + oldTick + ")";
        }
        return row.length != 16 ? " (packetLength=" + row.length + "; previousTick=" + oldTick + ")" : " (tick=" + row[1] + ", previousTick=" + oldTick + ", movedFlag=" + row[2] + ", orderDelta=" + (row[7] - oldOrder) + ", experimentalDelta=" + (row[8] - oldExperimental) + ", movedFrames=" + row[15] + ", previousMovedFrames=" + oldMovedFrames + ", unitCount=" + row[14] + ")";
    }
}
