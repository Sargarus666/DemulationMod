.class public final Lcom/ahsim/demulation/DuneHackR82AsmHookStore;
.super Ljava/lang/Object;
.source "DuneHackR82AsmHookStore.java"


# static fields
.field private static final ROOT:Ljava/lang/String; = "r82c_asm_hook_audit_v1"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static auditText(Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;)Ljava/lang/String;
    .locals 6
    .param p0, "sha"    # Ljava/lang/String;
    .param p1, "result"    # Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;
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

    iget-object v0, p1, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;->sourceSha256:Ljava/lang/String;

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x898

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 23
    .local v0, "out":Ljava/lang/StringBuilder;
    const-string v1, "R82C_ASM_HOOK_AUDIT_V1\nsource_sha256="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 24
    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 25
    const-string v3, "observed_opcode_locations="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;->opcodeObservations:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 26
    const-string v3, "unresolved_locations="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;->unresolvedHooks:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p1, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;->hooks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;

    .line 28
    .local v3, "h":Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;
    iget-object v4, v3, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;->evidence:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 29
    const-string v5, ";gate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;->gate:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 30
    const-string v5, ";layout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;->matchedLayout:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 31
    const-string v5, ";address="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;->matchedAddress:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 32
    const-string v5, ";matching_variants="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;->matchingVariants:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .end local v3    # "h":Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;
    goto :goto_0

    .line 34
    :cond_0
    const-string v1, "asm_source_options_verified=false\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 35
    const-string v2, "asm_jump_targets_verified=false\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 36
    const-string v2, "asm_semantics_verified=false\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 37
    const-string v2, "game_ready=false\nexecute_rom_code=false\noverlay=false\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 20
    .end local v0    # "out":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "R82C ASM hook audit ROM identity mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static save(Landroid/content/Context;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sha"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    const-string v0, "Cannot clean ASM audit temp"

    if-eqz p0, :cond_d

    .line 43
    invoke-static {p1, p2}, Lcom/ahsim/demulation/DuneHackR82AsmHookStore;->auditText(Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 44
    .local v1, "contents":[B
    array-length v2, v1

    const/16 v3, 0x2000

    if-gt v2, v3, :cond_c

    .line 45
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "r82c_asm_hook_audit_v1"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .local v2, "root":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v3, "ASM audit folder unavailable"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    :goto_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    .local v3, "target":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    array-length v6, v1

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 49
    array-length v4, v1

    new-array v4, v4, [B

    .line 50
    .local v4, "previous":[B
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 51
    .local v5, "input":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 52
    .local v6, "p":I
    :goto_1
    :try_start_0
    array-length v7, v4

    if-ge v6, v7, :cond_2

    array-length v7, v4

    sub-int/2addr v7, v6

    invoke-virtual {v5, v4, v6, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    move v8, v7

    .local v8, "n":I
    if-lez v7, :cond_2

    add-int/2addr v6, v8

    goto :goto_1

    .line 53
    .end local v8    # "n":I
    :cond_2
    array-length v7, v4

    if-ne v6, v7, :cond_3

    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 54
    const-string v0, "cached"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 54
    return-object v0

    .line 55
    .end local v6    # "p":I
    :cond_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    goto :goto_3

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v6

    invoke-virtual {v0, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0

    .line 57
    .end local v4    # "previous":[B
    .end local v5    # "input":Ljava/io/FileInputStream;
    :cond_4
    :goto_3
    const-string v4, "hooks_"

    const-string v5, ".tmp"

    invoke-static {v4, v5, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 59
    .local v4, "tmp":Ljava/io/File;
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 60
    .local v5, "output":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v5, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 61
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 62
    .end local v5    # "output":Ljava/io/FileOutputStream;
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 63
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Cannot replace ASM audit"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "contents":[B
    .end local v2    # "root":Ljava/io/File;
    .end local v3    # "target":Ljava/io/File;
    .end local v4    # "tmp":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "sha":Ljava/lang/String;
    .end local p2    # "result":Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;
    throw v5

    .line 64
    .restart local v1    # "contents":[B
    .restart local v2    # "root":Ljava/io/File;
    .restart local v3    # "target":Ljava/io/File;
    .restart local v4    # "tmp":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "sha":Ljava/lang/String;
    .restart local p2    # "result":Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;
    :cond_6
    :goto_4
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Cannot commit ASM audit"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "contents":[B
    .end local v2    # "root":Ljava/io/File;
    .end local v3    # "target":Ljava/io/File;
    .end local v4    # "tmp":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "sha":Ljava/lang/String;
    .end local p2    # "result":Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;
    throw v5

    .line 66
    .restart local v1    # "contents":[B
    .restart local v2    # "root":Ljava/io/File;
    .restart local v3    # "target":Ljava/io/File;
    .restart local v4    # "tmp":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "sha":Ljava/lang/String;
    .restart local p2    # "result":Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;
    :cond_8
    :goto_5
    const-string v5, "stored"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 68
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_6

    :cond_9
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 66
    :cond_a
    :goto_6
    return-object v5

    .line 59
    .restart local v5    # "output":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v6

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v7

    :try_start_6
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "contents":[B
    .end local v2    # "root":Ljava/io/File;
    .end local v3    # "target":Ljava/io/File;
    .end local v4    # "tmp":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "sha":Ljava/lang/String;
    .end local p2    # "result":Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;
    :goto_7
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 68
    .end local v5    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "contents":[B
    .restart local v2    # "root":Ljava/io/File;
    .restart local v3    # "target":Ljava/io/File;
    .restart local v4    # "tmp":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "sha":Ljava/lang/String;
    .restart local p2    # "result":Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;
    :catchall_4
    move-exception v5

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_b

    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 69
    :cond_b
    throw v5

    .line 44
    .end local v2    # "root":Ljava/io/File;
    .end local v3    # "target":Ljava/io/File;
    .end local v4    # "tmp":Ljava/io/File;
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v2, "ASM audit too large"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    .end local v1    # "contents":[B
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing application context"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
