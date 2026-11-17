package com.ahsim.demulation;

import com.ahsim.demulation.RomAssetAtomicInstaller;
import com.ahsim.demulation.RomAssetBundleManifest;
import com.ahsim.demulation.RomCompatibilityProfiles;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Properties;

/* loaded from: classes2.dex */
public final class RomAssetBundleAtomicInstaller {
    public static final String BUNDLE_STAGING_DIR = "runtime_frontend_bundle_v1";
    private static final String GENERATION_PREFIX_V10 = "runtime_frontend_bundle_v1-v10-";
    private static final String GENERATION_PREFIX_V11 = "runtime_frontend_bundle_v1-v11-";
    private static final String GENERATION_PREFIX_V12 = "runtime_frontend_bundle_v1-v12-";
    private static final String GENERATION_PREFIX_V13 = "runtime_frontend_bundle_v1-v13-";
    private static final String GENERATION_PREFIX_V14 = "runtime_frontend_bundle_v1-v14-";
    private static final String GENERATION_PREFIX_V15 = "runtime_frontend_bundle_v1-v15-";
    private static final String GENERATION_PREFIX_V16 = "runtime_frontend_bundle_v1-v16-";
    private static final String GENERATION_PREFIX_V17 = "runtime_frontend_bundle_v1-v17-";
    private static final String GENERATION_PREFIX_V18 = "runtime_frontend_bundle_v1-v18-";
    private static final String GENERATION_PREFIX_V2 = "runtime_frontend_bundle_v1-";
    private static final String GENERATION_PREFIX_V3 = "runtime_frontend_bundle_v1-v3-";
    private static final String GENERATION_PREFIX_V4 = "runtime_frontend_bundle_v1-v4-";
    private static final String GENERATION_PREFIX_V5 = "runtime_frontend_bundle_v1-v5-";
    private static final String GENERATION_PREFIX_V6 = "runtime_frontend_bundle_v1-v6-";
    private static final String GENERATION_PREFIX_V7 = "runtime_frontend_bundle_v1-v7-";
    private static final String GENERATION_PREFIX_V8 = "runtime_frontend_bundle_v1-v8-";
    private static final String GENERATION_PREFIX_V9 = "runtime_frontend_bundle_v1-v9-";

    public static final class InstallResult {
        public final String generation;
        public final File installRoot;
        public final File manifestFile;
        public final String manifestSha256;
        public final long payloadBytes;
        public final int verifiedEntries;

        private InstallResult(String generation, File installRoot, File manifestFile, int verifiedEntries, long payloadBytes, String manifestSha256) {
            this.generation = generation;
            this.installRoot = installRoot;
            this.manifestFile = manifestFile;
            this.verifiedEntries = verifiedEntries;
            this.payloadBytes = payloadBytes;
            this.manifestSha256 = manifestSha256;
        }
    }

    private RomAssetBundleAtomicInstaller() {
    }

    public static InstallResult installRegionAwareV17(File root, File sourceCoreRoot, File frontendGenericRoot, File frontendDirectRoot, File mentatRoot, File missionTransitionRoot, File tutorialRoot, File missionResultGraphicsRoot, File endingGraphicsRoot, File worldTerrainRadarRoot, File worldTacticalSpriteRoot, File audioRoot, File contentRoot, File worldDataRoot, File gameplayDataRoot, File nativeDataRoot, String sourceSha256, String sourceProfile) throws IOException {
        return installVersion(root, 18, sourceCoreRoot, frontendGenericRoot, frontendDirectRoot, mentatRoot, missionTransitionRoot, tutorialRoot, missionResultGraphicsRoot, endingGraphicsRoot, worldTerrainRadarRoot, worldTacticalSpriteRoot, audioRoot, contentRoot, worldDataRoot, gameplayDataRoot, nativeDataRoot, sourceSha256, sourceProfile);
    }

    public static InstallResult installRegionAwareV16(File root, File sourceCoreRoot, File frontendGenericRoot, File frontendDirectRoot, File mentatRoot, File missionTransitionRoot, File tutorialRoot, File missionResultGraphicsRoot, File endingGraphicsRoot, File worldTerrainRadarRoot, File worldTacticalSpriteRoot, File audioRoot, File contentRoot, File worldDataRoot, File gameplayDataRoot, File nativeDataRoot, String sourceSha256, String sourceProfile) throws IOException {
        return installVersion(root, 16, sourceCoreRoot, frontendGenericRoot, frontendDirectRoot, mentatRoot, missionTransitionRoot, tutorialRoot, missionResultGraphicsRoot, endingGraphicsRoot, worldTerrainRadarRoot, worldTacticalSpriteRoot, audioRoot, contentRoot, worldDataRoot, gameplayDataRoot, nativeDataRoot, sourceSha256, sourceProfile);
    }

    public static InstallResult installRegionAwareV15(File root, File sourceCoreRoot, File frontendGenericRoot, File frontendDirectRoot, File mentatRoot, File missionTransitionRoot, File tutorialRoot, File missionResultGraphicsRoot, File endingGraphicsRoot, File worldTerrainRadarRoot, File worldTacticalSpriteRoot, File audioRoot, File contentRoot, File worldDataRoot, File gameplayDataRoot, File nativeDataRoot, String sourceSha256, String sourceProfile) throws IOException {
        return installVersion(root, 15, sourceCoreRoot, frontendGenericRoot, frontendDirectRoot, mentatRoot, missionTransitionRoot, tutorialRoot, missionResultGraphicsRoot, endingGraphicsRoot, worldTerrainRadarRoot, worldTacticalSpriteRoot, audioRoot, contentRoot, worldDataRoot, gameplayDataRoot, nativeDataRoot, sourceSha256, sourceProfile);
    }

