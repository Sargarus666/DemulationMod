package com.ahsim.demulation;

import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class RomAudioAssetManifest {
    public static final String GROUP_ID = "original_audio_ready_v1";
    public static final String SOURCE_PACK = "audio/gems_source_pack.bin";
    private static final List<Entry> ENTRIES = Collections.singletonList(new Entry(SOURCE_PACK, 226000, "6eae92e0bda0d9d3c6ccb429fac32c6f530f424b6da6109737e412f8524dfb2f"));

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

    private RomAudioAssetManifest() {
    }

    public static List<Entry> entries() {
        return ENTRIES;
    }

    public static Entry find(String path) {
        if (SOURCE_PACK.equals(path)) {
            return ENTRIES.get(0);
        }
        return null;
    }
}
