package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82cRazorMissionBundle;
import java.io.IOException;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class RazorNativeWorldPreview {
    public static final int MAP_64_PREPARED = 1;
    public static final int REQUIRES_128_WORLD = 2;
    private static final int RESULT_WORDS = 13;

    private static native int[] nativeInspect(byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, int i5);

    static {
        System.loadLibrary("dunehost");
    }

    private RazorNativeWorldPreview() {
    }

    public static final class Summary {
        public final int expanded128MapMissions;
        public final boolean gameplayReady = false;
        public final int invalidMissions;
        public final int native64MapMissions;

        Summary(int native64, int expanded, int invalid) {
            this.native64MapMissions = native64;
            this.expanded128MapMissions = expanded;
            this.invalidMissions = invalid;
        }
    }

    public static Summary inspect(DuneHackR82cRazorMissionBundle.Result audited) throws IOException {
        if (audited == null) {
            throw new IOException("Missing Razor audit");
        }
        Objects.requireNonNull(audited);
        int native64 = 0;
        int expanded = 0;
        int invalid = 0;
        List<DuneHackR82cRazorMissionBundle.Mission> missions = audited.allMissions();
        for (DuneHackR82cRazorMissionBundle.Mission m : missions) {
            int[] words = nativeInspect(m.mapBytes(), m.scenarioBytes(), m.house, m.mission, m.storedMapSide, m.scenarioMapWidth, m.scenarioMapHeight);
            if (words == null || words.length != 13 || words[1] != m.house || words[2] != m.mission || words[3] != m.storedMapSide || words[4] != ((m.scenarioMapWidth << 16) | m.scenarioMapHeight) || words[5] != m.scenarioRecordCount || words[6] != m.unitCount || words[7] != m.structureCount || words[8] != m.teamCount) {
                throw new IOException("Native Razor world preflight disagrees with Java scenario: " + m.house + "/" + m.mission);
            }
            int required = m.needsExpandedMapRuntime ? 2 : 1;
            if (words[0] != required) {
                throw new IOException("Razor map ABI mismatch");
            }
            if (words[0] == 1) {
                native64++;
            } else if (words[0] == 2) {
                expanded++;
            } else {
                invalid++;
            }
        }
        if (native64 + expanded + invalid != audited.missionsDecoded) {
            throw new IOException("Razor mission slot count changed");
        }
        return new Summary(native64, expanded, invalid);
    }
}
