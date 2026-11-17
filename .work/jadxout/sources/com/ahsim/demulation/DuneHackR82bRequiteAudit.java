package com.ahsim.demulation;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class DuneHackR82bRequiteAudit {
    public static final String REQUITE_BUILD_TAG = "NS14JUN21_82B";
    public static final String REQUITE_SAMPLE_SHA256 = "a133c2b6dddcb33c843e419d9d8f75c4d4a4dcb4cd068ad1a1088a7d9d02577c";

    public static final class EmcBank {
        public final int length;
        public final int offset;
        public final String sha256;

        private EmcBank(int offset, int length, String sha) {
            this.offset = offset;
            this.length = length;
            this.sha256 = sha;
        }
    }

    public static final class Result {
        public final boolean damageHandlerVerified;
        public final List<EmcBank> emcBanks;
        public final boolean modGameplayReady;
        public final boolean r82bHeader;
        public final boolean referenceFingerprint;
        public final boolean requiteAttributionConfirmed;
        public final String romSha256;
        public final boolean userCombatSettingsReady;
        public final int verifiedDamageTableWords;

        private Result(String hash, boolean reference, boolean header, boolean attribution, List<EmcBank> banks) {
            this.verifiedDamageTableWords = 0;
            this.damageHandlerVerified = false;
            this.modGameplayReady = false;
            this.userCombatSettingsReady = false;
            this.romSha256 = hash;
            this.referenceFingerprint = reference;
            this.r82bHeader = header;
            this.requiteAttributionConfirmed = attribution;
            this.emcBanks = Collections.unmodifiableList(new ArrayList(banks));
        }
    }

    private DuneHackR82bRequiteAudit() {
    }

    public static Result inspect(byte[] rom, String normalizedSha256) throws IOException {
        byte[] bArr = rom;
        if (bArr == null || bArr.length < 262144 || bArr.length > 8388608 || !matches(bArr, 256, "SEGA") || normalizedSha256 == null || normalizedSha256.length() != 64) {
            throw new IOException("Valid normalized Genesis ROM and fingerprint required");
        }
        String actual = sha256(bArr, 0, bArr.length);
        if (!actual.equals(normalizedSha256.toLowerCase(Locale.US))) {
            throw new IOException("R82B ROM SHA-256 mismatch");
        }
        String domestic = ascii(bArr, 288, 336).toUpperCase(Locale.US);
        String overseas = ascii(bArr, 336, 384).toUpperCase(Locale.US);
        String tag = ascii(bArr, 544, 576).toUpperCase(Locale.US);
        boolean r82bHeader = domestic.contains("DUNE") && overseas.contains("REBUILD R82B") && tag.startsWith(REQUITE_BUILD_TAG);
        if (!r82bHeader) {
            throw new IOException("R82B title/build evidence missing");
        }
        boolean sample = REQUITE_SAMPLE_SHA256.equals(actual);
        boolean attribution = sample && containsInRange(bArr, 1089024, 1089824, "REQUITE") && containsInRange(bArr, 1089024, 1089824, "Dimidrol");
        if (sample && !attribution) {
            throw new IOException("Requite sample markers missing");
        }
        List<EmcBank> banks = new ArrayList<>();
        if (sample) {
            int i = 0;
            for (int[] expected = {130256, 131330, 131530, 131880}; i < expected.length; expected = expected) {
                int offset = expected[i];
                if (!matches(bArr, offset, "FORM") || !matches(bArr, offset + 8, "EMC2ORDR")) {
                    throw new IOException("Requite FORM/EMC2 marker mismatch");
                }
                long size = be32(bArr, offset + 4);
                String domestic2 = domestic;
                long end = offset + 4 + size;
                if (size >= 24) {
                    if (end <= bArr.length && end > offset + 16) {
                        if (i + 1 >= expected.length || end == expected[i + 1]) {
                            int length = (int) (end - offset);
                            banks.add(new EmcBank(offset, length, sha256(bArr, offset, length)));
                            i++;
                            bArr = rom;
                            domestic = domestic2;
                        }
                    }
                }
                throw new IOException("Requite EMC bank length mismatch");
            }
        }
        return new Result(actual, sample, r82bHeader, attribution, banks);
    }

    private static boolean containsInRange(byte[] data, int start, int end, String token) {
        if (start < 0 || end > data.length || start > end) {
            return false;
        }
        byte[] needle = token.getBytes(StandardCharsets.US_ASCII);
        for (int i = start; i <= end - needle.length; i++) {
            boolean ok = true;
            int j = 0;
            while (true) {
                if (j >= needle.length) {
                    break;
                }
                if (data[i + j] != needle[j]) {
                    ok = false;
                    break;
                }
                j++;
            }
            if (ok) {
                return true;
            }
        }
        return false;
    }

    private static boolean matches(byte[] data, int off, String s) {
        if (off < 0 || off > data.length - s.length()) {
            return false;
        }
        for (int i = 0; i < s.length(); i++) {
            if (data[off + i] != ((byte) s.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    private static long be32(byte[] bytes, int p) {
        return ((bytes[p] & 255) << 24) | ((bytes[p + 1] & 255) << 16) | ((bytes[p + 2] & 255) << 8) | (bytes[p + 3] & 255);
    }

    private static String ascii(byte[] bytes, int start, int end) {
        StringBuilder s = new StringBuilder();
        for (int i = start; i < end && i < bytes.length; i++) {
            int v = bytes[i] & 255;
            if (v == 0) {
                break;
            }
            char c = ' ';
            if (v >= 32 && v <= 126) {
                c = (char) v;
            }
            s.append(c);
        }
        return s.toString().trim();
    }

    private static String sha256(byte[] bytes, int off, int length) throws IOException {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            md.update(bytes, off, length);
            byte[] digest = md.digest();
            StringBuilder hex = new StringBuilder(64);
            for (byte b : digest) {
                hex.append(Character.forDigit((b >>> 4) & 15, 16));
                hex.append(Character.forDigit(b & 15, 16));
            }
            return hex.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 unavailable", e);
        }
    }
}
