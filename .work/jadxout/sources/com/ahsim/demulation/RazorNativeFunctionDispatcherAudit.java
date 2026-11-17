package com.ahsim.demulation;

import com.ahsim.demulation.RazorEmcTickDependencyAudit;
import com.ahsim.demulation.RazorNativeFunctionAbiAudit;
import java.io.IOException;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class RazorNativeFunctionDispatcherAudit {
    public static final int BUILD = 0;
    public static final int TEAM = 1;
    public static final int UNIT = 2;
    public static final int[] RAM_DESCRIPTOR_ADDRESSES = {-15924, -15900, -15952};
    private static final int[] DISPATCH = {53854, 54170};
    private static final int[] INDIRECT_JSR = {53876, 54192};
    private static final int[][] TABLE = {new int[]{132464, 135664, 135724}, new int[]{132736, 135936, 135996}};
    private static final int[][] INITIALIZER_POINTER_OPERANDS = {new int[]{52946, 52984, 52908}, new int[]{53262, 53300, 53224}};
    private static final int[][] EXAMPLE_NATIVE_0 = {new int[]{44480, 44480, 2088}, new int[]{44788, 44788, 2056}};
    private static final int[] TEAM_14 = {103790, 104030};
    private static final byte[] TEAM_14_BODY = hex("48e710202278c8943429001043f900ff0dac3638c226044300196b3e7202701003290005662cb02900026626b429000866203469005a082a0007000766142078c8942169000a0014317c000200187004600a43e9008c51cbffc870004cdf04084e75");
    private static final byte[] DISPATCH_BYTES = {32, 106, 0, 4, 32, 104, 0, 16, 2, 65, 0, -1, -46, 65, -46, 65, 32, 112, 16, 0, 47, 10, 78, -112, 88, -113, 53, 64, 0, 8};

    private static byte[] hex(String s) {
        byte[] out = new byte[s.length() / 2];
        for (int i = 0; i < out.length; i++) {
            out[i] = (byte) Integer.parseInt(s.substring(i * 2, (i * 2) + 2), 16);
        }
        return out;
    }

    public static final class Team14UnitFixture {
        public final int flags5;
        public final int house8;
        public final int pointedFlags7;
        public final int position0A;
        public final boolean referenceResolved;
        public final int type2;

        public Team14UnitFixture(int flags5, int type2, int house8, boolean referenceResolved, int pointedFlags7, int position0A) {
            this.flags5 = flags5 & 255;
            this.type2 = type2 & 255;
            this.house8 = house8 & 255;
            this.referenceResolved = referenceResolved;
            this.pointedFlags7 = pointedFlags7 & 255;
            this.position0A = position0A;
        }
    }

    public static final class Team14Decision {
        public final int matchedUnit;
        public final int newTeamMode;
        public final int returnD0;
        public final int targetPosition;
        public final boolean writesTeamFields;

        private Team14Decision(int ret, int idx, int pos, int mode) {
            this.returnD0 = ret;
            this.matchedUnit = idx;
            this.targetPosition = pos;
            this.newTeamMode = mode;
            this.writesTeamFields = idx >= 0;
        }
    }

    public static Team14Decision evaluateTeam14Guards(int teamWord10, int ramC226, Team14UnitFixture[] units) throws IOException {
        if (units == null) {
            throw new IOException("Missing read-only TEAM14 fixtures");
        }
        if (ramC226 < 0 || ramC226 > 32767) {
            throw new IOException("Invalid signed TEAM14 loop word");
        }
        int scans = Math.max(0, ramC226 - 24);
        if (scans > units.length) {
            throw new IOException("Missing TEAM14 unit record(s)");
        }
        for (int i = 0; i < scans; i++) {
            Team14UnitFixture u = units[i];
            if (u == null) {
                throw new IOException("Incomplete TEAM14 record");
            }
            if ((u.flags5 & 4) == 0 && u.type2 == 16 && u.house8 == (teamWord10 & 255)) {
                if (!u.referenceResolved) {
                    throw new IOException("Unresolved MOVEA.W +0x5A indirect RAM read");
                }
                if ((u.pointedFlags7 & 128) == 0) {
                    return new Team14Decision(4, i, u.position0A, 2);
                }
            }
        }
        return new Team14Decision(0, -1, 0, 0);
    }

    private RazorNativeFunctionDispatcherAudit() {
    }

    private static int u16(byte[] b, int p) {
        return ((b[p] & 255) << 8) | (b[p + 1] & 255);
    }

    private static int u32(byte[] b, int p) {
        return (u16(b, p) << 16) | u16(b, p + 2);
    }

    private static void match(byte[] rom, int at, byte[] wanted, String reason) throws IOException {
        if (at < 0 || at > rom.length - wanted.length) {
            throw new IOException(reason + ": bounds");
        }
        for (int i = 0; i < wanted.length; i++) {
            if (rom[at + i] != wanted[i]) {
                throw new IOException(reason + ": opcode at +" + i);
            }
        }
    }

    public static final class Result {
        public final boolean cNativeAbiVerified;
        public final int dispatcherAddress;
        public final boolean gameplayTickAuthorized;
        public final int indirectJsrAddress;
        public final int[] nativeTables;
        public final boolean originalHandlerSemanticsVerified;
        public final boolean originalPointerRoutingVerified;
        public final boolean originalTickSchedulerVerified;
        public final int[] runtimeDescriptorAddresses;
        public final boolean team14CppReplacementAuthorized;
        public final boolean team14GuardAndEffectOpcodesVerified;
        public final int[] usedFunctionIds;
        public final int variant;

        private Result(int v, int[] tables, int[] counts) {
            this.originalPointerRoutingVerified = true;
            this.originalHandlerSemanticsVerified = false;
            this.team14GuardAndEffectOpcodesVerified = true;
            this.team14CppReplacementAuthorized = false;
            this.cNativeAbiVerified = false;
            this.originalTickSchedulerVerified = false;
            this.gameplayTickAuthorized = false;
            this.variant = v;
            this.dispatcherAddress = RazorNativeFunctionDispatcherAudit.DISPATCH[v - 1];
            this.indirectJsrAddress = RazorNativeFunctionDispatcherAudit.INDIRECT_JSR[v - 1];
            this.nativeTables = (int[]) tables.clone();
            this.runtimeDescriptorAddresses = (int[]) RazorNativeFunctionDispatcherAudit.RAM_DESCRIPTOR_ADDRESSES.clone();
            this.usedFunctionIds = (int[]) counts.clone();
        }

        public int pointerTable(int bank) {
            if (bank < 0 || bank > 2) {
                throw new IllegalArgumentException("Invalid bank");
            }
            return this.nativeTables[bank];
        }

        public int activeIds(int bank) {
            if (bank < 0 || bank > 2) {
                throw new IllegalArgumentException("Invalid bank");
            }
            return this.usedFunctionIds[bank];
        }
    }

    public static Result inspect(byte[] bArr, RazorEmcTickDependencyAudit.Evidence evidence, RazorNativeFunctionAbiAudit.Result result) throws IOException {
        boolean z;
        int i;
        if (bArr == null || evidence == null || result == null) {
            throw new IOException("Missing original evidence");
        }
        RazorNativeFunctionAbiAudit.Result inspect = RazorNativeFunctionAbiAudit.inspect(bArr, evidence);
        if (result.variant == inspect.variant && result.pointerTableAddress == inspect.pointerTableAddress && result.executablePointerLoadsVerified) {
            Objects.requireNonNull(result);
            int i2 = inspect.variant - 1;
            match(bArr, DISPATCH[i2], DISPATCH_BYTES, "Original FUNCTION dispatcher");
            int[] iArr = new int[3];
            boolean z2 = false;
            int i3 = 2;
            RazorEmcTickDependencyAudit.Bank[] bankArr = {evidence.build, evidence.team, evidence.unit};
            int i4 = 0;
            for (int i5 = 3; i4 < i5; i5 = 3) {
                int i6 = INITIALIZER_POINTER_OPERANDS[i2][i4];
                if (i6 < i3 || i6 + 4 > bArr.length || u16(bArr, i6 - 2) != 8956 || u32(bArr, i6) != TABLE[i2][i4]) {
                    throw new IOException("Original FUNCTION table initialization not proven: bank " + i4);
                }
                int i7 = 0;
                while (i7 < 64) {
                    if (bankArr[i4].countNativeId(i7) <= 0) {
                        z = z2;
                        i = i3;
                    } else {
                        iArr[i4] = iArr[i4] + 1;
                        int i8 = TABLE[i2][i4] + (i7 * 4);
                        z = z2;
                        if (i8 + 4 > bArr.length) {
                            throw new IOException("Native pointer out of table bounds");
                        }
                        int u32 = u32(bArr, i8);
                        if ((u32 & 1) == 0 && u32 >= 512 && u32 <= bArr.length - 8 && u16(bArr, u32) != 0) {
                            i = i3;
                            if (u16(bArr, u32) != 18172 || u16(bArr, u32 + 2) != 9984) {
                                if (i7 == 0 && u32 != EXAMPLE_NATIVE_0[i2][i4]) {
                                    throw new IOException("Original FUNCTION 0 target mismatch");
                                }
                                if (i4 == 1 && i7 == 14 && u32 != TEAM_14[i2]) {
                                    throw new IOException("TEAM native 14 target mismatch");
                                }
                            }
                        }
                        throw new IOException("Invalid/blocked original native target " + i4 + ":" + i7);
                    }
                    i7++;
                    z2 = z;
                    i3 = i;
                }
                i4++;
            }
            int i9 = i3;
            if (iArr[z2 ? 1 : 0] == 14 && iArr[1] == 13 && iArr[i9] == 53) {
                match(bArr, TEAM_14[i2], TEAM_14_BODY, "TEAM14 original complete 98-byte guard graph");
                return new Result(i2 + 1, TABLE[i2], iArr);
            }
            throw new IOException("Original native ID inventory mismatch");
        }
        throw new IOException("Razor source/previous attestation changed");
    }
}
