.class public final Lcom/ahsim/demulation/RazorGenesisBootEvidence541;
.super Ljava/lang/Object;
.source "RazorGenesisBootEvidence541.java"


# static fields
.field public static final ENTRY:Ljava/lang/String; = "razor_genesis_boot541.json"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append(Ljava/io/File;Ljava/io/File;Ljava/lang/String;II[I[II)Ljava/io/File;
    .locals 25
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "previous"    # Ljava/io/File;
    .param p2, "sha"    # Ljava/lang/String;
    .param p3, "house"    # I
    .param p4, "mission"    # I
    .param p5, "x"    # [I
    .param p6, "gate"    # [I
    .param p7, "variant"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, ","

    const-string v3, "\""

    invoke-static/range {p2 .. p7}, Lcom/ahsim/demulation/RazorGenesisBootEvidence541;->json(Ljava/lang/String;II[I[II)[B

    move-result-object v4

    .line 64
    .local v4, "payload":[B
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1d

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 65
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".zip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 66
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 68
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "base":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_541.zip"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    .local v6, "target":Ljava/io/File;
    invoke-virtual {v6, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    .line 71
    const-string v7, "razor541_"

    const-string v8, ".part"

    invoke-static {v7, v8, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    .line 72
    .local v7, "tmp":Ljava/io/File;
    const/4 v8, 0x0

    .line 74
    .local v8, "done":Z
    const/4 v10, 0x0

    .local v10, "entries":I
    const-wide/16 v11, 0x0

    .local v11, "total":J
    const/4 v13, 0x0

    .line 75
    .local v13, "found534":Z
    :try_start_0
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 76
    .local v14, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/zip/ZipInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v15, v9}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_12

    .line 77
    .local v15, "in":Ljava/util/zip/ZipInputStream;
    :try_start_1
    new-instance v9, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_f

    .line 78
    .local v9, "out":Ljava/util/zip/ZipOutputStream;
    const/16 v1, 0x2000

    :try_start_2
    new-array v1, v1, [B

    .line 79
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {v15}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    move-object/from16 v17, v16

    .local v17, "entry":Ljava/util/zip/ZipEntry;
    const-string v2, "razor_genesis_boot541.json"

    if-eqz v16, :cond_13

    .line 80
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_c

    move-object/from16 v18, v16

    .line 81
    .local v18, "name":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v16, v5

    .end local v5    # "base":Ljava/lang/String;
    .local v16, "base":Ljava/lang/String;
    const/16 v5, 0x80

    if-gt v10, v5, :cond_12

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "/"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    move/from16 v19, v8

    move-object/from16 v8, v18

    .end local v18    # "name":Ljava/lang/String;
    .local v8, "name":Ljava/lang/String;
    .local v19, "done":Z
    :try_start_5
    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, ".."

    .line 82
    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, "\\"

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_10

    .line 83
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-interface {v14, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 85
    const-string v2, "razor_f40_sandbox_gate534.json"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    if-eqz v2, :cond_0

    .line 86
    :try_start_6
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 76
    .end local v1    # "buf":[B
    .end local v8    # "name":Ljava/lang/String;
    .end local v17    # "entry":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v0

    move-object/from16 v8, p2

    goto/16 :goto_e

    .line 86
    .restart local v1    # "buf":[B
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v17    # "entry":Ljava/util/zip/ZipEntry;
    :cond_0
    const/4 v2, 0x0

    .line 87
    .local v2, "check":Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_7
    new-instance v5, Ljava/util/zip/ZipEntry;

    invoke-direct {v5, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    .line 89
    :goto_2
    :try_start_8
    invoke-virtual {v15, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    move/from16 v18, v5

    move-object/from16 v20, v8

    .end local v8    # "name":Ljava/lang/String;
    .local v18, "n":I
    .local v20, "name":Ljava/lang/String;
    const/4 v8, -0x1

    if-eq v5, v8, :cond_5

    .line 90
    if-nez v18, :cond_1

    move-object/from16 v8, v20

    goto :goto_2

    .line 91
    :cond_1
    move v8, v10

    move-wide/from16 v21, v11

    move/from16 v5, v18

    .end local v10    # "entries":I
    .end local v11    # "total":J
    .end local v18    # "n":I
    .local v5, "n":I
    .local v8, "entries":I
    .local v21, "total":J
    int-to-long v10, v5

    add-long v11, v21, v10

    .line 92
    .end local v21    # "total":J
    .restart local v11    # "total":J
    const-wide/32 v21, 0xa00000

    cmp-long v10, v11, v21

    if-gtz v10, :cond_4

    .line 93
    if-eqz v2, :cond_3

    .line 94
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    add-int/2addr v10, v5

    move/from16 v18, v8

    .end local v8    # "entries":I
    .local v18, "entries":I
    const/16 v8, 0x4000

    if-gt v10, v8, :cond_2

    .line 95
    const/4 v8, 0x0

    :try_start_a
    invoke-virtual {v2, v1, v8, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    .line 94
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Razor 541 huge 534 gate"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "payload":[B
    .end local v6    # "target":Ljava/io/File;
    .end local v7    # "tmp":Ljava/io/File;
    .end local v9    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v11    # "total":J
    .end local v13    # "found534":Z
    .end local v14    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "in":Ljava/util/zip/ZipInputStream;
    .end local v16    # "base":Ljava/lang/String;
    .end local v18    # "entries":I
    .end local v19    # "done":Z
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "x":[I
    .end local p6    # "gate":[I
    .end local p7    # "variant":I
    throw v0

    .line 76
    .end local v1    # "buf":[B
    .end local v2    # "check":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "n":I
    .end local v17    # "entry":Ljava/util/zip/ZipEntry;
    .end local v20    # "name":Ljava/lang/String;
    .restart local v4    # "payload":[B
    .restart local v6    # "target":Ljava/io/File;
    .restart local v7    # "tmp":Ljava/io/File;
    .restart local v8    # "entries":I
    .restart local v9    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v11    # "total":J
    .restart local v13    # "found534":Z
    .restart local v14    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v16    # "base":Ljava/lang/String;
    .restart local v19    # "done":Z
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "x":[I
    .restart local p6    # "gate":[I
    .restart local p7    # "variant":I
    :catchall_1
    move-exception v0

    move/from16 v18, v8

    move-object/from16 v8, p2

    move-object v1, v0

    move/from16 v10, v18

    .end local v8    # "entries":I
    .restart local v18    # "entries":I
    goto/16 :goto_f

    .line 93
    .end local v18    # "entries":I
    .restart local v1    # "buf":[B
    .restart local v2    # "check":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "n":I
    .restart local v8    # "entries":I
    .restart local v17    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v20    # "name":Ljava/lang/String;
    :cond_3
    move/from16 v18, v8

    .line 97
    .end local v8    # "entries":I
    .restart local v18    # "entries":I
    :goto_3
    const/4 v8, 0x0

    invoke-virtual {v9, v1, v8, v5}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    move/from16 v10, v18

    move-object/from16 v8, v20

    goto :goto_2

    .line 92
    .end local v18    # "entries":I
    .restart local v8    # "entries":I
    :cond_4
    move/from16 v18, v8

    .end local v8    # "entries":I
    .restart local v18    # "entries":I
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Razor 541 oversized archive"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "payload":[B
    .end local v6    # "target":Ljava/io/File;
    .end local v7    # "tmp":Ljava/io/File;
    .end local v9    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v11    # "total":J
    .end local v13    # "found534":Z
    .end local v14    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "in":Ljava/util/zip/ZipInputStream;
    .end local v16    # "base":Ljava/lang/String;
    .end local v18    # "entries":I
    .end local v19    # "done":Z
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "x":[I
    .end local p6    # "gate":[I
    .end local p7    # "variant":I
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 76
    .end local v1    # "buf":[B
    .end local v2    # "check":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "n":I
    .end local v17    # "entry":Ljava/util/zip/ZipEntry;
    .end local v20    # "name":Ljava/lang/String;
    .restart local v4    # "payload":[B
    .restart local v6    # "target":Ljava/io/File;
    .restart local v7    # "tmp":Ljava/io/File;
    .restart local v9    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v11    # "total":J
    .restart local v13    # "found534":Z
    .restart local v14    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v16    # "base":Ljava/lang/String;
    .restart local v18    # "entries":I
    .restart local v19    # "done":Z
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "x":[I
    .restart local p6    # "gate":[I
    .restart local p7    # "variant":I
    :catchall_2
    move-exception v0

    move-object/from16 v8, p2

    goto/16 :goto_c

    .line 99
    .restart local v1    # "buf":[B
    .restart local v2    # "check":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "entries":I
    .restart local v17    # "entry":Ljava/util/zip/ZipEntry;
    .local v18, "n":I
    .restart local v20    # "name":Ljava/lang/String;
    :cond_5
    move-wide/from16 v21, v11

    move/from16 v5, v18

    const/4 v8, 0x0

    move/from16 v18, v10

    .end local v10    # "entries":I
    .end local v11    # "total":J
    .restart local v5    # "n":I
    .local v18, "entries":I
    .restart local v21    # "total":J
    if-eqz v2, :cond_e

    .line 100
    :try_start_b
    const-string v10, "UTF-8"

    invoke-virtual {v2, v10}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 101
    .local v10, "g":Ljava/lang/String;
    const-string v11, "\"schema\":\"demulation.razor.534.f40-sandbox-gate.v1\""

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_c

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\"source_rom_sha256\":\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 102
    move-object/from16 v8, p2

    :try_start_c
    invoke-virtual {v8, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\"house\":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move/from16 v12, p3

    :try_start_d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 103
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v1

    .end local v1    # "buf":[B
    .local v23, "buf":[B
    const-string v1, "\"mission\":"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move/from16 v11, p4

    :try_start_e
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "\"gameplay_ticks\":0"

    .line 105
    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz p5, :cond_7

    const-string v1, "\"status\":\"HOST_COPY_ISOLATED_F40_BLOCKED\""

    .line 106
    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v0

    const-string v0, "\"emc_event_id\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x14

    aget v1, p5, v1

    .line 108
    invoke-static {v1}, Lcom/ahsim/demulation/RazorF40PrecallEvidence533$$ExternalSyntheticBackport1;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x13

    aget v1, p5, v1

    .line 109
    invoke-static {v1}, Lcom/ahsim/demulation/RazorF40PrecallEvidence533$$ExternalSyntheticBackport1;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"emc_ordinal\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x12

    aget v1, p5, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_4

    .line 106
    :cond_6
    move-object/from16 v24, v0

    goto :goto_5

    .line 105
    :cond_7
    move-object/from16 v24, v0

    .line 110
    :goto_4
    const/4 v0, 0x1

    goto :goto_6

    .line 105
    :cond_8
    move-object/from16 v24, v0

    goto :goto_5

    .line 104
    :cond_9
    move-object/from16 v24, v0

    goto :goto_5

    .line 103
    .end local v23    # "buf":[B
    .restart local v1    # "buf":[B
    :cond_a
    move/from16 v11, p4

    move-object/from16 v24, v0

    move-object/from16 v23, v1

    .end local v1    # "buf":[B
    .restart local v23    # "buf":[B
    goto :goto_5

    .line 76
    .end local v2    # "check":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "n":I
    .end local v10    # "g":Ljava/lang/String;
    .end local v17    # "entry":Ljava/util/zip/ZipEntry;
    .end local v20    # "name":Ljava/lang/String;
    .end local v23    # "buf":[B
    :catchall_3
    move-exception v0

    goto :goto_8

    .line 102
    .restart local v1    # "buf":[B
    .restart local v2    # "check":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "n":I
    .restart local v10    # "g":Ljava/lang/String;
    .restart local v17    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v20    # "name":Ljava/lang/String;
    :cond_b
    move/from16 v12, p3

    move/from16 v11, p4

    move-object/from16 v24, v0

    move-object/from16 v23, v1

    .end local v1    # "buf":[B
    .restart local v23    # "buf":[B
    goto :goto_5

    .line 76
    .end local v2    # "check":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "n":I
    .end local v10    # "g":Ljava/lang/String;
    .end local v17    # "entry":Ljava/util/zip/ZipEntry;
    .end local v20    # "name":Ljava/lang/String;
    .end local v23    # "buf":[B
    :catchall_4
    move-exception v0

    goto :goto_7

    .line 101
    .restart local v1    # "buf":[B
    .restart local v2    # "check":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "n":I
    .restart local v10    # "g":Ljava/lang/String;
    .restart local v17    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v20    # "name":Ljava/lang/String;
    :cond_c
    move-object/from16 v8, p2

    move/from16 v12, p3

    move/from16 v11, p4

    move-object/from16 v24, v0

    move-object/from16 v23, v1

    .line 110
    .end local v1    # "buf":[B
    .restart local v23    # "buf":[B
    :cond_d
    :goto_5
    const/4 v0, 0x0

    :goto_6
    move v13, v0

    goto :goto_9

    .line 76
    .end local v2    # "check":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "n":I
    .end local v10    # "g":Ljava/lang/String;
    .end local v17    # "entry":Ljava/util/zip/ZipEntry;
    .end local v20    # "name":Ljava/lang/String;
    .end local v23    # "buf":[B
    :catchall_5
    move-exception v0

    move-object/from16 v8, p2

    :goto_7
    move/from16 v12, p3

    :goto_8
    move/from16 v11, p4

    goto :goto_a

    .line 99
    .restart local v1    # "buf":[B
    .restart local v2    # "check":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "n":I
    .restart local v17    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v20    # "name":Ljava/lang/String;
    :cond_e
    move-object/from16 v8, p2

    move/from16 v12, p3

    move/from16 v11, p4

    move-object/from16 v24, v0

    move-object/from16 v23, v1

    .line 112
    .end local v1    # "buf":[B
    .restart local v23    # "buf":[B
    :goto_9
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    invoke-virtual {v15}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 113
    .end local v2    # "check":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "n":I
    .end local v20    # "name":Ljava/lang/String;
    move-object/from16 v2, p1

    move-object/from16 v5, v16

    move/from16 v10, v18

    move/from16 v8, v19

    move-wide/from16 v11, v21

    move-object/from16 v1, v23

    move-object/from16 v0, v24

    goto/16 :goto_0

    .line 76
    .end local v17    # "entry":Ljava/util/zip/ZipEntry;
    .end local v23    # "buf":[B
    :catchall_6
    move-exception v0

    :goto_a
    move-object v1, v0

    move/from16 v10, v18

    move-wide/from16 v11, v21

    goto/16 :goto_f

    .end local v18    # "entries":I
    .end local v21    # "total":J
    .local v10, "entries":I
    .restart local v11    # "total":J
    :catchall_7
    move-exception v0

    move-object/from16 v8, p2

    move/from16 v18, v10

    move-wide/from16 v21, v11

    move/from16 v12, p3

    move/from16 v11, p4

    move-object v1, v0

    move-wide/from16 v11, v21

    .end local v10    # "entries":I
    .end local v11    # "total":J
    .restart local v18    # "entries":I
    .restart local v21    # "total":J
    goto/16 :goto_f

    .line 83
    .end local v18    # "entries":I
    .end local v21    # "total":J
    .restart local v1    # "buf":[B
    .local v8, "name":Ljava/lang/String;
    .restart local v10    # "entries":I
    .restart local v11    # "total":J
    .restart local v17    # "entry":Ljava/util/zip/ZipEntry;
    :cond_f
    move-object/from16 v23, v1

    move-object/from16 v20, v8

    move/from16 v18, v10

    move-object/from16 v8, p2

    .end local v1    # "buf":[B
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "entries":I
    .restart local v18    # "entries":I
    .restart local v20    # "name":Ljava/lang/String;
    .restart local v23    # "buf":[B
    goto :goto_b

    .line 82
    .end local v18    # "entries":I
    .end local v20    # "name":Ljava/lang/String;
    .end local v23    # "buf":[B
    .restart local v1    # "buf":[B
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v10    # "entries":I
    :cond_10
    move-object/from16 v23, v1

    move-object/from16 v20, v8

    move/from16 v18, v10

    move-object/from16 v8, p2

    .end local v1    # "buf":[B
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "entries":I
    .restart local v18    # "entries":I
    .restart local v20    # "name":Ljava/lang/String;
    .restart local v23    # "buf":[B
    goto :goto_b

    .line 81
    .end local v18    # "entries":I
    .end local v20    # "name":Ljava/lang/String;
    .end local v23    # "buf":[B
    .restart local v1    # "buf":[B
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v10    # "entries":I
    :cond_11
    move-object/from16 v23, v1

    move-object/from16 v20, v8

    move/from16 v18, v10

    move-object/from16 v8, p2

    .end local v1    # "buf":[B
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "entries":I
    .restart local v18    # "entries":I
    .restart local v20    # "name":Ljava/lang/String;
    .restart local v23    # "buf":[B
    goto :goto_b

    .line 76
    .end local v17    # "entry":Ljava/util/zip/ZipEntry;
    .end local v18    # "entries":I
    .end local v20    # "name":Ljava/lang/String;
    .end local v23    # "buf":[B
    .restart local v10    # "entries":I
    :catchall_8
    move-exception v0

    move-object/from16 v8, p2

    move/from16 v18, v10

    move-object v1, v0

    .end local v10    # "entries":I
    .restart local v18    # "entries":I
    goto/16 :goto_f

    .end local v18    # "entries":I
    .end local v19    # "done":Z
    .local v8, "done":Z
    .restart local v10    # "entries":I
    :catchall_9
    move-exception v0

    move/from16 v19, v8

    move/from16 v18, v10

    move-object/from16 v8, p2

    move-object v1, v0

    .end local v8    # "done":Z
    .end local v10    # "entries":I
    .restart local v18    # "entries":I
    .restart local v19    # "done":Z
    goto/16 :goto_f

    .line 81
    .end local v19    # "done":Z
    .restart local v1    # "buf":[B
    .restart local v8    # "done":Z
    .restart local v10    # "entries":I
    .restart local v17    # "entry":Ljava/util/zip/ZipEntry;
    .local v18, "name":Ljava/lang/String;
    :cond_12
    move-object/from16 v23, v1

    move/from16 v19, v8

    move-object/from16 v20, v18

    move-object/from16 v8, p2

    move/from16 v18, v10

    .line 84
    .end local v1    # "buf":[B
    .end local v8    # "done":Z
    .end local v10    # "entries":I
    .local v18, "entries":I
    .restart local v19    # "done":Z
    .restart local v20    # "name":Ljava/lang/String;
    .restart local v23    # "buf":[B
    :goto_b
    :try_start_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 541 invalid archive entry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "payload":[B
    .end local v6    # "target":Ljava/io/File;
    .end local v7    # "tmp":Ljava/io/File;
    .end local v9    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v11    # "total":J
    .end local v13    # "found534":Z
    .end local v14    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "in":Ljava/util/zip/ZipInputStream;
    .end local v16    # "base":Ljava/lang/String;
    .end local v18    # "entries":I
    .end local v19    # "done":Z
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "x":[I
    .end local p6    # "gate":[I
    .end local p7    # "variant":I
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    .line 76
    .end local v17    # "entry":Ljava/util/zip/ZipEntry;
    .end local v20    # "name":Ljava/lang/String;
    .end local v23    # "buf":[B
    .restart local v4    # "payload":[B
    .restart local v6    # "target":Ljava/io/File;
    .restart local v7    # "tmp":Ljava/io/File;
    .restart local v9    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v11    # "total":J
    .restart local v13    # "found534":Z
    .restart local v14    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v16    # "base":Ljava/lang/String;
    .restart local v18    # "entries":I
    .restart local v19    # "done":Z
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "x":[I
    .restart local p6    # "gate":[I
    .restart local p7    # "variant":I
    :catchall_a
    move-exception v0

    :goto_c
    move-object v1, v0

    move/from16 v10, v18

    goto :goto_f

    .line 79
    .end local v16    # "base":Ljava/lang/String;
    .end local v18    # "entries":I
    .end local v19    # "done":Z
    .restart local v1    # "buf":[B
    .local v5, "base":Ljava/lang/String;
    .restart local v8    # "done":Z
    .restart local v10    # "entries":I
    .restart local v17    # "entry":Ljava/util/zip/ZipEntry;
    :cond_13
    move-object/from16 v23, v1

    move-object/from16 v16, v5

    move/from16 v19, v8

    move-object/from16 v8, p2

    .line 114
    .end local v1    # "buf":[B
    .end local v5    # "base":Ljava/lang/String;
    .end local v8    # "done":Z
    .end local v17    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v16    # "base":Ljava/lang/String;
    .restart local v19    # "done":Z
    .restart local v23    # "buf":[B
    if-eqz v13, :cond_18

    .line 115
    :try_start_10
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v9, v4}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    .line 116
    .end local v23    # "buf":[B
    :try_start_11
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_e

    .end local v9    # "out":Ljava/util/zip/ZipOutputStream;
    :try_start_12
    invoke-virtual {v15}, Ljava/util/zip/ZipInputStream;->close()V

    .line 117
    .end local v15    # "in":Ljava/util/zip/ZipInputStream;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_d

    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 541 overwrite refused"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "payload":[B
    .end local v6    # "target":Ljava/io/File;
    .end local v7    # "tmp":Ljava/io/File;
    .end local v16    # "base":Ljava/lang/String;
    .end local v19    # "done":Z
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "x":[I
    .end local p6    # "gate":[I
    .end local p7    # "variant":I
    throw v0

    .line 118
    .restart local v4    # "payload":[B
    .restart local v6    # "target":Ljava/io/File;
    .restart local v7    # "tmp":Ljava/io/File;
    .restart local v16    # "base":Ljava/lang/String;
    .restart local v19    # "done":Z
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "x":[I
    .restart local p6    # "gate":[I
    .restart local p7    # "variant":I
    :cond_15
    :goto_d
    invoke-virtual {v7, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_11

    if-eqz v0, :cond_17

    .line 119
    const/4 v0, 0x1

    .line 120
    .end local v19    # "done":Z
    .local v0, "done":Z
    if-nez v0, :cond_16

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 119
    :cond_16
    return-object v6

    .line 118
    .end local v0    # "done":Z
    .restart local v19    # "done":Z
    :cond_17
    :try_start_13
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 541 rename failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "payload":[B
    .end local v6    # "target":Ljava/io/File;
    .end local v7    # "tmp":Ljava/io/File;
    .end local v16    # "base":Ljava/lang/String;
    .end local v19    # "done":Z
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "x":[I
    .end local p6    # "gate":[I
    .end local p7    # "variant":I
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_11

    .line 76
    .restart local v4    # "payload":[B
    .restart local v6    # "target":Ljava/io/File;
    .restart local v7    # "tmp":Ljava/io/File;
    .restart local v9    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v15    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v16    # "base":Ljava/lang/String;
    .restart local v19    # "done":Z
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "x":[I
    .restart local p6    # "gate":[I
    .restart local p7    # "variant":I
    :catchall_b
    move-exception v0

    :goto_e
    move-object v1, v0

    goto :goto_f

    .line 114
    .restart local v23    # "buf":[B
    :cond_18
    :try_start_14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 541 missing/mismatched 534 gate"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "payload":[B
    .end local v6    # "target":Ljava/io/File;
    .end local v7    # "tmp":Ljava/io/File;
    .end local v9    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v10    # "entries":I
    .end local v11    # "total":J
    .end local v13    # "found534":Z
    .end local v14    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "in":Ljava/util/zip/ZipInputStream;
    .end local v16    # "base":Ljava/lang/String;
    .end local v19    # "done":Z
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "x":[I
    .end local p6    # "gate":[I
    .end local p7    # "variant":I
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    .line 76
    .end local v23    # "buf":[B
    .restart local v4    # "payload":[B
    .restart local v5    # "base":Ljava/lang/String;
    .restart local v6    # "target":Ljava/io/File;
    .restart local v7    # "tmp":Ljava/io/File;
    .restart local v8    # "done":Z
    .restart local v9    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v10    # "entries":I
    .restart local v11    # "total":J
    .restart local v13    # "found534":Z
    .restart local v14    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15    # "in":Ljava/util/zip/ZipInputStream;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "x":[I
    .restart local p6    # "gate":[I
    .restart local p7    # "variant":I
    :catchall_c
    move-exception v0

    move-object/from16 v16, v5

    move/from16 v19, v8

    move-object/from16 v8, p2

    move-object v1, v0

    .end local v5    # "base":Ljava/lang/String;
    .end local v8    # "done":Z
    .restart local v16    # "base":Ljava/lang/String;
    .restart local v19    # "done":Z
    :goto_f
    :try_start_15
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    goto :goto_10

    :catchall_d
    move-exception v0

    :try_start_16
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "payload":[B
    .end local v6    # "target":Ljava/io/File;
    .end local v7    # "tmp":Ljava/io/File;
    .end local v10    # "entries":I
    .end local v11    # "total":J
    .end local v13    # "found534":Z
    .end local v14    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "in":Ljava/util/zip/ZipInputStream;
    .end local v16    # "base":Ljava/lang/String;
    .end local v19    # "done":Z
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "x":[I
    .end local p6    # "gate":[I
    .end local p7    # "variant":I
    :goto_10
    throw v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    .end local v9    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v4    # "payload":[B
    .restart local v6    # "target":Ljava/io/File;
    .restart local v7    # "tmp":Ljava/io/File;
    .restart local v10    # "entries":I
    .restart local v11    # "total":J
    .restart local v13    # "found534":Z
    .restart local v14    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v16    # "base":Ljava/lang/String;
    .restart local v19    # "done":Z
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "x":[I
    .restart local p6    # "gate":[I
    .restart local p7    # "variant":I
    :catchall_e
    move-exception v0

    move-object v1, v0

    goto :goto_11

    .end local v16    # "base":Ljava/lang/String;
    .end local v19    # "done":Z
    .restart local v5    # "base":Ljava/lang/String;
    .restart local v8    # "done":Z
    :catchall_f
    move-exception v0

    move-object/from16 v16, v5

    move/from16 v19, v8

    move-object/from16 v8, p2

    move-object v1, v0

    .end local v5    # "base":Ljava/lang/String;
    .end local v8    # "done":Z
    .restart local v16    # "base":Ljava/lang/String;
    .restart local v19    # "done":Z
    :goto_11
    :try_start_17
    invoke-virtual {v15}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_10

    goto :goto_12

    :catchall_10
    move-exception v0

    :try_start_18
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "payload":[B
    .end local v6    # "target":Ljava/io/File;
    .end local v7    # "tmp":Ljava/io/File;
    .end local v16    # "base":Ljava/lang/String;
    .end local v19    # "done":Z
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "x":[I
    .end local p6    # "gate":[I
    .end local p7    # "variant":I
    :goto_12
    throw v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_11

    .line 120
    .end local v10    # "entries":I
    .end local v11    # "total":J
    .end local v13    # "found534":Z
    .end local v14    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v4    # "payload":[B
    .restart local v6    # "target":Ljava/io/File;
    .restart local v7    # "tmp":Ljava/io/File;
    .restart local v16    # "base":Ljava/lang/String;
    .restart local v19    # "done":Z
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "x":[I
    .restart local p6    # "gate":[I
    .restart local p7    # "variant":I
    :catchall_11
    move-exception v0

    goto :goto_13

    .end local v16    # "base":Ljava/lang/String;
    .end local v19    # "done":Z
    .restart local v5    # "base":Ljava/lang/String;
    .restart local v8    # "done":Z
    :catchall_12
    move-exception v0

    move-object/from16 v16, v5

    move/from16 v19, v8

    move-object/from16 v8, p2

    .end local v5    # "base":Ljava/lang/String;
    .end local v8    # "done":Z
    .restart local v16    # "base":Ljava/lang/String;
    .restart local v19    # "done":Z
    :goto_13
    if-nez v19, :cond_19

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_19
    throw v0

    .line 70
    .end local v7    # "tmp":Ljava/io/File;
    .end local v16    # "base":Ljava/lang/String;
    .end local v19    # "done":Z
    .restart local v5    # "base":Ljava/lang/String;
    :cond_1a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 541 source overwrite"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    .end local v5    # "base":Ljava/lang/String;
    .end local v6    # "target":Ljava/io/File;
    :cond_1b
    move-object/from16 v8, p2

    goto :goto_14

    .line 65
    :cond_1c
    move-object/from16 v8, p2

    goto :goto_14

    .line 64
    :cond_1d
    move-object/from16 v8, p2

    .line 67
    :goto_14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 541 invalid source archive"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static json(Ljava/lang/String;II[I[II)[B
    .locals 5
    .param p0, "sha"    # Ljava/lang/String;
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .param p3, "x"    # [I
    .param p4, "gate"    # [I
    .param p5, "variant"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    if-eqz p0, :cond_7

    const-string v0, "[0-9a-fA-F]{64}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-ltz p1, :cond_7

    const/4 v0, 0x5

    if-ge p1, v0, :cond_7

    const/4 v0, 0x1

    if-lt p2, v0, :cond_7

    const/16 v1, 0x9

    if-gt p2, v1, :cond_7

    if-eq p5, v0, :cond_0

    const/4 v1, 0x2

    if-ne p5, v1, :cond_7

    .line 32
    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p3, p4, p5}, Lcom/ahsim/demulation/RazorGenesisBootEvidence541;->verify([I[II)V

    .line 33
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .local v1, "body":Ljava/lang/StringBuilder;
    const-string v2, "{\"schema\":\"demulation.razor.541.genesis-bootstrap.v1\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 35
    const-string v3, "\"source_rom_sha256\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 36
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

    .line 37
    const-string v3, ",\"rom_bytes\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ne p5, v0, :cond_2

    const/high16 v3, 0x300000

    goto :goto_0

    :cond_2
    const/high16 v3, 0x400000

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 38
    const-string v3, ",\"status\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 39
    if-nez p3, :cond_3

    const-string v3, "NO_SAME_EVENT_BOOT_PROBE"

    goto :goto_1

    :cond_3
    const-string v3, "MMIO_REQUIRED_A10008"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 40
    const-string v3, "\",\"reset_vector_pc\":\"00000468\",\"reset_vector_sp\":\"FFFFFFFA\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 41
    const-string v3, ",\"instruction\":\"TST.L ($00A10008)\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 42
    const-string v3, ",\"opcode\":\"4AB9\",\"stop_address\":\"00A10008\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 43
    const-string v3, ",\"stop_code\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p3, :cond_4

    const/4 v4, -0x3

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 44
    const-string v4, ",\"attempted_instructions\":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_5

    goto :goto_3

    :cond_5
    move v0, v3

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    const-string v2, ",\"completed_instructions\":0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 46
    const-string v2, ",\"original_rom_modified\":false"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 47
    const-string v2, ",\"private_genesis_ram_only\":true"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 48
    const-string v2, ",\"controller_io_implemented\":false"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 49
    const-string v2, ",\"genesis_live_cpu_authenticated\":false"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    const-string v2, ",\"native_f40_executed\":false"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    const-string v2, ",\"gameplay_ticks\":0,\"gameplay_authorized\":false"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    const-string v2, ",\"missing_live_capability_bits\":15"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    if-eqz p3, :cond_6

    const-string v0, ",\"emc_event_id\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x14

    aget v2, p3, v2

    .line 54
    invoke-static {v2}, Lcom/ahsim/demulation/RazorF40PrecallEvidence533$$ExternalSyntheticBackport1;->m(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x13

    aget v2, p3, v2

    .line 55
    invoke-static {v2}, Lcom/ahsim/demulation/RazorF40PrecallEvidence533$$ExternalSyntheticBackport1;->m(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    const-string v2, ",\"emc_ordinal\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x12

    aget v2, p3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    :cond_6
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0

    .line 31
    .end local v1    # "body":Ljava/lang/StringBuilder;
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 541 invalid source ROM or mission"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verify([I[II)V
    .locals 9
    .param p0, "x"    # [I
    .param p1, "gate"    # [I
    .param p2, "variant"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    if-eqz p0, :cond_2

    array-length v0, p0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_2

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    if-ne p2, v0, :cond_2

    :cond_0
    const/4 v3, 0x0

    aget v4, p1, v3

    const/16 v5, 0x216

    if-ne v4, v5, :cond_2

    aget v4, p1, v2

    if-ne v4, v2, :cond_2

    aget v4, p1, v0

    const/16 v5, 0xf

    if-ne v4, v5, :cond_2

    aget v3, p0, v3

    const/16 v4, 0x21d

    if-ne v3, v4, :cond_2

    aget v3, p0, v2

    .line 17
    if-ne p2, v2, :cond_1

    const/high16 v4, 0x300000

    goto :goto_0

    :cond_1
    const/high16 v4, 0x400000

    :goto_0
    if-ne v3, v4, :cond_2

    aget v0, p0, v0

    const/16 v3, 0x468

    if-ne v0, v3, :cond_2

    const/4 v0, 0x3

    aget v4, p0, v0

    const/4 v6, -0x6

    if-ne v4, v6, :cond_2

    const/4 v4, 0x4

    aget v6, p0, v4

    const/16 v7, 0x2700

    if-ne v6, v7, :cond_2

    const/4 v6, 0x5

    aget v7, p0, v6

    const/16 v8, 0x4ab9

    if-ne v7, v8, :cond_2

    const/4 v7, 0x6

    aget v7, p0, v7

    const v8, 0xa10008

    if-ne v7, v8, :cond_2

    const/4 v7, 0x7

    aget v7, p0, v7

    const/4 v8, -0x3

    if-ne v7, v8, :cond_2

    const/16 v7, 0x8

    aget v7, p0, v7

    if-ne v7, v3, :cond_2

    const/16 v3, 0x9

    aget v3, p0, v3

    if-ne v3, v2, :cond_2

    const/16 v3, 0xa

    aget v3, p0, v3

    if-nez v3, :cond_2

    const/16 v3, 0xb

    aget v3, p0, v3

    if-ne v3, v4, :cond_2

    const/16 v3, 0xc

    aget v3, p0, v3

    if-nez v3, :cond_2

    const/16 v3, 0xd

    aget v3, p0, v3

    if-nez v3, :cond_2

    const/16 v3, 0xe

    aget v3, p0, v3

    if-nez v3, :cond_2

    aget v3, p0, v5

    if-ne v3, v2, :cond_2

    aget v1, p0, v1

    if-ne v1, v5, :cond_2

    const/16 v1, 0x11

    aget v1, p0, v1

    if-ne v1, v2, :cond_2

    const/16 v1, 0x12

    aget v1, p0, v1

    aget v0, p1, v0

    if-ne v1, v0, :cond_2

    const/16 v0, 0x13

    aget v0, p0, v0

    aget v1, p1, v4

    if-ne v0, v1, :cond_2

    const/16 v0, 0x14

    aget v0, p0, v0

    aget v1, p1, v6

    if-ne v0, v1, :cond_2

    .line 25
    return-void

    .line 24
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 541 bootstrap ROM/EMC linkage unsafe"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
