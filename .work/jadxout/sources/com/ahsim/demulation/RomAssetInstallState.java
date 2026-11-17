package com.ahsim.demulation;

import android.content.Context;
import com.ahsim.demulation.RomAssetAtomicInstaller;
import com.ahsim.demulation.RomRussianLocalizationPackStore;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class RomAssetInstallState {
    public static final String AUDIO_STAGING_DIR = "original_audio_ready_v1";
    public static final String BUNDLE_STAGING_DIR = "runtime_frontend_bundle_v1";
    public static final String CORE_STAGING_DIR = "runtime_bootstrap_core_v1";
    public static final String ENDING_GRAPHICS_STAGING_DIR = "ending_graphics_v1";
    public static final String FRONTEND_DIRECT_STAGING_DIR = "frontend_direct_v1";
    public static final String FRONTEND_STAGING_DIR = "frontend_generic_graphics_v1";
    public static final String GAMEPLAY_DATA_STAGING_DIR = "original_gameplay_data_v1";
    public static final String MANIFEST_FILE = "manifest.properties";
    public static final String MENTAT_STAGING_DIR = "frontend_mentat_v1";
    public static final String MISSION_RESULT_GRAPHICS_STAGING_DIR = "mission_result_graphics_v1";
    public static final String MISSION_TRANSITION_STAGING_DIR = "mission_campaign_transition_v1";
    public static final String NATIVE_DATA_STAGING_DIR = "original_native_pure_data_v1";
    public static final String ORIGINAL_CONTENT_STAGING_DIR = "original_content_ready_v1";
    public static final String READY_MARKER = "READY";
    public static final String ROOT_DIR = "rom_assets";
    public static final String STAGING_DIR = "_staging";
    public static final String TUTORIAL_STAGING_DIR = "tutorial_original_v1";
    public static final String WORLD_DATA_STAGING_DIR = "original_world_data_v1";
    public static final String WORLD_TACTICAL_SPRITE_STAGING_DIR = "world_tactical_sprites_v1";
    public static final String WORLD_TERRAIN_RADAR_STAGING_DIR = "world_terrain_radar_v1";

    private RomAssetInstallState() {
    }

    public static final class RuntimeBundle {
        public final RomRuntimeAudioAssets audioAssets;
        public final int formatVersion;
        public final RomRuntimeFrontendAssets frontendAssets;
        public final RomRuntimeGameplayDataAssets gameplayDataAssets;
        public final File installRoot;
        public final RomRuntimeNativeDataAssets nativeDataAssets;
        public final RomRuntimeOriginalContentAssets originalContentAssets;
        public final RomRuntimeRussianLocalizationAssets russianLocalizationAssets;
        public final RomRuntimeRussianVoiceAssets russianVoiceAssets;
        public final String sourceProfile;
        public final String sourceSha256;
        public final RomRuntimeWorldAssets worldAssets;
        public final RomRuntimeWorldDataAssets worldDataAssets;

        private RuntimeBundle(Context context, RomAssetAtomicInstaller.Validation state) throws IOException {
            RomRuntimeRussianLocalizationAssets romRuntimeRussianLocalizationAssets;
            this.installRoot = state.installRoot.getCanonicalFile();
            this.sourceSha256 = state.sourceSha256 == null ? "" : state.sourceSha256;
            this.sourceProfile = state.sourceProfile != null ? state.sourceProfile : "";
            this.formatVersion = state.formatVersion;
            boolean russianBase = "translation_ru_shedevr_lipetsk_usa".equals(this.sourceProfile) && "4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a".equalsIgnoreCase(this.sourceSha256);
            RomRussianLocalizationPackStore.Snapshot localizationSnapshot = russianBase ? RomRussianLocalizationPackStore.loadActive(context) : null;
            boolean localizationBound = russianBase && localizationSnapshot != null && this.sourceSha256.equalsIgnoreCase(localizationSnapshot.sourceSha256) && this.sourceProfile.equals(localizationSnapshot.profileId);
            if (!localizationBound) {
                romRuntimeRussianLocalizationAssets = null;
            } else {
                romRuntimeRussianLocalizationAssets = new RomRuntimeRussianLocalizationAssets(localizationSnapshot);
            }
            this.russianLocalizationAssets = romRuntimeRussianLocalizationAssets;
            if (russianBase && this.russianLocalizationAssets == null) {
                throw new IOException("Russian BASE localization companion is unavailable");
            }
            this.frontendAssets = new RomRuntimeFrontendAssets(this.installRoot, this.russianLocalizationAssets, this.sourceProfile);
            this.worldAssets = new RomRuntimeWorldAssets(this.installRoot, RomGraphicsMediaOverlayStore.loadActive(context), this.sourceProfile);
            this.audioAssets = new RomRuntimeAudioAssets(this.installRoot, this.sourceProfile);
            this.russianVoiceAssets = null;
            this.originalContentAssets = new RomRuntimeOriginalContentAssets(this.installRoot, this.russianLocalizationAssets, this.sourceProfile);
            this.worldDataAssets = new RomRuntimeWorldDataAssets(this.installRoot);
            this.gameplayDataAssets = new RomRuntimeGameplayDataAssets(this.installRoot, this.sourceProfile);
            this.nativeDataAssets = new RomRuntimeNativeDataAssets(this.installRoot);
        }
    }

    private static boolean currentProfileRuntimeContract(RomAssetAtomicInstaller.Validation state) {
        if (state == null || !state.valid || state.installRoot == null) {
            return false;
        }
        if (!"dune_arrakis_germany_gm_t70246_00".equals(state.sourceProfile)) {
            return true;
        }
        try {
            GenesisAudioSource source = new RomRuntimeAudioAssets(state.installRoot, state.sourceProfile).loadCompactAudioSource();
            if (source.residentBytes() == 218882 && source.segmentCount() == 11) {
                RomRuntimeFrontendAssets frontend = new RomRuntimeFrontendAssets(state.installRoot, state.sourceProfile);
                byte[] briefing = frontend.read("frontend/mentat/selector_briefing.bin");
                byte[] join = frontend.read("frontend/mentat/selector_join.bin");
                if (Arrays.equals(briefing, join)) {
                    return false;
                }
                RomRuntimeOriginalContentAssets original = new RomRuntimeOriginalContentAssets(state.installRoot, null, state.sourceProfile);
                return original.tutorialExactContent().characterMapSize() == 150;
            }
            return false;
        } catch (IOException | RuntimeException e) {
            return false;
        }
    }

    private static RomAssetAtomicInstaller.Validation requireCurrentBundle(Context context) throws IOException {
        RomAssetAtomicInstaller.Validation state = RomAssetAtomicInstaller.validateReady(root(context));
        boolean profileCurrent = currentProfileRuntimeContract(state);
        if (!state.valid || state.installRoot == null || !"runtime_frontend_bundle_v1".equals(state.groupId) || state.formatVersion != 18 || !profileCurrent) {
            String reason = state.reason;
            if (state.valid && !profileCurrent) {
                reason = "READY BASE profile runtime contract is obsolete";
            }
            throw new IOException(reason == null ? "No current READY bundle state" : reason);
        }
        return state;
    }

    public static RuntimeBundle activeRuntimeBundle(Context context) throws IOException {
        return new RuntimeBundle(context, requireCurrentBundle(context));
    }

    public static File root(Context context) {
        return new File(context.getFilesDir(), ROOT_DIR);
    }

    public static File readyMarker(Context context) {
        return new File(root(context), "READY");
    }

    public static File stagingRoot(Context context) {
        return new File(root(context), "_staging");
    }

    public static File coreStaging(Context context) {
        return new File(stagingRoot(context), "runtime_bootstrap_core_v1");
    }

    public static File frontendStaging(Context context) {
        return new File(stagingRoot(context), "frontend_generic_graphics_v1");
    }

    public static File frontendDirectStaging(Context context) {
        return new File(stagingRoot(context), "frontend_direct_v1");
    }

    public static File mentatStaging(Context context) {
        return new File(stagingRoot(context), "frontend_mentat_v1");
    }

    public static File missionTransitionStaging(Context context) {
        return new File(stagingRoot(context), "mission_campaign_transition_v1");
    }

    public static File tutorialStaging(Context context) {
        return new File(stagingRoot(context), "tutorial_original_v1");
    }

    public static File missionResultGraphicsStaging(Context context) {
        return new File(stagingRoot(context), "mission_result_graphics_v1");
    }

    public static File endingGraphicsStaging(Context context) {
        return new File(stagingRoot(context), "ending_graphics_v1");
    }

    public static File worldTerrainRadarStaging(Context context) {
        return new File(stagingRoot(context), "world_terrain_radar_v1");
    }

    public static File worldTacticalSpriteStaging(Context context) {
        return new File(stagingRoot(context), "world_tactical_sprites_v1");
    }

    public static File audioStaging(Context context) {
        return new File(stagingRoot(context), "original_audio_ready_v1");
    }

    public static File originalContentStaging(Context context) {
        return new File(stagingRoot(context), "original_content_ready_v1");
    }

    public static File worldDataStaging(Context context) {
        return new File(stagingRoot(context), "original_world_data_v1");
    }

    public static File gameplayDataStaging(Context context) {
        return new File(stagingRoot(context), "original_gameplay_data_v1");
    }

    public static File nativeDataStaging(Context context) {
        return new File(stagingRoot(context), "original_native_pure_data_v1");
    }

    public static File bundleStaging(Context context) {
        return new File(stagingRoot(context), "runtime_frontend_bundle_v1");
    }

    public static boolean recoverAndIsReady(Context context) {
        try {
            return RomAssetAtomicInstaller.recover(root(context)).valid;
        } catch (IOException | RuntimeException e) {
            return false;
        }
    }

    public static boolean isReady(Context context) {
        try {
            return RomAssetAtomicInstaller.validateReady(root(context)).valid;
        } catch (IOException | RuntimeException e) {
            return false;
        }
    }

    public static boolean recoverAndIsBundleReady(Context context) {
        try {
            RomAssetAtomicInstaller.Validation state = RomAssetAtomicInstaller.recover(root(context));
            if (state.valid && "runtime_frontend_bundle_v1".equals(state.groupId) && state.formatVersion == 18) {
                return currentProfileRuntimeContract(state);
            }
            return false;
        } catch (IOException | RuntimeException e) {
            return false;
        }
    }

    public static boolean isBundleReady(Context context) {
        try {
            RomAssetAtomicInstaller.Validation state = RomAssetAtomicInstaller.validateReady(root(context));
            if (state.valid && "runtime_frontend_bundle_v1".equals(state.groupId) && state.formatVersion == 18) {
                return currentProfileRuntimeContract(state);
            }
            return false;
        } catch (IOException | RuntimeException e) {
            return false;
        }
    }

    @Deprecated
    public static RomRuntimeCoreAssets activeCoreAssets(Context context) throws IOException {
        RomAssetAtomicInstaller.Validation state = RomAssetAtomicInstaller.validateReady(root(context));
        if (!state.valid || state.installRoot == null) {
            throw new IOException(state.reason == null ? "No valid READY state" : state.reason);
        }
        if (state.formatVersion >= 6) {
            throw new IOException("Current READY has no runtime core asset files");
        }
        return new RomRuntimeCoreAssets(state.installRoot);
    }

    public static RomRuntimeFrontendAssets activeFrontendAssets(Context context) throws IOException {
        RomAssetAtomicInstaller.Validation state = requireCurrentBundle(context);
        return new RomRuntimeFrontendAssets(state.installRoot, state.sourceProfile);
    }

    public static String activeBundleSourceSha256(Context context) throws IOException {
        RomAssetAtomicInstaller.Validation state = requireCurrentBundle(context);
        if (state.sourceSha256 == null || state.sourceSha256.trim().isEmpty()) {
            throw new IOException("READY source fingerprint is missing");
        }
        return state.sourceSha256;
    }

    public static RomRuntimeWorldAssets activeWorldAssets(Context context) throws IOException {
        RomAssetAtomicInstaller.Validation state = requireCurrentBundle(context);
        return new RomRuntimeWorldAssets(state.installRoot, RomGraphicsMediaOverlayStore.loadActive(context), state.sourceProfile);
    }

    public static RomRuntimeAudioAssets activeAudioAssets(Context context) throws IOException {
        RomAssetAtomicInstaller.Validation state = requireCurrentBundle(context);
        return new RomRuntimeAudioAssets(state.installRoot, state.sourceProfile);
    }

    public static RomRuntimeOriginalContentAssets activeOriginalContentAssets(Context context) throws IOException {
        RomAssetAtomicInstaller.Validation state = requireCurrentBundle(context);
        return new RomRuntimeOriginalContentAssets(state.installRoot, null, state.sourceProfile);
    }

    public static RomRuntimeWorldDataAssets activeWorldDataAssets(Context context) throws IOException {
        RomAssetAtomicInstaller.Validation state = requireCurrentBundle(context);
        return new RomRuntimeWorldDataAssets(state.installRoot);
    }

    public static RomRuntimeGameplayDataAssets activeGameplayDataAssets(Context context) throws IOException {
        RomAssetAtomicInstaller.Validation state = requireCurrentBundle(context);
        return new RomRuntimeGameplayDataAssets(state.installRoot);
    }

    public static RomRuntimeNativeDataAssets activeNativeDataAssets(Context context) throws IOException {
        RomAssetAtomicInstaller.Validation state = requireCurrentBundle(context);
        return new RomRuntimeNativeDataAssets(state.installRoot);
    }

    public static File activeInstallRoot(Context context) {
        try {
            RomAssetAtomicInstaller.Validation state = RomAssetAtomicInstaller.validateReady(root(context));
            if (state.valid) {
                return state.installRoot;
            }
            return null;
        } catch (IOException | RuntimeException e) {
            return null;
        }
    }
}
