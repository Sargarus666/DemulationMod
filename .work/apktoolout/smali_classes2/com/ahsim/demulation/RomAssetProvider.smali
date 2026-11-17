.class public final Lcom/ahsim/demulation/RomAssetProvider;
.super Ljava/lang/Object;
.source "RomAssetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomAssetProvider$InstallOutcome;,
        Lcom/ahsim/demulation/RomAssetProvider$InstallListener;,
        Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;,
        Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;
    }
.end annotation


# static fields
.field public static final CORE_RECEIPT:Ljava/lang/String; = "core_bootstrap.properties"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static clearAllStaging(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1279
    :try_start_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->stagingRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore;->deleteRecursively(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1282
    goto :goto_0

    .line 1280
    :catch_0
    move-exception v0

    .line 1283
    :goto_0
    return-void
.end method

.method public static clearAudioStaging(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1271
    :try_start_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->audioStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider;->deleteRecursively(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1274
    goto :goto_0

    .line 1272
    :catch_0
    move-exception v0

    .line 1275
    :goto_0
    return-void
.end method

.method public static clearCoreStaging(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1365
    :try_start_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->coreStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore;->deleteRecursively(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1368
    goto :goto_0

    .line 1366
    :catch_0
    move-exception v0

    .line 1369
    :goto_0
    return-void
.end method

.method public static clearEndingGraphicsStaging(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1306
    nop

    .line 1307
    :try_start_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->endingGraphicsStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 1306
    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->deleteRecursively(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1310
    goto :goto_0

    .line 1308
    :catch_0
    move-exception v0

    .line 1311
    :goto_0
    return-void
.end method

.method public static clearFrontendDirectStaging(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1349
    :try_start_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->frontendDirectStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->deleteRecursively(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1352
    goto :goto_0

    .line 1350
    :catch_0
    move-exception v0

    .line 1353
    :goto_0
    return-void
.end method

.method public static clearFrontendStaging(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1357
    :try_start_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->frontendStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider;->deleteRecursively(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1360
    goto :goto_0

    .line 1358
    :catch_0
    move-exception v0

    .line 1361
    :goto_0
    return-void
.end method

.method public static clearGameplayDataStaging(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1246
    :try_start_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->gameplayDataStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->deleteRecursively(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1249
    goto :goto_0

    .line 1247
    :catch_0
    move-exception v0

    .line 1250
    :goto_0
    return-void
.end method

.method public static clearMentatStaging(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1341
    :try_start_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->mentatStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->deleteRecursively(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1344
    goto :goto_0

    .line 1342
    :catch_0
    move-exception v0

    .line 1345
    :goto_0
    return-void
.end method

.method public static clearMissionResultGraphicsStaging(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1315
    nop

    .line 1316
    :try_start_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->missionResultGraphicsStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 1315
    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->deleteRecursively(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1319
    goto :goto_0

    .line 1317
    :catch_0
    move-exception v0

    .line 1320
    :goto_0
    return-void
.end method

.method public static clearMissionTransitionStaging(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1332
    nop

    .line 1333
    :try_start_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->missionTransitionStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 1332
    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->deleteRecursively(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1336
    goto :goto_0

    .line 1334
    :catch_0
    move-exception v0

    .line 1337
    :goto_0
    return-void
.end method

.method public static clearNativeDataStaging(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1238
    :try_start_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->nativeDataStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->deleteRecursively(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1241
    goto :goto_0

    .line 1239
    :catch_0
    move-exception v0

    .line 1242
    :goto_0
    return-void
.end method

.method public static clearOriginalContentStaging(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1262
    nop

    .line 1263
    :try_start_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->originalContentStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 1262
    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->deleteRecursively(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1266
    goto :goto_0

    .line 1264
    :catch_0
    move-exception v0

    .line 1267
    :goto_0
    return-void
.end method

.method public static clearTutorialStaging(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1324
    :try_start_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->tutorialStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->deleteRecursively(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    goto :goto_0

    .line 1325
    :catch_0
    move-exception v0

    .line 1328
    :goto_0
    return-void
.end method

.method public static clearWorldDataStaging(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1254
    :try_start_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->worldDataStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider;->deleteRecursively(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1257
    goto :goto_0

    .line 1255
    :catch_0
    move-exception v0

    .line 1258
    :goto_0
    return-void
.end method

.method public static clearWorldTacticalSpriteStaging(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1288
    nop

    .line 1289
    :try_start_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->worldTacticalSpriteStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 1288
    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->deleteRecursively(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1292
    goto :goto_0

    .line 1290
    :catch_0
    move-exception v0

    .line 1293
    :goto_0
    return-void
.end method

.method public static clearWorldTerrainRadarStaging(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1297
    nop

    .line 1298
    :try_start_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->worldTerrainRadarStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 1297
    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->deleteRecursively(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1301
    goto :goto_0

    .line 1299
    :catch_0
    move-exception v0

    .line 1302
    :goto_0
    return-void
.end method

.method public static extractCore(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;)Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .param p2, "identity"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .param p3, "listener"    # Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    if-eqz p1, :cond_5

    iget-object v0, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_5

    .line 75
    if-eqz p2, :cond_4

    iget-object v0, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->assetCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    sget-object v1, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->INCOMPATIBLE:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    if-eq v0, v1, :cond_4

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 80
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->coreStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 81
    .local v1, "staging":Ljava/io/File;
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/ahsim/demulation/RomAssetProvider;->openProviderInput(Landroid/content/ContentResolver;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .local v2, "input":Ljava/io/InputStream;
    if-eqz v2, :cond_2

    .line 83
    :try_start_1
    iget-wide v3, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->size:J

    invoke-static {v2, v3, v4, v1, p3}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore;->extractCore(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;)Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;

    move-result-object v3

    .line 85
    .local v3, "result":Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;
    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;->allVerified()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    invoke-static {v1, p2, v3}, Lcom/ahsim/demulation/RomAssetProvider;->writeReceipt(Ljava/io/File;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :cond_0
    nop

    .line 89
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 88
    :cond_1
    return-object v3

    .line 81
    .end local v3    # "result":Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 82
    :cond_2
    :try_start_3
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Selected ROM cannot be opened"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "staging":Ljava/io/File;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "staging":Ljava/io/File;
    .restart local v2    # "input":Ljava/io/InputStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;
    :goto_0
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "staging":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;
    :cond_3
    :goto_1
    throw v3
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 92
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "staging":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Ljava/io/IOException;
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearCoreStaging(Landroid/content/Context;)V

    .line 94
    throw v2

    .line 89
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 90
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearCoreStaging(Landroid/content/Context;)V

    .line 91
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Read access to the selected ROM was revoked"

    invoke-direct {v3, v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 76
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "staging":Ljava/io/File;
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Selected file is not an asset-compatible ROM candidate"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No ROM is selected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static extractEndingGraphics(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .param p2, "identity"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .param p3, "listener"    # Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 284
    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->assetCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    sget-object v1, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->INCOMPATIBLE:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    if-eq v0, v1, :cond_3

    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 288
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->endingGraphicsStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 289
    .local v5, "staging":Ljava/io/File;
    :try_start_0
    invoke-static {v1, p1, p2}, Lcom/ahsim/demulation/RomAssetProvider;->openProviderInput(Landroid/content/ContentResolver;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 290
    .local v2, "input":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 291
    :try_start_1
    iget-wide v3, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->size:J

    iget-object v7, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    .local v6, "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    :try_start_2
    invoke-static/range {v2 .. v7}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 293
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 291
    :cond_0
    return-object p3

    .line 289
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    :catchall_0
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    goto :goto_0

    .line 290
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    :cond_1
    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    :try_start_4
    new-instance p3, Ljava/io/IOException;

    const-string v0, "Selected ROM cannot be opened"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 289
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "input":Ljava/io/InputStream;
    .restart local v5    # "staging":Ljava/io/File;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :catchall_1
    move-exception v0

    move-object p3, v0

    :goto_0
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {p3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :cond_2
    :goto_1
    throw p3
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 296
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "staging":Ljava/io/File;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :catch_0
    move-exception v0

    move-object p3, v0

    goto :goto_2

    .line 293
    :catch_1
    move-exception v0

    move-object p3, v0

    goto :goto_3

    .line 296
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    :catch_2
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .line 297
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    .local p3, "e":Ljava/io/IOException;
    :goto_2
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearEndingGraphicsStaging(Landroid/content/Context;)V

    .line 298
    throw p3

    .line 293
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    .local p3, "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    :catch_3
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .line 294
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    .local p3, "e":Ljava/lang/SecurityException;
    :goto_3
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearEndingGraphicsStaging(Landroid/content/Context;)V

    .line 295
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Read access to the selected ROM was revoked"

    invoke-direct {v0, v2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 284
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    .local p3, "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    :cond_3
    move-object v6, p3

    .line 285
    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    new-instance p3, Ljava/io/IOException;

    const-string v0, "Selected file is not an asset-compatible ROM candidate"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 283
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    :cond_4
    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    new-instance p3, Ljava/io/IOException;

    const-string v0, "No ROM is selected"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public static extractFrontendDirect(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$Result;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .param p2, "identity"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .param p3, "listener"    # Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 159
    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->assetCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    sget-object v1, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->INCOMPATIBLE:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    if-eq v0, v1, :cond_3

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 163
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->frontendDirectStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 164
    .local v5, "staging":Ljava/io/File;
    :try_start_0
    invoke-static {v1, p1, p2}, Lcom/ahsim/demulation/RomAssetProvider;->openProviderInput(Landroid/content/ContentResolver;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 165
    .local v2, "input":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 166
    :try_start_1
    iget-wide v3, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->size:J

    iget-object v7, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    .local v6, "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    :try_start_2
    invoke-static/range {v2 .. v7}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$Result;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 167
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 166
    :cond_0
    return-object p3

    .line 164
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    :catchall_0
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    goto :goto_0

    .line 165
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    :cond_1
    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    :try_start_4
    new-instance p3, Ljava/io/IOException;

    const-string v0, "Selected ROM cannot be opened"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 164
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "input":Ljava/io/InputStream;
    .restart local v5    # "staging":Ljava/io/File;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :catchall_1
    move-exception v0

    move-object p3, v0

    :goto_0
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {p3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :cond_2
    :goto_1
    throw p3
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 170
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "staging":Ljava/io/File;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :catch_0
    move-exception v0

    move-object p3, v0

    goto :goto_2

    .line 167
    :catch_1
    move-exception v0

    move-object p3, v0

    goto :goto_3

    .line 170
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    :catch_2
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .line 171
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    .local p3, "e":Ljava/io/IOException;
    :goto_2
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearFrontendDirectStaging(Landroid/content/Context;)V

    .line 172
    throw p3

    .line 167
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    .local p3, "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    :catch_3
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .line 168
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    .local p3, "e":Ljava/lang/SecurityException;
    :goto_3
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearFrontendDirectStaging(Landroid/content/Context;)V

    .line 169
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Read access to the selected ROM was revoked"

    invoke-direct {v0, v2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 159
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    .local p3, "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    :cond_3
    move-object v6, p3

    .line 160
    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    new-instance p3, Ljava/io/IOException;

    const-string v0, "Selected file is not an asset-compatible ROM candidate"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 158
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    :cond_4
    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    new-instance p3, Ljava/io/IOException;

    const-string v0, "No ROM is selected"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public static extractFrontendGeneric(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$Result;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .param p2, "identity"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .param p3, "listener"    # Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 135
    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->assetCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    sget-object v1, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->INCOMPATIBLE:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    if-eq v0, v1, :cond_3

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 139
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->frontendStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 140
    .local v5, "staging":Ljava/io/File;
    :try_start_0
    invoke-static {v1, p1, p2}, Lcom/ahsim/demulation/RomAssetProvider;->openProviderInput(Landroid/content/ContentResolver;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 141
    .local v2, "input":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 142
    :try_start_1
    iget-wide v3, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->size:J

    iget-object v7, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;
    .local v6, "listener":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;
    :try_start_2
    invoke-static/range {v2 .. v7}, Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider;->extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$Result;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 143
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 142
    :cond_0
    return-object p3

    .line 140
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;
    :catchall_0
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;
    goto :goto_0

    .line 141
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;
    :cond_1
    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;
    :try_start_4
    new-instance p3, Ljava/io/IOException;

    const-string v0, "Selected ROM cannot be opened"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 140
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "input":Ljava/io/InputStream;
    .restart local v5    # "staging":Ljava/io/File;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :catchall_1
    move-exception v0

    move-object p3, v0

    :goto_0
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {p3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :cond_2
    :goto_1
    throw p3
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 146
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "staging":Ljava/io/File;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :catch_0
    move-exception v0

    move-object p3, v0

    goto :goto_2

    .line 143
    :catch_1
    move-exception v0

    move-object p3, v0

    goto :goto_3

    .line 146
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;
    :catch_2
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .line 147
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;
    .local p3, "e":Ljava/io/IOException;
    :goto_2
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearFrontendStaging(Landroid/content/Context;)V

    .line 148
    throw p3

    .line 143
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;
    .local p3, "listener":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;
    :catch_3
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .line 144
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;
    .local p3, "e":Ljava/lang/SecurityException;
    :goto_3
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearFrontendStaging(Landroid/content/Context;)V

    .line 145
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Read access to the selected ROM was revoked"

    invoke-direct {v0, v2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 135
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;
    .local p3, "listener":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;
    :cond_3
    move-object v6, p3

    .line 136
    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;
    new-instance p3, Ljava/io/IOException;

    const-string v0, "Selected file is not an asset-compatible ROM candidate"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 134
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;
    :cond_4
    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;
    new-instance p3, Ljava/io/IOException;

    const-string v0, "No ROM is selected"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public static extractGameplayData(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .param p2, "identity"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .param p3, "listener"    # Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 480
    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->assetCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    sget-object v1, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->INCOMPATIBLE:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    if-eq v0, v1, :cond_3

    .line 483
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 484
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->gameplayDataStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 485
    .local v5, "staging":Ljava/io/File;
    :try_start_0
    invoke-static {v1, p1, p2}, Lcom/ahsim/demulation/RomAssetProvider;->openProviderInput(Landroid/content/ContentResolver;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 486
    .local v2, "input":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 487
    :try_start_1
    iget-wide v3, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->size:J

    iget-object v7, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    .local v6, "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    :try_start_2
    invoke-static/range {v2 .. v7}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 489
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 487
    :cond_0
    return-object p3

    .line 485
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    :catchall_0
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    goto :goto_0

    .line 486
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    :cond_1
    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    :try_start_4
    new-instance p3, Ljava/io/IOException;

    const-string v0, "Selected ROM cannot be opened"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 485
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "input":Ljava/io/InputStream;
    .restart local v5    # "staging":Ljava/io/File;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :catchall_1
    move-exception v0

    move-object p3, v0

    :goto_0
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {p3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :cond_2
    :goto_1
    throw p3
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 492
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "staging":Ljava/io/File;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :catch_0
    move-exception v0

    move-object p3, v0

    goto :goto_2

    .line 489
    :catch_1
    move-exception v0

    move-object p3, v0

    goto :goto_3

    .line 492
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    :catch_2
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .line 493
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    .local p3, "e":Ljava/io/IOException;
    :goto_2
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearGameplayDataStaging(Landroid/content/Context;)V

    .line 494
    throw p3

    .line 489
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    .local p3, "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    :catch_3
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .line 490
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    .local p3, "e":Ljava/lang/SecurityException;
    :goto_3
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearGameplayDataStaging(Landroid/content/Context;)V

    .line 491
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Read access to the selected ROM was revoked"

    invoke-direct {v0, v2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 480
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    .local p3, "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    :cond_3
    move-object v6, p3

    .line 481
    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    new-instance p3, Ljava/io/IOException;

    const-string v0, "Selected file is not an asset-compatible ROM candidate"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 479
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    :cond_4
    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    new-instance p3, Ljava/io/IOException;

    const-string v0, "No ROM is selected"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public static extractMentat(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$Result;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .param p2, "identity"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .param p3, "listener"    # Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 183
    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->assetCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    sget-object v1, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->INCOMPATIBLE:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    if-eq v0, v1, :cond_3

    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 187
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->mentatStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 188
    .local v5, "staging":Ljava/io/File;
    :try_start_0
    invoke-static {v1, p1, p2}, Lcom/ahsim/demulation/RomAssetProvider;->openProviderInput(Landroid/content/ContentResolver;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 189
    .local v2, "input":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 190
    :try_start_1
    iget-wide v3, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->size:J

    iget-object v7, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    .local v6, "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    :try_start_2
    invoke-static/range {v2 .. v7}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$Result;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 191
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 190
    :cond_0
    return-object p3

    .line 188
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    :catchall_0
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    goto :goto_0

    .line 189
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    :cond_1
    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    :try_start_4
    new-instance p3, Ljava/io/IOException;

    const-string v0, "Selected ROM cannot be opened"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 188
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "input":Ljava/io/InputStream;
    .restart local v5    # "staging":Ljava/io/File;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :catchall_1
    move-exception v0

    move-object p3, v0

    :goto_0
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {p3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :cond_2
    :goto_1
    throw p3
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 194
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "staging":Ljava/io/File;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :catch_0
    move-exception v0

    move-object p3, v0

    goto :goto_2

    .line 191
    :catch_1
    move-exception v0

    move-object p3, v0

    goto :goto_3

    .line 194
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    :catch_2
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .line 195
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    .local p3, "e":Ljava/io/IOException;
    :goto_2
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearMentatStaging(Landroid/content/Context;)V

    .line 196
    throw p3

    .line 191
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    .local p3, "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    :catch_3
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .line 192
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    .local p3, "e":Ljava/lang/SecurityException;
    :goto_3
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearMentatStaging(Landroid/content/Context;)V

    .line 193
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Read access to the selected ROM was revoked"

    invoke-direct {v0, v2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 183
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    .local p3, "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    :cond_3
    move-object v6, p3

    .line 184
    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    new-instance p3, Ljava/io/IOException;

    const-string v0, "Selected file is not an asset-compatible ROM candidate"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 182
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    :cond_4
    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    new-instance p3, Ljava/io/IOException;

    const-string v0, "No ROM is selected"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public static extractMissionCampaignTransition(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .param p2, "identity"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .param p3, "listener"    # Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 333
    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->assetCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    sget-object v1, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->INCOMPATIBLE:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    if-eq v0, v1, :cond_3

    .line 336
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 337
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->missionTransitionStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 338
    .local v5, "staging":Ljava/io/File;
    :try_start_0
    invoke-static {v1, p1, p2}, Lcom/ahsim/demulation/RomAssetProvider;->openProviderInput(Landroid/content/ContentResolver;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 339
    .local v2, "input":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 340
    :try_start_1
    iget-wide v3, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->size:J

    iget-object v7, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    .local v6, "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    :try_start_2
    invoke-static/range {v2 .. v7}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 341
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 340
    :cond_0
    return-object p3

    .line 338
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    :catchall_0
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    goto :goto_0

    .line 339
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    :cond_1
    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    :try_start_4
    new-instance p3, Ljava/io/IOException;

    const-string v0, "Selected ROM cannot be opened"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 338
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "input":Ljava/io/InputStream;
    .restart local v5    # "staging":Ljava/io/File;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :catchall_1
    move-exception v0

    move-object p3, v0

    :goto_0
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {p3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :cond_2
    :goto_1
    throw p3
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 344
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "staging":Ljava/io/File;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :catch_0
    move-exception v0

    move-object p3, v0

    goto :goto_2

    .line 341
    :catch_1
    move-exception v0

    move-object p3, v0

    goto :goto_3

    .line 344
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    :catch_2
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .line 345
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    .local p3, "e":Ljava/io/IOException;
    :goto_2
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearMissionTransitionStaging(Landroid/content/Context;)V

    .line 346
    throw p3

    .line 341
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    .local p3, "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    :catch_3
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .line 342
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    .local p3, "e":Ljava/lang/SecurityException;
    :goto_3
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearMissionTransitionStaging(Landroid/content/Context;)V

    .line 343
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Read access to the selected ROM was revoked"

    invoke-direct {v0, v2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 333
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    .local p3, "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    :cond_3
    move-object v6, p3

    .line 334
    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    new-instance p3, Ljava/io/IOException;

    const-string v0, "Selected file is not an asset-compatible ROM candidate"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 332
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    :cond_4
    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    new-instance p3, Ljava/io/IOException;

    const-string v0, "No ROM is selected"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public static extractMissionResultGraphics(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .param p2, "identity"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .param p3, "listener"    # Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 209
    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->assetCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    sget-object v1, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->INCOMPATIBLE:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    if-eq v0, v1, :cond_3

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 213
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->missionResultGraphicsStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 214
    .local v5, "staging":Ljava/io/File;
    :try_start_0
    invoke-static {v1, p1, p2}, Lcom/ahsim/demulation/RomAssetProvider;->openProviderInput(Landroid/content/ContentResolver;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 215
    .local v2, "input":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 216
    :try_start_1
    iget-wide v3, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->size:J

    iget-object v7, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    .local v6, "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    :try_start_2
    invoke-static/range {v2 .. v7}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 218
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 216
    :cond_0
    return-object p3

    .line 214
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    :catchall_0
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    goto :goto_0

    .line 215
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    :cond_1
    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    :try_start_4
    new-instance p3, Ljava/io/IOException;

    const-string v0, "Selected ROM cannot be opened"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 214
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "input":Ljava/io/InputStream;
    .restart local v5    # "staging":Ljava/io/File;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :catchall_1
    move-exception v0

    move-object p3, v0

    :goto_0
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {p3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :cond_2
    :goto_1
    throw p3
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 221
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "staging":Ljava/io/File;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :catch_0
    move-exception v0

    move-object p3, v0

    goto :goto_2

    .line 218
    :catch_1
    move-exception v0

    move-object p3, v0

    goto :goto_3

    .line 221
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    :catch_2
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .line 222
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    .local p3, "e":Ljava/io/IOException;
    :goto_2
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearMissionResultGraphicsStaging(Landroid/content/Context;)V

    .line 223
    throw p3

    .line 218
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    .local p3, "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    :catch_3
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .line 219
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    .local p3, "e":Ljava/lang/SecurityException;
    :goto_3
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearMissionResultGraphicsStaging(Landroid/content/Context;)V

    .line 220
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Read access to the selected ROM was revoked"

    invoke-direct {v0, v2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 209
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    .local p3, "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    :cond_3
    move-object v6, p3

    .line 210
    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    new-instance p3, Ljava/io/IOException;

    const-string v0, "Selected file is not an asset-compatible ROM candidate"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 208
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    :cond_4
    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    new-instance p3, Ljava/io/IOException;

    const-string v0, "No ROM is selected"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public static extractNativeData(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .param p2, "identity"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .param p3, "listener"    # Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 505
    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->assetCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    sget-object v1, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->INCOMPATIBLE:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    if-eq v0, v1, :cond_3

    .line 508
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 509
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->nativeDataStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 510
    .local v1, "staging":Ljava/io/File;
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/ahsim/demulation/RomAssetProvider;->openProviderInput(Landroid/content/ContentResolver;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    .local v2, "input":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 512
    :try_start_1
    iget-wide v3, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->size:J

    invoke-static {v2, v3, v4, v1, p3}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 513
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 512
    :cond_0
    return-object v3

    .line 510
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 511
    :cond_1
    :try_start_3
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Selected ROM cannot be opened"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "staging":Ljava/io/File;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$ProgressListener;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 510
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "staging":Ljava/io/File;
    .restart local v2    # "input":Ljava/io/InputStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$ProgressListener;
    :goto_0
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "staging":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$ProgressListener;
    :cond_2
    :goto_1
    throw v3
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 516
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "staging":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$ProgressListener;
    :catch_0
    move-exception v2

    .line 517
    .local v2, "e":Ljava/io/IOException;
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearNativeDataStaging(Landroid/content/Context;)V

    .line 518
    throw v2

    .line 513
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 514
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearNativeDataStaging(Landroid/content/Context;)V

    .line 515
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Read access to the selected ROM was revoked"

    invoke-direct {v3, v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 506
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "staging":Ljava/io/File;
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Selected file is not an asset-compatible ROM candidate"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No ROM is selected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static extractOriginalAudio(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .param p2, "identity"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .param p3, "listener"    # Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 358
    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->assetCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    sget-object v1, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->INCOMPATIBLE:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    if-eq v0, v1, :cond_3

    .line 361
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 362
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->audioStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 363
    .local v5, "staging":Ljava/io/File;
    :try_start_0
    invoke-static {v1, p1, p2}, Lcom/ahsim/demulation/RomAssetProvider;->openProviderInput(Landroid/content/ContentResolver;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 364
    .local v2, "input":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 365
    :try_start_1
    iget-wide v3, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->size:J

    iget-object v7, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    .local v6, "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    :try_start_2
    invoke-static/range {v2 .. v7}, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider;->extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 366
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 365
    :cond_0
    return-object p3

    .line 363
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    :catchall_0
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    goto :goto_0

    .line 364
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    :cond_1
    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    :try_start_4
    new-instance p3, Ljava/io/IOException;

    const-string v0, "Selected ROM cannot be opened"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 363
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "input":Ljava/io/InputStream;
    .restart local v5    # "staging":Ljava/io/File;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :catchall_1
    move-exception v0

    move-object p3, v0

    :goto_0
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {p3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :cond_2
    :goto_1
    throw p3
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 369
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "staging":Ljava/io/File;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :catch_0
    move-exception v0

    move-object p3, v0

    goto :goto_2

    .line 366
    :catch_1
    move-exception v0

    move-object p3, v0

    goto :goto_3

    .line 369
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    :catch_2
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .line 370
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    .local p3, "e":Ljava/io/IOException;
    :goto_2
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearAudioStaging(Landroid/content/Context;)V

    .line 371
    throw p3

    .line 366
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    .local p3, "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    :catch_3
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .line 367
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    .local p3, "e":Ljava/lang/SecurityException;
    :goto_3
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearAudioStaging(Landroid/content/Context;)V

    .line 368
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Read access to the selected ROM was revoked"

    invoke-direct {v0, v2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 358
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    .local p3, "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    :cond_3
    move-object v6, p3

    .line 359
    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    new-instance p3, Ljava/io/IOException;

    const-string v0, "Selected file is not an asset-compatible ROM candidate"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 357
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    :cond_4
    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    new-instance p3, Ljava/io/IOException;

    const-string v0, "No ROM is selected"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public static extractOriginalContent(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .param p2, "identity"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .param p3, "listener"    # Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 382
    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->assetCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    sget-object v1, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->INCOMPATIBLE:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    if-eq v0, v1, :cond_3

    .line 385
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 386
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->originalContentStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 387
    .local v5, "staging":Ljava/io/File;
    :try_start_0
    invoke-static {v1, p1, p2}, Lcom/ahsim/demulation/RomAssetProvider;->openProviderInput(Landroid/content/ContentResolver;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 388
    .local v2, "input":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 389
    :try_start_1
    iget-wide v3, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->size:J

    iget-object v7, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    .local v6, "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    :try_start_2
    invoke-static/range {v2 .. v7}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 390
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 389
    :cond_0
    return-object p3

    .line 387
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    :catchall_0
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    goto :goto_0

    .line 388
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    :cond_1
    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    :try_start_4
    new-instance p3, Ljava/io/IOException;

    const-string v0, "Selected ROM cannot be opened"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 387
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "input":Ljava/io/InputStream;
    .restart local v5    # "staging":Ljava/io/File;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :catchall_1
    move-exception v0

    move-object p3, v0

    :goto_0
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {p3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :cond_2
    :goto_1
    throw p3
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 393
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "staging":Ljava/io/File;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :catch_0
    move-exception v0

    move-object p3, v0

    goto :goto_2

    .line 390
    :catch_1
    move-exception v0

    move-object p3, v0

    goto :goto_3

    .line 393
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    :catch_2
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .line 394
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    .local p3, "e":Ljava/io/IOException;
    :goto_2
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearOriginalContentStaging(Landroid/content/Context;)V

    .line 395
    throw p3

    .line 390
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    .local p3, "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    :catch_3
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .line 391
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    .local p3, "e":Ljava/lang/SecurityException;
    :goto_3
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearOriginalContentStaging(Landroid/content/Context;)V

    .line 392
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Read access to the selected ROM was revoked"

    invoke-direct {v0, v2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 382
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    .local p3, "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    :cond_3
    move-object v6, p3

    .line 383
    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    new-instance p3, Ljava/io/IOException;

    const-string v0, "Selected file is not an asset-compatible ROM candidate"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 381
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    :cond_4
    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    new-instance p3, Ljava/io/IOException;

    const-string v0, "No ROM is selected"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public static extractResultEndingOriginalContent(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .param p2, "identity"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .param p3, "listener"    # Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 431
    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->assetCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    sget-object v1, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->INCOMPATIBLE:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    if-eq v0, v1, :cond_3

    .line 434
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 435
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->originalContentStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 436
    .local v1, "staging":Ljava/io/File;
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/ahsim/demulation/RomAssetProvider;->openProviderInput(Landroid/content/ContentResolver;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    .local v2, "input":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 438
    :try_start_1
    iget-wide v3, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->size:J

    invoke-static {v2, v3, v4, v1, p3}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->extractResultEndingContent(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 438
    :cond_0
    return-object v3

    .line 436
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 437
    :cond_1
    :try_start_3
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Selected ROM cannot be opened"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "staging":Ljava/io/File;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 436
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "staging":Ljava/io/File;
    .restart local v2    # "input":Ljava/io/InputStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    :goto_0
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "staging":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    :cond_2
    :goto_1
    throw v3
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 443
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "staging":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    :catch_0
    move-exception v2

    .line 444
    .local v2, "e":Ljava/io/IOException;
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearOriginalContentStaging(Landroid/content/Context;)V

    .line 445
    throw v2

    .line 440
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 441
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearOriginalContentStaging(Landroid/content/Context;)V

    .line 442
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Read access to the selected ROM was revoked"

    invoke-direct {v3, v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 432
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "staging":Ljava/io/File;
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Selected file is not an asset-compatible ROM candidate"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No ROM is selected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static extractTutorial(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .param p2, "identity"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .param p3, "listener"    # Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 309
    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->assetCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    sget-object v1, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->INCOMPATIBLE:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    if-eq v0, v1, :cond_3

    .line 312
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 313
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->tutorialStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 314
    .local v5, "staging":Ljava/io/File;
    :try_start_0
    invoke-static {v1, p1, p2}, Lcom/ahsim/demulation/RomAssetProvider;->openProviderInput(Landroid/content/ContentResolver;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 315
    .local v2, "input":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 316
    :try_start_1
    iget-wide v3, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->size:J

    iget-object v7, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    .local v6, "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    :try_start_2
    invoke-static/range {v2 .. v7}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 317
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 316
    :cond_0
    return-object p3

    .line 314
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    :catchall_0
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    goto :goto_0

    .line 315
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    :cond_1
    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    :try_start_4
    new-instance p3, Ljava/io/IOException;

    const-string v0, "Selected ROM cannot be opened"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 314
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "input":Ljava/io/InputStream;
    .restart local v5    # "staging":Ljava/io/File;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :catchall_1
    move-exception v0

    move-object p3, v0

    :goto_0
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {p3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :cond_2
    :goto_1
    throw p3
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 320
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "staging":Ljava/io/File;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :catch_0
    move-exception v0

    move-object p3, v0

    goto :goto_2

    .line 317
    :catch_1
    move-exception v0

    move-object p3, v0

    goto :goto_3

    .line 320
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    :catch_2
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .line 321
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    .local p3, "e":Ljava/io/IOException;
    :goto_2
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearTutorialStaging(Landroid/content/Context;)V

    .line 322
    throw p3

    .line 317
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    .local p3, "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    :catch_3
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .line 318
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    .local p3, "e":Ljava/lang/SecurityException;
    :goto_3
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearTutorialStaging(Landroid/content/Context;)V

    .line 319
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Read access to the selected ROM was revoked"

    invoke-direct {v0, v2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 309
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    .local p3, "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    :cond_3
    move-object v6, p3

    .line 310
    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    new-instance p3, Ljava/io/IOException;

    const-string v0, "Selected file is not an asset-compatible ROM candidate"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 308
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    :cond_4
    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    new-instance p3, Ljava/io/IOException;

    const-string v0, "No ROM is selected"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public static extractTutorialOriginalContent(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .param p2, "identity"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .param p3, "listener"    # Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 406
    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->assetCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    sget-object v1, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->INCOMPATIBLE:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    if-eq v0, v1, :cond_3

    .line 409
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 410
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->originalContentStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 411
    .local v1, "staging":Ljava/io/File;
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/ahsim/demulation/RomAssetProvider;->openProviderInput(Landroid/content/ContentResolver;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    .local v2, "input":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 413
    :try_start_1
    iget-wide v3, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->size:J

    invoke-static {v2, v3, v4, v1, p3}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->extractTutorialContent(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 413
    :cond_0
    return-object v3

    .line 411
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 412
    :cond_1
    :try_start_3
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Selected ROM cannot be opened"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "staging":Ljava/io/File;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 411
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "staging":Ljava/io/File;
    .restart local v2    # "input":Ljava/io/InputStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    :goto_0
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "staging":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    :cond_2
    :goto_1
    throw v3
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 418
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "staging":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    :catch_0
    move-exception v2

    .line 419
    .local v2, "e":Ljava/io/IOException;
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearOriginalContentStaging(Landroid/content/Context;)V

    .line 420
    throw v2

    .line 415
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 416
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearOriginalContentStaging(Landroid/content/Context;)V

    .line 417
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Read access to the selected ROM was revoked"

    invoke-direct {v3, v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 407
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "staging":Ljava/io/File;
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Selected file is not an asset-compatible ROM candidate"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No ROM is selected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static extractWorldData(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .param p2, "identity"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .param p3, "listener"    # Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 456
    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->assetCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    sget-object v1, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->INCOMPATIBLE:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    if-eq v0, v1, :cond_3

    .line 459
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 460
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->worldDataStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 461
    .local v1, "staging":Ljava/io/File;
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/ahsim/demulation/RomAssetProvider;->openProviderInput(Landroid/content/ContentResolver;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .local v2, "input":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 463
    :try_start_1
    iget-wide v3, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->size:J

    invoke-static {v2, v3, v4, v1, p3}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider;->extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 463
    :cond_0
    return-object v3

    .line 461
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 462
    :cond_1
    :try_start_3
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Selected ROM cannot be opened"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "staging":Ljava/io/File;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$ProgressListener;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 461
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "staging":Ljava/io/File;
    .restart local v2    # "input":Ljava/io/InputStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$ProgressListener;
    :goto_0
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "staging":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$ProgressListener;
    :cond_2
    :goto_1
    throw v3
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 467
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "staging":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$ProgressListener;
    :catch_0
    move-exception v2

    .line 468
    .local v2, "e":Ljava/io/IOException;
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearWorldDataStaging(Landroid/content/Context;)V

    .line 469
    throw v2

    .line 464
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 465
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearWorldDataStaging(Landroid/content/Context;)V

    .line 466
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Read access to the selected ROM was revoked"

    invoke-direct {v3, v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 457
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "staging":Ljava/io/File;
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Selected file is not an asset-compatible ROM candidate"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No ROM is selected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static extractWorldTacticalSpriteGraphics(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .param p2, "identity"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .param p3, "listener"    # Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 259
    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->assetCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    sget-object v1, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->INCOMPATIBLE:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    if-eq v0, v1, :cond_3

    .line 262
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 263
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->worldTacticalSpriteStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 264
    .local v5, "staging":Ljava/io/File;
    :try_start_0
    invoke-static {v1, p1, p2}, Lcom/ahsim/demulation/RomAssetProvider;->openProviderInput(Landroid/content/ContentResolver;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 265
    .local v2, "input":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 266
    :try_start_1
    iget-wide v3, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->size:J

    iget-object v7, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .local v6, "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    :try_start_2
    invoke-static/range {v2 .. v7}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 268
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 266
    :cond_0
    return-object p3

    .line 264
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    :catchall_0
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    goto :goto_0

    .line 265
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    :cond_1
    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    :try_start_4
    new-instance p3, Ljava/io/IOException;

    const-string v0, "Selected ROM cannot be opened"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 264
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "input":Ljava/io/InputStream;
    .restart local v5    # "staging":Ljava/io/File;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :catchall_1
    move-exception v0

    move-object p3, v0

    :goto_0
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {p3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :cond_2
    :goto_1
    throw p3
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 271
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "staging":Ljava/io/File;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :catch_0
    move-exception v0

    move-object p3, v0

    goto :goto_2

    .line 268
    :catch_1
    move-exception v0

    move-object p3, v0

    goto :goto_3

    .line 271
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    :catch_2
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .line 272
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .local p3, "e":Ljava/io/IOException;
    :goto_2
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearWorldTacticalSpriteStaging(Landroid/content/Context;)V

    .line 273
    throw p3

    .line 268
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .local p3, "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    :catch_3
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .line 269
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .local p3, "e":Ljava/lang/SecurityException;
    :goto_3
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearWorldTacticalSpriteStaging(Landroid/content/Context;)V

    .line 270
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Read access to the selected ROM was revoked"

    invoke-direct {v0, v2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 259
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .local p3, "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    :cond_3
    move-object v6, p3

    .line 260
    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    new-instance p3, Ljava/io/IOException;

    const-string v0, "Selected file is not an asset-compatible ROM candidate"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 258
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    :cond_4
    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    new-instance p3, Ljava/io/IOException;

    const-string v0, "No ROM is selected"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public static extractWorldTerrainRadarGraphics(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .param p2, "identity"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .param p3, "listener"    # Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 234
    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->assetCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    sget-object v1, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->INCOMPATIBLE:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    if-eq v0, v1, :cond_3

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 238
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->worldTerrainRadarStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 239
    .local v5, "staging":Ljava/io/File;
    :try_start_0
    invoke-static {v1, p1, p2}, Lcom/ahsim/demulation/RomAssetProvider;->openProviderInput(Landroid/content/ContentResolver;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 240
    .local v2, "input":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 241
    :try_start_1
    iget-wide v3, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->size:J

    iget-object v7, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .local v6, "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    :try_start_2
    invoke-static/range {v2 .. v7}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 243
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 241
    :cond_0
    return-object p3

    .line 239
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    :catchall_0
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    goto :goto_0

    .line 240
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    :cond_1
    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    :try_start_4
    new-instance p3, Ljava/io/IOException;

    const-string v0, "Selected ROM cannot be opened"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 239
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "input":Ljava/io/InputStream;
    .restart local v5    # "staging":Ljava/io/File;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :catchall_1
    move-exception v0

    move-object p3, v0

    :goto_0
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {p3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :cond_2
    :goto_1
    throw p3
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 246
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "staging":Ljava/io/File;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :catch_0
    move-exception v0

    move-object p3, v0

    goto :goto_2

    .line 243
    :catch_1
    move-exception v0

    move-object p3, v0

    goto :goto_3

    .line 246
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    :catch_2
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .line 247
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .local p3, "e":Ljava/io/IOException;
    :goto_2
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearWorldTerrainRadarStaging(Landroid/content/Context;)V

    .line 248
    throw p3

    .line 243
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .local p3, "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    :catch_3
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .line 244
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .local p3, "e":Ljava/lang/SecurityException;
    :goto_3
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearWorldTerrainRadarStaging(Landroid/content/Context;)V

    .line 245
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Read access to the selected ROM was revoked"

    invoke-direct {v0, v2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 234
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "staging":Ljava/io/File;
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .local p3, "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    :cond_3
    move-object v6, p3

    .line 235
    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    new-instance p3, Ljava/io/IOException;

    const-string v0, "Selected file is not an asset-compatible ROM candidate"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 233
    .end local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .restart local p3    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    :cond_4
    move-object v6, p3

    .end local p3    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .restart local v6    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    new-instance p3, Ljava/io/IOException;

    const-string v0, "No ROM is selected"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public static installAssetBundle(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;Lcom/ahsim/demulation/RomAssetProvider$InstallListener;)Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;
    .locals 60
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .param p2, "identity"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .param p3, "progressListener"    # Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;
    .param p4, "installListener"    # Lcom/ahsim/demulation/RomAssetProvider$InstallListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 533
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    if-eqz v2, :cond_17

    iget-object v0, v2, Lcom/ahsim/demulation/RomSelectionStore$Selection;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_17

    .line 534
    if-eqz v3, :cond_16

    iget-boolean v0, v3, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->basePreparationSupported:Z

    if-eqz v0, :cond_16

    .line 538
    nop

    .line 539
    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetInstallState;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->recover(Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v5

    .line 540
    .local v5, "previous":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    invoke-static {}, Lcom/ahsim/demulation/RomAssetBundleManifest;->entries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 541
    .local v8, "total":I
    iget-object v0, v3, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ahsim/demulation/RomAssetBundleManifest;->payloadBytesForProfile(Ljava/lang/String;)J

    move-result-wide v9

    .line 542
    .local v9, "bundlePayloadBytes":J
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .local v11, "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 544
    .local v14, "verified":I
    invoke-static {}, Lcom/ahsim/demulation/RomAssetManifest;->coreEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v15

    .line 550
    .local v15, "legacyCoreEntries":I
    iget-boolean v0, v5, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->valid:Z

    if-eqz v0, :cond_6

    iget v0, v5, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->formatVersion:I

    const/16 v6, 0xe

    if-eq v0, v6, :cond_1

    iget v0, v5, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->formatVersion:I

    const/16 v6, 0xf

    if-eq v0, v6, :cond_1

    iget v0, v5, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->formatVersion:I

    const/16 v6, 0x10

    if-eq v0, v6, :cond_1

    iget v0, v5, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->formatVersion:I

    const/16 v6, 0x11

    if-ne v0, v6, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v17, v14

    goto/16 :goto_3

    :cond_1
    :goto_0
    iget-object v0, v5, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->groupId:Ljava/lang/String;

    .line 555
    const-string v6, "runtime_frontend_bundle_v1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v3, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->sha256:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, v3, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->sha256:Ljava/lang/String;

    iget-object v6, v5, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->sourceSha256:Ljava/lang/String;

    .line 556
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v5, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    if-eqz v0, :cond_4

    .line 558
    new-instance v0, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, v4, v8}, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda0;-><init>(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;I)V

    .line 559
    invoke-static {v1, v2, v3, v0}, Lcom/ahsim/demulation/RomAssetProvider;->extractWorldTacticalSpriteGraphics(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;

    move-result-object v6

    .line 565
    .local v6, "tactical":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;
    iget-object v0, v6, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;->mismatches:Ljava/util/List;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 566
    invoke-virtual {v6}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;->allVerified()Z

    move-result v0

    if-nez v0, :cond_2

    .line 567
    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetProvider;->clearWorldTacticalSpriteStaging(Landroid/content/Context;)V

    .line 568
    move-object v7, v6

    .end local v6    # "tactical":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;
    .local v7, "tactical":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;
    new-instance v6, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v16, v7

    .end local v7    # "tactical":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;
    .local v16, "tactical":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;
    const/4 v7, 0x0

    move/from16 v17, v14

    move-object/from16 v14, v16

    .end local v16    # "tactical":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;
    .local v14, "tactical":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;
    .local v17, "verified":I
    invoke-direct/range {v6 .. v13}, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;-><init>(IIJLjava/util/List;Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;Lcom/ahsim/demulation/RomAssetProvider-IA;)V

    return-object v6

    .line 570
    .end local v17    # "verified":I
    .restart local v6    # "tactical":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;
    .local v14, "verified":I
    :cond_2
    move/from16 v17, v14

    move-object v14, v6

    .end local v6    # "tactical":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;
    .local v14, "tactical":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;
    .restart local v17    # "verified":I
    if-eqz p4, :cond_3

    invoke-interface/range {p4 .. p4}, Lcom/ahsim/demulation/RomAssetProvider$InstallListener;->onInstalling()V

    .line 572
    :cond_3
    nop

    .line 574
    :try_start_0
    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetInstallState;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v18

    iget-object v0, v5, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    iget-object v6, v5, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    iget-object v7, v5, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    iget-object v12, v5, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    iget-object v13, v5, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    move-object/from16 v20, v0

    iget-object v0, v5, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    move-object/from16 v25, v0

    iget-object v0, v5, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    move-object/from16 v26, v0

    iget-object v0, v5, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    move-object/from16 v27, v0

    iget-object v0, v14, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;->stagedRoot:Ljava/io/File;

    move-object/from16 v28, v0

    iget-object v0, v5, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    move-object/from16 v29, v0

    iget-object v0, v5, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    move-object/from16 v30, v0

    iget-object v0, v5, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    move-object/from16 v31, v0

    iget-object v0, v5, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    move-object/from16 v32, v0

    iget-object v0, v5, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    move-object/from16 v33, v0

    iget-object v0, v3, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->sha256:Ljava/lang/String;

    move-object/from16 v34, v0

    iget-object v0, v3, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileId:Ljava/lang/String;

    .line 573
    const/16 v19, 0x0

    move-object/from16 v35, v0

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    invoke-static/range {v18 .. v35}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->installRegionAwareV17(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;

    move-result-object v12

    .line 581
    .local v12, "bundle":Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;
    new-instance v6, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v13, 0x0

    move v7, v8

    .end local v8    # "total":I
    .local v7, "total":I
    :try_start_1
    invoke-direct/range {v6 .. v13}, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;-><init>(IIJLjava/util/List;Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;Lcom/ahsim/demulation/RomAssetProvider-IA;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v7    # "total":I
    .restart local v8    # "total":I
    return-object v6

    .line 585
    .end local v8    # "total":I
    .end local v12    # "bundle":Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;
    .restart local v7    # "total":I
    :catch_0
    move-exception v0

    move v8, v7

    .end local v7    # "total":I
    .restart local v8    # "total":I
    goto :goto_1

    .line 582
    .end local v8    # "total":I
    .restart local v7    # "total":I
    :catch_1
    move-exception v0

    move v8, v7

    .end local v7    # "total":I
    .restart local v8    # "total":I
    goto :goto_2

    .line 585
    :catch_2
    move-exception v0

    .line 586
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetProvider;->clearAllStaging(Landroid/content/Context;)V

    .line 587
    throw v0

    .line 582
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v0

    .line 583
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetProvider;->clearAllStaging(Landroid/content/Context;)V

    .line 584
    throw v0

    .line 556
    .end local v0    # "e":Ljava/io/IOException;
    .end local v17    # "verified":I
    .local v14, "verified":I
    :cond_4
    move/from16 v17, v14

    .end local v14    # "verified":I
    .restart local v17    # "verified":I
    goto :goto_3

    .line 555
    .end local v17    # "verified":I
    .restart local v14    # "verified":I
    :cond_5
    move/from16 v17, v14

    .end local v14    # "verified":I
    .restart local v17    # "verified":I
    goto :goto_3

    .line 550
    .end local v17    # "verified":I
    .restart local v14    # "verified":I
    :cond_6
    move/from16 v17, v14

    .line 594
    .end local v14    # "verified":I
    .restart local v17    # "verified":I
    :goto_3
    const/4 v14, 0x0

    .line 598
    .local v14, "allowLegacyFastMigration":Z
    const/4 v0, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/ahsim/demulation/RomAssetProvider;->extractNativeData(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;

    move-result-object v6

    .line 599
    .local v6, "nativeData":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;
    iget-object v7, v6, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;->mismatches:Ljava/util/List;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 600
    invoke-virtual {v6}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;->allVerified()Z

    move-result v7

    if-nez v7, :cond_7

    .line 601
    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetProvider;->clearNativeDataStaging(Landroid/content/Context;)V

    .line 602
    move-object v7, v6

    .end local v6    # "nativeData":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;
    .local v7, "nativeData":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;
    new-instance v6, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v16, v7

    .end local v7    # "nativeData":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;
    .local v16, "nativeData":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;
    const/4 v7, 0x0

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    .end local v16    # "nativeData":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;
    .local v5, "nativeData":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;
    .local v18, "previous":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    invoke-direct/range {v6 .. v13}, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;-><init>(IIJLjava/util/List;Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;Lcom/ahsim/demulation/RomAssetProvider-IA;)V

    return-object v6

    .line 634
    .end local v18    # "previous":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .local v5, "previous":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .restart local v6    # "nativeData":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;
    :cond_7
    move-object/from16 v18, v5

    move-object v5, v6

    .end local v6    # "nativeData":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;
    .local v5, "nativeData":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;
    .restart local v18    # "previous":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    invoke-static {v1, v2, v3, v0}, Lcom/ahsim/demulation/RomAssetProvider;->extractGameplayData(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;

    move-result-object v6

    .line 635
    .local v6, "gameplayData":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    iget-object v7, v6, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;->mismatches:Ljava/util/List;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 636
    invoke-virtual {v6}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;->allVerified()Z

    move-result v7

    if-nez v7, :cond_8

    .line 637
    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetProvider;->clearGameplayDataStaging(Landroid/content/Context;)V

    .line 638
    move-object v7, v6

    .end local v6    # "gameplayData":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    .local v7, "gameplayData":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    new-instance v6, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v16, v7

    .end local v7    # "gameplayData":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    .local v16, "gameplayData":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    const/4 v7, 0x0

    move/from16 v19, v14

    move-object/from16 v14, v16

    .end local v16    # "gameplayData":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    .local v14, "gameplayData":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    .local v19, "allowLegacyFastMigration":Z
    invoke-direct/range {v6 .. v13}, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;-><init>(IIJLjava/util/List;Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;Lcom/ahsim/demulation/RomAssetProvider-IA;)V

    return-object v6

    .line 670
    .end local v19    # "allowLegacyFastMigration":Z
    .restart local v6    # "gameplayData":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    .local v14, "allowLegacyFastMigration":Z
    :cond_8
    move/from16 v19, v14

    move-object v14, v6

    .end local v6    # "gameplayData":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    .local v14, "gameplayData":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    .restart local v19    # "allowLegacyFastMigration":Z
    invoke-static {v1, v2, v3, v0}, Lcom/ahsim/demulation/RomAssetProvider;->extractWorldData(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;

    move-result-object v6

    .line 671
    .local v6, "worldData":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;
    iget-object v7, v6, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;->mismatches:Ljava/util/List;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 672
    invoke-virtual {v6}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;->allVerified()Z

    move-result v7

    if-nez v7, :cond_9

    .line 673
    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetProvider;->clearWorldDataStaging(Landroid/content/Context;)V

    .line 674
    move-object v7, v6

    .end local v6    # "worldData":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;
    .local v7, "worldData":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;
    new-instance v6, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v16, v7

    .end local v7    # "worldData":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;
    .local v16, "worldData":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;
    const/4 v7, 0x0

    move/from16 v20, v15

    move-object/from16 v15, v16

    .end local v16    # "worldData":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;
    .local v15, "worldData":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;
    .local v20, "legacyCoreEntries":I
    invoke-direct/range {v6 .. v13}, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;-><init>(IIJLjava/util/List;Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;Lcom/ahsim/demulation/RomAssetProvider-IA;)V

    return-object v6

    .line 745
    .end local v20    # "legacyCoreEntries":I
    .restart local v6    # "worldData":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;
    .local v15, "legacyCoreEntries":I
    :cond_9
    move/from16 v20, v15

    move-object v15, v6

    .end local v6    # "worldData":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;
    .local v15, "worldData":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;
    .restart local v20    # "legacyCoreEntries":I
    invoke-static {v1, v2, v3, v0}, Lcom/ahsim/demulation/RomAssetProvider;->extractOriginalContent(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;

    move-result-object v6

    .line 747
    .local v6, "content":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    iget-object v7, v6, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;->mismatches:Ljava/util/List;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 748
    invoke-virtual {v6}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;->allVerified()Z

    move-result v7

    if-nez v7, :cond_a

    .line 749
    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetProvider;->clearOriginalContentStaging(Landroid/content/Context;)V

    .line 750
    move-object v7, v6

    .end local v6    # "content":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    .local v7, "content":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    new-instance v6, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v16, v7

    .end local v7    # "content":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    .local v16, "content":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    const/4 v7, 0x0

    move-object/from16 v21, v5

    move-object/from16 v5, v16

    .end local v16    # "content":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    .local v5, "content":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    .local v21, "nativeData":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;
    invoke-direct/range {v6 .. v13}, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;-><init>(IIJLjava/util/List;Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;Lcom/ahsim/demulation/RomAssetProvider-IA;)V

    return-object v6

    .line 783
    .end local v21    # "nativeData":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;
    .local v5, "nativeData":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;
    .restart local v6    # "content":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    :cond_a
    move-object/from16 v21, v5

    move-object v5, v6

    .end local v6    # "content":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    .local v5, "content":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    .restart local v21    # "nativeData":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;
    invoke-static {v1, v2, v3, v0}, Lcom/ahsim/demulation/RomAssetProvider;->extractOriginalAudio(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;

    move-result-object v6

    .line 784
    .local v6, "audio":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    iget-object v0, v6, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;->mismatches:Ljava/util/List;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 785
    invoke-virtual {v6}, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;->allVerified()Z

    move-result v0

    if-nez v0, :cond_b

    .line 786
    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetProvider;->clearAudioStaging(Landroid/content/Context;)V

    .line 787
    move-object v7, v6

    .end local v6    # "audio":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    .local v7, "audio":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    new-instance v6, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v16, v7

    .end local v7    # "audio":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    .local v16, "audio":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    const/4 v7, 0x0

    move-object/from16 v22, v14

    move-object/from16 v14, v16

    .end local v16    # "audio":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    .local v14, "audio":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    .local v22, "gameplayData":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    invoke-direct/range {v6 .. v13}, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;-><init>(IIJLjava/util/List;Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;Lcom/ahsim/demulation/RomAssetProvider-IA;)V

    return-object v6

    .line 1118
    .end local v22    # "gameplayData":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    .restart local v6    # "audio":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    .local v14, "gameplayData":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    :cond_b
    move-object/from16 v22, v14

    move-object v14, v6

    .end local v6    # "audio":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    .local v14, "audio":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    .restart local v22    # "gameplayData":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    const/16 v16, 0x0

    .line 1119
    .local v16, "genericBase":I
    new-instance v0, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, v4, v8}, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda1;-><init>(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;I)V

    invoke-static {v1, v2, v3, v0}, Lcom/ahsim/demulation/RomAssetProvider;->extractFrontendGeneric(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$Result;

    move-result-object v6

    .line 1124
    .local v6, "generic":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$Result;
    iget v0, v6, Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$Result;->verifiedEntries:I

    add-int v7, v17, v0

    .line 1125
    .end local v17    # "verified":I
    .local v7, "verified":I
    iget-object v0, v6, Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$Result;->mismatches:Ljava/util/List;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1126
    invoke-virtual {v6}, Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$Result;->allVerified()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetProvider;->clearAllStaging(Landroid/content/Context;)V

    move-object v12, v6

    .end local v6    # "generic":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$Result;
    .local v12, "generic":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$Result;
    new-instance v6, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;

    move-object v13, v12

    .end local v12    # "generic":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$Result;
    .local v13, "generic":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$Result;
    const/4 v12, 0x0

    move-object/from16 v17, v13

    .end local v13    # "generic":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$Result;
    .local v17, "generic":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$Result;
    const/4 v13, 0x0

    move-object/from16 v23, v15

    move-object/from16 v15, v17

    .end local v17    # "generic":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$Result;
    .local v15, "generic":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$Result;
    .local v23, "worldData":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;
    invoke-direct/range {v6 .. v13}, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;-><init>(IIJLjava/util/List;Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;Lcom/ahsim/demulation/RomAssetProvider-IA;)V

    return-object v6

    .line 1128
    .end local v23    # "worldData":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;
    .restart local v6    # "generic":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$Result;
    .local v15, "worldData":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;
    :cond_c
    move-object/from16 v23, v15

    move-object v15, v6

    .end local v6    # "generic":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$Result;
    .local v15, "generic":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$Result;
    .restart local v23    # "worldData":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;
    invoke-static {}, Lcom/ahsim/demulation/RomFrontendAssetManifest;->entries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v6, v0, 0x0

    .line 1129
    .local v6, "directBase":I
    new-instance v0, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda2;

    invoke-direct {v0, v4, v6, v8}, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda2;-><init>(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;II)V

    invoke-static {v1, v2, v3, v0}, Lcom/ahsim/demulation/RomAssetProvider;->extractFrontendDirect(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$Result;

    move-result-object v12

    .line 1134
    .local v12, "direct":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$Result;
    iget v0, v12, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$Result;->verifiedEntries:I

    add-int/2addr v7, v0

    .line 1135
    iget-object v0, v12, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$Result;->mismatches:Ljava/util/List;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1136
    invoke-virtual {v12}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$Result;->allVerified()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetProvider;->clearAllStaging(Landroid/content/Context;)V

    move v13, v6

    .end local v6    # "directBase":I
    .local v13, "directBase":I
    new-instance v6, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;

    move-object/from16 v17, v12

    .end local v12    # "direct":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$Result;
    .local v17, "direct":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$Result;
    const/4 v12, 0x0

    move/from16 v24, v13

    .end local v13    # "directBase":I
    .local v24, "directBase":I
    const/4 v13, 0x0

    move-object/from16 v59, v17

    move-object/from16 v17, v5

    move-object/from16 v5, v59

    .local v5, "direct":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$Result;
    .local v17, "content":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    invoke-direct/range {v6 .. v13}, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;-><init>(IIJLjava/util/List;Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;Lcom/ahsim/demulation/RomAssetProvider-IA;)V

    return-object v6

    .line 1138
    .end local v17    # "content":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    .end local v24    # "directBase":I
    .local v5, "content":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    .restart local v6    # "directBase":I
    .restart local v12    # "direct":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$Result;
    :cond_d
    move-object/from16 v17, v5

    move/from16 v24, v6

    move-object v5, v12

    .end local v6    # "directBase":I
    .end local v12    # "direct":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$Result;
    .local v5, "direct":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$Result;
    .restart local v17    # "content":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    .restart local v24    # "directBase":I
    invoke-static {}, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest;->entries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int v6, v24, v0

    .line 1139
    .local v6, "mentatBase":I
    new-instance v0, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda3;

    invoke-direct {v0, v4, v6, v8}, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda3;-><init>(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;II)V

    invoke-static {v1, v2, v3, v0}, Lcom/ahsim/demulation/RomAssetProvider;->extractMentat(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$Result;

    move-result-object v12

    .line 1144
    .local v12, "mentat":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$Result;
    iget v0, v12, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$Result;->verifiedEntries:I

    add-int/2addr v7, v0

    .line 1145
    iget-object v0, v12, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$Result;->mismatches:Ljava/util/List;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1146
    invoke-virtual {v12}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$Result;->allVerified()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetProvider;->clearAllStaging(Landroid/content/Context;)V

    move v13, v6

    .end local v6    # "mentatBase":I
    .local v13, "mentatBase":I
    new-instance v6, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;

    move-object/from16 v25, v12

    .end local v12    # "mentat":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$Result;
    .local v25, "mentat":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$Result;
    const/4 v12, 0x0

    move/from16 v26, v13

    .end local v13    # "mentatBase":I
    .local v26, "mentatBase":I
    const/4 v13, 0x0

    move-object/from16 v59, v25

    move-object/from16 v25, v14

    move-object/from16 v14, v59

    .local v14, "mentat":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$Result;
    .local v25, "audio":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    invoke-direct/range {v6 .. v13}, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;-><init>(IIJLjava/util/List;Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;Lcom/ahsim/demulation/RomAssetProvider-IA;)V

    return-object v6

    .line 1148
    .end local v25    # "audio":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    .end local v26    # "mentatBase":I
    .restart local v6    # "mentatBase":I
    .restart local v12    # "mentat":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$Result;
    .local v14, "audio":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    :cond_e
    move/from16 v26, v6

    move-object/from16 v25, v14

    move-object v14, v12

    .end local v6    # "mentatBase":I
    .end local v12    # "mentat":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$Result;
    .local v14, "mentat":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$Result;
    .restart local v25    # "audio":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    .restart local v26    # "mentatBase":I
    invoke-static {}, Lcom/ahsim/demulation/RomMentatAssetManifest;->entries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int v6, v26, v0

    .line 1149
    .local v6, "missionBase":I
    new-instance v0, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda4;

    invoke-direct {v0, v4, v6, v8}, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda4;-><init>(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;II)V

    invoke-static {v1, v2, v3, v0}, Lcom/ahsim/demulation/RomAssetProvider;->extractMissionCampaignTransition(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;

    move-result-object v12

    .line 1154
    .local v12, "mission":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    iget v0, v12, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;->verifiedEntries:I

    add-int/2addr v7, v0

    .line 1155
    iget-object v0, v12, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;->mismatches:Ljava/util/List;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1156
    invoke-virtual {v12}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;->allVerified()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetProvider;->clearAllStaging(Landroid/content/Context;)V

    move v13, v6

    .end local v6    # "missionBase":I
    .local v13, "missionBase":I
    new-instance v6, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;

    move-object/from16 v27, v12

    .end local v12    # "mission":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    .local v27, "mission":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    const/4 v12, 0x0

    move/from16 v28, v13

    .end local v13    # "missionBase":I
    .local v28, "missionBase":I
    const/4 v13, 0x0

    move-object/from16 v36, v27

    .end local v27    # "mission":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    .local v36, "mission":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    invoke-direct/range {v6 .. v13}, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;-><init>(IIJLjava/util/List;Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;Lcom/ahsim/demulation/RomAssetProvider-IA;)V

    return-object v6

    .line 1158
    .end local v28    # "missionBase":I
    .end local v36    # "mission":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    .restart local v6    # "missionBase":I
    .restart local v12    # "mission":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    :cond_f
    move/from16 v28, v6

    move-object/from16 v36, v12

    .end local v6    # "missionBase":I
    .end local v12    # "mission":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    .restart local v28    # "missionBase":I
    .restart local v36    # "mission":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    invoke-static {}, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest;->entries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int v6, v28, v0

    .line 1159
    .local v6, "tutorialBase":I
    new-instance v0, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda5;

    invoke-direct {v0, v4, v6, v8}, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda5;-><init>(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;II)V

    invoke-static {v1, v2, v3, v0}, Lcom/ahsim/demulation/RomAssetProvider;->extractTutorial(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;

    move-result-object v12

    .line 1164
    .local v12, "tutorial":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;
    iget v0, v12, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;->verifiedEntries:I

    add-int/2addr v7, v0

    .line 1165
    iget-object v0, v12, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;->mismatches:Ljava/util/List;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1166
    invoke-virtual {v12}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;->allVerified()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetProvider;->clearAllStaging(Landroid/content/Context;)V

    move v13, v6

    .end local v6    # "tutorialBase":I
    .local v13, "tutorialBase":I
    new-instance v6, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;

    move-object/from16 v27, v12

    .end local v12    # "tutorial":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;
    .local v27, "tutorial":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;
    const/4 v12, 0x0

    move/from16 v29, v13

    .end local v13    # "tutorialBase":I
    .local v29, "tutorialBase":I
    const/4 v13, 0x0

    move-object/from16 v37, v27

    .end local v27    # "tutorial":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;
    .local v37, "tutorial":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;
    invoke-direct/range {v6 .. v13}, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;-><init>(IIJLjava/util/List;Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;Lcom/ahsim/demulation/RomAssetProvider-IA;)V

    return-object v6

    .line 1168
    .end local v29    # "tutorialBase":I
    .end local v37    # "tutorial":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;
    .restart local v6    # "tutorialBase":I
    .restart local v12    # "tutorial":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;
    :cond_10
    move/from16 v29, v6

    move-object/from16 v37, v12

    .end local v6    # "tutorialBase":I
    .end local v12    # "tutorial":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;
    .restart local v29    # "tutorialBase":I
    .restart local v37    # "tutorial":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;
    invoke-static {}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->entries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int v6, v29, v0

    .line 1169
    .local v6, "resultBase":I
    new-instance v0, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda6;

    invoke-direct {v0, v4, v6, v8}, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda6;-><init>(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;II)V

    invoke-static {v1, v2, v3, v0}, Lcom/ahsim/demulation/RomAssetProvider;->extractMissionResultGraphics(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;

    move-result-object v12

    .line 1174
    .local v12, "result":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;
    iget v0, v12, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;->verifiedEntries:I

    add-int/2addr v7, v0

    .line 1175
    iget-object v0, v12, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;->mismatches:Ljava/util/List;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1176
    invoke-virtual {v12}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;->allVerified()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetProvider;->clearAllStaging(Landroid/content/Context;)V

    move v13, v6

    .end local v6    # "resultBase":I
    .local v13, "resultBase":I
    new-instance v6, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;

    move-object/from16 v27, v12

    .end local v12    # "result":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;
    .local v27, "result":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;
    const/4 v12, 0x0

    move/from16 v30, v13

    .end local v13    # "resultBase":I
    .local v30, "resultBase":I
    const/4 v13, 0x0

    move-object/from16 v38, v27

    .end local v27    # "result":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;
    .local v38, "result":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;
    invoke-direct/range {v6 .. v13}, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;-><init>(IIJLjava/util/List;Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;Lcom/ahsim/demulation/RomAssetProvider-IA;)V

    return-object v6

    .line 1178
    .end local v30    # "resultBase":I
    .end local v38    # "result":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;
    .restart local v6    # "resultBase":I
    .restart local v12    # "result":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;
    :cond_11
    move/from16 v30, v6

    move-object/from16 v38, v12

    .end local v6    # "resultBase":I
    .end local v12    # "result":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;
    .restart local v30    # "resultBase":I
    .restart local v38    # "result":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;
    invoke-static {}, Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest;->entries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int v6, v30, v0

    .line 1179
    .local v6, "endingBase":I
    new-instance v0, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda7;

    invoke-direct {v0, v4, v6, v8}, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda7;-><init>(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;II)V

    invoke-static {v1, v2, v3, v0}, Lcom/ahsim/demulation/RomAssetProvider;->extractEndingGraphics(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;

    move-result-object v12

    .line 1184
    .local v12, "ending":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;
    iget v0, v12, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;->verifiedEntries:I

    add-int/2addr v7, v0

    .line 1185
    iget-object v0, v12, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;->mismatches:Ljava/util/List;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1186
    invoke-virtual {v12}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;->allVerified()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetProvider;->clearAllStaging(Landroid/content/Context;)V

    move v13, v6

    .end local v6    # "endingBase":I
    .local v13, "endingBase":I
    new-instance v6, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;

    move-object/from16 v27, v12

    .end local v12    # "ending":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;
    .local v27, "ending":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;
    const/4 v12, 0x0

    move/from16 v31, v13

    .end local v13    # "endingBase":I
    .local v31, "endingBase":I
    const/4 v13, 0x0

    move-object/from16 v39, v27

    .end local v27    # "ending":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;
    .local v39, "ending":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;
    invoke-direct/range {v6 .. v13}, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;-><init>(IIJLjava/util/List;Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;Lcom/ahsim/demulation/RomAssetProvider-IA;)V

    return-object v6

    .line 1189
    .end local v31    # "endingBase":I
    .end local v39    # "ending":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;
    .restart local v6    # "endingBase":I
    .restart local v12    # "ending":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;
    :cond_12
    move/from16 v31, v6

    move-object/from16 v39, v12

    .end local v6    # "endingBase":I
    .end local v12    # "ending":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;
    .restart local v31    # "endingBase":I
    .restart local v39    # "ending":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;
    invoke-static {}, Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest;->entries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int v6, v31, v0

    .line 1190
    .local v6, "worldTerrainBase":I
    new-instance v0, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda8;

    invoke-direct {v0, v4, v6, v8}, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda8;-><init>(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;II)V

    invoke-static {v1, v2, v3, v0}, Lcom/ahsim/demulation/RomAssetProvider;->extractWorldTerrainRadarGraphics(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;

    move-result-object v12

    .line 1195
    .local v12, "worldTerrain":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    iget v0, v12, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;->verifiedEntries:I

    add-int/2addr v7, v0

    .line 1196
    iget-object v0, v12, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;->mismatches:Ljava/util/List;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1197
    invoke-virtual {v12}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;->allVerified()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1198
    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetProvider;->clearWorldTerrainRadarStaging(Landroid/content/Context;)V

    .line 1199
    move v13, v6

    .end local v6    # "worldTerrainBase":I
    .local v13, "worldTerrainBase":I
    new-instance v6, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;

    move-object/from16 v27, v12

    .end local v12    # "worldTerrain":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    .local v27, "worldTerrain":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    const/4 v12, 0x0

    move/from16 v32, v13

    .end local v13    # "worldTerrainBase":I
    .local v32, "worldTerrainBase":I
    const/4 v13, 0x0

    move-object/from16 v40, v27

    .end local v27    # "worldTerrain":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    .local v40, "worldTerrain":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    invoke-direct/range {v6 .. v13}, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;-><init>(IIJLjava/util/List;Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;Lcom/ahsim/demulation/RomAssetProvider-IA;)V

    return-object v6

    .line 1202
    .end local v32    # "worldTerrainBase":I
    .end local v40    # "worldTerrain":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    .restart local v6    # "worldTerrainBase":I
    .restart local v12    # "worldTerrain":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    :cond_13
    move/from16 v32, v6

    move-object/from16 v40, v12

    .end local v6    # "worldTerrainBase":I
    .end local v12    # "worldTerrain":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    .restart local v32    # "worldTerrainBase":I
    .restart local v40    # "worldTerrain":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    invoke-static {}, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest;->entries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int v6, v32, v0

    .line 1203
    .local v6, "worldTacticalBase":I
    new-instance v0, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda9;

    invoke-direct {v0, v4, v6, v8}, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda9;-><init>(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;II)V

    invoke-static {v1, v2, v3, v0}, Lcom/ahsim/demulation/RomAssetProvider;->extractWorldTacticalSpriteGraphics(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;

    move-result-object v12

    .line 1208
    .local v12, "worldTactical":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;
    iget v0, v12, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;->verifiedEntries:I

    add-int/2addr v7, v0

    .line 1209
    iget-object v0, v12, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;->mismatches:Ljava/util/List;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1210
    invoke-virtual {v12}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;->allVerified()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1211
    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetProvider;->clearWorldTacticalSpriteStaging(Landroid/content/Context;)V

    .line 1212
    move v13, v6

    .end local v6    # "worldTacticalBase":I
    .local v13, "worldTacticalBase":I
    new-instance v6, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;

    move-object/from16 v27, v12

    .end local v12    # "worldTactical":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;
    .local v27, "worldTactical":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;
    const/4 v12, 0x0

    move/from16 v33, v13

    .end local v13    # "worldTacticalBase":I
    .local v33, "worldTacticalBase":I
    const/4 v13, 0x0

    move-object/from16 v1, v27

    .end local v27    # "worldTactical":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;
    .local v1, "worldTactical":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;
    invoke-direct/range {v6 .. v13}, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;-><init>(IIJLjava/util/List;Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;Lcom/ahsim/demulation/RomAssetProvider-IA;)V

    return-object v6

    .line 1215
    .end local v1    # "worldTactical":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;
    .end local v33    # "worldTacticalBase":I
    .restart local v6    # "worldTacticalBase":I
    .restart local v12    # "worldTactical":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;
    :cond_14
    move/from16 v33, v6

    move-object v1, v12

    .end local v6    # "worldTacticalBase":I
    .end local v12    # "worldTactical":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;
    .restart local v1    # "worldTactical":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;
    .restart local v33    # "worldTacticalBase":I
    move v7, v8

    .line 1216
    if-eqz p4, :cond_15

    invoke-interface/range {p4 .. p4}, Lcom/ahsim/demulation/RomAssetProvider$InstallListener;->onInstalling()V

    .line 1218
    :cond_15
    nop

    .line 1219
    :try_start_2
    invoke-static/range {p0 .. p0}, Lcom/ahsim/demulation/RomAssetInstallState;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v41

    iget-object v0, v15, Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$Result;->stagedRoot:Ljava/io/File;

    iget-object v6, v5, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$Result;->stagedRoot:Ljava/io/File;

    iget-object v12, v14, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$Result;->stagedRoot:Ljava/io/File;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1a

    move-object/from16 v43, v0

    move-object/from16 v13, v36

    .end local v36    # "mission":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    .local v13, "mission":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    :try_start_3
    iget-object v0, v13, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;->stagedRoot:Ljava/io/File;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_18

    move-object/from16 v46, v0

    move-object/from16 v27, v13

    move-object/from16 v13, v37

    .end local v37    # "tutorial":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;
    .local v13, "tutorial":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;
    .local v27, "mission":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    :try_start_4
    iget-object v0, v13, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;->stagedRoot:Ljava/io/File;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_16

    move-object/from16 v47, v0

    move-object/from16 v37, v13

    move-object/from16 v13, v38

    .end local v38    # "result":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;
    .local v13, "result":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;
    .restart local v37    # "tutorial":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;
    :try_start_5
    iget-object v0, v13, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;->stagedRoot:Ljava/io/File;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_14

    move-object/from16 v48, v0

    move-object/from16 v38, v13

    move-object/from16 v13, v39

    .end local v39    # "ending":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;
    .local v13, "ending":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;
    .restart local v38    # "result":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;
    :try_start_6
    iget-object v0, v13, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;->stagedRoot:Ljava/io/File;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_12

    move-object/from16 v49, v0

    move-object/from16 v39, v13

    move-object/from16 v13, v40

    .end local v40    # "worldTerrain":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    .local v13, "worldTerrain":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    .restart local v39    # "ending":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;
    :try_start_7
    iget-object v0, v13, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;->stagedRoot:Ljava/io/File;

    move-object/from16 v50, v0

    iget-object v0, v1, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;->stagedRoot:Ljava/io/File;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_10

    move-object/from16 v51, v0

    move-object/from16 v40, v13

    move-object/from16 v13, v25

    .end local v25    # "audio":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    .local v13, "audio":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    .restart local v40    # "worldTerrain":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    :try_start_8
    iget-object v0, v13, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;->stagedRoot:Ljava/io/File;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_e

    move-object/from16 v52, v0

    move-object/from16 v25, v13

    move-object/from16 v13, v17

    .end local v17    # "content":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    .local v13, "content":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    .restart local v25    # "audio":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    :try_start_9
    iget-object v0, v13, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;->stagedRoot:Ljava/io/File;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_c

    move-object/from16 v53, v0

    move-object/from16 v17, v13

    move-object/from16 v13, v23

    .end local v23    # "worldData":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;
    .local v13, "worldData":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;
    .restart local v17    # "content":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    :try_start_a
    iget-object v0, v13, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;->stagedRoot:Ljava/io/File;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_a

    move-object/from16 v54, v0

    move-object/from16 v23, v13

    move-object/from16 v13, v22

    .end local v22    # "gameplayData":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    .local v13, "gameplayData":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    .restart local v23    # "worldData":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;
    :try_start_b
    iget-object v0, v13, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;->stagedRoot:Ljava/io/File;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_8

    move-object/from16 v55, v0

    move-object/from16 v22, v13

    move-object/from16 v13, v21

    .end local v21    # "nativeData":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;
    .local v13, "nativeData":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;
    .restart local v22    # "gameplayData":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    :try_start_c
    iget-object v0, v13, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;->stagedRoot:Ljava/io/File;

    move-object/from16 v56, v0

    iget-object v0, v3, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->sha256:Ljava/lang/String;

    move-object/from16 v57, v0

    iget-object v0, v3, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileId:Ljava/lang/String;

    .line 1218
    const/16 v42, 0x0

    move-object/from16 v58, v0

    move-object/from16 v44, v6

    move-object/from16 v45, v12

    invoke-static/range {v41 .. v58}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->installRegionAwareV17(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;

    move-result-object v12

    .line 1224
    .local v12, "bundle":Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;
    new-instance v6, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_6

    move-object/from16 v21, v13

    .end local v13    # "nativeData":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;
    .restart local v21    # "nativeData":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;
    const/4 v13, 0x0

    :try_start_d
    invoke-direct/range {v6 .. v13}, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;-><init>(IIJLjava/util/List;Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;Lcom/ahsim/demulation/RomAssetProvider-IA;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_4

    return-object v6

    .line 1228
    .end local v12    # "bundle":Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;
    :catch_4
    move-exception v0

    goto/16 :goto_4

    .line 1225
    :catch_5
    move-exception v0

    goto/16 :goto_5

    .line 1228
    .end local v21    # "nativeData":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;
    .restart local v13    # "nativeData":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;
    :catch_6
    move-exception v0

    move-object/from16 v21, v13

    .end local v13    # "nativeData":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;
    .restart local v21    # "nativeData":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;
    goto/16 :goto_4

    .line 1225
    .end local v21    # "nativeData":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;
    .restart local v13    # "nativeData":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;
    :catch_7
    move-exception v0

    move-object/from16 v21, v13

    .end local v13    # "nativeData":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;
    .restart local v21    # "nativeData":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;
    goto/16 :goto_5

    .line 1228
    .end local v22    # "gameplayData":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    .local v13, "gameplayData":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    :catch_8
    move-exception v0

    move-object/from16 v22, v13

    .end local v13    # "gameplayData":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    .restart local v22    # "gameplayData":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    goto :goto_4

    .line 1225
    .end local v22    # "gameplayData":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    .restart local v13    # "gameplayData":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    :catch_9
    move-exception v0

    move-object/from16 v22, v13

    .end local v13    # "gameplayData":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    .restart local v22    # "gameplayData":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    goto :goto_5

    .line 1228
    .end local v23    # "worldData":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;
    .local v13, "worldData":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;
    :catch_a
    move-exception v0

    move-object/from16 v23, v13

    .end local v13    # "worldData":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;
    .restart local v23    # "worldData":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;
    goto :goto_4

    .line 1225
    .end local v23    # "worldData":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;
    .restart local v13    # "worldData":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;
    :catch_b
    move-exception v0

    move-object/from16 v23, v13

    .end local v13    # "worldData":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;
    .restart local v23    # "worldData":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;
    goto :goto_5

    .line 1228
    .end local v17    # "content":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    .local v13, "content":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    :catch_c
    move-exception v0

    move-object/from16 v17, v13

    .end local v13    # "content":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    .restart local v17    # "content":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    goto :goto_4

    .line 1225
    .end local v17    # "content":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    .restart local v13    # "content":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    :catch_d
    move-exception v0

    move-object/from16 v17, v13

    .end local v13    # "content":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    .restart local v17    # "content":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    goto :goto_5

    .line 1228
    .end local v25    # "audio":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    .local v13, "audio":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    :catch_e
    move-exception v0

    move-object/from16 v25, v13

    .end local v13    # "audio":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    .restart local v25    # "audio":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    goto :goto_4

    .line 1225
    .end local v25    # "audio":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    .restart local v13    # "audio":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    :catch_f
    move-exception v0

    move-object/from16 v25, v13

    .end local v13    # "audio":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    .restart local v25    # "audio":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    goto :goto_5

    .line 1228
    .end local v40    # "worldTerrain":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    .local v13, "worldTerrain":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    :catch_10
    move-exception v0

    move-object/from16 v40, v13

    .end local v13    # "worldTerrain":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    .restart local v40    # "worldTerrain":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    goto :goto_4

    .line 1225
    .end local v40    # "worldTerrain":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    .restart local v13    # "worldTerrain":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    :catch_11
    move-exception v0

    move-object/from16 v40, v13

    .end local v13    # "worldTerrain":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    .restart local v40    # "worldTerrain":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    goto :goto_5

    .line 1228
    .end local v39    # "ending":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;
    .local v13, "ending":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;
    :catch_12
    move-exception v0

    move-object/from16 v39, v13

    .end local v13    # "ending":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;
    .restart local v39    # "ending":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;
    goto :goto_4

    .line 1225
    .end local v39    # "ending":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;
    .restart local v13    # "ending":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;
    :catch_13
    move-exception v0

    move-object/from16 v39, v13

    .end local v13    # "ending":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;
    .restart local v39    # "ending":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;
    goto :goto_5

    .line 1228
    .end local v38    # "result":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;
    .local v13, "result":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;
    :catch_14
    move-exception v0

    move-object/from16 v38, v13

    .end local v13    # "result":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;
    .restart local v38    # "result":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;
    goto :goto_4

    .line 1225
    .end local v38    # "result":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;
    .restart local v13    # "result":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;
    :catch_15
    move-exception v0

    move-object/from16 v38, v13

    .end local v13    # "result":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;
    .restart local v38    # "result":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;
    goto :goto_5

    .line 1228
    .end local v37    # "tutorial":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;
    .local v13, "tutorial":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;
    :catch_16
    move-exception v0

    move-object/from16 v37, v13

    .end local v13    # "tutorial":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;
    .restart local v37    # "tutorial":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;
    goto :goto_4

    .line 1225
    .end local v37    # "tutorial":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;
    .restart local v13    # "tutorial":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;
    :catch_17
    move-exception v0

    move-object/from16 v37, v13

    .end local v13    # "tutorial":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;
    .restart local v37    # "tutorial":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;
    goto :goto_5

    .line 1228
    .end local v27    # "mission":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    .local v13, "mission":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    :catch_18
    move-exception v0

    move-object/from16 v27, v13

    .end local v13    # "mission":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    .restart local v27    # "mission":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    goto :goto_4

    .line 1225
    .end local v27    # "mission":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    .restart local v13    # "mission":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    :catch_19
    move-exception v0

    move-object/from16 v27, v13

    .end local v13    # "mission":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    .restart local v27    # "mission":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    goto :goto_5

    .line 1228
    .end local v27    # "mission":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    .restart local v36    # "mission":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    :catch_1a
    move-exception v0

    move-object/from16 v27, v36

    .line 1229
    .end local v36    # "mission":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v27    # "mission":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    :goto_4
    invoke-static/range {p0 .. p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearAllStaging(Landroid/content/Context;)V

    .line 1230
    throw v0

    .line 1225
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v27    # "mission":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    .restart local v36    # "mission":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    :catch_1b
    move-exception v0

    move-object/from16 v27, v36

    .line 1226
    .end local v36    # "mission":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    .local v0, "e":Ljava/io/IOException;
    .restart local v27    # "mission":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    :goto_5
    invoke-static/range {p0 .. p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearAllStaging(Landroid/content/Context;)V

    .line 1227
    throw v0

    .line 535
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "worldTactical":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;
    .end local v5    # "direct":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$Result;
    .end local v7    # "verified":I
    .end local v8    # "total":I
    .end local v9    # "bundlePayloadBytes":J
    .end local v11    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "mentat":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$Result;
    .end local v15    # "generic":Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$Result;
    .end local v16    # "genericBase":I
    .end local v17    # "content":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    .end local v18    # "previous":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .end local v19    # "allowLegacyFastMigration":Z
    .end local v20    # "legacyCoreEntries":I
    .end local v21    # "nativeData":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;
    .end local v22    # "gameplayData":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    .end local v23    # "worldData":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;
    .end local v24    # "directBase":I
    .end local v25    # "audio":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    .end local v26    # "mentatBase":I
    .end local v27    # "mission":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    .end local v28    # "missionBase":I
    .end local v29    # "tutorialBase":I
    .end local v30    # "resultBase":I
    .end local v31    # "endingBase":I
    .end local v32    # "worldTerrainBase":I
    .end local v33    # "worldTacticalBase":I
    .end local v37    # "tutorial":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;
    .end local v38    # "result":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;
    .end local v39    # "ending":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;
    .end local v40    # "worldTerrain":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Selected ROM profile is not enabled for BASE preparation"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No ROM is selected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static installCore(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;Lcom/ahsim/demulation/RomAssetProvider$InstallListener;)Lcom/ahsim/demulation/RomAssetProvider$InstallOutcome;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .param p2, "identity"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .param p3, "progressListener"    # Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;
    .param p4, "installListener"    # Lcom/ahsim/demulation/RomAssetProvider$InstallListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->recover(Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    .line 108
    invoke-static {p0, p1, p2, p3}, Lcom/ahsim/demulation/RomAssetProvider;->extractCore(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;)Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;

    move-result-object v0

    .line 110
    .local v0, "extraction":Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;
    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;->allVerified()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance v1, Lcom/ahsim/demulation/RomAssetProvider$InstallOutcome;

    invoke-direct {v1, v0, v2, v2}, Lcom/ahsim/demulation/RomAssetProvider$InstallOutcome;-><init>(Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;Lcom/ahsim/demulation/RomAssetAtomicInstaller$InstallResult;Lcom/ahsim/demulation/RomAssetProvider-IA;)V

    return-object v1

    .line 112
    :cond_0
    if-eqz p4, :cond_1

    invoke-interface {p4}, Lcom/ahsim/demulation/RomAssetProvider$InstallListener;->onInstalling()V

    .line 114
    :cond_1
    nop

    .line 115
    :try_start_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->coreStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    iget-object v4, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->sha256:Ljava/lang/String;

    iget-object v5, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileId:Ljava/lang/String;

    .line 114
    invoke-static {v1, v3, v4, v5}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->installCore(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$InstallResult;

    move-result-object v1

    .line 117
    .local v1, "install":Lcom/ahsim/demulation/RomAssetAtomicInstaller$InstallResult;
    new-instance v3, Lcom/ahsim/demulation/RomAssetProvider$InstallOutcome;

    invoke-direct {v3, v0, v1, v2}, Lcom/ahsim/demulation/RomAssetProvider$InstallOutcome;-><init>(Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;Lcom/ahsim/demulation/RomAssetAtomicInstaller$InstallResult;Lcom/ahsim/demulation/RomAssetProvider-IA;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 121
    .end local v1    # "install":Lcom/ahsim/demulation/RomAssetAtomicInstaller$InstallResult;
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearCoreStaging(Landroid/content/Context;)V

    .line 123
    throw v1

    .line 118
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 119
    .local v1, "e":Ljava/io/IOException;
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearCoreStaging(Landroid/content/Context;)V

    .line 120
    throw v1
.end method

.method static synthetic lambda$installAssetBundle$0(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;IIILjava/lang/String;)V
    .locals 2
    .param p0, "progressListener"    # Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;
    .param p1, "total"    # I
    .param p2, "completed"    # I
    .param p3, "count"    # I
    .param p4, "asset"    # Ljava/lang/String;

    .line 561
    if-eqz p0, :cond_0

    sub-int v0, p1, p3

    .line 562
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, p2

    .line 561
    const-string v1, "world_tactical_sprites_v1"

    invoke-interface {p0, v0, p1, v1, p4}, Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;->onProgress(IILjava/lang/String;Ljava/lang/String;)V

    .line 564
    :cond_0
    return-void
.end method

.method private static synthetic lambda$installAssetBundle$1(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;IIIILjava/lang/String;)V
    .locals 2
    .param p0, "progressListener"    # Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;
    .param p1, "legacyCoreEntries"    # I
    .param p2, "total"    # I
    .param p3, "completed"    # I
    .param p4, "count"    # I
    .param p5, "asset"    # Ljava/lang/String;

    .line 863
    if-eqz p0, :cond_0

    .line 864
    invoke-static {}, Lcom/ahsim/demulation/RomAssetBundleManifest;->mediaEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/2addr v0, p3

    .line 863
    const-string v1, "world_terrain_radar_v1"

    invoke-interface {p0, v0, p2, v1, p5}, Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;->onProgress(IILjava/lang/String;Ljava/lang/String;)V

    .line 866
    :cond_0
    return-void
.end method

.method private static synthetic lambda$installAssetBundle$10(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;IIIILjava/lang/String;)V
    .locals 2
    .param p0, "progressListener"    # Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;
    .param p1, "resultBase"    # I
    .param p2, "total"    # I
    .param p3, "completed"    # I
    .param p4, "count"    # I
    .param p5, "asset"    # Ljava/lang/String;

    .line 1047
    if-eqz p0, :cond_0

    add-int v0, p1, p3

    const-string v1, "mission_result_graphics_v1"

    invoke-interface {p0, v0, p2, v1, p5}, Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;->onProgress(IILjava/lang/String;Ljava/lang/String;)V

    .line 1049
    :cond_0
    return-void
.end method

.method private static synthetic lambda$installAssetBundle$11(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;IIIILjava/lang/String;)V
    .locals 2
    .param p0, "progressListener"    # Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;
    .param p1, "endingBase"    # I
    .param p2, "total"    # I
    .param p3, "completed"    # I
    .param p4, "count"    # I
    .param p5, "asset"    # Ljava/lang/String;

    .line 1060
    if-eqz p0, :cond_0

    add-int v0, p1, p3

    const-string v1, "ending_graphics_v1"

    invoke-interface {p0, v0, p2, v1, p5}, Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;->onProgress(IILjava/lang/String;Ljava/lang/String;)V

    .line 1062
    :cond_0
    return-void
.end method

.method private static synthetic lambda$installAssetBundle$12(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;IIIILjava/lang/String;)V
    .locals 2
    .param p0, "progressListener"    # Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;
    .param p1, "worldTerrainBase"    # I
    .param p2, "total"    # I
    .param p3, "completed"    # I
    .param p4, "count"    # I
    .param p5, "asset"    # Ljava/lang/String;

    .line 1074
    if-eqz p0, :cond_0

    add-int v0, p1, p3

    const-string v1, "world_terrain_radar_v1"

    invoke-interface {p0, v0, p2, v1, p5}, Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;->onProgress(IILjava/lang/String;Ljava/lang/String;)V

    .line 1076
    :cond_0
    return-void
.end method

.method private static synthetic lambda$installAssetBundle$13(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;IIIILjava/lang/String;)V
    .locals 2
    .param p0, "progressListener"    # Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;
    .param p1, "worldTacticalBase"    # I
    .param p2, "total"    # I
    .param p3, "completed"    # I
    .param p4, "count"    # I
    .param p5, "asset"    # Ljava/lang/String;

    .line 1087
    if-eqz p0, :cond_0

    add-int v0, p1, p3

    const-string v1, "world_tactical_sprites_v1"

    invoke-interface {p0, v0, p2, v1, p5}, Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;->onProgress(IILjava/lang/String;Ljava/lang/String;)V

    .line 1089
    :cond_0
    return-void
.end method

.method static synthetic lambda$installAssetBundle$14(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;IIILjava/lang/String;)V
    .locals 2
    .param p0, "progressListener"    # Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;
    .param p1, "total"    # I
    .param p2, "completed"    # I
    .param p3, "count"    # I
    .param p4, "asset"    # Ljava/lang/String;

    .line 1121
    if-eqz p0, :cond_0

    add-int/lit8 v0, p2, 0x0

    const-string v1, "frontend_generic_graphics_v1"

    invoke-interface {p0, v0, p1, v1, p4}, Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;->onProgress(IILjava/lang/String;Ljava/lang/String;)V

    .line 1123
    :cond_0
    return-void
.end method

.method static synthetic lambda$installAssetBundle$15(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;IIIILjava/lang/String;)V
    .locals 2
    .param p0, "progressListener"    # Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;
    .param p1, "directBase"    # I
    .param p2, "total"    # I
    .param p3, "completed"    # I
    .param p4, "count"    # I
    .param p5, "asset"    # Ljava/lang/String;

    .line 1131
    if-eqz p0, :cond_0

    add-int v0, p1, p3

    const-string v1, "frontend_direct_v1"

    invoke-interface {p0, v0, p2, v1, p5}, Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;->onProgress(IILjava/lang/String;Ljava/lang/String;)V

    .line 1133
    :cond_0
    return-void
.end method

.method static synthetic lambda$installAssetBundle$16(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;IIIILjava/lang/String;)V
    .locals 2
    .param p0, "progressListener"    # Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;
    .param p1, "mentatBase"    # I
    .param p2, "total"    # I
    .param p3, "completed"    # I
    .param p4, "count"    # I
    .param p5, "asset"    # Ljava/lang/String;

    .line 1141
    if-eqz p0, :cond_0

    add-int v0, p1, p3

    const-string v1, "frontend_mentat_v1"

    invoke-interface {p0, v0, p2, v1, p5}, Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;->onProgress(IILjava/lang/String;Ljava/lang/String;)V

    .line 1143
    :cond_0
    return-void
.end method

.method static synthetic lambda$installAssetBundle$17(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;IIIILjava/lang/String;)V
    .locals 2
    .param p0, "progressListener"    # Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;
    .param p1, "missionBase"    # I
    .param p2, "total"    # I
    .param p3, "completed"    # I
    .param p4, "count"    # I
    .param p5, "asset"    # Ljava/lang/String;

    .line 1151
    if-eqz p0, :cond_0

    add-int v0, p1, p3

    const-string v1, "mission_campaign_transition_v1"

    invoke-interface {p0, v0, p2, v1, p5}, Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;->onProgress(IILjava/lang/String;Ljava/lang/String;)V

    .line 1153
    :cond_0
    return-void
.end method

.method static synthetic lambda$installAssetBundle$18(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;IIIILjava/lang/String;)V
    .locals 2
    .param p0, "progressListener"    # Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;
    .param p1, "tutorialBase"    # I
    .param p2, "total"    # I
    .param p3, "completed"    # I
    .param p4, "count"    # I
    .param p5, "asset"    # Ljava/lang/String;

    .line 1161
    if-eqz p0, :cond_0

    add-int v0, p1, p3

    const-string v1, "tutorial_original_v1"

    invoke-interface {p0, v0, p2, v1, p5}, Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;->onProgress(IILjava/lang/String;Ljava/lang/String;)V

    .line 1163
    :cond_0
    return-void
.end method

.method static synthetic lambda$installAssetBundle$19(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;IIIILjava/lang/String;)V
    .locals 2
    .param p0, "progressListener"    # Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;
    .param p1, "resultBase"    # I
    .param p2, "total"    # I
    .param p3, "completed"    # I
    .param p4, "count"    # I
    .param p5, "asset"    # Ljava/lang/String;

    .line 1171
    if-eqz p0, :cond_0

    add-int v0, p1, p3

    const-string v1, "mission_result_graphics_v1"

    invoke-interface {p0, v0, p2, v1, p5}, Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;->onProgress(IILjava/lang/String;Ljava/lang/String;)V

    .line 1173
    :cond_0
    return-void
.end method

.method private static synthetic lambda$installAssetBundle$2(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;IIIILjava/lang/String;)V
    .locals 2
    .param p0, "progressListener"    # Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;
    .param p1, "tacticalBase"    # I
    .param p2, "total"    # I
    .param p3, "completed"    # I
    .param p4, "count"    # I
    .param p5, "asset"    # Ljava/lang/String;

    .line 878
    if-eqz p0, :cond_0

    add-int v0, p1, p3

    const-string v1, "world_tactical_sprites_v1"

    invoke-interface {p0, v0, p2, v1, p5}, Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;->onProgress(IILjava/lang/String;Ljava/lang/String;)V

    .line 880
    :cond_0
    return-void
.end method

.method static synthetic lambda$installAssetBundle$20(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;IIIILjava/lang/String;)V
    .locals 2
    .param p0, "progressListener"    # Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;
    .param p1, "endingBase"    # I
    .param p2, "total"    # I
    .param p3, "completed"    # I
    .param p4, "count"    # I
    .param p5, "asset"    # Ljava/lang/String;

    .line 1181
    if-eqz p0, :cond_0

    add-int v0, p1, p3

    const-string v1, "ending_graphics_v1"

    invoke-interface {p0, v0, p2, v1, p5}, Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;->onProgress(IILjava/lang/String;Ljava/lang/String;)V

    .line 1183
    :cond_0
    return-void
.end method

.method static synthetic lambda$installAssetBundle$21(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;IIIILjava/lang/String;)V
    .locals 2
    .param p0, "progressListener"    # Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;
    .param p1, "worldTerrainBase"    # I
    .param p2, "total"    # I
    .param p3, "completed"    # I
    .param p4, "count"    # I
    .param p5, "asset"    # Ljava/lang/String;

    .line 1192
    if-eqz p0, :cond_0

    add-int v0, p1, p3

    const-string v1, "world_terrain_radar_v1"

    invoke-interface {p0, v0, p2, v1, p5}, Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;->onProgress(IILjava/lang/String;Ljava/lang/String;)V

    .line 1194
    :cond_0
    return-void
.end method

.method static synthetic lambda$installAssetBundle$22(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;IIIILjava/lang/String;)V
    .locals 2
    .param p0, "progressListener"    # Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;
    .param p1, "worldTacticalBase"    # I
    .param p2, "total"    # I
    .param p3, "completed"    # I
    .param p4, "count"    # I
    .param p5, "asset"    # Ljava/lang/String;

    .line 1205
    if-eqz p0, :cond_0

    add-int v0, p1, p3

    const-string v1, "world_tactical_sprites_v1"

    invoke-interface {p0, v0, p2, v1, p5}, Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;->onProgress(IILjava/lang/String;Ljava/lang/String;)V

    .line 1207
    :cond_0
    return-void
.end method

.method private static synthetic lambda$installAssetBundle$3(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;IIIILjava/lang/String;)V
    .locals 2
    .param p0, "progressListener"    # Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;
    .param p1, "legacyCoreEntries"    # I
    .param p2, "total"    # I
    .param p3, "completed"    # I
    .param p4, "count"    # I
    .param p5, "asset"    # Ljava/lang/String;

    .line 921
    if-eqz p0, :cond_0

    .line 922
    invoke-static {}, Lcom/ahsim/demulation/RomAssetBundleManifest;->missionCampaignEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/2addr v0, p3

    .line 921
    const-string v1, "tutorial_original_v1"

    invoke-interface {p0, v0, p2, v1, p5}, Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;->onProgress(IILjava/lang/String;Ljava/lang/String;)V

    .line 924
    :cond_0
    return-void
.end method

.method private static synthetic lambda$installAssetBundle$4(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;IIIILjava/lang/String;)V
    .locals 2
    .param p0, "progressListener"    # Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;
    .param p1, "resultBase"    # I
    .param p2, "total"    # I
    .param p3, "completed"    # I
    .param p4, "count"    # I
    .param p5, "asset"    # Ljava/lang/String;

    .line 936
    if-eqz p0, :cond_0

    add-int v0, p1, p3

    const-string v1, "mission_result_graphics_v1"

    invoke-interface {p0, v0, p2, v1, p5}, Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;->onProgress(IILjava/lang/String;Ljava/lang/String;)V

    .line 938
    :cond_0
    return-void
.end method

.method private static synthetic lambda$installAssetBundle$5(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;IIIILjava/lang/String;)V
    .locals 2
    .param p0, "progressListener"    # Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;
    .param p1, "endingBase"    # I
    .param p2, "total"    # I
    .param p3, "completed"    # I
    .param p4, "count"    # I
    .param p5, "asset"    # Ljava/lang/String;

    .line 949
    if-eqz p0, :cond_0

    add-int v0, p1, p3

    const-string v1, "ending_graphics_v1"

    invoke-interface {p0, v0, p2, v1, p5}, Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;->onProgress(IILjava/lang/String;Ljava/lang/String;)V

    .line 951
    :cond_0
    return-void
.end method

.method private static synthetic lambda$installAssetBundle$6(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;IIIILjava/lang/String;)V
    .locals 2
    .param p0, "progressListener"    # Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;
    .param p1, "worldTerrainBase"    # I
    .param p2, "total"    # I
    .param p3, "completed"    # I
    .param p4, "count"    # I
    .param p5, "asset"    # Ljava/lang/String;

    .line 963
    if-eqz p0, :cond_0

    add-int v0, p1, p3

    const-string v1, "world_terrain_radar_v1"

    invoke-interface {p0, v0, p2, v1, p5}, Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;->onProgress(IILjava/lang/String;Ljava/lang/String;)V

    .line 965
    :cond_0
    return-void
.end method

.method private static synthetic lambda$installAssetBundle$7(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;IIIILjava/lang/String;)V
    .locals 2
    .param p0, "progressListener"    # Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;
    .param p1, "worldTacticalBase"    # I
    .param p2, "total"    # I
    .param p3, "completed"    # I
    .param p4, "count"    # I
    .param p5, "asset"    # Ljava/lang/String;

    .line 976
    if-eqz p0, :cond_0

    add-int v0, p1, p3

    const-string v1, "world_tactical_sprites_v1"

    invoke-interface {p0, v0, p2, v1, p5}, Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;->onProgress(IILjava/lang/String;Ljava/lang/String;)V

    .line 978
    :cond_0
    return-void
.end method

.method private static synthetic lambda$installAssetBundle$8(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;IIIILjava/lang/String;)V
    .locals 2
    .param p0, "progressListener"    # Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;
    .param p1, "legacyCoreEntries"    # I
    .param p2, "total"    # I
    .param p3, "completed"    # I
    .param p4, "count"    # I
    .param p5, "asset"    # Ljava/lang/String;

    .line 1019
    if-eqz p0, :cond_0

    .line 1020
    invoke-static {}, Lcom/ahsim/demulation/RomAssetBundleManifest;->legacyEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/2addr v0, p3

    .line 1019
    const-string v1, "mission_campaign_transition_v1"

    invoke-interface {p0, v0, p2, v1, p5}, Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;->onProgress(IILjava/lang/String;Ljava/lang/String;)V

    .line 1022
    :cond_0
    return-void
.end method

.method private static synthetic lambda$installAssetBundle$9(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;IIIILjava/lang/String;)V
    .locals 2
    .param p0, "progressListener"    # Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;
    .param p1, "tutorialBase"    # I
    .param p2, "total"    # I
    .param p3, "completed"    # I
    .param p4, "count"    # I
    .param p5, "asset"    # Ljava/lang/String;

    .line 1034
    if-eqz p0, :cond_0

    add-int v0, p1, p3

    const-string v1, "tutorial_original_v1"

    invoke-interface {p0, v0, p2, v1, p5}, Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;->onProgress(IILjava/lang/String;Ljava/lang/String;)V

    .line 1036
    :cond_0
    return-void
.end method

.method private static openProviderInput(Landroid/content/ContentResolver;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Ljava/io/InputStream;
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .param p2, "identity"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1391
    iget-object v0, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->uri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 1392
    .local v0, "raw":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 1393
    iget-wide v1, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->size:J

    invoke-static {v0, v1, v2, p2}, Lcom/ahsim/demulation/OfficialEuropeRomLayoutAdapter;->openCanonical(Ljava/io/InputStream;JLcom/ahsim/demulation/GenesisRomIdentity$Result;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 1392
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Selected ROM cannot be opened"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static writeReceipt(Ljava/io/File;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;)V
    .locals 5
    .param p0, "staging"    # Ljava/io/File;
    .param p1, "identity"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .param p2, "result"    # Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1373
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 1374
    .local v0, "properties":Ljava/util/Properties;
    const-string v1, "stage"

    const-string v2, "04.233B"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1375
    const-string v1, "group"

    const-string v2, "runtime_bootstrap_core_v1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1376
    iget-object v1, p1, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->sha256:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->sha256:Ljava/lang/String;

    :goto_0
    const-string v3, "source.sha256"

    invoke-virtual {v0, v3, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1377
    iget-object v1, p1, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileId:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileId:Ljava/lang/String;

    :goto_1
    const-string v1, "source.profile"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1378
    iget v1, p2, Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;->verifiedEntries:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "entries.verified"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1379
    iget v1, p2, Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;->totalEntries:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "entries.total"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1380
    iget-wide v1, p2, Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;->payloadBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "payload.bytes"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1381
    invoke-virtual {p2}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;->allVerified()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "complete"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1382
    new-instance v1, Ljava/io/File;

    const-string v2, "core_bootstrap.properties"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1383
    .local v1, "receipt":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1384
    .local v2, "output":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v3, "Demulation Stage 04.233B core ROM asset staging receipt"

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1385
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1386
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1387
    .end local v2    # "output":Ljava/io/FileOutputStream;
    return-void

    .line 1383
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v3
.end method