    public static InstallResult installRegionAwareV14(File root, File sourceCoreRoot, File frontendGenericRoot, File frontendDirectRoot, File mentatRoot, File missionTransitionRoot, File tutorialRoot, File missionResultGraphicsRoot, File endingGraphicsRoot, File worldTerrainRadarRoot, File worldTacticalSpriteRoot, File audioRoot, File contentRoot, File worldDataRoot, File gameplayDataRoot, File nativeDataRoot, String sourceSha256, String sourceProfile) throws IOException {
        return installVersion(root, 14, sourceCoreRoot, frontendGenericRoot, frontendDirectRoot, mentatRoot, missionTransitionRoot, tutorialRoot, missionResultGraphicsRoot, endingGraphicsRoot, worldTerrainRadarRoot, worldTacticalSpriteRoot, audioRoot, contentRoot, worldDataRoot, gameplayDataRoot, nativeDataRoot, sourceSha256, sourceProfile);
    }

    public static InstallResult installNativeDataV13(File root, File sourceCoreRoot, File frontendGenericRoot, File frontendDirectRoot, File mentatRoot, File missionTransitionRoot, File tutorialRoot, File missionResultGraphicsRoot, File endingGraphicsRoot, File worldTerrainRadarRoot, File worldTacticalSpriteRoot, File audioRoot, File contentRoot, File worldDataRoot, File gameplayDataRoot, File nativeDataRoot, String sourceSha256, String sourceProfile) throws IOException {
        return installVersion(root, 13, sourceCoreRoot, frontendGenericRoot, frontendDirectRoot, mentatRoot, missionTransitionRoot, tutorialRoot, missionResultGraphicsRoot, endingGraphicsRoot, worldTerrainRadarRoot, worldTacticalSpriteRoot, audioRoot, contentRoot, worldDataRoot, gameplayDataRoot, nativeDataRoot, sourceSha256, sourceProfile);
    }

    public static InstallResult installGameplayDataV12(File root, File sourceCoreRoot, File frontendGenericRoot, File frontendDirectRoot, File mentatRoot, File missionTransitionRoot, File tutorialRoot, File missionResultGraphicsRoot, File endingGraphicsRoot, File worldTerrainRadarRoot, File worldTacticalSpriteRoot, File audioRoot, File contentRoot, File worldDataRoot, File gameplayDataRoot, String sourceSha256, String sourceProfile) throws IOException {
        return installVersion(root, 12, sourceCoreRoot, frontendGenericRoot, frontendDirectRoot, mentatRoot, missionTransitionRoot, tutorialRoot, missionResultGraphicsRoot, endingGraphicsRoot, worldTerrainRadarRoot, worldTacticalSpriteRoot, audioRoot, contentRoot, worldDataRoot, gameplayDataRoot, sourceSha256, sourceProfile);
    }

    public static InstallResult installWorldDataV11(File root, File sourceCoreRoot, File frontendGenericRoot, File frontendDirectRoot, File mentatRoot, File missionTransitionRoot, File tutorialRoot, File missionResultGraphicsRoot, File endingGraphicsRoot, File worldTerrainRadarRoot, File worldTacticalSpriteRoot, File audioRoot, File contentRoot, File worldDataRoot, String sourceSha256, String sourceProfile) throws IOException {
        return installVersion(root, 11, sourceCoreRoot, frontendGenericRoot, frontendDirectRoot, mentatRoot, missionTransitionRoot, tutorialRoot, missionResultGraphicsRoot, endingGraphicsRoot, worldTerrainRadarRoot, worldTacticalSpriteRoot, audioRoot, contentRoot, worldDataRoot, null, sourceSha256, sourceProfile);
    }

    public static InstallResult installContentV10(File root, File sourceCoreRoot, File frontendGenericRoot, File frontendDirectRoot, File mentatRoot, File missionTransitionRoot, File tutorialRoot, File missionResultGraphicsRoot, File endingGraphicsRoot, File worldTerrainRadarRoot, File worldTacticalSpriteRoot, File audioRoot, File contentRoot, String sourceSha256, String sourceProfile) throws IOException {
        return installVersion(root, 10, sourceCoreRoot, frontendGenericRoot, frontendDirectRoot, mentatRoot, missionTransitionRoot, tutorialRoot, missionResultGraphicsRoot, endingGraphicsRoot, worldTerrainRadarRoot, worldTacticalSpriteRoot, audioRoot, contentRoot, null, null, sourceSha256, sourceProfile);
    }

    public static InstallResult installContentV9(File root, File sourceCoreRoot, File frontendGenericRoot, File frontendDirectRoot, File mentatRoot, File missionTransitionRoot, File tutorialRoot, File missionResultGraphicsRoot, File endingGraphicsRoot, File worldTerrainRadarRoot, File worldTacticalSpriteRoot, File audioRoot, File contentRoot, String sourceSha256, String sourceProfile) throws IOException {
        return installVersion(root, 9, sourceCoreRoot, frontendGenericRoot, frontendDirectRoot, mentatRoot, missionTransitionRoot, tutorialRoot, missionResultGraphicsRoot, endingGraphicsRoot, worldTerrainRadarRoot, worldTacticalSpriteRoot, audioRoot, contentRoot, null, null, sourceSha256, sourceProfile);
    }

    public static InstallResult installContentV8(File root, File sourceCoreRoot, File frontendGenericRoot, File frontendDirectRoot, File mentatRoot, File missionTransitionRoot, File tutorialRoot, File missionResultGraphicsRoot, File endingGraphicsRoot, File worldTerrainRadarRoot, File worldTacticalSpriteRoot, File audioRoot, File contentRoot, String sourceSha256, String sourceProfile) throws IOException {
        return installVersion(root, 8, sourceCoreRoot, frontendGenericRoot, frontendDirectRoot, mentatRoot, missionTransitionRoot, tutorialRoot, missionResultGraphicsRoot, endingGraphicsRoot, worldTerrainRadarRoot, worldTacticalSpriteRoot, audioRoot, contentRoot, null, null, sourceSha256, sourceProfile);
    }

    public static InstallResult installAudioV7(File root, File sourceCoreRoot, File frontendGenericRoot, File frontendDirectRoot, File mentatRoot, File missionTransitionRoot, File tutorialRoot, File missionResultGraphicsRoot, File endingGraphicsRoot, File worldTerrainRadarRoot, File worldTacticalSpriteRoot, File audioRoot, String sourceSha256, String sourceProfile) throws IOException {
        return installVersion(root, 7, sourceCoreRoot, frontendGenericRoot, frontendDirectRoot, mentatRoot, missionTransitionRoot, tutorialRoot, missionResultGraphicsRoot, endingGraphicsRoot, worldTerrainRadarRoot, worldTacticalSpriteRoot, audioRoot, null, null, null, sourceSha256, sourceProfile);
    }

