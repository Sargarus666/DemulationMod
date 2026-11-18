.class public final Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller;
.super Ljava/lang/Object;
.source "RomRussianLocalizationPackInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller$Outcome;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static install(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller$Outcome;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->role:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    sget-object v1, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->TRANSLATION:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    if-ne v0, v1, :cond_4

    .line 53
    const-string v0, "translation_ru_shedevr_lipetsk_usa"

    iget-object v1, p1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->profileId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    .line 54
    const-string v1, "4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    invoke-static {p0}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->freshStagingRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 59
    .local v0, "staging":Ljava/io/File;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 60
    .local v1, "input":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 61
    :try_start_0
    iget-wide v2, p1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->size:J

    invoke-static {v1, v2, v3, v0}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->extract(Ljava/io/InputStream;JLjava/io/File;)Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .local v2, "result":Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 63
    .end local v1    # "input":Ljava/io/InputStream;
    :cond_0
    invoke-static {p0, v2}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->commit(Landroid/content/Context;Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;)Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;

    move-result-object v1

    .line 64
    .local v1, "snapshot":Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;
    new-instance v3, Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller$Outcome;

    iget v4, v2, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;->textCount:I

    iget v5, v2, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;->glyphBitmapCount:I

    invoke-direct {v3, v1, v4, v5}, Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller$Outcome;-><init>(Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;II)V

    return-object v3

    .line 59
    .end local v2    # "result":Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;
    .local v1, "input":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 60
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Translation ROM stream is unavailable"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "staging":Ljava/io/File;
    .end local v1    # "input":Ljava/io/InputStream;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .restart local v0    # "staging":Ljava/io/File;
    .restart local v1    # "input":Ljava/io/InputStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    :goto_0
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2

    .line 55
    .end local v0    # "staging":Ljava/io/File;
    .end local v1    # "input":Ljava/io/InputStream;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Translation source must be audited before localization extraction"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Verified TRANSLATION source is required"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static install(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller$Outcome;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .param p2, "identity"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    .line 32
    iget-object v0, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileId:Ljava/lang/String;

    const-string v1, "translation_ru_shedevr_lipetsk_usa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileId:Ljava/lang/String;

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->sha256:Ljava/lang/String;

    .line 34
    const-string v1, "4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37
    invoke-static {p0}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->freshStagingRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 39
    .local v0, "staging":Ljava/io/File;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 40
    .local v1, "input":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 41
    :try_start_0
    iget-wide v2, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->size:J

    invoke-static {v1, v2, v3, v0}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->extract(Ljava/io/InputStream;JLjava/io/File;)Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .local v2, "result":Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 43
    .end local v1    # "input":Ljava/io/InputStream;
    :cond_0
    invoke-static {p0, v2}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->commit(Landroid/content/Context;Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;)Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;

    move-result-object v1

    .line 44
    .local v1, "snapshot":Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;
    new-instance v3, Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller$Outcome;

    iget v4, v2, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;->textCount:I

    iget v5, v2, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;->glyphBitmapCount:I

    invoke-direct {v3, v1, v4, v5}, Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller$Outcome;-><init>(Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;II)V

    return-object v3

    .line 39
    .end local v2    # "result":Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;
    .local v1, "input":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 40
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Russian BASE ROM stream is unavailable"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "staging":Ljava/io/File;
    .end local v1    # "input":Ljava/io/InputStream;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .restart local v0    # "staging":Ljava/io/File;
    .restart local v1    # "input":Ljava/io/InputStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local p2    # "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    :goto_0
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2

    .line 35
    .end local v0    # "staging":Ljava/io/File;
    .end local v1    # "input":Ljava/io/InputStream;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BASE source is not the audited Russian translation profile"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Verified Russian BASE source is required"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
