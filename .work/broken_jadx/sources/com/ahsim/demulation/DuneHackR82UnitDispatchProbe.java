package com.ahsim.demulation;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes2.dex */
public final class DuneHackR82UnitDispatchProbe {
    private static final int MAX_ROM_BYTES = 8388608;
    public static final int SCRIPT_ENTRIES = 27;
    private static final int[] SCRIPT_IDS = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 10, 15, 10, 7, 1};
    private static final int UNIT_INFO_BYTES = 92;
    public static final int UNIT_TYPES = 32;

    public static final class Result {
        private final String[] extraRecordSha256;
        public final boolean gameReady;
        public final boolean nativeFunctionAbiVerified;
        public final int scriptIdOffset;
        public final boolean scriptMappingIdentified;
        public final String sourceSha256;
        public final int unitPointerTableOffset;
        public final int unitRecordSize;
        public final int unitRecordsOffset;

        private Result(int scripts, int table, int records, String source, String[] recordHashes) {
            this.scriptMappingIdentified = true;
            this.nativeFunctionAbiVerified = false;
            this.gameReady = false;
            this.scriptIdOffset = scripts;
            this.unitPointerTableOffset = table;
            this.unitRecordsOffset = records;
            this.unitRecordSize = DuneHackR82UnitDispatchProbe.UNIT_INFO_BYTES;
            this.sourceSha256 = source;
            this.extraRecordSha256 = (String[]) recordHashes.clone();
        }

        public int scriptForUnitType(int unitType) {
            if (unitType < 0 || unitType >= 32) {
                throw new IllegalArgumentException("R82C unit type outside 0..31");
            }
            return DuneHackR82UnitDispatchProbe.SCRIPT_IDS[unitType];
        }

        public int unitRecordOffset(int unitType) {
            if (unitType < 0 || unitType >= 32) {
                throw new IllegalArgumentException("R82C unit type outside 0..31");
            }
            return this.unitRecordsOffset + (unitType * DuneHackR82UnitDispatchProbe.UNIT_INFO_BYTES);
        }

        public String extraUnitRecordSha256(int unitType) {
            if (unitType < 27 || unitType > 31) {
                throw new IllegalArgumentException("Not one of the five extra R82C unit types");
            }
            return this.extraRecordSha256[unitType - 27];
        }
    }

    private DuneHackR82UnitDispatchProbe() {
    }

    private static int u32(byte[] b, int p) {
        return ((b[p] & 255) << 24) | ((b[p + 1] & 255) << 16) | ((b[p + 2] & 255) << 8) | (b[p + 3] & 255);
    }

    private static String sha256(byte[] b, int from, int size) throws IOException {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            md.update(b, from, size);
            byte[] digest = md.digest();
            char[] alphabet = "0123456789abcdef".toCharArray();
            char[] out = new char[digest.length * 2];
            for (int i = 0; i < digest.length; i++) {
                out[i * 2] = alphabet[(digest[i] >>> 4) & 15];
                out[(i * 2) + 1] = alphabet[digest[i] & 15];
            }
            return new String(out);
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 unavailable", e);
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:16:0x0031 */
    /* JADX WARN: Incorrect condition in loop: B:48:0x007a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.ahsim.demulation.DuneHackR82UnitDispatchProbe.Result inspect(byte[] r11, com.ahsim.demulation.DuneHackR82Probe.Result r12, com.ahsim.demulation.DuneHackR82EmcDependencyProbe.Result r13) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.DuneHackR82UnitDispatchProbe.inspect(byte[], com.ahsim.demulation.DuneHackR82Probe$Result, com.ahsim.demulation.DuneHackR82EmcDependencyProbe$Result):com.ahsim.demulation.DuneHackR82UnitDispatchProbe$Result");
    }
}