    public static InstallResult install(File root, File sourceCoreRoot, File frontendGenericRoot, File frontendDirectRoot, File mentatRoot, File missionTransitionRoot, File tutorialRoot, File missionResultGraphicsRoot, File endingGraphicsRoot, File worldTerrainRadarRoot, File worldTacticalSpriteRoot, String sourceSha256, String sourceProfile) throws IOException {
        return installVersion(root, 6, sourceCoreRoot, frontendGenericRoot, frontendDirectRoot, mentatRoot, missionTransitionRoot, tutorialRoot, missionResultGraphicsRoot, endingGraphicsRoot, worldTerrainRadarRoot, worldTacticalSpriteRoot, null, null, null, null, sourceSha256, sourceProfile);
    }

    public static InstallResult installWorldV5(File root, File sourceCoreRoot, File frontendGenericRoot, File frontendDirectRoot, File mentatRoot, File missionTransitionRoot, File tutorialRoot, File missionResultGraphicsRoot, File endingGraphicsRoot, File worldTerrainRadarRoot, File worldTacticalSpriteRoot, String sourceSha256, String sourceProfile) throws IOException {
        return installVersion(root, 5, sourceCoreRoot, frontendGenericRoot, frontendDirectRoot, mentatRoot, missionTransitionRoot, tutorialRoot, missionResultGraphicsRoot, endingGraphicsRoot, worldTerrainRadarRoot, worldTacticalSpriteRoot, null, null, null, null, sourceSha256, sourceProfile);
    }

    public static InstallResult install(File root, File sourceCoreRoot, File frontendGenericRoot, File frontendDirectRoot, File mentatRoot, File missionTransitionRoot, File tutorialRoot, File missionResultGraphicsRoot, File endingGraphicsRoot, String sourceSha256, String sourceProfile) throws IOException {
        return installVersion(root, 4, sourceCoreRoot, frontendGenericRoot, frontendDirectRoot, mentatRoot, missionTransitionRoot, tutorialRoot, missionResultGraphicsRoot, endingGraphicsRoot, null, null, null, null, null, null, sourceSha256, sourceProfile);
    }

    public static InstallResult install(File root, File sourceCoreRoot, File frontendGenericRoot, File frontendDirectRoot, File mentatRoot, File missionTransitionRoot, String sourceSha256, String sourceProfile) throws IOException {
        return installVersion(root, 3, sourceCoreRoot, frontendGenericRoot, frontendDirectRoot, mentatRoot, missionTransitionRoot, null, null, null, null, null, null, null, null, null, sourceSha256, sourceProfile);
    }

    public static InstallResult installLegacyV2(File root, File sourceCoreRoot, File frontendGenericRoot, File frontendDirectRoot, File mentatRoot, String sourceSha256, String sourceProfile) throws IOException {
        return installVersion(root, 2, sourceCoreRoot, frontendGenericRoot, frontendDirectRoot, mentatRoot, null, null, null, null, null, null, null, null, null, null, sourceSha256, sourceProfile);
    }

    private static InstallResult installVersion(File root, int version, File core, File generic, File direct, File mentat, File mission, File tutorial, File missionResult, File ending, File worldTerrain, File worldTactical, File audio, File content, File worldData, File gameplayData, String sourceSha256, String sourceProfile) throws IOException {
        return installVersion(root, version, core, generic, direct, mentat, mission, tutorial, missionResult, ending, worldTerrain, worldTactical, audio, content, worldData, gameplayData, null, sourceSha256, sourceProfile);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:10|(9:(14:(2:159|(3:161|22|(32:28|29|30|31|32|33|34|35|36|37|38|39|40|41|42|43|44|45|46|47|48|(3:117|118|(1:120)(2:121|122))|50|51|52|53|54|55|(5:57|58|59|(1:61)(1:100)|62)(3:107|108|109)|63|64|(3:66|67|(2:75|76)(2:73|74))(2:77|78))(2:26|27))(1:162))(1:20)|47|48|(0)|50|51|52|53|54|55|(0)(0)|63|64|(0)(0))|39|40|41|42|43|44|45|46)|21|22|(1:24)|28|29|30|31|32|33|34|35|36|37|38) */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0261, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x025f, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0265, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0263, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0269, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0267, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x013a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0217 A[Catch: RuntimeException -> 0x0211, IOException -> 0x0214, TryCatch #24 {IOException -> 0x0214, RuntimeException -> 0x0211, blocks: (B:67:0x01ad, B:69:0x01b8, B:71:0x01c0, B:73:0x01c4, B:75:0x01f1, B:76:0x0210, B:77:0x0217, B:78:0x0238), top: B:64:0x01a1 }] */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.ahsim.demulation.RomAssetBundleAtomicInstaller.InstallResult installVersion(java.io.File r29, int r30, java.io.File r31, java.io.File r32, java.io.File r33, java.io.File r34, java.io.File r35, java.io.File r36, java.io.File r37, java.io.File r38, java.io.File r39, java.io.File r40, java.io.File r41, java.io.File r42, java.io.File r43, java.io.File r44, java.io.File r45, java.lang.String r46, java.lang.String r47) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 678
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.RomAssetBundleAtomicInstaller.installVersion(java.io.File, int, java.io.File, java.io.File, java.io.File, java.io.File, java.io.File, java.io.File, java.io.File, java.io.File, java.io.File, java.io.File, java.io.File, java.io.File, java.io.File, java.io.File, java.io.File, java.lang.String, java.lang.String):com.ahsim.demulation.RomAssetBundleAtomicInstaller$InstallResult");
    }

    static boolean isBundlePointer(File pointer) throws IOException {
        if (pointer == null || !pointer.isFile()) {
            return false;
        }
        Properties p = load(pointer);
        if (!"runtime_frontend_bundle_v1".equals(p.getProperty("group.id"))) {
            return false;
        }
        try {
            int version = Integer.parseInt(p.getProperty("format.version", ""));
            return supportedVersion(version);
        } catch (NumberFormatException e) {
            return false;
        }
    }

