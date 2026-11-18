.class public final Lcom/ahsim/demulation/RomAssetInstallState;
.super Ljava/lang/Object;
.source "RomAssetInstallState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;
    }
.end annotation


# static fields
.field public static final AUDIO_STAGING_DIR:Ljava/lang/String; = "original_audio_ready_v1"

.field public static final BUNDLE_STAGING_DIR:Ljava/lang/String; = "runtime_frontend_bundle_v1"

.field public static final CORE_STAGING_DIR:Ljava/lang/String; = "runtime_bootstrap_core_v1"

.field public static final ENDING_GRAPHICS_STAGING_DIR:Ljava/lang/String; = "ending_graphics_v1"

.field public static final FRONTEND_DIRECT_STAGING_DIR:Ljava/lang/String; = "frontend_direct_v1"

.field public static final FRONTEND_STAGING_DIR:Ljava/lang/String; = "frontend_generic_graphics_v1"

.field public static final GAMEPLAY_DATA_STAGING_DIR:Ljava/lang/String; = "original_gameplay_data_v1"

.field public static final MANIFEST_FILE:Ljava/lang/String; = "manifest.properties"

.field public static final MENTAT_STAGING_DIR:Ljava/lang/String; = "frontend_mentat_v1"

.field public static final MISSION_RESULT_GRAPHICS_STAGING_DIR:Ljava/lang/String; = "mission_result_graphics_v1"

.field public static final MISSION_TRANSITION_STAGING_DIR:Ljava/lang/String; = "mission_campaign_transition_v1"

.field public static final NATIVE_DATA_STAGING_DIR:Ljava/lang/String; = "original_native_pure_data_v1"

.field public static final ORIGINAL_CONTENT_STAGING_DIR:Ljava/lang/String; = "original_content_ready_v1"

.field public static final READY_MARKER:Ljava/lang/String; = "READY"

.field public static final ROOT_DIR:Ljava/lang/String; = "rom_assets"

.field public static final STAGING_DIR:Ljava/lang/String; = "_staging"

.field public static final TUTORIAL_STAGING_DIR:Ljava/lang/String; = "tutorial_original_v1"

.field public static final WORLD_DATA_STAGING_DIR:Ljava/lang/String; = "original_world_data_v1"

.field public static final WORLD_TACTICAL_SPRITE_STAGING_DIR:Ljava/lang/String; = "world_tactical_sprites_v1"

