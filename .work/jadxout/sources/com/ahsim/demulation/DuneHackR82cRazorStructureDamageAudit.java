package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82cRazorCombatAudit;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes2.dex */
public final class DuneHackR82cRazorStructureDamageAudit {
    private static final byte[] INLINE_SUBTRACT = {48, 47, 0, 20, -111, 106, 0, 18, 74, 106, 0, 18, 110, 0, 0, -92};
    private static final int PRECEDING_BYTES = 48;
    private static final int WINDOW_BYTES = 128;
    private static final String WINDOW_SHA256 = "f0f8fba01c27f899f7d7baacbaef264ce269a0f9305d769752dbd31931879953";

    public enum EntryEvidence {
        VERIFIED_INLINE_SUBTRACTION,
        NO_UNIQUE_VERIFIED_ROUTE
    }

    public static final class Result {
        public final boolean directExtendedJmpAtEntry;
        public final EntryEvidence entryEvidence;
        public final String instructionWindowSha256;
        public final boolean modGameplayReady;
        public final int referenceVariant;
        public final String romSha256;
        public final boolean sonicAndDeviatorSemanticsVerified;
        public final int subtractionInstructionOffset;
        public final boolean userCombatSettingsReady;
        public final boolean weaponByBuildingMultipliersVerified;

        private Result(String sha, int variant, int pos, String digest) {
            this.directExtendedJmpAtEntry = false;
            this.weaponByBuildingMultipliersVerified = false;
            this.sonicAndDeviatorSemanticsVerified = false;
            this.modGameplayReady = false;
            this.userCombatSettingsReady = false;
            this.romSha256 = sha;
            this.referenceVariant = variant;
            this.subtractionInstructionOffset = pos;
            this.instructionWindowSha256 = digest;
            this.entryEvidence = EntryEvidence.VERIFIED_INLINE_SUBTRACTION;
        }

        public int previewSubWord(int hpWord, int rawDamageWord) {
            if (hpWord < 0 || hpWord > 65535 || rawDamageWord < 0 || rawDamageWord > 65535) {
                throw new IllegalArgumentException("Genesis unsigned 16-bit words required");
            }
            return 65535 & (hpWord - rawDamageWord);
        }
    }

    private DuneHackR82cRazorStructureDamageAudit() {
    }

    public static Result inspect(byte[] rom, DuneHackR82cRazorCombatAudit.Result evidence) throws IOException {
        int found;
        if (rom == null || evidence == null || !evidence.referenceSample || evidence.referenceVariant < 1 || evidence.referenceVariant > 2 || evidence.damageEvidence != DuneHackR82cRazorCombatAudit.Evidence.VERIFIED_REFERENCE_TABLE || !sha256(rom, 0, rom.length).equals(evidence.romSha256)) {
            throw new IOException("Razor structure damage audit requires exact ROM evidence");
        }
        DuneHackR82cRazorDamageProfile.fromReference(rom, evidence);
        int matches = 0;
        int found2 = -1;
        int pos = 48;
        while (true) {
            if (INLINE_SUBTRACT.length + pos > rom.length) {
                found = found2;
                break;
            }
            if (matches(rom, pos, INLINE_SUBTRACT)) {
                matches++;
                if (matches == 1) {
                    found2 = pos;
                }
                if (matches > 1) {
                    found = found2;
                    break;
                }
            }
            pos += 2;
        }
        int found3 = evidence.referenceVariant;
        int expected = found3 == 1 ? 40770 : 41072;
        if (matches != 1 || found != expected || (found + 128) - 48 > rom.length) {
            throw new IOException("Razor building damage route absent or ambiguous");
        }
        String windowDigest = sha256(rom, found - 48, 128);
        if (!WINDOW_SHA256.equals(windowDigest)) {
            throw new IOException("Razor building damage branch bytes differ from reference");
        }
        return new Result(evidence.romSha256, evidence.referenceVariant, found, windowDigest);
    }

    private static boolean matches(byte[] rom, int offset, byte[] pattern) {
        if (offset < 0 || offset > rom.length - pattern.length) {
            return false;
        }
        for (int i = 0; i < pattern.length; i++) {
            if (rom[offset + i] != pattern[i]) {
                return false;
            }
        }
        return true;
    }

    private static String sha256(byte[] bytes, int at, int count) throws IOException {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            md.update(bytes, at, count);
            StringBuilder s = new StringBuilder(64);
            for (byte b : md.digest()) {
                s.append(Character.forDigit((b >>> 4) & 15, 16));
                s.append(Character.forDigit(b & 15, 16));
            }
            return s.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("Missing SHA-256 implementation", e);
        }
    }
}
