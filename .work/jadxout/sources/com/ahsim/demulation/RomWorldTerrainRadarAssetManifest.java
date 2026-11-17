package com.ahsim.demulation;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class RomWorldTerrainRadarAssetManifest {
    private static final List<Entry> ENTRIES = Collections.unmodifiableList(Arrays.asList(m35e("terrain/patterns.bin", 29504, "b551fc843072c5cbe11598f57b719e06ab62b43b9eadb5ced900071629396ca1"), m35e("terrain/metatile_descriptors.bin", 11584, "ed9e6972a779cac4ea286dedf68ec830b2b0d53e5bc66d9a20d176fb6ab44fce"), m35e("terrain/palette.bin", 128, "2ba9dac9f2cb4d60e5fa89b025fcf50846b46e248e43b5710d9033d041c935fa"), m35e("radar/color_tables.bin", 517, "b7b236a574a5956202f5e05e90d59a4c897e9203bd8f3dc0819c2bbce4283790"), m35e("radar/transition_quadrants.bin", 6144, "887093379c2767d7ef969bc769aa90a87ce5f0a8ae39d34f771688af060d790b"), m35e("world/structure_beacon_patterns.bin", RazorTerrainAtlas.HEIGHT, "3dc1cddbad773a5d4939736d3ede393e0f0b556d095fc1760eea17b630342dce")));
    public static final String GROUP_ID = "world_terrain_radar_v1";

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
    private static Entry m35e(String path, int length, String sha256) {
        return new Entry(path, length, sha256);
    }

    private RomWorldTerrainRadarAssetManifest() {
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
