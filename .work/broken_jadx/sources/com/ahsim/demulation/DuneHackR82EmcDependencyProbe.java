package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82Probe;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes2.dex */
public final class DuneHackR82EmcDependencyProbe {
    private static final String COMMON_BUILD = "d813c5732056b6e8e42daeb8eba5572da8724e212a134331e0ba947da7ab2551";
    private static final String COMMON_TEAM = "f35fa2e0347e70e55d13c70d67197ded0e8ddf548dac81ec2bbfcc0f981e1195";
    private static final int MAX_SCAN_BYTES = 8388608;
    private static final int MAX_SCRIPT_BYTES = 65536;
    private static final int MIN_ROM = 262144;
    private static final String UNIT_AUG = "e21674f991a3e7e625a8a26dfc5b4e32426621364fbaeb242c8fb29f950be0de";
    private static final String UNIT_TI_FEB = "018bfb8a11c6ec7af35de4ef650ce1a62caad6c1a3e48f7ef09b6a7b85b8cd9f";
    private static final byte[] FORM = "FORM".getBytes(StandardCharsets.US_ASCII);
    private static final byte[] EMC2 = "EMC2".getBytes(StandardCharsets.US_ASCII);
    private static final byte[] ORDR = "ORDR".getBytes(StandardCharsets.US_ASCII);
    private static final byte[] DATA = "DATA".getBytes(StandardCharsets.US_ASCII);

    public static final class Script {
        public final int dataWords;
        public final int entries;
        public final int length;
        public final String name;
        public final int offset;
        public final String sha256;
        public final String variant;

        private Script(String name, int offset, int length, int entries, int words, String hash, String variant) {
            this.name = name;
            this.offset = offset;
            this.length = length;
            this.entries = entries;
            this.dataWords = words;
            this.sha256 = hash;
            this.variant = variant;
        }
    }

    public static final class Result {
        public final Script build;
        public final boolean gameReady;
        public final String sourceSha256;
        public final Script team;
        public final Script unit;
        public final boolean verifiedTroopParameters;

        private Result(Script b, Script t, Script u, boolean params, String hash) {
            this.gameReady = false;
            this.build = b;
            this.team = t;
            this.unit = u;
            this.verifiedTroopParameters = params;
            this.sourceSha256 = hash;
        }

        public boolean scriptsIdentified() {
            return (this.build == null || this.team == null || this.unit == null) ? false : true;
        }

        public boolean nativeDispatchVerified() {
            return false;
        }
    }

    private DuneHackR82EmcDependencyProbe() {
    }

    private static int be32(byte[] raw, int p) {
        return ((raw[p] & 255) << 24) | ((raw[p + 1] & 255) << 16) | ((raw[p + 2] & 255) << 8) | (raw[p + 3] & 255);
    }

    private static boolean match(byte[] raw, int p, byte[] bytes) {
        if (p < 0 || p > raw.length - bytes.length) {
            return false;
        }
        for (int j = 0; j < bytes.length; j++) {
            if (raw[p + j] != bytes[j]) {
                return false;
            }
        }
        return true;
    }

    private static String sha256(byte[] raw, int start, int len) throws IOException {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            digest.update(raw, start, len);
            byte[] bytes = digest.digest();
            char[] hex = "0123456789abcdef".toCharArray();
            char[] out = new char[64];
            for (int i = 0; i < 32; i++) {
                out[i * 2] = hex[(bytes[i] >> 4) & 15];
                out[(i * 2) + 1] = hex[bytes[i] & 15];
            }
            return new String(out);
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 unavailable", e);
        }
    }

    private static Script scan(byte[] rom, String name, int expectedEntries, String knownHash1, String knownHash2) throws IOException {
        int dataLen;
        boolean valid;
        String str;
        int cap = Math.min(rom.length, MAX_SCAN_BYTES);
        Script result = null;
        for (int p = 0; p <= cap - 28; p += 2) {
            if (match(rom, p, FORM) && match(rom, p + 8, EMC2) && match(rom, p + 12, ORDR)) {
                int length = be32(rom, p + 4);
                int order = be32(rom, p + 16);
                if (length >= 32 && length <= 65536 && (length & 1) == 0 && length <= cap - p && order == expectedEntries * 2) {
                    int dataAt = order + 20;
                    if (match(rom, p + dataAt, DATA) && (dataLen = be32(rom, p + dataAt + 4)) >= 2 && (dataLen & 1) == 0 && dataAt + 8 + dataLen == length) {
                        String hash = sha256(rom, p, length);
                        if (hash.equals(knownHash1) || (knownHash2 != null && hash.equals(knownHash2))) {
                            int at = p + 20;
                            while (true) {
                                if (at < p + 20 + order) {
                                    int index = ((rom[at] & 255) << 8) | (rom[at + 1] & 255);
                                    if (index >= dataLen / 2) {
                                        valid = false;
                                        break;
                                    }
                                    at += 2;
                                } else {
                                    valid = true;
                                    break;
                                }
                            }
                            if (!valid) {
                                continue;
                            } else {
                                if (result != null) {
                                    throw new IOException("Ambiguous duplicate R82C " + name + " EMC bank");
                                }
                                if (name.equals("unit")) {
                                    str = hash.equals(UNIT_AUG) ? "aug2026" : "ti2024_feb2026";
                                } else {
                                    str = "shared_r82c";
                                }
                                String variant = str;
                                result = new Script(name, p, length, expectedEntries, dataLen / 2, hash, variant);
                            }
                        }
                    }
                }
            }
        }
        return result;
    }

    public static Result inspect(byte[] rom, DuneHackR82Probe.Result family) throws IOException {
        boolean params;
        if (rom == null || rom.length < MIN_ROM || rom.length > MAX_SCAN_BYTES || family == null || !family.recognized()) {
            throw new IOException("Not a supported R82C-family ROM for EMC inspection");
        }
        Script build = scan(rom, "build", 19, COMMON_BUILD, null);
        Script team = scan(rom, "team", 6, COMMON_TEAM, null);
        Script unit = scan(rom, "unit", 27, UNIT_AUG, UNIT_TI_FEB);
        if (build == null || team == null || unit == null) {
            throw new IOException("Unknown or modified R82C EMC bank; native compatibility not established");
        }
        if (build.offset + build.length != team.offset || team.offset + team.length != unit.offset) {
            throw new IOException("R82C compiled EMC bank relocation/order differs from ASM layout");
        }
        try {
            DuneHackR82GameplayParameterProbe.extract(rom, family);
            params = true;
        } catch (IOException e) {
            params = false;
        }
        return new Result(build, team, unit, params, sha256(rom, 0, rom.length));
    }
}
