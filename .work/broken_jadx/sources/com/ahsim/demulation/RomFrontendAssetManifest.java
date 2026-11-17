package com.ahsim.demulation;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class RomFrontendAssetManifest {
    private static final List<Entry> ENTRIES = Collections.unmodifiableList(Arrays.asList(m25e("frontend/house_selector_patterns.bin", 6432, "68492aa6e2648e3d5cb5519b8a8a5d84f42dc9e76ec4362aae069e55597ad299"), m25e("frontend/house_selector_map.bin", 3584, "0e5501c31ab53d731518f11fcd8dfb8a26a6b873534a60e25b029461deae6e02"), m25e("frontend/house_selector_palette.bin", 128, "26e5e391143b9ac4e69113050de698603c9c019d545beb21836d757944087bef"), m25e("frontend/ending_next_level_patterns.bin", RazorVramPatternLoader.METATILE_BANK_BYTES, "45a85fdb8565e64554cf6d0f9b4015f957dc747dbd1c29290f4546a83dc3e811"), m25e("frontend/ending_next_level_map.bin", 3584, "85fa9cde035cee93ec38622b8076cda557a5db4983eca79c82472b9828db7874"), m25e("frontend/ending_next_level_palette.bin", 128, "437db8c3853cbb67a29b291fc8bb581e608b4448c6074586f35eda6dcd8b0e2b"), m25e("frontend/password_patterns.bin", 11840, "988ac85e57583869a1680ddc173abf3e45e7fa4ed77ced39030538f66ec7a6e1"), m25e("frontend/password_map.bin", 3584, "0073c7629acf1c7826b40f695ebd02d2105ce404f7ee580ecb9e46eb23fc8b0e"), m25e("frontend/password_palette.bin", 128, "5d881872ca1ecf83d6c66fbe3c6b88ac06a37a8f479822fd7faf7247420dba6b"), m25e("frontend/loss_patterns.bin", 36864, "73f11c9182fb958b48df3504ad9c7d2ef7ecc1e4a2d61743ab4d937a0b760dd3"), m25e("frontend/loss_frame0.bin", DuneHackR82ScenarioRecordDecoder.MAX_RECORDS, "c1c02a4564bb1bc786dd4021dfcba9e53c3d8a59d5ec39f66fe8b8d7b5c3f40f"), m25e("frontend/loss_frame1.bin", DuneHackR82ScenarioRecordDecoder.MAX_RECORDS, "68aabb361cd21817ec69bf2fade58934fd274f91847b2548dc1fe1ec9cfa8f7f"), m25e("frontend/loss_frame2.bin", DuneHackR82ScenarioRecordDecoder.MAX_RECORDS, "d094d2359949bdd3c7fb218711b9318c3799baac684979e2ea889876ef0478cc"), m25e("frontend/loss_frame3.bin", DuneHackR82ScenarioRecordDecoder.MAX_RECORDS, "c37afac817770bcf8aa1d846d6db49bacb81bf2ba15526d175375a0e02699d73"), m25e("frontend/loss_palette.bin", 128, "c900606a9133497f65334d6892246c14004dda6ad2348b8b72ebb6217c1c8db8"), m25e("frontend/win_patterns.bin", RazorVramPatternLoader.METATILE_BANK_BYTES, "9500edbdc2f6162ceb8a4531bba840dc82295cff41e92d2208804b46544d1421"), m25e("frontend/win_frame0.bin", DuneHackR82ScenarioRecordDecoder.MAX_RECORDS, "5fc16998657f01a378821d1d8abeba8abd0e275b98949cc9c567d2d305091b26"), m25e("frontend/win_frame1.bin", DuneHackR82ScenarioRecordDecoder.MAX_RECORDS, "2891fe8c409e5a96649c6ca9ea390fd854750f19d8ac231c9d9cedebd09c40ba"), m25e("frontend/win_frame2.bin", DuneHackR82ScenarioRecordDecoder.MAX_RECORDS, "0459cdc3d1d49a6af938814faf2a33d62ba8215ef306c62fb9e1f7e7c77e7f78"), m25e("frontend/win_frame3.bin", DuneHackR82ScenarioRecordDecoder.MAX_RECORDS, "1aeeaa332535718ab8fb38a95964c0250b1c3909c2416debc866372d22f68bf2"), m25e("frontend/win_palette.bin", 128, "174bd2b44095c6a713498fd9ecfbc61cca00453e165975a965c7165d6352b7e5"), m25e("frontend/title_shared_patterns.bin", 28672, "8b0eeeaf5d08711f940967ad18969ab9f43e22182b4ae189655a72dd7bf37173"), m25e("frontend/intro_arrakis_map.bin", 8192, "1fb4c462834f2b00ee4922f9426070f772d8522fea33e0dc7a2e9ab3b06eef47"), m25e("frontend/logo_title_map.bin", 8192, "ce618bdeaa0a25644186fa2f978957a2b373669ccd7e3cab9dcbe8946f84ed72"), m25e("frontend/title_palette.bin", 128, "060e86191c7aab77b5e566b3caeddf5452ccd03a8058169f665b2a753c45b132"), m25e("frontend/options_patterns.bin", 24256, "38b7c4a99f81b7695be8c3584637684626372dcc6f2365470d601b46f472e206"), m25e("frontend/options_map.bin", 3584, "7ecb40ef1f62c3d1c871c2a601e6b2ac1490c67407ee67c8021bd47e9d186b32")));
    public static final String GROUP_ID = "frontend_generic_graphics_v1";

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
    private static Entry m25e(String path, int length, String sha256) {
        return new Entry(path, length, sha256);
    }

    private RomFrontendAssetManifest() {
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