    static RomAssetAtomicInstaller.Validation validateReadyFile(File root, File pointerFile) throws IOException {
        if (pointerFile == null || !pointerFile.isFile()) {
            return invalid("READY pointer is absent", null, null, 18);
        }
        Properties ready = load(pointerFile);
        try {
            int version = Integer.parseInt(ready.getProperty("format.version", ""));
            if (!supportedVersion(version)) {
                return invalid("Frontend/media bundle READY format version is unsupported", null, null, version);
            }
            if (!"runtime_frontend_bundle_v1".equals(ready.getProperty("group.id"))) {
                return invalid("READY group does not match frontend/media bundle", null, null, version);
            }
            String generation = ready.getProperty("generation", "").trim();
            String manifestSha = ready.getProperty("manifest.sha256", "").trim();
            if (!safeGeneration(generation) || manifestSha.length() != 64) {
                return invalid("Frontend/media bundle READY pointer fields are invalid", generation, null, version);
            }
            File installRoot = safeDirectChild(new File(root, RomAssetAtomicInstaller.INSTALLS_DIR), generation);
            return validateGenerationVersion(installRoot, generation, manifestSha, version);
        } catch (NumberFormatException e) {
            return invalid("Frontend/media bundle READY format version is unsupported", null, null, 18);
        }
    }

    static RomAssetAtomicInstaller.Validation validateGeneration(File installRoot, String generation, String expectedManifestSha) throws IOException {
        return validateGenerationVersion(installRoot, generation, expectedManifestSha, 18);
    }

    static RomAssetAtomicInstaller.Validation validateWorldGeneration(File installRoot, String generation, String expectedManifestSha) throws IOException {
        return validateGenerationVersion(installRoot, generation, expectedManifestSha, 5);
    }

    static RomAssetAtomicInstaller.Validation validateMediaGeneration(File installRoot, String generation, String expectedManifestSha) throws IOException {
        return validateGenerationVersion(installRoot, generation, expectedManifestSha, 4);
    }

    static RomAssetAtomicInstaller.Validation validateMissionCampaignGeneration(File installRoot, String generation, String expectedManifestSha) throws IOException {
        return validateGenerationVersion(installRoot, generation, expectedManifestSha, 3);
    }

    static RomAssetAtomicInstaller.Validation validateLegacyGeneration(File installRoot, String generation, String expectedManifestSha) throws IOException {
        return validateGenerationVersion(installRoot, generation, expectedManifestSha, 2);
    }

    private static RomAssetAtomicInstaller.Validation validateGenerationVersion(File installRoot, String generation, String expectedManifestSha, int version) throws IOException {
        List<RomAssetBundleManifest.Entry> entries;
        int i;
        if (installRoot == null || !installRoot.isDirectory()) {
            return invalid("Bundle generation is missing", generation, installRoot, version);
        }
        File manifest = new File(installRoot, "manifest.properties");
        if (!manifest.isFile()) {
            return invalid("Bundle manifest is missing", generation, installRoot, version);
        }
        if (expectedManifestSha != null && !expectedManifestSha.isEmpty() && !expectedManifestSha.equalsIgnoreCase(sha256(manifest))) {
            return invalid("Bundle manifest fingerprint mismatch", generation, installRoot, version);
        }
        Properties p = load(manifest);
        String manifestProfile = p.getProperty("source.profile", "");
        List<RomAssetBundleManifest.Entry> declared = entriesForVersion(version, manifestProfile);
        if ((version == 14 || version == 15 || version == 16 || version == 17 || version == 18) && hasManifestBoundEntries(declared, manifestProfile)) {
            try {
                requireExactProfileIdentity(manifestProfile, p.getProperty("source.sha256", ""));
                List<RomAssetBundleManifest.Entry> entries2 = manifestBoundEntriesFromManifest(p, declared, manifestProfile);
                entries = entries2;
            } catch (IOException e) {
                return invalid(e.getMessage(), generation, installRoot, version);
            }
        } else {
            entries = declared;
        }
        if (!Integer.toString(version).equals(p.getProperty("format.version"))) {
            return invalid("Bundle manifest format mismatch", generation, installRoot, version);
        }
        if (!"runtime_frontend_bundle_v1".equals(p.getProperty("group.id")) || !generation.equals(p.getProperty("generation"))) {
            return invalid("Bundle manifest identity mismatch", generation, installRoot, version);
        }
        if (!Integer.toString(entries.size()).equals(p.getProperty("entries.total")) || !Long.toString(payloadBytes(entries)).equals(p.getProperty("payload.bytes"))) {
            return invalid("Bundle manifest size/count mismatch", generation, installRoot, version);
        }
        while (i < entries.size()) {
            RomAssetBundleManifest.Entry e2 = entries.get(i);
            int i2 = i;
            String prefix = String.format(Locale.US, "asset.%03d.", Integer.valueOf(i));
            if (!e2.sourceGroup.equals(p.getProperty(prefix + "source_group")) || !e2.name.equals(p.getProperty(prefix + "name")) || !e2.relativePath.equals(p.getProperty(prefix + "path")) || !Integer.toString(e2.length).equals(p.getProperty(prefix + "length")) || !e2.sha256.equalsIgnoreCase(p.getProperty(prefix + "sha256", ""))) {
                return invalid("Bundle manifest entry mismatch: " + e2.relativePath, generation, installRoot, version);
            }
            File asset = safeChild(installRoot, e2.relativePath);
            i = (asset.isFile() && asset.length() == ((long) e2.length) && e2.sha256.equalsIgnoreCase(sha256(asset))) ? i2 + 1 : 0;
            return invalid("Installed bundle asset mismatch: " + e2.relativePath, generation, installRoot, version);
        }
        return new RomAssetAtomicInstaller.Validation(true, "ok", generation, installRoot, "runtime_frontend_bundle_v1", version, p.getProperty("source.sha256", ""), p.getProperty("source.profile", ""));
    }

