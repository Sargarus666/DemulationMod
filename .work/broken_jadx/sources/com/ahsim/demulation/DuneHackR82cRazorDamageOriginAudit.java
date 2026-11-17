package com.ahsim.demulation;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class DuneHackR82cRazorDamageOriginAudit {
    private static final Context[] CONTEXTS = {Context.EXPLOSION_AREA_STRUCTURE_IMPACT, Context.PERIODIC_BUILDING_DEGRADATION, Context.POWER_ADJUSTED_MAX_HP_REDUCTION, Context.SONIC_STRUCTURE_HIT, Context.INFANTRY_FAILED_CAPTURE};
    private static final int[][] ANCHOR_DISPLACEMENTS = {new int[]{-302, -270, -36, -8}, new int[]{-48, -32, -16, -6}, new int[]{-64, -36, -16, -6}};
    private static final String[][] ANCHOR_HEX = {new String[]{"0c450006661a", "0c45000b6604", "30280010e240", "42573f2effda2f0a"}, new String[]{"4a38c7266732", "0010e240b06a", "43f9000252cc", "42573f002f0a"}, new String[]{"0010e240b06a", "005eb06a0012", "9082e6805240", "42573f032f0a"}};
    private static final int[][][] CALLING_WINDOWS = {new int[][]{new int[]{25142, 25628}, new int[]{28672, 30562}, new int[]{42928, 43144}}, new int[][]{new int[]{25418, 25904}, new int[]{28956, 30846}, new int[]{43230, 43446}}};

    public enum Context {
        EXPLOSION_AREA_STRUCTURE_IMPACT,
        PERIODIC_BUILDING_DEGRADATION,
        POWER_ADJUSTED_MAX_HP_REDUCTION,
        SONIC_STRUCTURE_HIT,
        INFANTRY_FAILED_CAPTURE
    }

    public static final class ObservedRoute {
        public final int callOffset;
        public final Context context;
        public final boolean contextStaticallyAttested;
        public final int ordinal;
        public final boolean runtimeExecutionProven;

        private ObservedRoute(int number, int offset, Context kind) {
            this.runtimeExecutionProven = false;
            this.ordinal = number;
            this.callOffset = offset;
            this.context = kind;
            this.contextStaticallyAttested = true;
        }
    }

    public static final class Result {
        public final boolean allIndirectCallsEnumerated;
        public final boolean modGameplayReady;
        public final boolean playerOverridesEnabled;
        public final List<Integer> possibleIndirectOpcodeOffsets;
        public final List<ObservedRoute> routes;
        public final boolean weaponOriginOfExplosionProven;
        public final boolean wholeCallGraphVerified;

        private Result(List<ObservedRoute> checked, List<Integer> potential) {
            this.allIndirectCallsEnumerated = false;
            this.wholeCallGraphVerified = false;
            this.weaponOriginOfExplosionProven = false;
            this.modGameplayReady = false;
            this.playerOverridesEnabled = false;
            this.routes = Collections.unmodifiableList(new ArrayList(checked));
            this.possibleIndirectOpcodeOffsets = Collections.unmodifiableList(new ArrayList(potential));
        }
    }

    private DuneHackR82cRazorDamageOriginAudit() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00b3, code lost:
    
        throw new java.io.IOException("0.4.316 previous evidence mismatch");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.ahsim.demulation.DuneHackR82cRazorDamageOriginAudit.Result inspectReference(byte[] r18, com.ahsim.demulation.DuneHackR82cRazorCombatAudit.Result r19, com.ahsim.demulation.DuneHackR82cStructureCallSiteAudit.Result r20, com.ahsim.demulation.DuneHackR82cRazorCallRouteAudit.Result r21) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.DuneHackR82cRazorDamageOriginAudit.inspectReference(byte[], com.ahsim.demulation.DuneHackR82cRazorCombatAudit$Result, com.ahsim.demulation.DuneHackR82cStructureCallSiteAudit$Result, com.ahsim.demulation.DuneHackR82cRazorCallRouteAudit$Result):com.ahsim.demulation.DuneHackR82cRazorDamageOriginAudit$Result");
    }

    private static boolean has(byte[] data, int p, String hex) {
        if (p < 0 || (hex.length() / 2) + p > data.length) {
            return false;
        }
        for (int k = 0; k < hex.length(); k += 2) {
            int val = Integer.parseInt(hex.substring(k, k + 2), 16);
            if ((data[(k / 2) + p] & 255) != val) {
                return false;
            }
        }
        return true;
    }
}
