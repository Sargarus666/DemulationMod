.class public final Lcom/ahsim/demulation/DuneHackR82NeutralContentStore;
.super Ljava/lang/Object;
.source "DuneHackR82NeutralContentStore.java"


# static fields
.field private static final GAME:Ljava/lang/String; = "game_palettes.bin"

.field private static final MANIFEST:Ljava/lang/String; = "manifest.txt"

.field private static final MANIFEST_LIMIT:I = 0x800

.field private static final REGION:Ljava/lang/String; = "region_palette.bin"

.field private static final ROOT:Ljava/lang/String; = "r82c_neutral_preview_v1"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deleteTree(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 107
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 108
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lcom/ahsim/demulation/DuneHackR82NeutralContentStore;->deleteTree(Ljava/io/File;)V

    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "R82C preview directory unreadable"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    .end local v0    # "children":[Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    return-void

    .line 110
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "R82C preview cleanup failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isValid(Ljava/io/File;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;)Z
    .locals 8
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "sha"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;

    .line 65
    const-string v0, "\n"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    .line 66
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "game_palettes.bin"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v3, 0x200

    invoke-static {v2, v3}, Lcom/ahsim/demulation/DuneHackR82NeutralContentStore;->readSmall(Ljava/io/File;I)[B

    move-result-object v2

    .line 67
    .local v2, "game":[B
    new-instance v3, Ljava/io/File;

    const-string v4, "region_palette.bin"

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v4, 0x60

    invoke-static {v3, v4}, Lcom/ahsim/demulation/DuneHackR82NeutralContentStore;->readSmall(Ljava/io/File;I)[B

    move-result-object v3

    .line 68
    .local v3, "region":[B
    new-instance v4, Ljava/io/File;

    const-string v5, "manifest.txt"

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v5, 0x800

    invoke-static {v4, v5}, Lcom/ahsim/demulation/DuneHackR82NeutralContentStore;->readSmall(Ljava/io/File;I)[B

    move-result-object v4

    .line 69
    .local v4, "manifestBytes":[B
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 70
    .local v5, "meta":Ljava/lang/String;
    iget-object v6, p2, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;->gameSha256:Ljava/lang/String;

    invoke-static {v2}, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;->sha256([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p2, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;->regionSha256:Ljava/lang/String;

    .line 71
    invoke-static {v3}, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;->sha256([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "R82C_NEUTRAL_PREVIEW_V1\n"

    .line 72
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\nsource_sha256="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 73
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\ngame_offset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;->gameOffset:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\nregion_offset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;->regionOffset:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\ngame_sha256="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;->gameSha256:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\nregion_sha256="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;->regionSha256:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\nready=false\nmechanics=false\noverlay=false\n"

    .line 78
    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 70
    :goto_0
    return v1

    .line 79
    .end local v2    # "game":[B
    .end local v3    # "region":[B
    .end local v4    # "manifestBytes":[B
    .end local v5    # "meta":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "ex":Ljava/io/IOException;
    return v1
.end method

.method private static readSmall(Ljava/io/File;I)[B
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 87
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 88
    .local v0, "bytes":[B
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 89
    .local v1, "in":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 90
    .local v2, "n":I
    :goto_0
    :try_start_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    move v4, v3

    .local v4, "k":I
    if-lez v3, :cond_0

    add-int/2addr v2, v4

    goto :goto_0

    .line 91
    .end local v4    # "k":I
    :cond_0
    array-length v3, v0

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 93
    .end local v2    # "n":I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 94
    .end local v1    # "in":Ljava/io/FileInputStream;
    return-object v0

    .line 92
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "n":I
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "R82C preview truncated/changing file"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bytes":[B
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "limit":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .end local v2    # "n":I
    .restart local v0    # "bytes":[B
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "limit":I
    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2

    .line 86
    .end local v0    # "bytes":[B
    .end local v1    # "in":Ljava/io/FileInputStream;
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "R82C preview missing or oversized file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static save(Landroid/content/Context;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceSha256"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    if-eqz p0, :cond_9

    if-eqz p2, :cond_9

    if-eqz p1, :cond_9

    .line 29
    const-string v0, "[0-9a-fA-F]{64}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 32
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "r82c_neutral_preview_v1"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    .local v1, "root":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "R82C private preview directory unavailable"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 37
    :cond_1
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .local v2, "published":Ljava/io/File;
    invoke-static {v2, v0, p2}, Lcom/ahsim/demulation/DuneHackR82NeutralContentStore;->isValid(Ljava/io/File;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "cached"

    return-object v3

    .line 40
    :cond_2
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    .local v3, "staging":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 43
    :try_start_0
    const-string v4, "game_palettes.bin"

    invoke-virtual {p2}, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;->gamePalettes()[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/ahsim/demulation/DuneHackR82NeutralContentStore;->write(Ljava/io/File;Ljava/lang/String;[B)V

    .line 44
    const-string v4, "region_palette.bin"

    invoke-virtual {p2}, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;->regionPalette()[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/ahsim/demulation/DuneHackR82NeutralContentStore;->write(Ljava/io/File;Ljava/lang/String;[B)V

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "R82C_NEUTRAL_PREVIEW_V1\nsource_sha256="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\ngame_offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;->gameOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nregion_offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;->regionOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\ngame_sha256="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;->gameSha256:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nregion_sha256="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;->regionSha256:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nready=false\nmechanics=false\noverlay=false\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "manifest":Ljava/lang/String;
    const-string v5, "manifest.txt"

    sget-object v6, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/ahsim/demulation/DuneHackR82NeutralContentStore;->write(Ljava/io/File;Ljava/lang/String;[B)V

    .line 53
    invoke-static {v3, v0, p2}, Lcom/ahsim/demulation/DuneHackR82NeutralContentStore;->isValid(Ljava/io/File;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 54
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v2}, Lcom/ahsim/demulation/DuneHackR82NeutralContentStore;->deleteTree(Ljava/io/File;)V

    .line 55
    :cond_3
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 56
    const-string v5, "stored"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v3}, Lcom/ahsim/demulation/DuneHackR82NeutralContentStore;->deleteTree(Ljava/io/File;)V

    .line 56
    :cond_4
    return-object v5

    .line 55
    :cond_5
    :try_start_1
    new-instance v5, Ljava/io/IOException;

    const-string v6, "R82C preview atomic publish failed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "root":Ljava/io/File;
    .end local v2    # "published":Ljava/io/File;
    .end local v3    # "staging":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "sourceSha256":Ljava/lang/String;
    .end local p2    # "result":Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;
    throw v5

    .line 53
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "root":Ljava/io/File;
    .restart local v2    # "published":Ljava/io/File;
    .restart local v3    # "staging":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "sourceSha256":Ljava/lang/String;
    .restart local p2    # "result":Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;
    :cond_6
    new-instance v5, Ljava/io/IOException;

    const-string v6, "R82C preview verify failed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "root":Ljava/io/File;
    .end local v2    # "published":Ljava/io/File;
    .end local v3    # "staging":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "sourceSha256":Ljava/lang/String;
    .end local p2    # "result":Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .end local v4    # "manifest":Ljava/lang/String;
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "root":Ljava/io/File;
    .restart local v2    # "published":Ljava/io/File;
    .restart local v3    # "staging":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "sourceSha256":Ljava/lang/String;
    .restart local p2    # "result":Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v3}, Lcom/ahsim/demulation/DuneHackR82NeutralContentStore;->deleteTree(Ljava/io/File;)V

    .line 59
    :cond_7
    throw v4

    .line 41
    :cond_8
    new-instance v4, Ljava/io/IOException;

    const-string v5, "R82C preview staging unavailable"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 30
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "root":Ljava/io/File;
    .end local v2    # "published":Ljava/io/File;
    .end local v3    # "staging":Ljava/io/File;
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "R82C preview source fingerprint invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static write(Ljava/io/File;Ljava/lang/String;[B)V
    .locals 3
    .param p0, "root"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 99
    .local v0, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 100
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 102
    .end local v0    # "out":Ljava/io/FileOutputStream;
    return-void

    .line 98
    .restart local v0    # "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method
