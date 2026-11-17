package com.ahsim.demulation;

import com.ahsim.demulation.RomAssetManifest;
import com.ahsim.demulation.RomAudioAssetManifest;
import com.ahsim.demulation.RomEndingGraphicsAssetManifest;
import com.ahsim.demulation.RomFrontendAssetManifest;
import com.ahsim.demulation.RomFrontendDirectAssetManifest;
import com.ahsim.demulation.RomGameplayDataAssetManifest;
import com.ahsim.demulation.RomMentatAssetManifest;
import com.ahsim.demulation.RomMissionResultGraphicsAssetManifest;
import com.ahsim.demulation.RomMissionTransitionAssetManifest;
import com.ahsim.demulation.RomNativeDataAssetManifest;
import com.ahsim.demulation.RomOfficialRegionAssetVariants;
import com.ahsim.demulation.RomOriginalContentAssetManifest;
import com.ahsim.demulation.RomTutorialAssetManifest;
import com.ahsim.demulation.RomWorldDataAssetManifest;
import com.ahsim.demulation.RomWorldTacticalSpriteAssetManifest;
import com.ahsim.demulation.RomWorldTerrainRadarAssetManifest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public final class RomAssetBundleManifest {
    private static final List<Entry> AUDIO_ENTRIES;
    public static final int AUDIO_FORMAT_VERSION = 7;
    private static final List<Entry> CLASSIC_DETAIL_ENTRIES;
    public static final int CLASSIC_DETAIL_FORMAT_VERSION = 17;
    private static final List<Entry> CLASSIC_EVERYWHERE_ENTRIES;
    public static final int CLASSIC_EVERYWHERE_FORMAT_VERSION = 16;
    private static final List<Entry> CLASSIC_PURCHASE_ENTRIES;
    public static final int CLASSIC_PURCHASE_FORMAT_VERSION = 15;
    private static final List<Entry> CONTENT_V10_ENTRIES;
    private static final List<Entry> CONTENT_V8_ENTRIES;
    private static final List<Entry> CONTENT_V9_ENTRIES;
    private static final List<Entry> ENTRIES;
    public static final int FORMAT_VERSION = 18;
    private static final List<Entry> GAMEPLAY_DATA_ENTRIES;
    public static final int GAMEPLAY_DATA_FORMAT_VERSION = 12;
    private static final List<Entry> GAME_DATA_FREE_ENTRIES;
    public static final int GAME_DATA_FREE_FORMAT_VERSION = 6;
    public static final String GROUP_ID = "runtime_frontend_bundle_v1";
    private static final List<Entry> LEGACY_ENTRIES;
    public static final int LEGACY_FORMAT_VERSION = 2;
    private static final List<Entry> MEDIA_ENTRIES;
    public static final int MEDIA_FORMAT_VERSION = 4;
    private static final List<Entry> MISSION_CAMPAIGN_ENTRIES;
    public static final int MISSION_CAMPAIGN_FORMAT_VERSION = 3;
    private static final List<Entry> NATIVE_DATA_ENTRIES;
    public static final int NATIVE_DATA_FORMAT_VERSION = 13;
    private static final List<Entry> OFFICIAL_REGION_ENTRIES;
    public static final int OFFICIAL_REGION_FORMAT_VERSION = 14;
    public static final int ORIGINAL_CONTENT_FORMAT_VERSION = 8;
    public static final int RESULT_ENDING_CONTENT_FORMAT_VERSION = 10;
    public static final int TUTORIAL_CONTENT_FORMAT_VERSION = 9;
    private static final List<Entry> WORLD_DATA_ENTRIES;
    public static final int WORLD_DATA_FORMAT_VERSION = 11;
    private static final List<Entry> WORLD_ENTRIES;
    public static final int WORLD_FORMAT_VERSION = 5;

    public static final class Entry {
        public final int length;
        public final String name;
        public final String relativePath;
        public final String sha256;
        public final String sourceGroup;

        Entry(String sourceGroup, String name, String relativePath, int length, String sha256) {
            this.sourceGroup = sourceGroup;
            this.name = name;
            this.relativePath = relativePath;
            this.length = length;
            this.sha256 = sha256;
        }
    }

    static {
        ArrayList<Entry> v2 = new ArrayList<>();
        for (RomAssetManifest.Entry e : RomAssetManifest.coreEntries()) {
            v2.add(new Entry("runtime_bootstrap_core_v1", e.name, e.relativePath, e.length, e.sha256));
        }
        for (RomFrontendAssetManifest.Entry e2 : RomFrontendAssetManifest.entries()) {
            v2.add(new Entry("frontend_generic_graphics_v1", e2.relativePath, e2.relativePath, e2.length, e2.sha256));
        }
        for (RomFrontendDirectAssetManifest.Entry e3 : RomFrontendDirectAssetManifest.entries()) {
            v2.add(new Entry("frontend_direct_v1", e3.relativePath, e3.relativePath, e3.length, e3.sha256));
        }
        for (RomMentatAssetManifest.Entry e4 : RomMentatAssetManifest.entries()) {
            v2.add(new Entry("frontend_mentat_v1", e4.relativePath, e4.relativePath, e4.length, e4.sha256));
        }
        LEGACY_ENTRIES = Collections.unmodifiableList(new ArrayList(v2));
        ArrayList<Entry> v3 = new ArrayList<>(v2);
        for (RomMissionTransitionAssetManifest.Entry e5 : RomMissionTransitionAssetManifest.entries()) {
            v3.add(new Entry("mission_campaign_transition_v1", e5.relativePath, e5.relativePath, e5.length, e5.sha256));
        }
        MISSION_CAMPAIGN_ENTRIES = Collections.unmodifiableList(new ArrayList(v3));
        ArrayList<Entry> v4 = new ArrayList<>(v3);
        for (RomTutorialAssetManifest.Entry e6 : RomTutorialAssetManifest.entries()) {
            v4.add(new Entry("tutorial_original_v1", e6.relativePath, e6.relativePath, e6.length, e6.sha256));
        }
        for (RomMissionResultGraphicsAssetManifest.Entry e7 : RomMissionResultGraphicsAssetManifest.entries()) {
            v4.add(new Entry("mission_result_graphics_v1", e7.relativePath, e7.relativePath, e7.length, e7.sha256));
        }
        for (RomEndingGraphicsAssetManifest.Entry e8 : RomEndingGraphicsAssetManifest.entries()) {
            v4.add(new Entry("ending_graphics_v1", e8.relativePath, e8.relativePath, e8.length, e8.sha256));
        }
        MEDIA_ENTRIES = Collections.unmodifiableList(new ArrayList(v4));
        ArrayList<Entry> v5 = new ArrayList<>(v4);
        for (RomWorldTerrainRadarAssetManifest.Entry e9 : RomWorldTerrainRadarAssetManifest.entries()) {
            v5.add(new Entry("world_terrain_radar_v1", e9.relativePath, e9.relativePath, e9.length, e9.sha256));
        }
        for (RomWorldTacticalSpriteAssetManifest.Entry e10 : RomWorldTacticalSpriteAssetManifest.legacyEntries()) {
            v5.add(new Entry("world_tactical_sprites_v1", e10.relativePath, e10.relativePath, e10.length, e10.sha256));
        }
        WORLD_ENTRIES = Collections.unmodifiableList(new ArrayList(v5));
        ArrayList<Entry> v6 = new ArrayList<>();
        Iterator<Entry> it = v5.iterator();
        while (it.hasNext()) {
            Entry e11 = it.next();
            if (!"runtime_bootstrap_core_v1".equals(e11.sourceGroup)) {
                v6.add(e11);
            }
        }
        GAME_DATA_FREE_ENTRIES = Collections.unmodifiableList(new ArrayList(v6));
        ArrayList<Entry> v7 = new ArrayList<>(v6);
        for (RomAudioAssetManifest.Entry e12 : RomAudioAssetManifest.entries()) {
            v7.add(new Entry("original_audio_ready_v1", e12.relativePath, e12.relativePath, e12.length, e12.sha256));
        }
        AUDIO_ENTRIES = Collections.unmodifiableList(new ArrayList(v7));
        ArrayList<Entry> v8 = new ArrayList<>(v7);
        for (RomOriginalContentAssetManifest.Entry e13 : RomOriginalContentAssetManifest.stagePEntries()) {
            v8.add(new Entry("original_content_ready_v1", e13.relativePath, e13.relativePath, e13.length, e13.sha256));
        }
        CONTENT_V8_ENTRIES = Collections.unmodifiableList(new ArrayList(v8));
        ArrayList<Entry> v9 = new ArrayList<>(v8);
        for (RomOriginalContentAssetManifest.Entry e14 : RomOriginalContentAssetManifest.stageQEntries()) {
            v9.add(new Entry("original_content_ready_v1", e14.relativePath, e14.relativePath, e14.length, e14.sha256));
        }
        CONTENT_V9_ENTRIES = Collections.unmodifiableList(new ArrayList(v9));
        ArrayList<Entry> v10 = new ArrayList<>(v9);
        for (RomOriginalContentAssetManifest.Entry e15 : RomOriginalContentAssetManifest.stageREntries()) {
            v10.add(new Entry("original_content_ready_v1", e15.relativePath, e15.relativePath, e15.length, e15.sha256));
        }
        CONTENT_V10_ENTRIES = Collections.unmodifiableList(new ArrayList(v10));
        ArrayList<Entry> v11 = new ArrayList<>(v10);
        for (RomWorldDataAssetManifest.Entry e16 : RomWorldDataAssetManifest.entries()) {
            v11.add(new Entry("original_world_data_v1", e16.relativePath, e16.relativePath, e16.length, e16.sha256));
            v2 = v2;
        }
        WORLD_DATA_ENTRIES = Collections.unmodifiableList(new ArrayList(v11));
        ArrayList<Entry> v12 = new ArrayList<>(v11);
        for (RomGameplayDataAssetManifest.Entry e17 : RomGameplayDataAssetManifest.entries()) {
            v12.add(new Entry("original_gameplay_data_v1", e17.relativePath, e17.relativePath, e17.length, e17.sha256));
            v3 = v3;
        }
        GAMEPLAY_DATA_ENTRIES = Collections.unmodifiableList(new ArrayList(v12));
        ArrayList<Entry> v13 = new ArrayList<>(v12);
        for (RomNativeDataAssetManifest.Entry e18 : RomNativeDataAssetManifest.entries()) {
            v13.add(new Entry("original_native_pure_data_v1", e18.relativePath, e18.relativePath, e18.length, e18.sha256));
            v12 = v12;
        }
        NATIVE_DATA_ENTRIES = Collections.unmodifiableList(new ArrayList(v13));
        OFFICIAL_REGION_ENTRIES = Collections.unmodifiableList(new ArrayList(v13));
        ArrayList<Entry> v15 = new ArrayList<>(v13);
        v15.add(new Entry("world_tactical_sprites_v1", RomWorldTacticalSpriteAssetManifest.CLASSIC_PURCHASE_ICONS, RomWorldTacticalSpriteAssetManifest.CLASSIC_PURCHASE_ICONS, 17864, "5c2bae47262a04c89d91c3a667e2935f905b3cbc333078259c580df7deb35945"));
        CLASSIC_PURCHASE_ENTRIES = Collections.unmodifiableList(new ArrayList(v15));
        ArrayList<Entry> v16 = new ArrayList<>(v13);
        v16.add(new Entry("world_tactical_sprites_v1", RomWorldTacticalSpriteAssetManifest.CLASSIC_PURCHASE_ICONS, RomWorldTacticalSpriteAssetManifest.CLASSIC_PURCHASE_ICONS, 38192, "5e65f092b32f9ca075af8d33ee676d94cecb5ce41428261b90abc554dd50543e"));
        CLASSIC_EVERYWHERE_ENTRIES = Collections.unmodifiableList(new ArrayList(v16));
        ArrayList<Entry> v17 = new ArrayList<>(v13);
        RomWorldTacticalSpriteAssetManifest.Entry classic = RomWorldTacticalSpriteAssetManifest.find(RomWorldTacticalSpriteAssetManifest.CLASSIC_PURCHASE_ICONS);
        if (classic == null) {
            throw new IllegalStateException("Classic icon manifest entry missing");
        }
        v17.add(new Entry("world_tactical_sprites_v1", classic.relativePath, classic.relativePath, 163504, "f414fa369a7c4453e4056117c40286f117b110cf4d01d3251068c3f0aa39ff88"));
        CLASSIC_DETAIL_ENTRIES = Collections.unmodifiableList(v17);
        ArrayList<Entry> v18 = new ArrayList<>(v13);
        v18.add(new Entry("world_tactical_sprites_v1", classic.relativePath, classic.relativePath, classic.length, classic.sha256));
        ENTRIES = Collections.unmodifiableList(v18);
    }

    private RomAssetBundleManifest() {
    }

    public static List<Entry> entries() {
        return ENTRIES;
    }

    public static List<Entry> nativeDataEntries() {
        return NATIVE_DATA_ENTRIES;
    }

    public static List<Entry> officialRegionEntries() {
        return OFFICIAL_REGION_ENTRIES;
    }

    public static List<Entry> classicPurchaseEntries() {
        return CLASSIC_PURCHASE_ENTRIES;
    }

    public static List<Entry> classicEverywhereEntries() {
        return CLASSIC_EVERYWHERE_ENTRIES;
    }

    public static List<Entry> classicDetailEntries() {
        return CLASSIC_DETAIL_ENTRIES;
    }

    public static List<Entry> gameplayDataEntries() {
        return GAMEPLAY_DATA_ENTRIES;
    }

    public static List<Entry> worldDataEntries() {
        return WORLD_DATA_ENTRIES;
    }

    public static List<Entry> contentV10Entries() {
        return CONTENT_V10_ENTRIES;
    }

    public static List<Entry> contentV9Entries() {
        return CONTENT_V9_ENTRIES;
    }

    public static List<Entry> contentV8Entries() {
        return CONTENT_V8_ENTRIES;
    }

    public static List<Entry> audioEntries() {
        return AUDIO_ENTRIES;
    }

    public static List<Entry> gameDataFreeEntries() {
        return GAME_DATA_FREE_ENTRIES;
    }

    public static List<Entry> mediaEntries() {
        return MEDIA_ENTRIES;
    }

    public static List<Entry> worldEntries() {
        return WORLD_ENTRIES;
    }

    public static List<Entry> missionCampaignEntries() {
        return MISSION_CAMPAIGN_ENTRIES;
    }

    public static List<Entry> legacyEntries() {
        return LEGACY_ENTRIES;
    }

    public static long payloadBytes() {
        return payloadBytes(ENTRIES);
    }

    public static List<Entry> entriesForProfile(String profileId) {
        return entriesForProfile(ENTRIES, profileId);
    }

    public static List<Entry> officialRegionEntriesForProfile(String profileId) {
        return entriesForProfile(OFFICIAL_REGION_ENTRIES, profileId);
    }

    public static List<Entry> classicPurchaseEntriesForProfile(String profileId) {
        return entriesForProfile(CLASSIC_PURCHASE_ENTRIES, profileId);
    }

    public static List<Entry> classicEverywhereEntriesForProfile(String profileId) {
        return entriesForProfile(CLASSIC_EVERYWHERE_ENTRIES, profileId);
    }

    public static List<Entry> classicDetailEntriesForProfile(String profileId) {
        return entriesForProfile(CLASSIC_DETAIL_ENTRIES, profileId);
    }

    private static List<Entry> entriesForProfile(List<Entry> base, String profileId) {
        if (!"dune_arrakis_europe_gm_t70246_00".equals(profileId) && !"translation_ru_shedevr_lipetsk_usa".equals(profileId)) {
            return base;
        }
        ArrayList<Entry> out = new ArrayList<>(base.size());
        for (Entry e : base) {
            RomOfficialRegionAssetVariants.Expected v = RomOfficialRegionAssetVariants.expected(profileId, e.relativePath, e.length, e.sha256);
            out.add(new Entry(e.sourceGroup, e.name, e.relativePath, v.length, v.sha256));
        }
        return Collections.unmodifiableList(out);
    }

    public static long payloadBytesForProfile(String profileId) {
        return payloadBytes(entriesForProfile(profileId));
    }

    public static long mediaPayloadBytes() {
        return payloadBytes(MEDIA_ENTRIES);
    }

    public static long missionCampaignPayloadBytes() {
        return payloadBytes(MISSION_CAMPAIGN_ENTRIES);
    }

    public static long legacyPayloadBytes() {
        return payloadBytes(LEGACY_ENTRIES);
    }

    private static long payloadBytes(List<Entry> entries) {
        long total = 0;
        for (Entry e : entries) {
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
