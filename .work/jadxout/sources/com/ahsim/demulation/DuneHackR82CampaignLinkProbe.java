package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82MapContentExtractor;
import com.ahsim.demulation.DuneHackR82Probe;
import com.ahsim.demulation.DuneHackR82ScenarioContentExtractor;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.HashSet;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class DuneHackR82CampaignLinkProbe {
    private static final int ENTRIES = 45;
    public static final int HOUSES = 5;
    private static final int MAP_BOUNDS_BYTES = 90;
    private static final int MAX_ROM = 16777216;
    public static final int MISSIONS = 9;
    private static final int TABLE_BYTES = 180;

    public enum Confidence {
        UNSUPPORTED,
        STRUCTURAL_CANDIDATE,
        AUDITED_REFERENCE
    }

    public static final class Pair {
        public final int house;
        public final int mapMaxX;
        public final int mapMaxY;
        public final int mapRomOffset;
        public final String mapSha256;
        public final int mapStoredBytes;
        public final int mission;
        public final int scenarioBytes;
        public final int scenarioRomOffset;
        public final String scenarioSha256;

        private Pair(int house, int mission, DuneHackR82MapContentExtractor.Result maps, DuneHackR82ScenarioContentExtractor.Result scenarios) throws IOException {
            this.house = house;
            this.mission = mission;
            byte[] map = maps.map(house, mission);
            byte[] scenario = scenarios.scenario(house, mission);
            this.mapRomOffset = maps.romOffset(house, mission);
            this.mapStoredBytes = map.length;
            this.mapMaxX = maps.scenarioMaxX(house, mission);
            this.mapMaxY = maps.scenarioMaxY(house, mission);
            this.scenarioRomOffset = scenarios.romOffset(house, mission);
            this.scenarioBytes = scenario.length;
            this.mapSha256 = DuneHackR82NeutralContentExtractor.sha256(map);
            this.scenarioSha256 = DuneHackR82NeutralContentExtractor.sha256(scenario);
        }
    }

    public static final class Result {
        public final Confidence confidence;
        public final String evidence;
        public final int mapPointerTable;
        private final Pair[][] pairs;
        public final int scenarioPointerTable;
        public final String sourceSha256;
        public final int structuralMapSlots;
        public final int structuralScenarioSlots;

        private Result(Confidence confidence, String sourceSha256, int mapPointerTable, int scenarioPointerTable, String evidence, Pair[][] pairs) {
            this.confidence = confidence;
            this.sourceSha256 = sourceSha256;
            this.mapPointerTable = mapPointerTable;
            this.scenarioPointerTable = scenarioPointerTable;
            this.structuralMapSlots = confidence == Confidence.UNSUPPORTED ? 0 : 45;
            this.structuralScenarioSlots = confidence != Confidence.UNSUPPORTED ? 45 : 0;
            this.evidence = evidence;
            this.pairs = pairs;
        }

        public Pair pair(int house, int mission) {
            if (house < 0 || house >= 5 || mission < 1 || mission > 9) {
                throw new IllegalArgumentException("R82C house/mission outside 5x9");
            }
            if (this.pairs == null) {
                return null;
            }
            return this.pairs[house][mission - 1];
        }

        public boolean gameplayReady() {
            return false;
        }
    }

    private DuneHackR82CampaignLinkProbe() {
    }

    public static Result inspect(byte[] rom, DuneHackR82Probe.Result family) throws IOException {
        if (rom == null || family == null || !family.recognized() || rom.length < 262144 || rom.length > 16777216 || rom[256] != 83 || rom[257] != 69 || rom[258] != 71 || rom[259] != 65) {
            return new Result(Confidence.UNSUPPORTED, "", -1, -1, "ROM not recognized as a normalized R82C-family Genesis image", null);
        }
        String fingerprint = DuneHackR82NeutralContentExtractor.sha256(rom);
        int table = findUniqueMapAndScenarioTables(rom);
        if (table == -2) {
            return new Result(Confidence.UNSUPPORTED, fingerprint, -1, -1, "Ambiguous multiple 45-map/45-scenario structures", null);
        }
        if (table < 0) {
            return new Result(Confidence.UNSUPPORTED, fingerprint, -1, -1, "No independently consistent paired pointer-table layout", null);
        }
        if (family.exampleFingerprintMatched) {
            DuneHackR82MapContentExtractor.Result maps = DuneHackR82MapContentExtractor.extract(rom, family);
            DuneHackR82ScenarioContentExtractor.Result scenarios = DuneHackR82ScenarioContentExtractor.extract(rom, family);
            if (table != 539648) {
                throw new IOException("Audited image did not match structural map table");
            }
            Pair[][] rows = (Pair[][]) Array.newInstance((Class<?>) Pair.class, 5, 9);
            for (int h = 0; h < 5; h++) {
                for (int m = 1; m <= 9; m++) {
                    rows[h][m - 1] = new Pair(h, m, maps, scenarios);
                }
            }
            return new Result(Confidence.AUDITED_REFERENCE, fingerprint, table, table + TABLE_BYTES, "45 paired entries verified by ASM and exact ROM SHA-256", rows);
        }
        return new Result(Confidence.STRUCTURAL_CANDIDATE, fingerprint, table, table + TABLE_BYTES, "45 map + 45 scenario pointers structurally consistent; house mapping and mechanics unaudited", null);
    }

    private static int findUniqueMapAndScenarioTables(byte[] rom) {
        int unique = -1;
        int upper = Math.min(rom.length - 360, RazorTerrainRuntimeSnapshot.RAZOR_TWO_RAM_BASE);
        for (int start = 576; start <= upper; start += 4) {
            if (looksLikePairedTables(rom, start)) {
                if (unique >= 0) {
                    return -2;
                }
                unique = start;
            }
        }
        return unique;
    }

    private static boolean looksLikePairedTables(byte[] rom, int start) {
        int first = be32(rom, start);
        if ((first & 1) != 0 || first <= start + RazorTerrainVisualSource.DESCRIPTOR_COUNT || first >= rom.length - RazorTerrainAtlas.HEIGHT) {
            return false;
        }
        int previous = first;
        for (int i = 1; i < 45; i++) {
            int next = be32(rom, (i * 4) + start);
            int delta = next - previous;
            if (delta != 1024 && delta != 4096) {
                return false;
            }
            previous = next;
        }
        int i2 = start + TABLE_BYTES;
        int firstScenario = Integer.MAX_VALUE;
        HashSet<Integer> starts = new HashSet<>();
        for (int i3 = 0; i3 < 45; i3++) {
            int address = be32(rom, (i3 * 4) + i2);
            if ((address & 1) != 0 || address < previous + RazorTerrainAtlas.HEIGHT || address > rom.length - 16 || !isScenarioHeader(rom, address) || !starts.add(Integer.valueOf(address))) {
                return false;
            }
            if (i3 % 9 != 0 && address <= be32(rom, ((i3 - 1) * 4) + i2)) {
                return false;
            }
            firstScenario = Math.min(firstScenario, address);
        }
        int i4 = firstScenario - previous;
        if ((i4 != 1024 && i4 != 4096) || start < MAP_BOUNDS_BYTES) {
            return false;
        }
        for (int i5 = 0; i5 < 45; i5++) {
            int x = rom[(start - 90) + (i5 * 2)] & 255;
            int y = rom[(start - 90) + (i5 * 2) + 1] & 255;
            if (x < 31 || x > 127 || y < 31 || y > 127) {
                return false;
            }
        }
        return true;
    }

    private static boolean isScenarioHeader(byte[] rom, int pos) {
        if (be32(rom, pos) != 14 || rom[pos + 12] != 46 || rom[pos + 13] != 87 || rom[pos + 14] != 83 || rom[pos + 15] != 65) {
            return false;
        }
        for (int j = 4; j < 12; j++) {
            int ch = rom[pos + j] & 255;
            if ((ch < 65 || ch > MAP_BOUNDS_BYTES) && (ch < 48 || ch > 57)) {
                return false;
            }
        }
        return true;
    }

    private static int be32(byte[] rom, int pos) {
        return ((rom[pos] & 255) << 24) | ((rom[pos + 1] & 255) << 16) | ((rom[pos + 2] & 255) << 8) | (rom[pos + 3] & 255);
    }

    public static String profileText(Result result) {
        if (result == null || result.confidence == Confidence.UNSUPPORTED) {
            throw new IllegalArgumentException("No usable R82C campaign layout");
        }
        StringBuilder out = new StringBuilder(15000);
        out.append("R82C_CAMPAIGN_PREVIEW_V1\nsource_sha256=").append(result.sourceSha256).append("\nconfidence=").append(result.confidence).append("\nmap_pointer_table=0x").append(Integer.toHexString(result.mapPointerTable).toUpperCase(Locale.US)).append("\nscenario_pointer_table=0x").append(Integer.toHexString(result.scenarioPointerTable).toUpperCase(Locale.US)).append("\nmap_slots=").append(result.structuralMapSlots).append("\nscenario_slots=").append(result.structuralScenarioSlots).append("\nnamed_pairs=").append(result.confidence == Confidence.AUDITED_REFERENCE ? 45 : 0).append("\nready=false\ngameplay=false\noverlay=false\nemc_compatible=unknown\n");
        if (result.confidence == Confidence.AUDITED_REFERENCE) {
            out.append("house,mission,map_offset,map_bytes,map_max_x,map_max_y,map_sha256,scenario_offset,scenario_bytes,scenario_sha256\n");
            for (int house = 0; house < 5; house++) {
                for (int mission = 1; mission <= 9; mission++) {
                    Pair pair = result.pair(house, mission);
                    out.append(house).append(',').append(mission).append(',').append(pair.mapRomOffset).append(',').append(pair.mapStoredBytes).append(',').append(pair.mapMaxX).append(',').append(pair.mapMaxY).append(',').append(pair.mapSha256).append(',').append(pair.scenarioRomOffset).append(',').append(pair.scenarioBytes).append(',').append(pair.scenarioSha256).append('\n');
                }
            }
        } else {
            out.append("WARNING: structural layout only; house and mission pairing NOT VERIFIED\n");
        }
        return out.toString();
    }
}
