package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82AsmHookProbe;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes2.dex */
public final class DuneHackR82WeaponHookAudit {

    public enum Evidence {
        NOT_OBSERVED,
        AMBIGUOUS_LAYOUT,
        POSSIBLE_JMP_IN_ROM,
        INVALID_TARGET
    }

    public static final class Result {
        public final Evidence deathHand;
        public final int deathHandTarget;
        public final boolean extraWeaponTablesVerified;
        public final boolean modGameplayReady;
        public final boolean projectilePhysicsVerified;
        public final Evidence projectileSurface;
        public final int projectileSurfaceTarget;
        public final String romSha256;
        public final boolean specialRulesVerified;
        public final boolean userWeaponSettingsReady;

        private Result(String sha, Finding hand, Finding projectile) {
            this.extraWeaponTablesVerified = false;
            this.specialRulesVerified = false;
            this.projectilePhysicsVerified = false;
            this.modGameplayReady = false;
            this.userWeaponSettingsReady = false;
            this.romSha256 = sha;
            this.deathHand = hand.evidence;
            this.projectileSurface = projectile.evidence;
            this.deathHandTarget = hand.target;
            this.projectileSurfaceTarget = projectile.target;
        }
    }

    private static final class Finding {
        final Evidence evidence;
        final int target;

        Finding(Evidence status, int destination) {
            this.evidence = status;
            this.target = destination;
        }
    }

    private DuneHackR82WeaponHookAudit() {
    }

    private static Finding read(byte[] rom, DuneHackR82AsmHookProbe.Hook hook) {
        if (hook.evidence == DuneHackR82AsmHookProbe.Evidence.AMBIGUOUS || hook.evidence == DuneHackR82AsmHookProbe.Evidence.WEAK_OPCODE) {
            return new Finding(Evidence.AMBIGUOUS_LAYOUT, -1);
        }
        if (hook.evidence != DuneHackR82AsmHookProbe.Evidence.OPCODE_AT_DOCUMENTED_OFFSET) {
            return new Finding(Evidence.NOT_OBSERVED, -1);
        }
        int at = hook.matchedAddress;
        if (at < 0 || at > rom.length - 6 || (rom[at] & 255) != 78 || (rom[at + 1] & 255) != 249) {
            return new Finding(Evidence.INVALID_TARGET, -1);
        }
        long to = ((rom[at + 2] & 255) << 24) | ((rom[at + 3] & 255) << 16) | ((rom[at + 4] & 255) << 8) | (rom[at + 5] & 255);
        if ((1 & to) != 0 || to < 512 || to >= rom.length) {
            return new Finding(Evidence.INVALID_TARGET, -1);
        }
        return new Finding(Evidence.POSSIBLE_JMP_IN_ROM, (int) to);
    }

    private static String sha256(byte[] rom) throws IOException {
        try {
            byte[] d = MessageDigest.getInstance("SHA-256").digest(rom);
            StringBuilder sb = new StringBuilder(64);
            char[] hex = "0123456789abcdef".toCharArray();
            for (byte b : d) {
                sb.append(hex[(b >>> 4) & 15]);
                sb.append(hex[b & 15]);
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 unavailable", e);
        }
    }

    public static Result inspect(byte[] rom, DuneHackR82AsmHookProbe.Result hooks) throws IOException {
        if (rom == null || hooks == null || rom.length < 262144 || rom.length > 8388608 || !sha256(rom).equals(hooks.sourceSha256)) {
            throw new IOException("R82C weapon hook ROM identity mismatch");
        }
        return new Result(hooks.sourceSha256, read(rom, hooks.find("death_hand")), read(rom, hooks.find("projectile_surface")));
    }
}
