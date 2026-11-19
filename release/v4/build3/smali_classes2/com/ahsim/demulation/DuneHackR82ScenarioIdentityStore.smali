.class public final Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityStore;
.super Ljava/lang/Object;
.source "DuneHackR82ScenarioIdentityStore.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "identity.txt"

.field private static final ROOT:Ljava/lang/String; = "r82c_scenario_identity_audit_v1"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deleteTree(Ljava/io/File;)V
    .locals 4
    .param p0, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 95
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 96
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityStore;->deleteTree(Ljava/io/File;)V

    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "R82C audit directory unreadable"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    .end local v0    # "children":[Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    return-void

    .line 98
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "R82C audit cleanup failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static reportText(Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;)Ljava/lang/String;
    .locals 10
    .param p0, "sourceSha256"    # Ljava/lang/String;
    .param p1, "result"    # Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    if-eqz p0, :cond_3

    const-string v0, "[0-9a-fA-F]{64}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget v0, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;->scenarios:I

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_3

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 22
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "R82C_SCENARIO_IDENTITIES_V1\nsource_sha256="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 23
    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 24
    const-string v2, "\nscenarios="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;->scenarios:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 25
    const-string v2, "\nobjects_checked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;->checkedObjects:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 26
    const-string v2, "\nunits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;->units:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 27
    const-string v2, "\nplaced_structures="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;->structures:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 28
    const-string v2, "\ngeneric_structure_tiles="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;->genericStructureTiles:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 29
    const-string v2, "\nteams="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;->teams:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 30
    const-string v2, "\nreinforcements="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;->reinforcements:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 31
    const-string v2, "\nextra_house_sections_0B="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;->fifthHouseSections:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 32
    const-string v2, "\nready=false\ngameplay=false\noverlay=false\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x5

    const/16 v3, 0xa

    const/16 v4, 0x3d

    const/16 v5, 0x5f

    if-ge v1, v2, :cond_0

    .line 34
    const-string v2, "house_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 35
    invoke-static {v1}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->houseName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 36
    invoke-virtual {p1}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;->ownerCounts()[I

    move-result-object v4

    aget v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;->unitTypeCounts()[I

    move-result-object v1

    .line 39
    .local v1, "units":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v1

    const/16 v7, 0x20

    if-ge v2, v6, :cond_1

    .line 40
    const-string v6, "unit_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 41
    invoke-static {v2}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->unitTypeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 42
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v1, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 44
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p1}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;->structureTypeCounts()[I

    move-result-object v2

    .line 45
    .local v2, "structures":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v8, v2

    if-ge v6, v8, :cond_2

    .line 46
    const-string v8, "structure_"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 47
    invoke-static {v6}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->structureTypeName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 48
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 50
    .end local v6    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 20
    .end local v0    # "s":Ljava/lang/StringBuilder;
    .end local v1    # "units":[I
    .end local v2    # "structures":[I
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unverified R82C identity audit"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static save(Landroid/content/Context;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceSha256"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    if-eqz p0, :cond_b

    .line 56
    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "normalized":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p2}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityStore;->reportText(Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 58
    .local v1, "expected":[B
    array-length v2, v1

    const/16 v3, 0x4000

    if-gt v2, v3, :cond_a

    .line 59
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "r82c_scenario_identity_audit_v1"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    .local v2, "root":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "R82C audit directory unavailable"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 61
    :cond_2
    :goto_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    .local v3, "published":Ljava/io/File;
    invoke-static {v3, v1}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityStore;->valid(Ljava/io/File;[B)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "cached"

    return-object v4

    .line 63
    :cond_3
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

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    .local v4, "temp":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 66
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v6, "identity.txt"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    .local v5, "record":Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 68
    .local v6, "output":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v6, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 69
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 71
    .end local v6    # "output":Ljava/io/FileOutputStream;
    invoke-static {v4, v1}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityStore;->valid(Ljava/io/File;[B)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 72
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v3}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityStore;->deleteTree(Ljava/io/File;)V

    .line 73
    :cond_4
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 74
    const-string v6, "stored"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 75
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v4}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityStore;->deleteTree(Ljava/io/File;)V

    .line 74
    :cond_5
    return-object v6

    .line 73
    :cond_6
    :try_start_3
    new-instance v6, Ljava/io/IOException;

    const-string v7, "R82C audit publish failed"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "normalized":Ljava/lang/String;
    .end local v1    # "expected":[B
    .end local v2    # "root":Ljava/io/File;
    .end local v3    # "published":Ljava/io/File;
    .end local v4    # "temp":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "sourceSha256":Ljava/lang/String;
    .end local p2    # "result":Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;
    throw v6

    .line 71
    .restart local v0    # "normalized":Ljava/lang/String;
    .restart local v1    # "expected":[B
    .restart local v2    # "root":Ljava/io/File;
    .restart local v3    # "published":Ljava/io/File;
    .restart local v4    # "temp":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "sourceSha256":Ljava/lang/String;
    .restart local p2    # "result":Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;
    :cond_7
    new-instance v6, Ljava/io/IOException;

    const-string v7, "R82C audit staging verification failed"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "normalized":Ljava/lang/String;
    .end local v1    # "expected":[B
    .end local v2    # "root":Ljava/io/File;
    .end local v3    # "published":Ljava/io/File;
    .end local v4    # "temp":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "sourceSha256":Ljava/lang/String;
    .end local p2    # "result":Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 67
    .restart local v0    # "normalized":Ljava/lang/String;
    .restart local v1    # "expected":[B
    .restart local v2    # "root":Ljava/io/File;
    .restart local v3    # "published":Ljava/io/File;
    .restart local v4    # "temp":Ljava/io/File;
    .restart local v6    # "output":Ljava/io/FileOutputStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "sourceSha256":Ljava/lang/String;
    .restart local p2    # "result":Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;
    :catchall_0
    move-exception v7

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v8

    :try_start_5
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "normalized":Ljava/lang/String;
    .end local v1    # "expected":[B
    .end local v2    # "root":Ljava/io/File;
    .end local v3    # "published":Ljava/io/File;
    .end local v4    # "temp":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "sourceSha256":Ljava/lang/String;
    .end local p2    # "result":Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;
    :goto_2
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 75
    .end local v5    # "record":Ljava/io/File;
    .end local v6    # "output":Ljava/io/FileOutputStream;
    .restart local v0    # "normalized":Ljava/lang/String;
    .restart local v1    # "expected":[B
    .restart local v2    # "root":Ljava/io/File;
    .restart local v3    # "published":Ljava/io/File;
    .restart local v4    # "temp":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "sourceSha256":Ljava/lang/String;
    .restart local p2    # "result":Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;
    :catchall_2
    move-exception v5

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v4}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityStore;->deleteTree(Ljava/io/File;)V

    :cond_8
    throw v5

    .line 64
    :cond_9
    new-instance v5, Ljava/io/IOException;

    const-string v6, "R82C audit staging unavailable"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 58
    .end local v2    # "root":Ljava/io/File;
    .end local v3    # "published":Ljava/io/File;
    .end local v4    # "temp":Ljava/io/File;
    :cond_a
    new-instance v2, Ljava/io/IOException;

    const-string v3, "R82C identity audit too large"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    .end local v0    # "normalized":Ljava/lang/String;
    .end local v1    # "expected":[B
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing R82C audit context"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static valid(Ljava/io/File;[B)Z
    .locals 7
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "expected"    # [B

    .line 79
    new-instance v0, Ljava/io/File;

    const-string v1, "identity.txt"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    array-length v1, p1

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_0

    goto :goto_3

    .line 81
    :cond_0
    array-length v1, p1

    new-array v1, v1, [B

    .line 82
    .local v1, "bytes":[B
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .local v3, "input":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 84
    .local v4, "offset":I
    :goto_0
    :try_start_1
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 85
    array-length v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .local v5, "n":I
    if-gtz v5, :cond_1

    .line 90
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 86
    return v2

    .line 87
    :cond_1
    add-int/2addr v4, v5

    .line 88
    .end local v5    # "n":I
    goto :goto_0

    .line 89
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    move v5, v2

    .line 90
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 89
    return v5

    .line 82
    .end local v4    # "offset":I
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v5

    :try_start_6
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "bytes":[B
    .end local p0    # "directory":Ljava/io/File;
    .end local p1    # "expected":[B
    :goto_2
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 90
    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "bytes":[B
    .restart local p0    # "directory":Ljava/io/File;
    .restart local p1    # "expected":[B
    :catch_0
    move-exception v3

    .local v3, "ex":Ljava/io/IOException;
    return v2

    .line 80
    .end local v1    # "bytes":[B
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_4
    :goto_3
    return v2
.end method
