package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82cRazorMissionBundle;
import com.ahsim.demulation.RazorCampaignMapSnapshot559;
import com.ahsim.demulation.RazorCampaignSessionGuard;
import java.io.IOException;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class RazorCampaignNativeSession implements AutoCloseable {
    private static final NativeAccess NATIVE = new NativeAccess() { // from class: com.ahsim.demulation.RazorCampaignNativeSession.1
        @Override // com.ahsim.demulation.RazorCampaignNativeSession.NativeAccess
        public long open(DuneHackR82cRazorMissionBundle.Mission m) {
            return RazorNativeWorldSession.openCampaignWorld(m);
        }

        @Override // com.ahsim.demulation.RazorCampaignNativeSession.NativeAccess
        public int[] read(long t) {
            return RazorNativeWorldSession.pollCampaignWorld(t);
        }

        @Override // com.ahsim.demulation.RazorCampaignNativeSession.NativeAccess
        public boolean close(long t) {
            return RazorNativeWorldSession.closeCampaignWorld(t);
        }

        @Override // com.ahsim.demulation.RazorCampaignNativeSession.NativeAccess
        public boolean terrain561(long t, byte[] lookup) {
            return RazorNativeWorldSession.configureCampaignTerrain561(t, lookup);
        }

        @Override // com.ahsim.demulation.RazorCampaignNativeSession.NativeAccess
        public int[] probe(long t) {
            return RazorNativeWorldSession.probeCampaignObject556(t);
        }

        @Override // com.ahsim.demulation.RazorCampaignNativeSession.NativeAccess
        public int[] map(long t) {
            return RazorNativeWorldSession.campaignMap559(t);
        }

        @Override // com.ahsim.demulation.RazorCampaignNativeSession.NativeAccess
        public int[] scheduler(long t) {
            return RazorNativeWorldSession.campaignScheduler560(t);
        }

        @Override // com.ahsim.demulation.RazorCampaignNativeSession.NativeAccess
        public int[] integrated694(long t) {
            return RazorNativeWorldSession.campaignIntegratedStep694(t);
        }

        @Override // com.ahsim.demulation.RazorCampaignNativeSession.NativeAccess
        public int[] tick729(long t) {
            return RazorNativeWorldSession.campaignTick729(t);
        }

        @Override // com.ahsim.demulation.RazorCampaignNativeSession.NativeAccess
        public int[] core667(long t) {
            return RazorNativeWorldSession.campaignCore667(t);
        }

        @Override // com.ahsim.demulation.RazorCampaignNativeSession.NativeAccess
        public int[] cadence668(long t) {
            return RazorNativeWorldSession.campaignCadence668(t);
        }

        @Override // com.ahsim.demulation.RazorCampaignNativeSession.NativeAccess
        public boolean enableSubtile565(long t) {
            return RazorNativeWorldSession.enableSubtile565(t);
        }

        @Override // com.ahsim.demulation.RazorCampaignNativeSession.NativeAccess
        public int[] subtile565(long t) {
            return RazorNativeWorldSession.campaignSubtile565(t);
        }

        @Override // com.ahsim.demulation.RazorCampaignNativeSession.NativeAccess
        public int[] visual738(long t) {
            return RazorNativeWorldSession.campaignVisual738(t);
        }

        @Override // com.ahsim.demulation.RazorCampaignNativeSession.NativeAccess
        public int[] hud743(long t) {
            return RazorNativeWorldSession.campaignHud743(t);
        }

        @Override // com.ahsim.demulation.RazorCampaignNativeSession.NativeAccess
        public int[] trace562(long t) {
            return RazorNativeWorldSession.campaignTrace562(t);
        }

        @Override // com.ahsim.demulation.RazorCampaignNativeSession.NativeAccess
        public int[] dynamic569(long t) {
            return RazorNativeWorldSession.campaignDynamic569(t);
        }

        @Override // com.ahsim.demulation.RazorCampaignNativeSession.NativeAccess
        public int[] demo569(long t, int action, int handle, int x, int y) {
            return RazorNativeWorldSession.campaignDemo569(t, action, handle, x, y);
        }

        @Override // com.ahsim.demulation.RazorCampaignNativeSession.NativeAccess
        public int[] refinery570(long t, int action, int x, int y) {
            return RazorNativeWorldSession.campaignRefinery570(t, action, x, y);
        }

        @Override // com.ahsim.demulation.RazorCampaignNativeSession.NativeAccess
        public int[] economy573(long t) {
            return RazorNativeWorldSession.campaignEconomy573(t);
        }

        @Override // com.ahsim.demulation.RazorCampaignNativeSession.NativeAccess
        public int[] finance574(long t, int action, int cost, int time) {
            return RazorNativeWorldSession.campaignFinance574(t, action, cost, time);
        }

        @Override // com.ahsim.demulation.RazorCampaignNativeSession.NativeAccess
        public int[] finance575(long t, int action, int frames, int cost, int time) {
            return RazorNativeWorldSession.campaignFinance575(t, action, frames, cost, time);
        }

        @Override // com.ahsim.demulation.RazorCampaignNativeSession.NativeAccess
        public int[] frameIngress634(long t, int action, long frameTimeNs) {
            return RazorNativeWorldSession.frameIngress634(t, action, frameTimeNs);
        }

        @Override // com.ahsim.demulation.RazorCampaignNativeSession.NativeAccess
        public int[] simulationStep635(long t) {
            return RazorNativeWorldSession.simulationStep635(t);
        }

        @Override // com.ahsim.demulation.RazorCampaignNativeSession.NativeAccess
        public int[] finance576(long t, int action, int cost, int time) {
            return RazorNativeWorldSession.campaignFinance576(t, action, cost, time);
        }

        @Override // com.ahsim.demulation.RazorCampaignNativeSession.NativeAccess
        public int[] construction571(long t, int action, int x, int y) {
            return RazorNativeWorldSession.campaignConstruction571(t, action, x, y);
        }

        @Override // com.ahsim.demulation.RazorCampaignNativeSession.NativeAccess
        public int[] birth567(long t) {
            return RazorNativeWorldSession.campaignBirth567(t);
        }

        @Override // com.ahsim.demulation.RazorCampaignNativeSession.NativeAccess
        public int[] identity566(long t, int n) {
            return RazorNativeWorldSession.campaignUnitIdentity566(t, n);
        }

        @Override // com.ahsim.demulation.RazorCampaignNativeSession.NativeAccess
        public int[] order(long t, int action, int unit, int x, int y) {
            return RazorNativeWorldSession.campaignOrder557(t, action, unit, x, y);
        }
    };
    private final NativeAccess access;
    private final RazorCampaignSessionGuard guard;
    private final int guardUnitCount;
    public final int house;
    private RazorCampaignMapSnapshot559 lastMap559;
    private RazorTickEvidence729 lastProof729;
    public final int mission;
    private int orderSteps;
    private int probeSteps;
    private int registeredDynamicBuilds729;
    private boolean routeMode665;
    private int schedulerMoves560;
    private int schedulerTicks560;
    public final String sourceSha256;
    private long token;
    public final int variant;

    interface NativeAccess {
        boolean close(long j);

        long open(DuneHackR82cRazorMissionBundle.Mission mission);

        int[] read(long j);

        default int[] probe(long token) {
            return null;
        }

        default int[] order(long token, int action, int unit, int x, int y) {
            return null;
        }

        default int[] map(long token) {
            return null;
        }

        default int[] scheduler(long token) {
            return null;
        }

        default int[] integrated694(long token) {
            return null;
        }

        default int[] tick729(long token) {
            return null;
        }

        default int[] core667(long token) {
            return null;
        }

        default int[] cadence668(long token) {
            return null;
        }

        default int[] trace562(long token) {
            return null;
        }

        default boolean enableSubtile565(long token) {
            return true;
        }

        default int[] subtile565(long token) {
            return null;
        }

        default int[] visual738(long token) {
            return null;
        }

        default int[] hud743(long token) {
            return null;
        }

        default int[] identity566(long token, int ordinal) {
            return null;
        }

        default int[] birth567(long token) {
            return null;
        }

        default int[] dynamic569(long token) {
            return null;
        }

        default int[] demo569(long token, int action, int handle, int x, int y) {
            return null;
        }

        default int[] refinery570(long token, int action, int x, int y) {
            return null;
        }

        default int[] construction571(long token, int action, int x, int y) {
            return null;
        }

        default int[] economy573(long token) {
            return null;
        }

        default int[] finance574(long token, int action, int cost, int time) {
            return null;
        }

        default int[] finance575(long token, int action, int frames, int cost, int time) {
            return null;
        }

        default int[] finance576(long token, int action, int cost, int time) {
            return null;
        }

        default int[] frameIngress634(long token, int action, long frameTimeNs) {
            return null;
        }

        default int[] simulationStep635(long token) {
            return null;
        }

        default boolean terrain561(long token, byte[] lookup) {
            return true;
        }
    }

    private RazorCampaignNativeSession(NativeAccess access, long token, String sha, int variant, int house, int mission, RazorCampaignSessionGuard guard) {
        this.access = access;
        this.token = token;
        this.sourceSha256 = sha;
        this.variant = variant;
        this.house = house;
        this.mission = mission;
        this.guard = guard;
        this.guardUnitCount = guard.unitCount();
    }

    public static RazorCampaignNativeSession open(DuneHackR82cRazorMissionBundle.Result bundle, int house, int mission) throws IOException {
        return openWithAccess(bundle, house, mission, NATIVE);
    }

    static RazorCampaignNativeSession openWithAccess(DuneHackR82cRazorMissionBundle.Result bundle, int house, int mission, NativeAccess access) throws IOException {
        if (bundle != null && access != null && bundle.variant >= 1 && bundle.variant <= 2) {
            Objects.requireNonNull(bundle);
            Objects.requireNonNull(bundle);
            Objects.requireNonNull(bundle);
            if (bundle.sourceSha256 != null && bundle.sourceSha256.matches("[a-f0-9]{64}")) {
                try {
                    DuneHackR82cRazorMissionBundle.Mission m = bundle.mission(house, mission);
                    RazorCampaignSessionGuard guard = new RazorCampaignSessionGuard(m.house, m.mission, m.storedMapSide, m.scenarioMapWidth, m.scenarioMapHeight, m.unitCount, m.structureCount, m.teamCount, m.storedMapSide * m.storedMapSide);
                    long token = access.open(m);
                    if (token <= 0) {
                        throw new IOException("Native Razor world is busy or rejected");
                    }
                    RazorCampaignNativeSession session = new RazorCampaignNativeSession(access, token, bundle.sourceSha256, bundle.variant, house, mission, guard);
                    try {
                        if (!access.terrain561(token, bundle.terrainLookup561())) {
                            throw new IOException("Razor 561 terrain source profile rejected");
                        }
                        if (!access.enableSubtile565(token)) {
                            throw new IOException("Razor 565 subtile overlay unavailable");
                        }
                        session.poll();
                        return session;
                    } catch (IOException | Error | RuntimeException failure) {
                        session.close();
                        throw failure;
                    }
                } catch (IllegalArgumentException | IllegalStateException e) {
                    throw new IOException("Razor mission slot is not supported", e);
                }
            }
        }
        throw new IOException("Razor profile must use an authenticated nonplayable bundle");
    }

    public synchronized RazorCampaignSessionGuard.Snapshot poll() throws IOException {
        if (this.token == 0) {
            throw new IOException("Razor session has already been closed");
        }
        try {
        } catch (IOException | Error | RuntimeException failure) {
            close();
            throw failure;
        }
        return this.guard.accept(this.access.read(this.token));
    }

    public synchronized RazorScenarioEconomy573 sourceEconomy573(RazorScenarioEconomy573 expected) throws IOException {
        if (this.token == 0 || expected == null) {
            throw new IOException("Closed Razor economy session");
        }
        try {
            expected.verifyNative(this.access.economy573(this.token));
            poll();
        } catch (IOException | Error | RuntimeException failure) {
            close();
            throw failure;
        }
        return expected;
    }

    public synchronized RazorFinanceReference574 financeReference574(DuneHackR82cRazorMissionBundle.Result source, int action) throws IOException {
        Throwable ex;
        RazorFinanceReference574 result;
        if (this.token == 0 || source == null || !this.sourceSha256.equals(source.sourceSha256) || source.variant != this.variant || action < 0 || action > 3 || source.buildingData572 == null) {
            throw new IOException("Unverified Razor reference-finance source");
        }
        DuneHackR82cRazorMissionBundle.BuildingData572.Record refinery = source.buildingData572.get(12);
        if (refinery.type != 12 || refinery.cost <= 0 || refinery.cost > 65535 || refinery.productionWord <= 0 || refinery.productionWord > 255) {
            throw new IOException("Unsupported Razor refinery reference parameters");
        }
        try {
            try {
                result = RazorFinanceReference574.parse(this.access.finance574(this.token, action, refinery.cost, refinery.productionWord), refinery.cost, refinery.productionWord);
                poll();
            } catch (IOException | LinkageError | RuntimeException e) {
                ex = e;
                if (ex instanceof IOException) {
                    throw ((IOException) ex);
                }
                close();
                throw new IOException("Native Razor finance reference rejected", ex);
            }
        } catch (IOException | LinkageError | RuntimeException e2) {
            ex = e2;
        }
        return result;
    }

    public synchronized RazorFinanceCadence575 financeCadence575(DuneHackR82cRazorMissionBundle.Result source, int action, int frames) throws IOException {
        Throwable ex;
        RazorFinanceCadence575 state;
        if (this.token != 0 && source != null && this.sourceSha256.equals(source.sourceSha256) && source.variant == this.variant && action >= 0 && action <= 3 && frames >= 0 && frames <= 600) {
            if (action != 2 && frames != 0) {
                throw new IOException("Unverified finance cadence source");
            }
            if (source.buildingData572 != null) {
                DuneHackR82cRazorMissionBundle.BuildingData572.Record refinery = source.buildingData572.get(12);
                if (refinery.type != 12 || refinery.cost != 1000 || refinery.productionWord != 20 || this.variant != 1) {
                    throw new IOException("575 finance reference supports the traced Razor variant only");
                }
                try {
                } catch (IOException | LinkageError | RuntimeException e) {
                    ex = e;
                }
                try {
                    state = RazorFinanceCadence575.parse(this.access.finance575(this.token, action, frames, refinery.cost, refinery.productionWord), refinery.cost, refinery.productionWord);
                    poll();
                } catch (IOException | LinkageError | RuntimeException e2) {
                    ex = e2;
                    close();
                    if (ex instanceof IOException) {
                        throw ((IOException) ex);
                    }
                    throw new IOException("Native 575 finance cadence rejected", ex);
                }
            }
        }
        throw new IOException("Unverified finance cadence source");
        return state;
    }

    public synchronized RazorFinanceLive576 financeLive576(DuneHackR82cRazorMissionBundle.Result source, int action) throws IOException {
        Throwable ex;
        RazorFinanceLive576 result;
        if (this.token == 0 || source == null || !this.sourceSha256.equals(source.sourceSha256) || this.variant != 1 || source.variant != 1 || action < 0 || action > 3 || source.buildingData572 == null) {
            throw new IOException("Unverified 576 native finance source");
        }
        DuneHackR82cRazorMissionBundle.BuildingData572.Record refinery = source.buildingData572.get(12);
        if (refinery.type != 12 || refinery.cost != 1000 || refinery.productionWord != 20) {
            throw new IOException("Unsupported Razor 576 finance source stats");
        }
        try {
        } catch (IOException | LinkageError | RuntimeException e) {
            ex = e;
        }
        try {
            result = RazorFinanceLive576.parse(this.access.finance576(this.token, action, refinery.cost, refinery.productionWord), refinery.cost, refinery.productionWord);
            poll();
        } catch (IOException | LinkageError | RuntimeException e2) {
            ex = e2;
            close();
            if (ex instanceof IOException) {
                throw ((IOException) ex);
            }
            throw new IOException("Native 576 live finance refused", ex);
        }
        return result;
    }

    public synchronized ExperimentalStep probeObjectStep556() throws IOException {
        int[] w;
        if (this.token == 0) {
            throw new IOException("Razor session has already been closed");
        }
        try {
            w = this.access.probe(this.token);
            if (w == null || w.length != 16 || w[0] != 556 || ((w[1] != 0 && w[1] != 1) || w[7] < 0 || w[8] != 0 || w[14] != this.guardUnitCount || !this.guard.sameSourceHashes(w[9], w[10], w[15]) || ((w[1] == 1 && w[7] != this.probeSteps + 1) || ((w[1] == 0 && w[7] != this.probeSteps) || (w[1] == 1 && (w[2] < 0 || w[2] >= this.guardUnitCount || w[3] < 0 || w[4] < 0 || w[5] < 0 || w[6] < 0 || w[3] >= 128 || w[4] >= 128 || w[5] >= 128 || w[6] >= 128 || Math.abs(w[3] - w[5]) + Math.abs(w[4] - w[6]) != 1)))))) {
                throw new IOException("Native diagnostic object update failed integrity gate");
            }
            this.probeSteps = w[7];
            poll();
        } catch (IOException | Error | RuntimeException e) {
            close();
            throw e;
        }
        return new ExperimentalStep(w[1] == 1, w[2], w[3], w[4], w[5], w[6], w[7]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:154:0x016d, code lost:
    
        if ((java.lang.Math.abs(r2[4] - r2[6]) + java.lang.Math.abs(r2[5] - r2[7])) == 1) goto L130;
     */
    /* JADX WARN: Removed duplicated region for block: B:138:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x01c3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized com.ahsim.demulation.RazorCampaignNativeSession.OrderResult command557(int r34, int r35, int r36, int r37) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 494
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.RazorCampaignNativeSession.command557(int, int, int, int):com.ahsim.demulation.RazorCampaignNativeSession$OrderResult");
    }

    public synchronized RazorCoreRoute664 routeWitness664(RazorCampaignMapSnapshot559 snapshot, int unit, int x, int y) throws IOException {
        int[] raw;
        if (this.token == 0 || snapshot == null || snapshot.house != this.house || snapshot.mission != this.mission || snapshot.gameTicks != 0 || unit < 0 || unit >= snapshot.units.length || x < 0 || y < 0 || x >= snapshot.width || y >= snapshot.height) {
            throw new IOException("Invalid Razor 664 route context");
        }
        raw = RazorNativeWorldSession.campaignCoreRoute664(this.token, unit, x, y);
        return RazorCoreRoute664.parse(raw, snapshot, unit, x, y);
    }

    public synchronized int[] facingSnapshot666() throws IOException {
        int[] row;
        if (this.token == 0 || !this.routeMode665) {
            throw new IOException("Razor 666 heading session not available");
        }
        row = RazorNativeWorldSession.campaignFacing666(this.token);
        if (row == null || row.length < 6 || row[0] != 666 || row[3] != 0 || row[1] < 0 || row[1] > 512 || row.length != (row[1] * 2) + 6 || row[4] != 1) {
            throw new IOException("Razor 666 heading integrity check failed");
        }
        for (int i = 0; i < row[1]; i++) {
            if ((row[(i * 2) + 6] != 0 && row[(i * 2) + 6] != 1) || row[(i * 2) + 7] < 0 || row[(i * 2) + 7] > 255) {
                throw new IOException("Razor 666 invalid orientation");
            }
        }
        return row;
    }

    public synchronized void enableRouteMovement665() throws IOException {
        if (this.token == 0) {
            throw new IOException("Razor 665 session is closed");
        }
        if (this.routeMode665) {
            return;
        }
        try {
            if (!RazorNativeWorldSession.enableCampaignRoute665(this.token)) {
                throw new IOException("Razor 665 route mode rejected");
            }
            this.routeMode665 = true;
            poll();
        } catch (IOException | LinkageError | RuntimeException ex) {
            close();
            throw ex;
        }
    }

    public synchronized int[] configureUnitInfo669(RazorTerrainPreviewSource verified) throws IOException {
        int[] out;
        if (this.token == 0 || !this.routeMode665 || verified == null || !this.sourceSha256.equals(verified.sha256) || verified.audit.romVariant() != this.variant) {
            throw new IOException("Razor UnitInfo 669 source mismatch");
        }
        out = RazorNativeWorldSession.configureCampaignUnitInfo669(this.token, verified.authenticatedRomCopy536());
        if (out == null || out.length != 100 || out[0] != 669 || out[1] != this.variant || out[2] != 32 || out[3] != 0) {
            throw new IOException("Razor UnitInfo 669 unavailable");
        }
        for (int i = 0; i < 32; i++) {
            if (out[(i * 3) + 4] < 0 || out[(i * 3) + 4] > 255 || out[(i * 3) + 5] < 0 || out[(i * 3) + 5] > 31 || out[(i * 3) + 6] < 0 || out[(i * 3) + 6] > 5) {
                throw new IOException("Invalid Razor UnitInfo 669 fields");
            }
        }
        return out;
    }

    public synchronized int[] speedMode670(int action, int selected) throws IOException {
        int[] row;
        if (this.token == 0 || !this.routeMode665 || action < -1 || action > 1 || selected < -1 || selected >= this.guardUnitCount) {
            throw new IOException("Invalid Razor speed model request");
        }
        row = RazorNativeWorldSession.campaignSpeed670(this.token, action, selected);
        if (row == null || row.length != 12 || row[0] != 670 || row[1] < 0 || row[1] > 1 || ((action >= 0 && row[1] != action) || row[2] < 0 || row[2] > 255 || row[3] < 0 || row[4] < 0 || row[5] < 0 || row[4] + row[5] != row[3] || ((row[6] < 0 && row[6] != -1) || row[6] > 31 || row[7] < 0 || row[7] > 255 || row[8] < 0 || row[8] > 255 || row[9] < 0 || row[9] > 255 || row[10] != 0 || row[11] != this.variant))) {
            throw new IOException("Razor 670 speed model integrity failed");
        }
        return row;
    }

    public synchronized int[] emc671(RazorTerrainPreviewSource source, int action, int selected) throws IOException {
        int[] row;
        if (this.token == 0 || !this.routeMode665 || action < 0 || action > 2 || selected < -1 || selected >= this.guardUnitCount || (action == 0 && (source == null || !this.sourceSha256.equals(source.sha256) || source.audit.romVariant() != this.variant))) {
            throw new IOException("Razor 671 EMC session/source mismatch");
        }
        byte[] bank = action == 0 ? source.authenticatedUnitEmcCopy() : null;
        row = RazorNativeWorldSession.campaignEmc671(this.token, bank, action, selected);
        if (row == null || row.length != 20 || row[0] != 671 || row[1] != 1 || row[5] < 0 || row[6] < 0 || row[7] < 0 || row[7] > 1 || row[8] < 0 || row[8] > 1 || row[11] < 0 || row[11] > 5 || row[12] < 0 || row[12] > this.schedulerTicks560 || row[16] != 0 || row[17] != 0 || row[18] < 0 || row[18] > 255 || row[19] != this.guardUnitCount || (selected >= 0 && row[2] != selected)) {
            throw new IOException("Razor 671 EMC integrity check failed");
        }
        return row;
    }

    public synchronized int[] buildEmc715(RazorTerrainPreviewSource source) throws IOException {
        if (this.token == 0 || !this.routeMode665 || source == null || !this.sourceSha256.equals(source.sha256) || source.audit.romVariant() != this.variant) {
            throw new IOException("Razor BUILD.EMC 715 source mismatch");
        }
        if (this.guard.buildingCount() > 73) {
            return null;
        }
        int[] row = RazorNativeWorldSession.campaignBuildEmc715(this.token, source.authenticatedBuildEmcCopy715());
        if (row != null && row.length == 16 && row[0] == 715 && row[1] == 1 && row[2] >= 0 && row[2] <= 73 && row[3] == 0 && row[4] == 0 && row[5] == 0 && row[6] == 0 && row[7] == 0 && row[10] == 22860814 && row[11] == 0 && row[12] == 0 && row[15] == 1) {
            return row;
        }
        throw new IOException("Razor BUILD.EMC 715 attach rejected");
    }

    public synchronized int[] buildEmc715Status() throws IOException {
        int[] row;
        if (this.token == 0 || !this.routeMode665) {
            throw new IOException("Razor BUILD.EMC 715 session closed");
        }
        row = RazorNativeWorldSession.campaignBuildEmc715(this.token, null);
        if (!RazorBuildStatus729.accept(row, this.registeredDynamicBuilds729)) {
            throw new IOException("Razor BUILD.EMC 715 status mismatch");
        }
        return row;
    }

    public synchronized int[] deployMcv726(int ordinal) throws IOException {
        int[] row;
        if (this.token == 0 || !this.routeMode665 || ordinal < 0 || ordinal >= this.guardUnitCount || this.house != 1) {
            throw new IOException("Razor MCV deploy 726 is unavailable");
        }
        row = RazorNativeWorldSession.campaignDeploy726(this.token, ordinal);
        if (row == null || row.length != 14 || row[0] != 727 || row[1] != 1 || row[2] != ordinal || row[3] < 0 || row[3] >= 128 || row[4] < 0 || row[4] >= 128 || row[5] < 0 || row[5] >= 128 || row[6] != 1 || row[7] != 8 || row[8] < 0 || row[9] != 1 || row[10] < 1 || row[11] != 1 || row[13] < 1) {
            throw new IOException("MCV нельзя развернуть здесь: неподходящий грунт, занятая клетка или незавершённый приказ");
        }
        poll();
        this.registeredDynamicBuilds729 = row[13];
        return row;
    }

    public synchronized int[] buildEmcOwner716(int raw) throws IOException {
        int[] row;
        if (this.token == 0 || !this.routeMode665 || raw < 0 || raw >= this.guard.buildingCount() || raw >= 73) {
            throw new IOException("Razor 716 owner out of range");
        }
        row = RazorNativeWorldSession.campaignBuildOwner716(this.token, raw);
        if (row == null || row.length != 32 || row[0] != 716 || row[1] != 1 || row[2] != raw || row[3] != this.guard.buildingCount() || row[4] < 0 || row[4] >= 19 || row[5] < 0 || row[5] >= 5 || row[10] < 0 || row[10] > 1 || row[11] < 0 || row[11] > 1 || row[12] < 0 || row[12] > 17 || row[13] < 0 || row[13] > 15 || row[17] < 0 || row[17] > 2 || row[18] < 0 || row[18] > 255 || row[19] < 0 || row[19] >= 502 || row[31] != 0) {
            throw new IOException("Razor 716 owner integrity check failed");
        }
        return row;
    }

    private int[] acceptEmc672(int[] r, int selected) throws IOException {
        if (r != null && r.length == 24 && r[0] == 672 && r[1] == 1 && r[2] == this.guardUnitCount && r[22] == this.guardUnitCount && r[5] >= 0 && r[6] >= 0 && r[7] >= 0 && r[8] >= 0 && r[5] + r[6] + r[7] + r[8] == this.guardUnitCount && r[9] >= 0 && r[9] <= r[6] && r[10] == r[6] - r[9] && r[3] >= 0 && r[4] >= 0) {
            if (r[11] == (selected < 0 ? -1 : selected) && ((r[14] >= 0 || r[14] == -1) && r[16] == 0 && r[17] >= 0 && r[17] <= r[4] && r[18] == 1836472757 && r[19] >= r[3] && r[23] >= 0 && r[23] <= 4 && (selected < 0 || (r[12] >= 0 && r[13] >= 0 && r[14] <= 255)))) {
                return r;
            }
        }
        throw new IOException("Razor 672 per-unit EMC consistency failed");
    }

    public synchronized int[] emc672(int action, int selected) throws IOException {
        if (this.token == 0 || !this.routeMode665 || action < 0 || action > 5 || selected < -1 || selected >= this.guardUnitCount) {
            throw new IOException("Invalid Razor EMC 672 request");
        }
        return acceptEmc672(RazorNativeWorldSession.campaignEmc672(this.token, action, selected), selected);
    }

    public static final class IntegratedStep694 {
        public final int[] emc;
        public final RazorTickEvidence729 proof;
        public final SandboxTick560 tick;

        IntegratedStep694(SandboxTick560 tick, int[] emc) {
            this(tick, emc, null);
        }

        IntegratedStep694(SandboxTick560 tick, int[] emc, RazorTickEvidence729 proof) {
            this.tick = tick;
            this.emc = emc;
            this.proof = proof;
        }
    }

    public synchronized IntegratedStep694 integratedStep694() throws IOException {
        int[] sched;
        int[] emc;
        if (this.token == 0 || !this.routeMode665) {
            throw new IOException("Razor integrated session unavailable");
        }
        try {
            int[] both = this.access.integrated694(this.token);
            if (both == null || both.length != 40) {
                throw new IOException("Invalid Razor 694 integrated result");
            }
            sched = new int[16];
            emc = new int[24];
            System.arraycopy(both, 0, sched, 0, 16);
            System.arraycopy(both, 16, emc, 0, 24);
            acceptEmc672(emc, -1);
        } catch (IOException | LinkageError | RuntimeException ex) {
            close();
            throw ex;
        }
        return new IntegratedStep694(acceptScheduler560(sched), emc);
    }

    public synchronized IntegratedStep694 integratedStep729() throws IOException {
        int[] emc;
        RazorTickEvidence729 proof;
        SandboxTick560 tick;
        if (this.token == 0 || !this.routeMode665) {
            throw new IOException("Razor 729 tick session unavailable");
        }
        try {
            int[] all = this.access.tick729(this.token);
            if (all == null || all.length != 56) {
                throw new IOException("Missing Razor 729 native tick report");
            }
            int[] sched = new int[16];
            emc = new int[24];
            System.arraycopy(all, 0, sched, 0, 16);
            System.arraycopy(all, 16, emc, 0, 24);
            acceptEmc672(emc, -1);
            proof = RazorTickEvidence729.validate(all, this.schedulerTicks560 + 1, this.lastProof729);
            tick = acceptScheduler560(sched);
            this.lastProof729 = proof;
        } catch (IOException | LinkageError | RuntimeException ex) {
            close();
            throw ex;
        }
        return new IntegratedStep694(tick, emc, proof);
    }

    public synchronized int[] emcOwner673(int selected) throws IOException {
        int[] r;
        if (this.token != 0 && this.routeMode665) {
            int i = -1;
            if (selected >= -1 && selected < this.guardUnitCount) {
                r = RazorNativeWorldSession.campaignEmcOwner673(this.token, selected);
                if (r != null && r.length == 24 && r[0] == 673 && r[1] == 1) {
                    int i2 = r[2];
                    if (selected >= 0) {
                        i = selected;
                    }
                    if (i2 == i && r[14] >= 0 && r[16] == 0 && r[17] == 0 && ((r[18] == 0 || r[18] == 1) && r[19] == 0)) {
                        if (r[21] == (this.variant == 1 ? 64 : 128) && r[15] >= 0 && r[15] <= 1 && (selected < 0 || (r[4] >= 0 && r[4] < 32 && r[6] >= 0 && r[7] >= 0 && r[8] >= 0 && r[9] >= 0 && r[10] >= 0 && r[10] < 27 && r[11] >= 0 && r[12] >= 1 && r[12] <= 4 && r[20] >= 0 && r[22] >= 0 && r[22] <= 1))) {
                        }
                    }
                }
                throw new IOException("Razor 673 owner bridge refused mismatch");
            }
        }
        throw new IOException("Invalid Razor 673 owner selection");
        return r;
    }

    public synchronized int[] corePass667() throws IOException {
        if (this.token == 0 || !this.routeMode665) {
            throw new IOException("Razor C core pass not enabled");
        }
        int[] row = this.access.core667(this.token);
        if (row == null) {
            return null;
        }
        if (row.length == 10 && row[0] == 667 && row[1] == this.schedulerTicks560 && row[2] <= row[1] * this.guardUnitCount && row[2] >= row[1] * (this.guardUnitCount - this.registeredDynamicBuilds729) && row[3] == this.schedulerMoves560 && row[4] == row[1] % 4 && row[5] == this.guardUnitCount && row[6] >= row[3] && row[6] <= row[2] && row[7] == this.schedulerTicks560 && row[8] == 0 && row[9] == 0) {
            return row;
        }
        throw new IOException("Invalid Razor recovered C owner-pass evidence");
    }

    public synchronized int[] coreCadence668() throws IOException {
        if (this.token == 0 || !this.routeMode665) {
            throw new IOException("Razor cadence not enabled");
        }
        int[] r = this.access.cadence668(this.token);
        if (r == null) {
            return null;
        }
        if (r.length != 10 || r[0] != 668 || r[1] != this.schedulerTicks560 || r[2] < 0 || r[3] < 0 || r[4] < 0 || r[2] > r[1] || r[3] > r[1] || r[4] > r[1] || r[5] < 0 || r[6] < 0 || r[7] < 0 || r[8] != 0 || r[9] != 0) {
            throw new IOException("Invalid Razor 668 recovered cadence");
        }
        return r;
    }

    public static final class SandboxTick560 {
        public final boolean active;
        public final boolean moved;
        public final int moves;
        public final int orderSteps;
        public final int status;
        public final int steps;
        public final int ticks;
        public final int unit;

        /* renamed from: x */
        public final int f30x;

        /* renamed from: y */
        public final int f31y;

        SandboxTick560(int[] w) {
            this.ticks = w[1];
            this.moved = w[2] == 1;
            this.status = w[3];
            this.unit = w[4];
            this.f30x = w[5];
            this.f31y = w[6];
            this.orderSteps = w[7];
            this.steps = w[8];
            this.active = w[9] == 1;
            this.moves = w[15];
        }
    }

    private SandboxTick560 acceptScheduler560(int[] w) throws IOException {
        if (w == null || w.length != 16 || w[0] != 560 || w[1] != this.schedulerTicks560 + 1 || w[1] > 1000000 || ((w[2] != 0 && w[2] != 1) || w[10] != 0 || !this.guard.sameSourceHashes(w[11], w[12], w[13]) || w[14] != this.guardUnitCount || ((w[9] != 0 && w[9] != 1) || w[7] < this.orderSteps || w[8] < this.probeSteps || w[7] > w[8] || !RazorSchedulerGuard751.validMovementDelta(w, this.orderSteps, this.probeSteps, this.schedulerMoves560, this.guardUnitCount) || ((w[4] != -1 && (w[4] < 0 || w[4] >= this.guardUnitCount || w[5] < 0 || w[5] >= this.guard.worldWidth() || w[6] < 0 || w[6] >= this.guard.worldHeight())) || (w[4] == -1 && (w[5] != -1 || w[6] != -1)))))) {
            throw new IOException("Invalid native Razor sandbox tick" + RazorSchedulerGuard751.diagnostic(w, this.orderSteps, this.probeSteps, this.schedulerTicks560, this.schedulerMoves560));
        }
        this.schedulerTicks560 = w[1];
        this.schedulerMoves560 = w[15];
        this.orderSteps = w[7];
        this.probeSteps = w[8];
        poll();
        return new SandboxTick560(w);
    }

    public synchronized SandboxTick560 schedulerStep560() throws IOException {
        if (this.token == 0) {
            throw new IOException("Razor scheduler session closed");
        }
        try {
        } catch (IOException | LinkageError | RuntimeException e) {
            close();
            throw e;
        }
        return acceptScheduler560(this.access.scheduler(this.token));
    }

    public synchronized int[] subtileSnapshot565(RazorCampaignMapSnapshot559 frame) throws IOException {
        int[] data;
        if (this.token == 0 || frame == null) {
            throw new IOException("Razor subtile session closed");
        }
        try {
            data = this.access.subtile565(this.token);
            if (data == null || data.length != frame.units.length + 4 || data[0] != 565 || data[1] != frame.units.length || data[2] < 0 || data[2] > 1000000 || data[3] != 0) {
                throw new IOException("Invalid Razor subtile native snapshot");
            }
            for (int i = 0; i < frame.units.length; i++) {
                RazorCampaignMapSnapshot559.Unit u = frame.units[i];
                data[i + 4] = RazorPresentationCoordinates750.boundedRawOrCentre(data[i + 4], u.f28x, u.f29y, frame.width, frame.height);
            }
        } catch (IOException | LinkageError | RuntimeException e) {
            if (e instanceof IOException) {
                throw ((IOException) e);
            }
            throw new IOException("Razor 565 presentation snapshot failed", e);
        }
        return data;
    }

    public synchronized int[] hud743(RazorCampaignMapSnapshot559 frame) {
        if (this.token == 0 || frame == null) {
            return null;
        }
        try {
            int[] a = this.access.hud743(this.token);
            if (a != null && a.length == (frame.units.length * 3) + 2 && a[0] == 743 && a[1] == frame.units.length) {
                for (int i = 0; i < frame.units.length; i++) {
                    int moving = a[(i * 3) + 2];
                    int hp = a[(i * 3) + 3];
                    int max = a[(i * 3) + 4];
                    if (moving < 0 || moving > 1 || hp < 0 || max < 0 || hp > max || ((max == 0 && hp != 0) || (frame.units[i].retired && moving != 0))) {
                        return null;
                    }
                }
                return a;
            }
            return null;
        } catch (LinkageError | RuntimeException e) {
            return null;
        }
    }

    public synchronized int[] waypointVisual742(RazorCampaignMapSnapshot559 frame) throws IOException {
        int[] centres = waypointVisual739(frame);
        try {
            int[] fractional = this.access.visual738(this.token);
            if (fractional != null && fractional.length == centres.length && fractional[0] == 738 && fractional[1] == frame.units.length && fractional[3] == 0) {
                for (int i = 0; i < frame.units.length; i++) {
                    RazorCampaignMapSnapshot559.Unit u = frame.units[i];
                    if (!u.retired) {
                        int raw = fractional[i + 4];
                        int x = raw & 65535;
                        int y = 65535 & (raw >>> 16);
                        int centreX = (u.f28x * 256) + 128;
                        int centreY = (u.f29y * 256) + 128;
                        if (x >= 0 && x < frame.width * 256 && y >= 0 && y < frame.height * 256 && Math.abs(x - centreX) <= 256 && Math.abs(y - centreY) <= 256) {
                            centres[i + 4] = raw;
                        }
                    }
                }
                return centres;
            }
            return centres;
        } catch (LinkageError | RuntimeException e) {
            return centres;
        }
    }

    public synchronized int[] waypointVisual739(RazorCampaignMapSnapshot559 frame) throws IOException {
        int[] out;
        if (this.token == 0 || frame == null) {
            throw new IOException("Razor waypoint session closed");
        }
        out = new int[frame.units.length + 4];
        out[0] = 565;
        out[1] = frame.units.length;
        out[2] = this.schedulerTicks560;
        out[3] = 0;
        for (int i = 0; i < frame.units.length; i++) {
            RazorCampaignMapSnapshot559.Unit u = frame.units[i];
            out[i + 4] = RazorWaypointVisual739.committedCentre740(u.f28x, u.f29y, frame.width, frame.height);
        }
        return out;
    }

    public synchronized int[] visualSnapshot738(RazorCampaignMapSnapshot559 frame) throws IOException {
        int[] data;
        if (this.token == 0 || frame == null) {
            throw new IOException("Razor visual session closed");
        }
        try {
            data = this.access.visual738(this.token);
            if (data == null || data.length != frame.units.length + 4 || data[0] != 738 || data[1] != frame.units.length || data[2] < 0 || data[2] > 1000000 || data[3] != 0) {
                throw new IOException("Invalid Razor 738 visual snapshot");
            }
            for (int i = 0; i < frame.units.length; i++) {
                RazorCampaignMapSnapshot559.Unit unit = frame.units[i];
                int raw = data[i + 4];
                int rx = raw & 65535;
                int ry = 65535 & (raw >>> 16);
                int centerX = (unit.f28x * 256) + 128;
                int centerY = (unit.f29y * 256) + 128;
                int ddx = rx - centerX;
                int ddy = ry - centerY;
                if (rx >= frame.width * 256 || ry >= frame.height * 256 || Math.abs(ddx) > 255 || Math.abs(ddy) > 255 || (unit.retired && (ddx != 0 || ddy != 0))) {
                    throw new IOException("Razor 738 visual offset violates map authority");
                }
            }
        } catch (IOException | LinkageError | RuntimeException e) {
            close();
            throw e;
        }
        return data;
    }

    public synchronized int[] bootBirthEvidence567() throws IOException {
        if (this.token == 0) {
            throw new IOException("Razor boot session closed");
        }
        int[] row = this.access.birth567(this.token);
        if (row == null) {
            return null;
        }
        if (row.length == 8 && row[0] == 567 && row[1] == this.guardUnitCount && row[2] == this.guardUnitCount && row[3] == 0 && row[4] == this.guardUnitCount && row[5] == this.guard.sourceHashes()[1] && row[6] == 0 && row[7] == 1) {
            return row;
        }
        close();
        throw new IOException("Invalid Razor native birth replay");
    }

    public synchronized int[] selectedUnitIdentity566(int ordinal) throws IOException {
        int[] d;
        if (this.token == 0 || ordinal < 0 || ordinal >= this.guardUnitCount) {
            throw new IOException("Invalid Razor unit identity request");
        }
        d = this.access.identity566(this.token, ordinal);
        if (d == null || d.length != 10 || d[0] != 566 || d[1] != ordinal || d[2] != 1 || d[3] < 0 || d[3] > 255 || d[4] < 0 || d[4] >= 5 || d[5] < 0 || d[5] >= 32 || d[6] < 0 || d[6] >= 27 || d[7] < 0 || d[7] >= this.guard.worldWidth() || d[8] < 0 || d[8] >= this.guard.worldHeight() || d[9] != 0) {
            throw new IOException("Invalid Razor 566 identity");
        }
        return d;
    }

    public synchronized RazorConstruction571 construction571(int action, int x, int y) throws IOException {
        Throwable e;
        RazorConstruction571 result;
        if (this.token != 0 && action >= 0 && action <= 5 && x >= 0 && y >= 0) {
            if ((action != 2 && action != 4) || (x < this.guard.worldWidth() && y < this.guard.worldHeight())) {
                try {
                } catch (IOException | LinkageError | RuntimeException e2) {
                    e = e2;
                }
                try {
                    result = RazorConstruction571.parse(this.access.construction571(this.token, action, x, y), this.guard.worldWidth(), this.guard.worldHeight(), this.house);
                    poll();
                } catch (IOException | LinkageError | RuntimeException e3) {
                    e = e3;
                    close();
                    throw e;
                }
            }
        }
        throw new IOException("Invalid Razor construction test request");
        return result;
    }

    public synchronized RazorRefinery570 refinery570(int action, int x, int y) throws IOException {
        Throwable e;
        RazorRefinery570 value;
        if (this.token != 0 && action >= 0 && action <= 3 && x >= 0 && y >= 0) {
            if (x <= this.guard.worldWidth() && y <= this.guard.worldHeight()) {
                if ((action != 1 && action != 2) || (x < this.guard.worldWidth() && y < this.guard.worldHeight())) {
                    try {
                    } catch (IOException | LinkageError | RuntimeException e2) {
                        e = e2;
                    }
                    try {
                        int[] row = this.access.refinery570(this.token, action, x, y);
                        value = RazorRefinery570.parse(row, this.guard.worldWidth(), this.guard.worldHeight(), this.house);
                        poll();
                    } catch (IOException | LinkageError | RuntimeException e3) {
                        e = e3;
                        close();
                        throw e;
                    }
                }
            }
        }
        throw new IOException("Invalid Razor refinery experiment request");
        return value;
    }

    public synchronized int demoBirth569(int action, int handle, int x, int y) throws IOException {
        Throwable ex;
        int[] row;
        if (this.token == 0 || action < 1 || action > 3) {
            throw new IOException("Razor demo session closed");
        }
        try {
        } catch (IOException | LinkageError | RuntimeException e) {
            ex = e;
        }
        try {
            row = this.access.demo569(this.token, action, handle, x, y);
            if (row == null || row.length != 4 || row[0] != 569 || row[1] != action || row[2] <= 0 || ((action != 1 && row[2] != handle) || row[3] != 0)) {
                throw new IOException("Razor developer lifecycle command rejected");
            }
            poll();
        } catch (IOException | LinkageError | RuntimeException e2) {
            ex = e2;
            if (ex instanceof IOException) {
                throw ((IOException) ex);
            }
            close();
            throw new IOException("Razor lifecycle command failed", ex);
        }
        return row[2];
    }

    public synchronized RazorDynamicObjects569 dynamicObjects569(RazorCampaignMapSnapshot559 map) throws IOException {
        if (this.token == 0) {
            throw new IOException("Razor dynamic session closed");
        }
        int[] raw = this.access.dynamic569(this.token);
        if (raw == null) {
            return RazorDynamicObjects569.parse(new int[]{569, map.units.length, 0, 0, 0, 0, 8}, map);
        }
        return RazorDynamicObjects569.parse(raw, map);
    }

    public synchronized RazorCampaignMapSnapshot559 mapSnapshot559() throws IOException {
        RazorCampaignMapSnapshot559 result;
        if (this.token == 0) {
            throw new IOException("Razor map session closed");
        }
        try {
            poll();
            int[] hash = this.guard.sourceHashes();
            if (hash == null) {
                throw new IOException("Razor map has no source guard");
            }
            result = RazorCampaignMapSnapshot559.parse(this.access.map(this.token), this.house, this.mission, this.guardUnitCount, this.guard.buildingCount(), this.guard.worldWidth(), this.guard.worldHeight(), this.guard.worldStride(), hash[0], hash[1], hash[2], this.lastMap559);
            this.lastMap559 = result;
        } catch (IOException | Error | RuntimeException failure) {
            close();
            throw failure;
        }
        return result;
    }

    public synchronized String movementTrace562() throws IOException {
        StringBuilder t;
        if (this.token == 0) {
            throw new IOException("Razor trace session closed");
        }
        try {
            poll();
            int[] w = this.access.trace562(this.token);
            int[] hashes = this.guard.sourceHashes();
            if (w != null && hashes != null) {
                int i = 12;
                if (w.length >= 12 && w[0] == 562 && w[1] >= 0 && w[1] <= 64 && w[2] == 10 && w.length == (w[1] * 10) + 12 && w[3] >= 0 && w[3] <= 1000000 && w[4] >= 0 && w[4] <= 1000000 && w[5] == 0 && w[6] == hashes[0] && w[7] == hashes[1] && w[8] == hashes[2] && w[9] == this.guardUnitCount && w[10] == this.guard.worldStride() && w[11] == 1) {
                    t = new StringBuilder(6000);
                    t.append("demulation.razor.sandbox-movement.v562\n").append("rom_sha256=").append(this.sourceSha256).append('\n').append("house=").append(this.house).append(" mission=").append(this.mission).append(" variant=").append(this.variant).append(" game_ticks=0 (NOT verified Razor)\n").append("sandbox_steps=").append(w[3]).append(" sandbox_calls=").append(w[4]).append(" captured_movements=").append(w[1]).append('\n').append("step\tsandbox_clock_before_step\tunit\tfrom_x\tfrom_y\tto_x\tto_y\ttarget_x\ttarget_y\tdestination_class_or_unknown\n");
                    int last = 0;
                    int i2 = 0;
                    while (i2 < w[1]) {
                        int base = (i2 * 10) + i;
                        int step = w[base];
                        if (step <= last || step > w[3] || w[base + 1] < 0 || w[base + 1] > w[4] || w[base + 2] < 0 || w[base + 2] >= this.guardUnitCount || w[base + 3] < 0 || w[base + 3] >= this.guard.worldWidth() || w[base + 4] < 0 || w[base + 4] >= this.guard.worldHeight() || w[base + 5] < 0 || w[base + 5] >= this.guard.worldWidth() || w[base + 6] < 0 || w[base + 6] >= this.guard.worldHeight() || Math.abs(w[base + 3] - w[base + 5]) + Math.abs(w[base + 4] - w[base + 6]) != 1 || w[base + 7] < 0 || w[base + 7] >= this.guard.worldWidth() || w[base + 8] < 0 || w[base + 8] >= this.guard.worldHeight() || (w[base + 9] != -1 && (w[base + 9] < 0 || w[base + 9] > 255))) {
                            throw new IOException("Invalid Razor movement trace event");
                        }
                        last = step;
                        int k = 0;
                        while (k < 10) {
                            if (k > 0) {
                                t.append('\t');
                            }
                            t.append((k == 9 && w[base + k] == -1) ? "unknown" : Integer.toString(w[base + k]));
                            k++;
                        }
                        t.append('\n');
                        i2++;
                        i = 12;
                    }
                }
            }
            throw new IOException("Invalid Razor movement trace metadata");
        } catch (IOException | Error | RuntimeException failure) {
            close();
            throw failure;
        }
        return t.toString();
    }

    public static final class OrderResult {
        public final int action;
        public final boolean active;
        public final int fromX;
        public final int fromY;
        public final int ordinal;
        public final int status;
        public final int steps;
        public final int targetX;
        public final int targetY;
        public final int toX;
        public final int toY;

        OrderResult(int a, int s, int id, int fx, int fy, int tx, int ty, int gx, int gy, int count, boolean active) {
            this.action = a;
            this.status = s;
            this.ordinal = id;
            this.fromX = fx;
            this.fromY = fy;
            this.toX = tx;
            this.toY = ty;
            this.targetX = gx;
            this.targetY = gy;
            this.steps = count;
            this.active = active;
        }
    }

    public static final class ExperimentalStep {
        public final int fromX;
        public final int fromY;
        public final boolean moved;
        public final int ordinal;
        public final int steps;
        public final int toX;
        public final int toY;

        ExperimentalStep(boolean moved, int ordinal, int x0, int y0, int x1, int y1, int n) {
            this.moved = moved;
            this.ordinal = ordinal;
            this.fromX = x0;
            this.fromY = y0;
            this.toX = x1;
            this.toY = y1;
            this.steps = n;
        }
    }

    public synchronized int[] frameIngress634(int action, long frameTimeNs) throws IOException {
        int[] data;
        if (this.token == 0) {
            throw new IOException("Razor mission session closed");
        }
        data = this.access.frameIngress634(this.token, action, frameTimeNs);
        if (data == null || data.length != 25 || data[0] != 634 || data[24] != 1 || data[17] != 0 || data[18] != 0 || data[19] != 0 || data[20] != 0 || data[21] != 0 || data[22] != 0 || data[23] != 0 || (action != 4 && (data[2] != this.house || data[3] != this.mission || data[15] != 1))) {
            throw new IOException("Razor frame source 634 rejected or tick gate changed");
        }
        return data;
    }

    public synchronized int[] simulationStep635() throws IOException {
        int[] r;
        if (this.token == 0) {
            throw new IOException("Razor mission session closed");
        }
        r = this.access.simulationStep635(this.token);
        if (r == null || r.length != 32 || r[0] != 635 || r[1] != 1 || r[2] != this.house || r[3] != this.mission || r[5] < 0 || r[5] > 1 || r[8] != r[9] || r[10] != r[11] || r[13] != r[14] || r[15] != r[16] || r[17] != r[18] || r[20] != r[5] || r[24] != 0 || r[25] != 0 || r[26] != 0 || r[27] != 0 || r[28] != 0 || r[29] != 1 || r[30] != 0 || r[31] != 0) {
            throw new IOException("Razor 635 detached checkpoint rejected");
        }
        return r;
    }

    public synchronized boolean isOpen() {
        return this.token != 0;
    }

    @Override // java.lang.AutoCloseable
    public synchronized void close() {
        if (this.token != 0) {
            long old = this.token;
            this.token = 0L;
            this.access.close(old);
        }
    }
}
