package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82cRazorMissionBundle;
import com.ahsim.demulation.RazorTerrainVisualSource;
import java.io.IOException;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class RazorMissionBootProbe {
    private RazorMissionBootProbe() {
    }

    public static final class Report {
        public final int buildingOverlaps;
        public final int buildings;
        public final int confirmedTerrainCells;
        public final boolean emcRuntimeReady;
        public final int extraOwnerBuildings;
        public final int extraOwnerUnits;
        public final boolean gameplayReady;
        public final int gridSide;
        public final int house;
        public final int humanSourceSection;
        public final int mission;
        public final boolean nativeWorldBootstrapped;
        public final int newUnitTypes;
        public final boolean originalGameplayCompatible;
        public final int reinforcements;
        public final String romSha256;
        public final int scenarioHeight;
        public final int scenarioWidth;
        public final boolean sourceIdentityReady;
        public final int teams;
        public final boolean terrainReadReady;
        public final int terrainRecords;
        public final int uninitializedTerrainCells;
        public final int unitOverlaps;
        public final int units;
        public final int variant;

        private Report(RazorTerrainVisualSource.Audit audit, DuneHackR82cRazorMissionBundle.Mission source, RazorTerrainRuntimeSnapshot snapshot, int[] w) {
            this.variant = audit.romVariant();
            this.house = source.house;
            this.mission = source.mission;
            this.gridSide = w[4];
            this.scenarioWidth = source.scenarioMapWidth;
            this.scenarioHeight = source.scenarioMapHeight;
            this.units = w[7];
            this.buildings = w[8];
            this.terrainRecords = w[9];
            this.teams = w[10];
            this.reinforcements = w[11];
            this.confirmedTerrainCells = snapshot.writtenCells;
            this.uninitializedTerrainCells = snapshot.unknownCells;
            this.newUnitTypes = w[14];
            this.extraOwnerUnits = w[15];
            this.extraOwnerBuildings = w[16];
            this.unitOverlaps = w[23];
            this.buildingOverlaps = w[24];
            this.humanSourceSection = w[25];
            this.romSha256 = audit.romSourceSha256();
            this.nativeWorldBootstrapped = true;
            this.terrainReadReady = this.uninitializedTerrainCells == 0;
            this.sourceIdentityReady = true;
            this.originalGameplayCompatible = false;
            this.emcRuntimeReady = false;
            this.gameplayReady = false;
        }
    }

    public static Report inspect(RazorTerrainVisualSource.Audit audit, int house, int mission) throws IOException {
        if (audit == null) {
            throw new IOException("Razor boot requires authenticated diagnostic-only source");
        }
        Objects.requireNonNull(audit);
        Objects.requireNonNull(audit);
        Objects.requireNonNull(audit);
        Objects.requireNonNull(audit);
        DuneHackR82cRazorMissionBundle.Mission source = audit.bootProbeMission(house, mission);
        RazorTerrainRuntimeSnapshot snapshot = audit.runtimeTerrainSnapshot(house, mission);
        int[] w = RazorNativeWorldHost.bootstrapMissionForProbe(source);
        if (snapshot.house == house && snapshot.mission == mission) {
            if (snapshot.romVariant == audit.romVariant()) {
                if (snapshot.sourceSha256.equals(audit.romSourceSha256()) && w[19] == snapshot.unknownCells && w[18] == snapshot.writtenCells && w[7] == source.unitCount && w[8] + w[9] == source.structureCount && w[10] == source.teamCount && w[17] <= 12 && w[25] >= 0 && w[25] <= 255) {
                    Report report = new Report(audit, source, snapshot, w);
                    if (report.gameplayReady || report.originalGameplayCompatible || report.emcRuntimeReady) {
                        throw new IOException("Razor unsafe gameplay capability escalation");
                    }
                    return report;
                }
            }
        }
        throw new IOException("Razor map/initial-world bootstrap integration mismatch");
    }
}
