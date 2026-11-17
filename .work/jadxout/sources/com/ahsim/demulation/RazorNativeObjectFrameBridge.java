package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82ScenarioRecordDecoder;
import com.ahsim.demulation.RazorTerrainVisualSource;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class RazorNativeObjectFrameBridge implements AutoCloseable {
    public static final int BUILDING = 2;
    private static final int FIELDS = 7;
    private static final int HEADER = 12;
    private static final int MAGIC = 1381650246;
    private static final int MAX_OBJECTS = 1152;
    public static final int UNIT = 1;
    public final boolean gameplayReady = false;
    public final int groundRecords;
    private long handle;
    public final int house;
    private int lastSequence;
    public final int mission;
    public final int romVariant;
    public final int scenarioHeight;
    public final int scenarioWidth;
    private final int[] sourceRecords;
    public final String sourceSha256;
    public final int stride;
    public final int totalBuildings;
    public final int totalUnits;

    private static native void nativeClose(long j);

    private static native long nativeOpen(int i, int i2, int i3, int i4, int i5, int i6, int[] iArr);

    private static native int[] nativeRead(long j, int i, int i2, int i3, int i4);

    static {
        System.loadLibrary("dunehost");
    }

    private RazorNativeObjectFrameBridge(RazorTerrainVisualSource.Audit audit, int h, int m) throws IOException {
        int kind;
        int owner;
        int packed;
        int packed2;
        int i = 0;
        if (audit == null) {
            throw new IOException("Razor object frame requires authenticated offline ROM");
        }
        Objects.requireNonNull(audit);
        Objects.requireNonNull(audit);
        RazorTerrainVisualSource.Audit.MapInfo map = audit.mapInfo(h, m);
        this.romVariant = audit.romVariant();
        this.house = h;
        this.mission = m;
        int i2 = 1;
        this.stride = this.romVariant == 1 ? 64 : 128;
        this.scenarioWidth = map.scenarioWidth;
        this.scenarioHeight = map.scenarioHeight;
        this.sourceSha256 = audit.romSourceSha256();
        int i3 = 2;
        if ((this.romVariant == 1 || this.romVariant == 2) && (map.storedSide == 32 || map.storedSide == 64 || map.storedSide == 128)) {
            if (this.scenarioWidth <= this.stride && this.scenarioHeight <= this.stride) {
                DuneHackR82ScenarioRecordDecoder.Document scenario = audit.initialObjectScenario(h, m);
                List<Integer> raw = new ArrayList<>();
                int units = 0;
                int buildings = 0;
                int ground = 0;
                for (DuneHackR82ScenarioRecordDecoder.Record r : scenario.records()) {
                    if (r.section == 8) {
                        kind = 1;
                        owner = r.value(i);
                        int type = r.value(i2);
                        int packed3 = r.value(3);
                        units++;
                        packed = packed3;
                        packed2 = type;
                    } else {
                        int packed4 = r.section;
                        if (packed4 != 9 || r.index != 73) {
                            RazorTerrainVisualSource.Audit.MapInfo map2 = map;
                            if (r.section != 9 || r.index != 71) {
                                map = map2;
                                i = 0;
                                i2 = 1;
                                i3 = 2;
                            } else {
                                ground++;
                                map = map2;
                                i = 0;
                                i2 = 1;
                                i3 = 2;
                            }
                        } else {
                            kind = 2;
                            owner = r.value(i2);
                            int type2 = r.value(i3);
                            int packed5 = r.value(4);
                            buildings++;
                            packed = packed5;
                            packed2 = type2;
                        }
                    }
                    int x = packed % this.stride;
                    int y = packed / this.stride;
                    if (owner >= 0) {
                        RazorTerrainVisualSource.Audit.MapInfo map3 = map;
                        if (owner < 5 && packed2 >= 0) {
                            if (packed2 < (kind == 1 ? 32 : 19) && x < this.scenarioWidth && y < this.scenarioHeight) {
                                int type3 = packed2;
                                if (raw.size() / 7 < MAX_OBJECTS) {
                                    int[] values = {kind, r.index, owner, type3, x, y, packed};
                                    for (int value : values) {
                                        raw.add(Integer.valueOf(value));
                                    }
                                    map = map3;
                                    i = 0;
                                    i2 = 1;
                                    i3 = 2;
                                }
                            }
                        }
                    }
                    throw new IOException("Razor scenario has invalid initial object location/identity");
                }
                if (units != scenario.unitCount || buildings + ground != scenario.structureCount) {
                    throw new IOException("Razor initial object counts changed");
                }
                this.totalUnits = units;
                this.totalBuildings = buildings;
                this.groundRecords = ground;
                this.sourceRecords = new int[raw.size()];
                for (int i4 = 0; i4 < raw.size(); i4++) {
                    this.sourceRecords[i4] = raw.get(i4).intValue();
                }
                this.handle = nativeOpen(this.romVariant, this.house, this.mission, this.stride, this.scenarioWidth, this.scenarioHeight, (int[]) this.sourceRecords.clone());
                if (this.handle == 0) {
                    throw new IOException("Native Razor initial objects rejected source records");
                }
                return;
            }
        }
        throw new IOException("Razor object world grid unsupported");
    }

    public static RazorNativeObjectFrameBridge capture(RazorTerrainVisualSource.Audit audit, int house, int mission) throws IOException {
        return new RazorNativeObjectFrameBridge(audit, house, mission);
    }

    public static final class Marker {
        public final int kind;
        public final int owner;
        public final int packedLocation;
        public final int sourceIndex;
        public final int type;

        /* renamed from: x */
        public final int f42x;

        /* renamed from: y */
        public final int f43y;

        private Marker(int[] data, int offset) {
            this.kind = data[offset];
            this.sourceIndex = data[offset + 1];
            this.owner = data[offset + 2];
            this.type = data[offset + 3];
            this.f42x = data[offset + 4];
            this.f43y = data[offset + 5];
            this.packedLocation = data[offset + 6];
        }
    }

    public static final class Frame {
        public final int height;
        private final Marker[] objects;
        public final int sequence;
        public final int sourceBuildings;
        public final int sourceTerrainMarkers;
        public final int sourceUnits;
        public final int width;

        /* renamed from: x */
        public final int f40x;

        /* renamed from: y */
        public final int f41y;

        private Frame(int xx, int yy, int w, int h, int number, int units, int buildings, int ground, int[] array) {
            this.f40x = xx;
            this.f41y = yy;
            this.width = w;
            this.height = h;
            this.sequence = number;
            this.sourceUnits = units;
            this.sourceBuildings = buildings;
            this.sourceTerrainMarkers = ground;
            this.objects = new Marker[array.length / 7];
            for (int i = 0; i < this.objects.length; i++) {
                this.objects[i] = new Marker(array, i * 7);
            }
        }

        public int count() {
            return this.objects.length;
        }

        public Marker marker(int index) {
            return this.objects[index];
        }
    }

    public synchronized Frame read(int x, int y, int w, int h) throws IOException {
        int[] result;
        if (this.handle == 0) {
            throw new IOException("Razor object host is closed");
        }
        if (w < 1 || h < 1 || w > 32 || h > 32 || x < 0 || y < 0 || w > this.scenarioWidth || h > this.scenarioHeight || x > this.scenarioWidth - w || y > this.scenarioHeight - h) {
            throw new IOException("Razor objects viewport outside scenario");
        }
        result = nativeRead(this.handle, x, y, w, h);
        if (result == null || result.length < 12 || result[0] != MAGIC || result[1] != 1 || result[2] != this.romVariant || result[3] != this.house || result[4] != this.mission || result[5] != this.stride || result[6] != this.scenarioWidth || result[7] != this.scenarioHeight || result[8] != x || result[9] != y || result[10] <= 0 || ((this.lastSequence > 0 && result[10] != this.lastSequence + 1) || result[11] < 0 || result[11] > MAX_OBJECTS || result.length != (result[11] * 7) + 12)) {
            throw new IOException("Razor native object frame header changed");
        }
        int[] expected = new int[this.sourceRecords.length];
        int n = 0;
        for (int i = 0; i < this.sourceRecords.length; i += 7) {
            int px = this.sourceRecords[i + 4];
            int py = this.sourceRecords[i + 5];
            if (px >= x && px - x < w && py >= y && py - y < h) {
                System.arraycopy(this.sourceRecords, i, expected, n, 7);
                n += 7;
            }
        }
        if (result[11] != n / 7 || !Arrays.equals(Arrays.copyOfRange(result, 12, result.length), Arrays.copyOf(expected, n))) {
            throw new IOException("Razor native object frame diverges from source ROM");
        }
        this.lastSequence = result[10];
        return new Frame(x, y, w, h, this.lastSequence, this.totalUnits, this.totalBuildings, this.groundRecords, Arrays.copyOfRange(result, 12, result.length));
    }

    @Override // java.lang.AutoCloseable
    public synchronized void close() {
        long old = this.handle;
        this.handle = 0L;
        if (old != 0) {
            nativeClose(old);
        }
    }
}
