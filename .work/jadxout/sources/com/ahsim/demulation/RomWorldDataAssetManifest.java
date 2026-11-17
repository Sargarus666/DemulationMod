package com.ahsim.demulation;

import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class RomWorldDataAssetManifest {
    public static final String GROUP_ID = "original_world_data_v1";
    public static final String MAP_SCENARIO_LAYOUT = "data/world/map_scenario_layout_v1.bin";
    private static final Entry MAP_SCENARIO_LAYOUT_ENTRY = new Entry(MAP_SCENARIO_LAYOUT, RomRuntimeWorldDataAssets.PACK_BYTES, "1c789badd3ba9825448987cd14a97d9ce4d32f4bde500b65043bcaf3f450955b");
    private static final List<Entry> ENTRIES = Collections.singletonList(MAP_SCENARIO_LAYOUT_ENTRY);

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

    private RomWorldDataAssetManifest() {
    }

    public static List<Entry> entries() {
        return ENTRIES;
    }

    public static Entry find(String path) {
        if (MAP_SCENARIO_LAYOUT.equals(path)) {
            return MAP_SCENARIO_LAYOUT_ENTRY;
        }
        return null;
    }

    public static long payloadBytes() {
        return MAP_SCENARIO_LAYOUT_ENTRY.length;
    }
}
