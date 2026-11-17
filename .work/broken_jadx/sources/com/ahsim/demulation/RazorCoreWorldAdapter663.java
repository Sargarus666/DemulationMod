package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82cRazorMissionBundle;
import com.ahsim.demulation.RazorCampaignMapSnapshot559;
import java.io.IOException;
import java.util.zip.CRC32;

/* loaded from: classes2.dex */
public final class RazorCoreWorldAdapter663 {
    public static final int CLASSIC_MAP_SIDE = 64;
    public static final int CORE_BUILD_CAPACITY = 128;
    public static final int CORE_BUILD_TYPES = 19;
    public static final int CORE_UNIT_CAPACITY = 128;
    public static final int CORE_UNIT_TYPES = 64;
    public static final int MAX_MAP_SIDE = 128;
    public static final int RAZOR_HOUSES = 5;
    public static final int SCHEMA = 663;

    public static final class ObjectEntry {
        public final int identity;
        public final int kind;
        public final int ordinal;
        public final int owner;
        public final int type;

        /* renamed from: x */
        public final int f36x;

        /* renamed from: y */
        public final int f37y;

        private ObjectEntry(int k, int n, int h, int t, int x, int y, int identity) {
            this.kind = k;
            this.ordinal = n;
            this.owner = h;
            this.type = t;
            this.f36x = x;
            this.f37y = y;
            this.identity = identity;
        }
    }

    public static final class Snapshot {
        public final int buildingCount;
        public final ObjectEntry[] buildings;
        public final boolean classicCoreExecutionReady;
        public final int height;
        public final int house;
        public final int mission;
        public final long objectDigest;
        public final boolean originalWorldSizeCompatible;
        public final int schema;
        public final int unitCount;
        public final ObjectEntry[] units;
        public final int width;

        private Snapshot(DuneHackR82cRazorMissionBundle.Mission missionData, RazorCampaignMapSnapshot559 source, ObjectEntry[] units, ObjectEntry[] buildings, long digest) {
            this.schema = RazorCoreWorldAdapter663.SCHEMA;
            this.house = missionData.house;
            this.mission = missionData.mission;
            this.width = missionData.scenarioMapWidth;
            this.height = missionData.scenarioMapHeight;
            this.unitCount = units.length;
            this.buildingCount = buildings.length;
            this.originalWorldSizeCompatible = this.width <= 64 && this.height <= 64 && missionData.storedMapSide <= 64;
            this.classicCoreExecutionReady = false;
            this.units = (ObjectEntry[]) units.clone();
            this.buildings = (ObjectEntry[]) buildings.clone();
            this.objectDigest = digest;
        }
    }

    private RazorCoreWorldAdapter663() {
    }

    public static Snapshot readOnly(DuneHackR82cRazorMissionBundle.Mission m, RazorCampaignMapSnapshot559 frame) throws IOException {
        if (m == null || frame == null || m.house != frame.house || m.mission != frame.mission || frame.width != m.scenarioMapWidth || frame.height != m.scenarioMapHeight || m.house < 0 || m.house >= 5 || m.scenarioMapWidth < 1 || m.scenarioMapHeight < 1 || m.scenarioMapWidth > 128 || m.scenarioMapHeight > 128 || m.storedMapSide > 128 || frame.units.length != m.unitCount || frame.units.length > 128 || frame.buildings.length > 128 || frame.gameTicks != 0) {
            throw new IOException("Razor 663 world bridge rejected unrelated or unsupported source");
        }
        ObjectEntry[] units = new ObjectEntry[frame.units.length];
        ObjectEntry[] buildings = new ObjectEntry[frame.buildings.length];
        CRC32 crc = new CRC32();
        add(crc, SCHEMA);
        add(crc, m.house);
        add(crc, m.mission);
        add(crc, m.scenarioMapWidth);
        add(crc, m.scenarioMapHeight);
        for (int i = 0; i < units.length; i++) {
            RazorCampaignMapSnapshot559.Unit u = frame.units[i];
            if (u.ordinal != i || u.owner < 0 || u.owner >= 5 || u.type < 0 || u.type >= 64 || u.f28x < 0 || u.f28x >= frame.width || u.f29y < 0 || u.f29y >= frame.height || u.sourceTag < 0 || u.sourceTag > 255) {
                throw new IOException("Razor 663 unit ABI mismatch at " + i);
            }
            units[i] = new ObjectEntry(1, i, u.owner, u.type, u.f28x, u.f29y, u.sourceTag);
            write(crc, units[i]);
        }
        for (int i2 = 0; i2 < buildings.length; i2++) {
            RazorCampaignMapSnapshot559.Building b = frame.buildings[i2];
            if (b.ordinal != i2 || b.owner < 0 || b.owner >= 5 || b.type < 0 || b.type >= 19 || b.f26x < 0 || b.f26x >= frame.width || b.f27y < 0 || b.f27y >= frame.height) {
                throw new IOException("Razor 663 building ABI mismatch at " + i2);
            }
            buildings[i2] = new ObjectEntry(2, i2, b.owner, b.type, b.f26x, b.f27y, 0);
            write(crc, buildings[i2]);
        }
        return new Snapshot(m, frame, units, buildings, crc.getValue());
    }

    private static void write(CRC32 crc, ObjectEntry e) {
        add(crc, e.kind);
        add(crc, e.ordinal);
        add(crc, e.owner);
        add(crc, e.type);
        add(crc, e.f36x);
        add(crc, e.f37y);
        add(crc, e.identity);
    }

    private static void add(CRC32 crc, int value) {
        crc.update((value >>> 24) & 255);
        crc.update((value >>> 16) & 255);
        crc.update((value >>> 8) & 255);
        crc.update(value & 255);
    }
}
