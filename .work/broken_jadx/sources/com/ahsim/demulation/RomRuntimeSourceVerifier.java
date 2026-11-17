package com.ahsim.demulation;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class RomRuntimeSourceVerifier {
    private static final int MAX_SOURCE_BYTES = 16777216;

    private RomRuntimeSourceVerifier() {
    }

    public static final class Result {
        public final byte[] bytes;
        public final String sha256;

        Result(byte[] bytes, String sha256) {
            this.bytes = bytes;
            this.sha256 = sha256;
        }
    }

    public static Result readAndVerify(InputStream input, long advertisedSize, String expectedSha256) throws IOException {
        if (input == null) {
            throw new IOException("Selected ROM stream is unavailable");
        }
        String expected = normalizeSha256(expectedSha256);
        if (advertisedSize > 16777216) {
            throw new IOException("Selected ROM is too large for the runtime source bridge");
        }
        int initialCapacity = (advertisedSize <= 0 || advertisedSize > 16777216) ? 1048576 : (int) advertisedSize;
        ByteArrayOutputStream output = new ByteArrayOutputStream(initialCapacity);
        MessageDigest digest = sha256Digest();
        byte[] buffer = new byte[RazorVramPatternLoader.METATILE_BANK_BYTES];
        int total = 0;
        while (true) {
            int count = input.read(buffer);
            if (count >= 0) {
                if (count != 0) {
                    total += count;
                    if (total > 16777216) {
                        throw new IOException("Selected ROM exceeds runtime source size limit");
                    }
                    output.write(buffer, 0, count);
                    digest.update(buffer, 0, count);
                }
            } else {
                if (total == 0) {
                    throw new IOException("Selected ROM is empty");
                }
                String actual = hex(digest.digest());
                if (!expected.equals(actual)) {
                    throw new IOException("Selected ROM does not match the ROM used for READY assets");
                }
                return new Result(output.toByteArray(), actual);
            }
        }
    }

    static String normalizeSha256(String value) throws IOException {
        if (value == null) {
            throw new IOException("READY source fingerprint is missing");
        }
        String normalized = value.trim().toLowerCase(Locale.US);
        if (!normalized.matches("[0-9a-f]{64}")) {
            throw new IOException("READY source fingerprint is invalid");
        }
        return normalized;
    }

    private static MessageDigest sha256Digest() throws IOException {
        try {
            return MessageDigest.getInstance("SHA-256");
        } catch (NoSuchAlgorithmException impossible) {
            throw new IOException("SHA-256 is unavailable", impossible);
        }
    }

    private static String hex(byte[] bytes) {
        StringBuilder out = new StringBuilder(bytes.length * 2);
        for (byte value : bytes) {
            out.append(String.format(Locale.US, "%02x", Integer.valueOf(value & 255)));
        }
        return out.toString();
    }
}