    private static void requireExactProfileIdentity(String profileId, String sourceSha256) throws IOException {
        RomCompatibilityProfiles.Profile profile = RomCompatibilityProfiles.findById(profileId);
        if (profile == null || !profile.basePreparationSupported) {
            throw new IOException("Unsupported source-bound BASE profile");
        }
        if (sourceSha256 == null || !profile.sha256.equalsIgnoreCase(sourceSha256.trim())) {
            throw new IOException("Source-bound BASE source fingerprint mismatch");
        }
    }

    private static boolean hasManifestBoundEntries(List<RomAssetBundleManifest.Entry> entries, String profileId) {
        if (entries == null) {
            return false;
        }
        for (RomAssetBundleManifest.Entry e : entries) {
            if (RomOfficialRegionAssetVariants.manifestBoundAsset(profileId, e.relativePath)) {
                return true;
            }
        }
        return false;
    }

    private static List<RomAssetBundleManifest.Entry> deriveManifestBoundEntries(List<RomAssetBundleManifest.Entry> declared, String profileId, File core, File generic, File direct, File mentat, File mission, File tutorial, File missionResult, File ending, File worldTerrain, File worldTactical, File audio, File content, File worldData, File gameplayData, File nativeData) throws IOException {
        boolean lengthOk;
        ArrayList<RomAssetBundleManifest.Entry> out = new ArrayList<>(declared.size());
        for (RomAssetBundleManifest.Entry e : declared) {
            if (!RomOfficialRegionAssetVariants.manifestBoundAsset(profileId, e.relativePath)) {
                out.add(e);
            } else {
                File source = sourceRoot(e.sourceGroup, core, generic, direct, mentat, mission, tutorial, missionResult, ending, worldTerrain, worldTactical, audio, content, worldData, gameplayData, nativeData);
                if (source == null || !source.isDirectory()) {
                    throw new IOException("Source-bound staging group is unavailable: " + e.sourceGroup);
                }
                File f = safeChild(source, e.relativePath);
                if (!f.isFile() || f.length() > 2147483647L) {
                    throw new IOException("Source-bound asset is missing: " + e.relativePath);
                }
                int length = (int) f.length();
                if (RomWorldTacticalSpriteAssetManifest.CLASSIC_PURCHASE_ICONS.equals(e.relativePath)) {
                    lengthOk = length == e.length;
                } else {
                    lengthOk = RomOfficialRegionAssetVariants.validSourceBoundLength(e.relativePath, e.length, length);
                }
                if (!lengthOk) {
                    throw new IOException("Source-bound asset shape mismatch: " + e.relativePath);
                }
                out.add(new RomAssetBundleManifest.Entry(e.sourceGroup, e.name, e.relativePath, length, sha256(f)));
            }
        }
        return Collections.unmodifiableList(out);
    }

    private static List<RomAssetBundleManifest.Entry> manifestBoundEntriesFromManifest(Properties p, List<RomAssetBundleManifest.Entry> declared, String profileId) throws IOException {
        int total;
        long payload;
        boolean lengthOk;
        String str = "-1";
        try {
            int total2 = Integer.parseInt(p.getProperty("entries.total", "-1"));
            if (total2 != declared.size()) {
                throw new IOException("Source-bound READY manifest entry count mismatch");
            }
            ArrayList<RomAssetBundleManifest.Entry> out = new ArrayList<>(total2);
            long payload2 = 0;
            int i = 0;
            while (i < total2) {
                RomAssetBundleManifest.Entry base = declared.get(i);
                String prefix = String.format(Locale.US, "asset.%03d.", Integer.valueOf(i));
                String group = p.getProperty(prefix + "source_group", "");
                String name = p.getProperty(prefix + "name", "");
                String path = p.getProperty(prefix + "path", "");
                if (base.sourceGroup.equals(group) && base.name.equals(name) && base.relativePath.equals(path)) {
                    try {
                        int length = Integer.parseInt(p.getProperty(prefix + "length", str));
                        String str2 = str;
                        String sha = p.getProperty(prefix + "sha256", "").trim();
                        boolean bound = RomOfficialRegionAssetVariants.manifestBoundAsset(profileId, path);
                        if (bound) {
                            if (RomWorldTacticalSpriteAssetManifest.CLASSIC_PURCHASE_ICONS.equals(path)) {
                                lengthOk = length == base.length;
                            } else {
                                lengthOk = RomOfficialRegionAssetVariants.validSourceBoundLength(path, base.length, length);
                            }
                            if (lengthOk) {
                                total = total2;
                                if (sha.matches("(?i)[0-9a-f]{64}")) {
                                    payload = payload2;
                                }
                            }
                            throw new IOException("Source-bound READY asset declaration is invalid: " + path);
                        }
                        total = total2;
                        payload = payload2;
                        if (length != base.length || !base.sha256.equalsIgnoreCase(sha)) {
                            throw new IOException("READY manifest static asset declaration mismatch: " + path);
                        }
                        out.add(new RomAssetBundleManifest.Entry(group, name, path, length, sha));
                        payload2 = payload + length;
                        i++;
                        str = str2;
                        total2 = total;
                    } catch (NumberFormatException e) {
                        throw new IOException("Source-bound READY asset length is invalid: " + path, e);
                    }
                } else {
                    throw new IOException("Source-bound READY manifest structure mismatch: " + base.relativePath);
                }
            }
            if (!Long.toString(payload2).equals(p.getProperty("payload.bytes", ""))) {
                throw new IOException("Source-bound READY manifest payload size mismatch");
            }
            return Collections.unmodifiableList(out);
        } catch (NumberFormatException e2) {
            throw new IOException("Source-bound READY manifest entry count is invalid", e2);
        }
    }

    private static void verifySourceTrees(List<RomAssetBundleManifest.Entry> entries, File core, File generic, File direct, File mentat, File mission, File tutorial, File missionResult, File ending, File worldTerrain, File worldTactical, File audio, File content, File worldData, File gameplayData, File nativeData) throws IOException {
        for (RomAssetBundleManifest.Entry e : entries) {
            File sourceRoot = sourceRoot(e.sourceGroup, core, generic, direct, mentat, mission, tutorial, missionResult, ending, worldTerrain, worldTactical, audio, content, worldData, gameplayData, nativeData);
            if (sourceRoot == null || !sourceRoot.isDirectory()) {
                throw new IOException("Verified staging/source group is unavailable: " + e.sourceGroup);
            }
            File f = safeChild(sourceRoot, e.relativePath);
            if (!f.isFile() || f.length() != e.length || !e.sha256.equalsIgnoreCase(sha256(f))) {
                throw new IOException("Source asset failed bundle verification: " + e.relativePath);
            }
        }
    }

