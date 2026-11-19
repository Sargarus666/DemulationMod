.class public final Lcom/ahsim/demulation/RazorM68kBackendEvidence535;
.super Ljava/lang/Object;
.source "RazorM68kBackendEvidence535.java"


# static fields
.field public static final ENTRY:Ljava/lang/String; = "razor_m68k_backend_status535.json"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append(Ljava/io/File;Ljava/io/File;Ljava/lang/String;II[I[I)Ljava/io/File;
    .locals 26
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "previous"    # Ljava/io/File;
    .param p2, "sha"    # Ljava/lang/String;
    .param p3, "house"    # I
    .param p4, "mission"    # I
    .param p5, "status"    # [I
    .param p6, "gate"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, ","

    const-string v3, "\""

    invoke-static/range {p2 .. p6}, Lcom/ahsim/demulation/RazorM68kBackendEvidence535;->json(Ljava/lang/String;II[I[I)[B

    move-result-object v4

    .line 59
    .local v4, "payload":[B
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1d

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 60
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".zip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 61
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 63
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "base":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    sub-int/2addr v8, v9

    const/4 v10, 0x0

    invoke-virtual {v5, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_535.zip"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    .local v6, "target":Ljava/io/File;
    invoke-virtual {v6, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    .line 66
    const-string v7, "razor535_"

    const-string v8, ".part"

    invoke-static {v7, v8, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    .line 67
    .local v7, "tmp":Ljava/io/File;
    const/4 v8, 0x0

    .line 69
    .local v8, "done":Z
    :try_start_0
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 70
    .local v11, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .local v12, "entries":I
    const-wide/16 v13, 0x0

    .local v13, "bytes":J
    const/4 v15, 0x0

    .line 71
    .local v15, "found":Z
    move/from16 v16, v9

    new-instance v9, Ljava/util/zip/ZipInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    .line 72
    .local v9, "in":Ljava/util/zip/ZipInputStream;
    :try_start_1
    new-instance v10, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    .line 73
    .local v10, "out":Ljava/util/zip/ZipOutputStream;
    const/16 v1, 0x2000

    :try_start_2
    new-array v1, v1, [B

    .line 74
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    move-object/from16 v18, v17

    .local v18, "entry":Ljava/util/zip/ZipEntry;
    const-string v2, "razor_m68k_backend_status535.json"

    if-eqz v17, :cond_13

    .line 75
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move-object/from16 v19, v17

    .line 76
    .local v19, "name":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v17, v5

    .end local v5    # "base":Ljava/lang/String;
    .local v17, "base":Ljava/lang/String;
    const/16 v5, 0x80

    if-gt v12, v5, :cond_12

    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "/"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move/from16 v20, v8

    move-object/from16 v8, v19

    .end local v19    # "name":Ljava/lang/String;
    .local v8, "name":Ljava/lang/String;
    .local v20, "done":Z
    :try_start_5
    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, ".."

    .line 77
    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, "\\"

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_10

    .line 78
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-interface {v11, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 80
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-direct {v2, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 82
    const-string v2, "razor_f40_sandbox_gate534.json"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v2, :cond_0

    .line 83
    :try_start_6
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 71
    .end local v1    # "buf":[B
    .end local v8    # "name":Ljava/lang/String;
    .end local v18    # "entry":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v0

    move-object/from16 v5, p2

    move/from16 v8, p3

    move-object v1, v0

    move-object/from16 v19, v9

    goto/16 :goto_d

    .line 83
    .restart local v1    # "buf":[B
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v18    # "entry":Ljava/util/zip/ZipEntry;
    :cond_0
    const/4 v2, 0x0

    .line 85
    .local v2, "tagged":Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_7
    invoke-virtual {v9, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move/from16 v19, v5

    move-object/from16 v21, v8

    .end local v8    # "name":Ljava/lang/String;
    .local v19, "n":I
    .local v21, "name":Ljava/lang/String;
    const/4 v8, -0x1

    if-eq v5, v8, :cond_5

    .line 86
    if-nez v19, :cond_1

    move-object/from16 v8, v21

    goto :goto_1

    .line 87
    :cond_1
    move/from16 v5, v19

    move-object/from16 v19, v9

    .end local v9    # "in":Ljava/util/zip/ZipInputStream;
    .local v5, "n":I
    .local v19, "in":Ljava/util/zip/ZipInputStream;
    int-to-long v8, v5

    add-long/2addr v13, v8

    .line 88
    const-wide/32 v8, 0xa00000

    cmp-long v8, v13, v8

    if-gtz v8, :cond_4

    .line 89
    if-eqz v2, :cond_3

    .line 90
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    add-int/2addr v8, v5

    const/16 v9, 0x4000

    if-gt v8, v9, :cond_2

    .line 91
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v8, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 90
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Razor 535 oversized gate"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "payload":[B
    .end local v6    # "target":Ljava/io/File;
    .end local v7    # "tmp":Ljava/io/File;
    .end local v10    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v11    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "entries":I
    .end local v13    # "bytes":J
    .end local v15    # "found":Z
    .end local v17    # "base":Ljava/lang/String;
    .end local v19    # "in":Ljava/util/zip/ZipInputStream;
    .end local v20    # "done":Z
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "status":[I
    .end local p6    # "gate":[I
    throw v0

    .line 93
    .restart local v4    # "payload":[B
    .restart local v6    # "target":Ljava/io/File;
    .restart local v7    # "tmp":Ljava/io/File;
    .restart local v10    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v11    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12    # "entries":I
    .restart local v13    # "bytes":J
    .restart local v15    # "found":Z
    .restart local v17    # "base":Ljava/lang/String;
    .restart local v19    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v20    # "done":Z
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "status":[I
    .restart local p6    # "gate":[I
    :cond_3
    :goto_2
    const/4 v8, 0x0

    invoke-virtual {v10, v1, v8, v5}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    move-object/from16 v9, v19

    move-object/from16 v8, v21

    goto :goto_1

    .line 88
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Razor 535 oversized archive"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "payload":[B
    .end local v6    # "target":Ljava/io/File;
    .end local v7    # "tmp":Ljava/io/File;
    .end local v10    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v11    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "entries":I
    .end local v13    # "bytes":J
    .end local v15    # "found":Z
    .end local v17    # "base":Ljava/lang/String;
    .end local v19    # "in":Ljava/util/zip/ZipInputStream;
    .end local v20    # "done":Z
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "status":[I
    .end local p6    # "gate":[I
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 71
    .end local v1    # "buf":[B
    .end local v2    # "tagged":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "n":I
    .end local v18    # "entry":Ljava/util/zip/ZipEntry;
    .end local v21    # "name":Ljava/lang/String;
    .restart local v4    # "payload":[B
    .restart local v6    # "target":Ljava/io/File;
    .restart local v7    # "tmp":Ljava/io/File;
    .restart local v10    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v11    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12    # "entries":I
    .restart local v13    # "bytes":J
    .restart local v15    # "found":Z
    .restart local v17    # "base":Ljava/lang/String;
    .restart local v19    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v20    # "done":Z
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "status":[I
    .restart local p6    # "gate":[I
    :catchall_1
    move-exception v0

    move-object/from16 v5, p2

    move/from16 v8, p3

    goto/16 :goto_b

    .line 95
    .restart local v1    # "buf":[B
    .restart local v2    # "tagged":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v18    # "entry":Ljava/util/zip/ZipEntry;
    .local v19, "n":I
    .restart local v21    # "name":Ljava/lang/String;
    :cond_5
    move/from16 v5, v19

    const/4 v8, 0x0

    move-object/from16 v19, v9

    .end local v9    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "n":I
    .local v19, "in":Ljava/util/zip/ZipInputStream;
    if-eqz v2, :cond_e

    .line 96
    :try_start_9
    const-string v9, "UTF-8"

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 97
    .local v9, "content":Ljava/lang/String;
    const-string v8, "\"schema\":\"demulation.razor.534.f40-sandbox-gate.v1\""

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v1

    .end local v1    # "buf":[B
    .local v22, "buf":[B
    const-string v1, "\"source_rom_sha256\":\""

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 98
    move/from16 v23, v5

    move-object/from16 v5, p2

    .end local v5    # "n":I
    .local v23, "n":I
    :try_start_a
    invoke-virtual {v5, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\"house\":"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move/from16 v8, p3

    :try_start_b
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v2

    .end local v2    # "tagged":Ljava/io/ByteArrayOutputStream;
    .local v24, "tagged":Ljava/io/ByteArrayOutputStream;
    const-string v2, "\"mission\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move/from16 v2, p4

    :try_start_c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "\"gameplay_ticks\":0"

    .line 101
    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz p5, :cond_7

    const-string v1, "\"status\":\"HOST_COPY_ISOLATED_F40_BLOCKED\""

    .line 102
    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v0

    const-string v0, "\"emc_event_id\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    aget v1, p5, v1

    .line 104
    invoke-static {v1}, Lcom/ahsim/demulation/RazorF40PrecallEvidence533$$ExternalSyntheticBackport1;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, p5, v16

    .line 105
    invoke-static {v1}, Lcom/ahsim/demulation/RazorF40PrecallEvidence533$$ExternalSyntheticBackport1;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3

    .line 102
    :cond_6
    move-object/from16 v25, v0

    goto :goto_4

    .line 101
    :cond_7
    move-object/from16 v25, v0

    .line 103
    :goto_3
    const/4 v0, 0x1

    goto :goto_5

    .line 101
    :cond_8
    move-object/from16 v25, v0

    goto :goto_4

    .line 100
    :cond_9
    move-object/from16 v25, v0

    goto :goto_4

    .line 99
    .end local v24    # "tagged":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "tagged":Ljava/io/ByteArrayOutputStream;
    :cond_a
    move-object/from16 v25, v0

    move-object/from16 v24, v2

    move/from16 v2, p4

    .end local v2    # "tagged":Ljava/io/ByteArrayOutputStream;
    .restart local v24    # "tagged":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 71
    .end local v9    # "content":Ljava/lang/String;
    .end local v18    # "entry":Ljava/util/zip/ZipEntry;
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "buf":[B
    .end local v23    # "n":I
    .end local v24    # "tagged":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v0

    goto :goto_7

    .line 98
    .restart local v2    # "tagged":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "content":Ljava/lang/String;
    .restart local v18    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v22    # "buf":[B
    .restart local v23    # "n":I
    :cond_b
    move/from16 v8, p3

    move-object/from16 v25, v0

    move-object/from16 v24, v2

    move/from16 v2, p4

    .end local v2    # "tagged":Ljava/io/ByteArrayOutputStream;
    .restart local v24    # "tagged":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 71
    .end local v9    # "content":Ljava/lang/String;
    .end local v18    # "entry":Ljava/util/zip/ZipEntry;
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "buf":[B
    .end local v23    # "n":I
    .end local v24    # "tagged":Ljava/io/ByteArrayOutputStream;
    :catchall_3
    move-exception v0

    goto :goto_6

    .line 97
    .restart local v1    # "buf":[B
    .restart local v2    # "tagged":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "n":I
    .restart local v9    # "content":Ljava/lang/String;
    .restart local v18    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v21    # "name":Ljava/lang/String;
    :cond_c
    move/from16 v8, p3

    move-object/from16 v25, v0

    move-object/from16 v22, v1

    move-object/from16 v24, v2

    move/from16 v23, v5

    move-object/from16 v5, p2

    move/from16 v2, p4

    .line 103
    .end local v1    # "buf":[B
    .end local v2    # "tagged":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "n":I
    .restart local v22    # "buf":[B
    .restart local v23    # "n":I
    .restart local v24    # "tagged":Ljava/io/ByteArrayOutputStream;
    :cond_d
    :goto_4
    const/4 v0, 0x0

    :goto_5
    move v15, v0

    goto :goto_8

    .line 71
    .end local v9    # "content":Ljava/lang/String;
    .end local v18    # "entry":Ljava/util/zip/ZipEntry;
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "buf":[B
    .end local v23    # "n":I
    .end local v24    # "tagged":Ljava/io/ByteArrayOutputStream;
    :catchall_4
    move-exception v0

    move-object/from16 v5, p2

    :goto_6
    move/from16 v8, p3

    :goto_7
    move/from16 v2, p4

    goto/16 :goto_b

    .line 95
    .restart local v1    # "buf":[B
    .restart local v2    # "tagged":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "n":I
    .restart local v18    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v21    # "name":Ljava/lang/String;
    :cond_e
    move/from16 v8, p3

    move-object/from16 v25, v0

    move-object/from16 v22, v1

    move-object/from16 v24, v2

    move/from16 v23, v5

    move-object/from16 v5, p2

    move/from16 v2, p4

    .line 107
    .end local v1    # "buf":[B
    .end local v2    # "tagged":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "n":I
    .restart local v22    # "buf":[B
    .restart local v23    # "n":I
    .restart local v24    # "tagged":Ljava/io/ByteArrayOutputStream;
    :goto_8
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 108
    .end local v21    # "name":Ljava/lang/String;
    .end local v23    # "n":I
    .end local v24    # "tagged":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v2, p1

    move-object/from16 v5, v17

    move-object/from16 v9, v19

    move/from16 v8, v20

    move-object/from16 v1, v22

    move-object/from16 v0, v25

    goto/16 :goto_0

    .line 78
    .end local v19    # "in":Ljava/util/zip/ZipInputStream;
    .end local v22    # "buf":[B
    .restart local v1    # "buf":[B
    .restart local v8    # "name":Ljava/lang/String;
    .local v9, "in":Ljava/util/zip/ZipInputStream;
    :cond_f
    move-object/from16 v5, p2

    move/from16 v2, p4

    move-object/from16 v22, v1

    move-object/from16 v21, v8

    move-object/from16 v19, v9

    move/from16 v8, p3

    .end local v1    # "buf":[B
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v19    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v22    # "buf":[B
    goto :goto_9

    .line 77
    .end local v19    # "in":Ljava/util/zip/ZipInputStream;
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "buf":[B
    .restart local v1    # "buf":[B
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "in":Ljava/util/zip/ZipInputStream;
    :cond_10
    move-object/from16 v5, p2

    move/from16 v2, p4

    move-object/from16 v22, v1

    move-object/from16 v21, v8

    move-object/from16 v19, v9

    move/from16 v8, p3

    .end local v1    # "buf":[B
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v19    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v22    # "buf":[B
    goto :goto_9

    .line 76
    .end local v19    # "in":Ljava/util/zip/ZipInputStream;
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "buf":[B
    .restart local v1    # "buf":[B
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "in":Ljava/util/zip/ZipInputStream;
    :cond_11
    move-object/from16 v5, p2

    move/from16 v2, p4

    move-object/from16 v22, v1

    move-object/from16 v21, v8

    move-object/from16 v19, v9

    move/from16 v8, p3

    .end local v1    # "buf":[B
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v19    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v22    # "buf":[B
    goto :goto_9

    .line 71
    .end local v18    # "entry":Ljava/util/zip/ZipEntry;
    .end local v19    # "in":Ljava/util/zip/ZipInputStream;
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "buf":[B
    .restart local v9    # "in":Ljava/util/zip/ZipInputStream;
    :catchall_5
    move-exception v0

    move-object/from16 v5, p2

    move/from16 v8, p3

    move/from16 v2, p4

    move-object/from16 v19, v9

    move-object v1, v0

    .end local v9    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v19    # "in":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_d

    .end local v19    # "in":Ljava/util/zip/ZipInputStream;
    .end local v20    # "done":Z
    .local v8, "done":Z
    .restart local v9    # "in":Ljava/util/zip/ZipInputStream;
    :catchall_6
    move-exception v0

    move-object/from16 v5, p2

    move/from16 v2, p4

    move/from16 v20, v8

    move-object/from16 v19, v9

    move/from16 v8, p3

    move-object v1, v0

    .end local v8    # "done":Z
    .end local v9    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v19    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v20    # "done":Z
    goto/16 :goto_d

    .line 76
    .end local v20    # "done":Z
    .restart local v1    # "buf":[B
    .restart local v8    # "done":Z
    .restart local v9    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v18    # "entry":Ljava/util/zip/ZipEntry;
    .local v19, "name":Ljava/lang/String;
    :cond_12
    move-object/from16 v5, p2

    move/from16 v2, p4

    move-object/from16 v22, v1

    move/from16 v20, v8

    move-object/from16 v21, v19

    move/from16 v8, p3

    move-object/from16 v19, v9

    .line 79
    .end local v1    # "buf":[B
    .end local v8    # "done":Z
    .end local v9    # "in":Ljava/util/zip/ZipInputStream;
    .local v19, "in":Ljava/util/zip/ZipInputStream;
    .restart local v20    # "done":Z
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v22    # "buf":[B
    :goto_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 535 invalid archive entry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "payload":[B
    .end local v6    # "target":Ljava/io/File;
    .end local v7    # "tmp":Ljava/io/File;
    .end local v10    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v11    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "entries":I
    .end local v13    # "bytes":J
    .end local v15    # "found":Z
    .end local v17    # "base":Ljava/lang/String;
    .end local v19    # "in":Ljava/util/zip/ZipInputStream;
    .end local v20    # "done":Z
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "status":[I
    .end local p6    # "gate":[I
    throw v0

    .line 71
    .end local v18    # "entry":Ljava/util/zip/ZipEntry;
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "buf":[B
    .restart local v4    # "payload":[B
    .local v5, "base":Ljava/lang/String;
    .restart local v6    # "target":Ljava/io/File;
    .restart local v7    # "tmp":Ljava/io/File;
    .restart local v8    # "done":Z
    .restart local v9    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v10    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v11    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12    # "entries":I
    .restart local v13    # "bytes":J
    .restart local v15    # "found":Z
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "status":[I
    .restart local p6    # "gate":[I
    :catchall_7
    move-exception v0

    move/from16 v2, p4

    goto :goto_c

    .line 74
    .restart local v1    # "buf":[B
    .restart local v18    # "entry":Ljava/util/zip/ZipEntry;
    :cond_13
    move-object/from16 v22, v1

    move-object/from16 v17, v5

    move/from16 v20, v8

    move-object/from16 v19, v9

    move-object/from16 v5, p2

    move/from16 v8, p3

    .line 109
    .end local v1    # "buf":[B
    .end local v5    # "base":Ljava/lang/String;
    .end local v8    # "done":Z
    .end local v9    # "in":Ljava/util/zip/ZipInputStream;
    .end local v18    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v17    # "base":Ljava/lang/String;
    .restart local v19    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v20    # "done":Z
    .restart local v22    # "buf":[B
    if-eqz v15, :cond_18

    .line 110
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v10, v4}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 111
    .end local v22    # "buf":[B
    :try_start_d
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    .end local v10    # "out":Ljava/util/zip/ZipOutputStream;
    :try_start_e
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipInputStream;->close()V

    .line 112
    .end local v19    # "in":Ljava/util/zip/ZipInputStream;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_a

    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 535 cannot overwrite"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "payload":[B
    .end local v6    # "target":Ljava/io/File;
    .end local v7    # "tmp":Ljava/io/File;
    .end local v17    # "base":Ljava/lang/String;
    .end local v20    # "done":Z
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "status":[I
    .end local p6    # "gate":[I
    throw v0

    .line 113
    .restart local v4    # "payload":[B
    .restart local v6    # "target":Ljava/io/File;
    .restart local v7    # "tmp":Ljava/io/File;
    .restart local v17    # "base":Ljava/lang/String;
    .restart local v20    # "done":Z
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "status":[I
    .restart local p6    # "gate":[I
    :cond_15
    :goto_a
    invoke-virtual {v7, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    if-eqz v0, :cond_17

    .line 114
    const/4 v0, 0x1

    .line 115
    .end local v20    # "done":Z
    .local v0, "done":Z
    if-nez v0, :cond_16

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 114
    :cond_16
    return-object v6

    .line 113
    .end local v0    # "done":Z
    .restart local v20    # "done":Z
    :cond_17
    :try_start_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 535 cannot commit ZIP"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "payload":[B
    .end local v6    # "target":Ljava/io/File;
    .end local v7    # "tmp":Ljava/io/File;
    .end local v17    # "base":Ljava/lang/String;
    .end local v20    # "done":Z
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "status":[I
    .end local p6    # "gate":[I
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    .line 71
    .restart local v4    # "payload":[B
    .restart local v6    # "target":Ljava/io/File;
    .restart local v7    # "tmp":Ljava/io/File;
    .restart local v10    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v17    # "base":Ljava/lang/String;
    .restart local v19    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v20    # "done":Z
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "status":[I
    .restart local p6    # "gate":[I
    :catchall_8
    move-exception v0

    :goto_b
    move-object v1, v0

    goto :goto_d

    .line 109
    .restart local v22    # "buf":[B
    :cond_18
    :try_start_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 535 requires matching 534 gate"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "payload":[B
    .end local v6    # "target":Ljava/io/File;
    .end local v7    # "tmp":Ljava/io/File;
    .end local v10    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v11    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "entries":I
    .end local v13    # "bytes":J
    .end local v15    # "found":Z
    .end local v17    # "base":Ljava/lang/String;
    .end local v19    # "in":Ljava/util/zip/ZipInputStream;
    .end local v20    # "done":Z
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "status":[I
    .end local p6    # "gate":[I
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 71
    .end local v22    # "buf":[B
    .restart local v4    # "payload":[B
    .restart local v5    # "base":Ljava/lang/String;
    .restart local v6    # "target":Ljava/io/File;
    .restart local v7    # "tmp":Ljava/io/File;
    .restart local v8    # "done":Z
    .restart local v9    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v10    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v11    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12    # "entries":I
    .restart local v13    # "bytes":J
    .restart local v15    # "found":Z
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "status":[I
    .restart local p6    # "gate":[I
    :catchall_9
    move-exception v0

    :goto_c
    move-object/from16 v17, v5

    move/from16 v20, v8

    move-object/from16 v19, v9

    move-object/from16 v5, p2

    move/from16 v8, p3

    move-object v1, v0

    .end local v5    # "base":Ljava/lang/String;
    .end local v8    # "done":Z
    .end local v9    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v17    # "base":Ljava/lang/String;
    .restart local v19    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v20    # "done":Z
    :goto_d
    :try_start_11
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    goto :goto_e

    :catchall_a
    move-exception v0

    :try_start_12
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "payload":[B
    .end local v6    # "target":Ljava/io/File;
    .end local v7    # "tmp":Ljava/io/File;
    .end local v11    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "entries":I
    .end local v13    # "bytes":J
    .end local v15    # "found":Z
    .end local v17    # "base":Ljava/lang/String;
    .end local v19    # "in":Ljava/util/zip/ZipInputStream;
    .end local v20    # "done":Z
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "status":[I
    .end local p6    # "gate":[I
    :goto_e
    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    .end local v10    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v4    # "payload":[B
    .restart local v6    # "target":Ljava/io/File;
    .restart local v7    # "tmp":Ljava/io/File;
    .restart local v11    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12    # "entries":I
    .restart local v13    # "bytes":J
    .restart local v15    # "found":Z
    .restart local v17    # "base":Ljava/lang/String;
    .restart local v19    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v20    # "done":Z
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "status":[I
    .restart local p6    # "gate":[I
    :catchall_b
    move-exception v0

    move-object v1, v0

    goto :goto_f

    .end local v17    # "base":Ljava/lang/String;
    .end local v19    # "in":Ljava/util/zip/ZipInputStream;
    .end local v20    # "done":Z
    .restart local v5    # "base":Ljava/lang/String;
    .restart local v8    # "done":Z
    .restart local v9    # "in":Ljava/util/zip/ZipInputStream;
    :catchall_c
    move-exception v0

    move-object/from16 v17, v5

    move/from16 v20, v8

    move-object/from16 v19, v9

    move-object/from16 v5, p2

    move/from16 v8, p3

    move-object v1, v0

    .end local v5    # "base":Ljava/lang/String;
    .end local v8    # "done":Z
    .end local v9    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v17    # "base":Ljava/lang/String;
    .restart local v19    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v20    # "done":Z
    :goto_f
    :try_start_13
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    goto :goto_10

    :catchall_d
    move-exception v0

    :try_start_14
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "payload":[B
    .end local v6    # "target":Ljava/io/File;
    .end local v7    # "tmp":Ljava/io/File;
    .end local v17    # "base":Ljava/lang/String;
    .end local v20    # "done":Z
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "status":[I
    .end local p6    # "gate":[I
    :goto_10
    throw v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    .line 115
    .end local v11    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "entries":I
    .end local v13    # "bytes":J
    .end local v15    # "found":Z
    .end local v19    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v4    # "payload":[B
    .restart local v6    # "target":Ljava/io/File;
    .restart local v7    # "tmp":Ljava/io/File;
    .restart local v17    # "base":Ljava/lang/String;
    .restart local v20    # "done":Z
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "status":[I
    .restart local p6    # "gate":[I
    :catchall_e
    move-exception v0

    goto :goto_11

    .end local v17    # "base":Ljava/lang/String;
    .end local v20    # "done":Z
    .restart local v5    # "base":Ljava/lang/String;
    .restart local v8    # "done":Z
    :catchall_f
    move-exception v0

    move-object/from16 v17, v5

    move/from16 v20, v8

    move-object/from16 v5, p2

    move/from16 v8, p3

    .end local v5    # "base":Ljava/lang/String;
    .end local v8    # "done":Z
    .restart local v17    # "base":Ljava/lang/String;
    .restart local v20    # "done":Z
    :goto_11
    if-nez v20, :cond_19

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_19
    throw v0

    .line 65
    .end local v7    # "tmp":Ljava/io/File;
    .end local v17    # "base":Ljava/lang/String;
    .end local v20    # "done":Z
    .restart local v5    # "base":Ljava/lang/String;
    :cond_1a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 535 self-overwrite"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    .end local v5    # "base":Ljava/lang/String;
    .end local v6    # "target":Ljava/io/File;
    :cond_1b
    move-object/from16 v5, p2

    move/from16 v8, p3

    goto :goto_12

    .line 60
    :cond_1c
    move-object/from16 v5, p2

    move/from16 v8, p3

    goto :goto_12

    .line 59
    :cond_1d
    move-object/from16 v5, p2

    move/from16 v8, p3

    .line 62
    :goto_12
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 535 source ZIP invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static json(Ljava/lang/String;II[I[I)[B
    .locals 5
    .param p0, "sha"    # Ljava/lang/String;
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .param p3, "status"    # [I
    .param p4, "gate"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    if-eqz p0, :cond_5

    const-string v0, "[0-9a-fA-F]{64}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-ltz p1, :cond_5

    const/4 v0, 0x5

    if-ge p1, v0, :cond_5

    const/4 v1, 0x1

    if-lt p2, v1, :cond_5

    const/16 v2, 0x9

    if-gt p2, v2, :cond_5

    .line 36
    if-eqz p3, :cond_0

    invoke-static {p3, p4}, Lcom/ahsim/demulation/RazorM68kBackendEvidence535;->verify([I[I)V

    .line 37
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"schema\":\"demulation.razor.535.partial-68k-backend.v1\",\"source_rom_sha256\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 38
    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"house\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\"mission\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\"status\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 40
    if-nez p3, :cond_1

    const-string v3, "NO_SAME_EVENT_BACKEND_STATUS"

    goto :goto_0

    :cond_1
    const-string v3, "PARTIAL_BACKEND_LINKED_F40_BLOCKED"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"opcode_families\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 41
    const/4 v3, 0x0

    if-nez p3, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    aget v4, p3, v1

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",\"rom_fetched_replay_supported\":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"genesis_rom_mapped_to_session\":false,\"genesis_ram_mapped_to_session\":false,\"genesis_cpu_authenticated\":false,\"genesis_unit_slot_proven\":false,\"native_callback_executed\":false,\"gameplay_ticks\":0,\"gameplay_authorized\":false,\"missing_live_capability_bits\":15"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 50
    if-nez p3, :cond_4

    const-string v0, ""

    goto :goto_3

    .line 53
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",\"emc_event_id\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v0, p3, v0

    .line 51
    invoke-static {v0}, Lcom/ahsim/demulation/RazorF40PrecallEvidence533$$ExternalSyntheticBackport1;->m(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x4

    aget v2, p3, v2

    .line 52
    invoke-static {v2}, Lcom/ahsim/demulation/RazorF40PrecallEvidence533$$ExternalSyntheticBackport1;->m(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"emc_ordinal\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x3

    aget v2, p3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "b":Ljava/lang/String;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1

    .line 35
    .end local v0    # "b":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 535 invalid source ROM or mission"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verify([I[I)V
    .locals 6
    .param p0, "status"    # [I
    .param p1, "gate"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget v1, p0, v0

    const/16 v2, 0x217

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget v2, p0, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    aget v4, p0, v2

    const/16 v5, 0xf

    if-ne v4, v5, :cond_0

    aget v0, p1, v0

    const/16 v4, 0x216

    if-ne v0, v4, :cond_0

    aget v0, p1, v1

    if-ne v0, v1, :cond_0

    aget v0, p1, v2

    if-ne v0, v5, :cond_0

    const/4 v0, 0x3

    aget v1, p0, v0

    aget v0, p1, v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x4

    aget v1, p0, v0

    aget v0, p1, v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x5

    aget v1, p0, v0

    aget v0, p1, v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x6

    aget v1, p0, v0

    aget v0, p1, v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x7

    aget v1, p0, v0

    aget v0, p1, v0

    if-ne v1, v0, :cond_0

    const/16 v0, 0x8

    aget v0, p0, v0

    if-nez v0, :cond_0

    const/16 v0, 0x9

    aget v0, p0, v0

    if-nez v0, :cond_0

    aget v0, p0, v3

    if-nez v0, :cond_0

    const/16 v0, 0xb

    aget v0, p0, v0

    if-nez v0, :cond_0

    .line 30
    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 535 backend status not same event or unsafe"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
