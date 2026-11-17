.class public final Lcom/ahsim/demulation/RazorM68kTraceEvidence538;
.super Ljava/lang/Object;
.source "RazorM68kTraceEvidence538.java"


# static fields
.field public static final ENTRY:Ljava/lang/String; = "razor_m68k_trace538.json"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
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
    .param p5, "trace"    # [I
    .param p6, "smoke536"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, ","

    const-string v3, "\""

    invoke-static/range {p2 .. p6}, Lcom/ahsim/demulation/RazorM68kTraceEvidence538;->json(Ljava/lang/String;II[I[I)[B

    move-result-object v4

    .line 57
    .local v4, "body":[B
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1c

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 58
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".zip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 59
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 61
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    sub-int/2addr v6, v7

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, "stem":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_538.zip"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    .local v6, "target":Ljava/io/File;
    invoke-virtual {v6, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_19

    .line 64
    const-string v9, "razor538_"

    const-string v10, ".part"

    invoke-static {v9, v10, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v9

    .line 65
    .local v9, "temp":Ljava/io/File;
    const/4 v10, 0x0

    .line 67
    .local v10, "done":Z
    :try_start_0
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .local v11, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 68
    .local v12, "count":I
    const-wide/16 v13, 0x0

    .local v13, "total":J
    const/4 v15, 0x0

    .line 69
    .local v15, "found536":Z
    move/from16 v16, v7

    new-instance v7, Ljava/util/zip/ZipInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    .line 70
    .local v7, "in":Ljava/util/zip/ZipInputStream;
    :try_start_1
    new-instance v8, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    .line 71
    .local v8, "out":Ljava/util/zip/ZipOutputStream;
    const/16 v1, 0x2000

    :try_start_2
    new-array v1, v1, [B

    .line 72
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    move-object/from16 v18, v17

    .local v18, "entry":Ljava/util/zip/ZipEntry;
    const-string v2, "razor_m68k_trace538.json"

    if-eqz v17, :cond_12

    .line 73
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move-object/from16 v19, v17

    .line 74
    .local v19, "name":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v17, v5

    .end local v5    # "stem":Ljava/lang/String;
    .local v17, "stem":Ljava/lang/String;
    const/16 v5, 0x80

    if-gt v12, v5, :cond_11

    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "/"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move/from16 v20, v10

    move-object/from16 v10, v19

    .end local v19    # "name":Ljava/lang/String;
    .local v10, "name":Ljava/lang/String;
    .local v20, "done":Z
    :try_start_5
    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, ".."

    .line 75
    invoke-virtual {v10, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "\\"

    invoke-virtual {v10, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 76
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-interface {v11, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 78
    const-string v2, "razor_m68k_rom_smoke536.json"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v2, :cond_0

    .line 79
    :try_start_6
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 69
    .end local v1    # "buf":[B
    .end local v10    # "name":Ljava/lang/String;
    .end local v18    # "entry":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v0

    move-object/from16 v5, p2

    move/from16 v10, p3

    move-object v1, v0

    move-object/from16 v21, v7

    move-object v7, v11

    goto/16 :goto_e

    .line 79
    .restart local v1    # "buf":[B
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v18    # "entry":Ljava/util/zip/ZipEntry;
    :cond_0
    const/4 v2, 0x0

    .line 80
    .local v2, "prior536":Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_7
    new-instance v5, Ljava/util/zip/ZipEntry;

    invoke-direct {v5, v10}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 82
    :goto_2
    invoke-virtual {v7, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move/from16 v19, v5

    move-object/from16 v21, v7

    .end local v7    # "in":Ljava/util/zip/ZipInputStream;
    .local v19, "n":I
    .local v21, "in":Ljava/util/zip/ZipInputStream;
    const/4 v7, -0x1

    if-eq v5, v7, :cond_4

    .line 83
    move-object v7, v11

    move/from16 v5, v19

    move-object/from16 v19, v10

    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v5, "n":I
    .local v7, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v19, "name":Ljava/lang/String;
    int-to-long v10, v5

    add-long/2addr v13, v10

    .line 84
    const-wide/32 v10, 0xa00000

    cmp-long v10, v13, v10

    if-gtz v10, :cond_3

    .line 85
    if-eqz v2, :cond_2

    .line 86
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    add-int/2addr v10, v5

    const/16 v11, 0x4000

    if-gt v10, v11, :cond_1

    .line 87
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v10, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    .line 86
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Razor 538 huge 536 evidence"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "body":[B
    .end local v6    # "target":Ljava/io/File;
    .end local v7    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v9    # "temp":Ljava/io/File;
    .end local v12    # "count":I
    .end local v13    # "total":J
    .end local v15    # "found536":Z
    .end local v17    # "stem":Ljava/lang/String;
    .end local v20    # "done":Z
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "trace":[I
    .end local p6    # "smoke536":[I
    throw v0

    .line 89
    .restart local v4    # "body":[B
    .restart local v6    # "target":Ljava/io/File;
    .restart local v7    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v9    # "temp":Ljava/io/File;
    .restart local v12    # "count":I
    .restart local v13    # "total":J
    .restart local v15    # "found536":Z
    .restart local v17    # "stem":Ljava/lang/String;
    .restart local v20    # "done":Z
    .restart local v21    # "in":Ljava/util/zip/ZipInputStream;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "trace":[I
    .restart local p6    # "smoke536":[I
    :cond_2
    :goto_3
    const/4 v10, 0x0

    invoke-virtual {v8, v1, v10, v5}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    move-object v11, v7

    move-object/from16 v10, v19

    move-object/from16 v7, v21

    goto :goto_2

    .line 84
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Razor 538 oversized ZIP"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "body":[B
    .end local v6    # "target":Ljava/io/File;
    .end local v7    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v9    # "temp":Ljava/io/File;
    .end local v12    # "count":I
    .end local v13    # "total":J
    .end local v15    # "found536":Z
    .end local v17    # "stem":Ljava/lang/String;
    .end local v20    # "done":Z
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "trace":[I
    .end local p6    # "smoke536":[I
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 69
    .end local v1    # "buf":[B
    .end local v2    # "prior536":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "n":I
    .end local v18    # "entry":Ljava/util/zip/ZipEntry;
    .end local v19    # "name":Ljava/lang/String;
    .restart local v4    # "body":[B
    .restart local v6    # "target":Ljava/io/File;
    .restart local v7    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v9    # "temp":Ljava/io/File;
    .restart local v12    # "count":I
    .restart local v13    # "total":J
    .restart local v15    # "found536":Z
    .restart local v17    # "stem":Ljava/lang/String;
    .restart local v20    # "done":Z
    .restart local v21    # "in":Ljava/util/zip/ZipInputStream;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "trace":[I
    .restart local p6    # "smoke536":[I
    :catchall_1
    move-exception v0

    move-object/from16 v5, p2

    move/from16 v10, p3

    goto/16 :goto_c

    .line 91
    .end local v7    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "buf":[B
    .restart local v2    # "prior536":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v11    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v18    # "entry":Ljava/util/zip/ZipEntry;
    .local v19, "n":I
    :cond_4
    move-object v7, v11

    move/from16 v5, v19

    move-object/from16 v19, v10

    const/4 v10, 0x0

    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "n":I
    .restart local v7    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v19, "name":Ljava/lang/String;
    if-eqz v2, :cond_d

    .line 92
    :try_start_9
    const-string v11, "UTF-8"

    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 93
    .local v11, "text":Ljava/lang/String;
    const-string v10, "\"schema\":\"demulation.razor.536.rom-backed-private-smoke.v1\""

    invoke-virtual {v11, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v1

    .end local v1    # "buf":[B
    .local v22, "buf":[B
    const-string v1, "\"source_rom_sha256\":\""

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 94
    move/from16 v23, v5

    move-object/from16 v5, p2

    .end local v5    # "n":I
    .local v23, "n":I
    :try_start_a
    invoke-virtual {v5, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\"house\":"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move/from16 v10, p3

    :try_start_b
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v2

    .end local v2    # "prior536":Ljava/io/ByteArrayOutputStream;
    .local v24, "prior536":Ljava/io/ByteArrayOutputStream;
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

    .line 96
    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "\"gameplay_ticks\":0"

    .line 97
    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p5, :cond_6

    const-string v1, "\"status\":\"ROM_FETCHED_TWO_OPCODES_PRIVATE_ONLY\""

    .line 99
    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v0

    const-string v0, "\"emc_event_id\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    aget v1, p5, v1

    .line 101
    invoke-static {v1}, Lcom/ahsim/demulation/RazorF40PrecallEvidence533$$ExternalSyntheticBackport1;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, p5, v16

    .line 102
    invoke-static {v1}, Lcom/ahsim/demulation/RazorF40PrecallEvidence533$$ExternalSyntheticBackport1;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"emc_ordinal\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    aget v1, p5, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_4

    .line 99
    :cond_5
    move-object/from16 v25, v0

    goto :goto_5

    .line 97
    :cond_6
    move-object/from16 v25, v0

    .line 103
    :goto_4
    const/4 v0, 0x1

    goto :goto_6

    .line 97
    :cond_7
    move-object/from16 v25, v0

    goto :goto_5

    .line 96
    :cond_8
    move-object/from16 v25, v0

    goto :goto_5

    .line 95
    .end local v24    # "prior536":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "prior536":Ljava/io/ByteArrayOutputStream;
    :cond_9
    move-object/from16 v25, v0

    move-object/from16 v24, v2

    move/from16 v2, p4

    .end local v2    # "prior536":Ljava/io/ByteArrayOutputStream;
    .restart local v24    # "prior536":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 69
    .end local v11    # "text":Ljava/lang/String;
    .end local v18    # "entry":Ljava/util/zip/ZipEntry;
    .end local v19    # "name":Ljava/lang/String;
    .end local v22    # "buf":[B
    .end local v23    # "n":I
    .end local v24    # "prior536":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v0

    goto :goto_8

    .line 94
    .restart local v2    # "prior536":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "text":Ljava/lang/String;
    .restart local v18    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v19    # "name":Ljava/lang/String;
    .restart local v22    # "buf":[B
    .restart local v23    # "n":I
    :cond_a
    move/from16 v10, p3

    move-object/from16 v25, v0

    move-object/from16 v24, v2

    move/from16 v2, p4

    .end local v2    # "prior536":Ljava/io/ByteArrayOutputStream;
    .restart local v24    # "prior536":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 69
    .end local v11    # "text":Ljava/lang/String;
    .end local v18    # "entry":Ljava/util/zip/ZipEntry;
    .end local v19    # "name":Ljava/lang/String;
    .end local v22    # "buf":[B
    .end local v23    # "n":I
    .end local v24    # "prior536":Ljava/io/ByteArrayOutputStream;
    :catchall_3
    move-exception v0

    goto :goto_7

    .line 93
    .restart local v1    # "buf":[B
    .restart local v2    # "prior536":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "n":I
    .restart local v11    # "text":Ljava/lang/String;
    .restart local v18    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v19    # "name":Ljava/lang/String;
    :cond_b
    move/from16 v10, p3

    move-object/from16 v25, v0

    move-object/from16 v22, v1

    move-object/from16 v24, v2

    move/from16 v23, v5

    move-object/from16 v5, p2

    move/from16 v2, p4

    .line 103
    .end local v1    # "buf":[B
    .end local v2    # "prior536":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "n":I
    .restart local v22    # "buf":[B
    .restart local v23    # "n":I
    .restart local v24    # "prior536":Ljava/io/ByteArrayOutputStream;
    :cond_c
    :goto_5
    const/4 v0, 0x0

    :goto_6
    move v15, v0

    goto :goto_9

    .line 69
    .end local v11    # "text":Ljava/lang/String;
    .end local v18    # "entry":Ljava/util/zip/ZipEntry;
    .end local v19    # "name":Ljava/lang/String;
    .end local v22    # "buf":[B
    .end local v23    # "n":I
    .end local v24    # "prior536":Ljava/io/ByteArrayOutputStream;
    :catchall_4
    move-exception v0

    move-object/from16 v5, p2

    :goto_7
    move/from16 v10, p3

    :goto_8
    move/from16 v2, p4

    goto/16 :goto_c

    .line 91
    .restart local v1    # "buf":[B
    .restart local v2    # "prior536":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "n":I
    .restart local v18    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v19    # "name":Ljava/lang/String;
    :cond_d
    move/from16 v10, p3

    move-object/from16 v25, v0

    move-object/from16 v22, v1

    move-object/from16 v24, v2

    move/from16 v23, v5

    move-object/from16 v5, p2

    move/from16 v2, p4

    .line 105
    .end local v1    # "buf":[B
    .end local v2    # "prior536":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "n":I
    .restart local v22    # "buf":[B
    .restart local v23    # "n":I
    .restart local v24    # "prior536":Ljava/io/ByteArrayOutputStream;
    :goto_9
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    invoke-virtual/range {v21 .. v21}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 106
    .end local v19    # "name":Ljava/lang/String;
    .end local v23    # "n":I
    .end local v24    # "prior536":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v2, p1

    move-object v11, v7

    move-object/from16 v5, v17

    move/from16 v10, v20

    move-object/from16 v7, v21

    move-object/from16 v1, v22

    move-object/from16 v0, v25

    goto/16 :goto_0

    .line 76
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    .end local v22    # "buf":[B
    .restart local v1    # "buf":[B
    .local v7, "in":Ljava/util/zip/ZipInputStream;
    .restart local v10    # "name":Ljava/lang/String;
    .local v11, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_e
    move-object/from16 v5, p2

    move/from16 v2, p4

    move-object/from16 v22, v1

    move-object/from16 v21, v7

    move-object/from16 v19, v10

    move-object v7, v11

    move/from16 v10, p3

    .end local v1    # "buf":[B
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v7, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "name":Ljava/lang/String;
    .restart local v21    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v22    # "buf":[B
    goto :goto_a

    .line 75
    .end local v19    # "name":Ljava/lang/String;
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    .end local v22    # "buf":[B
    .restart local v1    # "buf":[B
    .local v7, "in":Ljava/util/zip/ZipInputStream;
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v11    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_f
    move-object/from16 v5, p2

    move/from16 v2, p4

    move-object/from16 v22, v1

    move-object/from16 v21, v7

    move-object/from16 v19, v10

    move-object v7, v11

    move/from16 v10, p3

    .end local v1    # "buf":[B
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v7, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "name":Ljava/lang/String;
    .restart local v21    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v22    # "buf":[B
    goto :goto_a

    .line 74
    .end local v19    # "name":Ljava/lang/String;
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    .end local v22    # "buf":[B
    .restart local v1    # "buf":[B
    .local v7, "in":Ljava/util/zip/ZipInputStream;
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v11    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_10
    move-object/from16 v5, p2

    move/from16 v2, p4

    move-object/from16 v22, v1

    move-object/from16 v21, v7

    move-object/from16 v19, v10

    move-object v7, v11

    move/from16 v10, p3

    .end local v1    # "buf":[B
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v7, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "name":Ljava/lang/String;
    .restart local v21    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v22    # "buf":[B
    goto :goto_a

    .line 69
    .end local v18    # "entry":Ljava/util/zip/ZipEntry;
    .end local v19    # "name":Ljava/lang/String;
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    .end local v22    # "buf":[B
    .local v7, "in":Ljava/util/zip/ZipInputStream;
    .restart local v11    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_5
    move-exception v0

    move-object/from16 v5, p2

    move/from16 v10, p3

    move/from16 v2, p4

    move-object/from16 v21, v7

    move-object v7, v11

    move-object v1, v0

    .end local v11    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v7, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v21    # "in":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_e

    .end local v20    # "done":Z
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    .local v7, "in":Ljava/util/zip/ZipInputStream;
    .local v10, "done":Z
    .restart local v11    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_6
    move-exception v0

    move-object/from16 v5, p2

    move/from16 v2, p4

    move-object/from16 v21, v7

    move/from16 v20, v10

    move-object v7, v11

    move/from16 v10, p3

    move-object v1, v0

    .end local v10    # "done":Z
    .end local v11    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v7, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "done":Z
    .restart local v21    # "in":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_e

    .line 74
    .end local v20    # "done":Z
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v1    # "buf":[B
    .local v7, "in":Ljava/util/zip/ZipInputStream;
    .restart local v10    # "done":Z
    .restart local v11    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v18    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v19    # "name":Ljava/lang/String;
    :cond_11
    move-object/from16 v5, p2

    move/from16 v2, p4

    move-object/from16 v22, v1

    move-object/from16 v21, v7

    move/from16 v20, v10

    move-object v7, v11

    move/from16 v10, p3

    .line 77
    .end local v1    # "buf":[B
    .end local v10    # "done":Z
    .end local v11    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v7, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "done":Z
    .restart local v21    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v22    # "buf":[B
    :goto_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 538 invalid ZIP entry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "body":[B
    .end local v6    # "target":Ljava/io/File;
    .end local v7    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v9    # "temp":Ljava/io/File;
    .end local v12    # "count":I
    .end local v13    # "total":J
    .end local v15    # "found536":Z
    .end local v17    # "stem":Ljava/lang/String;
    .end local v20    # "done":Z
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "trace":[I
    .end local p6    # "smoke536":[I
    throw v0

    .line 69
    .end local v18    # "entry":Ljava/util/zip/ZipEntry;
    .end local v19    # "name":Ljava/lang/String;
    .end local v22    # "buf":[B
    .restart local v4    # "body":[B
    .local v5, "stem":Ljava/lang/String;
    .restart local v6    # "target":Ljava/io/File;
    .local v7, "in":Ljava/util/zip/ZipInputStream;
    .restart local v8    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v9    # "temp":Ljava/io/File;
    .restart local v10    # "done":Z
    .restart local v11    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12    # "count":I
    .restart local v13    # "total":J
    .restart local v15    # "found536":Z
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "trace":[I
    .restart local p6    # "smoke536":[I
    :catchall_7
    move-exception v0

    move/from16 v2, p4

    goto :goto_d

    .line 72
    .restart local v1    # "buf":[B
    .restart local v18    # "entry":Ljava/util/zip/ZipEntry;
    :cond_12
    move-object/from16 v22, v1

    move-object/from16 v17, v5

    move-object/from16 v21, v7

    move/from16 v20, v10

    move-object v7, v11

    move-object/from16 v5, p2

    move/from16 v10, p3

    .line 107
    .end local v1    # "buf":[B
    .end local v5    # "stem":Ljava/lang/String;
    .end local v10    # "done":Z
    .end local v11    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v18    # "entry":Ljava/util/zip/ZipEntry;
    .local v7, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v17    # "stem":Ljava/lang/String;
    .restart local v20    # "done":Z
    .restart local v21    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v22    # "buf":[B
    if-eqz v15, :cond_17

    .line 108
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v8, v4}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 109
    .end local v22    # "buf":[B
    :try_start_d
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    .end local v8    # "out":Ljava/util/zip/ZipOutputStream;
    :try_start_e
    invoke-virtual/range {v21 .. v21}, Ljava/util/zip/ZipInputStream;->close()V

    .line 110
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_b

    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 538 overwrite refused"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "body":[B
    .end local v6    # "target":Ljava/io/File;
    .end local v9    # "temp":Ljava/io/File;
    .end local v17    # "stem":Ljava/lang/String;
    .end local v20    # "done":Z
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "trace":[I
    .end local p6    # "smoke536":[I
    throw v0

    .line 111
    .restart local v4    # "body":[B
    .restart local v6    # "target":Ljava/io/File;
    .restart local v9    # "temp":Ljava/io/File;
    .restart local v17    # "stem":Ljava/lang/String;
    .restart local v20    # "done":Z
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "trace":[I
    .restart local p6    # "smoke536":[I
    :cond_14
    :goto_b
    invoke-virtual {v9, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    if-eqz v0, :cond_16

    .line 112
    const/4 v0, 0x1

    .line 113
    .end local v20    # "done":Z
    .local v0, "done":Z
    if-nez v0, :cond_15

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 112
    :cond_15
    return-object v6

    .line 111
    .end local v0    # "done":Z
    .restart local v20    # "done":Z
    :cond_16
    :try_start_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 538 ZIP rename failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "body":[B
    .end local v6    # "target":Ljava/io/File;
    .end local v9    # "temp":Ljava/io/File;
    .end local v17    # "stem":Ljava/lang/String;
    .end local v20    # "done":Z
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "trace":[I
    .end local p6    # "smoke536":[I
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    .line 69
    .restart local v4    # "body":[B
    .restart local v6    # "target":Ljava/io/File;
    .restart local v8    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v9    # "temp":Ljava/io/File;
    .restart local v17    # "stem":Ljava/lang/String;
    .restart local v20    # "done":Z
    .restart local v21    # "in":Ljava/util/zip/ZipInputStream;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "trace":[I
    .restart local p6    # "smoke536":[I
    :catchall_8
    move-exception v0

    :goto_c
    move-object v1, v0

    goto :goto_e

    .line 107
    .restart local v22    # "buf":[B
    :cond_17
    :try_start_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 538 missing/mismatched 536 evidence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "body":[B
    .end local v6    # "target":Ljava/io/File;
    .end local v7    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v9    # "temp":Ljava/io/File;
    .end local v12    # "count":I
    .end local v13    # "total":J
    .end local v15    # "found536":Z
    .end local v17    # "stem":Ljava/lang/String;
    .end local v20    # "done":Z
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "trace":[I
    .end local p6    # "smoke536":[I
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 69
    .end local v22    # "buf":[B
    .restart local v4    # "body":[B
    .restart local v5    # "stem":Ljava/lang/String;
    .restart local v6    # "target":Ljava/io/File;
    .local v7, "in":Ljava/util/zip/ZipInputStream;
    .restart local v8    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v9    # "temp":Ljava/io/File;
    .restart local v10    # "done":Z
    .restart local v11    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12    # "count":I
    .restart local v13    # "total":J
    .restart local v15    # "found536":Z
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "trace":[I
    .restart local p6    # "smoke536":[I
    :catchall_9
    move-exception v0

    :goto_d
    move-object/from16 v17, v5

    move-object/from16 v21, v7

    move/from16 v20, v10

    move-object v7, v11

    move-object/from16 v5, p2

    move/from16 v10, p3

    move-object v1, v0

    .end local v5    # "stem":Ljava/lang/String;
    .end local v10    # "done":Z
    .end local v11    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v7, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v17    # "stem":Ljava/lang/String;
    .restart local v20    # "done":Z
    .restart local v21    # "in":Ljava/util/zip/ZipInputStream;
    :goto_e
    :try_start_11
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    goto :goto_f

    :catchall_a
    move-exception v0

    :try_start_12
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "body":[B
    .end local v6    # "target":Ljava/io/File;
    .end local v7    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "temp":Ljava/io/File;
    .end local v12    # "count":I
    .end local v13    # "total":J
    .end local v15    # "found536":Z
    .end local v17    # "stem":Ljava/lang/String;
    .end local v20    # "done":Z
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "trace":[I
    .end local p6    # "smoke536":[I
    :goto_f
    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    .end local v8    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v4    # "body":[B
    .restart local v6    # "target":Ljava/io/File;
    .restart local v7    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v9    # "temp":Ljava/io/File;
    .restart local v12    # "count":I
    .restart local v13    # "total":J
    .restart local v15    # "found536":Z
    .restart local v17    # "stem":Ljava/lang/String;
    .restart local v20    # "done":Z
    .restart local v21    # "in":Ljava/util/zip/ZipInputStream;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "trace":[I
    .restart local p6    # "smoke536":[I
    :catchall_b
    move-exception v0

    move-object v1, v0

    goto :goto_10

    .end local v17    # "stem":Ljava/lang/String;
    .end local v20    # "done":Z
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "stem":Ljava/lang/String;
    .local v7, "in":Ljava/util/zip/ZipInputStream;
    .restart local v10    # "done":Z
    .restart local v11    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_c
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v21, v7

    move/from16 v20, v10

    move-object v7, v11

    move-object/from16 v5, p2

    move/from16 v10, p3

    move-object v1, v0

    .end local v5    # "stem":Ljava/lang/String;
    .end local v10    # "done":Z
    .end local v11    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v7, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v17    # "stem":Ljava/lang/String;
    .restart local v20    # "done":Z
    .restart local v21    # "in":Ljava/util/zip/ZipInputStream;
    :goto_10
    :try_start_13
    invoke-virtual/range {v21 .. v21}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    goto :goto_11

    :catchall_d
    move-exception v0

    :try_start_14
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "body":[B
    .end local v6    # "target":Ljava/io/File;
    .end local v9    # "temp":Ljava/io/File;
    .end local v17    # "stem":Ljava/lang/String;
    .end local v20    # "done":Z
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "trace":[I
    .end local p6    # "smoke536":[I
    :goto_11
    throw v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    .line 113
    .end local v7    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "count":I
    .end local v13    # "total":J
    .end local v15    # "found536":Z
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v4    # "body":[B
    .restart local v6    # "target":Ljava/io/File;
    .restart local v9    # "temp":Ljava/io/File;
    .restart local v17    # "stem":Ljava/lang/String;
    .restart local v20    # "done":Z
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "trace":[I
    .restart local p6    # "smoke536":[I
    :catchall_e
    move-exception v0

    goto :goto_12

    .end local v17    # "stem":Ljava/lang/String;
    .end local v20    # "done":Z
    .restart local v5    # "stem":Ljava/lang/String;
    .restart local v10    # "done":Z
    :catchall_f
    move-exception v0

    move-object/from16 v17, v5

    move/from16 v20, v10

    move-object/from16 v5, p2

    move/from16 v10, p3

    .end local v5    # "stem":Ljava/lang/String;
    .end local v10    # "done":Z
    .restart local v17    # "stem":Ljava/lang/String;
    .restart local v20    # "done":Z
    :goto_12
    if-nez v20, :cond_18

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_18
    throw v0

    .line 63
    .end local v9    # "temp":Ljava/io/File;
    .end local v17    # "stem":Ljava/lang/String;
    .end local v20    # "done":Z
    .restart local v5    # "stem":Ljava/lang/String;
    :cond_19
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 538 self-overwrite"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    .end local v5    # "stem":Ljava/lang/String;
    .end local v6    # "target":Ljava/io/File;
    :cond_1a
    move-object/from16 v5, p2

    move/from16 v10, p3

    goto :goto_13

    .line 58
    :cond_1b
    move-object/from16 v5, p2

    move/from16 v10, p3

    goto :goto_13

    .line 57
    :cond_1c
    move-object/from16 v5, p2

    move/from16 v10, p3

    .line 60
    :goto_13
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 538 invalid diagnostic ZIP"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static json(Ljava/lang/String;II[I[I)[B
    .locals 7
    .param p0, "sha"    # Ljava/lang/String;
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .param p3, "trace"    # [I
    .param p4, "smoke536"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    if-eqz p0, :cond_9

    const-string v0, "[0-9a-fA-F]{64}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-ltz p1, :cond_9

    const/4 v0, 0x5

    if-ge p1, v0, :cond_9

    const/4 v1, 0x1

    if-lt p2, v1, :cond_9

    const/16 v2, 0x9

    if-gt p2, v2, :cond_9

    .line 33
    if-eqz p3, :cond_0

    invoke-static {p3, p4}, Lcom/ahsim/demulation/RazorM68kTraceEvidence538;->verify([I[I)V

    .line 34
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\"schema\":\"demulation.razor.538.contiguous-private-trace.v1\",\"source_rom_sha256\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 35
    invoke-virtual {p0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\",\"house\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\"mission\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\"status\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 37
    if-eqz p3, :cond_1

    const-string v4, "EIGHT_ROM_OPCODES_PRIVATE_TRACE"

    goto :goto_0

    :cond_1
    const-string v4, "NO_SAME_EVENT_TRACE"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\",\"verified_instruction_steps\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 38
    const/4 v4, 0x0

    if-eqz p3, :cond_2

    aget v5, p3, v1

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",\"start_pc\":\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 39
    const-string v5, ""

    if-eqz p3, :cond_3

    const/16 v6, 0x8

    aget v6, p3, v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    move-object v6, v5

    :goto_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\",\"end_pc\":\""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 40
    if-eqz p3, :cond_4

    aget v2, p3, v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v5

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"stack_final\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 41
    if-eqz p3, :cond_5

    const/16 v3, 0xb

    aget v3, p3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_5
    move-object v3, v5

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"a2_final\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 42
    if-eqz p3, :cond_6

    const/16 v3, 0xd

    aget v3, p3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_6
    move-object v3, v5

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"private_ram_unchanged\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_7

    goto :goto_6

    :cond_7
    move v1, v4

    :goto_6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"historical_synthetic_seed\":true,\"genesis_live_cpu_authenticated\":false,\"f40_callback_executed\":false,\"gameplay_ticks\":0,\"gameplay_authorized\":false,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 48
    if-eqz p3, :cond_8

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"emc_event_id\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v0, p3, v0

    .line 49
    invoke-static {v0}, Lcom/ahsim/demulation/RazorF40PrecallEvidence533$$ExternalSyntheticBackport1;->m(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x4

    aget v2, p3, v2

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

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    .line 50
    :cond_8
    nop

    :goto_7
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"only_android_diagnostic\":true}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "body":Ljava/lang/String;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1

    .line 32
    .end local v0    # "body":Ljava/lang/String;
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 538 invalid ROM/mission"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verify([I[I)V
    .locals 5
    .param p0, "trace"    # [I
    .param p1, "smoke536"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    if-eqz p0, :cond_2

    array-length v0, p0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_2

    array-length v0, p1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget v1, p1, v0

    const/16 v2, 0x218

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    aget v2, p1, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    aget v0, p0, v0

    const/16 v2, 0x21a

    if-ne v0, v2, :cond_2

    aget v0, p0, v1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    aget v0, p0, v3

    const/high16 v3, 0x300000

    if-ne v0, v3, :cond_2

    aget v0, p0, v2

    const v2, 0xd286

    if-ne v0, v2, :cond_2

    const/16 v0, 0x9

    aget v0, p0, v0

    const v2, 0x1a3ca

    if-ne v0, v2, :cond_2

    const/16 v0, 0xa

    aget v0, p0, v0

    const/16 v2, -0x60

    if-ne v0, v2, :cond_2

    const/16 v0, 0xb

    aget v0, p0, v0

    const/16 v2, -0x44

    if-ne v0, v2, :cond_2

    const/16 v0, 0xc

    aget v2, p0, v0

    const v3, 0xff179a

    if-ne v2, v3, :cond_2

    const/16 v2, 0xd

    aget v2, p0, v2

    const v3, 0xff1784

    if-ne v2, v3, :cond_2

    const/16 v2, 0xe

    aget v2, p0, v2

    const v3, -0xfffe

    if-ne v2, v3, :cond_2

    const/16 v2, 0xf

    aget v2, p0, v2

    const/16 v3, 0x2004

    if-ne v2, v3, :cond_2

    const/16 v2, 0x10

    aget v3, p0, v2

    aget v0, p1, v0

    if-ne v3, v0, :cond_2

    aget v0, p0, v2

    if-eqz v0, :cond_2

    const/16 v0, 0x11

    aget v2, p0, v0

    if-eqz v2, :cond_2

    aget v2, p0, v0

    const/16 v3, 0x12

    aget v4, p0, v3

    if-ne v2, v4, :cond_2

    const/16 v2, 0x13

    aget v4, p0, v2

    if-ne v4, v1, :cond_2

    aget v0, p1, v0

    if-nez v0, :cond_2

    aget v0, p1, v3

    if-nez v0, :cond_2

    aget v0, p1, v2

    if-nez v0, :cond_2

    .line 25
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-gt v0, v1, :cond_1

    aget v1, p0, v0

    aget v2, p1, v0

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor 538 other EMC event/ROM session"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 27
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 24
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 538 incorrect/private trace or unsafe CPU claim"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
