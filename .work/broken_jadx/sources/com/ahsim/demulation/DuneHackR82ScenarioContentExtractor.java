package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82Probe;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class DuneHackR82ScenarioContentExtractor {
    private static final String AUDITED_SAMPLE_SHA256 = "09bfe4bef56c7642edef7dea47c41274bdcce595fd95fbb85e64af4d3308d0ce";
    public static final int ENTRY_COUNT = 45;
    private static final int FIRST_PAYLOAD = 1413302;
    public static final int HOUSE_COUNT = 5;
    public static final int MISSIONS_PER_HOUSE = 9;
    private static final int POINTER_TABLE = 539828;
    private static final int RECORD_HEADER_LENGTH = 16;
    private static final int[][] LENGTHS = {new int[]{RomRuntimeWorldDataAssets.STRUCTURE_LAYOUT_COUNTS, 604, 766, 1230, 1554, 1656, 2414, 2814, 2848}, new int[]{406, RomRuntimeNativeDataAssets.VISUAL_STREAMS_BYTES, 620, 1202, 1454, 1552, 1918, 2792, 2750}, new int[]{RomRuntimeWorldDataAssets.STRUCTURE_LAYOUT_COUNTS, 586, 1152, 1136, 1066, 1628, 1554, 2930, 2726}, new int[]{406, RomRuntimeNativeDataAssets.VISUAL_STREAMS_BYTES, 620, 1202, 1454, 1552, 1918, 2792, 2750}, new int[]{RomRuntimeWorldDataAssets.STRUCTURE_LAYOUT_COUNTS, 604, 766, 1230, 1554, 1656, 2414, 2814, 2848}};
    private static final int[] STORAGE_ORDER = {1, 2, 0, 4, 3};

    public static final class Result {
        private final byte[] archive;
        public final String archiveSha256;
        public final int firstPayloadOffset;
        private final int[][] offsets;
        public final int payloadBytes;
        public final int pointerTableOffset;
        private final int[][] romOffsets;

        private Result(byte[] bytes, int[][] sourceOffsets) throws IOException {
            this.offsets = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 5, 9);
            this.romOffsets = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 5, 9);
            this.pointerTableOffset = DuneHackR82ScenarioContentExtractor.POINTER_TABLE;
            this.firstPayloadOffset = 1413302;
            int cursor = 0;
            for (int h = 0; h < 5; h++) {
                for (int i = 0; i < 9; i++) {
                    this.offsets[h][i] = cursor;
                    cursor += DuneHackR82ScenarioContentExtractor.LENGTHS[h][i];
                    this.romOffsets[h][i] = sourceOffsets[h][i];
                }
            }
            int h2 = bytes.length;
            if (cursor != h2) {
                throw new IOException("R82C scenario archive size mismatch");
            }
            this.payloadBytes = bytes.length;
            this.archive = (byte[]) bytes.clone();
            this.archiveSha256 = DuneHackR82NeutralContentExtractor.sha256(this.archive);
        }

        public byte[] archive() {
            return (byte[]) this.archive.clone();
        }

        public byte[] scenario(int house, int missionNumber) {
            if (house < 0 || house >= 5 || missionNumber < 1 || missionNumber > 9) {
                throw new IllegalArgumentException("R82C mission identity");
            }
            int i = missionNumber - 1;
            return Arrays.copyOfRange(this.archive, this.offsets[house][i], this.offsets[house][i] + DuneHackR82ScenarioContentExtractor.LENGTHS[house][i]);
        }

        public int romOffset(int house, int missionNumber) {
            if (house < 0 || house >= 5 || missionNumber < 1 || missionNumber > 9) {
                throw new IllegalArgumentException("R82C mission identity");
            }
            return this.romOffsets[house][missionNumber - 1];
        }
    }

    private DuneHackR82ScenarioContentExtractor() {
    }

    public static Result extract(byte[] rom, DuneHackR82Probe.Result probe) throws IOException {
        if (rom == null || probe == null || probe.family != DuneHackR82Probe.Family.R82C_PLUS || rom.length < 1413318 || rom.length > 16777216 || rom[256] != 83 || rom[257] != 69 || rom[258] != 71 || rom[259] != 65) {
            throw new IOException("Not a verified R82C+ normalized ROM");
        }
        if (!AUDITED_SAMPLE_SHA256.equals(DuneHackR82NeutralContentExtractor.sha256(rom))) {
            throw new IOException("R82C+ scenario layout has not yet been audited for this ROM");
        }
        int[][] addresses = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 5, 9);
        int next = 1413302;
        for (int house : STORAGE_ORDER) {
            for (int i = 0; i < 9; i++) {
                int address = be32(rom, (((house * 9) + i) * 4) + POINTER_TABLE);
                int length = LENGTHS[house][i];
                if (address != next || (address & 1) != 0 || length <= 16 || address > rom.length - length || !hasRecordHeader(rom, address)) {
                    throw new IOException("R82C+ scenario pointer/payload mismatch");
                }
                addresses[house][i] = address;
                next += length;
            }
        }
        byte[] data = new byte[next - 1413302];
        int cursor = 0;
        for (int h = 0; h < 5; h++) {
            for (int i2 = 0; i2 < 9; i2++) {
                System.arraycopy(rom, addresses[h][i2], data, cursor, LENGTHS[h][i2]);
                cursor += LENGTHS[h][i2];
            }
        }
        return new Result(data, addresses);
    }

    private static boolean hasRecordHeader(byte[] bytes, int start) {
        if (start < 0 || start > bytes.length - 16 || be32Unchecked(bytes, start) != 14 || bytes[start + 12] != 46 || bytes[start + 13] != 87 || bytes[start + 14] != 83 || bytes[start + 15] != 65) {
            return false;
        }
        for (int i = 4; i < 12; i++) {
            int c = bytes[start + i] & 255;
            if (c < 48 || ((c > 57 && c < 65) || c > 90)) {
                return false;
            }
        }
        return true;
    }

    private static int be32Unchecked(byte[] bytes, int at) {
        return ((bytes[at] & 255) << 24) | ((bytes[at + 1] & 255) << 16) | ((bytes[at + 2] & 255) << 8) | (bytes[at + 3] & 255);
    }

    private static int be32(byte[] data, int at) throws IOException {
        if (at < 0 || at > data.length - 4) {
            throw new IOException("R82C pointer table truncated");
        }
        return ((data[at] & 255) << 24) | ((data[at + 1] & 255) << 16) | ((data[at + 2] & 255) << 8) | (data[at + 3] & 255);
    }
}
