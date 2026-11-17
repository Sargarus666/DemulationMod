package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82Probe;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class DuneHackR82MapContentExtractor {
    private static final String AUDITED_IMAGE_SHA256 = "09bfe4bef56c7642edef7dea47c41274bdcce595fd95fbb85e64af4d3308d0ce";
    private static final int BOUNDS_TABLE = 539558;
    public static final int END_PAYLOAD = 1413302;
    public static final int ENTRY_COUNT = 45;
    public static final int FIRST_PAYLOAD = 1259702;
    public static final int HOUSE_COUNT = 5;
    private static final int[] HOUSE_TO_STORAGE = {2, 0, 1, 4, 3};
    public static final int MAP_ARCHIVE_BYTES = 153600;
    public static final int MISSIONS_PER_HOUSE = 9;
    public static final int POINTER_TABLE = 539648;
    public static final int SCENARIO_BOUNDS_MAX_X = 63;
    public static final int SCENARIO_BOUNDS_MAX_Y = 63;

    public static final class Result {
        private final byte[] archive;
        public final String archiveSha256;
        public final int compactMaps;
        public final int fullMaps;
        private final int[] rawOffsets;

        private Result(byte[] bank, int[] rawMapOffsets) throws IOException {
            this.rawOffsets = new int[45];
            if (bank.length != 153600 || rawMapOffsets.length != 45) {
                throw new IOException("Map bank dimensions invalid");
            }
            this.archive = (byte[]) bank.clone();
            System.arraycopy(rawMapOffsets, 0, this.rawOffsets, 0, 45);
            this.archiveSha256 = DuneHackR82NeutralContentExtractor.sha256(this.archive);
            this.compactMaps = 10;
            this.fullMaps = 35;
        }

        public byte[] archive() {
            return (byte[]) this.archive.clone();
        }

        public byte[] map(int house, int mission) {
            int index = DuneHackR82MapContentExtractor.mapIndex(house, mission);
            int begin = this.rawOffsets[index] - DuneHackR82MapContentExtractor.FIRST_PAYLOAD;
            return Arrays.copyOfRange(this.archive, begin, DuneHackR82MapContentExtractor.rawMapSizeForIndex(index) + begin);
        }

        public int romOffset(int house, int mission) {
            return this.rawOffsets[DuneHackR82MapContentExtractor.mapIndex(house, mission)];
        }

        public int storedSide(int house, int mission) {
            return DuneHackR82MapContentExtractor.rawMapSizeForIndex(DuneHackR82MapContentExtractor.mapIndex(house, mission)) == 1024 ? 32 : 64;
        }

        public int scenarioMaxX(int house, int mission) {
            DuneHackR82MapContentExtractor.mapIndex(house, mission);
            return 63;
        }

        public int scenarioMaxY(int house, int mission) {
            DuneHackR82MapContentExtractor.mapIndex(house, mission);
            return 63;
        }
    }

    private DuneHackR82MapContentExtractor() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int mapIndex(int house, int mission) {
        if (house < 0 || house >= 5 || mission < 1 || mission > 9) {
            throw new IllegalArgumentException("R82C map house/mission out of bounds");
        }
        return ((HOUSE_TO_STORAGE[house] * 9) + mission) - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int rawMapSizeForIndex(int index) {
        return index % 9 < 2 ? RazorTerrainAtlas.HEIGHT : DuneHackR82ScenarioRecordDecoder.MAX_RECORDS;
    }

    private static int be32(byte[] data, int at) {
        return ((data[at] & 255) << 24) | ((data[at + 1] & 255) << 16) | ((data[at + 2] & 255) << 8) | (data[at + 3] & 255);
    }

    public static Result extract(byte[] rom, DuneHackR82Probe.Result probe) throws IOException {
        if (rom == null || probe == null || probe.family != DuneHackR82Probe.Family.R82C_PLUS || rom.length < 1413302 || rom.length > 16777216 || rom[256] != 83 || rom[257] != 69 || rom[258] != 71 || rom[259] != 65) {
            throw new IOException("Not a recognized R82C+ Genesis image");
        }
        if (!AUDITED_IMAGE_SHA256.equals(DuneHackR82NeutralContentExtractor.sha256(rom))) {
            throw new IOException("R82C map layout unaudited for this specific ROM");
        }
        for (int i = 0; i < 45; i++) {
            int at = (i * 2) + BOUNDS_TABLE;
            if ((rom[at] & 255) != 63 || (rom[at + 1] & 255) != 63) {
                throw new IOException("R82C scenario map bounds inconsistent with source layout");
            }
        }
        int cursor = FIRST_PAYLOAD;
        int[] positions = new int[45];
        for (int i2 = 0; i2 < 45; i2++) {
            int pointer = be32(rom, (i2 * 4) + POINTER_TABLE);
            int length = rawMapSizeForIndex(i2);
            if (pointer != cursor || (pointer & 1) != 0 || pointer > rom.length - length) {
                throw new IOException("R82C map pointer/size sequence mismatch at " + i2);
            }
            positions[i2] = pointer;
            cursor += length;
        }
        if (cursor != 1413302) {
            throw new IOException("R82C map bank overlaps another resource block");
        }
        return new Result(Arrays.copyOfRange(rom, FIRST_PAYLOAD, END_PAYLOAD), positions);
    }
}
