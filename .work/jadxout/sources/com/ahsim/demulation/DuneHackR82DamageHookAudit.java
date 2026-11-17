package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82AsmHookProbe;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes2.dex */
public final class DuneHackR82DamageHookAudit {

    public enum Evidence {
        NOT_AT_DOCUMENTED_LAYOUTS,
        AMBIGUOUS_LAYOUT,
        POSSIBLE_JMP_TARGET_IN_ROM,
        JMP_TARGET_INVALID
    }

    public static final class Result {
        public final boolean damageTablesVerified;
        public final boolean handlerSemanticsVerified;
        public final boolean modifiedDamageReady;
        public final boolean playerSettingsReady;
        public final String romSha256;
        public final Evidence structureDamage;
        public final int structureJumpDestination;
        public final Evidence unitDamage;
        public final int unitJumpDestination;

        private Result(String sha, Evidence unit, Evidence structure, int unitDest, int structureDest) {
            this.damageTablesVerified = false;
            this.handlerSemanticsVerified = false;
            this.modifiedDamageReady = false;
            this.playerSettingsReady = false;
            this.romSha256 = sha;
            this.unitDamage = unit;
            this.structureDamage = structure;
            this.unitJumpDestination = unitDest;
            this.structureJumpDestination = structureDest;
        }
    }

    private DuneHackR82DamageHookAudit() {
    }

    private static final class Finding {
        final int dest;
        final Evidence evidence;

        Finding(Evidence value, int target) {
            this.evidence = value;
            this.dest = target;
        }
    }

    private static Finding inspectHook(byte[] rom, DuneHackR82AsmHookProbe.Hook hook) {
        if (hook.evidence == DuneHackR82AsmHookProbe.Evidence.AMBIGUOUS || hook.evidence == DuneHackR82AsmHookProbe.Evidence.WEAK_OPCODE) {
            return new Finding(Evidence.AMBIGUOUS_LAYOUT, -1);
        }
        if (hook.evidence != DuneHackR82AsmHookProbe.Evidence.OPCODE_AT_DOCUMENTED_OFFSET) {
            return new Finding(Evidence.NOT_AT_DOCUMENTED_LAYOUTS, -1);
        }
        int at = hook.matchedAddress;
        if (at < 0 || at > rom.length - 6 || (rom[at] & 255) != 78 || (rom[at + 1] & 255) != 249) {
            return new Finding(Evidence.JMP_TARGET_INVALID, -1);
        }
        long target = ((rom[at + 2] & 255) << 24) | ((rom[at + 3] & 255) << 16) | ((rom[at + 4] & 255) << 8) | (rom[at + 5] & 255);
        if ((1 & target) != 0 || target < 512 || target >= rom.length) {
            return new Finding(Evidence.JMP_TARGET_INVALID, -1);
        }
        return new Finding(Evidence.POSSIBLE_JMP_TARGET_IN_ROM, (int) target);
    }

    public static Result inspect(byte[] rom, DuneHackR82AsmHookProbe.Result hooks) throws IOException {
        if (rom == null || hooks == null || rom.length < 262144 || !romSha256(rom).equals(hooks.sourceSha256)) {
            throw new IOException("Unmatched R82C ROM / damage hook evidence");
        }
        Finding unit = inspectHook(rom, hooks.find("unit_damage"));
        Finding structure = inspectHook(rom, hooks.find("build_damage"));
        return new Result(hooks.sourceSha256, unit.evidence, structure.evidence, unit.dest, structure.dest);
    }

    private static String romSha256(byte[] rom) throws IOException {
        try {
            byte[] digest = MessageDigest.getInstance("SHA-256").digest(rom);
            StringBuilder sb = new StringBuilder(64);
            char[] hex = "0123456789abcdef".toCharArray();
            for (byte item : digest) {
                sb.append(hex[(item >>> 4) & 15]);
                sb.append(hex[item & 15]);
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 unavailable", e);
        }
    }
}