    private static void copyGroup(List<RomAssetBundleManifest.Entry> entries, File source, File destination, String group) throws IOException {
        boolean required = false;
        Iterator<RomAssetBundleManifest.Entry> it = entries.iterator();
        while (true) {
            if (it.hasNext()) {
                if (group.equals(it.next().sourceGroup)) {
                    required = true;
                    break;
                }
            } else {
                break;
            }
        }
        if (required) {
            if (source == null || !source.isDirectory()) {
                throw new IOException("Source group unavailable: " + group);
            }
            for (RomAssetBundleManifest.Entry e : entries) {
                if (group.equals(e.sourceGroup)) {
                    File src = safeChild(source, e.relativePath);
                    File dst = safeChild(destination, e.relativePath);
                    File parent = dst.getParentFile();
                    if (parent != null && !parent.mkdirs() && !parent.isDirectory()) {
                        throw new IOException("Could not create bundle asset directory");
                    }
                    copySynced(src, dst);
                }
            }
        }
    }

    private static File sourceRoot(String group, File core, File generic, File direct, File mentat, File mission, File tutorial, File missionResult, File ending, File worldTerrain, File worldTactical, File audio, File content, File worldData, File gameplayData, File nativeData) {
        if ("runtime_bootstrap_core_v1".equals(group)) {
            return core;
        }
        if ("frontend_generic_graphics_v1".equals(group)) {
            return generic;
        }
        if ("frontend_direct_v1".equals(group)) {
            return direct;
        }
        if ("frontend_mentat_v1".equals(group)) {
            return mentat;
        }
        if ("mission_campaign_transition_v1".equals(group)) {
            return mission;
        }
        if ("tutorial_original_v1".equals(group)) {
            return tutorial;
        }
        if ("mission_result_graphics_v1".equals(group)) {
            return missionResult;
        }
        if ("ending_graphics_v1".equals(group)) {
            return ending;
        }
        if ("world_terrain_radar_v1".equals(group)) {
            return worldTerrain;
        }
        if ("world_tactical_sprites_v1".equals(group)) {
            return worldTactical;
        }
        if ("original_audio_ready_v1".equals(group)) {
            return audio;
        }
        if ("original_content_ready_v1".equals(group)) {
            return content;
        }
        if ("original_world_data_v1".equals(group)) {
            return worldData;
        }
        if ("original_gameplay_data_v1".equals(group)) {
            return gameplayData;
        }
        if ("original_native_pure_data_v1".equals(group)) {
            return nativeData;
        }
        return null;
    }

    private static void verifyBundleTree(File root, List<RomAssetBundleManifest.Entry> entries) throws IOException {
        for (RomAssetBundleManifest.Entry e : entries) {
            File f = safeChild(root, e.relativePath);
            if (!f.isFile() || f.length() != e.length || !e.sha256.equalsIgnoreCase(sha256(f))) {
                throw new IOException("Assembled bundle verification failed: " + e.relativePath);
            }
        }
    }

    private static void writeInstallManifest(File file, int version, String generation, String sourceSha256, String sourceProfile, List<RomAssetBundleManifest.Entry> entries) throws IOException {
        StringBuilder text = new StringBuilder();
        append(text, "format.version", Integer.toString(version));
        append(text, "stage", stageForVersion(version));
        append(text, "group.id", "runtime_frontend_bundle_v1");
        append(text, "generation", generation);
        append(text, "source.sha256", sourceSha256 == null ? "" : sourceSha256);
        append(text, "source.profile", sourceProfile != null ? sourceProfile : "");
        append(text, "entries.total", Integer.toString(entries.size()));
        append(text, "payload.bytes", Long.toString(payloadBytes(entries)));
        append(text, "group.core.entries", Integer.toString(countGroup(entries, "runtime_bootstrap_core_v1")));
        append(text, "group.frontend_generic.entries", Integer.toString(RomFrontendAssetManifest.entries().size()));
        append(text, "group.frontend_direct.entries", Integer.toString(RomFrontendDirectAssetManifest.entries().size()));
        append(text, "group.frontend_mentat.entries", Integer.toString(RomMentatAssetManifest.entries().size()));
        if (version >= 3) {
            append(text, "group.mission_campaign.entries", Integer.toString(RomMissionTransitionAssetManifest.entries().size()));
        }
        if (version >= 4) {
            append(text, "group.tutorial_media.entries", Integer.toString(RomTutorialAssetManifest.entries().size()));
            append(text, "group.mission_result_graphics.entries", Integer.toString(RomMissionResultGraphicsAssetManifest.entries().size()));
            append(text, "group.ending_graphics.entries", Integer.toString(RomEndingGraphicsAssetManifest.entries().size()));
        }
        if (version >= 5) {
            append(text, "group.world_terrain_radar.entries", Integer.toString(RomWorldTerrainRadarAssetManifest.entries().size()));
            append(text, "group.world_tactical_sprites.entries", Integer.toString(countGroup(entries, "world_tactical_sprites_v1")));
        }
        if (version >= 7) {
            append(text, "group.original_audio.entries", Integer.toString(RomAudioAssetManifest.entries().size()));
        }
        if (version >= 8) {
            append(text, "group.original_content.entries", Integer.toString(countGroup(entries, "original_content_ready_v1")));
        }
        if (version >= 11) {
            append(text, "group.world_data.entries", Integer.toString(countGroup(entries, "original_world_data_v1")));
        }
        if (version >= 12) {
            append(text, "group.gameplay_data.entries", Integer.toString(countGroup(entries, "original_gameplay_data_v1")));
        }
        if (version >= 13) {
            append(text, "group.native_pure_data.entries", Integer.toString(countGroup(entries, "original_native_pure_data_v1")));
        }
        for (int i = 0; i < entries.size(); i++) {
            RomAssetBundleManifest.Entry e = entries.get(i);
            String prefix = String.format(Locale.US, "asset.%03d.", Integer.valueOf(i));
            append(text, prefix + "source_group", e.sourceGroup);
            append(text, prefix + "name", e.name);
            append(text, prefix + "path", e.relativePath);
            append(text, prefix + "length", Integer.toString(e.length));
            append(text, prefix + "sha256", e.sha256);
        }
        writeBytesSynced(file, text.toString().getBytes(StandardCharsets.UTF_8));
    }