.field public static final WORLD_TERRAIN_RADAR_STAGING_DIR:Ljava/lang/String; = "world_terrain_radar_v1"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static activeAudioAssets(Landroid/content/Context;)Lcom/ahsim/demulation/RomRuntimeAudioAssets;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->requireCurrentBundle(Landroid/content/Context;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    .line 299
    .local v0, "state":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    new-instance v1, Lcom/ahsim/demulation/RomRuntimeAudioAssets;

    iget-object v2, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    iget-object v3, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->sourceProfile:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/ahsim/demulation/RomRuntimeAudioAssets;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static activeBundleSourceSha256(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->requireCurrentBundle(Landroid/content/Context;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    .line 283
    .local v0, "state":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    iget-object v1, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->sourceSha256:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->sourceSha256:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    iget-object v1, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->sourceSha256:Ljava/lang/String;

    return-object v1

    .line 284
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "READY source fingerprint is missing"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static activeCoreAssets(Landroid/content/Context;)Lcom/ahsim/demulation/RomRuntimeCoreAssets;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 263
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->validateReady(Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    .line 264
    .local v0, "state":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    iget-boolean v1, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->valid:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    if-nez v1, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    iget v1, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->formatVersion:I

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 270
    new-instance v1, Lcom/ahsim/demulation/RomRuntimeCoreAssets;

    iget-object v2, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    invoke-direct {v1, v2}, Lcom/ahsim/demulation/RomRuntimeCoreAssets;-><init>(Ljava/io/File;)V

    return-object v1

    .line 268
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Current READY has no runtime core asset files"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 265
    :cond_2
    :goto_0
    new-instance v1, Ljava/io/IOException;

    iget-object v2, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->reason:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, "No valid READY state"

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->reason:Ljava/lang/String;

    :goto_1
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static activeFrontendAssets(Landroid/content/Context;)Lcom/ahsim/demulation/RomRuntimeFrontendAssets;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->requireCurrentBundle(Landroid/content/Context;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    .line 277
    .local v0, "state":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    new-instance v1, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

    iget-object v2, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    iget-object v3, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->sourceProfile:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static activeGameplayDataAssets(Landroid/content/Context;)Lcom/ahsim/demulation/RomRuntimeGameplayDataAssets;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->requireCurrentBundle(Landroid/content/Context;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    .line 317
    .local v0, "state":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    new-instance v1, Lcom/ahsim/demulation/RomRuntimeGameplayDataAssets;

    iget-object v2, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    invoke-direct {v1, v2}, Lcom/ahsim/demulation/RomRuntimeGameplayDataAssets;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method public static activeInstallRoot(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 329
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->validateReady(Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v1

    .line 330
    .local v1, "state":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    iget-boolean v2, v1, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->valid:Z

    if-eqz v2, :cond_0

    iget-object v0, v1, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    .line 331
    .end local v1    # "state":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 332
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static activeNativeDataAssets(Landroid/content/Context;)Lcom/ahsim/demulation/RomRuntimeNativeDataAssets;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->requireCurrentBundle(Landroid/content/Context;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    .line 324
    .local v0, "state":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    new-instance v1, Lcom/ahsim/demulation/RomRuntimeNativeDataAssets;

    iget-object v2, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    invoke-direct {v1, v2}, Lcom/ahsim/demulation/RomRuntimeNativeDataAssets;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method public static activeOriginalContentAssets(Landroid/content/Context;)Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->requireCurrentBundle(Landroid/content/Context;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    .line 305
    .local v0, "state":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    new-instance v1, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;

    iget-object v2, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->sourceProfile:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;-><init>(Ljava/io/File;Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;Ljava/lang/String;)V

    return-object v1
.end method

.method public static activeRuntimeBundle(Landroid/content/Context;)Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    new-instance v0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;

    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->requireCurrentBundle(Landroid/content/Context;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;-><init>(Landroid/content/Context;Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;Lcom/ahsim/demulation/RomAssetInstallState-IA;)V

    return-object v0
.end method

.method public static activeWorldAssets(Landroid/content/Context;)Lcom/ahsim/demulation/RomRuntimeWorldAssets;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->requireCurrentBundle(Landroid/content/Context;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    .line 292
    .local v0, "state":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    new-instance v1, Lcom/ahsim/demulation/RomRuntimeWorldAssets;

    iget-object v2, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    .line 293
    invoke-static {p0}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->loadActive(Landroid/content/Context;)Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;

    move-result-object v3

    iget-object v4, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->sourceProfile:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;-><init>(Ljava/io/File;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;Ljava/lang/String;)V

    .line 292
    return-object v1
.end method

.method public static activeWorldDataAssets(Landroid/content/Context;)Lcom/ahsim/demulation/RomRuntimeWorldDataAssets;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->requireCurrentBundle(Landroid/content/Context;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    .line 311
    .local v0, "state":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    new-instance v1, Lcom/ahsim/demulation/RomRuntimeWorldDataAssets;

    iget-object v2, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    invoke-direct {v1, v2}, Lcom/ahsim/demulation/RomRuntimeWorldDataAssets;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method public static audioStaging(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 194
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->stagingRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "original_audio_ready_v1"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static bundleStaging(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 214
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->stagingRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "runtime_frontend_bundle_v1"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static coreStaging(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 154
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->stagingRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "runtime_bootstrap_core_v1"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static currentProfileRuntimeContract(Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;)Z
    .locals 10
    .param p0, "state"    # Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    .line 93
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    iget-boolean v1, p0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->valid:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    if-nez v1, :cond_0

    goto :goto_2

    .line 94
    :cond_0
    const-string v1, "dune_arrakis_germany_gm_t70246_00"

    iget-object v2, p0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->sourceProfile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    .line 100
    :cond_1
    :try_start_0
    new-instance v1, Lcom/ahsim/demulation/RomRuntimeAudioAssets;

    iget-object v3, p0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    iget-object v4, p0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->sourceProfile:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Lcom/ahsim/demulation/RomRuntimeAudioAssets;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1}, Lcom/ahsim/demulation/RomRuntimeAudioAssets;->loadCompactAudioSource()Lcom/ahsim/demulation/GenesisAudioSource;

    move-result-object v1

    .line 102
    .local v1, "source":Lcom/ahsim/demulation/GenesisAudioSource;
    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisAudioSource;->residentBytes()I

    move-result v3

    const v4, 0x35702

    if-ne v3, v4, :cond_5

    .line 103
    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisAudioSource;->segmentCount()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 108
    :cond_2
    new-instance v3, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

    iget-object v4, p0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    iget-object v5, p0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->sourceProfile:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    .local v3, "frontend":Lcom/ahsim/demulation/RomRuntimeFrontendAssets;
    const-string v4, "frontend/mentat/selector_briefing.bin"

    invoke-virtual {v3, v4}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v4

    .line 111
    .local v4, "briefing":[B
    const-string v5, "frontend/mentat/selector_join.bin"

    invoke-virtual {v3, v5}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v5

    .line 112
    .local v5, "join":[B
    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_3

    return v0

    .line 113
    :cond_3
    new-instance v6, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;

    iget-object v7, p0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    iget-object v8, p0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->sourceProfile:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v6, v7, v9, v8}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;-><init>(Ljava/io/File;Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;Ljava/lang/String;)V

    .line 115
    .local v6, "original":Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;
    invoke-virtual {v6}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->tutorialExactContent()Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;->characterMapSize()I

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v8, 0x96

    if-ne v7, v8, :cond_4

    move v0, v2

    :cond_4
    return v0

    .line 103
    .end local v3    # "frontend":Lcom/ahsim/demulation/RomRuntimeFrontendAssets;
    .end local v4    # "briefing":[B
    .end local v5    # "join":[B
    .end local v6    # "original":Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;
    :cond_5
    :goto_0
    return v0

    .line 116
    .end local v1    # "source":Lcom/ahsim/demulation/GenesisAudioSource;
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    return v0

    .line 93
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_2
    return v0
.end method

.method public static endingGraphicsStaging(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 182
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->stagingRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "ending_graphics_v1"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static frontendDirectStaging(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 162
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->stagingRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "frontend_direct_v1"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static frontendStaging(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 158
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->stagingRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "frontend_generic_graphics_v1"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static gameplayDataStaging(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 206
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->stagingRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "original_gameplay_data_v1"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static isBundleReady(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 251
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->validateReady(Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v1

    .line 252
    .local v1, "state":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    iget-boolean v2, v1, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->valid:Z

    if-eqz v2, :cond_0

    const-string v2, "runtime_frontend_bundle_v1"

    iget-object v3, v1, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->groupId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->formatVersion:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_0

    .line 254
    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetInstallState;->currentProfileRuntimeContract(Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 252
    :goto_0
    return v0

    .line 255
    .end local v1    # "state":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method public static isReady(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 229
    :try_start_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->validateReady(Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    iget-boolean v0, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->valid:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 230
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public static mentatStaging(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 166
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->stagingRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "frontend_mentat_v1"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static missionResultGraphicsStaging(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 178
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->stagingRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "mission_result_graphics_v1"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static missionTransitionStaging(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 170
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->stagingRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "mission_campaign_transition_v1"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static nativeDataStaging(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 210
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->stagingRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "original_native_pure_data_v1"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static originalContentStaging(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 198
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->stagingRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "original_content_ready_v1"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static readyMarker(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 146
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "READY"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static recoverAndIsBundleReady(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 240
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->recover(Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v1

    .line 241
    .local v1, "state":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    iget-boolean v2, v1, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->valid:Z

    if-eqz v2, :cond_0

    const-string v2, "runtime_frontend_bundle_v1"

    iget-object v3, v1, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->groupId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->formatVersion:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_0

    .line 243
    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetInstallState;->currentProfileRuntimeContract(Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 241
    :goto_0
    return v0

    .line 244
    .end local v1    # "state":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method public static recoverAndIsReady(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 220
    :try_start_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->recover(Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    iget-boolean v0, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->valid:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 221
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private static requireCurrentBundle(Landroid/content/Context;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->validateReady(Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    .line 123
    .local v0, "state":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    invoke-static {v0}, Lcom/ahsim/demulation/RomAssetInstallState;->currentProfileRuntimeContract(Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;)Z

    move-result v1

    .line 124
    .local v1, "profileCurrent":Z
    iget-boolean v2, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->valid:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->groupId:Ljava/lang/String;

    .line 125
    const-string v3, "runtime_frontend_bundle_v1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->formatVersion:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    return-object v0

    .line 128
    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->reason:Ljava/lang/String;

    .line 129
    .local v2, "reason":Ljava/lang/String;
    iget-boolean v3, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->valid:Z

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    .line 130
    const-string v2, "READY BASE profile runtime contract is obsolete"

    .line 131
    :cond_2
    new-instance v3, Ljava/io/IOException;

    if-nez v2, :cond_3

    const-string v4, "No current READY bundle state"

    goto :goto_1

    :cond_3
    move-object v4, v2

    :goto_1
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static root(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 142
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "rom_assets"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static stagingRoot(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 150
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "_staging"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static tutorialStaging(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 174
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->stagingRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "tutorial_original_v1"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static worldDataStaging(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 202
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->stagingRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "original_world_data_v1"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static worldTacticalSpriteStaging(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 190
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->stagingRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "world_tactical_sprites_v1"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static worldTerrainRadarStaging(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 186
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->stagingRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "world_terrain_radar_v1"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
