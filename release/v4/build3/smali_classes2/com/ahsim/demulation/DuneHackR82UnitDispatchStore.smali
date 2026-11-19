.class public final Lcom/ahsim/demulation/DuneHackR82UnitDispatchStore;
.super Ljava/lang/Object;
.source "DuneHackR82UnitDispatchStore.java"


# static fields
.field private static final ROOT:Ljava/lang/String; = "r82c_unit_dispatch_audit_v1"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static auditText(Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;)Ljava/lang/String;
    .locals 7
    .param p0, "hash"    # Ljava/lang/String;
    .param p1, "result"    # Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    if-eqz p0, :cond_1

    const-string v0, "[0-9a-fA-F]{64}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;->sourceSha256:Ljava/lang/String;

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 22
    .local v0, "out":Ljava/lang/StringBuilder;
    const-string v1, "R82C_UNIT_DISPATCH_V1\nsource_sha256="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 23
    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, "script_table_offset=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;->scriptIdOffset:I

    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 26
    const-string v3, "unit_pointer_table_offset=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;->unitPointerTableOffset:I

    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 28
    const-string v3, "unit_record_base=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;->unitRecordsOffset:I

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 30
    const-string v3, "unit_record_bytes="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;->unitRecordSize:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 31
    const-string v3, "unit_types=32\nemc_entries=27\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "hurricane"

    aput-object v4, v1, v3

    const-string v3, "rocketquad"

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v3, 0x2

    const-string v4, "lasertank"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "hovertank"

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string v4, "orka"

    aput-object v4, v1, v3

    .line 33
    .local v1, "names":[Ljava/lang/String;
    const/16 v3, 0x1b

    .local v3, "id":I
    :goto_0
    const/16 v4, 0x20

    if-ge v3, v4, :cond_0

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v3, -0x1b

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 35
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_emc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v3}, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;->scriptForUnitType(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 36
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_record_sha256="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 37
    invoke-virtual {p1, v3}, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;->extraUnitRecordSha256(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .end local v4    # "key":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 39
    .end local v3    # "id":I
    :cond_0
    const-string v2, "script_mapping_identified=true\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 40
    const-string v3, "native_function_abi=unverified\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 41
    const-string v3, "modified_unit_gameplay=unverified\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 42
    const-string v3, "game_ready=false\noverlay=false\nexecute_scripts=false\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 20
    .end local v0    # "out":Ljava/lang/StringBuilder;
    .end local v1    # "names":[Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "R82C unit dispatcher identity mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static save(Landroid/content/Context;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hash"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    const-string v0, "R82C temp report cleanup failed"

    if-eqz p0, :cond_f

    .line 49
    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "key":Ljava/lang/String;
    :goto_0
    invoke-static {v1, p2}, Lcom/ahsim/demulation/DuneHackR82UnitDispatchStore;->auditText(Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 51
    .local v2, "expected":[B
    array-length v3, v2

    const/16 v4, 0x2000

    if-gt v3, v4, :cond_e

    .line 52
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "r82c_unit_dispatch_audit_v1"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    .local v3, "root":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v4, "R82C audit root unavailable"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_2
    :goto_1
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    .local v4, "target":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    array-length v7, v2

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_6

    .line 56
    array-length v5, v2

    new-array v5, v5, [B

    .line 57
    .local v5, "actual":[B
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 58
    .local v6, "f":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 59
    .local v7, "p":I
    :goto_2
    :try_start_0
    array-length v8, v5

    if-ge v7, v8, :cond_4

    .line 60
    array-length v8, v5

    sub-int/2addr v8, v7

    invoke-virtual {v6, v5, v7, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    .line 61
    .local v8, "n":I
    const/4 v9, 0x1

    if-ge v8, v9, :cond_3

    goto :goto_3

    .line 62
    :cond_3
    add-int/2addr v7, v8

    .line 63
    .end local v8    # "n":I
    goto :goto_2

    .line 64
    :cond_4
    :goto_3
    array-length v8, v5

    if-ne v7, v8, :cond_5

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    .line 65
    invoke-static {v5, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v0, "cached"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 65
    return-object v0

    .line 66
    .end local v7    # "p":I
    :cond_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    goto :goto_5

    .line 57
    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v7

    invoke-virtual {v0, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v0

    .line 68
    .end local v5    # "actual":[B
    .end local v6    # "f":Ljava/io/FileInputStream;
    :cond_6
    :goto_5
    const-string v5, "dispatch_"

    const-string v6, ".tmp"

    invoke-static {v5, v6, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 70
    .local v5, "temp":Ljava/io/File;
    :try_start_2
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 71
    .local v6, "f":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v6, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 72
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 73
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 74
    .end local v6    # "f":Ljava/io/FileOutputStream;
    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 76
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_6

    .line 77
    :cond_7
    new-instance v6, Ljava/io/IOException;

    const-string v7, "R82C old dispatch report not replaceable"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "expected":[B
    .end local v3    # "root":Ljava/io/File;
    .end local v4    # "target":Ljava/io/File;
    .end local v5    # "temp":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "hash":Ljava/lang/String;
    .end local p2    # "result":Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;
    throw v6

    .line 78
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "expected":[B
    .restart local v3    # "root":Ljava/io/File;
    .restart local v4    # "target":Ljava/io/File;
    .restart local v5    # "temp":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "hash":Ljava/lang/String;
    .restart local p2    # "result":Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;
    :cond_8
    :goto_6
    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_7

    :cond_9
    new-instance v6, Ljava/io/IOException;

    const-string v7, "R82C dispatch report commit failed"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "expected":[B
    .end local v3    # "root":Ljava/io/File;
    .end local v4    # "target":Ljava/io/File;
    .end local v5    # "temp":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "hash":Ljava/lang/String;
    .end local p2    # "result":Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;
    throw v6

    .line 80
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "expected":[B
    .restart local v3    # "root":Ljava/io/File;
    .restart local v4    # "target":Ljava/io/File;
    .restart local v5    # "temp":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "hash":Ljava/lang/String;
    .restart local p2    # "result":Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;
    :cond_a
    :goto_7
    const-string v6, "stored"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 82
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_8

    :cond_b
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 80
    :cond_c
    :goto_8
    return-object v6

    .line 70
    .restart local v6    # "f":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v8

    :try_start_6
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "expected":[B
    .end local v3    # "root":Ljava/io/File;
    .end local v4    # "target":Ljava/io/File;
    .end local v5    # "temp":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "hash":Ljava/lang/String;
    .end local p2    # "result":Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;
    :goto_9
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 82
    .end local v6    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "expected":[B
    .restart local v3    # "root":Ljava/io/File;
    .restart local v4    # "target":Ljava/io/File;
    .restart local v5    # "temp":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "hash":Ljava/lang/String;
    .restart local p2    # "result":Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;
    :catchall_4
    move-exception v6

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_d

    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 83
    :cond_d
    throw v6

    .line 51
    .end local v3    # "root":Ljava/io/File;
    .end local v4    # "target":Ljava/io/File;
    .end local v5    # "temp":Ljava/io/File;
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v3, "R82C dispatcher metadata too large"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "expected":[B
    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "R82C dispatcher context missing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
