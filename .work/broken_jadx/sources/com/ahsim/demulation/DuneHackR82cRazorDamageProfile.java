package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82cRazorCombatAudit;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class DuneHackR82cRazorDamageProfile {
    private static final int CLASSES = 6;
    private static final String KNOWN_TABLE_SHA = "5e41df837fef8ce86cdd803beafb58263776da87c58385df548c6193d633cdb0";
    private static final byte[] OP_CODES = {65, -7, 0, 0, 0, 0, 48, 48, 64, 0, 12, 64, 1, 0, 103, 4, -58, -64, -32, -117};
    private static final int WORDS = 132;
    private final int[] animationCoefficients;
    public final String romSha256;
    public final String tableSha256;
    public final int verifiedRouteAddress;
    public final int verifiedTableAddress;
    public final boolean modGameplayReady = false;
    public final boolean extendedWeaponHookVerified = false;

    public static final class Impact {
        public final int animation;
        public final boolean animationMultiplierApplied;
        public final int coefficientQ8;
        public final boolean laterWeaponSemanticsUnverified;
        public final int movementClass;
        public final int rawDamage;
        public final int resultAfterAnimationStage;

        private Impact(int raw, int anim, int movement, int coeff, int result) {
            this.laterWeaponSemanticsUnverified = true;
            this.rawDamage = raw;
            this.animation = anim;
            this.movementClass = movement;
            this.coefficientQ8 = coeff;
            this.resultAfterAnimationStage = result;
            this.animationMultiplierApplied = coeff != 256;
        }
    }

    private DuneHackR82cRazorDamageProfile(String sha, String digest, int route, int table, int[] coefficients) {
        this.romSha256 = sha;
        this.tableSha256 = digest;
        this.verifiedRouteAddress = route;
        this.verifiedTableAddress = table;
        this.animationCoefficients = (int[]) coefficients.clone();
    }

    public static DuneHackR82cRazorDamageProfile fromReference(byte[] rom, DuneHackR82cRazorCombatAudit.Result evidence) throws IOException {
        if (rom == null || evidence == null || !evidence.referenceSample || evidence.damageEvidence != DuneHackR82cRazorCombatAudit.Evidence.VERIFIED_REFERENCE_TABLE || !KNOWN_TABLE_SHA.equals(evidence.tableSha256) || evidence.linkedDamageWords != 132 || !digest(rom, 0, rom.length).equals(evidence.romSha256)) {
            throw new IOException("Only authenticated Razor R82C references are accepted");
        }
        int route = evidence.linkedInstructionOffset;
        int table = evidence.linkedDamageTableOffset;
        if (route < 0 || route > rom.length - OP_CODES.length || table < 0 || table > rom.length - 264 || ((evidence.referenceVariant == 1 && route != 117744) || ((evidence.referenceVariant == 2 && route != 117988) || table != 154682))) {
            throw new IOException("Unexpected Razor route layout");
        }
        for (int i = 0; i < OP_CODES.length; i++) {
            if ((i < 2 || i >= 6) && rom[route + i] != OP_CODES[i]) {
                throw new IOException("Damage animation branch opcode differs");
            }
        }
        int i2 = route + 2;
        int address = ((rom[i2] & 255) << 24) | ((rom[route + 3] & 255) << 16) | ((rom[route + 4] & 255) << 8) | (rom[route + 5] & 255);
        if (address != table || !KNOWN_TABLE_SHA.equals(digest(rom, table, 264))) {
            throw new IOException("Razor linked multiplier table changed");
        }
        int[] values = new int[132];
        int different = 0;
        for (int i3 = 0; i3 < values.length; i3++) {
            values[i3] = ((rom[(i3 * 2) + table] & 255) << 8) | (rom[(i3 * 2) + table + 1] & 255);
            if (values[i3] != 256) {
                different++;
            }
        }
        if (different != 19 || evidence.nonUnityCoefficients != different) {
            throw new IOException("Unexpected Razor coefficient profile");
        }
        return new DuneHackR82cRazorDamageProfile(evidence.romSha256, evidence.tableSha256, route, table, values);
    }

    public int coefficientQ8(int animation, int movementClass) {
        if (animation < 0 || animation >= 22 || movementClass < 0 || movementClass >= 6) {
            throw new IllegalArgumentException("Invalid impact class");
        }
        return this.animationCoefficients[(animation * 6) + movementClass];
    }

    public Impact previewFirstStage(int rawDamage, int animation, int movementClass) {
        if (rawDamage < 0 || rawDamage > 65535) {
            throw new IllegalArgumentException("16-bit unsigned base damage required");
        }
        int coeff = coefficientQ8(animation, movementClass);
        int result = coeff == 256 ? rawDamage : (int) (((rawDamage * coeff) >>> 8) & 65535);
        return new Impact(rawDamage, animation, movementClass, coeff, result);
    }

    private static String digest(byte[] data, int offset, int length) throws IOException {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            md.update(data, offset, length);
            StringBuilder out = new StringBuilder(64);
            for (byte b : md.digest()) {
                out.append(Character.forDigit((b >>> 4) & 15, 16));
                out.append(Character.forDigit(b & 15, 16));
            }
            return out.toString().toLowerCase(Locale.US);
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 unavailable", e);
        }
    }
}
