.class public final Lcom/ahsim/demulation/RomRussianLocalizationPackStore;
.super Ljava/lang/Object;
.source "RomRussianLocalizationPackStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;
    }
.end annotation


# static fields
.field private static final ACTIVE:Ljava/lang/String; = "ACTIVE"

.field private static final MANIFEST:Ljava/lang/String; = "localization.properties"

.field private static final READY:Ljava/lang/String; = "READY"

.field public static final ROOT_DIR:Ljava/lang/String; = "rom_localization_packs"

.field private static final STAGING:Ljava/lang/String; = ".staging"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 233
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 146
    if-nez p0, :cond_0

    return-void

    .line 147
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->deleteRecursively(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 149
    return-void
.end method

.method public static commit(Landroid/content/Context;Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;)Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extracted"    # Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    iget-object v0, p1, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;->stagedRoot:Ljava/io/File;

    if-eqz v0, :cond_5

    .line 62
    const-string v0, "4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a"

    iget-object v1, p1, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;->sourceSha256:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;->profileId:Ljava/lang/String;

    .line 63
    const-string v1, "translation_ru_shedevr_lipetsk_usa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 66
    iget-object v0, p1, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;->stagedRoot:Ljava/io/File;

    invoke-static {v0}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->verifyAssetTree(Ljava/io/File;)V

    .line 68
    invoke-static {p0}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 69
    .local v0, "root":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ru_v6_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;->sourceSha256:Ljava/lang/String;

    .line 70
    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "generation":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 72
    .local v2, "finalRoot":Ljava/io/File;
    iget-object v3, p1, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;->stagedRoot:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    .line 73
    .local v3, "stage":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 77
    invoke-static {v3, v1, p1}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->writeManifest(Ljava/io/File;Ljava/lang/String;Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;)V

    .line 78
    new-instance v4, Ljava/io/File;

    const-string v5, "READY"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v5, "READY\n"

    invoke-static {v4, v5}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->writeTextAtomic(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    invoke-static {v3}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->validateGeneration(Ljava/io/File;)Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;

    .line 81
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    :try_start_0
    invoke-static {v2}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->validateGeneration(Ljava/io/File;)Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;

    move-result-object v4

    .line 84
    .local v4, "existing":Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;
    iget-object v5, v4, Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;->sourceSha256:Ljava/lang/String;

    iget-object v6, p1, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;->sourceSha256:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 85
    invoke-static {v3}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 86
    invoke-static {v0, v1}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->publishActive(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    invoke-static {v2}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->validateGeneration(Ljava/io/File;)Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 91
    .end local v4    # "existing":Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;
    :cond_0
    goto :goto_0

    .line 89
    :catch_0
    move-exception v4

    .line 92
    :goto_0
    invoke-static {v2}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 94
    :cond_1
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 97
    invoke-static {v2}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->validateGeneration(Ljava/io/File;)Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;

    move-result-object v4

    .line 98
    .local v4, "installed":Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;
    invoke-static {v0, v1}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->publishActive(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    return-object v4

    .line 95
    .end local v4    # "installed":Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;
    :cond_2
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Could not publish localization generation atomically"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 74
    :cond_3
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Localization staging is outside store root"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 64
    .end local v0    # "root":Ljava/io/File;
    .end local v1    # "generation":Ljava/lang/String;
    .end local v2    # "finalRoot":Ljava/io/File;
    .end local v3    # "stage":Ljava/io/File;
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Localization source identity mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Localization commit arguments are unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static freshStagingRoot(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-static {p0}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 50
    .local v0, "root":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not create localization root"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/File;

    const-string v2, ".staging"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 52
    .local v1, "staging":Ljava/io/File;
    invoke-static {v1}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 53
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not create localization staging root"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_3
    :goto_1
    return-object v1
.end method

.method public static loadActive(Landroid/content/Context;)Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 103
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 105
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 106
    .local v1, "root":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "ACTIVE"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    .local v2, "active":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v0

    .line 108
    :cond_1
    const/16 v3, 0x80

    invoke-static {v2, v3}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->readSmallText(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "generation":Ljava/lang/String;
    const-string v4, "[A-Za-z0-9_.-]{1,96}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    return-object v0

    .line 110
    :cond_2
    invoke-static {v1, v3}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->validateGeneration(Ljava/io/File;)Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 111
    .end local v1    # "root":Ljava/io/File;
    .end local v2    # "active":Ljava/io/File;
    .end local v3    # "generation":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private static parseInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "fallback"    # I

    .line 234
    :try_start_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    return p1
.end method

.method private static parseLong(Ljava/lang/String;J)J
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "fallback"    # J

    .line 235
    :try_start_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    return-wide p1
.end method

.method private static publishActive(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p0, "root"    # Ljava/io/File;
    .param p1, "generation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/io/File;

    const-string v1, "ACTIVE"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->writeTextAtomic(Ljava/io/File;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method private static readSmallText(Ljava/io/File;I)Ljava/lang/String;
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 194
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 195
    .local v0, "b":[B
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 196
    .local v1, "in":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 197
    .local v2, "off":I
    :goto_0
    :try_start_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 198
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 199
    .local v3, "n":I
    if-gez v3, :cond_0

    goto :goto_1

    .line 200
    :cond_0
    add-int/2addr v2, v3

    .line 201
    .end local v3    # "n":I
    goto :goto_0

    .line 202
    :cond_1
    :goto_1
    array-length v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_2

    .line 203
    .end local v2    # "off":I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 204
    .end local v1    # "in":Ljava/io/FileInputStream;
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 202
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "off":I
    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Localization pointer truncated"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "b":[B
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "max":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    .end local v2    # "off":I
    .restart local v0    # "b":[B
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "max":I
    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2

    .line 193
    .end local v0    # "b":[B
    .end local v1    # "in":Ljava/io/FileInputStream;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Localization pointer too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static root(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 45
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "rom_localization_packs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "root"    # Ljava/io/File;
    .param p1, "relative"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 209
    .local v0, "base":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 210
    .local v1, "child":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    return-object v1

    .line 210
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Localization path escapes root"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static sha256(Ljava/io/File;)Ljava/lang/String;
    .locals 9
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 217
    .local v0, "md":Ljava/security/MessageDigest;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .local v1, "in":Ljava/io/InputStream;
    const v2, 0x8000

    :try_start_1
    new-array v2, v2, [B

    .line 220
    .local v2, "buf":[B
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    .local v3, "n":I
    const/4 v4, 0x0

    if-gez v3, :cond_1

    .line 224
    .end local v2    # "buf":[B
    .end local v3    # "n":I
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 225
    .end local v1    # "in":Ljava/io/InputStream;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 226
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v4, v3, :cond_0

    aget-byte v5, v2, v4

    .local v5, "b":B
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%02x"

    and-int/lit16 v8, v5, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 227
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    .line 222
    .local v1, "in":Ljava/io/InputStream;
    .restart local v2    # "buf":[B
    .restart local v3    # "n":I
    :cond_1
    if-lez v3, :cond_2

    :try_start_3
    invoke-virtual {v0, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
    .end local v3    # "n":I
    :cond_2
    goto :goto_0

    .line 217
    .end local v2    # "buf":[B
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "file":Ljava/io/File;
    :goto_2
    throw v2
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_0

    .line 228
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local p0    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static validateGeneration(Ljava/io/File;)Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;
    .locals 11
    .param p0, "generationRoot"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 118
    new-instance v0, Ljava/io/File;

    const-string v1, "READY"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 119
    new-instance v0, Ljava/io/File;

    const-string v1, "localization.properties"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v0

    .line 120
    .local v1, "manifest":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    move-object v2, v0

    .line 122
    .local v2, "p":Ljava/util/Properties;
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v0

    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 123
    .end local v3    # "in":Ljava/io/InputStream;
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    const-string v3, "format.version"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    const-string v0, "group.id"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "russian_localization_v6"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    const-string v0, "source.sha256"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, "sourceSha":Ljava/lang/String;
    const-string v0, "source.profile"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 130
    .local v7, "profile":Ljava/lang/String;
    const-string v0, "generation"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, "generation":Ljava/lang/String;
    const-string v0, "4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    const-string v0, "translation_ru_shedevr_lipetsk_usa"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    const-string v0, "asset.count"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    invoke-static {v0, v3}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 136
    .local v8, "count":I
    const-string v0, "payload.bytes"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v3, -0x1

    invoke-static {v0, v3, v4}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->parseLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 137
    .local v9, "payload":J
    invoke-static {}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->entries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v8, v0, :cond_0

    .line 138
    invoke-static {}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->payloadBytes()J

    move-result-wide v3

    cmp-long v0, v9, v3

    if-nez v0, :cond_0

    .line 141
    invoke-static {p0}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->verifyAssetTree(Ljava/io/File;)V

    .line 142
    new-instance v3, Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v4

    invoke-direct/range {v3 .. v10}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    return-object v3

    .line 139
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Localization manifest totals mismatch"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    .end local v8    # "count":I
    .end local v9    # "payload":J
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Localization manifest source mismatch"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    .end local v5    # "generation":Ljava/lang/String;
    .end local v6    # "sourceSha":Ljava/lang/String;
    .end local v7    # "profile":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Localization group mismatch"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Localization format mismatch"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    .restart local v3    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v0

    move-object v4, v0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v4

    .line 120
    .end local v2    # "p":Ljava/util/Properties;
    .end local v3    # "in":Ljava/io/InputStream;
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Localization manifest missing"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    .end local v1    # "manifest":Ljava/io/File;
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Localization READY missing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Localization generation missing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static verifyAssetTree(Ljava/io/File;)V
    .locals 7
    .param p0, "root"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-static {}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->entries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    .line 153
    .local v1, "e":Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;
    iget-object v2, v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 154
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    iget v5, v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;->length:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 155
    iget-object v3, v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;->sha256:Ljava/lang/String;

    invoke-static {v2}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    .end local v1    # "e":Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;
    .end local v2    # "f":Ljava/io/File;
    goto :goto_0

    .line 155
    .restart local v1    # "e":Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;
    .restart local v2    # "f":Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Localization asset hash mismatch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Localization asset missing/wrong length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    .end local v1    # "e":Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;
    .end local v2    # "f":Ljava/io/File;
    :cond_2
    return-void
.end method

.method private static writeManifest(Ljava/io/File;Ljava/lang/String;Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;)V
    .locals 5
    .param p0, "root"    # Ljava/io/File;
    .param p1, "generation"    # Ljava/lang/String;
    .param p2, "extracted"    # Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 162
    .local v0, "p":Ljava/util/Properties;
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format.version"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    const-string v1, "group.id"

    const-string v2, "russian_localization_v6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    const-string v1, "generation"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    const-string v1, "source.sha256"

    iget-object v2, p2, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;->sourceSha256:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    const-string v1, "source.profile"

    iget-object v2, p2, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;->profileId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 167
    iget v1, p2, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;->assetCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "asset.count"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    iget v1, p2, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;->textCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "text.count"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 169
    iget v1, p2, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;->glyphBitmapCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "glyph_bitmap.count"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    iget-wide v1, p2, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;->payloadBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "payload.bytes"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 171
    new-instance v1, Ljava/io/File;

    const-string v2, "localization.properties"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 173
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v3, "Demulation 04.235Z5 Russian localization pack"

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 176
    .end local v2    # "out":Ljava/io/FileOutputStream;
    return-void

    .line 172
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
.end method

.method private static writeTextAtomic(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .param p0, "target"    # Ljava/io/File;
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    .local v0, "tmp":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 185
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 186
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 188
    .end local v1    # "out":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not replace "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_1
    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    return-void

    .line 189
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not publish "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
.end method
