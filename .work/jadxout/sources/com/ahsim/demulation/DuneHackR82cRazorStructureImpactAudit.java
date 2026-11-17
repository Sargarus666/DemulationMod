package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82cRazorCombatAudit;
import com.ahsim.demulation.DuneHackR82cRazorStructureDamageAudit;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class DuneHackR82cRazorStructureImpactAudit {
    private static final int PREFIX_LENGTH = 48;
    private static final byte[] ENTRY_PREFIX = {32, 10, 103, 0, 0, -34, 74, 111, 0, 20, 103, 0, 0, -42};
    private static final byte[] HP_BRANCH = {48, 47, 0, 20, -111, 106, 0, 18, 74, 106, 0, 18, 110, 0, 0, -92, 66, 106, 0, 18};
    private static final byte[] RETURN_EPILOGUE = {112, 0, 88, -113, 76, -33, 4, 8, 78, 117};

    public enum OriginalCoreRoute {
        ORDINARY_PROJECTILE_VIA_EXPLOSION,
        SONIC_DIRECT_STRUCTURE_DAMAGE,
        DEVIATOR_NOT_ORDINARY_BUILDING_HP_DAMAGE
    }

    public enum ProofLevel {
        COMPILED_HP_BRANCH_VERIFIED,
        UPSTREAM_PROJECTILE_ROUTE_UNVERIFIED
    }

    public static final class Result {
        public final boolean buildingWeaponModifiersVerified;
        public final ProofLevel compiledProof;
        public final int hpSubtractOffset;
        public final int lethalClearHpOffset;
        public final boolean modGameplayReady;
        public final int nonlethalBranchTarget;
        public final boolean originalCoreMapped;
        public final boolean playerOverridesEnabled;
        public final boolean razorFullProjectileChainVerified;
        public final int referenceVariant;
        public final String romSha256;
        public final ProofLevel upstreamProof;

        private Result(String sha, int variant, int sub, int branch) {
            this.compiledProof = ProofLevel.COMPILED_HP_BRANCH_VERIFIED;
            this.upstreamProof = ProofLevel.UPSTREAM_PROJECTILE_ROUTE_UNVERIFIED;
            this.originalCoreMapped = true;
            this.razorFullProjectileChainVerified = false;
            this.buildingWeaponModifiersVerified = false;
            this.modGameplayReady = false;
            this.playerOverridesEnabled = false;
            this.romSha256 = sha;
            this.referenceVariant = variant;
            this.hpSubtractOffset = sub;
            this.nonlethalBranchTarget = branch;
            this.lethalClearHpOffset = sub + 16;
        }

        public boolean branchToNonlethalEpilogue(int hpWord, int damageWord) {
            if (hpWord < 0 || hpWord > 65535 || damageWord < 0 || damageWord > 65535) {
                throw new IllegalArgumentException("two unsigned 68000 word operands required");
            }
            return ((short) (65535 & (hpWord - damageWord))) > 0;
        }

        public int hpWordAfterSubtract(int hpWord, int damageWord) {
            if (hpWord < 0 || hpWord > 65535 || damageWord < 0 || damageWord > 65535) {
                throw new IllegalArgumentException("two unsigned 68000 word operands required");
            }
            return 65535 & (hpWord - damageWord);
        }
    }

    private DuneHackR82cRazorStructureImpactAudit() {
    }

    public static Result inspect(byte[] rom, DuneHackR82cRazorCombatAudit.Result combat, DuneHackR82cRazorStructureDamageAudit.Result building) throws IOException {
        if (rom == null || combat == null || building == null || !combat.referenceSample || combat.referenceVariant != building.referenceVariant || !combat.romSha256.equals(building.romSha256) || building.entryEvidence != DuneHackR82cRazorStructureDamageAudit.EntryEvidence.VERIFIED_INLINE_SUBTRACTION) {
            throw new IOException("Razor 313 requires matching exact-ROM combat and building evidence");
        }
        DuneHackR82cRazorStructureDamageAudit.Result verified = DuneHackR82cRazorStructureDamageAudit.inspect(rom, combat);
        if (!verified.instructionWindowSha256.equals(building.instructionWindowSha256) || verified.subtractionInstructionOffset != building.subtractionInstructionOffset) {
            throw new IOException("Razor 313 building attestation mismatch");
        }
        int sub = verified.subtractionInstructionOffset;
        int entry = sub - 48;
        if (!match(rom, entry, ENTRY_PREFIX) || !match(rom, sub, HP_BRANCH)) {
            throw new IOException("Razor building instruction flow changed");
        }
        int branchDisplacement = (short) (((rom[sub + 14] & 255) << 8) | (rom[sub + 15] & 255));
        int epilogue = sub + 14 + branchDisplacement;
        if (epilogue <= HP_BRANCH.length + sub || !match(rom, epilogue, RETURN_EPILOGUE)) {
            throw new IOException("Razor nonlethal branch does not reach return epilogue");
        }
        return new Result(combat.romSha256, combat.referenceVariant, sub, epilogue);
    }

    private static boolean match(byte[] rom, int pos, byte[] pattern) {
        if (pos < 0 || pos > rom.length - pattern.length) {
            return false;
        }
        for (int i = 0; i < pattern.length; i++) {
            if (rom[pos + i] != pattern[i]) {
                return false;
            }
        }
        return true;
    }
}
