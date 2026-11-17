package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82ScenarioRecordDecoder;
import com.ahsim.demulation.DuneHackR82cRazorMissionBundle;
import java.io.IOException;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class RazorNativeMissionState {
    private static final int WORDS = 21;

    private static native int[] nativePrepare(byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, int i5);

    static {
        System.loadLibrary("dunehost");
    }

    private RazorNativeMissionState() {
    }

    public static final class Summary {
        public final boolean gameplayReady;
        public final int mapsNeedingExpandedWorld;
        public final int parsed;
        public final int rawFifthHouseDefinitions;

        private Summary(int parsed, int expanded, int fifth) {
            this.gameplayReady = false;
            this.parsed = parsed;
            this.mapsNeedingExpandedWorld = expanded;
            this.rawFifthHouseDefinitions = fifth;
        }
    }

    public static Summary inspect(DuneHackR82cRazorMissionBundle.Result audited) throws IOException {
        if (audited != null) {
            Objects.requireNonNull(audited);
            Objects.requireNonNull(audited);
            Objects.requireNonNull(audited);
            int parsed = 0;
            int expanded = 0;
            int fifth = 0;
            Iterator<DuneHackR82cRazorMissionBundle.Mission> it = audited.allMissions().iterator();
            while (it.hasNext()) {
                DuneHackR82cRazorMissionBundle.Mission m = it.next();
                byte[] scene = m.scenarioBytes();
                DuneHackR82ScenarioRecordDecoder.Document doc = DuneHackR82ScenarioRecordDecoder.decode(scene);
                int[] v = nativePrepare(m.mapBytes(), scene, m.house, m.mission, m.storedMapSide, m.scenarioMapWidth, m.scenarioMapHeight);
                if (v != null && v.length == 21 && v[1] == m.house && v[2] == m.mission && v[3] == m.storedMapSide && v[4] == ((m.scenarioMapWidth << 16) | m.scenarioMapHeight) && v[5] == doc.seed && v[8] == doc.unitCount && v[9] == doc.structureCount && v[10] == doc.teamCount && v[11] == doc.reinforcementCount && v[15] == doc.recordCount) {
                    if (v[0] == (m.needsExpandedMapRuntime ? 2 : 1)) {
                        int markets = 0;
                        int houses = 0;
                        int bloom = 0;
                        int[] houseCredits = {-1, -1, -1};
                        int fields = 0;
                        int human = 255;
                        for (DuneHackR82ScenarioRecordDecoder.Record r : doc.records()) {
                            if (r.section == 6) {
                                markets++;
                            }
                            if (r.section == 1 && r.index == 66) {
                                bloom = r.value(0);
                            }
                            if (r.section == 1 && r.index == 70) {
                                fields = r.value(0);
                            }
                            if (r.kind.equals("house")) {
                                houses++;
                                if ((r.value(2) & 255) == 72) {
                                    if (human != 255) {
                                        throw new IOException("Multiple Razor player houses");
                                    }
                                    int human2 = r.section;
                                    human = human2;
                                }
                                if (r.section >= 2 && r.section <= 4) {
                                    houseCredits[r.section - 2] = r.value(1);
                                }
                            }
                        }
                        if (v[6] == human && v[7] == houses && v[12] == markets && v[13] == bloom) {
                            if (v[14] == fields) {
                                Iterator<DuneHackR82cRazorMissionBundle.Mission> it2 = it;
                                if (v[18] == houseCredits[0] && v[19] == houseCredits[1] && v[20] == houseCredits[2]) {
                                    fifth += doc.fifthHouseRecords;
                                    if (v[0] == 2) {
                                        expanded++;
                                    }
                                    parsed++;
                                    it = it2;
                                }
                            }
                        }
                        throw new IOException("Razor initial economy/house/terrain records mismatch");
                    }
                }
                throw new IOException("Razor native initial state differs from decoded scenario: " + m.house + "/" + m.mission);
            }
            if (parsed != audited.missionsDecoded || expanded != audited.expandedMapMissions) {
                throw new IOException("Razor source mission count changed");
            }
            return new Summary(parsed, expanded, fifth);
        }
        throw new IOException("Razor mission source not in non-playable audit state");
    }
}
