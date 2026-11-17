package com.ahsim.demulation;

import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class RomGameplayDataAssetManifest {
    public static final String GROUP_ID = "original_gameplay_data_v1";
    public static final String UNIT_STRUCTURE_PARAMETERS = "data/gameplay/unit_structure_parameters_v1.bin";
    private static final Entry ENTRY = new Entry(UNIT_STRUCTURE_PARAMETERS, RomRuntimeGameplayDataAssets.PACK_BYTES, "10e071a3347da2023d4f4532dc2b09e0f29dc8bbf562d3766fe3a46ec1363e05");
    private static final List<Entry> ENTRIES = Collections.singletonList(ENTRY);

    public static final class Entry {
        public final int length;
        public final String relativePath;
        public final String sha256;

        private Entry(String relativePath, int length, String sha256) {
            this.relativePath = relativePath;
            this.length = length;
            this.sha256 = sha256;
        }
    }

    private RomGameplayDataAssetManifest() {
    }

    public static List<Entry> entries() {
        return ENTRIES;
    }

    public static Entry find(String path) {
        if (UNIT_STRUCTURE_PARAMETERS.equals(path)) {
            return ENTRY;
        }
        return null;
    }

    public static long payloadBytes() {
        return ENTRY.length;
    }
}
