package com.ahsim.demulation;

/* loaded from: classes2.dex */
public final class DuneHackNativeCapabilities {
    public final boolean emcScheduler;
    public final boolean extendedOwners;
    public final boolean extendedUnits;
    public final boolean gameplay;
    public final boolean maps128;
    public final boolean saveLoad;

    private DuneHackNativeCapabilities(boolean map, boolean owners, boolean units, boolean scheduler, boolean game, boolean saves) {
        this.maps128 = map;
        this.extendedOwners = owners;
        this.extendedUnits = units;
        this.emcScheduler = scheduler;
        this.gameplay = game;
        this.saveLoad = saves;
    }

    public static DuneHackNativeCapabilities current() {
        return new DuneHackNativeCapabilities(true, true, true, false, false, false);
    }

    public boolean canLaunch() {
        return this.maps128 && this.extendedOwners && this.extendedUnits && this.emcScheduler && this.gameplay && this.saveLoad;
    }
}
