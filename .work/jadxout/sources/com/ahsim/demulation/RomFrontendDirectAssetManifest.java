package com.ahsim.demulation;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class RomFrontendDirectAssetManifest {
    private static final List<Entry> ENTRIES = Collections.unmodifiableList(Arrays.asList(m26e("frontend/direct/title_font.bin", DuneHackR82ScenarioRecordDecoder.MAX_RECORDS, "6ec35535b9ccfc6ed1329fe0aaefe1cb558a8c64c1db38d7a5ea1fbe561ac0e4"), m26e("frontend/direct/options_font.bin", DuneHackR82ScenarioRecordDecoder.MAX_RECORDS, "d42f55982110cf6fa6d0aa7e9ae9382045a73de0b59f46d0140eedbdaad3844b"), m26e("frontend/direct/title_logo_replacement_palette.bin", 96, "ec98b69bbf8eb16e8b3d39909b7d11145fd94e450a08e9690d7fa3eb405faa6f"), m26e("frontend/direct/options_palette.bin", 128, "5d881872ca1ecf83d6c66fbe3c6b88ac06a37a8f479822fd7faf7247420dba6b"), m26e("frontend/direct/house_cursor_patterns.bin", 256, "f4753729f3a5267fa62fa1e08a36e3c6d7726fc50af03824af75378c27c9edc2"), m26e("frontend/direct/house_cursor_layout.bin", 38, "5e2e2a870212615cb6b454ab320715c6470b88182f0393a664e92e2f033e913a"), m26e(RomRussianLocalizationAssetManifest.TITLE_STRINGS, 36, "8f0e9e8ff5c01003ed114c8d31755f0eaf03de7a374f4327c4de6774dba7956b"), m26e("frontend/direct/sega_patterns.bin", 1568, "4503bf0b1b1d1d9f3c3fd602cf83cc15b5eea57a2ec96150dbded27f432a9c2c"), m26e("frontend/direct/sega_map.bin", DuneHackR82ScenarioRecordDecoder.MAX_RECORDS, "66367863bb7a7055d872e3c723bf876685a7a5bd312f0859773b8c9d0cc87f9b"), m26e("frontend/direct/sega_palette.bin", 128, "e144b8ed2cff2f7be2ee5e1d1386bd886a62ecabeceaab79dd7da9e7117225ab"), m26e("frontend/direct/sega_gradient.bin", 62, "3da659a0d5be781134f5cda58d3975b5d58a92b89b6c57e3aa10fb69bea93e4f"), m26e("frontend/direct/ship_patterns.bin", 8960, "f4e04e5cfdcf9de04b96dd346949cf671e7a790b0552b6a478cf44357db769d6"), m26e("frontend/direct/ship_palette.bin", 96, "7fd0f0c696018a7396625f179d92833daf60b02af9330755bcc61f882779b768"), m26e("frontend/direct/ship0_layouts.bin", 402, "edb0838320838d64558d5ed96b5e70d78033cab2e78f66e4fb38bc64cc574cc9"), m26e("frontend/direct/ship1_layouts.bin", 402, "c2aba91e8067258f01dde45a7bb39456108fc57aae7bab63f3c62cb36ca21bf4"), m26e("frontend/direct/ship2_layouts.bin", 402, "0dbf466ffba5095c4e18bbac85fc13dcb0d41e72b1722627877e41b9391eda31"), m26e("frontend/direct/ship0_script.bin", 210, "a9627c871a44cae397e315b6e5c5bbdff8070ba594b5e911ead3c55ccdf6f6d6"), m26e("frontend/direct/ship1_script.bin", 210, "952c4e05ff00be2821c3996131134b4ac661ff4ecc24fcc04d264bd6026afd5c"), m26e("frontend/direct/ship2_script.bin", 210, "bd731ebb59f6c837bdadfbf26eded9bf75ccae26d68b0963698a30eaaa506865")));
    public static final String GROUP_ID = "frontend_direct_v1";

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
    private static Entry m26e(String path, int length, String sha256) {
        return new Entry(path, length, sha256);
    }

    private RomFrontendDirectAssetManifest() {
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
        for (Entry e : ENTRIES) {
            if (e.relativePath.equals(relativePath)) {
                return e;
            }
        }
        return null;
    }
}
