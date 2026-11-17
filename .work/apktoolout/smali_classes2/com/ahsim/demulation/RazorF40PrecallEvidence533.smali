.class public final Lcom/ahsim/demulation/RazorF40PrecallEvidence533;
.super Ljava/lang/Object;
.source "RazorF40PrecallEvidence533.java"


# static fields
.field private static final BLOCKED:I = 0xf

.field public static final ENTRY:Ljava/lang/String; = "razor_f40_precall_status533.json"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append(Ljava/io/File;Ljava/io/File;Ljava/lang/String;II[I)Ljava/io/File;
    .locals 24
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "previous"    # Ljava/io/File;
    .param p2, "sha"    # Ljava/lang/String;
    .param p3, "house"    # I
    .param p4, "mission"    # I
    .param p5, "snapshot"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, ","

    invoke-static/range {p2 .. p5}, Lcom/ahsim/demulation/RazorF40PrecallEvidence533;->json(Ljava/lang/String;II[I)[B

    move-result-object v3

    .line 100
    .local v3, "payload":[B
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1a

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 101
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 102
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 104
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "base":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_533.zip"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    .local v5, "target":Ljava/io/File;
    invoke-virtual {v5, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 107
    const-string v6, "razor533_"

    const-string v7, ".part"

    invoke-static {v6, v7, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    .line 108
    .local v6, "temp":Ljava/io/File;
    const/4 v7, 0x0

    .line 110
    .local v7, "committed":Z
    :try_start_0
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 111
    .local v9, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, "entries":I
    const-wide/16 v11, 0x0

    .local v11, "total":J
    const/4 v13, 0x0

    .line 112
    .local v13, "has532":Z
    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_10

    move-object/from16 v15, p2

    :try_start_1
    invoke-virtual {v15, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    .line 113
    .local v14, "shaLow":Ljava/lang/String;
    new-instance v8, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_f

    .line 114
    .local v8, "in":Ljava/util/zip/ZipInputStream;
    :try_start_2
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    .line 115
    .local v1, "out":Ljava/util/zip/ZipOutputStream;
    const/16 v2, 0x2000

    :try_start_3
    new-array v2, v2, [B

    .line 116
    .local v2, "buf":[B
    :goto_0
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    move-object/from16 v17, v16

    move-object/from16 v18, v4

    .end local v4    # "base":Ljava/lang/String;
    .local v17, "e":Ljava/util/zip/ZipEntry;
    .local v18, "base":Ljava/lang/String;
    const-string v4, "razor_f40_precall_status533.json"

    if-eqz v16, :cond_10

    .line 117
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    move-object/from16 v19, v16

    .line 118
    .local v19, "name":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    move/from16 v16, v7

    .end local v7    # "committed":Z
    .local v16, "committed":Z
    const/16 v7, 0x80

    if-gt v10, v7, :cond_f

    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_f

    const-string v7, "/"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move/from16 v20, v10

    move-object/from16 v10, v19

    .end local v19    # "name":Ljava/lang/String;
    .local v10, "name":Ljava/lang/String;
    .local v20, "entries":I
    :try_start_6
    invoke-virtual {v10, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, ".."

    .line 119
    invoke-virtual {v10, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "\\"

    invoke-virtual {v10, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_d

    .line 120
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 122
    new-instance v4, Ljava/util/zip/ZipEntry;

    invoke-direct {v4, v10}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 124
    const-string v4, "razor_android_runtime_status532.json"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v4, :cond_0

    .line 125
    :try_start_7
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 113
    .end local v2    # "buf":[B
    .end local v10    # "name":Ljava/lang/String;
    .end local v17    # "e":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v21, v8

    move-object/from16 v19, v9

    move/from16 v10, v20

    move/from16 v8, p3

    goto/16 :goto_a

    .line 125
    .restart local v2    # "buf":[B
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v17    # "e":Ljava/util/zip/ZipEntry;
    :cond_0
    const/4 v4, 0x0

    .line 127
    .local v4, "tag":Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_8
    invoke-virtual {v8, v2}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move/from16 v19, v7

    move-object/from16 v21, v8

    .end local v8    # "in":Ljava/util/zip/ZipInputStream;
    .local v19, "read":I
    .local v21, "in":Ljava/util/zip/ZipInputStream;
    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    .line 128
    if-nez v19, :cond_1

    move-object/from16 v8, v21

    goto :goto_1

    .line 129
    :cond_1
    move/from16 v7, v19

    move-object/from16 v19, v9

    .end local v9    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v7, "read":I
    .local v19, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    int-to-long v8, v7

    add-long/2addr v11, v8

    .line 130
    const-wide/32 v8, 0xa00000

    cmp-long v8, v11, v8

    if-gtz v8, :cond_4

    .line 132
    if-eqz v4, :cond_3

    .line 133
    :try_start_9
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    add-int/2addr v8, v7

    const/16 v9, 0x4000

    if-gt v8, v9, :cond_2

    .line 135
    const/4 v8, 0x0

    invoke-virtual {v4, v2, v8, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 134
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v8, "Razor 533 status532 too large"

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v3    # "payload":[B
    .end local v5    # "target":Ljava/io/File;
    .end local v6    # "temp":Ljava/io/File;
    .end local v11    # "total":J
    .end local v13    # "has532":Z
    .end local v14    # "shaLow":Ljava/lang/String;
    .end local v16    # "committed":Z
    .end local v18    # "base":Ljava/lang/String;
    .end local v19    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "entries":I
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "snapshot":[I
    throw v0

    .line 137
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "payload":[B
    .restart local v5    # "target":Ljava/io/File;
    .restart local v6    # "temp":Ljava/io/File;
    .restart local v11    # "total":J
    .restart local v13    # "has532":Z
    .restart local v14    # "shaLow":Ljava/lang/String;
    .restart local v16    # "committed":Z
    .restart local v18    # "base":Ljava/lang/String;
    .restart local v19    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "entries":I
    .restart local v21    # "in":Ljava/util/zip/ZipInputStream;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "snapshot":[I
    :cond_3
    :goto_2
    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v7}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    move-object/from16 v9, v19

    move-object/from16 v8, v21

    goto :goto_1

    .line 131
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v8, "Razor 533 ZIP too large"

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v3    # "payload":[B
    .end local v5    # "target":Ljava/io/File;
    .end local v6    # "temp":Ljava/io/File;
    .end local v11    # "total":J
    .end local v13    # "has532":Z
    .end local v14    # "shaLow":Ljava/lang/String;
    .end local v16    # "committed":Z
    .end local v18    # "base":Ljava/lang/String;
    .end local v19    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "entries":I
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "snapshot":[I
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 113
    .end local v2    # "buf":[B
    .end local v4    # "tag":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "read":I
    .end local v10    # "name":Ljava/lang/String;
    .end local v17    # "e":Ljava/util/zip/ZipEntry;
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "payload":[B
    .restart local v5    # "target":Ljava/io/File;
    .restart local v6    # "temp":Ljava/io/File;
    .restart local v11    # "total":J
    .restart local v13    # "has532":Z
    .restart local v14    # "shaLow":Ljava/lang/String;
    .restart local v16    # "committed":Z
    .restart local v18    # "base":Ljava/lang/String;
    .restart local v19    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "entries":I
    .restart local v21    # "in":Ljava/util/zip/ZipInputStream;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "snapshot":[I
    :catchall_1
    move-exception v0

    move/from16 v8, p3

    goto/16 :goto_8

    .line 139
    .restart local v2    # "buf":[B
    .restart local v4    # "tag":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v17    # "e":Ljava/util/zip/ZipEntry;
    .local v19, "read":I
    :cond_5
    move/from16 v7, v19

    const/4 v8, 0x0

    move-object/from16 v19, v9

    .end local v9    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "read":I
    .local v19, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v4, :cond_b

    .line 140
    :try_start_a
    const-string v9, "UTF-8"

    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 141
    .local v9, "text":Ljava/lang/String;
    const-string v8, "\"schema\":\"demulation.razor.532.android-runtime-evidence.v1\""

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v2

    .end local v2    # "buf":[B
    .local v22, "buf":[B
    const-string v2, "\"source_rom_sha256\":\""

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\"house\":"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move/from16 v8, p3

    :try_start_b
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v4

    .end local v4    # "tag":Ljava/io/ByteArrayOutputStream;
    .local v23, "tag":Ljava/io/ByteArrayOutputStream;
    const-string v4, "\"mission\":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move/from16 v4, p4

    :try_start_c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "\"capture_kind\":\"FULL_PROBE\""

    .line 145
    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "\"genesis_cpu_authenticated\":false"

    .line 146
    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "\"gameplay_ticks\":0"

    .line 147
    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz p5, :cond_6

    const-string v2, "\"status531_verified_owner_claim\":true"

    .line 149
    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_6
    const/4 v2, 0x1

    goto :goto_4

    .line 143
    .end local v23    # "tag":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "tag":Ljava/io/ByteArrayOutputStream;
    :cond_7
    move-object/from16 v23, v4

    move/from16 v4, p4

    .end local v4    # "tag":Ljava/io/ByteArrayOutputStream;
    .restart local v23    # "tag":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 113
    .end local v7    # "read":I
    .end local v9    # "text":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v17    # "e":Ljava/util/zip/ZipEntry;
    .end local v22    # "buf":[B
    .end local v23    # "tag":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v0

    goto :goto_5

    .line 142
    .restart local v4    # "tag":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "read":I
    .restart local v9    # "text":Ljava/lang/String;
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v17    # "e":Ljava/util/zip/ZipEntry;
    .restart local v22    # "buf":[B
    :cond_8
    move/from16 v8, p3

    move-object/from16 v23, v4

    move/from16 v4, p4

    .end local v4    # "tag":Ljava/io/ByteArrayOutputStream;
    .restart local v23    # "tag":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 141
    .end local v22    # "buf":[B
    .end local v23    # "tag":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buf":[B
    .restart local v4    # "tag":Ljava/io/ByteArrayOutputStream;
    :cond_9
    move/from16 v8, p3

    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move/from16 v4, p4

    .line 149
    .end local v2    # "buf":[B
    .end local v4    # "tag":Ljava/io/ByteArrayOutputStream;
    .restart local v22    # "buf":[B
    .restart local v23    # "tag":Ljava/io/ByteArrayOutputStream;
    :cond_a
    :goto_3
    const/4 v2, 0x0

    :goto_4
    move v13, v2

    goto :goto_6

    .line 113
    .end local v7    # "read":I
    .end local v9    # "text":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v17    # "e":Ljava/util/zip/ZipEntry;
    .end local v22    # "buf":[B
    .end local v23    # "tag":Ljava/io/ByteArrayOutputStream;
    :catchall_3
    move-exception v0

    move/from16 v8, p3

    :goto_5
    move/from16 v4, p4

    goto/16 :goto_8

    .line 139
    .restart local v2    # "buf":[B
    .restart local v4    # "tag":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "read":I
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v17    # "e":Ljava/util/zip/ZipEntry;
    :cond_b
    move/from16 v8, p3

    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move/from16 v4, p4

    .line 151
    .end local v2    # "buf":[B
    .end local v4    # "tag":Ljava/io/ByteArrayOutputStream;
    .restart local v22    # "buf":[B
    .restart local v23    # "tag":Ljava/io/ByteArrayOutputStream;
    :goto_6
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    invoke-virtual/range {v21 .. v21}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 152
    .end local v7    # "read":I
    .end local v10    # "name":Ljava/lang/String;
    .end local v23    # "tag":Ljava/io/ByteArrayOutputStream;
    move/from16 v7, v16

    move-object/from16 v4, v18

    move-object/from16 v9, v19

    move/from16 v10, v20

    move-object/from16 v8, v21

    move-object/from16 v2, v22

    goto/16 :goto_0

    .line 120
    .end local v19    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    .end local v22    # "buf":[B
    .restart local v2    # "buf":[B
    .restart local v8    # "in":Ljava/util/zip/ZipInputStream;
    .local v9, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v10    # "name":Ljava/lang/String;
    :cond_c
    move/from16 v4, p4

    move-object/from16 v22, v2

    move-object/from16 v21, v8

    move-object/from16 v19, v9

    move/from16 v8, p3

    .end local v2    # "buf":[B
    .end local v8    # "in":Ljava/util/zip/ZipInputStream;
    .end local v9    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v21    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v22    # "buf":[B
    goto :goto_7

    .line 119
    .end local v19    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    .end local v22    # "buf":[B
    .restart local v2    # "buf":[B
    .restart local v8    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d
    move/from16 v4, p4

    move-object/from16 v22, v2

    move-object/from16 v21, v8

    move-object/from16 v19, v9

    move/from16 v8, p3

    .end local v2    # "buf":[B
    .end local v8    # "in":Ljava/util/zip/ZipInputStream;
    .end local v9    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v21    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v22    # "buf":[B
    goto :goto_7

    .line 118
    .end local v19    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    .end local v22    # "buf":[B
    .restart local v2    # "buf":[B
    .restart local v8    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_e
    move/from16 v4, p4

    move-object/from16 v22, v2

    move-object/from16 v21, v8

    move-object/from16 v19, v9

    move/from16 v8, p3

    .end local v2    # "buf":[B
    .end local v8    # "in":Ljava/util/zip/ZipInputStream;
    .end local v9    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v21    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v22    # "buf":[B
    goto :goto_7

    .line 113
    .end local v10    # "name":Ljava/lang/String;
    .end local v17    # "e":Ljava/util/zip/ZipEntry;
    .end local v19    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    .end local v22    # "buf":[B
    .restart local v8    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_4
    move-exception v0

    move/from16 v4, p4

    move-object/from16 v21, v8

    move-object/from16 v19, v9

    move/from16 v8, p3

    move-object v2, v0

    move/from16 v10, v20

    .end local v8    # "in":Ljava/util/zip/ZipInputStream;
    .end local v9    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v21    # "in":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_a

    .end local v19    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "entries":I
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v8    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v10, "entries":I
    :catchall_5
    move-exception v0

    move/from16 v4, p4

    move-object/from16 v21, v8

    move-object/from16 v19, v9

    move/from16 v20, v10

    move/from16 v8, p3

    move-object v2, v0

    .end local v8    # "in":Ljava/util/zip/ZipInputStream;
    .end local v9    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "entries":I
    .restart local v19    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "entries":I
    .restart local v21    # "in":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_a

    .line 118
    .end local v20    # "entries":I
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v2    # "buf":[B
    .restart local v8    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v10    # "entries":I
    .restart local v17    # "e":Ljava/util/zip/ZipEntry;
    .local v19, "name":Ljava/lang/String;
    :cond_f
    move/from16 v4, p4

    move-object/from16 v22, v2

    move-object/from16 v21, v8

    move/from16 v20, v10

    move-object/from16 v10, v19

    move/from16 v8, p3

    move-object/from16 v19, v9

    .line 121
    .end local v2    # "buf":[B
    .end local v8    # "in":Ljava/util/zip/ZipInputStream;
    .end local v9    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v10, "name":Ljava/lang/String;
    .local v19, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "entries":I
    .restart local v21    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v22    # "buf":[B
    :goto_7
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Razor 533 unsafe ZIP"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v3    # "payload":[B
    .end local v5    # "target":Ljava/io/File;
    .end local v6    # "temp":Ljava/io/File;
    .end local v11    # "total":J
    .end local v13    # "has532":Z
    .end local v14    # "shaLow":Ljava/lang/String;
    .end local v16    # "committed":Z
    .end local v18    # "base":Ljava/lang/String;
    .end local v19    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "entries":I
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "snapshot":[I
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 113
    .end local v10    # "name":Ljava/lang/String;
    .end local v17    # "e":Ljava/util/zip/ZipEntry;
    .end local v22    # "buf":[B
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "payload":[B
    .restart local v5    # "target":Ljava/io/File;
    .restart local v6    # "temp":Ljava/io/File;
    .restart local v11    # "total":J
    .restart local v13    # "has532":Z
    .restart local v14    # "shaLow":Ljava/lang/String;
    .restart local v16    # "committed":Z
    .restart local v18    # "base":Ljava/lang/String;
    .restart local v19    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "entries":I
    .restart local v21    # "in":Ljava/util/zip/ZipInputStream;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "snapshot":[I
    :catchall_6
    move-exception v0

    :goto_8
    move-object v2, v0

    move/from16 v10, v20

    goto/16 :goto_a

    .end local v16    # "committed":Z
    .end local v19    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "entries":I
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    .local v7, "committed":Z
    .restart local v8    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v10, "entries":I
    :catchall_7
    move-exception v0

    move/from16 v4, p4

    move/from16 v16, v7

    move-object/from16 v21, v8

    move-object/from16 v19, v9

    move/from16 v8, p3

    move-object v2, v0

    .end local v7    # "committed":Z
    .end local v8    # "in":Ljava/util/zip/ZipInputStream;
    .end local v9    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "committed":Z
    .restart local v19    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v21    # "in":Ljava/util/zip/ZipInputStream;
    goto :goto_a

    .line 116
    .end local v16    # "committed":Z
    .end local v19    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v2    # "buf":[B
    .restart local v7    # "committed":Z
    .restart local v8    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v17    # "e":Ljava/util/zip/ZipEntry;
    :cond_10
    move-object/from16 v22, v2

    move/from16 v16, v7

    move-object/from16 v21, v8

    move-object/from16 v19, v9

    move/from16 v8, p3

    .line 153
    .end local v2    # "buf":[B
    .end local v7    # "committed":Z
    .end local v8    # "in":Ljava/util/zip/ZipInputStream;
    .end local v9    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "e":Ljava/util/zip/ZipEntry;
    .restart local v16    # "committed":Z
    .restart local v19    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v21    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v22    # "buf":[B
    if-eqz v13, :cond_15

    .line 154
    :try_start_d
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 155
    invoke-virtual {v1, v3}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 156
    .end local v22    # "buf":[B
    :try_start_e
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    :try_start_f
    invoke-virtual/range {v21 .. v21}, Ljava/util/zip/ZipInputStream;->close()V

    .line 157
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_9

    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot update Razor 533"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "payload":[B
    .end local v5    # "target":Ljava/io/File;
    .end local v6    # "temp":Ljava/io/File;
    .end local v16    # "committed":Z
    .end local v18    # "base":Ljava/lang/String;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "snapshot":[I
    throw v0

    .line 158
    .restart local v3    # "payload":[B
    .restart local v5    # "target":Ljava/io/File;
    .restart local v6    # "temp":Ljava/io/File;
    .restart local v16    # "committed":Z
    .restart local v18    # "base":Ljava/lang/String;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "snapshot":[I
    :cond_12
    :goto_9
    invoke-virtual {v6, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    if-eqz v0, :cond_14

    .line 159
    const/4 v0, 0x1

    .line 160
    .end local v16    # "committed":Z
    .local v0, "committed":Z
    if-nez v0, :cond_13

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 159
    :cond_13
    return-object v5

    .line 158
    .end local v0    # "committed":Z
    .restart local v16    # "committed":Z
    :cond_14
    :try_start_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot commit Razor 533"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "payload":[B
    .end local v5    # "target":Ljava/io/File;
    .end local v6    # "temp":Ljava/io/File;
    .end local v16    # "committed":Z
    .end local v18    # "base":Ljava/lang/String;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "snapshot":[I
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_e

    .line 113
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "payload":[B
    .restart local v5    # "target":Ljava/io/File;
    .restart local v6    # "temp":Ljava/io/File;
    .restart local v16    # "committed":Z
    .restart local v18    # "base":Ljava/lang/String;
    .restart local v21    # "in":Ljava/util/zip/ZipInputStream;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "snapshot":[I
    :catchall_8
    move-exception v0

    move-object v2, v0

    goto :goto_a

    .line 153
    .restart local v22    # "buf":[B
    :cond_15
    :try_start_11
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Razor 533 must follow matching 532 full probe"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v3    # "payload":[B
    .end local v5    # "target":Ljava/io/File;
    .end local v6    # "temp":Ljava/io/File;
    .end local v10    # "entries":I
    .end local v11    # "total":J
    .end local v13    # "has532":Z
    .end local v14    # "shaLow":Ljava/lang/String;
    .end local v16    # "committed":Z
    .end local v18    # "base":Ljava/lang/String;
    .end local v19    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "snapshot":[I
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 113
    .end local v22    # "buf":[B
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "payload":[B
    .local v4, "base":Ljava/lang/String;
    .restart local v5    # "target":Ljava/io/File;
    .restart local v6    # "temp":Ljava/io/File;
    .restart local v7    # "committed":Z
    .restart local v8    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v10    # "entries":I
    .restart local v11    # "total":J
    .restart local v13    # "has532":Z
    .restart local v14    # "shaLow":Ljava/lang/String;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "snapshot":[I
    :catchall_9
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v16, v7

    move-object/from16 v21, v8

    move-object/from16 v19, v9

    move/from16 v8, p3

    move-object v2, v0

    .end local v4    # "base":Ljava/lang/String;
    .end local v7    # "committed":Z
    .end local v8    # "in":Ljava/util/zip/ZipInputStream;
    .end local v9    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "committed":Z
    .restart local v18    # "base":Ljava/lang/String;
    .restart local v19    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v21    # "in":Ljava/util/zip/ZipInputStream;
    :goto_a
    :try_start_12
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    goto :goto_b

    :catchall_a
    move-exception v0

    :try_start_13
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "payload":[B
    .end local v5    # "target":Ljava/io/File;
    .end local v6    # "temp":Ljava/io/File;
    .end local v10    # "entries":I
    .end local v11    # "total":J
    .end local v13    # "has532":Z
    .end local v14    # "shaLow":Ljava/lang/String;
    .end local v16    # "committed":Z
    .end local v18    # "base":Ljava/lang/String;
    .end local v19    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "snapshot":[I
    :goto_b
    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "payload":[B
    .restart local v5    # "target":Ljava/io/File;
    .restart local v6    # "temp":Ljava/io/File;
    .restart local v10    # "entries":I
    .restart local v11    # "total":J
    .restart local v13    # "has532":Z
    .restart local v14    # "shaLow":Ljava/lang/String;
    .restart local v16    # "committed":Z
    .restart local v18    # "base":Ljava/lang/String;
    .restart local v19    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v21    # "in":Ljava/util/zip/ZipInputStream;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "snapshot":[I
    :catchall_b
    move-exception v0

    move-object v1, v0

    goto :goto_c

    .end local v16    # "committed":Z
    .end local v18    # "base":Ljava/lang/String;
    .end local v19    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v4    # "base":Ljava/lang/String;
    .restart local v7    # "committed":Z
    .restart local v8    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_c
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v16, v7

    move-object/from16 v21, v8

    move-object/from16 v19, v9

    move/from16 v8, p3

    move-object v1, v0

    .end local v4    # "base":Ljava/lang/String;
    .end local v7    # "committed":Z
    .end local v8    # "in":Ljava/util/zip/ZipInputStream;
    .end local v9    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "committed":Z
    .restart local v18    # "base":Ljava/lang/String;
    .restart local v19    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v21    # "in":Ljava/util/zip/ZipInputStream;
    :goto_c
    :try_start_14
    invoke-virtual/range {v21 .. v21}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    goto :goto_d

    :catchall_d
    move-exception v0

    :try_start_15
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "payload":[B
    .end local v5    # "target":Ljava/io/File;
    .end local v6    # "temp":Ljava/io/File;
    .end local v16    # "committed":Z
    .end local v18    # "base":Ljava/lang/String;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "snapshot":[I
    :goto_d
    throw v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    .line 160
    .end local v10    # "entries":I
    .end local v11    # "total":J
    .end local v13    # "has532":Z
    .end local v14    # "shaLow":Ljava/lang/String;
    .end local v19    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v21    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v3    # "payload":[B
    .restart local v5    # "target":Ljava/io/File;
    .restart local v6    # "temp":Ljava/io/File;
    .restart local v16    # "committed":Z
    .restart local v18    # "base":Ljava/lang/String;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "snapshot":[I
    :catchall_e
    move-exception v0

    goto :goto_f

    .end local v16    # "committed":Z
    .end local v18    # "base":Ljava/lang/String;
    .restart local v4    # "base":Ljava/lang/String;
    .restart local v7    # "committed":Z
    :catchall_f
    move-exception v0

    goto :goto_e

    :catchall_10
    move-exception v0

    move-object/from16 v15, p2

    :goto_e
    move/from16 v8, p3

    move-object/from16 v18, v4

    move/from16 v16, v7

    .end local v4    # "base":Ljava/lang/String;
    .end local v7    # "committed":Z
    .restart local v16    # "committed":Z
    .restart local v18    # "base":Ljava/lang/String;
    :goto_f
    if-nez v16, :cond_16

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_16
    throw v0

    .line 106
    .end local v6    # "temp":Ljava/io/File;
    .end local v16    # "committed":Z
    .end local v18    # "base":Ljava/lang/String;
    .restart local v4    # "base":Ljava/lang/String;
    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 533 overwrite source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    .end local v4    # "base":Ljava/lang/String;
    .end local v5    # "target":Ljava/io/File;
    :cond_18
    move-object/from16 v15, p2

    move/from16 v8, p3

    goto :goto_10

    .line 101
    :cond_19
    move-object/from16 v15, p2

    move/from16 v8, p3

    goto :goto_10

    .line 100
    :cond_1a
    move-object/from16 v15, p2

    move/from16 v8, p3

    .line 103
    :goto_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 533 source ZIP invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static appendArray(Ljava/lang/StringBuilder;Ljava/lang/String;[III)V
    .locals 2
    .param p0, "b"    # Ljava/lang/StringBuilder;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "s"    # [I
    .param p3, "start"    # I
    .param p4, "n"    # I

    .line 91
    const-string v0, ",\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\":["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_1

    if-lez v0, :cond_0

    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int v1, p3, v0

    aget v1, p2, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "i":I
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    return-void
.end method

.method public static json(Ljava/lang/String;II[I)[B
    .locals 8
    .param p0, "sha"    # Ljava/lang/String;
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .param p3, "s"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    if-eqz p0, :cond_4

    const-string v0, "[0-9a-fA-F]{64}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-ltz p1, :cond_4

    const/4 v0, 0x5

    if-ge p1, v0, :cond_4

    const/4 v1, 0x1

    if-lt p2, v1, :cond_4

    const/16 v2, 0x9

    if-gt p2, v2, :cond_4

    .line 52
    const/16 v3, 0xf

    const/4 v4, 0x2

    const/16 v5, 0x28

    if-eqz p3, :cond_1

    array-length v6, p3

    const/16 v7, 0x30

    if-ne v6, v7, :cond_0

    const/4 v6, 0x0

    aget v6, p3, v6

    const/16 v7, 0x215

    if-ne v6, v7, :cond_0

    aget v6, p3, v1

    if-ne v6, v1, :cond_0

    const/4 v6, 0x7

    aget v6, p3, v6

    if-ne v6, v5, :cond_0

    aget v6, p3, v5

    if-ne v6, v3, :cond_0

    const/16 v6, 0x29

    aget v6, p3, v6

    if-ne v6, v1, :cond_0

    const/16 v6, 0x2a

    aget v6, p3, v6

    if-ne v6, v1, :cond_0

    const/16 v6, 0x2b

    aget v6, p3, v6

    if-ne v6, v1, :cond_0

    const/16 v1, 0x2c

    aget v1, p3, v1

    if-nez v1, :cond_0

    const/16 v1, 0x2d

    aget v1, p3, v1

    if-nez v1, :cond_0

    const/16 v1, 0x2e

    aget v1, p3, v1

    if-nez v1, :cond_0

    const/16 v1, 0x2f

    aget v1, p3, v1

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 533 snapshot invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v6, 0x44c

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 57
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string v6, "{\"schema\":\"demulation.razor.533.f40-precall.v1\",\"source_rom_sha256\":\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 58
    invoke-virtual {p0, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\",\"house\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 59
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",\"mission\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 60
    const-string v7, ",\"status\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p3, :cond_2

    const-string v7, "NOT_CAPTURED"

    goto :goto_1

    :cond_2
    const-string v7, "EMC_PRECALL_CAPTURED"

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 61
    const-string v7, "\",\"proof_tier\":\"ANDROID_ATTACHED_EMC_ONLY\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 62
    const-string v7, ",\"genesis_cpu_authenticated\":false,\"genesis_unit_slot_known\":false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 63
    const-string v7, ",\"callback_executed\":false,\"gameplay_ticks\":0,\"gameplay_authorized\":false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    if-eqz p3, :cond_3

    .line 65
    const-string v6, ",\"callback_id\":40,\"owner_verified\":true"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 66
    const-string v7, ",\"session_event_id\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xe

    aget v7, p3, v7

    .line 67
    invoke-static {v7}, Lcom/ahsim/demulation/RazorF40PrecallEvidence533$$ExternalSyntheticBackport1;->m(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xd

    aget v7, p3, v7

    .line 68
    invoke-static {v7}, Lcom/ahsim/demulation/RazorF40PrecallEvidence533$$ExternalSyntheticBackport1;->m(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 69
    const-string v7, ",\"emc_ordinal\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v4, p3, v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 70
    const-string v6, ",\"owner\":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x3

    aget v6, p3, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 71
    const-string v6, ",\"type\":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x4

    aget v6, p3, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 72
    const-string v6, ",\"script_entry\":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v6, p3, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 73
    const-string v6, ",\"emc_pc\":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x6

    aget v6, p3, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 74
    const-string v6, ",\"steps\":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x8

    aget v6, p3, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 75
    const-string v6, ",\"stack_pointer\":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v2, p3, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 76
    const-string v4, ",\"frame_pointer\":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0xa

    aget v4, p3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 77
    const-string v4, ",\"opcode_raw\":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x11

    aget v4, p3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 78
    const-string v4, ",\"emc_return_word\":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x12

    aget v4, p3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 79
    const-string v4, ",\"emc_delay\":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x13

    aget v4, p3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 80
    const-string v4, ",\"bank_fingerprint_u32\":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0xb

    aget v4, p3, v4

    .line 81
    invoke-static {v4}, Lcom/ahsim/demulation/RazorF40PrecallEvidence533$$ExternalSyntheticBackport1;->m(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 82
    const-string v4, ",\"world_fingerprint_u32\":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0xc

    aget v4, p3, v4

    .line 83
    invoke-static {v4}, Lcom/ahsim/demulation/RazorF40PrecallEvidence533$$ExternalSyntheticBackport1;->m(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 84
    const-string v4, ",\"blocked_bits\":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, p3, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    const-string v2, "variables"

    const/16 v4, 0x14

    invoke-static {v1, v2, p3, v4, v0}, Lcom/ahsim/demulation/RazorF40PrecallEvidence533;->appendArray(Ljava/lang/StringBuilder;Ljava/lang/String;[III)V

    .line 86
    const-string v0, "full_emc_stack"

    const/16 v2, 0x19

    invoke-static {v1, v0, p3, v2, v3}, Lcom/ahsim/demulation/RazorF40PrecallEvidence533;->appendArray(Ljava/lang/StringBuilder;Ljava/lang/String;[III)V

    .line 88
    :cond_3
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0

    .line 51
    .end local v1    # "b":Ljava/lang/StringBuilder;
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 533 source identity invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verify([I[I)V
    .locals 13
    .param p0, "s"    # [I
    .param p1, "e"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    if-eqz p0, :cond_8

    array-length v0, p0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_8

    if-eqz p1, :cond_8

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    aget v1, p0, v0

    const/16 v2, 0x215

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    aget v2, p0, v1

    if-ne v2, v1, :cond_8

    aget v0, p1, v0

    const/16 v2, 0x212

    if-ne v0, v2, :cond_8

    aget v0, p1, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x7

    aget v2, p0, v0

    const/16 v3, 0x28

    if-ne v2, v3, :cond_8

    aget v0, p1, v0

    if-ne v0, v3, :cond_8

    const/4 v0, 0x2

    aget v2, p0, v0

    aget v4, p1, v0

    if-ne v2, v4, :cond_8

    const/4 v2, 0x3

    aget v4, p0, v2

    const/4 v5, 0x4

    aget v6, p1, v5

    if-ne v4, v6, :cond_8

    aget v4, p0, v5

    aget v2, p1, v2

    if-ne v4, v2, :cond_8

    const/4 v2, 0x5

    aget v4, p0, v2

    aget v6, p1, v2

    if-ne v4, v6, :cond_8

    const/4 v4, 0x6

    aget v6, p0, v4

    aget v4, p1, v4

    if-ne v6, v4, :cond_8

    const/16 v4, 0x8

    aget v6, p0, v4

    aget v4, p1, v4

    if-ne v6, v4, :cond_8

    const/16 v4, 0x9

    aget v6, p0, v4

    aget v7, p1, v4

    if-ne v6, v7, :cond_8

    const/16 v6, 0xa

    aget v7, p0, v6

    aget v8, p1, v6

    if-ne v7, v8, :cond_8

    const/16 v7, 0xb

    aget v8, p0, v7

    aget v7, p1, v7

    if-ne v8, v7, :cond_8

    const/16 v7, 0xc

    aget v8, p0, v7

    aget v7, p1, v7

    if-ne v8, v7, :cond_8

    const/16 v7, 0xd

    aget v8, p0, v7

    aget v9, p1, v7

    if-ne v8, v9, :cond_8

    const/16 v8, 0xe

    aget v9, p0, v8

    aget v10, p1, v8

    if-ne v9, v10, :cond_8

    const/16 v9, 0xf

    aget v10, p0, v9

    aget v11, p1, v9

    if-ne v10, v11, :cond_8

    const/16 v10, 0x10

    aget v11, p0, v10

    aget v12, p1, v10

    if-ne v11, v12, :cond_8

    aget v3, p0, v3

    if-ne v3, v9, :cond_8

    const/16 v3, 0x29

    aget v3, p0, v3

    if-ne v3, v1, :cond_8

    const/16 v3, 0x2a

    aget v3, p0, v3

    if-ne v3, v1, :cond_8

    const/16 v3, 0x2b

    aget v3, p0, v3

    if-ne v3, v1, :cond_8

    const/16 v1, 0x2c

    aget v1, p0, v1

    if-nez v1, :cond_8

    const/16 v1, 0x2d

    aget v1, p0, v1

    if-nez v1, :cond_8

    const/16 v1, 0x2e

    aget v1, p0, v1

    if-nez v1, :cond_8

    const/16 v1, 0x2f

    aget v1, p0, v1

    if-ne v1, v0, :cond_8

    aget v0, p0, v4

    if-ltz v0, :cond_8

    aget v0, p0, v4

    if-gt v0, v9, :cond_8

    aget v0, p0, v6

    if-ltz v0, :cond_8

    aget v0, p0, v6

    const/16 v1, 0x11

    if-gt v0, v1, :cond_8

    aget v0, p0, v7

    if-nez v0, :cond_0

    aget v0, p0, v8

    if-eqz v0, :cond_8

    :cond_0
    aget v0, p0, v9

    if-nez v0, :cond_1

    aget v0, p0, v10

    if-eqz v0, :cond_8

    .line 36
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const v3, 0xffff

    if-ge v0, v2, :cond_3

    add-int/lit8 v4, v0, 0x14

    aget v4, p0, v4

    add-int/lit8 v6, v0, 0x11

    aget v6, p1, v6

    if-ne v4, v6, :cond_2

    add-int/lit8 v4, v0, 0x14

    aget v4, p0, v4

    if-ltz v4, :cond_2

    add-int/lit8 v4, v0, 0x14

    aget v4, p0, v4

    if-gt v4, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor 533 EMC variable mismatch"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v9, :cond_6

    add-int/lit8 v2, v0, 0x19

    aget v2, p0, v2

    if-ltz v2, :cond_5

    add-int/lit8 v2, v0, 0x19

    aget v2, p0, v2

    if-gt v2, v3, :cond_5

    if-ge v0, v5, :cond_4

    add-int/lit8 v2, v0, 0x19

    aget v2, p0, v2

    add-int/lit8 v4, v0, 0x16

    aget v4, p1, v4

    if-ne v2, v4, :cond_5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 41
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor 533 EMC stack mismatch"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    .end local v0    # "i":I
    :cond_6
    aget v0, p0, v1

    if-ltz v0, :cond_7

    aget v0, p0, v1

    if-gt v0, v3, :cond_7

    const/16 v0, 0x12

    aget v0, p0, v0

    if-ltz v0, :cond_7

    const/16 v0, 0x12

    aget v0, p0, v0

    if-gt v0, v3, :cond_7

    const/16 v0, 0x13

    aget v0, p0, v0

    if-ltz v0, :cond_7

    const/16 v0, 0x13

    aget v0, p0, v0

    if-gt v0, v3, :cond_7

    .line 45
    return-void

    .line 44
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 533 opcode/return/delay invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 533 F40 precall event untrusted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
