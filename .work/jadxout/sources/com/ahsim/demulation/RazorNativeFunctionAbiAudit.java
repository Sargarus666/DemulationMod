package com.ahsim.demulation;

import com.ahsim.demulation.RazorEmcTickDependencyAudit;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class RazorNativeFunctionAbiAudit {
    public static final int BANK_BUILD = 0;
    public static final int BANK_TEAM = 1;
    public static final int BANK_UNIT = 2;
    private static final int[][] CALL_SITES = {new int[]{52922, 52960, 52884}, new int[]{53238, 53276, 53200}};
    private static final int[][] FOLLOWING_LEA_DISPLACEMENT = {new int[]{66, 40, 82}, new int[]{66, 40, 82}};
    public static final int TABLE_ADDRESS = 541164;

    private RazorNativeFunctionAbiAudit() {
    }

    private static int u16(byte[] b, int p) {
        return ((b[p] & 255) << 8) | (b[p + 1] & 255);
    }

    private static int u32(byte[] b, int p) {
        return (u16(b, p) << 16) | u16(b, p + 2);
    }

    public static final class Result {
        public final int[] codeOperandSites;
        public final int[] emcBankOffsets;
        public final boolean executablePointerLoadsVerified;
        public final boolean gameplayTickAuthorized;
        public final boolean nativeFunctionAbiVerified;
        public final int pointerTableAddress;
        public final boolean schedulerCadenceVerified;
        public final int variant;

        private Result(int v, int[] offsets, int[] sites) {
            this.nativeFunctionAbiVerified = false;
            this.schedulerCadenceVerified = false;
            this.gameplayTickAuthorized = false;
            this.variant = v;
            this.pointerTableAddress = RazorNativeFunctionAbiAudit.TABLE_ADDRESS;
            this.emcBankOffsets = (int[]) offsets.clone();
            this.codeOperandSites = (int[]) sites.clone();
            this.executablePointerLoadsVerified = true;
        }

        public int bankOffset(int bank) {
            if (bank < 0 || bank > 2) {
                throw new IllegalArgumentException("Invalid bank");
            }
            return this.emcBankOffsets[bank];
        }

        public int referenceOperandAddress(int bank) {
            if (bank < 0 || bank > 2) {
                throw new IllegalArgumentException("Invalid bank");
            }
            return this.codeOperandSites[bank];
        }
    }

    public static Result inspect(byte[] rom, RazorEmcTickDependencyAudit.Evidence earlier) throws IOException {
        if (rom == null || earlier == null) {
            throw new IOException("Missing Razor ROM or EMC evidence");
        }
        RazorEmcTickDependencyAudit.Evidence fresh = RazorEmcTickDependencyAudit.inspect(rom, earlier.sourceSha256);
        if (fresh.romVariant != earlier.romVariant) {
            throw new IOException("Razor ROM variant changed during audit");
        }
        int v = fresh.romVariant - 1;
        int[] banks = {fresh.build.romOffset, fresh.team.romOffset, fresh.unit.romOffset};
        if (541176 > rom.length) {
            throw new IOException("EMC table outside ROM");
        }
        for (int b = 0; b < 3; b++) {
            int slot = (b * 4) + TABLE_ADDRESS;
            if (u32(rom, slot) != banks[b]) {
                throw new IOException("Razor EMC pointer table mismatch at bank " + b);
            }
            int site = CALL_SITES[v][b];
            if (site < 2 || site + 8 > rom.length || u16(rom, site - 2) != 8313 || u32(rom, site) != slot || u16(rom, site + 4) != 17896 || u16(rom, site + 6) != FOLLOWING_LEA_DISPLACEMENT[v][b]) {
                throw new IOException("Razor executable EMC reference mismatch at bank " + b);
            }
        }
        return new Result(fresh.romVariant, banks, CALL_SITES[v]);
    }
}
