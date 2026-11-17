package com.ahsim.demulation;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class RomWorldTacticalSpriteAssetManifest {
    public static final String CLASSIC_PURCHASE_ICONS = "tactical/classic_purchase_icons.bin";
    private static final List<Entry> ENTRIES = Collections.unmodifiableList(Arrays.asList(m34e("tactical/static_patterns_922_2047.bin", 36032, "a04ee1038b4ea011b0944f9ce76c4dbf6e826100f17a0c2da5c63ece2cbb4ab4"), m34e("tactical/visual_catalog.bin", 7900, "c419178fc0c6d7b0119f0f7990d5edba31c61685f3b1f5fce0e57eddfb480ea0"), m34e("tactical/dynamic_patterns.bin", 13152, "06c5f6688cb4d07dc1ff0caae35e962ca58507f1c0b35851cd98f6ed31443b23"), m34e("tactical/direct_layouts.bin", 4952, "5bb679cbf63fd36b34db174851c033a08cbdceb61b3bd8684728f44bcb43df50"), m34e("tactical/placement_grid_patterns.bin", 512, "8ce62922476c251d1d1887c1f8e3c1424e0e75e498125222097e37587b22bcdc"), m34e(CLASSIC_PURCHASE_ICONS, 164280, "e5cc22f4fe264bb6bafd41eab9916c598ef39e4f7e1f7debe5516344055154d7")));
    public static final String GROUP_ID = "world_tactical_sprites_v1";

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

    /* renamed from: e */
    private static Entry m34e(String path, int length, String sha256) {
        return new Entry(path, length, sha256);
    }

    private RomWorldTacticalSpriteAssetManifest() {
    }

    public static List<Entry> entries() {
        return ENTRIES;
    }

    public static List<Entry> legacyEntries() {
        return Collections.unmodifiableList(new ArrayList(ENTRIES.subList(0, 5)));
    }

    public static long payloadBytes() {
        long total = 0;
        for (Entry e : ENTRIES) {
            total += e.length;
        }
        return total;
    }

    public static Entry find(String relativePath) {
        if (relativePath == null) {
            return null;
        }
        for (Entry e : ENTRIES) {
            if (e.relativePath.equals(relativePath)) {
                return e;
            }
        }
        return null;
    }
}
