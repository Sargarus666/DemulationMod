package com.ahsim.demulation;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class RazorF40ObjectFlagShadowGate {
    public static final int FLAG_BYTE_OFFSET = 9;
    public static final int GENESIS_UNIT_BASE = 16715180;
    public static final int GENESIS_UNIT_COUNT = 102;
    public static final int GENESIS_UNIT_STRIDE = 140;

    private RazorF40ObjectFlagShadowGate() {
    }

    public static final class Verdict {
        public final boolean androidRuntimeFieldMapped;
        public final boolean genesisSlotCandidate;
        public final boolean nativeWritesAllowed;
        public final boolean observedReadbackMatches;
        public final boolean razorGameTicksEnabled;
        public final int simulatedAfter;
        public final String status;

        private Verdict(String status, boolean match, boolean candidate, int value) {
            this.androidRuntimeFieldMapped = false;
            this.nativeWritesAllowed = false;
            this.razorGameTicksEnabled = false;
            this.status = status;
            this.observedReadbackMatches = match;
            this.genesisSlotCandidate = candidate;
            this.simulatedAfter = value;
        }
    }

    public static int candidateSlot(int ptr) {
        if (ptr < 16715180 || ptr >= 16729460) {
            return -1;
        }
        int off = ptr - 16715180;
        if (off % 140 == 0) {
            return off / 140;
        }
        return -1;
    }

    public static Verdict compareSynthetic(int genesisA2, int bit, int beforeObserved, int afterObserved, byte[] syntheticFlags) {
        int slot = candidateSlot(genesisA2);
        if (slot < 0 || bit < 0 || bit > 7 || beforeObserved < 0 || beforeObserved > 255 || afterObserved < 0 || afterObserved > 255 || syntheticFlags == null || syntheticFlags.length != 102) {
            return new Verdict("REJECTED_INVALID_OR_UNMAPPED_POINTER", false, false, -1);
        }
        byte[] isolated = Arrays.copyOf(syntheticFlags, syntheticFlags.length);
        int original = isolated[slot] & 255;
        if (original == beforeObserved) {
            isolated[slot] = (byte) ((1 << bit) | original);
            int result = 255 & isolated[slot];
            if (result != afterObserved) {
                return new Verdict("REJECTED_ORIGINAL_READBACK_MISMATCH", false, true, result);
            }
            return new Verdict("SYNTHETIC_READBACK_ONLY_ANDROID_ABI_UNAVAILABLE", true, true, result);
        }
        return new Verdict("REJECTED_SYNTHETIC_PRESTATE_MISMATCH", false, true, original);
    }

    public static Verdict checkCurrentAndroidSource(int genesisA2, String evidenceKind) {
        if (candidateSlot(genesisA2) < 0) {
            return new Verdict("REJECTED_NOT_GENESIS_UNIT_BASE", false, false, -1);
        }
        if (evidenceKind == null || (!evidenceKind.equals("razor403") && !evidenceKind.equals("razor405") && !evidenceKind.equals("razor411"))) {
            return new Verdict("REJECTED_UNKNOWN_ANDROID_SOURCE", false, true, -1);
        }
        return new Verdict("BLOCKED_NO_LIVE_ANDROID_UNIT_FLAG_ABI", false, true, -1);
    }
}
