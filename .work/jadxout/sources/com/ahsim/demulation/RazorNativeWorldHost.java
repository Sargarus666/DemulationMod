package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82ScenarioRecordDecoder;
import com.ahsim.demulation.DuneHackR82cRazorMissionBundle;
import java.io.IOException;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class RazorNativeWorldHost {
    private static final int WORDS = 26;

    private static native int[] nativeBootstrapAudit(byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, int i5);

    static {
        System.loadLibrary("dunehost");
    }

    private RazorNativeWorldHost() {
    }

    public static final class Summary {
        public final int addedUnits;
        public final int buildings;
        public final int extendedGrids;
        public final boolean gameplayReady;
        public final int missions;
        public final int terrainMarkers;
        public final int unexpandedTerrainCells;
        public final int units;

        private Summary(int m, int u, int b, int ground, int extra, int expanded, int pendingTerrain) {
            this.gameplayReady = false;
            this.missions = m;
            this.units = u;
            this.buildings = b;
            this.terrainMarkers = ground;
            this.addedUnits = extra;
            this.extendedGrids = expanded;
            this.unexpandedTerrainCells = pendingTerrain;
        }
    }

    static int[] bootstrapMissionForProbe(DuneHackR82cRazorMissionBundle.Mission m) throws IOException {
        if (m == null) {
            throw new IOException("Unsafe Razor boot mission");
        }
        Objects.requireNonNull(m);
        int[] values = nativeBootstrapAudit(m.mapBytes(), m.scenarioBytes(), m.house, m.mission, m.storedMapSide, m.scenarioMapWidth, m.scenarioMapHeight);
        if (values != null && values.length == WORDS && values[0] == 1 && values[1] == 0 && values[2] == m.house && values[3] == m.mission) {
            if (values[4] == (m.storedMapSide != 128 ? 64 : 128) && values[5] == m.storedMapSide && values[6] == ((m.scenarioMapWidth << 16) | m.scenarioMapHeight) && values[7] == m.unitCount && values[8] + values[9] == m.structureCount && values[10] == m.teamCount && values[18] == m.storedMapSide * m.storedMapSide && values[19] == (values[4] * values[4]) - values[18]) {
                return values;
            }
        }
        throw new IOException("Razor isolated boot differs from signed mission");
    }

    public static Summary inspect(DuneHackR82cRazorMissionBundle.Result audited) throws IOException {
        if (audited != null) {
            Objects.requireNonNull(audited);
            Objects.requireNonNull(audited);
            Objects.requireNonNull(audited);
            Iterator<DuneHackR82cRazorMissionBundle.Mission> it = audited.allMissions().iterator();
            int missions = 0;
            int units = 0;
            int buildings = 0;
            int ground = 0;
            int extra = 0;
            int expanded = 0;
            int pending = 0;
            while (it.hasNext()) {
                DuneHackR82cRazorMissionBundle.Mission mission = it.next();
                byte[] scene = mission.scenarioBytes();
                DuneHackR82ScenarioRecordDecoder.Document doc = DuneHackR82ScenarioRecordDecoder.decode(scene);
                DuneHackR82ScenarioIdentityAudit.auditDocument(doc);
                int[] v = nativeBootstrapAudit(mission.mapBytes(), scene, mission.house, mission.mission, mission.storedMapSide, mission.scenarioMapWidth, mission.scenarioMapHeight);
                int stride = mission.storedMapSide == 128 ? 128 : 64;
                if (v == null || v.length != WORDS || v[0] != 1 || v[1] != 0 || v[2] != mission.house || v[3] != mission.mission || v[4] != stride || v[5] != mission.storedMapSide || v[6] != ((mission.scenarioMapWidth << 16) | mission.scenarioMapHeight) || v[7] != doc.unitCount || v[8] + v[9] != doc.structureCount || v[10] != doc.teamCount || v[18] != mission.storedMapSide * mission.storedMapSide || v[19] != (stride * stride) - v[18] || v[17] > 5 || v[25] < 0 || v[25] > 255) {
                    throw new IOException("Razor bootstrap mismatch " + mission.house + "/" + mission.mission);
                }
                int extraUnits = 0;
                int ownerUnits = 0;
                int ownerStructures = 0;
                int groundHere = 0;
                int buildingsHere = 0;
                for (DuneHackR82ScenarioRecordDecoder.Record r : doc.records()) {
                    int[] v2 = v;
                    int stride2 = stride;
                    Iterator<DuneHackR82cRazorMissionBundle.Mission> it2 = it;
                    if (r.section == 8) {
                        if (r.value(1) >= 27) {
                            extraUnits++;
                        }
                        if (r.value(0) >= 3) {
                            ownerUnits++;
                        }
                    } else if (r.section == 9) {
                        if (r.index == 73) {
                            buildingsHere++;
                            if (r.value(1) >= 3) {
                                ownerStructures++;
                            }
                        } else if (r.index == 71) {
                            groundHere++;
                        }
                    }
                    stride = stride2;
                    v = v2;
                    it = it2;
                }
                int[] v3 = v;
                Iterator<DuneHackR82cRazorMissionBundle.Mission> it3 = it;
                if (v3[8] != buildingsHere || v3[9] != groundHere || v3[14] != extraUnits || v3[15] != ownerUnits || v3[16] != ownerStructures) {
                    throw new IOException("Razor bootstrap entity mismatch");
                }
                missions++;
                units += v3[7];
                buildings += v3[8];
                ground += v3[9];
                extra += v3[14];
                pending += v3[19];
                if (v3[4] == 128) {
                    expanded++;
                }
                it = it3;
            }
            if (missions != audited.missionsDecoded || expanded != audited.expandedMapMissions) {
                throw new IOException("Razor bootstrap mission count mismatch");
            }
            return new Summary(missions, units, buildings, ground, extra, expanded, pending);
        }
        throw new IOException("Untrusted Razor source for native host");
    }
}
