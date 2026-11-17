package com.ahsim.demulation;

import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class RazorUnitCreateCallGraphAudit {
    private static final int[][] DIRECT = {new int[]{41686, 42000, 75938, 76510, 76766, 78716, 113396}, new int[]{41988, 42302, 76218, 76790, 77046, 78996, 113642}};
    private static final int[][] RELATIVE = {new int[]{122384, 122546, 122614, 122838, 123062, 123802}, new int[]{122644, 122806, 122874, 123098, 123322, 124062}};
    private static final int[][] WRAPPER_CALLS = {new int[]{32872, 77084, 110912}, new int[]{33174, 77364, 111158}};

    public static final class Evidence {
        public final boolean allocationPrecedesVmContextInit;
        public final boolean completeFactorySpawnProven;
        public final boolean completeReinforcementSpawnProven;
        public final boolean completeScenarioSpawnProven;
        public final int contextFieldOffset;
        private final int[] direct;
        public final int directCallsites;
        public final boolean gameplayTickAuthorized;
        public final int pcRelativeCallsites;
        public final int positionFieldOffset;
        public final boolean queuedPathOverwritesActionField;
        private final int[] relative;
        public final int sourceTypeFieldOffset;
        public final boolean successfulCreationInitializesVmContext;
        public final boolean unconditionalUnitScriptEntryLoaded;
        public final int unitCreateRomAddress;
        public final int variant;
        public final int wrapperCallsites;
        public final int wrapperRomAddress;
        private final int[] wrappers;

        private Evidence(int v, int create, int wrapper) {
            this.directCallsites = 7;
            this.pcRelativeCallsites = 6;
            this.wrapperCallsites = 3;
            this.contextFieldOffset = 22;
            this.sourceTypeFieldOffset = 2;
            this.positionFieldOffset = 10;
            this.allocationPrecedesVmContextInit = true;
            this.successfulCreationInitializesVmContext = true;
            this.unconditionalUnitScriptEntryLoaded = false;
            this.queuedPathOverwritesActionField = true;
            this.completeScenarioSpawnProven = false;
            this.completeFactorySpawnProven = false;
            this.completeReinforcementSpawnProven = false;
            this.gameplayTickAuthorized = false;
            this.variant = v + 1;
            this.unitCreateRomAddress = create;
            this.wrapperRomAddress = wrapper;
            this.direct = (int[]) RazorUnitCreateCallGraphAudit.DIRECT[v].clone();
            this.relative = (int[]) RazorUnitCreateCallGraphAudit.RELATIVE[v].clone();
            this.wrappers = (int[]) RazorUnitCreateCallGraphAudit.WRAPPER_CALLS[v].clone();
        }

        public int[] copyDirectCallsites() {
            return (int[]) this.direct.clone();
        }

        public int[] copyPcRelativeCallsites() {
            return (int[]) this.relative.clone();
        }

        public int[] copyWrapperCallsites() {
            return (int[]) this.wrappers.clone();
        }
    }

    private RazorUnitCreateCallGraphAudit() {
    }

    private static int word(byte[] b, int off) throws IOException {
        if (off < 0 || off + 1 >= b.length) {
            throw new IOException("Razor ROM out of bounds");
        }
        return ((b[off] & 255) << 8) | (b[off + 1] & 255);
    }

    private static int longWord(byte[] b, int off) throws IOException {
        return (word(b, off) << 16) | word(b, off + 2);
    }

    private static void check(boolean ok, String reason) throws IOException {
        if (!ok) {
            throw new IOException("Razor Unit_Create call graph mismatch: " + reason);
        }
    }

    private static int[] scanCalls(byte[] rom, int opcode, int target) throws IOException {
        boolean match;
        int[] found = new int[128];
        int n = 0;
        for (int p = 0; p + 5 < Math.min(147456, rom.length); p += 2) {
            int op = word(rom, p);
            if (opcode == 20153) {
                match = op == 20153 && longWord(rom, p + 2) == target;
            } else {
                match = op == 20154 && (p + 2) + ((short) word(rom, p + 2)) == target;
            }
            if (match) {
                check(n < found.length, "too many candidate calls");
                found[n] = p;
                n++;
            }
        }
        return Arrays.copyOf(found, n);
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01d1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.ahsim.demulation.RazorUnitCreateCallGraphAudit.Evidence inspect(byte[] r16, java.lang.String r17) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 613
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.RazorUnitCreateCallGraphAudit.inspect(byte[], java.lang.String):com.ahsim.demulation.RazorUnitCreateCallGraphAudit$Evidence");
    }
}
