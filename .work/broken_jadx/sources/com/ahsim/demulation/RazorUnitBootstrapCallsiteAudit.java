package com.ahsim.demulation;

import com.ahsim.demulation.RazorUnitScriptDispatchAudit;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class RazorUnitBootstrapCallsiteAudit {
    private static final int[][] ACTION_CALLS = {new int[]{25806, 25928, 25964, 26032, 31492, 36186, 52244, 76636, 76670, 76872, 77516, 78526, 96850, 96878, 103248, 104352, 104416, 104822, 104970}, new int[]{26082, 26204, 26240, 26308, 31776, 36488, 52560, 76916, 76950, 77152, 77796, 78806, 97130, 97158, 103488, 104592, 104656, 105062, 105210}};

    public static final class Evidence {
        private final int[] actionCalls;
        public final boolean factoryCreationPathVerified;
        public final boolean gameTickAuthorized;
        public final boolean initialCreationPathVerified;
        public final int initialUnits;
        public final int mappedSourceTypes;
        public final boolean reinforcementCreationPathVerified;
        public final int reinforcements;
        public final int remappedInitialUnits;
        public final int remappedReinforcements;
        public final int sourceActionCallsites;
        public final int sourceDirectScriptLoadCallsites;
        public final int variant;

        private Evidence(RazorUnitScriptDispatchAudit.Evidence source, int[] calls) {
            this.initialCreationPathVerified = false;
            this.factoryCreationPathVerified = false;
            this.reinforcementCreationPathVerified = false;
            this.gameTickAuthorized = false;
            this.variant = source.variant;
            this.actionCalls = (int[]) calls.clone();
            this.sourceActionCallsites = calls.length;
            this.sourceDirectScriptLoadCallsites = 1;
            this.mappedSourceTypes = 32;
            this.initialUnits = source.initialUnits;
            this.reinforcements = source.reinforcements;
            this.remappedInitialUnits = source.remappedInitialUnits;
            this.remappedReinforcements = source.remappedReinforcements;
        }

        public int[] copyActionCalls() {
            return (int[]) this.actionCalls.clone();
        }
    }

    private RazorUnitBootstrapCallsiteAudit() {
    }

    private static int word(byte[] bytes, int pos) throws IOException {
        if (pos < 0 || pos + 1 >= bytes.length) {
            throw new IOException("ROM read outside bounds");
        }
        return ((bytes[pos] & 255) << 8) | (bytes[pos + 1] & 255);
    }

    private static int longWord(byte[] b, int p) throws IOException {
        return (word(b, p) << 16) | word(b, p + 2);
    }

    private static void verify(boolean ok, String label) throws IOException {
        if (!ok) {
            throw new IOException("Razor 68000 callsite mismatch: " + label);
        }
    }

    private static int scanJsrs(byte[] rom, int target, int[] found) throws IOException {
        int count = 0;
        for (int p = 0; p + 5 < rom.length; p += 2) {
            if (word(rom, p) == 20153 && longWord(rom, p + 2) == target) {
                verify(count < found.length, "unexpected JSR address");
                found[count] = p;
                count++;
            }
        }
        return count;
    }

    public static Evidence inspect(byte[] rom, String sha256) throws IOException {
        RazorUnitScriptDispatchAudit.Evidence original = RazorUnitScriptDispatchAudit.inspect(rom, sha256);
        int v = original.variant - 1;
        verify(v >= 0 && v < 2, "variant");
        int loader = v == 0 ? 53234 : 53550;
        int action = v == 0 ? 106172 : 106412;
        int direct = v == 0 ? 106390 : 106630;
        int[] calls = new int[64];
        int n = scanJsrs(rom, action, calls);
        verify(n == ACTION_CALLS[v].length, "Unit_SetAction callers count");
        verify(Arrays.equals(Arrays.copyOf(calls, n), ACTION_CALLS[v]), "Unit_SetAction caller positions");
        verify(word(rom, action) == 18663 && word(rom, action + 2) == 4144, "action procedure prologue");
        verify(scanJsrs(rom, loader, calls) == 1 && calls[0] == direct, "single direct Script_Load call");
        verify(word(rom, direct + (-12)) == 4138 && word(rom, direct + (-10)) == 2, "read Unit+0x02 source type");
        verify(word(rom, direct + (-8)) == 18560 && word(rom, direct + (-6)) == 16128, "extend and push source type");
        verify(word(rom, direct + (-4)) == 18538 && word(rom, direct + (-2)) == 22, "script context in Unit+0x16");
        return new Evidence(original, ACTION_CALLS[v]);
    }
}
