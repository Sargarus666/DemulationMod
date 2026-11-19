.class public final Lcom/ahsim/demulation/DuneHackR82ScenarioContentStore;
.super Ljava/lang/Object;
.source "DuneHackR82ScenarioContentStore.java"


# static fields
.field private static final BANK:Ljava/lang/String; = "scenario_bank.bin"

.field private static final MANIFEST:Ljava/lang/String; = "manifest.txt"

.field private static final PARAMETERS:Ljava/lang/String; = "troop_parameters.bin"

.field private static final ROOT:Ljava/lang/String; = "r82c_scenarios_preview_v1"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
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

    .line 97
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 99
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 100
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lcom/ahsim/demulation/DuneHackR82ScenarioContentStore;->deleteTree(Ljava/io/File;)V

    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "R82C scenario directory unreadable"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    .end local v0    # "children":[Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    return-void

    .line 102
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "R82C scenario file cleanup failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isValid(Ljava/io/File;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;)Z
    .locals 7
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "expectedManifest"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;
    .param p3, "parameters"    # Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;

    .line 61
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 62
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "scenario_bank.bin"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v2, p2, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;->payloadBytes:I

    invoke-static {v1, v2}, Lcom/ahsim/demulation/DuneHackR82ScenarioContentStore;->read(Ljava/io/File;I)[B

    move-result-object v1

    .line 63
    .local v1, "content":[B
    new-instance v2, Ljava/io/File;

    const-string v3, "troop_parameters.bin"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v3, 0x28

    invoke-static {v2, v3}, Lcom/ahsim/demulation/DuneHackR82ScenarioContentStore;->read(Ljava/io/File;I)[B

    move-result-object v2

    .line 65
    .local v2, "paramBytes":[B
    new-instance v4, Ljava/io/File;

    const-string v5, "manifest.txt"

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v5, 0x200

    invoke-static {v4, v5}, Lcom/ahsim/demulation/DuneHackR82ScenarioContentStore;->read(Ljava/io/File;I)[B

    move-result-object v4

    .line 66
    .local v4, "m":[B
    array-length v5, v1

    iget v6, p2, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;->payloadBytes:I

    if-ne v5, v6, :cond_1

    array-length v5, v2

    if-ne v5, v3, :cond_1

    iget-object v3, p2, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;->archiveSha256:Ljava/lang/String;

    .line 68
    invoke-static {v1}, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;->sha256([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p3, Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;->sha256:Ljava/lang/String;

    .line 69
    invoke-static {v2}, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;->sha256([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 70
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 66
    :goto_0
    return v0

    .line 71
    .end local v1    # "content":[B
    .end local v2    # "paramBytes":[B
    .end local v4    # "m":[B
    :catch_0
    move-exception v1

    .line 72
    .local v1, "ignored":Ljava/io/IOException;
    return v0
.end method

.method private static read(Ljava/io/File;I)[B
    .locals 6
    .param p0, "path"    # Ljava/io/File;
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
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

    .line 78
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 79
    .local v0, "content":[B
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 80
    .local v1, "in":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 81
    .local v2, "pos":I
    :goto_0
    :try_start_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 82
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 83
    .local v3, "n":I
    if-lez v3, :cond_0

    .line 84
    add-int/2addr v2, v3

    .line 85
    .end local v3    # "n":I
    goto :goto_0

    .line 83
    .restart local v3    # "n":I
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "R82C scenario cache truncated"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "content":[B
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local p0    # "path":Ljava/io/File;
    .end local p1    # "limit":I
    throw v4

    .line 86
    .end local v3    # "n":I
    .restart local v0    # "content":[B
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "path":Ljava/io/File;
    .restart local p1    # "limit":I
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 87
    .end local v2    # "pos":I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 88
    .end local v1    # "in":Ljava/io/FileInputStream;
    return-object v0

    .line 86
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "pos":I
    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "R82C scenario cache grew while reading"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "content":[B
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local p0    # "path":Ljava/io/File;
    .end local p1    # "limit":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .end local v2    # "pos":I
    .restart local v0    # "content":[B
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "path":Ljava/io/File;
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

    .line 77
    .end local v0    # "content":[B
    .end local v1    # "in":Ljava/io/FileInputStream;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "R82C scenario cache file missing or too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static save(Landroid/content/Context;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceSha256"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;
    .param p3, "parameters"    # Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    if-eqz p0, :cond_9

    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    if-eqz p1, :cond_9

    .line 24
    const-string v0, "[0-9a-fA-F]{64}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 26
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "r82c_scenarios_preview_v1"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .local v1, "root":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "R82C scenario preview folder unavailable"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 30
    :cond_1
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    .local v2, "published":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "R82C_SCENARIO_PREVIEW_V1\nsource_sha256="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\npointer_table=0x83CB4\nhouses=5\nmissions_per_house=9\npayload_bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;->payloadBytes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nbank_sha256="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;->archiveSha256:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nparameters_offset=0x25D86\nparameters_bytes=40\nparameters_sha256="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;->sha256:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nready=false\ngameplay=false\noverlay=false\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "manifest":Ljava/lang/String;
    invoke-static {v2, v3, p2, p3}, Lcom/ahsim/demulation/DuneHackR82ScenarioContentStore;->isValid(Ljava/io/File;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "cached"

    return-object v4

    .line 41
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

    .line 42
    .local v4, "staging":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 44
    :try_start_0
    const-string v5, "scenario_bank.bin"

    invoke-virtual {p2}, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;->archive()[B

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/ahsim/demulation/DuneHackR82ScenarioContentStore;->write(Ljava/io/File;Ljava/lang/String;[B)V

    .line 45
    const-string v5, "troop_parameters.bin"

    invoke-virtual {p3}, Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;->bytes()[B

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/ahsim/demulation/DuneHackR82ScenarioContentStore;->write(Ljava/io/File;Ljava/lang/String;[B)V

    .line 46
    const-string v5, "manifest.txt"

    sget-object v6, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/ahsim/demulation/DuneHackR82ScenarioContentStore;->write(Ljava/io/File;Ljava/lang/String;[B)V

    .line 47
    invoke-static {v4, v3, p2, p3}, Lcom/ahsim/demulation/DuneHackR82ScenarioContentStore;->isValid(Ljava/io/File;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 49
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v2}, Lcom/ahsim/demulation/DuneHackR82ScenarioContentStore;->deleteTree(Ljava/io/File;)V

    .line 50
    :cond_3
    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 52
    const-string v5, "stored"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v4}, Lcom/ahsim/demulation/DuneHackR82ScenarioContentStore;->deleteTree(Ljava/io/File;)V

    .line 52
    :cond_4
    return-object v5

    .line 51
    :cond_5
    :try_start_1
    new-instance v5, Ljava/io/IOException;

    const-string v6, "R82C scenario preview publish failed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "root":Ljava/io/File;
    .end local v2    # "published":Ljava/io/File;
    .end local v3    # "manifest":Ljava/lang/String;
    .end local v4    # "staging":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "sourceSha256":Ljava/lang/String;
    .end local p2    # "result":Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;
    .end local p3    # "parameters":Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;
    throw v5

    .line 48
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "root":Ljava/io/File;
    .restart local v2    # "published":Ljava/io/File;
    .restart local v3    # "manifest":Ljava/lang/String;
    .restart local v4    # "staging":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "sourceSha256":Ljava/lang/String;
    .restart local p2    # "result":Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;
    .restart local p3    # "parameters":Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;
    :cond_6
    new-instance v5, Ljava/io/IOException;

    const-string v6, "R82C scenario preview checksum mismatch"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "root":Ljava/io/File;
    .end local v2    # "published":Ljava/io/File;
    .end local v3    # "manifest":Ljava/lang/String;
    .end local v4    # "staging":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "sourceSha256":Ljava/lang/String;
    .end local p2    # "result":Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;
    .end local p3    # "parameters":Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "root":Ljava/io/File;
    .restart local v2    # "published":Ljava/io/File;
    .restart local v3    # "manifest":Ljava/lang/String;
    .restart local v4    # "staging":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "sourceSha256":Ljava/lang/String;
    .restart local p2    # "result":Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;
    .restart local p3    # "parameters":Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v4}, Lcom/ahsim/demulation/DuneHackR82ScenarioContentStore;->deleteTree(Ljava/io/File;)V

    .line 55
    :cond_7
    throw v5

    .line 42
    :cond_8
    new-instance v5, Ljava/io/IOException;

    const-string v6, "R82C scenario preview staging unavailable"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 25
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "root":Ljava/io/File;
    .end local v2    # "published":Ljava/io/File;
    .end local v3    # "manifest":Ljava/lang/String;
    .end local v4    # "staging":Ljava/io/File;
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "R82C scenario preview source fingerprint invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static write(Ljava/io/File;Ljava/lang/String;[B)V
    .locals 3
    .param p0, "parent"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 92
    .local v0, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 93
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 95
    .end local v0    # "out":Ljava/io/FileOutputStream;
    return-void

    .line 91
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
