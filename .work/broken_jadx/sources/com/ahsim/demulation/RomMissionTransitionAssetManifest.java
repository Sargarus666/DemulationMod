package com.ahsim.demulation;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class RomMissionTransitionAssetManifest {
    private static final List<Entry> ENTRIES = Collections.unmodifiableList(Arrays.asList(m29e("frontend/mission_sequence/banner_palette.bin", 128, "da2d7d6a2d555773c7641e558854d37081fb7f707c4ebe643ec8e6130cd7d92e"), m29e("frontend/mission_sequence/loss_banner_patterns.bin", 672, "cf0217963868f8931dd51bac01dc8e09aeb3d16087580c10970c8839627e1d16"), m29e("frontend/mission_sequence/loss_banner_layout.bin", 26, "7737b8aee754b93c2d542277ab3254a8ac3c6b594e1572f4591755548fc38e4c"), m29e("frontend/mission_sequence/win_banner_patterns.bin", 864, "3674bf9849a973ebb3e81f2cf5ce7c41852c3ce4282dc4c82f15e81fcc1b4d82"), m29e("frontend/mission_sequence/win_banner_layout.bin", 38, "2193c3ce1198d00e635cda407c907e21ff6c5f7096c53c842aac8bddfa2a5734"), m29e("frontend/campaign_transition/static_geometry.bin", 412, "78446dcde8337e2d6b8b04d1f24a406be62e57ba767db766c32bf5158e8cd7a0"), m29e("frontend/campaign_transition/house_geometry.bin", 604, "f96c04b0ff70125f0fbdcf7012c577bf5d7ca6bc3dcbab2ef66ccc01789b7862"), m29e("frontend/campaign_transition/static_patterns.bin", 9152, "94dc5c17f43926b73107713370463e5cc87718a3d535f2e655eff68da3d9fe6d"), m29e("frontend/campaign_transition/house_patterns.bin", 18496, "fddbeb2fe179b286f1508401c29ff33d314b094e5c6bc5f2f23eea7a9150f918"), m29e("frontend/campaign_transition/static_modes.bin", 20, "de47c9b27eb8d300dbb5f2c353e632c393262cf06340c4fa7f1b40c4cbd36f90"), m29e("frontend/campaign_transition/house_modes.bin", 540, "52bb9493d65e751316884b7b6664587f4aae8eeab590f7d23cc73552a993762c"), m29e("frontend/campaign_transition/mission_records.bin", 216, "a4e1cc9824750e6edf1b39147c218d7a371aa30a1d014c62e7bd0d8fc79ae154"), m29e("frontend/campaign_transition/byte_remap.bin", 256, "51008f51da6a640f139529136df1d045986fdd7dfd1f27baabbaa25583fc3234"), m29e("frontend/campaign_transition/zoom_records.bin", 1920, "490e35bf88a99af7ddb63b3f85248d8d94234ac323a6fa3908c5676c4c3157bd"), m29e("frontend/campaign_transition/focus_palette_offsets.bin", 8, "014c6371d8f22d16dfab517ab6639ce4564514bba3524bbc2be62f7774ff6f8a")));
    public static final String GROUP_ID = "mission_campaign_transition_v1";

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
    private static Entry m29e(String path, int length, String sha256) {
        return new Entry(path, length, sha256);
    }

    private RomMissionTransitionAssetManifest() {
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