    private static void publishReady(File root, int version, String generation, String manifestSha, String sourceSha256, String sourceProfile, List<RomAssetBundleManifest.Entry> entries) throws IOException {
        File next = new File(root, RomAssetAtomicInstaller.READY_NEW);
        File current = new File(root, "READY");
        File previous = new File(root, RomAssetAtomicInstaller.READY_PREVIOUS);
        deleteQuietly(next);
        deleteQuietly(previous);
        Properties p = new Properties();
        p.setProperty("format.version", Integer.toString(version));
        p.setProperty("stage", stageForVersion(version));
        p.setProperty("group.id", "runtime_frontend_bundle_v1");
        p.setProperty("generation", generation);
        p.setProperty("manifest.sha256", manifestSha);
        p.setProperty("source.sha256", sourceSha256 == null ? "" : sourceSha256);
        p.setProperty("source.profile", sourceProfile != null ? sourceProfile : "");
        p.setProperty("entries.total", Integer.toString(entries.size()));
        p.setProperty("payload.bytes", Long.toString(payloadBytes(entries)));
        writePropertiesSynced(next, p, "Demulation " + stageForVersion(version) + " READY pointer");
        if (current.exists() && !current.renameTo(previous)) {
            deleteQuietly(next);
            throw new IOException("Could not preserve previous READY pointer");
        }
        if (!next.renameTo(current)) {
            if (previous.exists() && !current.exists()) {
                previous.renameTo(current);
            }
            throw new IOException("Could not publish frontend/media bundle READY pointer");
        }
    }

    private static void rollbackReady(File root) throws IOException {
        File current = new File(root, "READY");
        File previous = new File(root, RomAssetAtomicInstaller.READY_PREVIOUS);
        deleteQuietly(current);
        if (previous.exists() && !previous.renameTo(current)) {
            throw new IOException("Could not restore previous READY pointer");
        }
    }

    private static void publishGeneration(File staging, File destination) throws IOException {
        if (!staging.renameTo(destination)) {
            throw new IOException("Could not atomically publish frontend/media bundle generation");
        }
    }

    private static List<RomAssetBundleManifest.Entry> entriesForVersion(int version, String sourceProfile) throws IOException {
        if (version == 2) {
            return RomAssetBundleManifest.legacyEntries();
        }
        if (version == 3) {
            return RomAssetBundleManifest.missionCampaignEntries();
        }
        if (version == 4) {
            return RomAssetBundleManifest.mediaEntries();
        }
        if (version == 5) {
            return RomAssetBundleManifest.worldEntries();
        }
        if (version == 6) {
            return RomAssetBundleManifest.gameDataFreeEntries();
        }
        if (version == 7) {
            return RomAssetBundleManifest.audioEntries();
        }
        if (version == 8) {
            return RomAssetBundleManifest.contentV8Entries();
        }
        if (version == 9) {
            return RomAssetBundleManifest.contentV9Entries();
        }
        if (version == 10) {
            return RomAssetBundleManifest.contentV10Entries();
        }
        if (version == 11) {
            return RomAssetBundleManifest.worldDataEntries();
        }
        if (version == 12) {
            return RomAssetBundleManifest.gameplayDataEntries();
        }
        if (version == 13) {
            return RomAssetBundleManifest.nativeDataEntries();
        }
        if (version == 14) {
            return RomAssetBundleManifest.officialRegionEntriesForProfile(sourceProfile);
        }
        if (version == 15) {
            return RomAssetBundleManifest.classicPurchaseEntriesForProfile(sourceProfile);
        }
        if (version == 16) {
            return RomAssetBundleManifest.classicEverywhereEntriesForProfile(sourceProfile);
        }
        if (version == 17) {
            return RomAssetBundleManifest.classicDetailEntriesForProfile(sourceProfile);
        }
        if (version == 18) {
            return RomAssetBundleManifest.entriesForProfile(sourceProfile);
        }
        throw new IOException("Unsupported bundle format version: " + version);
    }

    private static boolean supportedVersion(int version) {
        return version == 2 || version == 3 || version == 4 || version == 5 || version == 6 || version == 7 || version == 8 || version == 9 || version == 10 || version == 11 || version == 12 || version == 13 || version == 14 || version == 15 || version == 16 || version == 17 || version == 18;
    }

    private static String stageForVersion(int version) {
        return version == 2 ? "04.234D" : version == 3 ? "04.234G" : version == 4 ? "04.234M" : version == 5 ? "04.235D" : version == 6 ? "04.235G" : version == 7 ? "04.235I" : version == 8 ? "04.235P" : version == 9 ? "04.235Q" : version == 10 ? "04.235R" : version == 11 ? "04.235T1" : version == 12 ? "04.235U1" : version == 13 ? "04.235V1" : version == 14 ? "04.238Y43" : version == 15 ? "0.4.257" : version == 16 ? "0.4.258" : version == 17 ? "0.4.261" : "0.4.601";
    }

    private static int countGroup(List<RomAssetBundleManifest.Entry> entries, String group) {
        int count = 0;
        for (RomAssetBundleManifest.Entry e : entries) {
            if (group.equals(e.sourceGroup)) {
                count++;
            }
        }
        return count;
    }

    private static long payloadBytes(List<RomAssetBundleManifest.Entry> entries) {
        long total = 0;
        for (RomAssetBundleManifest.Entry e : entries) {
            total += e.length;
        }
        return total;
    }

