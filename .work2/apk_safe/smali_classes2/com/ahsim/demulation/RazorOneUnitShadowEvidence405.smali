.class public final Lcom/ahsim/demulation/RazorOneUnitShadowEvidence405;
.super Ljava/lang/Object;
.source "RazorOneUnitShadowEvidence405.java"


# static fields
.field public static final SCHEMA:Ljava/lang/String; = "demulation.razor.405.transient-emc-unit-shadow.v1"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bounded(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;I)[B
    .locals 6
    .param p0, "zip"    # Ljava/util/zip/ZipFile;
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    int-to-long v2, p2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    .line 101
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 102
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 103
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x800

    :try_start_1
    new-array v2, v2, [B

    .line 104
    .local v2, "buf":[B
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "n":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 105
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    add-int/2addr v3, v4

    if-gt v3, p2, :cond_0

    .line 106
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 105
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v5, "Unsafe diagnostic ZIP member"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "zip":Ljava/util/zip/ZipFile;
    .end local p1    # "entry":Ljava/util/zip/ZipEntry;
    .end local p2    # "max":I
    throw v3

    .line 108
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local v1    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "zip":Ljava/util/zip/ZipFile;
    .restart local p1    # "entry":Ljava/util/zip/ZipEntry;
    .restart local p2    # "max":I
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 108
    :cond_2
    return-object v3

    .line 101
    .end local v2    # "buf":[B
    .end local v4    # "n":I
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/InputStream;
    .end local p0    # "zip":Ljava/util/zip/ZipFile;
    .end local p1    # "entry":Ljava/util/zip/ZipEntry;
    .end local p2    # "max":I
    :goto_1
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "zip":Ljava/util/zip/ZipFile;
    .restart local p1    # "entry":Ljava/util/zip/ZipEntry;
    .restart local p2    # "max":I
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v1

    .line 100
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid predecessor ZIP member"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encode([I[I[ILjava/lang/String;IIII)[B
    .locals 30
    .param p0, "v"    # [I
    .param p1, "unit403"    # [I
    .param p2, "first395"    # [I
    .param p3, "romSha"    # Ljava/lang/String;
    .param p4, "variant"    # I
    .param p5, "house"    # I
    .param p6, "mission"    # I
    .param p7, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    if-eqz v0, :cond_f

    array-length v8, v0

    const/16 v9, 0x25

    if-ne v8, v9, :cond_f

    const/4 v8, 0x0

    aget v9, v0, v8

    const/16 v10, 0x195

    if-ne v9, v10, :cond_f

    const/4 v9, 0x1

    aget v10, v0, v9

    if-nez v10, :cond_f

    if-eqz v1, :cond_f

    array-length v10, v1

    const/16 v11, 0xf

    if-lt v10, v11, :cond_f

    aget v10, v1, v8

    const/16 v12, 0x193

    if-ne v10, v12, :cond_f

    aget v10, v1, v9

    if-lt v10, v9, :cond_f

    const/4 v10, 0x2

    aget v12, v1, v10

    const/16 v13, 0xc

    if-ne v12, v13, :cond_f

    if-eqz v2, :cond_f

    array-length v12, v2

    const/16 v13, 0xb

    if-ne v12, v13, :cond_f

    if-eqz v3, :cond_f

    .line 29
    const-string v12, "[a-fA-F0-9]{64}"

    invoke-virtual {v3, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    const/4 v12, 0x3

    const/4 v13, 0x4

    if-eq v4, v12, :cond_0

    if-ne v4, v13, :cond_f

    :cond_0
    if-ltz v5, :cond_f

    if-gt v5, v13, :cond_f

    if-lt v6, v9, :cond_f

    const/16 v14, 0x9

    if-gt v6, v14, :cond_f

    if-lez v7, :cond_f

    aget v14, v0, v10

    const/16 v15, 0xff

    if-gt v14, v15, :cond_f

    aget v14, v0, v10

    if-ltz v14, :cond_f

    aget v14, v0, v12

    if-ltz v14, :cond_f

    aget v14, v0, v12

    const/4 v15, 0x5

    if-ge v14, v15, :cond_f

    aget v14, v0, v13

    if-ltz v14, :cond_f

    aget v14, v0, v13

    move/from16 v16, v8

    const/16 v8, 0x20

    if-ge v14, v8, :cond_f

    aget v8, v0, v15

    if-ltz v8, :cond_f

    aget v8, v0, v15

    const/16 v14, 0x7f

    if-gt v8, v14, :cond_f

    const/4 v8, 0x6

    aget v14, v0, v8

    if-ltz v14, :cond_f

    aget v14, v0, v8

    move/from16 v17, v10

    const/16 v10, 0x7f

    if-gt v14, v10, :cond_f

    const/16 v10, 0xd

    aget v14, v0, v10

    if-ltz v14, :cond_f

    aget v14, v0, v10

    move/from16 v18, v10

    const/16 v10, 0x1b

    if-ge v14, v10, :cond_f

    const/16 v10, 0xe

    aget v14, v0, v10

    if-ltz v14, :cond_f

    aget v14, v0, v11

    if-ltz v14, :cond_f

    aget v14, v0, v11

    move/from16 v19, v10

    const/16 v10, 0xab6

    if-gt v14, v10, :cond_f

    const/16 v10, 0x10

    aget v14, v0, v10

    if-ltz v14, :cond_f

    aget v14, v0, v10

    move/from16 v20, v10

    const/16 v10, 0x18

    if-gt v14, v10, :cond_f

    const/16 v14, 0x11

    move/from16 v21, v12

    aget v12, v0, v14

    if-ne v12, v9, :cond_f

    const/16 v12, 0x12

    aget v22, v0, v12

    if-ltz v22, :cond_f

    move/from16 v22, v9

    aget v9, v0, v12

    move/from16 v23, v12

    const/16 v12, 0x3f

    if-gt v9, v12, :cond_f

    const/16 v9, 0x13

    aget v9, v0, v9

    if-nez v9, :cond_f

    const/16 v9, 0x14

    aget v12, v0, v9

    if-ltz v12, :cond_f

    aget v12, v0, v9

    if-gt v12, v11, :cond_f

    const/16 v12, 0x15

    aget v24, v0, v12

    if-ltz v24, :cond_f

    move/from16 v24, v9

    aget v9, v0, v12

    if-gt v9, v11, :cond_f

    const/16 v9, 0x16

    aget v25, v0, v9

    if-ltz v25, :cond_f

    move/from16 v25, v9

    aget v9, v0, v25

    if-gt v9, v14, :cond_f

    aget v9, v0, v24

    aget v26, v0, v12

    move/from16 v27, v11

    rsub-int/lit8 v11, v26, 0xf

    if-ne v9, v11, :cond_f

    const/16 v9, 0x21

    aget v11, v0, v9

    move/from16 v26, v12

    const v12, 0x6d7659b5

    if-ne v11, v12, :cond_f

    const/16 v11, 0x22

    aget v11, v0, v11

    if-nez v11, :cond_f

    const/16 v11, 0x23

    aget v11, v0, v11

    if-nez v11, :cond_f

    const/16 v11, 0x24

    aget v11, v0, v11

    if-nez v11, :cond_f

    aget v11, v0, v22

    aget v12, v2, v16

    if-ne v11, v12, :cond_f

    aget v11, v0, v17

    aget v12, v2, v22

    if-ne v11, v12, :cond_f

    aget v11, v0, v21

    aget v12, v2, v17

    if-ne v11, v12, :cond_f

    aget v11, v0, v13

    aget v12, v2, v21

    if-ne v11, v12, :cond_f

    aget v11, v0, v15

    aget v12, v2, v13

    if-ne v11, v12, :cond_f

    aget v11, v0, v8

    aget v12, v2, v15

    if-ne v11, v12, :cond_f

    .line 45
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    const v12, 0xffff

    if-ge v11, v8, :cond_2

    add-int/lit8 v16, v11, 0x7

    move/from16 v28, v8

    aget v8, v0, v16

    add-int/lit8 v16, v11, 0x9

    move/from16 v29, v14

    aget v14, v1, v16

    if-ne v8, v14, :cond_1

    add-int/lit8 v8, v11, 0x7

    aget v8, v0, v8

    if-ltz v8, :cond_1

    add-int/lit8 v8, v11, 0x7

    aget v8, v0, v8

    if-gt v8, v12, :cond_1

    add-int/lit8 v11, v11, 0x1

    move/from16 v8, v28

    move/from16 v14, v29

    goto :goto_0

    .line 47
    :cond_1
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Shadow UNIT does not match 403 source words"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 45
    :cond_2
    move/from16 v28, v8

    move/from16 v29, v14

    .line 48
    .end local v11    # "i":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v15, :cond_4

    add-int/lit8 v11, v8, 0x1c

    aget v11, v0, v11

    if-ltz v11, :cond_3

    add-int/lit8 v11, v8, 0x1c

    aget v11, v0, v11

    if-gt v11, v12, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 49
    :cond_3
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Invalid shadow variable"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 50
    .end local v8    # "i":I
    :cond_4
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    if-ge v8, v13, :cond_7

    add-int/lit8 v11, v8, 0x18

    aget v11, v0, v11

    if-ltz v11, :cond_6

    add-int/lit8 v11, v8, 0x18

    aget v11, v0, v11

    if-gt v11, v12, :cond_6

    aget v11, v0, v24

    if-lt v8, v11, :cond_5

    add-int/lit8 v11, v8, 0x18

    aget v11, v0, v11

    if-nez v11, :cond_6

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 52
    :cond_6
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Invalid shadow stack"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 55
    .end local v8    # "i":I
    :cond_7
    const/16 v8, 0x17

    aget v11, v0, v8

    if-ltz v11, :cond_e

    aget v11, v0, v8

    if-gt v11, v12, :cond_e

    aget v11, v0, v19

    const/16 v12, 0xab6

    if-gt v11, v12, :cond_e

    aget v11, v0, v17

    aget v12, v1, v13

    if-ne v11, v12, :cond_e

    aget v11, v0, v21

    aget v12, v1, v15

    if-ne v11, v12, :cond_e

    aget v11, v0, v13

    aget v12, v1, v28

    if-ne v11, v12, :cond_e

    aget v11, v0, v15

    const/4 v12, 0x7

    aget v14, v1, v12

    if-ne v11, v14, :cond_e

    aget v11, v0, v28

    const/16 v14, 0x8

    aget v14, v1, v14

    if-ne v11, v14, :cond_e

    .line 60
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v14, 0x384

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 61
    .local v11, "b":Ljava/lang/StringBuilder;
    const-string v14, "{\"schema\":\""

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v16, v8

    const-string v8, "demulation.razor.405.transient-emc-unit-shadow.v1"

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 62
    const-string v14, "\",\"rom_sha256\":\""

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 63
    const-string v14, "\",\"variant_mib\":"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 64
    const-string v14, ",\"house\":"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, ",\"mission\":"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 65
    const-string v14, ",\"read_sequence\":"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 66
    const-string v14, ",\"unit_ordinal\":"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v14, v0, v22

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 67
    const-string v14, ",\"source_record_tag\":"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v14, v0, v17

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 68
    const-string v14, ",\"owner\":"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v14, v0, v21

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, ",\"type\":"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v13, v0, v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 69
    const-string v13, ",\"x\":"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v13, v0, v15

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, ",\"y\":"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v13, v0, v28

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 70
    const-string v13, ",\"source_words\":["

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const/4 v8, 0x7

    .restart local v8    # "i":I
    :goto_3
    const/16 v13, 0xc

    if-gt v8, v13, :cond_9

    if-le v8, v12, :cond_8

    const/16 v13, 0x2c

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    aget v13, v0, v8

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 72
    .end local v8    # "i":I
    :cond_9
    const-string v8, "],\"isolated_vm\":{\"entry\":"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v12, v0, v18

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 73
    const-string v12, ",\"start_pc\":"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v12, v0, v19

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 74
    const-string v12, ",\"stop_pc\":"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v12, v0, v27

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 75
    const-string v12, ",\"instructions\":"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v12, v0, v20

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 76
    const-string v12, ",\"stop_reason\":"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v12, v0, v29

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 77
    const-string v12, ",\"pending_native_function\":"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v12, v0, v23

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 78
    const-string v12, ",\"vm_error\":"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v12, 0x13

    aget v12, v0, v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 79
    const-string v12, ",\"stack_depth\":"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v12, v0, v24

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 80
    const-string v12, ",\"stack_pointer\":"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v12, v0, v26

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 81
    const-string v12, ",\"frame_pointer\":"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v12, v0, v25

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 82
    const-string v12, ",\"return_value\":"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v12, v0, v16

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 83
    const-string v12, ",\"stack_top\":["

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const/16 v8, 0x18

    .restart local v8    # "i":I
    :goto_4
    const/16 v12, 0x1c

    if-ge v8, v12, :cond_b

    if-le v8, v10, :cond_a

    const/16 v12, 0x2c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    aget v12, v0, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 85
    .end local v8    # "i":I
    :cond_b
    const-string v8, "],\"variables\":["

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const/16 v8, 0x1c

    .restart local v8    # "i":I
    :goto_5
    if-ge v8, v9, :cond_d

    if-le v8, v12, :cond_c

    const/16 v10, 0x2c

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c
    aget v10, v0, v8

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 87
    .end local v8    # "i":I
    :cond_d
    const-string v8, "],\"bank_fnv32\":\"0x"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    aget v9, v0, v9

    .line 88
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v12, "%08x"

    invoke-static {v10, v12, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 89
    const-string v9, "\"},\"origin\":\"isolated temporary Android-native EMC interpreter\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 90
    const-string v9, ",\"persistent_emc_runtime_exists\":false"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 91
    const-string v9, ",\"genesis_68k_emc_pc_captured\":false"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 92
    const-string v9, ",\"genesis_runtime_unit_identity_proven\":false"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 93
    const-string v9, ",\"native_callback_executed\":false"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 94
    const-string v9, ",\"executed_game_ticks\":0,\"gameplay_authorized\":false}\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    return-object v8

    .line 59
    .end local v11    # "b":Ljava/lang/StringBuilder;
    :cond_e
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Shadow identity disagrees with native UNIT"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 44
    :cond_f
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Invalid isolated UNIT/EMC witness"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public static writeEnvelope(Ljava/io/File;Ljava/io/File;[BLjava/lang/String;)Ljava/io/File;
    .locals 17
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "zip403"    # Ljava/io/File;
    .param p2, "json"    # [B
    .param p3, "romSha"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    .line 117
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/32 v7, 0x20000

    cmp-long v0, v5, v7

    if-gtz v0, :cond_6

    .line 118
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "razor403_razor393_[a-f0-9]{12}_h[0-4]_m[1-9]_r[0-9]+_t[0-9]+(_[0-9]+)?[.]zip"

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v4, :cond_6

    .line 119
    const-string v0, "[a-fA-F0-9]{64}"

    invoke-virtual {v4, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 120
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "razor393_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 121
    const/4 v6, 0x0

    const/16 v7, 0xc

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 120
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    array-length v0, v3

    const/16 v5, 0xfa

    if-lt v0, v5, :cond_6

    array-length v0, v3

    const/16 v5, 0x1000

    if-gt v0, v5, :cond_6

    new-instance v0, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\"rom_sha256\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 124
    invoke-virtual {v4, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 123
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 126
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "^razor403_"

    const-string v8, "razor405_"

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v0

    .line 127
    .local v5, "target":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 128
    const-string v0, ".tmp"

    invoke-static {v8, v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    .line 129
    .local v7, "temp":Ljava/io/File;
    const/4 v8, 0x0

    .line 131
    .local v8, "finished":Z
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object v9, v0

    .line 132
    .local v9, "z":Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object v10, v0

    .line 133
    .local v10, "f":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v0, v10}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v11, v0

    .line 134
    .local v11, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_3
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->size()I

    move-result v0

    const/4 v12, 0x6

    if-ne v0, v12, :cond_3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "razor403_"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    .line 136
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x4

    add-int/lit8 v15, v15, -0x4

    .line 135
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, ".json"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "origin":Ljava/lang/String;
    new-array v12, v12, [Ljava/lang/String;

    aput-object v0, v12, v6

    const-string v13, "ONE_UNIT_IDENTITY_395.json"

    const/4 v14, 0x1

    aput-object v13, v12, v14

    const-string v13, "CAPTURE_KIND_395.txt"

    const/4 v14, 0x2

    aput-object v13, v12, v14

    const-string v13, "INITIAL_UNIT_STATE_403.json"

    const/4 v14, 0x3

    aput-object v13, v12, v14

    const-string v13, "FIELD_DICTIONARY_403.json"

    aput-object v13, v12, v16

    const-string v13, "CAPTURE_KIND_403.txt"

    const/4 v14, 0x5

    aput-object v13, v12, v14

    .line 140
    .local v12, "names":[Ljava/lang/String;
    array-length v13, v12

    :goto_0
    if-ge v6, v13, :cond_0

    aget-object v14, v12, v6

    .line 141
    .local v14, "name":Ljava/lang/String;
    invoke-virtual {v9, v14}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v15

    move-object/from16 v16, v0

    .end local v0    # "origin":Ljava/lang/String;
    .local v16, "origin":Ljava/lang/String;
    const v0, 0x8000

    invoke-static {v9, v15, v0}, Lcom/ahsim/demulation/RazorOneUnitShadowEvidence405;->bounded(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;I)[B

    move-result-object v0

    .line 142
    .local v0, "content":[B
    new-instance v15, Ljava/util/zip/ZipEntry;

    invoke-direct {v15, v14}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v15}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v11, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {v11}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 140
    .end local v0    # "content":[B
    .end local v14    # "name":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v16

    goto :goto_0

    .line 144
    .end local v16    # "origin":Ljava/lang/String;
    .local v0, "origin":Ljava/lang/String;
    :cond_0
    move-object/from16 v16, v0

    .end local v0    # "origin":Ljava/lang/String;
    .restart local v16    # "origin":Ljava/lang/String;
    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string v6, "TRANSIENT_UNIT_EMC_SHADOW_405.json"

    invoke-direct {v0, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 145
    invoke-virtual {v11, v3}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {v11}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 146
    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string v6, "CAPTURE_KIND_405.txt"

    invoke-direct {v0, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 147
    const-string v0, "TRANSIENT isolated EMC witness for initial UNIT 0. NOT a persistent EMC runtime or Genesis RAM; zero game ticks.\n"

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 148
    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 147
    invoke-virtual {v11, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 149
    invoke-virtual {v11}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    invoke-virtual {v11}, Ljava/util/zip/ZipOutputStream;->finish()V

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    .end local v12    # "names":[Ljava/lang/String;
    .end local v16    # "origin":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v11}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v11    # "out":Ljava/util/zip/ZipOutputStream;
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .end local v10    # "f":Ljava/io/FileOutputStream;
    :try_start_6
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V

    .line 151
    .end local v9    # "z":Ljava/util/zip/ZipFile;
    invoke-virtual {v7, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-eqz v0, :cond_2

    .line 152
    const/4 v0, 0x1

    .line 153
    .end local v8    # "finished":Z
    .local v0, "finished":Z
    if-nez v0, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 152
    :cond_1
    return-object v5

    .line 151
    .end local v0    # "finished":Z
    .restart local v8    # "finished":Z
    :cond_2
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Cannot publish shadow ZIP"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "target":Ljava/io/File;
    .end local v7    # "temp":Ljava/io/File;
    .end local v8    # "finished":Z
    .end local p0    # "directory":Ljava/io/File;
    .end local p1    # "zip403":Ljava/io/File;
    .end local p2    # "json":[B
    .end local p3    # "romSha":Ljava/lang/String;
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 134
    .restart local v5    # "target":Ljava/io/File;
    .restart local v7    # "temp":Ljava/io/File;
    .restart local v8    # "finished":Z
    .restart local v9    # "z":Ljava/util/zip/ZipFile;
    .restart local v10    # "f":Ljava/io/FileOutputStream;
    .restart local v11    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local p0    # "directory":Ljava/io/File;
    .restart local p1    # "zip403":Ljava/io/File;
    .restart local p2    # "json":[B
    .restart local p3    # "romSha":Ljava/lang/String;
    :cond_3
    :try_start_8
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Unexpected 403 envelope membership"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "target":Ljava/io/File;
    .end local v7    # "temp":Ljava/io/File;
    .end local v8    # "finished":Z
    .end local v9    # "z":Ljava/util/zip/ZipFile;
    .end local v10    # "f":Ljava/io/FileOutputStream;
    .end local v11    # "out":Ljava/util/zip/ZipOutputStream;
    .end local p0    # "directory":Ljava/io/File;
    .end local p1    # "zip403":Ljava/io/File;
    .end local p2    # "json":[B
    .end local p3    # "romSha":Ljava/lang/String;
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 131
    .restart local v5    # "target":Ljava/io/File;
    .restart local v7    # "temp":Ljava/io/File;
    .restart local v8    # "finished":Z
    .restart local v9    # "z":Ljava/util/zip/ZipFile;
    .restart local v10    # "f":Ljava/io/FileOutputStream;
    .restart local v11    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local p0    # "directory":Ljava/io/File;
    .restart local p1    # "zip403":Ljava/io/File;
    .restart local p2    # "json":[B
    .restart local p3    # "romSha":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v6, v0

    :try_start_9
    invoke-virtual {v11}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_a
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "target":Ljava/io/File;
    .end local v7    # "temp":Ljava/io/File;
    .end local v8    # "finished":Z
    .end local v9    # "z":Ljava/util/zip/ZipFile;
    .end local v10    # "f":Ljava/io/FileOutputStream;
    .end local p0    # "directory":Ljava/io/File;
    .end local p1    # "zip403":Ljava/io/File;
    .end local p2    # "json":[B
    .end local p3    # "romSha":Ljava/lang/String;
    :goto_1
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .end local v11    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "target":Ljava/io/File;
    .restart local v7    # "temp":Ljava/io/File;
    .restart local v8    # "finished":Z
    .restart local v9    # "z":Ljava/util/zip/ZipFile;
    .restart local v10    # "f":Ljava/io/FileOutputStream;
    .restart local p0    # "directory":Ljava/io/File;
    .restart local p1    # "zip403":Ljava/io/File;
    .restart local p2    # "json":[B
    .restart local p3    # "romSha":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object v6, v0

    :try_start_b
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_c
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "target":Ljava/io/File;
    .end local v7    # "temp":Ljava/io/File;
    .end local v8    # "finished":Z
    .end local v9    # "z":Ljava/util/zip/ZipFile;
    .end local p0    # "directory":Ljava/io/File;
    .end local p1    # "zip403":Ljava/io/File;
    .end local p2    # "json":[B
    .end local p3    # "romSha":Ljava/lang/String;
    :goto_2
    throw v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .end local v10    # "f":Ljava/io/FileOutputStream;
    .restart local v5    # "target":Ljava/io/File;
    .restart local v7    # "temp":Ljava/io/File;
    .restart local v8    # "finished":Z
    .restart local v9    # "z":Ljava/util/zip/ZipFile;
    .restart local p0    # "directory":Ljava/io/File;
    .restart local p1    # "zip403":Ljava/io/File;
    .restart local p2    # "json":[B
    .restart local p3    # "romSha":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object v6, v0

    :try_start_d
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v0

    :try_start_e
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "target":Ljava/io/File;
    .end local v7    # "temp":Ljava/io/File;
    .end local v8    # "finished":Z
    .end local p0    # "directory":Ljava/io/File;
    .end local p1    # "zip403":Ljava/io/File;
    .end local p2    # "json":[B
    .end local p3    # "romSha":Ljava/lang/String;
    :goto_3
    throw v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 153
    .end local v9    # "z":Ljava/util/zip/ZipFile;
    .restart local v5    # "target":Ljava/io/File;
    .restart local v7    # "temp":Ljava/io/File;
    .restart local v8    # "finished":Z
    .restart local p0    # "directory":Ljava/io/File;
    .restart local p1    # "zip403":Ljava/io/File;
    .restart local p2    # "json":[B
    .restart local p3    # "romSha":Ljava/lang/String;
    :catchall_6
    move-exception v0

    if-nez v8, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_4
    throw v0

    .line 127
    .end local v7    # "temp":Ljava/io/File;
    .end local v8    # "finished":Z
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Razor shadow ZIP already exists"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    .end local v5    # "target":Ljava/io/File;
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Unsafe 405 ZIP inputs"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
