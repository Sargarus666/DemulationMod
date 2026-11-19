.class public final Lcom/ahsim/demulation/DuneHackR82EmcDependencyStore;
.super Ljava/lang/Object;
.source "DuneHackR82EmcDependencyStore.java"


# static fields
.field private static final REPORT:Ljava/lang/String; = "dependency.txt"

.field private static final ROOT:Ljava/lang/String; = "r82c_emc_dependency_audit_v1"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static append(Ljava/lang/StringBuilder;Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;)V
    .locals 5
    .param p0, "s"    # Ljava/lang/StringBuilder;
    .param p1, "script"    # Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;

    .line 37
    const-string v0, "emc_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v3, p1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->offset:I

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "0x%X"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_bytes="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->length:I

    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_entries="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->entries:I

    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_data_words="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->dataWords:I

    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_sha256="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->sha256:Ljava/lang/String;

    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_variant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->variant:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    return-void
.end method

.method public static auditText(Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;)Ljava/lang/String;
    .locals 4
    .param p0, "sourceHash"    # Ljava/lang/String;
    .param p1, "result"    # Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    if-eqz p0, :cond_0

    const-string v0, "[0-9a-fA-F]{64}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;->scriptsIdentified()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;->sourceSha256:Ljava/lang/String;

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 25
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "R82C_EMC_DEPENDENCIES_V1\nsource_sha256="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 26
    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;->build:Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;

    invoke-static {v0, v1}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyStore;->append(Ljava/lang/StringBuilder;Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;)V

    iget-object v1, p1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;->team:Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;

    invoke-static {v0, v1}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyStore;->append(Ljava/lang/StringBuilder;Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;)V

    iget-object v1, p1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;->unit:Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;

    invoke-static {v0, v1}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyStore;->append(Ljava/lang/StringBuilder;Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;)V

    .line 28
    const-string v1, "scenario_unit_types=32\nunit_emc_entries=27\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 29
    const-string v3, "extra_unit_dispatch=native_asm_requires_audit\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 30
    const-string v3, "verified_reference_troop_parameters="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;->verifiedTroopParameters:Z

    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 32
    const-string v2, "native_function_abi=unverified\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 33
    const-string v2, "game_ready=false\noverlay=false\nexecute_scripts=false\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 23
    .end local v0    # "s":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "R82C EMC audit identity mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static deleteTree(Ljava/io/File;)V
    .locals 4
    .param p0, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 85
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 86
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .local v3, "item":Ljava/io/File;
    invoke-static {v3}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyStore;->deleteTree(Ljava/io/File;)V

    .end local v3    # "item":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "EMC audit folder inaccessible"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    .end local v0    # "files":[Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    return-void

    .line 88
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "EMC audit cache cleanup failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static save(Landroid/content/Context;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceHash"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    if-eqz p0, :cond_b

    .line 53
    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "key":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p2}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyStore;->auditText(Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 55
    .local v1, "expected":[B
    array-length v2, v1

    const/16 v3, 0x2000

    if-gt v2, v3, :cond_a

    .line 56
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "r82c_emc_dependency_audit_v1"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
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

    const-string v4, "EMC metadata directory unavailable"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 58
    :cond_2
    :goto_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    .local v3, "target":Ljava/io/File;
    invoke-static {v3, v1}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyStore;->valid(Ljava/io/File;[B)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "cached"

    return-object v4

    .line 60
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

    .line 61
    .local v4, "stage":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 63
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    const-string v7, "dependency.txt"

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 64
    .local v5, "f":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 66
    .end local v5    # "f":Ljava/io/FileOutputStream;
    invoke-static {v4, v1}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyStore;->valid(Ljava/io/File;[B)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 67
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v3}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyStore;->deleteTree(Ljava/io/File;)V

    .line 68
    :cond_4
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 69
    const-string v5, "stored"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 70
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v4}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyStore;->deleteTree(Ljava/io/File;)V

    .line 69
    :cond_5
    return-object v5

    .line 68
    :cond_6
    :try_start_3
    new-instance v5, Ljava/io/IOException;

    const-string v6, "EMC metadata publication failed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "expected":[B
    .end local v2    # "root":Ljava/io/File;
    .end local v3    # "target":Ljava/io/File;
    .end local v4    # "stage":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "sourceHash":Ljava/lang/String;
    .end local p2    # "result":Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;
    throw v5

    .line 66
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "expected":[B
    .restart local v2    # "root":Ljava/io/File;
    .restart local v3    # "target":Ljava/io/File;
    .restart local v4    # "stage":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "sourceHash":Ljava/lang/String;
    .restart local p2    # "result":Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;
    :cond_7
    new-instance v5, Ljava/io/IOException;

    const-string v6, "EMC metadata verification failed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "expected":[B
    .end local v2    # "root":Ljava/io/File;
    .end local v3    # "target":Ljava/io/File;
    .end local v4    # "stage":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "sourceHash":Ljava/lang/String;
    .end local p2    # "result":Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 63
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "expected":[B
    .restart local v2    # "root":Ljava/io/File;
    .restart local v3    # "target":Ljava/io/File;
    .restart local v4    # "stage":Ljava/io/File;
    .restart local v5    # "f":Ljava/io/FileOutputStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "sourceHash":Ljava/lang/String;
    .restart local p2    # "result":Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;
    :catchall_0
    move-exception v6

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v7

    :try_start_5
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "expected":[B
    .end local v2    # "root":Ljava/io/File;
    .end local v3    # "target":Ljava/io/File;
    .end local v4    # "stage":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "sourceHash":Ljava/lang/String;
    .end local p2    # "result":Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;
    :goto_2
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 70
    .end local v5    # "f":Ljava/io/FileOutputStream;
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "expected":[B
    .restart local v2    # "root":Ljava/io/File;
    .restart local v3    # "target":Ljava/io/File;
    .restart local v4    # "stage":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "sourceHash":Ljava/lang/String;
    .restart local p2    # "result":Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;
    :catchall_2
    move-exception v5

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v4}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyStore;->deleteTree(Ljava/io/File;)V

    :cond_8
    throw v5

    .line 61
    :cond_9
    new-instance v5, Ljava/io/IOException;

    const-string v6, "EMC audit staging unavailable"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 55
    .end local v2    # "root":Ljava/io/File;
    .end local v3    # "target":Ljava/io/File;
    .end local v4    # "stage":Ljava/io/File;
    :cond_a
    new-instance v2, Ljava/io/IOException;

    const-string v3, "R82C EMC metadata oversized"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "expected":[B
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing R82C audit context"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static valid(Ljava/io/File;[B)Z
    .locals 8
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "expected"    # [B

    .line 73
    new-instance v0, Ljava/io/File;

    const-string v1, "dependency.txt"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    .local v0, "f":Ljava/io/File;
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

    .line 75
    :cond_0
    array-length v1, p1

    new-array v1, v1, [B

    .line 76
    .local v1, "bytes":[B
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .local v3, "input":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 78
    .local v4, "p":I
    :goto_0
    :try_start_1
    array-length v5, v1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    array-length v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v5, "n":I
    if-ge v5, v6, :cond_1

    .line 80
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 78
    return v2

    :cond_1
    add-int/2addr v4, v5

    .end local v5    # "n":I
    goto :goto_0

    .line 79
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_3

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move v6, v2

    .line 80
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 79
    return v6

    .line 76
    .end local v4    # "p":I
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

    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "bytes":[B
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "expected":[B
    :goto_2
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 80
    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v0    # "f":Ljava/io/File;
    .restart local v1    # "bytes":[B
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "expected":[B
    :catch_0
    move-exception v3

    .local v3, "ex":Ljava/io/IOException;
    return v2

    .line 74
    .end local v1    # "bytes":[B
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_4
    :goto_3
    return v2
.end method