    private static String generationName(int version, String sourceSha256, String sourceProfile) throws IOException {
        String prefix;
        String source = sourceSha256 == null ? "" : sourceSha256.trim().toLowerCase(Locale.US);
        if (!source.matches("[0-9a-f]{64}")) {
            source = sha256Bytes((sourceProfile == null ? "unknown" : sourceProfile).getBytes(StandardCharsets.UTF_8));
        }
        if (version == 2) {
            prefix = GENERATION_PREFIX_V2;
        } else if (version == 3) {
            prefix = GENERATION_PREFIX_V3;
        } else if (version == 4) {
            prefix = GENERATION_PREFIX_V4;
        } else if (version == 5) {
            prefix = GENERATION_PREFIX_V5;
        } else if (version == 6) {
            prefix = GENERATION_PREFIX_V6;
        } else if (version == 7) {
            prefix = GENERATION_PREFIX_V7;
        } else if (version == 8) {
            prefix = GENERATION_PREFIX_V8;
        } else if (version == 9) {
            prefix = GENERATION_PREFIX_V9;
        } else if (version == 10) {
            prefix = GENERATION_PREFIX_V10;
        } else if (version == 11) {
            prefix = GENERATION_PREFIX_V11;
        } else if (version == 12) {
            prefix = GENERATION_PREFIX_V12;
        } else if (version == 13) {
            prefix = GENERATION_PREFIX_V13;
        } else if (version == 14) {
            prefix = GENERATION_PREFIX_V14;
        } else if (version == 15) {
            prefix = GENERATION_PREFIX_V15;
        } else if (version == 16) {
            prefix = GENERATION_PREFIX_V16;
        } else {
            prefix = version == 17 ? GENERATION_PREFIX_V17 : GENERATION_PREFIX_V18;
        }
        return prefix + source;
    }

    private static boolean safeGeneration(String name) {
        return name != null && name.startsWith(GENERATION_PREFIX_V2) && name.matches("[A-Za-z0-9._-]+");
    }

    private static File safeDirectChild(File root, String name) throws IOException {
        if (!safeGeneration(name)) {
            throw new IOException("Unsafe frontend/media bundle generation name");
        }
        File f = new File(root, name).getCanonicalFile();
        String rp = root.getCanonicalPath();
        String fp = f.getCanonicalPath();
        if (!fp.startsWith(rp + File.separator)) {
            throw new IOException("Unsafe frontend/media bundle generation path");
        }
        return f;
    }

    private static File safeChild(File root, String relative) throws IOException {
        File f = new File(root, relative).getCanonicalFile();
        String rp = root.getCanonicalPath();
        String fp = f.getCanonicalPath();
        if (!fp.startsWith(rp + File.separator)) {
            throw new IOException("Unsafe asset path: " + relative);
        }
        return f;
    }

    private static void copySynced(File source, File dest) throws IOException {
        byte[] buffer = new byte[8192];
        InputStream in = new FileInputStream(source);
        try {
            FileOutputStream out = new FileOutputStream(dest);
            while (true) {
                try {
                    int n = in.read(buffer);
                    if (n < 0) {
                        out.getFD().sync();
                        out.close();
                        in.close();
                        return;
                    } else if (n > 0) {
                        out.write(buffer, 0, n);
                    }
                } finally {
                }
            }
        } catch (Throwable th) {
            try {
                in.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static void append(StringBuilder out, String key, String value) throws IOException {
        if (key.indexOf(10) < 0 && key.indexOf(13) < 0 && key.indexOf(61) < 0 && value.indexOf(10) < 0 && value.indexOf(13) < 0) {
            out.append(key).append('=').append(value).append('\n');
            return;
        }
        throw new IOException("Unsafe bundle manifest property");
    }

    private static Properties load(File file) throws IOException {
        Properties p = new Properties();
        FileInputStream in = new FileInputStream(file);
        try {
            p.load(in);
            in.close();
            return p;
        } catch (Throwable th) {
            try {
                in.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static void writePropertiesSynced(File file, Properties p, String comment) throws IOException {
        File parent = file.getParentFile();
        if (parent != null && !parent.mkdirs() && !parent.isDirectory()) {
            throw new IOException("Could not create READY directory");
        }
        FileOutputStream out = new FileOutputStream(file);
        try {
            p.store(out, comment);
            out.getFD().sync();
            out.close();
        } catch (Throwable th) {
            try {
                out.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static void writeBytesSynced(File file, byte[] bytes) throws IOException {
        File parent = file.getParentFile();
        if (parent != null && !parent.mkdirs() && !parent.isDirectory()) {
            throw new IOException("Could not create manifest directory");
        }
        FileOutputStream out = new FileOutputStream(file);
        try {
            out.write(bytes);
            out.getFD().sync();
            out.close();
        } catch (Throwable th) {
            try {
                out.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static String sha256(File file) throws IOException {
        MessageDigest d = digest();
        byte[] b = new byte[8192];
        InputStream in = new FileInputStream(file);
        while (true) {
            try {
                int n = in.read(b);
                if (n < 0) {
                    in.close();
                    return hex(d.digest());
                }
                if (n > 0) {
                    d.update(b, 0, n);
                }
            } catch (Throwable th) {
                try {
                    in.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    private static String sha256Bytes(byte[] bytes) throws IOException {
        MessageDigest d = digest();
        d.update(bytes);
        return hex(d.digest());
    }

    private static MessageDigest digest() throws IOException {
        try {
            return MessageDigest.getInstance("SHA-256");
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 unavailable", e);
        }
    }

    private static String hex(byte[] bytes) {
        char[] a = "0123456789abcdef".toCharArray();
        char[] out = new char[bytes.length * 2];
        for (int i = 0; i < bytes.length; i++) {
            int v = bytes[i] & 255;
            out[i * 2] = a[v >>> 4];
            out[(i * 2) + 1] = a[v & 15];
        }
        return new String(out);
    }

    private static void deleteQuietly(File f) throws IOException {
        if (f == null || !f.exists()) {
            return;
        }
        GenesisRomAssetProviderCore.deleteRecursively(f);
    }

    private static RomAssetAtomicInstaller.Validation invalid(String reason, String generation, File root, int version) {
        return new RomAssetAtomicInstaller.Validation(false, reason, generation, root, "runtime_frontend_bundle_v1", version, "", "");
    }
}
