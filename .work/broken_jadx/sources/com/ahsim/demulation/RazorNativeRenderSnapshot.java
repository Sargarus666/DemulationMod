package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82ScenarioRecordDecoder;
import com.ahsim.demulation.DuneHackR82cRazorMissionBundle;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class RazorNativeRenderSnapshot {
    private static final int HEADER = 16;
    private static final int MAGIC = 1381651027;
    private static final int OBJECT_WORDS = 5;

    private static native int[] nativeRenderData(byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, int i5);

    static {
        System.loadLibrary("dunehost");
    }

    private RazorNativeRenderSnapshot() {
    }

    public static final class ObjectRecord {
        public final int owner;
        public final int sourceIndex;
        public final int type;
        public final boolean unit;

        /* renamed from: x */
        public final int f44x;

        /* renamed from: y */
        public final int f45y;

        private ObjectRecord(int[] data, int p) {
            this.unit = data[p] == 1;
            this.owner = data[p + 1];
            this.type = data[p + 2];
            this.f44x = data[p + 3] >>> 16;
            this.f45y = data[p + 3] & 65535;
            this.sourceIndex = data[p + 4];
        }
    }

    public static final class Snapshot {
        public final boolean artworkReady;
        public final boolean directTerrain;
        public final boolean expandedGrid;
        public final boolean gameplayReady;
        public final int height;
        public final int house;
        public final int mission;
        private final byte[] rawSourceMap;
        private final ObjectRecord[] records;
        public final int storedSide;
        public final int stride;
        public final int width;

        private Snapshot(int[] values, byte[] map) {
            this.gameplayReady = false;
            this.artworkReady = false;
            this.house = values[3];
            this.mission = values[4];
            this.storedSide = values[5];
            this.stride = values[6];
            this.width = values[7];
            this.height = values[8];
            this.directTerrain = (values[2] & 1) != 0;
            this.expandedGrid = (4 & values[2]) != 0;
            this.rawSourceMap = (byte[]) map.clone();
            this.records = new ObjectRecord[values[10] + values[11]];
            int start = values[15];
            for (int i = 0; i < this.records.length; i++) {
                this.records[i] = new ObjectRecord(values, (i * 5) + start);
            }
        }

        public int objectCount() {
            return this.records.length;
        }

        public int rawMapBytes() {
            return this.rawSourceMap.length;
        }

        public ObjectRecord objectAt(int index) {
            return this.records[index];
        }

        public byte[] originalMapCopy() {
            return (byte[]) this.rawSourceMap.clone();
        }

        public int sourceTile(int x, int y) {
            if (!this.directTerrain || x < 0 || y < 0 || x >= this.width || y >= this.height || x >= this.storedSide || y >= this.storedSide) {
                return -1;
            }
            return this.rawSourceMap[(this.storedSide * y) + x] & 255;
        }
    }

    public static Snapshot prepare(DuneHackR82cRazorMissionBundle.Mission mission) throws IOException {
        int i;
        DuneHackR82cRazorMissionBundle.Mission mission2 = mission;
        if (mission2 == null) {
            throw new IOException("Razor render source unavailable");
        }
        Objects.requireNonNull(mission2);
        byte[] map = mission2.mapBytes();
        byte[] scene = mission2.scenarioBytes();
        DuneHackR82ScenarioRecordDecoder.Document doc = DuneHackR82ScenarioRecordDecoder.decode(scene);
        DuneHackR82ScenarioIdentityAudit.auditDocument(doc);
        int[] data = nativeRenderData(map, scene, mission2.house, mission2.mission, mission2.storedMapSide, mission2.scenarioMapWidth, mission2.scenarioMapHeight);
        int unitCount = 0;
        int buildingCount = 0;
        ArrayList<DuneHackR82ScenarioRecordDecoder.Record> units = new ArrayList<>();
        ArrayList<DuneHackR82ScenarioRecordDecoder.Record> buildings = new ArrayList<>();
        for (DuneHackR82ScenarioRecordDecoder.Record r : doc.records()) {
            if (r.section == 8) {
                units.add(r);
            } else if (r.section == 9 && r.index == 73) {
                buildings.add(r);
            }
        }
        if (data != null && data.length >= 16 && data[0] == MAGIC) {
            int i2 = 1;
            if (data[1] == 1) {
                int i3 = 3;
                if (data[3] == mission2.house && data[4] == mission2.mission && data[5] == mission2.storedMapSide) {
                    int p = 128;
                    if (data[6] == (mission2.storedMapSide == 128 ? 128 : 64) && data[7] == mission2.scenarioMapWidth && data[8] == mission2.scenarioMapHeight && data[9] == map.length && data[10] == units.size() && data[11] == buildings.size() && data[14] == 16 && data[15] == map.length + 16 && data.length == map.length + 16 + ((units.size() + buildings.size()) * 5)) {
                        int i4 = data[2];
                        if (mission2.storedMapSide == 32) {
                            i = 2;
                        } else {
                            i = (mission2.storedMapSide == 128 ? 4 : 0) | 1;
                        }
                        if (i4 == i) {
                            for (int i5 = 0; i5 < map.length; i5++) {
                                if (data[i5 + 16] != (map[i5] & 255)) {
                                    throw new IOException("Razor raw terrain altered");
                                }
                            }
                            int p2 = data[15];
                            Iterator<DuneHackR82ScenarioRecordDecoder.Record> it = units.iterator();
                            while (it.hasNext()) {
                                DuneHackR82ScenarioRecordDecoder.Record r2 = it.next();
                                int source = r2.value(i3);
                                int stride = mission2.storedMapSide == p ? p : 64;
                                int x = source % stride;
                                int y = source / stride;
                                int p3 = p2 + 1;
                                if (data[p2] == i2) {
                                    int p4 = p3 + 1;
                                    if (data[p3] == r2.value(0)) {
                                        int p5 = p4 + 1;
                                        if (data[p4] == r2.value(1)) {
                                            p4 = p5 + 1;
                                            if (data[p5] == ((x << 16) | y)) {
                                                int p6 = p4 + 1;
                                                if (data[p4] == r2.index) {
                                                    unitCount++;
                                                    p2 = p6;
                                                    p = 128;
                                                    i2 = 1;
                                                    i3 = 3;
                                                }
                                            }
                                        }
                                    }
                                }
                                throw new IOException("Razor source unit render order mismatch");
                            }
                            Iterator<DuneHackR82ScenarioRecordDecoder.Record> it2 = buildings.iterator();
                            while (it2.hasNext()) {
                                DuneHackR82ScenarioRecordDecoder.Record r3 = it2.next();
                                int source2 = r3.value(4);
                                int stride2 = mission2.storedMapSide == 128 ? 128 : 64;
                                int x2 = source2 % stride2;
                                int y2 = source2 / stride2;
                                int p7 = p2 + 1;
                                if (data[p2] == 2) {
                                    p2 = p7 + 1;
                                    if (data[p7] == r3.value(1)) {
                                        int p8 = p2 + 1;
                                        if (data[p2] == r3.value(2)) {
                                            int p9 = p8 + 1;
                                            if (data[p8] == ((x2 << 16) | y2)) {
                                                p2 = p9 + 1;
                                                if (data[p9] == 0) {
                                                    buildingCount++;
                                                    mission2 = mission;
                                                }
                                            }
                                        }
                                    }
                                }
                                throw new IOException("Razor source building render order mismatch");
                            }
                            if (p2 != data.length || unitCount + buildingCount != data[10] + data[11]) {
                                throw new IOException("Razor render snapshot truncated");
                            }
                            return new Snapshot(data, map);
                        }
                    }
                }
            }
        }
        throw new IOException("Razor native render layout mismatch");
    }

    public static final class Summary {
        public final int compactPending;
        public final int directMaps;
        public final boolean gameplayReady;
        public final int grids128;
        public final int missions;
        public final int objects;

        private Summary(int m, int d, int c, int e, int o) {
            this.gameplayReady = false;
            this.missions = m;
            this.directMaps = d;
            this.compactPending = c;
            this.grids128 = e;
            this.objects = o;
        }
    }

    public static Summary inspect(DuneHackR82cRazorMissionBundle.Result bundle) throws IOException {
        if (bundle == null) {
            throw new IOException("Unsafe Razor render source");
        }
        Objects.requireNonNull(bundle);
        Objects.requireNonNull(bundle);
        int n = 0;
        int direct = 0;
        int compact = 0;
        int wide = 0;
        int objects = 0;
        for (DuneHackR82cRazorMissionBundle.Mission mission : bundle.allMissions()) {
            Snapshot s = prepare(mission);
            n++;
            objects += s.objectCount();
            if (s.directTerrain) {
                direct++;
            } else {
                compact++;
            }
            if (s.expandedGrid) {
                wide++;
            }
        }
        if (n != bundle.missionsDecoded || wide != bundle.expandedMapMissions) {
            throw new IOException("Razor render count mismatch");
        }
        return new Summary(n, direct, compact, wide, objects);
    }
}
