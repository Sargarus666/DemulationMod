.class public final Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;
.super Ljava/lang/Object;
.source "RomAssetInstallState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomAssetInstallState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RuntimeBundle"
.end annotation


# instance fields
.field public final audioAssets:Lcom/ahsim/demulation/RomRuntimeAudioAssets;

.field public final formatVersion:I

.field public final frontendAssets:Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

.field public final gameplayDataAssets:Lcom/ahsim/demulation/RomRuntimeGameplayDataAssets;

.field public final installRoot:Ljava/io/File;

.field public final nativeDataAssets:Lcom/ahsim/demulation/RomRuntimeNativeDataAssets;

.field public final originalContentAssets:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;

.field public final russianLocalizationAssets:Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;

.field public final russianVoiceAssets:Lcom/ahsim/demulation/RomRuntimeRussianVoiceAssets;

.field public final sourceProfile:Ljava/lang/String;

.field public final sourceSha256:Ljava/lang/String;

.field public final worldAssets:Lcom/ahsim/demulation/RomRuntimeWorldAssets;

.field public final worldDataAssets:Lcom/ahsim/demulation/RomRuntimeWorldDataAssets;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "state"    # Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iget-object v0, p2, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->installRoot:Ljava/io/File;

    .line 59
    iget-object v0, p2, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->sourceSha256:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->sourceSha256:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->sourceSha256:Ljava/lang/String;

    .line 60
    iget-object v0, p2, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->sourceProfile:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p2, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->sourceProfile:Ljava/lang/String;

    :goto_1
    iput-object v1, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->sourceProfile:Ljava/lang/String;

    .line 61
    iget v0, p2, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->formatVersion:I

    iput v0, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->formatVersion:I

    .line 66
    const-string v0, "translation_ru_shedevr_lipetsk_usa"

    iget-object v1, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->sourceProfile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->sourceSha256:Ljava/lang/String;

    .line 67
    const-string v3, "4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    .line 69
    .local v0, "russianBase":Z
    :goto_2
    const/4 v3, 0x0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->loadActive(Landroid/content/Context;)Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v3

    .line 70
    .local v4, "localizationSnapshot":Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;
    :goto_3
    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->sourceSha256:Ljava/lang/String;

    iget-object v6, v4, Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;->sourceSha256:Ljava/lang/String;

    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->sourceProfile:Ljava/lang/String;

    iget-object v6, v4, Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;->profileId:Ljava/lang/String;

    .line 72
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    .line 73
    .local v1, "localizationBound":Z
    :goto_4
    if-eqz v1, :cond_5

    .line 74
    new-instance v2, Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;

    invoke-direct {v2, v4}, Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;-><init>(Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;)V

    goto :goto_5

    :cond_5
    move-object v2, v3

    :goto_5
    iput-object v2, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->russianLocalizationAssets:Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;

    .line 75
    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->russianLocalizationAssets:Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;

    if-eqz v2, :cond_6

    goto :goto_6

    .line 76
    :cond_6
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Russian BASE localization companion is unavailable"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_7
    :goto_6
    new-instance v2, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

    iget-object v5, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->installRoot:Ljava/io/File;

    iget-object v6, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->russianLocalizationAssets:Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;

    iget-object v7, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->sourceProfile:Ljava/lang/String;

    invoke-direct {v2, v5, v6, v7}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;-><init>(Ljava/io/File;Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->frontendAssets:Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

    .line 79
    new-instance v2, Lcom/ahsim/demulation/RomRuntimeWorldAssets;

    iget-object v5, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->installRoot:Ljava/io/File;

    .line 80
    invoke-static {p1}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->loadActive(Landroid/content/Context;)Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;

    move-result-object v6

    iget-object v7, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->sourceProfile:Ljava/lang/String;

    invoke-direct {v2, v5, v6, v7}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;-><init>(Ljava/io/File;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->worldAssets:Lcom/ahsim/demulation/RomRuntimeWorldAssets;

    .line 83
    new-instance v2, Lcom/ahsim/demulation/RomRuntimeAudioAssets;

    iget-object v5, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->installRoot:Ljava/io/File;

    iget-object v6, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->sourceProfile:Ljava/lang/String;

    invoke-direct {v2, v5, v6}, Lcom/ahsim/demulation/RomRuntimeAudioAssets;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->audioAssets:Lcom/ahsim/demulation/RomRuntimeAudioAssets;

    .line 84
    iput-object v3, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->russianVoiceAssets:Lcom/ahsim/demulation/RomRuntimeRussianVoiceAssets;

    .line 85
    new-instance v2, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;

    iget-object v3, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->installRoot:Ljava/io/File;

    iget-object v5, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->russianLocalizationAssets:Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;

    iget-object v6, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->sourceProfile:Ljava/lang/String;

    invoke-direct {v2, v3, v5, v6}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;-><init>(Ljava/io/File;Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->originalContentAssets:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;

    .line 86
    new-instance v2, Lcom/ahsim/demulation/RomRuntimeWorldDataAssets;

    iget-object v3, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->installRoot:Ljava/io/File;

    invoke-direct {v2, v3}, Lcom/ahsim/demulation/RomRuntimeWorldDataAssets;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->worldDataAssets:Lcom/ahsim/demulation/RomRuntimeWorldDataAssets;

    .line 87
    new-instance v2, Lcom/ahsim/demulation/RomRuntimeGameplayDataAssets;

    iget-object v3, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->installRoot:Ljava/io/File;

    iget-object v5, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->sourceProfile:Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Lcom/ahsim/demulation/RomRuntimeGameplayDataAssets;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->gameplayDataAssets:Lcom/ahsim/demulation/RomRuntimeGameplayDataAssets;

    .line 88
    new-instance v2, Lcom/ahsim/demulation/RomRuntimeNativeDataAssets;

    iget-object v3, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->installRoot:Ljava/io/File;

    invoke-direct {v2, v3}, Lcom/ahsim/demulation/RomRuntimeNativeDataAssets;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->nativeDataAssets:Lcom/ahsim/demulation/RomRuntimeNativeDataAssets;

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;Lcom/ahsim/demulation/RomAssetInstallState-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;-><init>(Landroid/content/Context;Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;)V

    return-void
.end method
