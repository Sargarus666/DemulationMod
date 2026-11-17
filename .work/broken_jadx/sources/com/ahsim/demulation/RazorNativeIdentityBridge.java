package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82ScenarioRecordDecoder;
import com.ahsim.demulation.DuneHackR82cRazorMissionBundle;
import java.io.IOException;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class RazorNativeIdentityBridge {
    private static final int WORDS = 22;

    private static native int[] nativeAudit(byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, int i5);

    static {
        System.loadLibrary("dunehost");
    }

    private RazorNativeIdentityBridge() {
    }

    public static final class Summary {
        public final int addedHouseUnits;
        public final int additionalUnitTypes;
        public final int expandedMissions;
        public final boolean gameplayReady;
        public final int groundTiles;
        public final int placedStructures;
        public final int scenarios;
        public final int sourceUnits;

        private Summary(int missions, int units, int structures, int ground, int extraTypes, int newOwners, int expanded) {
            this.gameplayReady = false;
            this.scenarios = missions;
            this.sourceUnits = units;
            this.placedStructures = structures;
            this.groundTiles = ground;
            this.additionalUnitTypes = extraTypes;
            this.addedHouseUnits = newOwners;
            this.expandedMissions = expanded;
        }
    }

    public static Summary inspect(DuneHackR82cRazorMissionBundle.Result audited) throws IOException {
        if (audited != null) {
            Objects.requireNonNull(audited);
            Objects.requireNonNull(audited);
            Objects.requireNonNull(audited);
            int expanded = 0;
            int scenarios = 0;
            int units = 0;
            int structures = 0;
            int ground = 0;
            int extended = 0;
            int newHouseUnits = 0;
            for (DuneHackR82cRazorMissionBundle.Mission m : audited.allMissions()) {
                byte[] scenario = m.scenarioBytes();
                DuneHackR82ScenarioRecordDecoder.Document doc = DuneHackR82ScenarioRecordDecoder.decode(scenario);
                DuneHackR82ScenarioIdentityAudit.auditDocument(doc);
                int[] v = nativeAudit(m.mapBytes(), scenario, m.house, m.mission, m.storedMapSide, m.scenarioMapWidth, m.scenarioMapHeight);
                if (v != null && v.length == 22) {
                    if (v[0] == (m.needsExpandedMapRuntime ? 2 : 1) && v[1] == m.house && v[2] == m.mission) {
                        if (v[3] == (m.storedMapSide != 128 ? 64 : 128) && v[4] == ((m.scenarioMapWidth << 16) | m.scenarioMapHeight) && v[5] == m.storedMapSide && v[6] == doc.unitCount && v[7] + v[8] == doc.structureCount) {
                            int i = 9;
                            if (v[9] == doc.teamCount && v[10] == doc.reinforcementCount && v[11] >= 0) {
                                if (v[12] != (doc.fifthHouseRecords > 0 ? 1 : 0) || v[20] < 0 || v[20] > 255 || v[21] != 0) {
                                    throw new IOException("Razor native identity mismatch " + m.house + "/" + m.mission);
                                }
                                int placed = 0;
                                int groundRecords = 0;
                                int specialUnits = 0;
                                int newOwners = 0;
                                for (DuneHackR82ScenarioRecordDecoder.Record record : doc.records()) {
                                    DuneHackR82ScenarioRecordDecoder.Document doc2 = doc;
                                    if (record.section == i) {
                                        if (record.index == 73) {
                                            placed++;
                                        }
                                        if (record.index == 71) {
                                            groundRecords++;
                                        }
                                    } else if (record.section == 8) {
                                        if (record.value(1) >= 27) {
                                            specialUnits++;
                                        }
                                        if (record.value(0) >= 3) {
                                            newOwners++;
                                        }
                                    }
                                    doc = doc2;
                                    i = 9;
                                }
                                int specialUnits2 = specialUnits;
                                int newOwners2 = newOwners;
                                if (v[7] != placed || v[8] != groundRecords || v[13] != specialUnits2 || v[14] != newOwners2) {
                                    throw new IOException("Razor type/house identity diverged");
                                }
                                scenarios++;
                                units += v[6];
                                structures += v[7];
                                ground += v[8];
                                extended += v[13];
                                newHouseUnits += v[14];
                                if (v[0] == 2) {
                                    expanded++;
                                }
                            }
                        }
                        throw new IOException("Razor native identity mismatch " + m.house + "/" + m.mission);
                    }
                }
                throw new IOException("Razor native identity mismatch " + m.house + "/" + m.mission);
            }
            if (scenarios != audited.missionsDecoded || expanded != audited.expandedMapMissions) {
                throw new IOException("Razor identity scan mission count mismatch");
            }
            return new Summary(scenarios, units, structures, ground, extended, newHouseUnits, expanded);
        }
        throw new IOException("Untrusted Razor mission source");
    }
}
