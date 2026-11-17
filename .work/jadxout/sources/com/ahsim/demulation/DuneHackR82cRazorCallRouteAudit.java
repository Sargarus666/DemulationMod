package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82cRazorCombatAudit;
import com.ahsim.demulation.DuneHackR82cStructureCallSiteAudit;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class DuneHackR82cRazorCallRouteAudit {
    private static final String[] REFERENCE_SHA256 = {DuneHackR82cRazorCombatAudit.RAZOR_ONE_SHA256, DuneHackR82cRazorCombatAudit.RAZOR_TWO_SHA256};
    private static final int[][] REFERENCE_SITES = {new int[]{25470, 28986, 43122, 115928, 124910}, new int[]{25746, 29270, 43424, 116172, 125170}};
    private static final String[] ANCHOR_HEX = {"42573f2effda2f0a", "488043f9000252cc1031000042573f002f0a", "342a005e48c29082e680524036006f0c42573f032f0a", "3e844eb805ba2848200c670e42573f072f0c", "b4836c08342a0012d4426004740034033ebc00013f022f0b"};
    private static final SourcePattern[] PATTERNS = {SourcePattern.FRAME_LOCAL_WORD, SourcePattern.TABLE_LOOKUP_BYTE, SourcePattern.HP_DELTA_SHIFTED, SourcePattern.REGISTER_WORD, SourcePattern.HP_RELATIVE_CAPPED};
    private static final String[] OBJECT_REGS = {"A2", "A2", "A2", "A4", "A3"};
    private static final String[] DAMAGE_INPUTS = {"-0x26(A6)", "byte[0x252CC + signed(type(A2))]", "D3 = ((HP(A2) - capped(A2)) >> 3) + 1, if positive", "D7", "D2 = min(2*HP(A2), HP(A3)>>1)"};
    private static final int[] MODES = {0, 0, 0, 0, 1};

    public enum OriginalCorrespondence {
        NOT_IDENTIFIED,
        SONIC_STRUCTURE_HIT,
        INFANTRY_ENTRY_WHEN_CAPTURE_FAILS
    }

    public enum SourcePattern {
        FRAME_LOCAL_WORD,
        TABLE_LOOKUP_BYTE,
        HP_DELTA_SHIFTED,
        REGISTER_WORD,
        HP_RELATIVE_CAPPED
    }

    public static final class Route {
        public final int argumentModeWord;
        public final int callOffset;
        public final String damageInput;
        public final boolean eventOriginProven;
        public final String objectRegister;
        public final int ordinal;
        public final OriginalCorrespondence originalCorrespondence;
        public final SourcePattern sourcePattern;

        private Route(int index, int position, int mode, SourcePattern source, String object, String damage) {
            this.eventOriginProven = false;
            this.ordinal = index + 1;
            this.callOffset = position;
            this.argumentModeWord = mode;
            this.sourcePattern = source;
            this.originalCorrespondence = DuneHackR82cRazorCallRouteAudit.iOriginalCorrespondence(index);
            this.objectRegister = object;
            this.damageInput = damage;
        }
    }

    public static final class Result {
        public final boolean entryReachabilityProven;
        public final boolean indirectRoutesEnumerated;
        public final boolean modGameplayReady;
        public final int modeOneCount;
        public final int modeZeroCount;
        public final boolean playerOverridesEnabled;
        public final List<Route> routes;

        private Result(List<Route> validated) {
            this.indirectRoutesEnumerated = false;
            this.entryReachabilityProven = false;
            this.modGameplayReady = false;
            this.playerOverridesEnabled = false;
            this.routes = Collections.unmodifiableList(new ArrayList(validated));
            int zeros = 0;
            int ones = 0;
            for (Route route : this.routes) {
                zeros = route.argumentModeWord == 0 ? zeros + 1 : zeros;
                if (route.argumentModeWord == 1) {
                    ones++;
                }
            }
            this.modeZeroCount = zeros;
            this.modeOneCount = ones;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static OriginalCorrespondence iOriginalCorrespondence(int routeIndex) {
        return routeIndex == 3 ? OriginalCorrespondence.SONIC_STRUCTURE_HIT : routeIndex == 4 ? OriginalCorrespondence.INFANTRY_ENTRY_WHEN_CAPTURE_FAILS : OriginalCorrespondence.NOT_IDENTIFIED;
    }

    private DuneHackR82cRazorCallRouteAudit() {
    }

    public static Result inspectReference(byte[] rom, DuneHackR82cRazorCombatAudit.Result combat, DuneHackR82cStructureCallSiteAudit.Result calls) throws IOException {
        if (rom == null || combat == null || calls == null || !combat.referenceSample || combat.referenceVariant < 1 || combat.referenceVariant > 2 || calls.evidence != DuneHackR82cStructureCallSiteAudit.Evidence.REFERENCE_CALL_SITES_VERIFIED || calls.directCalls.size() != 5) {
            throw new IOException("0.4.315 requires exact attested Razor caller route");
        }
        int variant = combat.referenceVariant - 1;
        if (!REFERENCE_SHA256[variant].equals(sha256(rom)) || !REFERENCE_SHA256[variant].equals(combat.romSha256)) {
            throw new IOException("0.4.315 ROM SHA mismatch");
        }
        List<Route> routes = new ArrayList<>();
        int i = 0;
        while (i < 5) {
            int site = REFERENCE_SITES[variant][i];
            DuneHackR82cStructureCallSiteAudit.CallSite direct = calls.directCalls.get(i);
            if (direct.instructionOffset != site || !direct.observedStackSetup || direct.resolvedTarget != calls.entryOffset) {
                throw new IOException("0.4.315 caller provenance mismatch at route " + (i + 1));
            }
            byte[] anchor = hexBytes(ANCHOR_HEX[i]);
            if (!match(rom, site - anchor.length, anchor)) {
                throw new IOException("0.4.315 argument source changed at route " + (i + 1));
            }
            int callSize = i == 2 ? 4 : 6;
            if (!match(rom, site + callSize, new byte[]{92, -113})) {
                throw new IOException("0.4.315 call cleanup changed at route " + (i + 1));
            }
            routes.add(new Route(i, site, MODES[i], PATTERNS[i], OBJECT_REGS[i], DAMAGE_INPUTS[i]));
            i++;
        }
        return new Result(routes);
    }

    private static byte[] hexBytes(String hex) {
        byte[] out = new byte[hex.length() / 2];
        for (int i = 0; i < out.length; i++) {
            out[i] = (byte) Integer.parseInt(hex.substring(i * 2, (i * 2) + 2), 16);
        }
        return out;
    }

    private static boolean match(byte[] rom, int position, byte[] pattern) {
        if (position < 0 || position > rom.length - pattern.length) {
            return false;
        }
        for (int i = 0; i < pattern.length; i++) {
            if (rom[position + i] != pattern[i]) {
                return false;
            }
        }
        return true;
    }

    private static String sha256(byte[] data) throws IOException {
        try {
            byte[] hash = MessageDigest.getInstance("SHA-256").digest(data);
            char[] digits = "0123456789abcdef".toCharArray();
            StringBuilder result = new StringBuilder(64);
            for (byte value : hash) {
                result.append(digits[(value >>> 4) & 15]);
                result.append(digits[value & 15]);
            }
            return result.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 unavailable", e);
        }
    }
}
