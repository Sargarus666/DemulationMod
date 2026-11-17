.class public final Lcom/ahsim/demulation/DuneHackR82cRazorMissionStore;
.super Ljava/lang/Object;
.source "DuneHackR82cRazorMissionStore.java"


# static fields
.field private static final MANIFEST:Ljava/lang/String; = "manifest.txt"

.field private static final MAPS:Ljava/lang/String; = "maps.bin"

.field private static final ROOT:Ljava/lang/String; = "razor_r82c_mission_preview_v1"

.field private static final SCENARIOS:Ljava/lang/String; = "scenarios.bin"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static delete(Ljava/io/File;)V
    .locals 4
    .param p0, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 108
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionStore;->delete(Ljava/io/File;)V

    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor cache unreadable"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    .end local v0    # "children":[Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    return-void

    .line 109
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor cache cleanup failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static read(Ljava/io/File;I)[B
    .locals 6
    .param p0, "f"    # Ljava/io/File;
    .param p1, "expected"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    if-ltz p1, :cond_3

    const/high16 v0, 0x300000

    if-gt p1, v0, :cond_3

    .line 96
    new-array v0, p1, [B

    .line 97
    .local v0, "out":[B
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 98
    .local v1, "in":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .local v2, "p":I
    :goto_0
    if-ge v2, p1, :cond_1

    sub-int v3, p1, v2

    :try_start_0
    invoke-virtual {v1, v0, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .local v3, "n":I
    if-lez v3, :cond_0

    add-int/2addr v2, v3

    .end local v3    # "n":I
    goto :goto_0

    .restart local v3    # "n":I
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Razor cache truncated"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "out":[B
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local p0    # "f":Ljava/io/File;
    .end local p1    # "expected":I
    throw v4

    .line 99
    .end local v3    # "n":I
    .restart local v0    # "out":[B
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "f":Ljava/io/File;
    .restart local p1    # "expected":I
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 100
    .end local v2    # "p":I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 101
    .end local v1    # "in":Ljava/io/FileInputStream;
    return-object v0

    .line 99
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "p":I
    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Razor cache has trailing data"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "out":[B
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local p0    # "f":Ljava/io/File;
    .end local p1    # "expected":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .end local v2    # "p":I
    .restart local v0    # "out":[B
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "f":Ljava/io/File;
    .restart local p1    # "expected":I
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

    .line 95
    .end local v0    # "out":[B
    .end local v1    # "in":Ljava/io/FileInputStream;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor cache size mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static save(Landroid/content/Context;Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    iget-object v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->sourceSha256:Ljava/lang/String;

    const-string v1, "[0-9a-f]{64}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 32
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "razor_r82c_mission_preview_v1"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    .local v0, "root":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor preview directory unavailable"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->sourceSha256:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    .local v1, "target":Ljava/io/File;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 36
    .local v2, "maps":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 37
    .local v3, "scenes":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .local v4, "index":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->allMissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    .line 39
    .local v6, "mission":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    invoke-virtual {v6}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mapBytes()[B

    move-result-object v7

    .line 40
    .local v7, "map":[B
    invoke-virtual {v6}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioBytes()[B

    move-result-object v8

    .line 41
    .local v8, "scene":[B
    const-string v9, "slot="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->house:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x2c

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v6, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mission:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 42
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v11, v7

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 43
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v6, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mapSha256:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 44
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v11, v8

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 45
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v6, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioSha256:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 46
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v6, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 47
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x78

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapHeight:I

    .line 48
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    array-length v9, v7

    const/4 v10, 0x0

    invoke-virtual {v2, v7, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 50
    array-length v9, v8

    invoke-virtual {v3, v8, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 51
    .end local v6    # "mission":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .end local v7    # "map":[B
    .end local v8    # "scene":[B
    goto/16 :goto_1

    .line 52
    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 53
    .local v5, "mapBank":[B
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 54
    .local v6, "scenarioBank":[B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RAZOR_MISSION_PREVIEW_V1\nsource_sha256="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->sourceSha256:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nvariant="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->variant:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\ndecoded="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->missionsDecoded:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nblocked="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->unsupportedScenarioSlots:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nmaps_sha256="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 59
    invoke-static {v5}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionStore;->sha256([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nscenarios_sha256="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 60
    invoke-static {v6}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionStore;->sha256([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nready=false\nno_native_launch=true\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 63
    .local v7, "manifest":Ljava/lang/String;
    sget-object v8, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    .line 64
    .local v8, "manifestBytes":[B
    invoke-static {v1, v5, v6, v8}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionStore;->valid(Ljava/io/File;[B[B[B)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "cached"

    return-object v9

    .line 65
    :cond_3
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->sourceSha256:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".tmp."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    .local v9, "staging":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 68
    :try_start_0
    new-instance v10, Ljava/io/File;

    const-string v11, "maps.bin"

    invoke-direct {v10, v9, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v10, v5}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionStore;->write(Ljava/io/File;[B)V

    .line 69
    new-instance v10, Ljava/io/File;

    const-string v11, "scenarios.bin"

    invoke-direct {v10, v9, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v10, v6}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionStore;->write(Ljava/io/File;[B)V

    .line 70
    new-instance v10, Ljava/io/File;

    const-string v11, "manifest.txt"

    invoke-direct {v10, v9, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v10, v8}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionStore;->write(Ljava/io/File;[B)V

    .line 71
    invoke-static {v9, v5, v6, v8}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionStore;->valid(Ljava/io/File;[B[B[B)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 73
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {v1}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionStore;->delete(Ljava/io/File;)V

    .line 74
    :cond_4
    invoke-virtual {v9, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 75
    const-string v10, "stored"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-static {v9}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionStore;->delete(Ljava/io/File;)V

    .line 75
    :cond_5
    return-object v10

    .line 74
    :cond_6
    :try_start_1
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Razor preview commit failed"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "root":Ljava/io/File;
    .end local v1    # "target":Ljava/io/File;
    .end local v2    # "maps":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "scenes":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "index":Ljava/lang/StringBuilder;
    .end local v5    # "mapBank":[B
    .end local v6    # "scenarioBank":[B
    .end local v7    # "manifest":Ljava/lang/String;
    .end local v8    # "manifestBytes":[B
    .end local v9    # "staging":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "result":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    throw v10

    .line 72
    .restart local v0    # "root":Ljava/io/File;
    .restart local v1    # "target":Ljava/io/File;
    .restart local v2    # "maps":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "scenes":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "index":Ljava/lang/StringBuilder;
    .restart local v5    # "mapBank":[B
    .restart local v6    # "scenarioBank":[B
    .restart local v7    # "manifest":Ljava/lang/String;
    .restart local v8    # "manifestBytes":[B
    .restart local v9    # "staging":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "result":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    :cond_7
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Razor staging bytes corrupted"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "root":Ljava/io/File;
    .end local v1    # "target":Ljava/io/File;
    .end local v2    # "maps":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "scenes":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "index":Ljava/lang/StringBuilder;
    .end local v5    # "mapBank":[B
    .end local v6    # "scenarioBank":[B
    .end local v7    # "manifest":Ljava/lang/String;
    .end local v8    # "manifestBytes":[B
    .end local v9    # "staging":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "result":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .restart local v0    # "root":Ljava/io/File;
    .restart local v1    # "target":Ljava/io/File;
    .restart local v2    # "maps":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "scenes":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "index":Ljava/lang/StringBuilder;
    .restart local v5    # "mapBank":[B
    .restart local v6    # "scenarioBank":[B
    .restart local v7    # "manifest":Ljava/lang/String;
    .restart local v8    # "manifestBytes":[B
    .restart local v9    # "staging":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "result":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    :catchall_0
    move-exception v10

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-static {v9}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionStore;->delete(Ljava/io/File;)V

    .line 78
    :cond_8
    throw v10

    .line 66
    :cond_9
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Razor staging directory unavailable"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 31
    .end local v0    # "root":Ljava/io/File;
    .end local v1    # "target":Ljava/io/File;
    .end local v2    # "maps":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "scenes":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "index":Ljava/lang/StringBuilder;
    .end local v5    # "mapBank":[B
    .end local v6    # "scenarioBank":[B
    .end local v7    # "manifest":Ljava/lang/String;
    .end local v8    # "manifestBytes":[B
    .end local v9    # "staging":Ljava/io/File;
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor preview context/source missing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static sha256([B)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 114
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 115
    .local v1, "b":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v0, v3

    .local v4, "v":B
    ushr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v5, v4, 0xf

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local v4    # "v":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 117
    .end local v0    # "bytes":[B
    .end local v1    # "b":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static valid(Ljava/io/File;[B[B[B)Z
    .locals 5
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "mapBank"    # [B
    .param p2, "scenarios"    # [B
    .param p3, "manifest"    # [B

    .line 83
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 84
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "maps.bin"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    array-length v2, p1

    invoke-static {v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionStore;->read(Ljava/io/File;I)[B

    move-result-object v1

    .line 85
    .local v1, "storedMaps":[B
    new-instance v2, Ljava/io/File;

    const-string v3, "scenarios.bin"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    array-length v3, p2

    invoke-static {v2, v3}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionStore;->read(Ljava/io/File;I)[B

    move-result-object v2

    .line 86
    .local v2, "storedScenarios":[B
    new-instance v3, Ljava/io/File;

    const-string v4, "manifest.txt"

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    array-length v4, p3

    invoke-static {v3, v4}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionStore;->read(Ljava/io/File;I)[B

    move-result-object v3

    .line 88
    .local v3, "storedManifest":[B
    invoke-static {v1, p1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 89
    invoke-static {v2, p2}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    invoke-static {v3, p3}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 88
    :goto_0
    return v0

    .line 91
    .end local v1    # "storedMaps":[B
    .end local v2    # "storedScenarios":[B
    .end local v3    # "storedManifest":[B
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    return v0
.end method

.method private static write(Ljava/io/File;[B)V
    .locals 3
    .param p0, "f"    # Ljava/io/File;
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v0, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 105
    .end local v0    # "out":Ljava/io/FileOutputStream;
    return-void

    .line 104
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
