package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82ScenarioRecordDecoder;
import java.io.IOException;
import java.lang.reflect.Array;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class DuneHackR82cRazorMissionBundle {
    private static final int ENTRIES = 45;
    public static final int HOUSES = 5;
    private static final int[] MAP_STORAGE_INDEX = {2, 0, 1, 4, 3};
    public static final int MAP_TABLE = 539652;
    public static final int MISSIONS = 9;
    private static final String RAZOR_ONE_SHA = "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a";
    private static final String RAZOR_TWO_SHA = "e32b1846ff38fac3163caa03b204148e60a19371131a8806fc1937c7aff383af";
    public static final int SCENARIO_TABLE = 539832;

    public static final class Mission {
        public final boolean canLaunchWithOriginalWorld;
        public final int house;
        private final byte[] map;
        public final int mapRomOffset;
        public final String mapSha256;
        public final int mission;
        public final boolean needsExpandedMapRuntime;
        private final byte[] scenario;
        public final int scenarioMapHeight;
        public final int scenarioMapWidth;
        public final int scenarioRecordCount;
        public final int scenarioRomOffset;
        public final String scenarioSha256;
        public final int storedMapSide;
        public final int structureCount;
        public final int teamCount;
        public final int unitCount;

        private Mission(int h, int m, int side, int w, int height, int mp, int sp, byte[] mapBytes, byte[] scenarioBytes, DuneHackR82ScenarioRecordDecoder.Document decoded) throws IOException {
            this.canLaunchWithOriginalWorld = false;
            this.house = h;
            this.mission = m;
            this.storedMapSide = side;
            this.scenarioMapWidth = w;
            this.scenarioMapHeight = height;
            this.mapRomOffset = mp;
            this.scenarioRomOffset = sp;
            this.scenarioRecordCount = decoded.recordCount;
            this.unitCount = decoded.unitCount;
            this.structureCount = decoded.structureCount;
            this.teamCount = decoded.teamCount;
            this.needsExpandedMapRuntime = w > 64 || height > 64 || side > 64;
            this.map = (byte[]) mapBytes.clone();
            this.scenario = (byte[]) scenarioBytes.clone();
            this.mapSha256 = DuneHackR82cRazorMissionBundle.digest(this.map);
            this.scenarioSha256 = DuneHackR82cRazorMissionBundle.digest(this.scenario);
        }

        public byte[] mapBytes() {
            return (byte[]) this.map.clone();
        }

        public byte[] scenarioBytes() {
            return (byte[]) this.scenario.clone();
        }
    }

    public static final class Result {
        public final BuildingData572 buildingData572;
        public final int expandedMapMissions;
        public final boolean extendedUnitAndHouseAbiReady;
        public final boolean gameplayReady;
        private final Mission[][] missions;
        public final int missionsDecoded;
        public final boolean nativeEmcReady;
        public final boolean nativeTerrainReaderReady;
        public final String sourceSha256;
        private final byte[] terrainLookup561;
        public final int unsupportedScenarioSlots;
        public final int variant;

        private Result(int variant, String sha, Mission[][] missions, int expanded, int valid, byte[] lookup, BuildingData572 buildingData) {
            this.gameplayReady = false;
            this.nativeTerrainReaderReady = false;
            this.nativeEmcReady = false;
            this.extendedUnitAndHouseAbiReady = false;
            this.buildingData572 = buildingData;
            this.terrainLookup561 = (byte[]) lookup.clone();
            this.variant = variant;
            this.sourceSha256 = sha;
            this.missions = missions;
            this.missionsDecoded = valid;
            this.expandedMapMissions = expanded;
            this.unsupportedScenarioSlots = 45 - valid;
        }

        public byte[] terrainLookup561() {
            return (byte[]) this.terrainLookup561.clone();
        }

        public Mission mission(int house, int number) {
            if (house < 0 || house >= 5 || number < 1 || number > 9) {
                throw new IllegalArgumentException("Invalid Razor house/mission");
            }
            Mission entry = this.missions[house][number - 1];
            if (entry == null) {
                throw new IllegalStateException("Razor scenario slot has not passed decoder validation");
            }
            return entry;
        }

        public List<Mission> allMissions() {
            ArrayList<Mission> result = new ArrayList<>(45);
            for (int h = 0; h < 5; h++) {
                for (int m = 0; m < 9; m++) {
                    if (this.missions[h][m] != null) {
                        result.add(this.missions[h][m]);
                    }
                }
            }
            return Collections.unmodifiableList(result);
        }
    }

    public static final class BuildingData572 {
        public static final int BANK_OFFSET = 537088;
        public static final int RECORDS = 19;
        public static final int RECORD_BYTES = 102;
        public static final int REFINERY = 12;
        public static final int SCHEMA = 572;
        private static final String SHA1 = "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a";
        private static final String SHA2 = "e32b1846ff38fac3163caa03b204148e60a19371131a8806fc1937c7aff383af";
        private final Record[] records;
        private static final int[] WIDTH = {1, 2, 1, 2, 2, 3, 3};
        private static final int[] HEIGHT = {1, 1, 2, 2, 3, 2, 3};

        public static final class Record {
            public final int cost;
            public final int height;
            public final int layoutId;
            public final int maxHp;
            public final int powerUsage;
            public final int productionWord;
            public final int storage;
            public final int tiles;
            public final int type;
            public final int width;

            private Record(int t, int hp, int c, int time, int layout, int power, int storage) {
                this.type = t;
                this.maxHp = hp;
                this.cost = c;
                this.productionWord = time;
                this.layoutId = layout;
                this.width = BuildingData572.WIDTH[layout];
                this.height = BuildingData572.HEIGHT[layout];
                this.tiles = this.width * this.height;
                this.powerUsage = power;
                this.storage = storage;
            }
        }

        private BuildingData572(Record[] records) {
            this.records = records;
        }

        public Record get(int type) {
            if (type < 0 || type >= 19) {
                throw new IllegalArgumentException("structure type");
            }
            return this.records[type];
        }

        private static int u16(byte[] data, int at) {
            return ((data[at] & 255) << 8) | (data[at + 1] & 255);
        }

        public static BuildingData572 fromVerifiedRazor(byte[] rom, int variant) throws IOException {
            if (rom != null && (variant == 1 || variant == 2)) {
                if (rom.length == (variant == 1 ? 3 : 4) * RazorTerrainAtlas.HEIGHT * RazorTerrainAtlas.HEIGHT && 539026 <= rom.length) {
                    try {
                        byte[] hash = MessageDigest.getInstance("SHA-256").digest(rom);
                        StringBuilder hex = new StringBuilder(64);
                        for (byte c : hash) {
                            hex.append(Character.forDigit((c >>> 4) & 15, 16));
                            hex.append(Character.forDigit(c & 15, 16));
                        }
                        if (!(variant == 1 ? "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a" : "e32b1846ff38fac3163caa03b204148e60a19371131a8806fc1937c7aff383af").equals(hex.toString())) {
                            throw new IOException("R82C building source SHA-256 not audited");
                        }
                        Record[] rows = new Record[19];
                        for (int type = 0; type < 19; type++) {
                            int p = (type * 102) + BANK_OFFSET;
                            int hp = u16(rom, p + 16);
                            int cost = u16(rom, p + 22);
                            int production = u16(rom, p + 24);
                            int layout = u16(rom, p + 60);
                            if (layout >= WIDTH.length || cost == 0 || cost > 20000 || production > 2000 || hp > 20000 || (type == 12 && (cost != 1000 || hp != 2000 || production != 20 || layout != 5))) {
                                throw new IOException("R82C StructureInfo bank differs from audited Razor data");
                            }
                            rows[type] = new Record(type, hp, cost, production, layout, (short) u16(rom, p + 58), u16(rom, p + 56));
                        }
                        if (rows[0].cost != 10 || rows[2].layoutId != 6 || rows[11].cost != 5000 || rows[18].cost != 500 || rows[12].storage != 1000) {
                            throw new IOException("Unrecognized R82C building table signature");
                        }
                        return new BuildingData572(rows);
                    } catch (NoSuchAlgorithmException e) {
                        throw new IOException("SHA-256 unavailable", e);
                    }
                }
            }
            throw new IOException("Unverified Razor StructureInfo source");
        }
    }

    private DuneHackR82cRazorMissionBundle() {
    }

    public static Result inspect(byte[] rom, String expectedSourceSha256) throws IOException {
        int h;
        int i;
        int detectFinalScenarioLength;
        if (rom == null || ((rom.length != 3145728 && rom.length != 4194304) || expectedSourceSha256 == null || !expectedSourceSha256.matches("[0-9a-fA-F]{64}") || rom[256] != 83 || rom[257] != 69 || rom[258] != 71 || rom[259] != 65)) {
            throw new IOException("Razor bundle requires normalized Genesis ROM");
        }
        String sha = digest(rom);
        if (!sha.equals(expectedSourceSha256.toLowerCase(Locale.US))) {
            throw new IOException("Razor ROM SHA-256 changed during campaign preparation");
        }
        int variant = "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a".equals(sha) ? 1 : "e32b1846ff38fac3163caa03b204148e60a19371131a8806fc1937c7aff383af".equals(sha) ? 2 : 0;
        if (variant == 0) {
            throw new IOException("Unknown Razor ROM is not a validated campaign layout");
        }
        int i2 = 45;
        int[] mapStarts = new int[45];
        int[] scenarioStarts = new int[45];
        for (int i3 = 0; i3 < 45; i3++) {
            mapStarts[i3] = be32(rom, (i3 * 4) + MAP_TABLE);
            scenarioStarts[i3] = be32(rom, (i3 * 4) + SCENARIO_TABLE);
        }
        int[] sortedScenario = (int[]) scenarioStarts.clone();
        Arrays.sort(sortedScenario);
        int i4 = 0;
        while (true) {
            int i5 = 44;
            int i6 = 540012;
            if (i4 < 45) {
                if ((sortedScenario[i4] & 1) != 0 || sortedScenario[i4] <= 540012 || sortedScenario[i4] > rom.length - 20 || ((i4 > 0 && sortedScenario[i4] <= sortedScenario[i4 - 1]) || ((variant == 1 && !hasScenarioHeader(rom, sortedScenario[i4])) || (variant == 2 && i4 < 44 && !hasScenarioHeader(rom, sortedScenario[i4]))))) {
                    break;
                }
                i4++;
            } else {
                int[] mapSizes = new int[45];
                int[][] mapDimensions = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 45, 2);
                int i7 = 0;
                while (i7 < i2) {
                    int start = mapStarts[i7];
                    int end = i7 == i5 ? sortedScenario[0] : mapStarts[i7 + 1];
                    int len = end - start;
                    if ((start & 1) == 0 && start > i6) {
                        if (end <= rom.length && (len == 1024 || len == 4096 || len == 16384)) {
                            if ((variant != 1 || len != 16384) && (variant != 2 || len == 16384)) {
                                int maxX = variant == 2 ? 127 : rom[(i7 * 2) + 539562] & 255;
                                int maxY = variant == 2 ? 127 : rom[(i7 * 2) + 539562 + 1] & 255;
                                if (maxX < 31 || maxX > 127 || maxY < 31 || maxY > 127) {
                                    throw new IOException("Razor map bounds invalid");
                                }
                                mapSizes[i7] = len;
                                mapDimensions[i7][0] = maxX + 1;
                                mapDimensions[i7][1] = maxY + 1;
                                i7++;
                                i2 = 45;
                                i5 = 44;
                                i6 = 540012;
                            } else {
                                throw new IOException("Razor sample map format changed");
                            }
                        }
                    }
                    throw new IOException("Razor map pointer/size mismatch at " + i7);
                }
                int[] lengths = new int[45];
                int i8 = 0;
                for (int i9 = 45; i8 < i9; i9 = 45) {
                    int pointer = scenarioStarts[i8];
                    int index = Arrays.binarySearch(sortedScenario, pointer);
                    if (index < 0) {
                        throw new IOException("Missing scenario pointer");
                    }
                    if (index + 1 < i9) {
                        detectFinalScenarioLength = sortedScenario[index + 1] - pointer;
                        i = 2;
                    } else {
                        i = 2;
                        detectFinalScenarioLength = variant == 2 ? 0 : detectFinalScenarioLength(rom, pointer);
                    }
                    int length = detectFinalScenarioLength;
                    if (length == 0 && variant == i && i8 == 35) {
                        lengths[i8] = 0;
                    } else {
                        if (length < 20 || length > 65536 || pointer > rom.length - length || (length & 1) != 0) {
                            throw new IOException("Razor scenario bounds invalid");
                        }
                        lengths[i8] = length;
                    }
                    i8++;
                }
                int i10 = 9;
                Mission[][] result = (Mission[][]) Array.newInstance((Class<?>) Mission.class, 5, 9);
                int expanded = 0;
                int expanded2 = 0;
                int h2 = 0;
                for (int i11 = 5; h2 < i11; i11 = 5) {
                    int m = 0;
                    int valid = expanded2;
                    int valid2 = expanded;
                    while (m < i10) {
                        int scenIdx = (h2 * 9) + m;
                        int mapIdx = (MAP_STORAGE_INDEX[h2] * i10) + m;
                        if (lengths[scenIdx] == 0) {
                            h = h2;
                        } else {
                            int size = mapSizes[mapIdx];
                            int side = size == 1024 ? 32 : size == 4096 ? 64 : 128;
                            int width = mapDimensions[mapIdx][0];
                            int height = mapDimensions[mapIdx][1];
                            byte[] map = Arrays.copyOfRange(rom, mapStarts[mapIdx], mapStarts[mapIdx] + size);
                            byte[] scen = Arrays.copyOfRange(rom, scenarioStarts[scenIdx], scenarioStarts[scenIdx] + lengths[scenIdx]);
                            try {
                                DuneHackR82ScenarioRecordDecoder.Document doc = DuneHackR82ScenarioRecordDecoder.decode(scen);
                                int h3 = h2;
                                Mission mission = new Mission(h3, m + 1, side, width, height, mapStarts[mapIdx], scenarioStarts[scenIdx], map, scen, doc);
                                h = h3;
                                if (mission.needsExpandedMapRuntime) {
                                    valid2++;
                                }
                                result[h][m] = mission;
                                valid++;
                            } catch (IOException malformed) {
                                h = h2;
                                if (variant != 2 || h != 3 || m != 8) {
                                    throw malformed;
                                }
                            }
                        }
                        m++;
                        h2 = h;
                        i10 = 9;
                    }
                    h2++;
                    expanded = valid2;
                    expanded2 = valid;
                    i10 = 9;
                }
                if ((rom[586] & 255) == 16 && (rom[587] & 255) == 59 && (rom[588] & 255) == 0 && (rom[589] & 255) == 28) {
                    byte[] terrainLookup561 = Arrays.copyOfRange(rom, 616, 872);
                    BuildingData572 buildingData = BuildingData572.fromVerifiedRazor(rom, variant);
                    int valid3 = expanded2;
                    return new Result(variant, sha, result, expanded, valid3, terrainLookup561, buildingData);
                }
                throw new IOException("Razor 561 terrain-table read opcode changed");
            }
        }
        throw new IOException("Razor scenario pointer bank not uniquely ordered");
    }

    private static int detectFinalScenarioLength(byte[] rom, int start) throws IOException {
        int limit = Math.min(rom.length - start, 65536);
        for (int len = 20; len <= limit; len += 2) {
            if ((rom[(start + len) - 2] & 255) == 255 && (rom[(start + len) - 1] & 255) == 255) {
                try {
                    DuneHackR82ScenarioRecordDecoder.decode(Arrays.copyOfRange(rom, start, start + len));
                    return len;
                } catch (IOException e) {
                }
            }
        }
        throw new IOException("Last Razor scenario has no complete decoded terminator");
    }

    private static boolean hasScenarioHeader(byte[] rom, int p) {
        return be32(rom, p) == 14 && rom[p + 12] == 46 && rom[p + 13] == 87 && rom[p + 14] == 83 && rom[p + 15] == 65;
    }

    private static int be32(byte[] b, int p) {
        return ((b[p] & 255) << 24) | ((b[p + 1] & 255) << 16) | ((b[p + 2] & 255) << 8) | (b[p + 3] & 255);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String digest(byte[] b) throws IOException {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] d = md.digest(b);
            StringBuilder s = new StringBuilder(64);
            for (byte x : d) {
                s.append(Character.forDigit((x >>> 4) & 15, 16));
                s.append(Character.forDigit(x & 15, 16));
            }
            return s.toString();
        } catch (NoSuchAlgorithmException ex) {
            throw new IOException("SHA-256 unavailable", ex);
        }
    }
}
