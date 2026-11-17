package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82Probe;

/* loaded from: classes2.dex */
public final class RomEngineRouter564 {

    public enum Decision {
        CLASSIC_OR_UNKNOWN,
        DUNEHACK_NATIVE,
        DUNEHACK_CANDIDATE
    }

    private RomEngineRouter564() {
    }

    public static Decision decide(RazorRomAnalysis source) {
        if (source == null) {
            throw new IllegalArgumentException("ROM analysis required");
        }
        if (source.recognized) {
            return Decision.DUNEHACK_NATIVE;
        }
        if (source.family != DuneHackR82Probe.Family.NONE) {
            return Decision.DUNEHACK_CANDIDATE;
        }
        return Decision.CLASSIC_OR_UNKNOWN;
    }
}
