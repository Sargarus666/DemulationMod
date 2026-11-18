.class public final Lcom/ahsim/demulation/DuneHackR82MapContentStore;
.super Ljava/lang/Object;
.source "DuneHackR82MapContentStore.java"


# static fields
.field private static final BANK:Ljava/lang/String; = "map_bank.bin"

.field private static final MANIFEST:Ljava/lang/String; = "manifest.txt"

.field private static final ROOT:Ljava/lang/String; = "r82c_maps_preview_v1"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deleteTree(Ljava/io/File;)V
    .locals 4
    .param p0, "target"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 89
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 90
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lcom/ahsim/demulation/DuneHackR82MapContentStore;->deleteTree(Ljava/io/File;)V

    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "R82C map directory unreadable"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    .end local v0    # "children":[Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    return-void

    .line 92
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "R82C map cache cleanup failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static read(Ljava/io/File;I)[B
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "maximum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 69
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 70
    .local v0, "bytes":[B
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 71
    .local v1, "in":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 72
    .local v2, "pos":I
    :goto_0
    :try_start_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 73
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 74
    .local v3, "n":I
    if-lez v3, :cond_0

    .line 75
    add-int/2addr v2, v3

    .line 76
    .end local v3    # "n":I
    goto :goto_0

    .line 74
    .restart local v3    # "n":I
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "R82C map preview file truncated"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bytes":[B
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "maximum":I
    throw v4

    .line 77
    .end local v3    # "n":I
    .restart local v0    # "bytes":[B
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "maximum":I
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 78
    .end local v2    # "pos":I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 79
    .end local v1    # "in":Ljava/io/FileInputStream;
    return-object v0

    .line 77
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "pos":I
    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "R82C map preview file grew"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bytes":[B
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "maximum":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .end local v2    # "pos":I
    .restart local v0    # "bytes":[B
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "maximum":I
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

    .line 68
    .end local v0    # "bytes":[B
    .end local v1    # "in":Ljava/io/FileInputStream;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "R82C map preview file invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static save(Landroid/content/Context;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceSha256"    # Ljava/lang/String;
    .param p2, "maps"    # Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    if-eqz p0, :cond_9

    if-eqz p2, :cond_9

    if-eqz p1, :cond_9

    .line 21
    const-string v0, "[0-9a-fA-F]{64}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 23
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "r82c_maps_preview_v1"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    .local v1, "root":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "R82C map preview cache root unavailable"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 27
    :cond_1
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .local v2, "published":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "R82C_MAP_PREVIEW_V1\nsource_sha256="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nmaps=45\nhouses=5\nmissions_per_house=9\nstorage_order=atreides,ordos,harkonnen,sardaukar,fremen\npointer_table=0x83C00\nfirst_payload=0x1338B6\ncompact_32x32="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;->compactMaps:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nfull_64x64="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;->fullMaps:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nscenario_bounds=63,63\nbank_bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x25800

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nbank_sha256="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;->archiveSha256:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nready=false\ngameplay=false\noverlay=false\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "manifest":Ljava/lang/String;
    invoke-static {v2, v3, p2}, Lcom/ahsim/demulation/DuneHackR82MapContentStore;->valid(Ljava/io/File;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "cached"

    return-object v4

    .line 40
    :cond_2
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".tmp."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    .local v4, "staging":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 43
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v6, "map_bank.bin"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;->archive()[B

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ahsim/demulation/DuneHackR82MapContentStore;->write(Ljava/io/File;[B)V

    .line 44
    new-instance v5, Ljava/io/File;

    const-string v6, "manifest.txt"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v6, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ahsim/demulation/DuneHackR82MapContentStore;->write(Ljava/io/File;[B)V

    .line 45
    invoke-static {v4, v3, p2}, Lcom/ahsim/demulation/DuneHackR82MapContentStore;->valid(Ljava/io/File;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 47
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v2}, Lcom/ahsim/demulation/DuneHackR82MapContentStore;->deleteTree(Ljava/io/File;)V

    .line 48
    :cond_3
    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 50
    const-string v5, "stored"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v4}, Lcom/ahsim/demulation/DuneHackR82MapContentStore;->deleteTree(Ljava/io/File;)V

    .line 50
    :cond_4
    return-object v5

    .line 49
    :cond_5
    :try_start_1
    new-instance v5, Ljava/io/IOException;

    const-string v6, "R82C map preview atomic publish failed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "root":Ljava/io/File;
    .end local v2    # "published":Ljava/io/File;
    .end local v3    # "manifest":Ljava/lang/String;
    .end local v4    # "staging":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "sourceSha256":Ljava/lang/String;
    .end local p2    # "maps":Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;
    throw v5

    .line 46
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "root":Ljava/io/File;
    .restart local v2    # "published":Ljava/io/File;
    .restart local v3    # "manifest":Ljava/lang/String;
    .restart local v4    # "staging":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "sourceSha256":Ljava/lang/String;
    .restart local p2    # "maps":Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;
    :cond_6
    new-instance v5, Ljava/io/IOException;

    const-string v6, "R82C map preview staging verification failed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "root":Ljava/io/File;
    .end local v2    # "published":Ljava/io/File;
    .end local v3    # "manifest":Ljava/lang/String;
    .end local v4    # "staging":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "sourceSha256":Ljava/lang/String;
    .end local p2    # "maps":Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "root":Ljava/io/File;
    .restart local v2    # "published":Ljava/io/File;
    .restart local v3    # "manifest":Ljava/lang/String;
    .restart local v4    # "staging":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "sourceSha256":Ljava/lang/String;
    .restart local p2    # "maps":Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v4}, Lcom/ahsim/demulation/DuneHackR82MapContentStore;->deleteTree(Ljava/io/File;)V

    .line 53
    :cond_7
    throw v5

    .line 41
    :cond_8
    new-instance v5, Ljava/io/IOException;

    const-string v6, "R82C map preview staging unavailable"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 22
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "root":Ljava/io/File;
    .end local v2    # "published":Ljava/io/File;
    .end local v3    # "manifest":Ljava/lang/String;
    .end local v4    # "staging":Ljava/io/File;
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "R82C map preview source invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static valid(Ljava/io/File;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;)Z
    .locals 5
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "manifest"    # Ljava/lang/String;
    .param p2, "maps"    # Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;

    .line 57
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 59
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v2, "map_bank.bin"

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const v2, 0x25800

    invoke-static {v0, v2}, Lcom/ahsim/demulation/DuneHackR82MapContentStore;->read(Ljava/io/File;I)[B

    move-result-object v0

    .line 60
    .local v0, "bank":[B
    new-instance v3, Ljava/io/File;

    const-string v4, "manifest.txt"

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v4, 0x400

    invoke-static {v3, v4}, Lcom/ahsim/demulation/DuneHackR82MapContentStore;->read(Ljava/io/File;I)[B

    move-result-object v3

    .line 61
    .local v3, "meta":[B
    array-length v4, v0

    if-ne v4, v2, :cond_1

    iget-object v2, p2, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;->archiveSha256:Ljava/lang/String;

    .line 62
    invoke-static {v0}, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;->sha256([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 63
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 61
    :goto_0
    return v1

    .line 64
    .end local v0    # "bank":[B
    .end local v3    # "meta":[B
    :catch_0
    move-exception v0

    .local v0, "ignored":Ljava/io/IOException;
    return v1
.end method

.method private static write(Ljava/io/File;[B)V
    .locals 3
    .param p0, "target"    # Ljava/io/File;
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 83
    .local v0, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 85
    .end local v0    # "out":Ljava/io/FileOutputStream;
    return-void

    .line 82
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
