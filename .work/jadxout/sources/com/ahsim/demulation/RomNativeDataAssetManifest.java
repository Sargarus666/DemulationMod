package com.ahsim.demulation;

import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class RomNativeDataAssetManifest {
    public static final String GROUP_ID = "original_native_pure_data_v1";
    public static final String REMAINING_PURE_DATA = "data/native/remaining_pure_data_v1.bin";
    private static final Entry ENTRY = new Entry(REMAINING_PURE_DATA, RomRuntimeNativeDataAssets.PACK_BYTES, "fb668f2ecf174efdec1982d0dcb94abe43f02b56824756ea2dd6f41496bfdd57");
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

    private RomNativeDataAssetManifest() {
    }

    public static List<Entry> entries() {
        return ENTRIES;
    }

    public static Entry find(String path) {
        if (REMAINING_PURE_DATA.equals(path)) {
            return ENTRY;
        }
        return null;
    }

    public static long payloadBytes() {
        return ENTRY.length;
    }
}
