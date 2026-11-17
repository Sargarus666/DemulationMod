package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82cRazorMissionBundle;
import com.ahsim.demulation.RazorMissionBootProbe;
import com.ahsim.demulation.RazorTerrainVisualSource;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class RazorNativeWorldSession implements AutoCloseable {
    private static final int BLOCKED = 63;
    private static final int WORDS = 32;
    private final int[] baseline;
    public final int house;
    private int[] lastBoot541;
    private int[] lastM68kBackend535;
    private int[] lastPrecallF40533;
    private int lastRead;
    private int[] lastRomSmoke536;
    private int[] lastSandboxGate534;
    private int[] lastTrace538;
    public final int mission;
    private final RazorMissionBootProbe.Report proof;
    public final String sourceSha256;
    private long token;
    public final int variant;

    private static native int[] nativeAdvanceObservation530(long j, int i);

    private static native boolean nativeBeginObservation530(long j, byte[] bArr, int i);

    private static native int[] nativeCallerBranch657(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, int[] iArr);

    private static native int[] nativeCallerCounter656(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, int[] iArr);

    private static native int[] nativeCallerDispatch647(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, int[] iArr);

    private static native int[] nativeCallerTarget648(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, int[] iArr);

    private static native int[] nativeCampaignBirth567(long j);

    private static native int[] nativeCampaignBuildEmc715(long j, byte[] bArr);

    private static native int[] nativeCampaignBuildOwner716(long j, int i);

    private static native int[] nativeCampaignCadence668(long j);

    private static native int[] nativeCampaignCapture584(long j, int i);

    private static native int[] nativeCampaignConstruction571(long j, int i, int i2, int i3);

    private static native int[] nativeCampaignCore667(long j);

    private static native int[] nativeCampaignCoreRoute664(long j, int i, int i2, int i3);

    private static native int[] nativeCampaignDemo569(long j, int i, int i2, int i3, int i4);

    private static native int[] nativeCampaignDeploy726(long j, int i);

    private static native int[] nativeCampaignDynamic569(long j);

    private static native int[] nativeCampaignEconomy573(long j);

    private static native int[] nativeCampaignEmc671(long j, byte[] bArr, int i, int i2);

    private static native int[] nativeCampaignEmc672(long j, int i, int i2);

    private static native int[] nativeCampaignEmcOwner673(long j, int i);

    private static native int[] nativeCampaignFacing666(long j);

    private static native int[] nativeCampaignFinance574(long j, int i, int i2, int i3);

    private static native int[] nativeCampaignFinance575(long j, int i, int i2, int i3, int i4);

    private static native int[] nativeCampaignFinance576(long j, int i, int i2, int i3);

    private static native int[] nativeCampaignHud743(long j);

    private static native int[] nativeCampaignIntegratedStep694(long j);

    private static native int[] nativeCampaignLifecycle568(long j);

    private static native int[] nativeCampaignMap559(long j);

    private static native int[] nativeCampaignOrder557(long j, int i, int i2, int i3, int i4);

    private static native int[] nativeCampaignRefinery570(long j, int i, int i2, int i3);

    private static native int[] nativeCampaignSandboxProbe556(long j);

    private static native int[] nativeCampaignScheduler560(long j);

    private static native int[] nativeCampaignSpeed670(long j, int i, int i2);

    private static native int[] nativeCampaignSubtile565(long j);

    private static native int[] nativeCampaignTick729(long j);

    private static native int[] nativeCampaignTrace562(long j);

    private static native int[] nativeCampaignUnitIdentity566(long j, int i);

    private static native int[] nativeCampaignVisual738(long j);

    private static native int[] nativeClockGates649(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, int[] iArr);

    private static native boolean nativeClose(long j);

    private static native int[] nativeConfigureCampaignUnitInfo669(long j, byte[] bArr);

    private static native boolean nativeConfigureTerrain561(long j, byte[] bArr);

    private static native int[] nativeConstructionAtomic631(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, int i, int i2, int i3, int i4, int i5);

    private static native int[] nativeConstructionBridge628(long j, byte[] bArr, int i, int i2, int i3);

    private static native int[] nativeConstructionOracle630(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, int i, int i2, int i3, int i4, int i5);

    private static native int[] nativeConstructionSchedule632(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9);

    private static native int[] nativeConstructionSession633(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9);

    private static native int[] nativeConstructionWitness629(long j, byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, int i5, boolean z);

    private static native boolean nativeEnableCampaignRoute665(long j);

    private static native boolean nativeEnableSubtile565(long j);

    private static native int[] nativeF40SandboxGate534(long j);

    private static native int[] nativeFirstUnitIdentity(long j);

    private static native int[] nativeFrameIngress634(long j, int i, long j2);

    private static native int[] nativeGenesisBootProbe541(long j, byte[] bArr);

    private static native int[] nativeM68kBackendStatus535(long j);

    private static native int[] nativeM68kRomSmoke536(long j, byte[] bArr);

    private static native int[] nativeM68kTrace538(long j, byte[] bArr);

    private static native byte[] nativeMapCells411(long j);

    private static native long nativeOpen(byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, int i5);

    private static native int[] nativePaymentCalc595(long j, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8);

    private static native int[] nativePaymentFromRom627(long j, byte[] bArr, int i, int i2, int i3, int i4);

    private static native int[] nativePaymentOpcode594(long j, int i, int i2, int i3, int i4, int i5, int i6);

    private static native boolean nativePinF40Session419(long j, byte[] bArr, int i);

    private static native int[] nativePrecallF40533(long j);

    private static native int[] nativeProbeFirstUnit(long j, byte[] bArr, int i);

    private static native int[] nativeProbeFunctionBoundary(long j, byte[] bArr, int i);

    private static native int[] nativeRead(long j);

    private static native int[] nativeReadF40Session419(long j, byte[] bArr);

    private static native boolean nativeResetObservation530(long j);

    private static native int[] nativeScriptAdvance637(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, int i, int i2, int i3, int i4, int i5);

    private static native int[] nativeScriptCaller643(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, int i, int i2, int i3, int i4, int i5, int i6, int i7);

    private static native int[] nativeScriptDispatch638(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9);

    private static native int[] nativeScriptEpilogue644(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, int[] iArr);

    private static native int[] nativeScriptFetch636(long j, byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, int i5);

    private static native int[] nativeScriptHandler641(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, int i, int i2, int i3, int i4, int i5, int i6);

    private static native int[] nativeScriptPrejump639(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11);

    private static native int[] nativeScriptReturn642(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, int i, int i2, int i3, int i4, int i5, int i6, int i7);

    private static native int[] nativeScriptTable640(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11);

    private static native int[] nativeShadowContext405(long j, byte[] bArr, int i);

    private static native int[] nativeSimulationStep635(long j);

    private static native int[] nativeUnitDispatch651(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, int[] iArr);

    private static native int[] nativeUnitExit646(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, int[] iArr);

    private static native int[] nativeUnitFlagPrestate416(long j);

    private static native int[] nativeUnitHandler652(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, int[] iArr);

    private static native int[] nativeUnitHandler653(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, int[] iArr);

    private static native int[] nativeUnitHandler654(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, int[] iArr);

    private static native int[] nativeUnitHandler655(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, int[] iArr);

    private static native int[] nativeUnitLoop645(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, int[] iArr);

    private static native int[] nativeUnitScan650(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, int[] iArr);

    private static native int[] nativeUnitSnapshot403(long j);

    static {
        System.loadLibrary("dunehost");
    }

    static long openCampaignWorld(DuneHackR82cRazorMissionBundle.Mission mission) {
        return nativeOpen(mission.mapBytes(), mission.scenarioBytes(), mission.house, mission.mission, mission.storedMapSide, mission.scenarioMapWidth, mission.scenarioMapHeight);
    }

    static boolean configureCampaignTerrain561(long token, byte[] lookup) {
        return nativeConfigureTerrain561(token, lookup);
    }

    static int[] pollCampaignWorld(long token) {
        return nativeRead(token);
    }

    static int[] campaignTrace562(long token) {
        return nativeCampaignTrace562(token);
    }

    static boolean enableSubtile565(long token) {
        return nativeEnableSubtile565(token);
    }

    static int[] campaignSubtile565(long token) {
        return nativeCampaignSubtile565(token);
    }

    static int[] campaignHud743(long token) {
        return nativeCampaignHud743(token);
    }

    static int[] campaignVisual738(long token) {
        return nativeCampaignVisual738(token);
    }

    static int[] campaignUnitIdentity566(long token, int ordinal) {
        return nativeCampaignUnitIdentity566(token, ordinal);
    }

    static int[] campaignBirth567(long token) {
        return nativeCampaignBirth567(token);
    }

    static int[] campaignDynamic569(long token) {
        return nativeCampaignDynamic569(token);
    }

    static int[] campaignDemo569(long token, int action, int handle, int x, int y) {
        return nativeCampaignDemo569(token, action, handle, x, y);
    }

    static int[] campaignRefinery570(long token, int action, int x, int y) {
        return nativeCampaignRefinery570(token, action, x, y);
    }

    static int[] campaignEconomy573(long token) {
        return nativeCampaignEconomy573(token);
    }

    static int[] campaignFinance574(long token, int action, int cost, int time) {
        return nativeCampaignFinance574(token, action, cost, time);
    }

    static int[] campaignFinance575(long token, int action, int frames, int cost, int time) {
        return nativeCampaignFinance575(token, action, frames, cost, time);
    }

    static int[] campaignFinance576(long token, int action, int cost, int time) {
        return nativeCampaignFinance576(token, action, cost, time);
    }

    static int[] campaignCapture584(long token, int action) {
        return nativeCampaignCapture584(token, action);
    }

    static int[] paymentCalc595(long token, int action, int cash, int paid, int remaining, int fraction, int d2, int d5, int typeByte) {
        return nativePaymentCalc595(token, action, cash, paid, remaining, fraction, d2, d5, typeByte);
    }

    static int[] paymentFromRom627(long token, byte[] rom, int a5, int typeByte, int powerNum, int powerDen) {
        return nativePaymentFromRom627(token, rom, a5, typeByte, powerNum, powerDen);
    }

    static int[] constructionBridge628(long token, byte[] rom, int action, int powerNum, int powerDen) throws IOException {
        if (action < 0 || action > 3) {
            throw new IllegalArgumentException("action");
        }
        int variant = 2;
        if (action == 1 || action == 2) {
            if (rom != null && rom.length == 3145728) {
                variant = 1;
            } else if (rom == null || rom.length != 4194304) {
                variant = 0;
            }
            DuneHackR82cRazorMissionBundle.BuildingData572 bank = DuneHackR82cRazorMissionBundle.BuildingData572.fromVerifiedRazor(rom, variant);
            if (bank.get(12).cost != 1000 || bank.get(12).productionWord != 20) {
                throw new IOException("Razor 628 structure descriptor mismatch");
            }
        }
        return nativeConstructionBridge628(token, rom, action, powerNum, powerDen);
    }

    static int[] constructionWitness629(long token, byte[] rom, byte[] ram, int pc, int a2, int a3, int a4, int a5, boolean dryrun) throws IOException {
        int variant;
        if (rom == null || rom.length != 3145728) {
            variant = (rom == null || rom.length != 4194304) ? 0 : 2;
        } else {
            variant = 1;
        }
        DuneHackR82cRazorMissionBundle.BuildingData572 bank = DuneHackR82cRazorMissionBundle.BuildingData572.fromVerifiedRazor(rom, variant);
        if (ram == null || ram.length != 65536 || bank.get(8).maxHp != 3000 || bank.get(12).cost != 1000 || bank.get(12).productionWord != 20) {
            throw new IOException("Razor 629 invalid RAM or ROM descriptor");
        }
        return nativeConstructionWitness629(token, rom, ram, pc, a2, a3, a4, a5, dryrun);
    }

    static int[] constructionOracle630(long token, byte[] rom, byte[] before, byte[] after, int pc, int a2, int a3, int a4, int a5) throws IOException {
        int variant;
        if (rom == null || rom.length != 3145728) {
            variant = (rom == null || rom.length != 4194304) ? 0 : 2;
        } else {
            variant = 1;
        }
        DuneHackR82cRazorMissionBundle.BuildingData572 bank = DuneHackR82cRazorMissionBundle.BuildingData572.fromVerifiedRazor(rom, variant);
        if (before == null || after == null || before.length != 65536 || after.length != 65536 || bank.get(8).maxHp != 3000 || bank.get(12).cost != 1000 || bank.get(12).productionWord != 20) {
            throw new IOException("Razor 630 rejected unverified ROM or RAM");
        }
        return nativeConstructionOracle630(token, rom, before, after, pc, a2, a3, a4, a5);
    }

    static int[] constructionAtomic631(long token, byte[] rom, byte[] before, byte[] observed, int pc, int a2, int a3, int a4, int a5) throws IOException {
        int variant;
        if (rom == null || rom.length != 3145728) {
            variant = (rom == null || rom.length != 4194304) ? 0 : 2;
        } else {
            variant = 1;
        }
        DuneHackR82cRazorMissionBundle.BuildingData572 bank = DuneHackR82cRazorMissionBundle.BuildingData572.fromVerifiedRazor(rom, variant);
        if (before == null || observed == null || before == observed || before.length != 65536 || observed.length != 65536 || bank.get(8).maxHp != 3000 || bank.get(12).cost != 1000 || bank.get(12).productionWord != 20) {
            throw new IOException("Razor 631 refused unverified ROM or 68K RAM pair");
        }
        return nativeConstructionAtomic631(token, rom, before, observed, pc, a2, a3, a4, a5);
    }

    static int[] constructionSchedule632(long token, byte[] rom, byte[] before, byte[] observed, int pc, int a2, int a3, int a4, int a5, int action, int eventId, int dueFrame, int frameIndex) throws IOException {
        int variant;
        if (action < 0 || action > 4) {
            throw new IllegalArgumentException("action");
        }
        if (action == 0) {
            if (rom == null || rom.length != 3145728) {
                variant = (rom == null || rom.length != 4194304) ? 0 : 2;
            } else {
                variant = 1;
            }
            DuneHackR82cRazorMissionBundle.BuildingData572 bank = DuneHackR82cRazorMissionBundle.BuildingData572.fromVerifiedRazor(rom, variant);
            if (before == null || observed == null || before == observed || before.length != 65536 || observed.length != 65536 || bank.get(8).maxHp != 3000 || bank.get(12).cost != 1000 || bank.get(12).productionWord != 20 || eventId <= 0 || dueFrame < 0 || dueFrame == Integer.MAX_VALUE) {
                throw new IOException("Razor 632 requires verified one-payment evidence");
            }
        }
        if (action == 1 && (frameIndex < 0 || frameIndex == Integer.MAX_VALUE)) {
            throw new IllegalArgumentException("frameIndex");
        }
        return nativeConstructionSchedule632(token, rom, before, observed, pc, a2, a3, a4, a5, action, eventId, dueFrame, frameIndex);
    }

    static int[] constructionSession633(long token, byte[] rom, byte[] before, byte[] observed, int pc, int a2, int a3, int a4, int a5, int action, int eventId, int dueFrame, int frameIndex) throws IOException {
        if (action < 0 || action > 4) {
            throw new IllegalArgumentException("action");
        }
        if (action == 0) {
            if (rom == null || rom.length != 3145728) {
                throw new IOException("Razor 633 needs 3MiB real capture");
            }
            DuneHackR82cRazorMissionBundle.BuildingData572 bank = DuneHackR82cRazorMissionBundle.BuildingData572.fromVerifiedRazor(rom, 1);
            if (before == null || observed == null || before == observed || before.length != 65536 || observed.length != 65536 || bank.get(8).maxHp != 3000 || bank.get(12).cost != 1000 || bank.get(12).productionWord != 20 || eventId <= 0 || dueFrame < 0 || dueFrame == Integer.MAX_VALUE) {
                throw new IOException("Razor 633 refused invalid paired evidence");
            }
        }
        if (action == 1 && (frameIndex < 0 || frameIndex == Integer.MAX_VALUE)) {
            throw new IllegalArgumentException("frameIndex");
        }
        return nativeConstructionSession633(token, rom, before, observed, pc, a2, a3, a4, a5, action, eventId, dueFrame, frameIndex);
    }

    static int[] paymentOpcode594(long token, int action, int cash, int paid, int remaining, int d4, int d5) {
        return nativePaymentOpcode594(token, action, cash, paid, remaining, d4, d5);
    }

    static int[] campaignConstruction571(long token, int action, int x, int y) {
        return nativeCampaignConstruction571(token, action, x, y);
    }

    static int[] campaignLifecycle568(long token) {
        return nativeCampaignLifecycle568(token);
    }

    static int[] campaignScheduler560(long token) {
        return nativeCampaignScheduler560(token);
    }

    static int[] campaignIntegratedStep694(long token) {
        return nativeCampaignIntegratedStep694(token);
    }

    static int[] campaignTick729(long token) {
        return nativeCampaignTick729(token);
    }

    static int[] campaignCore667(long token) {
        return nativeCampaignCore667(token);
    }

    static int[] configureCampaignUnitInfo669(long token, byte[] verifiedRom) {
        return nativeConfigureCampaignUnitInfo669(token, verifiedRom);
    }

    static int[] campaignSpeed670(long token, int action, int ordinal) {
        return nativeCampaignSpeed670(token, action, ordinal);
    }

    static int[] campaignEmc671(long token, byte[] bank, int action, int ordinal) {
        return nativeCampaignEmc671(token, bank, action, ordinal);
    }

    static int[] campaignBuildEmc715(long token, byte[] bank) {
        return nativeCampaignBuildEmc715(token, bank);
    }

    static int[] campaignDeploy726(long token, int ordinal) {
        return nativeCampaignDeploy726(token, ordinal);
    }

    static int[] campaignBuildOwner716(long token, int raw) {
        return nativeCampaignBuildOwner716(token, raw);
    }

    static int[] campaignEmc672(long token, int action, int focus) {
        return nativeCampaignEmc672(token, action, focus);
    }

    static int[] campaignEmcOwner673(long token, int ordinal) {
        return nativeCampaignEmcOwner673(token, ordinal);
    }

    static int[] campaignCadence668(long token) {
        return nativeCampaignCadence668(token);
    }

    static int[] campaignMap559(long token) {
        return nativeCampaignMap559(token);
    }

    static boolean closeCampaignWorld(long token) {
        return nativeClose(token);
    }

    static int[] frameIngress634(long token, int action, long frameTimeNanos) {
        if (token <= 0 || action < 0 || action > 4 || (action != 1 ? frameTimeNanos != 0 : frameTimeNanos <= 0)) {
            throw new IllegalArgumentException("Invalid Razor display-frame ingress");
        }
        return nativeFrameIngress634(token, action, frameTimeNanos);
    }

    static int[] simulationStep635(long token) {
        if (token <= 0) {
            throw new IllegalArgumentException("Invalid Razor session");
        }
        return nativeSimulationStep635(token);
    }

    static int[] scriptFetch636(long token, byte[] rom, byte[] ram, int pc, int a1, int a2, int d0, int sr) {
        String str;
        if (token <= 0 || ram == null || ram.length != 65536 || rom == null || ((rom.length != 3145728 && rom.length != 4194304) || sr < 0 || sr > 65535)) {
            throw new IllegalArgumentException("Invalid Razor M68K witness");
        }
        if (rom.length == 3145728) {
            str = DuneHackR82cRazorCombatAudit.RAZOR_ONE_SHA256;
        } else {
            str = DuneHackR82cRazorCombatAudit.RAZOR_TWO_SHA256;
        }
        String pinned = str;
        try {
            byte[] h = MessageDigest.getInstance("SHA-256").digest(rom);
            StringBuilder out = new StringBuilder(64);
            for (byte b : h) {
                out.append(Character.forDigit((b >>> 4) & 15, 16)).append(Character.forDigit(b & 15, 16));
            }
            if (!pinned.equals(out.toString())) {
                throw new IllegalArgumentException("Unsupported Razor ROM SHA-256");
            }
            return nativeScriptFetch636(token, rom, ram, pc, a1, a2, d0, sr);
        } catch (NoSuchAlgorithmException err) {
            throw new IllegalStateException("SHA-256 unavailable", err);
        }
    }

    static int[] scriptAdvance637(long token, byte[] rom, byte[] ram, byte[] projectedRam, int pc, int a1, int a2, int d0, int sr) {
        String str;
        if (token <= 0 || rom == null || ram == null || projectedRam == null || ram == projectedRam || ram.length != 65536 || projectedRam.length != 65536 || ((rom.length != 3145728 && rom.length != 4194304) || sr < 0 || sr > 65535)) {
            throw new IllegalArgumentException("Invalid detached Script_Run RAM");
        }
        if (rom.length == 3145728) {
            str = DuneHackR82cRazorCombatAudit.RAZOR_ONE_SHA256;
        } else {
            str = DuneHackR82cRazorCombatAudit.RAZOR_TWO_SHA256;
        }
        String pinned = str;
        try {
            byte[] hash = MessageDigest.getInstance("SHA-256").digest(rom);
            StringBuilder encoded = new StringBuilder(64);
            for (byte b : hash) {
                encoded.append(Character.forDigit((b >>> 4) & 15, 16)).append(Character.forDigit(b & 15, 16));
            }
            if (!pinned.equals(encoded.toString())) {
                throw new IllegalArgumentException("Unsupported Razor ROM SHA-256");
            }
            return nativeScriptAdvance637(token, rom, ram, projectedRam, pc, a1, a2, d0, sr);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("SHA-256 unavailable", e);
        }
    }

    static int[] scriptDispatch638(long token, byte[] rom, byte[] ram, byte[] projectedRam, int pc, int a1, int a2, int d0, int d1, int d3, int d4, int d6, int sr) {
        String str;
        if (token <= 0 || rom == null || ram == null || projectedRam == null || ram == projectedRam || ram.length != 65536 || projectedRam.length != 65536 || ((rom.length != 3145728 && rom.length != 4194304) || sr < 0 || sr > 65535)) {
            throw new IllegalArgumentException("Invalid detached Script_Run state");
        }
        if (rom.length == 3145728) {
            str = DuneHackR82cRazorCombatAudit.RAZOR_ONE_SHA256;
        } else {
            str = DuneHackR82cRazorCombatAudit.RAZOR_TWO_SHA256;
        }
        String pinned = str;
        try {
            byte[] hash = MessageDigest.getInstance("SHA-256").digest(rom);
            StringBuilder encoded = new StringBuilder(64);
            for (byte b : hash) {
                encoded.append(Character.forDigit((b >>> 4) & 15, 16)).append(Character.forDigit(b & 15, 16));
            }
            if (!pinned.equals(encoded.toString())) {
                throw new IllegalArgumentException("Unsupported Razor ROM SHA-256");
            }
            return nativeScriptDispatch638(token, rom, ram, projectedRam, pc, a1, a2, d0, d1, d3, d4, d6, sr);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("SHA-256 unavailable", e);
        }
    }

    static int[] scriptPrejump639(long token, byte[] rom, byte[] ram, byte[] projectedRam, int pc, int a0, int a1, int a2, int d0, int d1, int d3, int d4, int d6, int d7, int sr) {
        String str;
        if (token <= 0 || rom == null || ram == null || projectedRam == null || ram == projectedRam || ram.length != 65536 || projectedRam.length != 65536 || ((rom.length != 3145728 && rom.length != 4194304) || sr < 0 || sr > 65535)) {
            throw new IllegalArgumentException("Invalid 639 detached state");
        }
        if (rom.length == 3145728) {
            str = DuneHackR82cRazorCombatAudit.RAZOR_ONE_SHA256;
        } else {
            str = DuneHackR82cRazorCombatAudit.RAZOR_TWO_SHA256;
        }
        String pinned = str;
        try {
            byte[] hash = MessageDigest.getInstance("SHA-256").digest(rom);
            StringBuilder encoded = new StringBuilder(64);
            for (byte b : hash) {
                encoded.append(Character.forDigit((b >>> 4) & 15, 16)).append(Character.forDigit(b & 15, 16));
            }
            if (!pinned.equals(encoded.toString())) {
                throw new IllegalArgumentException("Unsupported Razor ROM SHA-256");
            }
            return nativeScriptPrejump639(token, rom, ram, projectedRam, pc, a0, a1, a2, d0, d1, d3, d4, d6, d7, sr);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("SHA-256 unavailable", e);
        }
    }

    static int[] scriptTable640(long token, byte[] rom, byte[] ram, byte[] projectedRam, int pc, int a0, int a1, int a2, int d0, int d1, int d3, int d4, int d6, int d7, int sr) {
        String str;
        if (token <= 0 || rom == null || ram == null || projectedRam == null || ram == projectedRam || ram.length != 65536 || projectedRam.length != 65536 || ((rom.length != 3145728 && rom.length != 4194304) || sr < 0 || sr > 65535)) {
            throw new IllegalArgumentException("Invalid 640 detached state");
        }
        if (rom.length == 3145728) {
            str = DuneHackR82cRazorCombatAudit.RAZOR_ONE_SHA256;
        } else {
            str = DuneHackR82cRazorCombatAudit.RAZOR_TWO_SHA256;
        }
        String pinned = str;
        try {
            byte[] hash = MessageDigest.getInstance("SHA-256").digest(rom);
            StringBuilder encoded = new StringBuilder(64);
            for (byte b : hash) {
                encoded.append(Character.forDigit((b >>> 4) & 15, 16)).append(Character.forDigit(b & 15, 16));
            }
            if (!pinned.equals(encoded.toString())) {
                throw new IllegalArgumentException("Unsupported Razor ROM SHA-256");
            }
            return nativeScriptTable640(token, rom, ram, projectedRam, pc, a0, a1, a2, d0, d1, d3, d4, d6, d7, sr);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("SHA-256 unavailable", e);
        }
    }

    static int[] scriptHandler641(long token, byte[] rom, byte[] ram, byte[] projectedRam, int pc, int a2, int a4, int d1, int d5, int sr) {
        String str;
        if (token <= 0 || rom == null || ram == null || projectedRam == null || ram == projectedRam || ram.length != 65536 || projectedRam.length != 65536 || ((rom.length != 3145728 && rom.length != 4194304) || sr < 0 || sr > 65535)) {
            throw new IllegalArgumentException("Invalid detached 641 state");
        }
        if (rom.length == 3145728) {
            str = DuneHackR82cRazorCombatAudit.RAZOR_ONE_SHA256;
        } else {
            str = DuneHackR82cRazorCombatAudit.RAZOR_TWO_SHA256;
        }
        String pinned = str;
        try {
            byte[] hash = MessageDigest.getInstance("SHA-256").digest(rom);
            StringBuilder encoded = new StringBuilder(64);
            for (byte b : hash) {
                encoded.append(Character.forDigit((b >>> 4) & 15, 16)).append(Character.forDigit(b & 15, 16));
            }
            if (!pinned.equals(encoded.toString())) {
                throw new IllegalArgumentException("Unsupported Razor ROM SHA-256");
            }
            return nativeScriptHandler641(token, rom, ram, projectedRam, pc, a2, a4, d1, d5, sr);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("SHA-256 unavailable", e);
        }
    }

    static int[] scriptReturn642(long token, byte[] rom, byte[] ram, byte[] projectedRam, int pc, int a2, int a4, int a7, int d1, int d5, int sr) {
        String str;
        if (token <= 0 || rom == null || ram == null || projectedRam == null || ram == projectedRam || ram.length != 65536 || projectedRam.length != 65536 || ((rom.length != 3145728 && rom.length != 4194304) || sr < 0 || sr > 65535)) {
            throw new IllegalArgumentException("Invalid detached 642 state");
        }
        if (rom.length == 3145728) {
            str = DuneHackR82cRazorCombatAudit.RAZOR_ONE_SHA256;
        } else {
            str = DuneHackR82cRazorCombatAudit.RAZOR_TWO_SHA256;
        }
        String pinned = str;
        try {
            byte[] hash = MessageDigest.getInstance("SHA-256").digest(rom);
            StringBuilder encoded = new StringBuilder(64);
            for (byte b : hash) {
                encoded.append(Character.forDigit((b >>> 4) & 15, 16)).append(Character.forDigit(b & 15, 16));
            }
            if (!pinned.equals(encoded.toString())) {
                throw new IllegalArgumentException("Unsupported Razor ROM SHA-256");
            }
            return nativeScriptReturn642(token, rom, ram, projectedRam, pc, a2, a4, a7, d1, d5, sr);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("SHA-256 unavailable", e);
        }
    }

    static int[] scriptCaller643(long token, byte[] rom, byte[] ram, byte[] projectedRam, int pc, int a2, int a4, int a7, int d1, int d5, int sr) {
        String str;
        if (token <= 0 || rom == null || ram == null || projectedRam == null || ram == projectedRam || ram.length != 65536 || projectedRam.length != 65536 || ((rom.length != 3145728 && rom.length != 4194304) || sr < 0 || sr > 65535)) {
            throw new IllegalArgumentException("Invalid detached 643 state");
        }
        if (rom.length == 3145728) {
            str = DuneHackR82cRazorCombatAudit.RAZOR_ONE_SHA256;
        } else {
            str = DuneHackR82cRazorCombatAudit.RAZOR_TWO_SHA256;
        }
        String pinned = str;
        try {
            byte[] hash = MessageDigest.getInstance("SHA-256").digest(rom);
            StringBuilder encoded = new StringBuilder(64);
            for (byte b : hash) {
                encoded.append(Character.forDigit((b >>> 4) & 15, 16)).append(Character.forDigit(b & 15, 16));
            }
            if (!pinned.equals(encoded.toString())) {
                throw new IllegalArgumentException("Unsupported Razor ROM SHA-256");
            }
            return nativeScriptCaller643(token, rom, ram, projectedRam, pc, a2, a4, a7, d1, d5, sr);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("SHA-256 unavailable", e);
        }
    }

    static int[] unitLoop645(long token, byte[] rom, byte[] ram, byte[] projectedRam, int[] regs) {
        String str;
        if (token <= 0 || rom == null || ram == null || projectedRam == null || regs == null || regs.length != 18 || regs[17] < 0 || regs[17] > 65535 || rom == projectedRam || ram == projectedRam || ram.length != 65536 || projectedRam.length != 65536 || (rom.length != 3145728 && rom.length != 4194304)) {
            throw new IllegalArgumentException("Invalid detached 645 state");
        }
        if (rom.length == 3145728) {
            str = DuneHackR82cRazorCombatAudit.RAZOR_ONE_SHA256;
        } else {
            str = DuneHackR82cRazorCombatAudit.RAZOR_TWO_SHA256;
        }
        String pinned = str;
        try {
            byte[] hash = MessageDigest.getInstance("SHA-256").digest(rom);
            StringBuilder str2 = new StringBuilder(64);
            for (byte b : hash) {
                str2.append(Character.forDigit((b >>> 4) & 15, 16)).append(Character.forDigit(b & 15, 16));
            }
            if (!pinned.equals(str2.toString())) {
                throw new IllegalArgumentException("Unsupported Razor ROM SHA-256");
            }
            return nativeUnitLoop645(token, rom, ram, projectedRam, regs);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("SHA-256 unavailable", e);
        }
    }

    static int[] scriptEpilogue644(long token, byte[] rom, byte[] ram, byte[] projectedRam, int[] regs) {
        String str;
        if (token <= 0 || rom == null || ram == null || projectedRam == null || regs == null || regs.length != 18 || regs[17] < 0 || regs[17] > 65535 || rom == projectedRam || ram == projectedRam || ram.length != 65536 || projectedRam.length != 65536 || (rom.length != 3145728 && rom.length != 4194304)) {
            throw new IllegalArgumentException("Invalid detached 644 state");
        }
        if (rom.length == 3145728) {
            str = DuneHackR82cRazorCombatAudit.RAZOR_ONE_SHA256;
        } else {
            str = DuneHackR82cRazorCombatAudit.RAZOR_TWO_SHA256;
        }
        String pinned = str;
        try {
            byte[] hash = MessageDigest.getInstance("SHA-256").digest(rom);
            StringBuilder encoded = new StringBuilder(64);
            for (byte b : hash) {
                encoded.append(Character.forDigit((b >>> 4) & 15, 16)).append(Character.forDigit(b & 15, 16));
            }
            if (!pinned.equals(encoded.toString())) {
                throw new IllegalArgumentException("Unsupported Razor ROM SHA-256");
            }
            return nativeScriptEpilogue644(token, rom, ram, projectedRam, regs);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("SHA-256 unavailable", e);
        }
    }

    static int[] probeCampaignObject556(long token) {
        return nativeCampaignSandboxProbe556(token);
    }

    static int[] campaignCoreRoute664(long token, int unit, int x, int y) {
        return nativeCampaignCoreRoute664(token, unit, x, y);
    }

    static int[] campaignFacing666(long token) {
        return nativeCampaignFacing666(token);
    }

    static boolean enableCampaignRoute665(long token) {
        return nativeEnableCampaignRoute665(token);
    }

    static int[] campaignOrder557(long token, int action, int unit, int x, int y) {
        return nativeCampaignOrder557(token, action, unit, x, y);
    }

    public static final class FirstSlice {
        public final FirstBoundary boundary;
        public final int executedGameTicks;
        public final int executedInstructions;
        public final int gameplayAuthorized;
        public final int pendingNativeFunction;
        public final int scriptEntry;
        public final int sourceType;
        public final int startPc;
        public final int stopPc;
        public final int stopReason;
        public final int vmError;

        private FirstSlice(int[] words, int[] abi, int variant) throws IOException {
            if (words == null || words.length != 10 || words[0] < 0 || words[0] >= 32 || words[1] < 0 || words[1] >= 27 || words[4] < 0 || words[4] > 24 || words[5] < 1 || words[5] > 4 || words[8] != 0 || words[9] != 0) {
                throw new IOException("Unsafe Razor EMC slice report");
            }
            this.sourceType = words[0];
            this.scriptEntry = words[1];
            this.startPc = words[2];
            this.stopPc = words[3];
            this.executedInstructions = words[4];
            this.stopReason = words[5];
            this.pendingNativeFunction = words[6];
            this.vmError = words[7];
            this.executedGameTicks = words[8];
            this.gameplayAuthorized = words[9];
            this.boundary = new FirstBoundary(abi, words, variant);
        }
    }

    public static final class FirstBoundary {
        private static final int[][] HANDLERS = {new int[]{2088, 44480, 109130, 113814}, new int[]{2056, 44788, 109376, 114060}};
        private static final int[] IDS = {0, 16, 27, 40};
        public final int contextByteDisplacement;
        public final int emcFramePointer;
        public final int emcReturnValue;
        public final int emcStackDepth;
        public final int emcStackPointer;
        public final int[] emcVariables;
        public final int functionId;
        public final boolean genesisCallContextKnown;
        public final int globalPointerCell;
        public final int motorolaStackArgumentOffset;
        public final boolean nativeCallbackExecuted;
        public final int opcode;
        public final int opcodeWords;
        public final int originalRomAddress;
        public final int pointerSourceMask;
        public final int[] topOfEmcStack;

        private FirstBoundary(int[] d, int[] old, int variant) throws IOException {
            this.genesisCallContextKnown = false;
            this.nativeCallbackExecuted = false;
            if (d != null && d.length == 29 && variant >= 1 && variant <= 2 && d[5] == 1 && d[7] == 0 && d[8] == 0 && d[9] == 0 && d[6] >= 0 && d[6] < 64 && d[10] >= 0 && d[10] <= 65535 && d[11] >= 1 && d[11] <= 2 && d[12] >= 0 && d[12] <= 15 && d[13] >= 0 && d[13] <= 15 && d[12] == 15 - d[13] && d[14] >= 0 && d[14] <= 17 && (d[10] & 32768) == 0 && ((d[10] >> 8) & 31) == 14) {
                if ((((d[10] & RazorVramPatternLoader.METATILE_BANK_BYTES) == 0 && (d[10] & 8192) != 0) ? 2 : 1) == d[11]) {
                    for (int i = 0; i < 10; i++) {
                        if (d[i] != old[i]) {
                            throw new IOException("EMC boundary disagrees with original slice");
                        }
                    }
                    for (int i2 = 15; i2 < 25; i2++) {
                        if (d[i2] < 0 || d[i2] > 65535) {
                            throw new IOException("Invalid EMC state field");
                        }
                    }
                    int handler = -1;
                    for (int i3 = 0; i3 < IDS.length; i3++) {
                        if (IDS[i3] == d[6]) {
                            handler = HANDLERS[variant - 1][i3];
                        }
                    }
                    if (handler < 0) {
                        throw new IOException("Unverified first Razor FUNCTION ID");
                    }
                    int expectedMask = d[6] == 27 ? 3 : d[6] == 40 ? 2 : 1;
                    int expectedSp = d[6] == 27 ? 12 : d[6] == 40 ? 0 : 4;
                    int expectedByte = d[6] == 40 ? 255 : 11;
                    int expectedRam = (d[6] == 27 || d[6] == 40) ? -8544 : 0;
                    if (d[25] == expectedMask && d[26] == expectedSp && d[27] == expectedByte && d[28] == expectedRam) {
                        this.pointerSourceMask = d[25];
                        this.motorolaStackArgumentOffset = d[26];
                        this.contextByteDisplacement = d[27];
                        this.globalPointerCell = d[28];
                        this.functionId = d[6];
                        this.originalRomAddress = handler;
                        this.opcode = d[10];
                        this.opcodeWords = d[11];
                        this.emcStackDepth = d[12];
                        this.emcStackPointer = d[13];
                        this.emcFramePointer = d[14];
                        this.topOfEmcStack = new int[Math.min(4, this.emcStackDepth)];
                        for (int i4 = 0; i4 < this.topOfEmcStack.length; i4++) {
                            this.topOfEmcStack[i4] = d[i4 + 15];
                        }
                        this.emcReturnValue = d[19];
                        this.emcVariables = new int[5];
                        for (int i5 = 0; i5 < 5; i5++) {
                            this.emcVariables[i5] = d[i5 + 20];
                        }
                        return;
                    }
                    throw new IOException("Razor native pointer ABI mismatch");
                }
            }
            throw new IOException("Unsafe or invalid Razor FUNCTION boundary");
        }

        public String shortStack() {
            StringBuilder b = new StringBuilder();
            for (int i = 0; i < this.topOfEmcStack.length; i++) {
                if (i > 0) {
                    b.append(", ");
                }
                b.append(this.topOfEmcStack[i]);
            }
            int i2 = b.length();
            return i2 == 0 ? "∅" : b.toString();
        }
    }

    public static final class Status {
        public final int buildings;
        public final int executedTicks;
        public final boolean fullTerrainKnown;
        public final boolean gameplayReady;
        public final int gridSide;
        public final int house;
        public final int knownCells;
        public final int missingCapabilityBits;
        public final int mission;
        public final int prerequisiteBits;
        public final int readSequence;
        public final String sourceSha256;
        public final int terrainMarkers;
        public final int units;
        public final int unknownCells;
        public final int variant;
        public final boolean worldRetained;

        private Status(int variant, String sha, int[] words) {
            this.variant = variant;
            this.sourceSha256 = sha;
            this.house = words[2];
            this.mission = words[3];
            this.gridSide = words[4];
            this.units = words[7];
            this.buildings = words[8];
            this.terrainMarkers = words[9];
            this.knownCells = words[18];
            this.unknownCells = words[19];
            this.readSequence = words[27];
            this.prerequisiteBits = words[28];
            this.missingCapabilityBits = words[29];
            this.executedTicks = words[30];
            this.worldRetained = words[26] == 1;
            this.fullTerrainKnown = (4 & this.prerequisiteBits) != 0;
            this.gameplayReady = words[31] != 0;
        }
    }

    private RazorNativeWorldSession(long id, RazorTerrainVisualSource.Audit audit, int house, int mission, int[] initial, RazorMissionBootProbe.Report proof) {
        this.token = id;
        this.variant = audit.romVariant();
        this.sourceSha256 = audit.romSourceSha256();
        this.house = house;
        this.mission = mission;
        this.baseline = (int[]) initial.clone();
        this.lastRead = initial[27];
        this.proof = proof;
    }

    public static RazorNativeWorldSession open(RazorTerrainVisualSource.Audit audit, int house, int mission) throws IOException {
        long id;
        Throwable ex;
        int[] first;
        RazorMissionBootProbe.Report proof = RazorMissionBootProbe.inspect(audit, house, mission);
        if (!proof.nativeWorldBootstrapped || proof.gameplayReady || proof.originalGameplayCompatible || proof.emcRuntimeReady) {
            throw new IOException("Unsafe Razor diagnostic session source");
        }
        DuneHackR82cRazorMissionBundle.Mission raw = audit.bootProbeMission(house, mission);
        long id2 = nativeOpen(raw.mapBytes(), raw.scenarioBytes(), house, mission, raw.storedMapSide, raw.scenarioMapWidth, raw.scenarioMapHeight);
        if (id2 == 0) {
            throw new IOException("Native Razor diagnostic world busy or rejected");
        }
        try {
            first = nativeRead(id2);
            validate(first, proof, null);
        } catch (IOException | Error | RuntimeException e) {
            id = id2;
            ex = e;
        }
        try {
            return new RazorNativeWorldSession(id2, audit, house, mission, first, proof);
        } catch (IOException | Error | RuntimeException e2) {
            id = id2;
            ex = e2;
            nativeClose(id);
            throw ex;
        }
    }

    private static void validate(int[] v, RazorMissionBootProbe.Report proof, int[] baseline) throws IOException {
        if (v != null && v.length == 32) {
            if (v[0] == 1 && v[1] == 0 && v[2] == proof.house && v[3] == proof.mission && v[4] == proof.gridSide && v[7] == proof.units && v[8] == proof.buildings && v[9] == proof.terrainRecords && v[18] == proof.confirmedTerrainCells && v[19] == proof.uninitializedTerrainCells && v[26] == 1 && v[27] > 0 && (v[28] & 3) == 3) {
                if (((v[28] & 4) != 0) == (v[19] == 0) && v[29] == 63 && v[30] == 0 && v[31] == 0) {
                    if (baseline != null) {
                        for (int i = 0; i < 26; i++) {
                            if (v[i] != baseline[i]) {
                                throw new IOException("Razor world changed without authorized tick");
                            }
                        }
                        int i2 = v[27];
                        if (i2 <= baseline[27]) {
                            throw new IOException("Razor world read sequence regressed");
                        }
                        return;
                    }
                    return;
                }
            }
        }
        throw new IOException("Native Razor lifetime or tick gate violated");
    }

    public synchronized Status poll(RazorTerrainVisualSource.Audit audit) throws IOException {
        int[] current;
        if (this.token == 0 || audit == null || audit.romVariant() != this.variant || !this.sourceSha256.equals(audit.romSourceSha256())) {
            throw new IOException("Razor session closed or ROM provenance changed");
        }
        current = nativeRead(this.token);
        validate(current, this.proof, this.baseline);
        if (current[27] <= this.lastRead) {
            throw new IOException("Razor status not monotonic");
        }
        this.lastRead = current[27];
        return new Status(this.variant, this.sourceSha256, current);
    }

    public synchronized FirstSlice probeFirstUnit(RazorTerrainVisualSource.Audit audit, byte[] authenticatedUnitBank) throws IOException {
        int[] result;
        int[] boundary;
        if (this.token == 0 || audit == null || audit.romVariant() != this.variant || !this.sourceSha256.equals(audit.romSourceSha256()) || authenticatedUnitBank == null || authenticatedUnitBank.length != 5484) {
            throw new IOException("Razor EMC probe source mismatch");
        }
        int[] before = nativeRead(this.token);
        validate(before, this.proof, this.baseline);
        if (before[7] < 1) {
            throw new IOException("Selected Razor mission has no starting UNIT");
        }
        result = nativeProbeFirstUnit(this.token, authenticatedUnitBank, 0);
        int[] after = nativeRead(this.token);
        validate(after, this.proof, this.baseline);
        for (int i = 0; i < 26; i++) {
            if (before[i] != after[i]) {
                throw new IOException("Razor world changed during EMC probe");
            }
        }
        boundary = nativeProbeFunctionBoundary(this.token, authenticatedUnitBank, 0);
        return new FirstSlice(result, boundary, this.variant);
    }

    public synchronized int[] observeFirstUnitIdentity(RazorTerrainVisualSource.Audit audit) throws IOException {
        int[] v;
        if (this.token == 0 || audit == null || audit.romVariant() != this.variant || !this.sourceSha256.equals(audit.romSourceSha256())) {
            throw new IOException("Razor unit identity provenance mismatch");
        }
        int[] before = nativeRead(this.token);
        validate(before, this.proof, this.baseline);
        if (before[7] == 0) {
            throw new IOException("No initial UNIT for identity witness");
        }
        v = nativeFirstUnitIdentity(this.token);
        int[] after = nativeRead(this.token);
        validate(after, this.proof, this.baseline);
        if (v != null && v.length == 11 && v[0] == 0 && v[1] >= 0 && v[1] <= 255 && v[2] >= 0 && v[2] < 5 && v[3] >= 0 && v[3] < 32) {
            if ((v[7] == 32 || v[7] == 64 || v[7] == 128) && v[8] >= 1 && v[8] <= 128 && v[9] >= 1 && v[9] <= 128 && v[4] >= 0 && v[4] < v[8] && v[5] >= 0 && v[5] < v[9] && v[6] >= 0 && v[6] <= 16383 && v[10] == before[7]) {
                if (v[6] == (v[5] * (v[7] == 128 ? 128 : 64)) + v[4]) {
                    for (int i = 0; i < 26; i++) {
                        if (before[i] != after[i]) {
                            throw new IOException("Razor world changed during identity read");
                        }
                    }
                }
            }
        }
        throw new IOException("Unsafe native UNIT identity read");
        return v;
    }

    public synchronized int[] observeInitialUnits403(RazorTerrainVisualSource.Audit audit) throws IOException {
        int[] rows;
        if (this.token == 0 || audit == null || audit.romVariant() != this.variant || !this.sourceSha256.equals(audit.romSourceSha256())) {
            throw new IOException("Razor UNIT snapshot provenance mismatch");
        }
        int[] before = nativeRead(this.token);
        validate(before, this.proof, this.baseline);
        rows = nativeUnitSnapshot403(this.token);
        int[] after = nativeRead(this.token);
        validate(after, this.proof, this.baseline);
        if (rows != null && rows.length >= 3 && rows[0] == 403 && rows[2] == 12 && rows[1] == before[7] && rows[1] >= 0) {
            int side = 128;
            if (rows[1] <= 128 && rows.length == (rows[1] * 12) + 3 && after[7] == before[7]) {
                for (int i = 0; i < 26; i++) {
                    if (before[i] != after[i]) {
                        throw new IOException("World changed during native UNIT snapshot");
                    }
                }
                if (before[5] != 128) {
                    side = 64;
                }
                int width = before[6] >>> 16;
                int height = before[6] & 65535;
                if (width < 1 || height < 1 || width > side || height > side) {
                    throw new IOException("Unexpected Razor map dimensions");
                }
                for (int i2 = 0; i2 < rows[1]; i2++) {
                    int p = (i2 * 12) + 3;
                    if (rows[p] != i2 || rows[p + 1] < 0 || rows[p + 1] > 255 || rows[p + 2] < 0 || rows[p + 2] >= 5 || rows[p + 3] < 0 || rows[p + 3] >= 32 || rows[p + 4] < 0 || rows[p + 4] >= width || rows[p + 5] < 0 || rows[p + 5] >= height || rows[p + 6] != rows[p + 2] || rows[p + 7] != rows[p + 3] || rows[p + 9] != (rows[p + 5] * side) + rows[p + 4]) {
                        throw new IOException("Invalid initial UNIT record in native snapshot");
                    }
                    for (int n = 0; n < 6; n++) {
                        if (rows[p + 6 + n] < 0 || rows[p + 6 + n] > 65535) {
                            throw new IOException("UNIT source word outside unsigned 16-bit range");
                        }
                    }
                }
            }
        }
        throw new IOException("Malformed or unavailable native UNIT snapshot");
        return (int[]) rows.clone();
    }

    /* JADX WARN: Code restructure failed: missing block: B:114:0x015a, code lost:
    
        throw new java.io.IOException("Razor 530 EMC event identity changed");
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0182, code lost:
    
        if (r5 == null) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0299, code lost:
    
        throw new java.io.IOException("Razor 530 observation never reached F16/F40");
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0186, code lost:
    
        if (r5[1] != 1) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x018c, code lost:
    
        if (r5[31] != 2) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x018e, code lost:
    
        r9 = nativeRead(r22.token);
        validate(r9, r22.proof, r22.baseline);
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x019b, code lost:
    
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x019c, code lost:
    
        r12 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x019e, code lost:
    
        if (r11 >= r12) goto L249;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x01a4, code lost:
    
        if (r7[r11] != r9[r11]) goto L248;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x01a6, code lost:
    
        r11 = r11 + 1;
        r21 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x01b2, code lost:
    
        throw new java.io.IOException("Razor 530 observer mutated retained world");
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x01b7, code lost:
    
        com.ahsim.demulation.RazorAttachedObservationEvidence531.verify(r5, r8, r24);
        r11 = nativeUnitSnapshot403(r22.token);
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x01c4, code lost:
    
        if (java.util.Arrays.equals(r8, r11) == false) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x01c8, code lost:
    
        if (r7[30] != 0) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x01cc, code lost:
    
        if (r9[30] != 0) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x01d0, code lost:
    
        if (r7[31] != 0) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x01d4, code lost:
    
        if (r9[31] != 0) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x01da, code lost:
    
        if (r5[r17] != 40) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x01dc, code lost:
    
        r0 = nativePrecallF40533(r22.token);
        com.ahsim.demulation.RazorF40PrecallEvidence533.verify(r0, r5);
        r22.lastPrecallF40533 = (int[]) r0.clone();
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x01ee, code lost:
    
        r0 = nativeF40SandboxGate534(r22.token);
        com.ahsim.demulation.RazorF40SandboxEvidence534.verify(r0, r0);
        r22.lastSandboxGate534 = (int[]) r0.clone();
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x0200, code lost:
    
        r0 = nativeM68kBackendStatus535(r22.token);
        com.ahsim.demulation.RazorM68kBackendEvidence535.verify(r0, r0);
        r22.lastM68kBackend535 = (int[]) r0.clone();
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0212, code lost:
    
        r0 = nativeGenesisBootProbe541(r22.token, r26);
        com.ahsim.demulation.RazorGenesisBootEvidence541.verify(r0, r0, r22.variant);
        r22.lastBoot541 = (int[]) r0.clone();
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x0228, code lost:
    
        r22.lastBoot541 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x0260, code lost:
    
        r22.lastBoot541 = null;
        r22.lastM68kBackend535 = null;
        r22.lastRomSmoke536 = null;
        r22.lastTrace538 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x026b, code lost:
    
        r22.lastBoot541 = null;
        r22.lastSandboxGate534 = null;
        r22.lastM68kBackend535 = null;
        r22.lastRomSmoke536 = null;
        r22.lastTrace538 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x0289, code lost:
    
        throw new java.io.IOException("Razor 530 tick gate changed");
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x0291, code lost:
    
        throw new java.io.IOException("Razor 531 unit snapshot changed during observation");
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x029a, code lost:
    
        r0 = th;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized int[] observeAttachedEmc530(com.ahsim.demulation.RazorTerrainVisualSource.Audit r23, byte[] r24, int r25, byte[] r26) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 693
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.RazorNativeWorldSession.observeAttachedEmc530(com.ahsim.demulation.RazorTerrainVisualSource$Audit, byte[], int, byte[]):int[]");
    }

    public synchronized int[] lastPrecallF40533() {
        return this.lastPrecallF40533 == null ? null : (int[]) this.lastPrecallF40533.clone();
    }

    public synchronized int[] lastSandboxGate534() {
        return this.lastSandboxGate534 == null ? null : (int[]) this.lastSandboxGate534.clone();
    }

    public synchronized int[] lastM68kBackend535() {
        return this.lastM68kBackend535 == null ? null : (int[]) this.lastM68kBackend535.clone();
    }

    public synchronized int[] lastRomSmoke536() {
        return this.lastRomSmoke536 == null ? null : (int[]) this.lastRomSmoke536.clone();
    }

    public synchronized int[] lastTrace538() {
        return this.lastTrace538 == null ? null : (int[]) this.lastTrace538.clone();
    }

    public synchronized int[] lastGenesisBoot541() {
        return this.lastBoot541 == null ? null : (int[]) this.lastBoot541.clone();
    }

    public synchronized int[] observeShadowContext405(RazorTerrainVisualSource.Audit audit, byte[] authenticatedUnitBank, FirstSlice slice, int[] initial403) throws IOException {
        int[] state;
        if (this.token == 0 || audit == null || audit.romVariant() != this.variant || !this.sourceSha256.equals(audit.romSourceSha256()) || authenticatedUnitBank == null || authenticatedUnitBank.length != 5484 || slice == null || initial403 == null || initial403.length < 15 || initial403[0] != 403 || initial403[1] < 1) {
            throw new IOException("Razor shadow source mismatch");
        }
        int[] before = nativeRead(this.token);
        validate(before, this.proof, this.baseline);
        state = nativeShadowContext405(this.token, authenticatedUnitBank, 0);
        int[] after = nativeRead(this.token);
        validate(after, this.proof, this.baseline);
        if (state == null || state.length != 37 || state[0] != 405 || state[1] != 0 || state[16] < 0 || state[16] > 24 || state[17] != 1 || state[18] != slice.pendingNativeFunction || state[19] != slice.vmError || state[13] != slice.scriptEntry || state[14] != slice.startPc || state[15] != slice.stopPc || state[16] != slice.executedInstructions || state[20] != slice.boundary.emcStackDepth || state[21] != slice.boundary.emcStackPointer || state[22] != slice.boundary.emcFramePointer || state[23] != slice.boundary.emcReturnValue || state[34] != 0 || state[35] != 0 || state[36] != 0 || state[2] != initial403[4] || state[3] != initial403[5] || state[4] != initial403[6] || state[5] != initial403[7] || state[6] != initial403[8]) {
            throw new IOException("Inconsistent isolated EMC shadow context");
        }
        for (int i = 0; i < 6; i++) {
            if (state[i + 7] != initial403[i + 9]) {
                throw new IOException("EMC shadow UNIT source words changed");
            }
        }
        int i2 = 0;
        while (i2 < 4) {
            if (state[i2 + 24] == (i2 < slice.boundary.topOfEmcStack.length ? slice.boundary.topOfEmcStack[i2] : 0)) {
                i2++;
            } else {
                throw new IOException("EMC shadow stack changed between probes");
            }
        }
        for (int i3 = 0; i3 < 5; i3++) {
            if (state[i3 + 28] != slice.boundary.emcVariables[i3]) {
                throw new IOException("EMC shadow variables changed between probes");
            }
        }
        for (int i4 = 0; i4 < 26; i4++) {
            if (before[i4] != after[i4]) {
                throw new IOException("Razor world mutated during shadow probe");
            }
        }
        return (int[]) state.clone();
    }

    public synchronized int[] observePersistentF40Prestate419(RazorTerrainVisualSource.Audit audit, byte[] authenticatedUnitBank, int ordinal) throws IOException {
        int[] first;
        if (this.token == 0 || audit == null || audit.romVariant() != this.variant || !this.sourceSha256.equals(audit.romSourceSha256()) || authenticatedUnitBank == null || authenticatedUnitBank.length != 5484 || ordinal < 0 || ordinal >= 128) {
            throw new IOException("Razor 419 shadow provenance mismatch");
        }
        int[] before = nativeRead(this.token);
        validate(before, this.proof, this.baseline);
        if (ordinal >= before[7] || !nativePinF40Session419(this.token, authenticatedUnitBank, ordinal)) {
            throw new IOException("Pre-F40 native shadow could not be pinned");
        }
        first = nativeReadF40Session419(this.token, authenticatedUnitBank);
        int[] second = nativeReadF40Session419(this.token, authenticatedUnitBank);
        int[] after = nativeRead(this.token);
        validate(after, this.proof, this.baseline);
        if (first == null || second == null || first.length != 32 || second.length != 32 || !Arrays.equals(first, second) || first[0] != 419 || ((first[1] & 4294967295L) | (first[2] << 32)) != this.token || first[3] <= 0 || first[6] != ordinal || first[7] < 0 || first[7] >= 32 || first[8] < 0 || first[8] >= 27 || first[9] < 0 || first[9] >= 2742 || first[10] < 0 || first[10] >= 2742 || first[12] < 1 || first[12] > 2 || first[13] < 0 || first[13] > 24 || first[14] != 40 || first[15] < 0 || first[15] > 15 || first[16] < 0 || first[16] > 15 || first[15] != 15 - first[16] || first[17] < 0 || first[17] > 17 || first[28] != 0 || first[29] != 0 || first[30] != 0 || first[31] != 0) {
            throw new IOException("Razor 419 persistent shadow consistency failed");
        }
        for (int i = 0; i < 26; i++) {
            if (before[i] != after[i]) {
                throw new IOException("Razor 419 modified the host snapshot");
            }
        }
        return (int[]) first.clone();
    }

    public synchronized String exportF40Boundary420(RazorTerrainVisualSource.Audit audit, byte[] authenticatedUnitBank, int ordinal) throws IOException {
        StringBuilder json;
        if (this.token == 0) {
            throw new IOException("No Razor retained world for 420");
        }
        int[] before = nativeRead(this.token);
        validate(before, this.proof, this.baseline);
        int[] witness = observePersistentF40Prestate419(audit, authenticatedUnitBank, ordinal);
        int[] all = nativeUnitSnapshot403(this.token);
        int[] after = nativeRead(this.token);
        validate(after, this.proof, this.baseline);
        for (int i = 0; i < 26; i++) {
            if (before[i] != after[i]) {
                throw new IOException("Razor 420 host source changed during export");
            }
        }
        if (all == null || all.length < 3 || all[0] != 403 || all[2] != 12 || all[1] < 1 || all[1] > 128 || all.length != (all[1] * 12) + 3 || ordinal < 0 || ordinal >= all[1] || witness[6] != ordinal) {
            throw new IOException("Razor 420 source UNIT frame mismatch");
        }
        int start = (ordinal * 12) + 3;
        if (all[start] != ordinal || all[start + 3] != witness[7]) {
            throw new IOException("Razor 420 source UNIT identity mismatch");
        }
        json = new StringBuilder(RazorTerrainVisualSource.DESCRIPTOR_COUNT);
        json.append("{\"schema\":\"demulation.razor.420.android419-envelope.v1\",");
        json.append("\"rom_sha256\":\"").append(this.sourceSha256).append("\",");
        json.append("\"words\":[");
        for (int i2 = 0; i2 < witness.length; i2++) {
            if (i2 > 0) {
                json.append(',');
            }
            json.append(witness[i2]);
        }
        json.append("],\"unit403\":[");
        for (int i3 = 0; i3 < 12; i3++) {
            if (i3 > 0) {
                json.append(',');
            }
            json.append(all[start + i3]);
        }
        json.append("]}");
        return json.toString();
    }

    public synchronized String exportF40Correlation421(RazorTerrainVisualSource.Audit audit, byte[] authenticatedUnitBank, int ordinal) throws IOException {
        StringBuilder json;
        if (this.token == 0 || audit == null || audit.romVariant() != this.variant || !this.sourceSha256.equals(audit.romSourceSha256())) {
            throw new IOException("Razor 421 audit or session mismatch");
        }
        int[] before = nativeRead(this.token);
        validate(before, this.proof, this.baseline);
        String emcEnvelope = exportF40Boundary420(audit, authenticatedUnitBank, ordinal);
        int[] units = observeInitialUnits403(audit);
        int[] after = nativeRead(this.token);
        validate(after, this.proof, this.baseline);
        for (int i = 0; i < 26; i++) {
            if (before[i] != after[i]) {
                throw new IOException("Razor 421 native world changed during export");
            }
        }
        if (units[1] != before[7] || before[30] != 0 || after[30] != 0 || before[31] != 0 || after[31] != 0 || ordinal >= units[1]) {
            throw new IOException("Razor 421 tick gate or roster changed");
        }
        int width = before[6] >>> 16;
        int height = before[6] & 65535;
        json = new StringBuilder((units[1] * 64) + 512);
        json.append("{\"schema\":\"demulation.razor.421.source-roster-context.v1\",");
        json.append("\"rom_sha256\":\"").append(this.sourceSha256).append("\",");
        json.append("\"variant_mib\":").append(this.variant).append(',');
        json.append("\"house\":").append(this.house).append(',');
        json.append("\"mission\":").append(this.mission).append(',');
        json.append("\"grid_side\":").append(before[5]).append(',');
        json.append("\"map_width\":").append(width).append(',');
        json.append("\"map_height\":").append(height).append(',');
        json.append("\"gameplay_ticks\":0,\"f40_executed\":false,");
        json.append("\"android420\":").append(emcEnvelope).append(',');
        json.append("\"source_units403\":[");
        for (int n = 0; n < units[1]; n++) {
            if (n > 0) {
                json.append(',');
            }
            json.append('[');
            for (int i2 = 0; i2 < 12; i2++) {
                if (i2 > 0) {
                    json.append(',');
                }
                json.append(units[(n * 12) + 3 + i2]);
            }
            json.append(']');
        }
        json.append("]}");
        return json.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00d1, code lost:
    
        r10 = 128;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized byte[] observeMapUnitCells411(com.ahsim.demulation.RazorTerrainVisualSource.Audit r26, int[] r27) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 530
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.RazorNativeWorldSession.observeMapUnitCells411(com.ahsim.demulation.RazorTerrainVisualSource$Audit, int[]):byte[]");
    }

    public synchronized int[] observeUnitFlagPrestate416(RazorTerrainVisualSource.Audit audit, int[] source403, byte[] map411) throws IOException {
        int[] snapshot;
        if (this.token == 0 || audit == null || audit.romVariant() != this.variant || !this.sourceSha256.equals(audit.romSourceSha256()) || source403 == null || source403.length < 3 || source403[0] != 403 || source403[2] != 12 || map411 == null || map411.length < 45 || map411[0] != 82 || map411[1] != 52 || map411[2] != 49 || map411[3] != 49) {
            throw new IOException("Razor 416 provenance mismatch");
        }
        int[] before = nativeRead(this.token);
        validate(before, this.proof, this.baseline);
        snapshot = nativeUnitFlagPrestate416(this.token);
        int[] after = nativeRead(this.token);
        validate(after, this.proof, this.baseline);
        if (snapshot == null || snapshot.length < 6 || snapshot[0] != 416 || snapshot[2] != 12 || snapshot[3] != 1 || snapshot[4] != 0 || snapshot[5] != 0 || snapshot[1] != source403[1] || snapshot[1] != before[7] || snapshot[1] < 0 || snapshot[1] > 128 || snapshot.length != (snapshot[1] * 12) + 6 || source403.length != (snapshot[1] * 12) + 3 || u16(map411, 4) != 411 || u16(map411, 14) != snapshot[1]) {
            throw new IOException("Unsupported or malformed Razor UNIT ABI");
        }
        for (int i = 0; i < snapshot[1]; i++) {
            int p = (i * 12) + 6;
            int q = (i * 12) + 3;
            for (int k = 0; k < 6; k++) {
                if (snapshot[p + k] != source403[q + k]) {
                    throw new IOException("Razor 416 UNIT identity disagrees with 403");
                }
            }
            int k2 = p + 6;
            if (snapshot[k2] != source403[q + 9] || snapshot[p + 7] != 0 || snapshot[p + 8] != -1 || snapshot[p + 9] != -1 || snapshot[p + 10] != -1 || snapshot[p + 11] != 0) {
                throw new IOException("Unverified 68K object flag ABI exposed");
            }
        }
        for (int i2 = 0; i2 < 26; i2++) {
            if (before[i2] != after[i2]) {
                throw new IOException("Razor native world changed during 416 read");
            }
        }
        return (int[]) snapshot.clone();
    }

    private static int u16(byte[] b, int p) {
        return ((b[p] & 255) << 8) | (b[p + 1] & 255);
    }

    private static long u32(byte[] b, int p) {
        return ((b[p] & 255) << 24) | ((b[p + 1] & 255) << 16) | ((b[p + 2] & 255) << 8) | (b[p + 3] & 255);
    }

    @Override // java.lang.AutoCloseable
    public synchronized void close() {
        this.lastPrecallF40533 = null;
        this.lastSandboxGate534 = null;
        this.lastM68kBackend535 = null;
        this.lastRomSmoke536 = null;
        this.lastTrace538 = null;
        if (this.token != 0) {
            nativeClose(this.token);
            this.token = 0L;
        }
    }

    static int[] unitExit646(long token, byte[] rom, byte[] ram, byte[] projectedRam, int[] regs) {
        String str;
        if (token <= 0 || rom == null || ram == null || projectedRam == null || regs == null || regs.length != 18 || regs[17] < 0 || regs[17] > 65535 || projectedRam == rom || projectedRam == ram || ram.length != 65536 || projectedRam.length != 65536 || (rom.length != 3145728 && rom.length != 4194304)) {
            throw new IllegalArgumentException("Invalid detached 646 state");
        }
        if (rom.length == 3145728) {
            str = DuneHackR82cRazorCombatAudit.RAZOR_ONE_SHA256;
        } else {
            str = DuneHackR82cRazorCombatAudit.RAZOR_TWO_SHA256;
        }
        String pinned = str;
        try {
            byte[] hash = MessageDigest.getInstance("SHA-256").digest(rom);
            StringBuilder encoded = new StringBuilder(64);
            for (byte b : hash) {
                encoded.append(Character.forDigit((b >>> 4) & 15, 16)).append(Character.forDigit(b & 15, 16));
            }
            if (!pinned.equals(encoded.toString())) {
                throw new IllegalArgumentException("Unsupported Razor ROM SHA-256");
            }
            return nativeUnitExit646(token, rom, ram, projectedRam, regs);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("SHA-256 unavailable", e);
        }
    }

    static int[] callerDispatch647(long token, byte[] rom, byte[] ram, byte[] projectedRam, int[] regs) {
        if (token <= 0 || rom == null || ram == null || projectedRam == null || regs == null || regs.length != 18 || regs[17] < 0 || regs[17] > 65535 || projectedRam == rom || projectedRam == ram || ram.length != 65536 || projectedRam.length != 65536 || rom.length != 3145728) {
            throw new IllegalArgumentException("Invalid detached 647 state");
        }
        try {
            byte[] hash = MessageDigest.getInstance("SHA-256").digest(rom);
            StringBuilder encoded = new StringBuilder(64);
            for (byte b : hash) {
                encoded.append(Character.forDigit((b >>> 4) & 15, 16)).append(Character.forDigit(b & 15, 16));
            }
            if (!DuneHackR82cRazorCombatAudit.RAZOR_ONE_SHA256.equals(encoded.toString())) {
                throw new IllegalArgumentException("Unsupported Razor ROM SHA-256");
            }
            return nativeCallerDispatch647(token, rom, ram, projectedRam, regs);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("SHA-256 unavailable", e);
        }
    }

    static int[] callerTarget648(long token, byte[] rom, byte[] ram, byte[] projectedRam, int[] regs) {
        if (token <= 0 || rom == null || ram == null || projectedRam == null || regs == null || regs.length != 18 || regs[17] < 0 || regs[17] > 65535 || projectedRam == rom || projectedRam == ram || ram.length != 65536 || projectedRam.length != 65536 || rom.length != 3145728) {
            throw new IllegalArgumentException("Invalid detached 648 state");
        }
        try {
            byte[] hash = MessageDigest.getInstance("SHA-256").digest(rom);
            StringBuilder encoded = new StringBuilder(64);
            for (byte b : hash) {
                encoded.append(Character.forDigit((b >>> 4) & 15, 16)).append(Character.forDigit(b & 15, 16));
            }
            if (!DuneHackR82cRazorCombatAudit.RAZOR_ONE_SHA256.equals(encoded.toString())) {
                throw new IllegalArgumentException("Unsupported Razor ROM SHA-256");
            }
            return nativeCallerTarget648(token, rom, ram, projectedRam, regs);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("SHA-256 unavailable", e);
        }
    }

    static int[] clockGates649(long token, byte[] rom, byte[] ram, byte[] projectedRam, int[] regs) {
        if (token <= 0 || rom == null || ram == null || projectedRam == null || regs == null || regs.length != 18 || regs[17] < 0 || regs[17] > 65535 || projectedRam == rom || projectedRam == ram || ram.length != 65536 || projectedRam.length != 65536 || rom.length != 3145728) {
            throw new IllegalArgumentException("Invalid detached 649 state");
        }
        try {
            byte[] hash = MessageDigest.getInstance("SHA-256").digest(rom);
            StringBuilder encoded = new StringBuilder(64);
            for (byte b : hash) {
                encoded.append(Character.forDigit((b >>> 4) & 15, 16)).append(Character.forDigit(b & 15, 16));
            }
            if (!DuneHackR82cRazorCombatAudit.RAZOR_ONE_SHA256.equals(encoded.toString())) {
                throw new IllegalArgumentException("Unsupported Razor ROM SHA-256");
            }
            return nativeClockGates649(token, rom, ram, projectedRam, regs);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("SHA-256 unavailable", e);
        }
    }

    static int[] unitScan650(long token, byte[] rom, byte[] ram, byte[] projectedRam, int[] regs) {
        if (token <= 0 || rom == null || ram == null || projectedRam == null || regs == null || regs.length != 18 || regs[17] < 0 || regs[17] > 65535 || projectedRam == rom || projectedRam == ram || ram.length != 65536 || projectedRam.length != 65536 || rom.length != 3145728) {
            throw new IllegalArgumentException("Invalid detached 650 state");
        }
        try {
            byte[] hash = MessageDigest.getInstance("SHA-256").digest(rom);
            StringBuilder encoded = new StringBuilder(64);
            for (byte b : hash) {
                encoded.append(Character.forDigit((b >>> 4) & 15, 16)).append(Character.forDigit(b & 15, 16));
            }
            if (!DuneHackR82cRazorCombatAudit.RAZOR_ONE_SHA256.equals(encoded.toString())) {
                throw new IllegalArgumentException("Unsupported Razor ROM SHA-256");
            }
            return nativeUnitScan650(token, rom, ram, projectedRam, regs);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("SHA-256 unavailable", e);
        }
    }

    static int[] unitDispatch651(long token, byte[] rom, byte[] ram, byte[] projectedRam, int[] regs) {
        if (token <= 0 || rom == null || ram == null || projectedRam == null || regs == null || regs.length != 18 || regs[17] < 0 || regs[17] > 65535 || projectedRam == rom || projectedRam == ram || ram.length != 65536 || projectedRam.length != 65536 || rom.length != 3145728) {
            throw new IllegalArgumentException("Invalid detached 651 state");
        }
        try {
            byte[] hash = MessageDigest.getInstance("SHA-256").digest(rom);
            StringBuilder encoded = new StringBuilder(64);
            for (byte b : hash) {
                encoded.append(Character.forDigit((b >>> 4) & 15, 16)).append(Character.forDigit(b & 15, 16));
            }
            if (!DuneHackR82cRazorCombatAudit.RAZOR_ONE_SHA256.equals(encoded.toString())) {
                throw new IllegalArgumentException("Unsupported Razor ROM SHA-256");
            }
            return nativeUnitDispatch651(token, rom, ram, projectedRam, regs);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("SHA-256 unavailable", e);
        }
    }

    static int[] unitHandler652(long token, byte[] rom, byte[] ram, byte[] projectedRam, int[] regs) {
        if (token <= 0 || rom == null || ram == null || projectedRam == null || regs == null || regs.length != 18 || regs[17] < 0 || regs[17] > 65535 || projectedRam == rom || projectedRam == ram || ram.length != 65536 || projectedRam.length != 65536 || rom.length != 3145728) {
            throw new IllegalArgumentException("Invalid detached 652 state");
        }
        try {
            byte[] hash = MessageDigest.getInstance("SHA-256").digest(rom);
            StringBuilder encoded = new StringBuilder(64);
            for (byte b : hash) {
                encoded.append(Character.forDigit((b >>> 4) & 15, 16)).append(Character.forDigit(b & 15, 16));
            }
            if (!DuneHackR82cRazorCombatAudit.RAZOR_ONE_SHA256.equals(encoded.toString())) {
                throw new IllegalArgumentException("Unsupported Razor ROM SHA-256");
            }
            return nativeUnitHandler652(token, rom, ram, projectedRam, regs);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("SHA-256 unavailable", e);
        }
    }

    static int[] unitHandler653(long token, byte[] rom, byte[] ram, byte[] projectedRam, int[] regs) {
        if (token <= 0 || rom == null || ram == null || projectedRam == null || regs == null || regs.length != 18 || regs[17] < 0 || regs[17] > 65535 || projectedRam == rom || projectedRam == ram || ram.length != 65536 || projectedRam.length != 65536 || rom.length != 3145728) {
            throw new IllegalArgumentException("Invalid detached 653 state");
        }
        try {
            byte[] hash = MessageDigest.getInstance("SHA-256").digest(rom);
            StringBuilder encoded = new StringBuilder(64);
            for (byte b : hash) {
                encoded.append(Character.forDigit((b >>> 4) & 15, 16)).append(Character.forDigit(b & 15, 16));
            }
            if (!DuneHackR82cRazorCombatAudit.RAZOR_ONE_SHA256.equals(encoded.toString())) {
                throw new IllegalArgumentException("Unsupported Razor ROM SHA-256");
            }
            return nativeUnitHandler653(token, rom, ram, projectedRam, regs);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("SHA-256 unavailable", e);
        }
    }

    static int[] unitHandler654(long token, byte[] rom, byte[] ram, byte[] projectedRam, int[] regs) {
        if (token <= 0 || rom == null || ram == null || projectedRam == null || regs == null || regs.length != 18 || regs[17] < 0 || regs[17] > 65535 || projectedRam == rom || projectedRam == ram || ram.length != 65536 || projectedRam.length != 65536 || rom.length != 3145728) {
            throw new IllegalArgumentException("Invalid detached 654 state");
        }
        try {
            byte[] hash = MessageDigest.getInstance("SHA-256").digest(rom);
            StringBuilder encoded = new StringBuilder(64);
            for (byte b : hash) {
                encoded.append(Character.forDigit((b >>> 4) & 15, 16)).append(Character.forDigit(b & 15, 16));
            }
            if (!DuneHackR82cRazorCombatAudit.RAZOR_ONE_SHA256.equals(encoded.toString())) {
                throw new IllegalArgumentException("Unsupported Razor ROM SHA-256");
            }
            return nativeUnitHandler654(token, rom, ram, projectedRam, regs);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("SHA-256 unavailable", e);
        }
    }

    static int[] unitHandler655(long token, byte[] rom, byte[] ram, byte[] projectedRam, int[] regs) {
        if (token <= 0 || rom == null || ram == null || projectedRam == null || regs == null || regs.length != 18 || regs[17] < 0 || regs[17] > 65535 || projectedRam == rom || projectedRam == ram || ram.length != 65536 || projectedRam.length != 65536 || rom.length != 3145728) {
            throw new IllegalArgumentException("Invalid detached 655 state");
        }
        try {
            byte[] hash = MessageDigest.getInstance("SHA-256").digest(rom);
            StringBuilder encoded = new StringBuilder(64);
            for (byte b : hash) {
                encoded.append(Character.forDigit((b >>> 4) & 15, 16)).append(Character.forDigit(b & 15, 16));
            }
            if (!DuneHackR82cRazorCombatAudit.RAZOR_ONE_SHA256.equals(encoded.toString())) {
                throw new IllegalArgumentException("Unsupported Razor ROM SHA-256");
            }
            return nativeUnitHandler655(token, rom, ram, projectedRam, regs);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("SHA-256 unavailable", e);
        }
    }

    static int[] callerCounter656(long token, byte[] rom, byte[] ram, byte[] projectedRam, int[] regs) {
        if (token <= 0 || rom == null || ram == null || projectedRam == null || regs == null || regs.length != 18 || regs[17] < 0 || regs[17] > 65535 || projectedRam == rom || projectedRam == ram || ram.length != 65536 || projectedRam.length != 65536 || rom.length != 3145728) {
            throw new IllegalArgumentException("Invalid detached 656 state");
        }
        try {
            byte[] hash = MessageDigest.getInstance("SHA-256").digest(rom);
            StringBuilder encoded = new StringBuilder(64);
            for (byte b : hash) {
                encoded.append(Character.forDigit((b >>> 4) & 15, 16)).append(Character.forDigit(b & 15, 16));
            }
            if (!DuneHackR82cRazorCombatAudit.RAZOR_ONE_SHA256.equals(encoded.toString())) {
                throw new IllegalArgumentException("Unsupported Razor ROM SHA-256");
            }
            return nativeCallerCounter656(token, rom, ram, projectedRam, regs);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("SHA-256 unavailable", e);
        }
    }

    static int[] callerBranch657(long token, byte[] rom, byte[] ram, byte[] projectedRam, int[] regs) {
        if (token <= 0 || rom == null || ram == null || projectedRam == null || regs == null || regs.length != 18 || regs[17] < 0 || regs[17] > 65535 || projectedRam == rom || projectedRam == ram || rom.length != 3145728 || ram.length != 65536 || projectedRam.length != 65536) {
            throw new IllegalArgumentException("Invalid detached 657 state");
        }
        try {
            byte[] hash = MessageDigest.getInstance("SHA-256").digest(rom);
            StringBuilder encoded = new StringBuilder(64);
            for (byte b : hash) {
                encoded.append(Character.forDigit((b >>> 4) & 15, 16)).append(Character.forDigit(b & 15, 16));
            }
            if (!DuneHackR82cRazorCombatAudit.RAZOR_ONE_SHA256.equals(encoded.toString())) {
                throw new IllegalArgumentException("Unsupported Razor ROM SHA-256");
            }
            return nativeCallerBranch657(token, rom, ram, projectedRam, regs);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("SHA-256 unavailable", e);
        }
    }
}
