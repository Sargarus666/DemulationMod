package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82Probe;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class DuneHackR82cRazorCombatAudit {
    public static final int DAMAGE_ANIMATIONS = 22;
    public static final int DAMAGE_WORDS = 132;
    private static final int LIMIT = 8388608;
    public static final int MOVEMENT_CLASSES = 6;
    public static final String RAZOR_ONE_SHA256 = "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a";
    public static final String RAZOR_TWO_SHA256 = "e32b1846ff38fac3163caa03b204148e60a19371131a8806fc1937c7aff383af";
    private static final String REFERENCE_TABLE_SHA256 = "5e41df837fef8ce86cdd803beafb58263776da87c58385df548c6193d633cdb0";
    private static final byte[] ROUTE_OPCODE_SUFFIX = {48, 48, 64, 0, 12, 64, 1, 0};

    public enum Evidence {
        VERIFIED_REFERENCE_TABLE,
        CODE_LINKED_CANDIDATE,
        NO_CODE_LINK,
        AMBIGUOUS_CODE_LINK,
        INVALID_TABLE_POINTER
    }

    public static final class EmcBank {
        public final int length;
        public final int offset;
        public final String sha256;

        private EmcBank(int at, int size, String digest) {
            this.offset = at;
            this.length = size;
            this.sha256 = digest;
        }
    }

    public static final class Result {
        private final int[] coefficientsQ8;
        public final Evidence damageEvidence;
        public final String embeddedAssemblerTag;
        public final List<EmcBank> emcBanks;
        public final boolean gameplaySemanticsVerified;
        public final int linkedDamageTableOffset;
        public final int linkedDamageWords;
        public final int linkedInstructionOffset;
        public final boolean modGameplayReady;
        public final int nonUnityCoefficients;
        public final boolean referenceSample;
        public final int referenceVariant;
        public final String romSha256;
        public final String tableSha256;
        public final boolean userCombatSettingsReady;

        private Result(String sha, int variant, String tag, Evidence evidence, int route, int table, int[] values, String tableDigest, List<EmcBank> banks) {
            this.gameplaySemanticsVerified = false;
            this.modGameplayReady = false;
            this.userCombatSettingsReady = false;
            this.romSha256 = sha;
            this.referenceVariant = variant;
            this.referenceSample = variant != 0;
            this.embeddedAssemblerTag = tag;
            this.damageEvidence = evidence;
            this.linkedInstructionOffset = route;
            this.linkedDamageTableOffset = table;
            this.linkedDamageWords = values == null ? 0 : values.length;
            int changed = 0;
            if (values != null) {
                for (int value : values) {
                    if (value != 256) {
                        changed++;
                    }
                }
            }
            this.nonUnityCoefficients = changed;
            this.coefficientsQ8 = values == null ? null : (int[]) values.clone();
            this.tableSha256 = tableDigest;
            this.emcBanks = Collections.unmodifiableList(new ArrayList(banks));
        }

        public int diagnosticCoefficientQ8(int animationId, int movementClass) {
            if (this.coefficientsQ8 == null || animationId < 0 || animationId >= 22 || movementClass < 0 || movementClass >= 6) {
                throw new IllegalArgumentException("No verified code link / invalid table index");
            }
            return this.coefficientsQ8[(animationId * 6) + movementClass];
        }
    }

    private DuneHackR82cRazorCombatAudit() {
    }

    public static Result inspect(byte[] rom, DuneHackR82Probe.Result family, String normalizedSha256) throws IOException {
        int table;
        Evidence evidence;
        String tableDigest;
        int[] values;
        int table2;
        int seen;
        String tag;
        byte[] bArr = rom;
        if (bArr == null || bArr.length < 262144 || bArr.length > LIMIT || family == null || !family.recognized() || !matches(bArr, 256, asciiBytes("SEGA")) || normalizedSha256 == null || normalizedSha256.length() != 64) {
            throw new IOException("Normalized R82C Genesis image and SHA-256 required");
        }
        int variant = 0;
        String actualSha = sha256(bArr, 0, bArr.length);
        if (!actualSha.equals(normalizedSha256.toLowerCase(Locale.US))) {
            throw new IOException("ROM fingerprint changed during R82C Razor audit");
        }
        if (actualSha.equals(RAZOR_ONE_SHA256)) {
            variant = 1;
        } else if (actualSha.equals(RAZOR_TWO_SHA256)) {
            variant = 2;
        }
        String tag2 = printableUntilNull(bArr, 544, 576);
        if (variant != 0 && (!"Ns16JUN25_82C".equals(tag2) || !contains(bArr, 154088, "R82 V25 10.01.2026"))) {
            throw new IOException("Razor reference ROM assembler markers changed");
        }
        int seen2 = 0;
        int route = -1;
        int table3 = -1;
        int p = RazorTerrainAtlas.HEIGHT;
        while (true) {
            int i = -1;
            if (p + 14 > bArr.length) {
                break;
            }
            if ((bArr[p] & 255) == 65 && (bArr[p + 1] & 255) == 249 && matches(bArr, p + 6, ROUTE_OPCODE_SUFFIX) && (seen2 = seen2 + 1) == 1) {
                route = p;
                long target = be32(bArr, p + 2);
                if (target <= 2147483647L && (1 & target) == 0) {
                    i = (int) target;
                }
                table3 = i;
            }
            p += 2;
        }
        if (seen2 == 0) {
            Evidence evidence2 = Evidence.NO_CODE_LINK;
            table = -1;
            evidence = evidence2;
            tableDigest = "";
            values = null;
            table2 = -1;
        } else if (seen2 > 1) {
            Evidence evidence3 = Evidence.AMBIGUOUS_CODE_LINK;
            table = -1;
            evidence = evidence3;
            tableDigest = "";
            values = null;
            table2 = -1;
        } else if (table3 < 1024 || table3 > bArr.length - 264) {
            Evidence evidence4 = Evidence.INVALID_TABLE_POINTER;
            table = route;
            evidence = evidence4;
            tableDigest = "";
            values = null;
            table2 = -1;
        } else {
            int[] parsed = new int[DAMAGE_WORDS];
            int i2 = 0;
            for (int i3 = DAMAGE_WORDS; i2 < i3; i3 = DAMAGE_WORDS) {
                parsed[i2] = be16(bArr, table3 + (i2 * 2));
                i2++;
            }
            String tableDigest2 = sha256(bArr, table3, 264);
            Evidence evidence5 = (variant == 0 || !REFERENCE_TABLE_SHA256.equals(tableDigest2)) ? Evidence.CODE_LINKED_CANDIDATE : Evidence.VERIFIED_REFERENCE_TABLE;
            int i4 = table3;
            table = route;
            evidence = evidence5;
            tableDigest = tableDigest2;
            values = parsed;
            table2 = i4;
        }
        List<EmcBank> banks = new ArrayList<>();
        int p2 = RazorTerrainAtlas.HEIGHT;
        while (p2 + 24 < bArr.length) {
            if (!matches(bArr, p2, asciiBytes("FORM"))) {
                seen = seen2;
                tag = tag2;
            } else if (matches(bArr, p2 + 8, asciiBytes("EMC2ORDR"))) {
                tag = tag2;
                long size = be32(bArr, p2 + 4);
                if (size < 24 || size > 65536) {
                    seen = seen2;
                } else {
                    seen = seen2;
                    if (size > bArr.length - p2) {
                        continue;
                    } else {
                        int bytes = (int) size;
                        banks.add(new EmcBank(p2, bytes, sha256(bArr, p2, bytes)));
                        if (banks.size() > 16) {
                            throw new IOException("Unexpected excessive EMC candidates");
                        }
                        p2 += (bytes - 2) & (-2);
                    }
                }
            } else {
                seen = seen2;
                tag = tag2;
            }
            p2 += 2;
            bArr = rom;
            tag2 = tag;
            seen2 = seen;
        }
        String tag3 = tag2;
        if (variant != 0 && (evidence != Evidence.VERIFIED_REFERENCE_TABLE || banks.size() != 3 || ((variant == 1 && table != 117744) || ((variant == 2 && table != 117988) || table2 != 154682 || values == null)))) {
            throw new IOException("Razor reference evidence inconsistent");
        }
        return new Result(actualSha, variant, tag3, evidence, table, table2, values, tableDigest, banks);
    }

    private static byte[] asciiBytes(String value) {
        return value.getBytes(StandardCharsets.US_ASCII);
    }

    private static boolean contains(byte[] bytes, int offset, String text) {
        return matches(bytes, offset, asciiBytes(text));
    }

    private static boolean matches(byte[] bytes, int offset, byte[] pattern) {
        if (offset < 0 || offset > bytes.length - pattern.length) {
            return false;
        }
        for (int j = 0; j < pattern.length; j++) {
            if (bytes[offset + j] != pattern[j]) {
                return false;
            }
        }
        return true;
    }

    private static int be16(byte[] bytes, int p) {
        return ((bytes[p] & 255) << 8) | (bytes[p + 1] & 255);
    }

    private static long be32(byte[] bytes, int p) {
        return ((bytes[p] & 255) << 24) | ((bytes[p + 1] & 255) << 16) | ((bytes[p + 2] & 255) << 8) | (bytes[p + 3] & 255);
    }

    private static String printableUntilNull(byte[] bytes, int start, int end) {
        StringBuilder out = new StringBuilder();
        for (int i = start; i < end && i < bytes.length; i++) {
            int v = bytes[i] & 255;
            if (v == 0) {
                break;
            }
            if (v < 32 || v > 126) {
                return "";
            }
            out.append((char) v);
        }
        return out.toString();
    }

    private static String sha256(byte[] b, int start, int length) throws IOException {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            md.update(b, start, length);
            StringBuilder out = new StringBuilder(64);
            for (byte v : md.digest()) {
                out.append(Character.forDigit((v >>> 4) & 15, 16));
                out.append(Character.forDigit(v & 15, 16));
            }
            return out.toString();
        } catch (NoSuchAlgorithmException ex) {
            throw new IOException("SHA-256 is unavailable", ex);
        }
    }
}
