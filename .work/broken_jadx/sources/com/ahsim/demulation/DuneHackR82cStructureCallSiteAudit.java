package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82cRazorCombatAudit;
import com.ahsim.demulation.DuneHackR82cRazorStructureDamageAudit;
import com.ahsim.demulation.DuneHackR82cRazorStructureImpactAudit;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class DuneHackR82cStructureCallSiteAudit {
    private static final int CALL_LIMIT = 32;
    private static final int HP_OFFSET_FROM_ENTRY = 58;
    private static final int MAX_ROM_BYTES = 8388608;
    private static final int MIN_ROM_BYTES = 262144;
    private static final int START_SCAN = 1024;
    private static final byte[] ENTRY_BYTES = {72, -25, 16, 32, 89, -113, 36, 111, 0, 16, 32, 10, 103, 0, 0, -34, 74, 111, 0, 20};
    private static final byte[] HP_BRANCH = {48, 47, 0, 20, -111, 106, 0, 18, 74, 106, 0, 18, 110, 0, 0, -92, 66, 106, 0, 18};
    private static final byte[][] EXPECTED_SETUP = {new byte[]{66, 87, 63, 46, -1, -38, 47, 10}, new byte[]{66, 87, 63, 0, 47, 10}, new byte[]{66, 87, 63, 3, 47, 10}, new byte[]{66, 87, 63, 7, 47, 12}, new byte[]{62, -68, 0, 1, 63, 2, 47, 11}};
    private static final int[] RAZOR1_CALLS = {25470, 28986, 43122, 115928, 124910};
    private static final int[] RAZOR2_CALLS = {25746, 29270, 43424, 116172, 125170};

    public enum CallEncoding {
        JSR_ABSOLUTE_LONG,
        JSR_ABSOLUTE_SHORT,
        JSR_PC_RELATIVE_WORD
    }

    public enum Evidence {
        REFERENCE_CALL_SITES_VERIFIED,
        STRUCTURAL_CANDIDATE
    }

    public static final class CallSite {
        public final CallEncoding encoding;
        public final int instructionOffset;
        public final boolean observedStackSetup;
        public final int resolvedTarget;

        private CallSite(int offset, int target, CallEncoding how, boolean setup) {
            this.instructionOffset = offset;
            this.resolvedTarget = target;
            this.encoding = how;
            this.observedStackSetup = setup;
        }
    }

    public static final class Result {
        public final List<CallSite> directCalls;
        public final int entryOffset;
        public final Evidence evidence;
        public final int hpSubtractOffset;
        public final boolean indirectCallsEnumerated;
        public final boolean modGameplayReady;
        public final boolean playerOverridesEnabled;
        public final boolean projectileToStructurePathVerified;
        public final boolean wholeCallGraphVerified;

        private Result(Evidence level, int entry, List<CallSite> calls) {
            this.indirectCallsEnumerated = false;
            this.wholeCallGraphVerified = false;
            this.projectileToStructurePathVerified = false;
            this.modGameplayReady = false;
            this.playerOverridesEnabled = false;
            this.evidence = level;
            this.entryOffset = entry;
            this.hpSubtractOffset = entry + DuneHackR82cStructureCallSiteAudit.HP_OFFSET_FROM_ENTRY;
            this.directCalls = Collections.unmodifiableList(new ArrayList(calls));
        }
    }

    private DuneHackR82cStructureCallSiteAudit() {
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00af A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.ahsim.demulation.DuneHackR82cStructureCallSiteAudit.Result surveyCandidate(byte[] r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 203
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.DuneHackR82cStructureCallSiteAudit.surveyCandidate(byte[]):com.ahsim.demulation.DuneHackR82cStructureCallSiteAudit$Result");
    }

    public static Result inspectReference(byte[] rom, DuneHackR82cRazorCombatAudit.Result combat, DuneHackR82cRazorStructureDamageAudit.Result building, DuneHackR82cRazorStructureImpactAudit.Result impact) throws IOException {
        if (rom == null || combat == null || building == null || impact == null || !combat.referenceSample || combat.referenceVariant < 1 || combat.referenceVariant > 2 || impact.referenceVariant != combat.referenceVariant || !impact.romSha256.equals(combat.romSha256) || impact.hpSubtractOffset != building.subtractionInstructionOffset) {
            throw new IOException("Reference Razor 314 attestation missing or mismatched");
        }
        DuneHackR82cRazorStructureImpactAudit.Result rechecked = DuneHackR82cRazorStructureImpactAudit.inspect(rom, combat, building);
        if (rechecked.hpSubtractOffset != impact.hpSubtractOffset || rechecked.nonlethalBranchTarget != impact.nonlethalBranchTarget) {
            throw new IOException("Razor impact attestation mismatch");
        }
        Result provisional = surveyCandidate(rom);
        int[] offsets = combat.referenceVariant == 1 ? RAZOR1_CALLS : RAZOR2_CALLS;
        if (provisional.hpSubtractOffset != impact.hpSubtractOffset || provisional.directCalls.size() != offsets.length) {
            throw new IOException("Reference Razor 314 entry or caller count differs");
        }
        int i = 0;
        while (i < offsets.length) {
            CallSite call = provisional.directCalls.get(i);
            if (call.instructionOffset == offsets[i] && call.observedStackSetup) {
                if (call.encoding == (i == 2 ? CallEncoding.JSR_PC_RELATIVE_WORD : CallEncoding.JSR_ABSOLUTE_LONG)) {
                    byte[] setup = EXPECTED_SETUP[i];
                    if (matches(rom, call.instructionOffset - setup.length, setup)) {
                        i++;
                    } else {
                        throw new IOException("Reference Razor call arguments changed");
                    }
                }
            }
            throw new IOException("Reference Razor call-site bytes differ");
        }
        return new Result(Evidence.REFERENCE_CALL_SITES_VERIFIED, provisional.entryOffset, provisional.directCalls);
    }

    private static boolean hasKnownSetup(byte[] bytes, int p) {
        for (byte[] pattern : EXPECTED_SETUP) {
            if (matches(bytes, p - pattern.length, pattern)) {
                return true;
            }
        }
        return false;
    }

    private static boolean matches(byte[] b, int p, byte[] pattern) {
        if (p < 0 || p > b.length - pattern.length) {
            return false;
        }
        for (int i = 0; i < pattern.length; i++) {
            if (b[p + i] != pattern[i]) {
                return false;
            }
        }
        return true;
    }

    private static int word(byte[] b, int p) {
        return ((b[p] & 255) * 256) + (b[p + 1] & 255);
    }

    private static long dword(byte[] b, int p) {
        return (word(b, p) << 16) | word(b, p + 2);
    }
}
