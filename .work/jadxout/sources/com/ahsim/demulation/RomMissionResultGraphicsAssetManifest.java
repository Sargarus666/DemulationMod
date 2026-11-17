package com.ahsim.demulation;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class RomMissionResultGraphicsAssetManifest {
    private static final List<Entry> ENTRIES = Collections.unmodifiableList(Arrays.asList(m28e("mission_result/palette.bin", 128, "4a37a93d4cc7995993d06357a69486a12423f6a5281faf67d34a45e81b568557"), m28e("mission_result/common_patterns.bin", 28672, "480b0f918c041c5d71fd624016d0e0b91fb0f89bbae145216e1df06b6414d524"), m28e("mission_result/font.bin", DuneHackR82ScenarioRecordDecoder.MAX_RECORDS, "d42f55982110cf6fa6d0aa7e9ae9382045a73de0b59f46d0140eedbdaad3844b"), m28e("mission_result/backdrop0.map", 3584, "678a8cbd73e91eaa26525db27bf93a44db6adfe0bba8c027d5fda5eb064592ef"), m28e("mission_result/backdrop1.map", 3584, "9bd473adde71df5029b7051b48caac28ea53b53839d5e974e714b91002fd89b8"), m28e("mission_result/backdrop2.map", 3584, "d1f2d550cb0da19dbb93ec7e95d42675a29b80e8364964a36530bdf60df6c381"), m28e("mission_result/overlay.map", 3584, "279858f4a7cbe2389ec891b38e44957b4a51b28b7fb36bf827cb49688c3f7bae"), m28e("mission_result/password_overlay.map", 1792, "e511cdced4f6a7562a35233d4cc6f43aa7f6cf9f3c501f0fc0488c8340c2bd27")));
    public static final String GROUP_ID = "mission_result_graphics_v1";

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
    private static Entry m28e(String path, int length, String sha256) {
        return new Entry(path, length, sha256);
    }

    private RomMissionResultGraphicsAssetManifest() {
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
