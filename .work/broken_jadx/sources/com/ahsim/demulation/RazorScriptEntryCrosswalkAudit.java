package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82ScenarioRecordDecoder;
import com.ahsim.demulation.DuneHackR82cRazorMissionBundle;
import com.ahsim.demulation.RazorEmcTickDependencyAudit;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class RazorScriptEntryCrosswalkAudit {
    public static final int BUILD = 0;
    public static final int BUILD_SOURCE_TYPES = 19;
    public static final int TEAM = 1;
    public static final int UNIT = 2;
    public static final int UNIT_SOURCE_TYPES = 32;

    private RazorScriptEntryCrosswalkAudit() {
    }

    public static final class Mission {
        private final int[] buildingByType;
        public final int buildings;
        public final int extraInitialUnits;
        public final int extraReinforcements;
        public final int groundRecords;
        public final int house;
        private final int[] initialByType;
        public final int initialUnits;
        public final int mission;
        private final int[] reinforcementByType;
        public final int reinforcements;
        public final int teams;

        private Mission(int house, int mission, int[] init, int[] rein, int[] build, int teamCount, int ground) {
            this.house = house;
            this.mission = mission;
            this.initialByType = (int[]) init.clone();
            this.reinforcementByType = (int[]) rein.clone();
            this.buildingByType = (int[]) build.clone();
            this.initialUnits = RazorScriptEntryCrosswalkAudit.sum(init);
            this.reinforcements = RazorScriptEntryCrosswalkAudit.sum(rein);
            this.buildings = RazorScriptEntryCrosswalkAudit.sum(build);
            this.extraInitialUnits = RazorScriptEntryCrosswalkAudit.sumFrom(init, 27);
            this.extraReinforcements = RazorScriptEntryCrosswalkAudit.sumFrom(rein, 27);
            this.teams = teamCount;
            this.groundRecords = ground;
        }

        public int initialTypeCount(int t) {
            return RazorScriptEntryCrosswalkAudit.index(this.initialByType, t);
        }

        public int reinforcementTypeCount(int t) {
            return RazorScriptEntryCrosswalkAudit.index(this.reinforcementByType, t);
        }

        public int buildingTypeCount(int t) {
            return RazorScriptEntryCrosswalkAudit.index(this.buildingByType, t);
        }

        public boolean hasUnmappedSourceUnits() {
            return this.extraInitialUnits + this.extraReinforcements > 0;
        }
    }

    public static final class Report {
        public final int buildEntryCount;
        private final int[] buildingByType;
        public final int buildings;
        public final boolean completeObjectToScriptMapping;
        public final int extraInitialUnits;
        public final int extraReinforcements;
        public final boolean gameplayReady;
        public final int groundRecords;
        private final int[] initialByType;
        public final int initialUnits;
        public final int missionCount;
        private final List<Mission> missions;
        public final int missionsWithExtendedTypes;
        private final int[] reinforcementByType;
        public final int reinforcements;
        public final int teamEntryCount;
        public final int teams;
        public final int unitEntryCount;
        public final int variant;

        private Report(int variant, int uEntries, int bEntries, int tEntries, List<Mission> list) {
            this.completeObjectToScriptMapping = false;
            this.gameplayReady = false;
            this.variant = variant;
            this.unitEntryCount = uEntries;
            this.buildEntryCount = bEntries;
            this.teamEntryCount = tEntries;
            this.missions = Collections.unmodifiableList(new ArrayList(list));
            this.missionCount = list.size();
            this.initialByType = new int[32];
            this.reinforcementByType = new int[32];
            this.buildingByType = new int[19];
            int a = 0;
            int b = 0;
            int c = 0;
            int d = 0;
            int e = 0;
            int f = 0;
            int g = 0;
            int h = 0;
            for (Mission m : list) {
                a += m.initialUnits;
                b += m.extraInitialUnits;
                c += m.reinforcements;
                d += m.extraReinforcements;
                e += m.buildings;
                f += m.teams;
                g += m.groundRecords;
                h = m.hasUnmappedSourceUnits() ? h + 1 : h;
                for (int t = 0; t < this.initialByType.length; t++) {
                    int[] iArr = this.initialByType;
                    iArr[t] = iArr[t] + m.initialByType[t];
                    int[] iArr2 = this.reinforcementByType;
                    iArr2[t] = iArr2[t] + m.reinforcementByType[t];
                }
                for (int t2 = 0; t2 < this.buildingByType.length; t2++) {
                    int[] iArr3 = this.buildingByType;
                    iArr3[t2] = iArr3[t2] + m.buildingByType[t2];
                }
            }
            this.initialUnits = a;
            this.extraInitialUnits = b;
            this.reinforcements = c;
            this.extraReinforcements = d;
            this.buildings = e;
            this.teams = f;
            this.groundRecords = g;
            this.missionsWithExtendedTypes = h;
        }

        public List<Mission> missions() {
            return this.missions;
        }

        public int initialTypeCount(int t) {
            return RazorScriptEntryCrosswalkAudit.index(this.initialByType, t);
        }

        public int reinforcementTypeCount(int t) {
            return RazorScriptEntryCrosswalkAudit.index(this.reinforcementByType, t);
        }

        public int buildingTypeCount(int t) {
            return RazorScriptEntryCrosswalkAudit.index(this.buildingByType, t);
        }

        public boolean hasUnitOrdrIndex(int sourceType) {
            return sourceType >= 0 && sourceType < this.unitEntryCount;
        }

        public boolean teamScriptBindingVerified() {
            return false;
        }

        public boolean originalUnitDispatchVerified() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int index(int[] a, int id) {
        if (id < 0 || id >= a.length) {
            throw new IllegalArgumentException("Razor source type outside profile");
        }
        return a[id];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int sum(int[] a) {
        int n = 0;
        for (int v : a) {
            n += v;
        }
        return n;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int sumFrom(int[] a, int start) {
        int n = 0;
        for (int i = start; i < a.length; i++) {
            n += a[i];
        }
        return n;
    }

    public static Report inspect(byte[] rom, String sha) throws IOException {
        RazorEmcTickDependencyAudit.Evidence emc = RazorEmcTickDependencyAudit.inspect(rom, sha);
        DuneHackR82cRazorMissionBundle.Result bank = DuneHackR82cRazorMissionBundle.inspect(rom, sha);
        if (bank.variant != emc.romVariant || emc.build.entries != 19 || emc.unit.entries != 27 || emc.team.entries != 6) {
            throw new IOException("Unexpected Razor EMC ORDR profile");
        }
        List<Mission> results = new ArrayList<>();
        for (DuneHackR82cRazorMissionBundle.Mission source : bank.allMissions()) {
            DuneHackR82ScenarioRecordDecoder.Document doc = DuneHackR82ScenarioRecordDecoder.decode(source.scenarioBytes());
            int[] initial = new int[32];
            int[] rein = new int[32];
            int[] buildings = new int[19];
            int teams = 0;
            int ground = 0;
            for (DuneHackR82ScenarioRecordDecoder.Record rec : doc.records()) {
                if (rec.section == 8) {
                    int type = rec.value(1);
                    if (type < 0 || type >= 32) {
                        throw new IOException("Unknown Razor initial UNIT type");
                    }
                    initial[type] = initial[type] + 1;
                } else if (rec.section == 10) {
                    int type2 = rec.value(1);
                    if (type2 < 0 || type2 >= 32) {
                        throw new IOException("Unknown Razor reinforcement UNIT type");
                    }
                    rein[type2] = rein[type2] + 1;
                } else if (rec.section == 9) {
                    if (rec.index == 73) {
                        int type3 = rec.value(2);
                        if (type3 < 0 || type3 >= 19) {
                            throw new IOException("Unknown Razor building type");
                        }
                        buildings[type3] = buildings[type3] + 1;
                    } else {
                        if (rec.index != 71) {
                            throw new IOException("Unknown Razor structure record");
                        }
                        ground++;
                    }
                } else if (rec.section == 7) {
                    teams++;
                }
            }
            Mission m = new Mission(source.house, source.mission, initial, rein, buildings, teams, ground);
            if (m.initialUnits != source.unitCount || m.buildings + ground != source.structureCount || m.teams != source.teamCount || m.reinforcements != doc.reinforcementCount) {
                throw new IOException("Razor source scenario record identity changed");
            }
            results.add(m);
        }
        if (results.size() != (bank.variant == 1 ? 45 : 44)) {
            throw new IOException("Razor validated mission set changed");
        }
        return new Report(bank.variant, emc.unit.entries, emc.build.entries, emc.team.entries, results);
    }
}
