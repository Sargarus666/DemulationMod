package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82Probe;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public final class DuneHackR82AsmHookProbe {

    /* renamed from: X */
    private static final int f1X = -1;
    private static final int[] BUILD_DAMAGE = {40690, 40992, 40808, 41110};
    private static final int[] UNIT_DAMAGE = {117664, 117908, 117872, 118116};
    private static final int[] DEATH = {110594, 110840, 110802, 111048};
    private static final int[] CANCEL = {15550, 15826, 15660, 15936};
    private static final int[] WIN_TEXT = {92238, 92518, 92438, 92718};
    private static final int[] REINFORCEMENT = {78492, 78772, 78684, 78964};
    private static final int[] SPICE_STORAGE = {79450, 79730, 79642, 79922};
    private static final int[] HARVEST_SPEED = {113840, 114086, 114048, 114294};
    private static final int[] CY_FIX_A = {114680, 114924, 114888, 115132};
    private static final int[] CY_FIX_B = {114986, 115230, 115194, 115438};
    private static final int[] PROJECTILE = {115924, 116168, 116132, 116376};
    private static final int[] XMOD_SCENE = {50422, 50734, 50572, 50884};
    private static final int[] XMOD_DRIVE = {63494, 63774, 63648, 63928};
    private static final int[] ALLY_FLAGS = {35176, 35478, 35294, 35596};
    private static final int[] JMP = {78, 249};
    private static final int[] JSR = {78, 185};
    private static final int[] ANDI_B_D0 = {2, 0};
    private static final int[] SPICE_CMPI_LONG = {12, 169, 0, 0, -1, -1, 0, 18};
    private static final int[] BRA_BYTE = {96};

    public enum Evidence {
        OPCODE_AT_DOCUMENTED_OFFSET,
        WEAK_OPCODE,
        NOT_OBSERVED,
        AMBIGUOUS
    }

    public enum SourceGate {
        ALWAYS,
        REINFORCEMENT,
        PROJECTILES,
        ALLY,
        X_MOD
    }

    public static final class Hook {
        public final Evidence evidence;
        public final SourceGate gate;

        /* renamed from: id */
        public final String f2id;
        public final int matchedAddress;
        public final int matchedLayout;
        public final int matchingVariants;
        public final String source;

        private Hook(String id, String source, SourceGate gate, Evidence evidence, int layout, int address, int matches) {
            this.f2id = id;
            this.source = source;
            this.gate = gate;
            this.evidence = evidence;
            this.matchedLayout = layout;
            this.matchedAddress = address;
            this.matchingVariants = matches;
        }
    }

    public static final class Result {
        public final boolean asmSemanticsVerified;
        public final boolean gameplayReady;
        public final boolean hookTargetsVerified;
        public final List<Hook> hooks;
        public final int opcodeObservations;
        public final boolean sourceSettingsVerified;
        public final String sourceSha256;
        public final int unresolvedHooks;

        private Result(String sha, List<Hook> values, int seen, int unresolved) {
            this.sourceSettingsVerified = false;
            this.hookTargetsVerified = false;
            this.asmSemanticsVerified = false;
            this.gameplayReady = false;
            this.sourceSha256 = sha;
            this.hooks = Collections.unmodifiableList(values);
            this.opcodeObservations = seen;
            this.unresolvedHooks = unresolved;
        }

        public Hook find(String id) {
            for (Hook h : this.hooks) {
                if (h.f2id.equals(id)) {
                    return h;
                }
            }
            throw new IllegalArgumentException("Unknown hook: " + id);
        }
    }

    private DuneHackR82AsmHookProbe() {
    }

    private static boolean matches(byte[] rom, int offset, int[] signature) {
        if (offset < 0 || offset > rom.length - signature.length) {
            return false;
        }
        for (int i = 0; i < signature.length; i++) {
            if (signature[i] >= 0 && (rom[offset + i] & 255) != signature[i]) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Incorrect condition in loop: B:3:0x0008 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void collect(java.util.List<com.ahsim.demulation.DuneHackR82AsmHookProbe.Hook> r16, byte[] r17, java.lang.String r18, java.lang.String r19, com.ahsim.demulation.DuneHackR82AsmHookProbe.SourceGate r20, boolean r21, int[] r22, int[] r23) {
        /*
            r0 = r22
            r1 = 0
            r2 = -1
            r3 = -1
            r4 = 0
            r12 = r1
        L7:
            int r1 = r0.length
            if (r4 >= r1) goto L20
            r1 = r0[r4]
            r14 = r17
            r15 = r23
            boolean r1 = matches(r14, r1, r15)
            if (r1 == 0) goto L1d
            int r12 = r12 + 1
            r1 = r4
            r2 = r0[r4]
            r3 = r2
            r2 = r1
        L1d:
            int r4 = r4 + 1
            goto L7
        L20:
            r14 = r17
            r15 = r23
            r1 = 1
            if (r12 != 0) goto L2b
            com.ahsim.demulation.DuneHackR82AsmHookProbe$Evidence r4 = com.ahsim.demulation.DuneHackR82AsmHookProbe.Evidence.NOT_OBSERVED
            r9 = r4
            goto L39
        L2b:
            if (r12 <= r1) goto L31
            com.ahsim.demulation.DuneHackR82AsmHookProbe$Evidence r4 = com.ahsim.demulation.DuneHackR82AsmHookProbe.Evidence.AMBIGUOUS
            r9 = r4
            goto L39
        L31:
            if (r21 == 0) goto L36
            com.ahsim.demulation.DuneHackR82AsmHookProbe$Evidence r4 = com.ahsim.demulation.DuneHackR82AsmHookProbe.Evidence.WEAK_OPCODE
            goto L38
        L36:
            com.ahsim.demulation.DuneHackR82AsmHookProbe$Evidence r4 = com.ahsim.demulation.DuneHackR82AsmHookProbe.Evidence.OPCODE_AT_DOCUMENTED_OFFSET
        L38:
            r9 = r4
        L39:
            com.ahsim.demulation.DuneHackR82AsmHookProbe$Hook r5 = new com.ahsim.demulation.DuneHackR82AsmHookProbe$Hook
            r4 = -1
            if (r12 != r1) goto L41
            r10 = r2
            goto L42
        L41:
            r10 = r4
        L42:
            if (r12 != r1) goto L46
            r11 = r3
            goto L47
        L46:
            r11 = r4
        L47:
            r13 = 0
            r6 = r18
            r7 = r19
            r8 = r20
            r5.<init>(r6, r7, r8, r9, r10, r11, r12)
            r1 = r16
            r1.add(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.DuneHackR82AsmHookProbe.collect(java.util.List, byte[], java.lang.String, java.lang.String, com.ahsim.demulation.DuneHackR82AsmHookProbe$SourceGate, boolean, int[], int[]):void");
    }

    private static String sha256(byte[] rom) throws IOException {
        try {
            byte[] b = MessageDigest.getInstance("SHA-256").digest(rom);
            char[] hex = "0123456789abcdef".toCharArray();
            char[] chars = new char[64];
            for (int i = 0; i < b.length; i++) {
                chars[i * 2] = hex[(b[i] >>> 4) & 15];
                chars[(i * 2) + 1] = hex[b[i] & 15];
            }
            return new String(chars);
        } catch (NoSuchAlgorithmException ex) {
            throw new IOException("SHA-256 missing", ex);
        }
    }

    public static Result inspect(byte[] rom, DuneHackR82Probe.Result family) throws IOException {
        if (rom == null || rom.length < 262144 || rom.length > 8388608 || family == null || !family.recognized() || rom[256] != 83 || rom[257] != 69 || rom[258] != 71 || rom[259] != 65) {
            throw new IOException("Recognized R82C Genesis ROM required for ASM hook audit");
        }
        ArrayList<Hook> hooks = new ArrayList<>();
        collect(hooks, rom, "build_damage", "orgs.asm", SourceGate.ALWAYS, false, BUILD_DAMAGE, JMP);
        collect(hooks, rom, "unit_damage", "orgs.asm", SourceGate.ALWAYS, false, UNIT_DAMAGE, JMP);
        collect(hooks, rom, "death_hand", "orgs.asm", SourceGate.ALWAYS, false, DEATH, JMP);
        collect(hooks, rom, "selection_cancel", "orgs.asm", SourceGate.ALWAYS, false, CANCEL, JMP);
        collect(hooks, rom, "win_result", "orgs.asm", SourceGate.ALWAYS, false, WIN_TEXT, JMP);
        collect(hooks, rom, "reinforcement", "orgs.asm", SourceGate.REINFORCEMENT, false, REINFORCEMENT, JMP);
        collect(hooks, rom, "spice_storage", "orgs.asm", SourceGate.ALWAYS, false, SPICE_STORAGE, SPICE_CMPI_LONG);
        collect(hooks, rom, "harvest_speed", "orgs.asm", SourceGate.ALWAYS, false, HARVEST_SPEED, ANDI_B_D0);
        collect(hooks, rom, "cy_upgrade_fix_1", "orgs.asm", SourceGate.ALWAYS, true, CY_FIX_A, BRA_BYTE);
        collect(hooks, rom, "cy_upgrade_fix_2", "orgs.asm", SourceGate.ALWAYS, true, CY_FIX_B, BRA_BYTE);
        collect(hooks, rom, "projectile_surface", "orgs.asm", SourceGate.PROJECTILES, false, PROJECTILE, JMP);
        collect(hooks, rom, "xmod_scenarios", "orgs.asm", SourceGate.X_MOD, false, XMOD_SCENE, JSR);
        collect(hooks, rom, "xmod_drive", "orgs.asm", SourceGate.X_MOD, false, XMOD_DRIVE, JSR);
        collect(hooks, rom, "ally_flags", "orgs.asm", SourceGate.ALLY, false, ALLY_FLAGS, JMP);
        Iterator<Hook> it = hooks.iterator();
        int seen = 0;
        int unknown = 0;
        while (it.hasNext()) {
            Hook h = it.next();
            if (h.evidence == Evidence.OPCODE_AT_DOCUMENTED_OFFSET) {
                seen++;
            } else {
                unknown++;
            }
        }
        return new Result(sha256(rom), hooks, seen, unknown);
    }
}
