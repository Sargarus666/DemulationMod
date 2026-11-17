.class public final Lcom/ahsim/demulation/RazorAndroidRuntimeEvidence532;
.super Ljava/lang/Object;
.source "RazorAndroidRuntimeEvidence532.java"


# static fields
.field public static final ENTRY:Ljava/lang/String; = "razor_android_runtime_status532.json"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 26
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "previous"    # Ljava/io/File;
    .param p2, "sha"    # Ljava/lang/String;
    .param p3, "house"    # I
    .param p4, "mission"    # I
    .param p5, "kind"    # Ljava/lang/String;
    .param p6, "outcome"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, ","

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 58
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 59
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 62
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v3 .. v9}, Lcom/ahsim/demulation/RazorAndroidRuntimeEvidence532;->status(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 63
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 64
    .local v10, "base":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    const/4 v7, 0x0

    invoke-virtual {v10, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_532.zip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v11, v3

    .line 65
    .local v11, "target":Ljava/io/File;
    invoke-virtual {v11, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 66
    const-string v3, "razor532_"

    const-string v4, ".part"

    invoke-static {v3, v4, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v12

    .line 67
    .local v12, "temp":Ljava/io/File;
    const/4 v13, 0x0

    .line 69
    .local v13, "committed":Z
    const/4 v3, 0x0

    .local v3, "has531":Z
    const/4 v4, 0x0

    .local v4, "verified531":Z
    const/4 v5, 0x0

    .line 70
    .local v5, "preflight":Z
    :try_start_0
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move-object/from16 v9, p2

    invoke-virtual {v9, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    move-object v14, v8

    .line 71
    .local v14, "shaLower":Ljava/lang/String;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    move-object v15, v8

    .line 72
    .local v15, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/zip/ZipInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_12

    move-object v7, v8

    .line 73
    .local v7, "in":Ljava/util/zip/ZipInputStream;
    :try_start_1
    new-instance v8, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_f

    move-object v1, v8

    .line 74
    .local v1, "out":Ljava/util/zip/ZipOutputStream;
    const/16 v8, 0x2000

    :try_start_2
    new-array v8, v8, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    .local v8, "buffer":[B
    const-wide/16 v17, 0x0

    .local v17, "total":J
    const/16 v19, 0x0

    move/from16 v20, v19

    move-wide/from16 v18, v17

    move/from16 v17, v5

    .line 75
    .end local v5    # "preflight":Z
    .local v17, "preflight":Z
    .local v18, "total":J
    .local v20, "entries":I
    :goto_0
    :try_start_3
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    move-object/from16 v21, v5

    .local v21, "e":Ljava/util/zip/ZipEntry;
    const-string v2, "razor_android_runtime_status532.json"

    if-eqz v5, :cond_e

    .line 76
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 77
    .local v5, "name":Ljava/lang/String;
    move/from16 v22, v3

    .end local v3    # "has531":Z
    .local v22, "has531":Z
    add-int/lit8 v3, v20, 0x1

    move/from16 v23, v4

    .end local v4    # "verified531":Z
    .end local v20    # "entries":I
    .local v3, "entries":I
    .local v23, "verified531":Z
    const/16 v4, 0x80

    if-gt v3, v4, :cond_d

    :try_start_5
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "/"

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, ".."

    .line 78
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "\\"

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 79
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-interface {v15, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {v21 .. v21}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_b

    .line 81
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-direct {v2, v5}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 83
    const-string v2, "razor_android_emc_status531.json"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v2, :cond_0

    .line 84
    :try_start_6
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 72
    .end local v3    # "entries":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "buffer":[B
    .end local v18    # "total":J
    .end local v21    # "e":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v25, v10

    move/from16 v5, v17

    move/from16 v3, v22

    move/from16 v4, v23

    move-object v10, v7

    goto/16 :goto_b

    .line 84
    .restart local v3    # "entries":I
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v8    # "buffer":[B
    .restart local v18    # "total":J
    .restart local v21    # "e":Ljava/util/zip/ZipEntry;
    :cond_0
    const/4 v2, 0x0

    .line 86
    .local v2, "observed531":Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_7
    invoke-virtual {v7, v8}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move/from16 v20, v4

    move/from16 v24, v3

    .end local v3    # "entries":I
    .local v20, "count":I
    .local v24, "entries":I
    const/4 v3, -0x1

    if-eq v4, v3, :cond_4

    .line 87
    move-object/from16 v25, v10

    move/from16 v4, v20

    .end local v10    # "base":Ljava/lang/String;
    .end local v20    # "count":I
    .local v4, "count":I
    .local v25, "base":Ljava/lang/String;
    int-to-long v9, v4

    add-long v18, v18, v9

    .line 88
    const-wide/32 v9, 0xa00000

    cmp-long v3, v18, v9

    if-gtz v3, :cond_3

    .line 90
    if-eqz v2, :cond_2

    .line 91
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    add-int/2addr v3, v4

    const/16 v9, 0x4000

    if-gt v3, v9, :cond_1

    .line 93
    const/4 v3, 0x0

    invoke-virtual {v2, v8, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 92
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Razor 531 status too large"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v7    # "in":Ljava/util/zip/ZipInputStream;
    .end local v11    # "target":Ljava/io/File;
    .end local v12    # "temp":Ljava/io/File;
    .end local v13    # "committed":Z
    .end local v14    # "shaLower":Ljava/lang/String;
    .end local v15    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "preflight":Z
    .end local v22    # "has531":Z
    .end local v23    # "verified531":Z
    .end local v25    # "base":Ljava/lang/String;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "kind":Ljava/lang/String;
    .end local p6    # "outcome":Ljava/lang/String;
    throw v0

    .line 95
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v7    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v11    # "target":Ljava/io/File;
    .restart local v12    # "temp":Ljava/io/File;
    .restart local v13    # "committed":Z
    .restart local v14    # "shaLower":Ljava/lang/String;
    .restart local v15    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v17    # "preflight":Z
    .restart local v22    # "has531":Z
    .restart local v23    # "verified531":Z
    .restart local v25    # "base":Ljava/lang/String;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "kind":Ljava/lang/String;
    .restart local p6    # "outcome":Ljava/lang/String;
    :cond_2
    :goto_2
    const/4 v3, 0x0

    invoke-virtual {v1, v8, v3, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    move-object/from16 v9, p2

    move/from16 v3, v24

    move-object/from16 v10, v25

    goto :goto_1

    .line 89
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Razor 532 ZIP exceeds 10MiB"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v7    # "in":Ljava/util/zip/ZipInputStream;
    .end local v11    # "target":Ljava/io/File;
    .end local v12    # "temp":Ljava/io/File;
    .end local v13    # "committed":Z
    .end local v14    # "shaLower":Ljava/lang/String;
    .end local v15    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "preflight":Z
    .end local v22    # "has531":Z
    .end local v23    # "verified531":Z
    .end local v25    # "base":Ljava/lang/String;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "kind":Ljava/lang/String;
    .end local p6    # "outcome":Ljava/lang/String;
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 97
    .end local v4    # "count":I
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v7    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v10    # "base":Ljava/lang/String;
    .restart local v11    # "target":Ljava/io/File;
    .restart local v12    # "temp":Ljava/io/File;
    .restart local v13    # "committed":Z
    .restart local v14    # "shaLower":Ljava/lang/String;
    .restart local v15    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v17    # "preflight":Z
    .restart local v20    # "count":I
    .restart local v22    # "has531":Z
    .restart local v23    # "verified531":Z
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "kind":Ljava/lang/String;
    .restart local p6    # "outcome":Ljava/lang/String;
    :cond_4
    move-object/from16 v25, v10

    move/from16 v4, v20

    const/4 v3, 0x0

    .end local v10    # "base":Ljava/lang/String;
    .end local v20    # "count":I
    .restart local v4    # "count":I
    .restart local v25    # "base":Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 98
    const/4 v9, 0x1

    .line 99
    .end local v22    # "has531":Z
    .local v9, "has531":Z
    :try_start_9
    const-string v10, "UTF-8"

    invoke-virtual {v2, v10}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 100
    .local v10, "v":Ljava/lang/String;
    const-string v3, "\"schema\":\"demulation.razor.531.android-emc-status.v1\""

    invoke-virtual {v10, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v2

    .end local v2    # "observed531":Ljava/io/ByteArrayOutputStream;
    .local v20, "observed531":Ljava/io/ByteArrayOutputStream;
    const-string v2, "\"source_rom_sha256\":\""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"house\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"mission\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move/from16 v3, p4

    :try_start_a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "\"outcome\":\"OBSERVED\""

    .line 104
    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "\"android_world_owner_verified\":true"

    .line 105
    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "\"genesis_cpu_authenticated\":false"

    .line 106
    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "\"native_callback_executed\":false"

    .line 107
    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "\"gameplay_ticks\":0"

    .line 108
    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_4

    .line 72
    .end local v4    # "count":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "buffer":[B
    .end local v10    # "v":Ljava/lang/String;
    .end local v18    # "total":J
    .end local v20    # "observed531":Ljava/io/ByteArrayOutputStream;
    .end local v21    # "e":Ljava/util/zip/ZipEntry;
    .end local v24    # "entries":I
    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v10, v7

    move v3, v9

    move/from16 v5, v17

    move/from16 v4, v23

    goto/16 :goto_b

    .line 102
    .restart local v4    # "count":I
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v8    # "buffer":[B
    .restart local v10    # "v":Ljava/lang/String;
    .restart local v18    # "total":J
    .restart local v20    # "observed531":Ljava/io/ByteArrayOutputStream;
    .restart local v21    # "e":Ljava/util/zip/ZipEntry;
    .restart local v24    # "entries":I
    :cond_5
    move/from16 v3, p4

    goto :goto_3

    .line 101
    :cond_6
    move/from16 v3, p4

    goto :goto_3

    .line 100
    .end local v20    # "observed531":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "observed531":Ljava/io/ByteArrayOutputStream;
    :cond_7
    move/from16 v3, p4

    move-object/from16 v20, v2

    .line 108
    .end local v2    # "observed531":Ljava/io/ByteArrayOutputStream;
    .restart local v20    # "observed531":Ljava/io/ByteArrayOutputStream;
    :cond_8
    :goto_3
    const/4 v2, 0x0

    .end local v23    # "verified531":Z
    .local v2, "verified531":Z
    :goto_4
    goto :goto_5

    .line 72
    .end local v2    # "verified531":Z
    .end local v4    # "count":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "buffer":[B
    .end local v10    # "v":Ljava/lang/String;
    .end local v18    # "total":J
    .end local v20    # "observed531":Ljava/io/ByteArrayOutputStream;
    .end local v21    # "e":Ljava/util/zip/ZipEntry;
    .end local v24    # "entries":I
    .restart local v23    # "verified531":Z
    :catchall_2
    move-exception v0

    move/from16 v3, p4

    move-object v2, v0

    move-object v10, v7

    move v3, v9

    move/from16 v5, v17

    move/from16 v4, v23

    goto/16 :goto_b

    .line 97
    .end local v9    # "has531":Z
    .local v2, "observed531":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "count":I
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v8    # "buffer":[B
    .restart local v18    # "total":J
    .restart local v21    # "e":Ljava/util/zip/ZipEntry;
    .restart local v22    # "has531":Z
    .restart local v24    # "entries":I
    :cond_9
    move/from16 v3, p4

    move-object/from16 v20, v2

    .end local v2    # "observed531":Ljava/io/ByteArrayOutputStream;
    .restart local v20    # "observed531":Ljava/io/ByteArrayOutputStream;
    move/from16 v9, v22

    move/from16 v2, v23

    .line 110
    .end local v22    # "has531":Z
    .end local v23    # "verified531":Z
    .local v2, "verified531":Z
    .restart local v9    # "has531":Z
    :goto_5
    :try_start_b
    const-string v10, "RAZOR_PREFLIGHT_406H.json"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v17, 0x1

    .line 111
    :cond_a
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 112
    .end local v4    # "count":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v20    # "observed531":Ljava/io/ByteArrayOutputStream;
    move v4, v2

    move v3, v9

    move/from16 v20, v24

    move-object/from16 v10, v25

    move-object/from16 v2, p1

    move-object/from16 v9, p2

    goto/16 :goto_0

    .line 72
    .end local v8    # "buffer":[B
    .end local v18    # "total":J
    .end local v21    # "e":Ljava/util/zip/ZipEntry;
    .end local v24    # "entries":I
    :catchall_3
    move-exception v0

    move v4, v2

    move-object v10, v7

    move v3, v9

    move/from16 v5, v17

    move-object v2, v0

    goto/16 :goto_b

    .line 79
    .end local v2    # "verified531":Z
    .end local v9    # "has531":Z
    .end local v25    # "base":Ljava/lang/String;
    .restart local v3    # "entries":I
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v8    # "buffer":[B
    .local v10, "base":Ljava/lang/String;
    .restart local v18    # "total":J
    .restart local v21    # "e":Ljava/util/zip/ZipEntry;
    .restart local v22    # "has531":Z
    .restart local v23    # "verified531":Z
    :cond_b
    move/from16 v24, v3

    move-object/from16 v25, v10

    move/from16 v3, p4

    .end local v3    # "entries":I
    .end local v10    # "base":Ljava/lang/String;
    .restart local v24    # "entries":I
    .restart local v25    # "base":Ljava/lang/String;
    goto :goto_6

    .line 78
    .end local v24    # "entries":I
    .end local v25    # "base":Ljava/lang/String;
    .restart local v3    # "entries":I
    .restart local v10    # "base":Ljava/lang/String;
    :cond_c
    move/from16 v24, v3

    move-object/from16 v25, v10

    move/from16 v3, p4

    .end local v3    # "entries":I
    .end local v10    # "base":Ljava/lang/String;
    .restart local v24    # "entries":I
    .restart local v25    # "base":Ljava/lang/String;
    goto :goto_6

    .line 72
    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "buffer":[B
    .end local v18    # "total":J
    .end local v21    # "e":Ljava/util/zip/ZipEntry;
    .end local v24    # "entries":I
    .end local v25    # "base":Ljava/lang/String;
    .restart local v10    # "base":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move/from16 v3, p4

    move-object/from16 v25, v10

    move-object v2, v0

    move-object v10, v7

    move/from16 v5, v17

    move/from16 v3, v22

    move/from16 v4, v23

    .end local v10    # "base":Ljava/lang/String;
    .restart local v25    # "base":Ljava/lang/String;
    goto/16 :goto_b

    .line 77
    .end local v25    # "base":Ljava/lang/String;
    .restart local v3    # "entries":I
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v8    # "buffer":[B
    .restart local v10    # "base":Ljava/lang/String;
    .restart local v18    # "total":J
    .restart local v21    # "e":Ljava/util/zip/ZipEntry;
    :cond_d
    move/from16 v24, v3

    move-object/from16 v25, v10

    move/from16 v3, p4

    .line 80
    .end local v3    # "entries":I
    .end local v10    # "base":Ljava/lang/String;
    .restart local v24    # "entries":I
    .restart local v25    # "base":Ljava/lang/String;
    :goto_6
    :try_start_c
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unsafe source Razor diagnostic ZIP"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v7    # "in":Ljava/util/zip/ZipInputStream;
    .end local v11    # "target":Ljava/io/File;
    .end local v12    # "temp":Ljava/io/File;
    .end local v13    # "committed":Z
    .end local v14    # "shaLower":Ljava/lang/String;
    .end local v15    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "preflight":Z
    .end local v22    # "has531":Z
    .end local v23    # "verified531":Z
    .end local v25    # "base":Ljava/lang/String;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "kind":Ljava/lang/String;
    .end local p6    # "outcome":Ljava/lang/String;
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 72
    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "buffer":[B
    .end local v18    # "total":J
    .end local v21    # "e":Ljava/util/zip/ZipEntry;
    .end local v24    # "entries":I
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v7    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v11    # "target":Ljava/io/File;
    .restart local v12    # "temp":Ljava/io/File;
    .restart local v13    # "committed":Z
    .restart local v14    # "shaLower":Ljava/lang/String;
    .restart local v15    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v17    # "preflight":Z
    .restart local v22    # "has531":Z
    .restart local v23    # "verified531":Z
    .restart local v25    # "base":Ljava/lang/String;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "kind":Ljava/lang/String;
    .restart local p6    # "outcome":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object v2, v0

    move-object v10, v7

    move/from16 v5, v17

    move/from16 v3, v22

    move/from16 v4, v23

    goto/16 :goto_b

    .end local v22    # "has531":Z
    .end local v23    # "verified531":Z
    .end local v25    # "base":Ljava/lang/String;
    .local v3, "has531":Z
    .local v4, "verified531":Z
    .restart local v10    # "base":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v25, v10

    move/from16 v3, p4

    move-object v2, v0

    move-object v10, v7

    move/from16 v5, v17

    move/from16 v3, v22

    .end local v3    # "has531":Z
    .end local v4    # "verified531":Z
    .end local v10    # "base":Ljava/lang/String;
    .restart local v22    # "has531":Z
    .restart local v23    # "verified531":Z
    .restart local v25    # "base":Ljava/lang/String;
    goto/16 :goto_b

    .line 75
    .end local v22    # "has531":Z
    .end local v23    # "verified531":Z
    .end local v25    # "base":Ljava/lang/String;
    .restart local v3    # "has531":Z
    .restart local v4    # "verified531":Z
    .restart local v8    # "buffer":[B
    .restart local v10    # "base":Ljava/lang/String;
    .restart local v18    # "total":J
    .local v20, "entries":I
    .restart local v21    # "e":Ljava/util/zip/ZipEntry;
    :cond_e
    move/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v25, v10

    move/from16 v3, p4

    .line 113
    .end local v3    # "has531":Z
    .end local v4    # "verified531":Z
    .end local v10    # "base":Ljava/lang/String;
    .end local v21    # "e":Ljava/util/zip/ZipEntry;
    .restart local v22    # "has531":Z
    .restart local v23    # "verified531":Z
    .restart local v25    # "base":Ljava/lang/String;
    :try_start_d
    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "PREFLIGHT_ONLY"

    .line 114
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz v17, :cond_f

    if-nez v22, :cond_f

    goto :goto_7

    :cond_f
    move-object v10, v7

    move-object/from16 v16, v8

    move/from16 v9, v23

    goto/16 :goto_a

    :cond_10
    :goto_7
    const-string v0, "FULL_PROBE"

    .line 115
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    if-eqz v0, :cond_12

    if-nez v17, :cond_11

    goto :goto_8

    :cond_11
    move-object v10, v7

    move-object/from16 v16, v8

    move/from16 v9, v23

    goto/16 :goto_a

    .line 117
    :cond_12
    :goto_8
    move/from16 v4, p3

    move v5, v3

    move-object v10, v7

    move-object/from16 v16, v8

    move/from16 v8, v22

    move/from16 v9, v23

    move-object/from16 v3, p2

    move-object/from16 v7, p6

    .end local v7    # "in":Ljava/util/zip/ZipInputStream;
    .end local v22    # "has531":Z
    .end local v23    # "verified531":Z
    .local v8, "has531":Z
    .local v9, "verified531":Z
    .local v10, "in":Ljava/util/zip/ZipInputStream;
    .local v16, "buffer":[B
    :try_start_e
    invoke-static/range {v3 .. v9}, Lcom/ahsim/demulation/RazorAndroidRuntimeEvidence532;->status(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .end local v8    # "has531":Z
    .restart local v22    # "has531":Z
    :try_start_f
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 119
    .local v0, "payload":[B
    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-direct {v3, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 120
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 121
    .end local v0    # "payload":[B
    .end local v16    # "buffer":[B
    .end local v18    # "total":J
    .end local v20    # "entries":I
    :try_start_10
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    :try_start_11
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->close()V

    .line 122
    .end local v10    # "in":Ljava/util/zip/ZipInputStream;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_9

    .line 123
    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot replace previous 532 diagnostic"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v11    # "target":Ljava/io/File;
    .end local v12    # "temp":Ljava/io/File;
    .end local v13    # "committed":Z
    .end local v25    # "base":Ljava/lang/String;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "kind":Ljava/lang/String;
    .end local p6    # "outcome":Ljava/lang/String;
    throw v0

    .line 124
    .restart local v11    # "target":Ljava/io/File;
    .restart local v12    # "temp":Ljava/io/File;
    .restart local v13    # "committed":Z
    .restart local v25    # "base":Ljava/lang/String;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "kind":Ljava/lang/String;
    .restart local p6    # "outcome":Ljava/lang/String;
    :cond_14
    :goto_9
    invoke-virtual {v12, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    if-eqz v0, :cond_16

    .line 125
    const/4 v0, 0x1

    .line 126
    .end local v13    # "committed":Z
    .local v0, "committed":Z
    if-nez v0, :cond_15

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 125
    :cond_15
    return-object v11

    .line 124
    .end local v0    # "committed":Z
    .restart local v13    # "committed":Z
    :cond_16
    :try_start_12
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot commit Razor 532 ZIP"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v11    # "target":Ljava/io/File;
    .end local v12    # "temp":Ljava/io/File;
    .end local v13    # "committed":Z
    .end local v25    # "base":Ljava/lang/String;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "kind":Ljava/lang/String;
    .end local p6    # "outcome":Ljava/lang/String;
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_11

    .line 72
    .restart local v10    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v11    # "target":Ljava/io/File;
    .restart local v12    # "temp":Ljava/io/File;
    .restart local v13    # "committed":Z
    .restart local v25    # "base":Ljava/lang/String;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "kind":Ljava/lang/String;
    .restart local p6    # "outcome":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move-object v1, v0

    move v4, v9

    move/from16 v5, v17

    move/from16 v3, v22

    goto/16 :goto_d

    .end local v22    # "has531":Z
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v8    # "has531":Z
    :catchall_8
    move-exception v0

    move/from16 v22, v8

    move-object v2, v0

    move v4, v9

    move/from16 v5, v17

    move/from16 v3, v22

    .end local v8    # "has531":Z
    .restart local v22    # "has531":Z
    goto :goto_b

    .line 113
    .end local v9    # "verified531":Z
    .end local v10    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v7    # "in":Ljava/util/zip/ZipInputStream;
    .local v8, "buffer":[B
    .restart local v18    # "total":J
    .restart local v20    # "entries":I
    .restart local v23    # "verified531":Z
    :cond_17
    move-object v10, v7

    move-object/from16 v16, v8

    move/from16 v9, v23

    .line 116
    .end local v7    # "in":Ljava/util/zip/ZipInputStream;
    .end local v8    # "buffer":[B
    .end local v23    # "verified531":Z
    .restart local v9    # "verified531":Z
    .restart local v10    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v16    # "buffer":[B
    :goto_a
    :try_start_13
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Razor 532 wrong ZIP tier"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v9    # "verified531":Z
    .end local v10    # "in":Ljava/util/zip/ZipInputStream;
    .end local v11    # "target":Ljava/io/File;
    .end local v12    # "temp":Ljava/io/File;
    .end local v13    # "committed":Z
    .end local v14    # "shaLower":Ljava/lang/String;
    .end local v15    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "preflight":Z
    .end local v22    # "has531":Z
    .end local v25    # "base":Ljava/lang/String;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "kind":Ljava/lang/String;
    .end local p6    # "outcome":Ljava/lang/String;
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 72
    .end local v16    # "buffer":[B
    .end local v18    # "total":J
    .end local v20    # "entries":I
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v9    # "verified531":Z
    .restart local v10    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v11    # "target":Ljava/io/File;
    .restart local v12    # "temp":Ljava/io/File;
    .restart local v13    # "committed":Z
    .restart local v14    # "shaLower":Ljava/lang/String;
    .restart local v15    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v17    # "preflight":Z
    .restart local v22    # "has531":Z
    .restart local v25    # "base":Ljava/lang/String;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "kind":Ljava/lang/String;
    .restart local p6    # "outcome":Ljava/lang/String;
    :catchall_9
    move-exception v0

    move-object v2, v0

    move v4, v9

    move/from16 v5, v17

    move/from16 v3, v22

    goto :goto_b

    .end local v9    # "verified531":Z
    .end local v10    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v7    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v23    # "verified531":Z
    :catchall_a
    move-exception v0

    move-object v10, v7

    move/from16 v9, v23

    move-object v2, v0

    move v4, v9

    move/from16 v5, v17

    move/from16 v3, v22

    .end local v7    # "in":Ljava/util/zip/ZipInputStream;
    .end local v23    # "verified531":Z
    .restart local v9    # "verified531":Z
    .restart local v10    # "in":Ljava/util/zip/ZipInputStream;
    goto :goto_b

    .end local v9    # "verified531":Z
    .end local v22    # "has531":Z
    .end local v25    # "base":Ljava/lang/String;
    .restart local v3    # "has531":Z
    .restart local v4    # "verified531":Z
    .restart local v7    # "in":Ljava/util/zip/ZipInputStream;
    .local v10, "base":Ljava/lang/String;
    :catchall_b
    move-exception v0

    move/from16 v22, v3

    move v9, v4

    move-object/from16 v25, v10

    move-object v10, v7

    move-object v2, v0

    move/from16 v5, v17

    .end local v3    # "has531":Z
    .end local v4    # "verified531":Z
    .end local v7    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "verified531":Z
    .local v10, "in":Ljava/util/zip/ZipInputStream;
    .restart local v22    # "has531":Z
    .restart local v25    # "base":Ljava/lang/String;
    goto :goto_b

    .end local v9    # "verified531":Z
    .end local v17    # "preflight":Z
    .end local v22    # "has531":Z
    .end local v25    # "base":Ljava/lang/String;
    .restart local v3    # "has531":Z
    .restart local v4    # "verified531":Z
    .local v5, "preflight":Z
    .restart local v7    # "in":Ljava/util/zip/ZipInputStream;
    .local v10, "base":Ljava/lang/String;
    :catchall_c
    move-exception v0

    move-object/from16 v25, v10

    move-object v10, v7

    move-object v2, v0

    .end local v7    # "in":Ljava/util/zip/ZipInputStream;
    .local v10, "in":Ljava/util/zip/ZipInputStream;
    .restart local v25    # "base":Ljava/lang/String;
    :goto_b
    :try_start_14
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    goto :goto_c

    :catchall_d
    move-exception v0

    :try_start_15
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "has531":Z
    .end local v4    # "verified531":Z
    .end local v5    # "preflight":Z
    .end local v10    # "in":Ljava/util/zip/ZipInputStream;
    .end local v11    # "target":Ljava/io/File;
    .end local v12    # "temp":Ljava/io/File;
    .end local v13    # "committed":Z
    .end local v14    # "shaLower":Ljava/lang/String;
    .end local v15    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v25    # "base":Ljava/lang/String;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "kind":Ljava/lang/String;
    .end local p6    # "outcome":Ljava/lang/String;
    :goto_c
    throw v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "has531":Z
    .restart local v4    # "verified531":Z
    .restart local v5    # "preflight":Z
    .restart local v10    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v11    # "target":Ljava/io/File;
    .restart local v12    # "temp":Ljava/io/File;
    .restart local v13    # "committed":Z
    .restart local v14    # "shaLower":Ljava/lang/String;
    .restart local v15    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v25    # "base":Ljava/lang/String;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "kind":Ljava/lang/String;
    .restart local p6    # "outcome":Ljava/lang/String;
    :catchall_e
    move-exception v0

    move-object v1, v0

    goto :goto_d

    .end local v25    # "base":Ljava/lang/String;
    .restart local v7    # "in":Ljava/util/zip/ZipInputStream;
    .local v10, "base":Ljava/lang/String;
    :catchall_f
    move-exception v0

    move-object/from16 v25, v10

    move-object v10, v7

    move-object v1, v0

    .end local v7    # "in":Ljava/util/zip/ZipInputStream;
    .local v10, "in":Ljava/util/zip/ZipInputStream;
    .restart local v25    # "base":Ljava/lang/String;
    :goto_d
    :try_start_16
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_10

    goto :goto_e

    :catchall_10
    move-exception v0

    :try_start_17
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v11    # "target":Ljava/io/File;
    .end local v12    # "temp":Ljava/io/File;
    .end local v13    # "committed":Z
    .end local v25    # "base":Ljava/lang/String;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "kind":Ljava/lang/String;
    .end local p6    # "outcome":Ljava/lang/String;
    :goto_e
    throw v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_11

    .line 126
    .end local v3    # "has531":Z
    .end local v4    # "verified531":Z
    .end local v5    # "preflight":Z
    .end local v10    # "in":Ljava/util/zip/ZipInputStream;
    .end local v14    # "shaLower":Ljava/lang/String;
    .end local v15    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v11    # "target":Ljava/io/File;
    .restart local v12    # "temp":Ljava/io/File;
    .restart local v13    # "committed":Z
    .restart local v25    # "base":Ljava/lang/String;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "kind":Ljava/lang/String;
    .restart local p6    # "outcome":Ljava/lang/String;
    :catchall_11
    move-exception v0

    goto :goto_f

    .end local v25    # "base":Ljava/lang/String;
    .local v10, "base":Ljava/lang/String;
    :catchall_12
    move-exception v0

    move-object/from16 v25, v10

    .end local v10    # "base":Ljava/lang/String;
    .restart local v25    # "base":Ljava/lang/String;
    :goto_f
    if-nez v13, :cond_18

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    :cond_18
    throw v0

    .line 65
    .end local v12    # "temp":Ljava/io/File;
    .end local v13    # "committed":Z
    .end local v25    # "base":Ljava/lang/String;
    .restart local v10    # "base":Ljava/lang/String;
    :cond_19
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot overwrite Razor 532 source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    .end local v10    # "base":Ljava/lang/String;
    .end local v11    # "target":Ljava/io/File;
    :cond_1a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 532 source must belong to diagnostic directory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static status(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 2
    .param p0, "sha"    # Ljava/lang/String;
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .param p3, "kind"    # Ljava/lang/String;
    .param p4, "outcome"    # Ljava/lang/String;
    .param p5, "has531"    # Z
    .param p6, "verified531"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    if-eqz p0, :cond_3

    const-string v0, "[0-9a-fA-F]{64}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    const/4 v0, 0x4

    if-gt p1, v0, :cond_3

    const/4 v0, 0x1

    if-lt p2, v0, :cond_3

    const/16 v0, 0x9

    if-gt p2, v0, :cond_3

    .line 34
    const-string v0, "FULL_PROBE"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "PREFLIGHT_ONLY"

    if-nez v0, :cond_0

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    :cond_0
    invoke-static {p4}, Lcom/ahsim/demulation/RazorAndroidRuntimeEvidence532;->validOutcome(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p6, :cond_1

    if-eqz p5, :cond_3

    .line 37
    :cond_1
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p5, :cond_3

    .line 39
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"schema\":\"demulation.razor.532.android-runtime-evidence.v1\",\"source_rom_sha256\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 40
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"house\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"mission\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"capture_kind\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"observation_outcome\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"status531_present\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"status531_verified_owner_claim\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"genesis_cpu_authenticated\":false,\"native_callback_executed\":false,\"gameplay_ticks\":0,\"gameplay_authorized\":false}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    return-object v0

    .line 38
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid Razor 532 source identity or evidence tier"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validOutcome(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 25
    const-string v0, "OBSERVED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FAILED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SKIPPED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 26
    const-string v0, "NOT_RUN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "IN_PROGRESS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    const-string v0, "EXPORT_FAILED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    return v0
.end method
