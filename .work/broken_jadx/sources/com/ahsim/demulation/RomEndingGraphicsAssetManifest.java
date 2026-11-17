package com.ahsim.demulation;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class RomEndingGraphicsAssetManifest {
    private static final List<Entry> ENTRIES = Collections.unmodifiableList(Arrays.asList(m24e("ending/planet_patterns.bin", RazorVramPatternLoader.METATILE_BANK_BYTES, "45a85fdb8565e64554cf6d0f9b4015f957dc747dbd1c29290f4546a83dc3e811"), m24e("ending/planet_map.bin", 3584, "85fa9cde035cee93ec38622b8076cda557a5db4983eca79c82472b9828db7874"), m24e("ending/font.bin", DuneHackR82ScenarioRecordDecoder.MAX_RECORDS, "6ec35535b9ccfc6ed1329fe0aaefe1cb558a8c64c1db38d7a5ea1fbe561ac0e4"), m24e("ending/initial_palette.bin", 128, "437db8c3853cbb67a29b291fc8bb581e608b4448c6074586f35eda6dcd8b0e2b"), m24e("ending/fade_white.bin", 18, "a50a811c03a389ddc5b5f95a826c9e316a8e9a59d1991a934db219a005f77a38"), m24e("ending/fade_atreides.bin", 18, "2cf743bd43cefc9d18f3afeef85802560698894296d6f877793ad2fb78eb8e10"), m24e("ending/fade_harkonnen.bin", 18, "5175a0b44aba8bcebbc3be54311413ef383af0b33339b240f825b471ec97812f"), m24e("ending/fade_ordos.bin", 18, "87f800a7979bb9ce400a2d2fffcf87f74061e590c0ec8e46f6c74c4baea6fb3a")));
    public static final String GROUP_ID = "ending_graphics_v1";

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
    private static Entry m24e(String path, int length, String sha256) {
        return new Entry(path, length, sha256);
    }

    private RomEndingGraphicsAssetManifest() {
    }

    public static List<Entry> entries() {
        return ENTRIES;
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
