.class public final Lcom/ahsim/demulation/RazorNativeUnitFlagEvidence416;
.super Ljava/lang/Object;
.source "RazorNativeUnitFlagEvidence416.java"


# static fields
.field public static final SCHEMA:Ljava/lang/String; = "demulation.razor.416.native-unit-flag-prestate.v1"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
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

    .line 115
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

    .line 117
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 118
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 119
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x1000

    :try_start_1
    new-array v2, v2, [B

    .line 120
    .local v2, "buf":[B
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "n":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 121
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    add-int/2addr v3, v4

    if-gt v3, p2, :cond_0

    .line 122
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 121
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v5, "Oversized 411 member"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "zip":Ljava/util/zip/ZipFile;
    .end local p1    # "entry":Ljava/util/zip/ZipEntry;
    .end local p2    # "max":I
    throw v3

    .line 124
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

    .line 125
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 124
    :cond_2
    return-object v3

    .line 117
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

    .line 116
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid 411 member"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encode([I[I[BLjava/lang/String;IIII)[B
    .locals 22
    .param p0, "native416"    # [I
    .param p1, "source403"    # [I
    .param p2, "map411"    # [B
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

    .line 28
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    if-eqz v2, :cond_9

    array-length v8, v0

    const/4 v9, 0x6

    if-lt v8, v9, :cond_9

    array-length v8, v1

    const/4 v10, 0x3

    if-lt v8, v10, :cond_9

    array-length v8, v2

    const/16 v11, 0x2d

    if-lt v8, v11, :cond_9

    if-eqz v3, :cond_9

    .line 30
    const-string v8, "[a-fA-F0-9]{64}"

    invoke-virtual {v3, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x4

    if-eq v4, v10, :cond_0

    if-ne v4, v8, :cond_9

    :cond_0
    if-ltz v5, :cond_9

    if-gt v5, v8, :cond_9

    const/4 v11, 0x1

    if-lt v6, v11, :cond_9

    const/16 v12, 0x9

    if-gt v6, v12, :cond_9

    if-lt v7, v11, :cond_9

    const/4 v12, 0x0

    aget v13, v0, v12

    const/16 v14, 0x1a0

    if-ne v13, v14, :cond_9

    const/4 v13, 0x2

    aget v14, v0, v13

    const/16 v15, 0xc

    if-ne v14, v15, :cond_9

    aget v14, v0, v10

    if-ne v14, v11, :cond_9

    aget v14, v0, v8

    if-nez v14, :cond_9

    const/4 v14, 0x5

    aget v16, v0, v14

    if-nez v16, :cond_9

    move/from16 v16, v10

    aget v10, v1, v12

    move/from16 v17, v12

    const/16 v12, 0x193

    if-ne v10, v12, :cond_9

    aget v10, v1, v13

    if-ne v10, v15, :cond_9

    aget v10, v0, v11

    if-lt v10, v11, :cond_9

    aget v10, v0, v11

    const/16 v12, 0x80

    if-gt v10, v12, :cond_9

    aget v10, v0, v11

    move/from16 v18, v13

    aget v13, v1, v11

    if-ne v10, v13, :cond_9

    array-length v10, v0

    aget v13, v0, v11

    mul-int/2addr v13, v15

    add-int/2addr v13, v9

    if-ne v10, v13, :cond_9

    array-length v10, v1

    aget v13, v0, v11

    mul-int/2addr v13, v15

    add-int/lit8 v13, v13, 0x3

    if-ne v10, v13, :cond_9

    aget-byte v10, v2, v17

    const/16 v13, 0x52

    if-ne v10, v13, :cond_9

    aget-byte v10, v2, v11

    const/16 v13, 0x34

    if-ne v10, v13, :cond_9

    aget-byte v10, v2, v18

    const/16 v13, 0x31

    if-ne v10, v13, :cond_9

    aget-byte v10, v2, v16

    if-ne v10, v13, :cond_9

    .line 42
    invoke-static {v2, v8}, Lcom/ahsim/demulation/RazorNativeUnitFlagEvidence416;->u16([BI)I

    move-result v8

    const/16 v10, 0x19b

    if-ne v8, v10, :cond_9

    const/16 v8, 0xe

    invoke-static {v2, v8}, Lcom/ahsim/demulation/RazorNativeUnitFlagEvidence416;->u16([BI)I

    move-result v8

    aget v10, v0, v11

    if-ne v8, v10, :cond_9

    .line 44
    invoke-static {v2, v9}, Lcom/ahsim/demulation/RazorNativeUnitFlagEvidence416;->u16([BI)I

    move-result v8

    .line 45
    .local v8, "side":I
    const/16 v10, 0x8

    invoke-static {v2, v10}, Lcom/ahsim/demulation/RazorNativeUnitFlagEvidence416;->u16([BI)I

    move-result v10

    .local v10, "width":I
    const/16 v13, 0xa

    invoke-static {v2, v13}, Lcom/ahsim/demulation/RazorNativeUnitFlagEvidence416;->u16([BI)I

    move-result v13

    .line 46
    .local v13, "height":I
    const/16 v15, 0x40

    const/16 v14, 0x20

    if-eq v8, v14, :cond_1

    if-eq v8, v15, :cond_1

    if-ne v8, v12, :cond_8

    :cond_1
    if-lt v10, v11, :cond_8

    if-lt v13, v11, :cond_8

    if-gt v10, v8, :cond_8

    if-gt v13, v8, :cond_8

    move/from16 v18, v11

    array-length v11, v2

    mul-int/lit8 v19, v8, 0x5

    mul-int v19, v19, v8

    add-int/lit8 v15, v19, 0x28

    if-ne v11, v15, :cond_8

    .line 50
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v15, 0x9c4

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 51
    .local v11, "out":Ljava/lang/StringBuilder;
    const-string v15, "{\"schema\":\""

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v12, "demulation.razor.416.native-unit-flag-prestate.v1"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 52
    const-string v15, "\",\"rom_sha256\":\""

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 53
    invoke-virtual {v3, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 54
    const-string v15, "\",\"variant_mib\":"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 55
    const-string v15, ",\"house\":"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 56
    const-string v15, ",\"mission\":"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 57
    const-string v15, ",\"read_sequence\":"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 58
    const-string v15, ",\"host_source\":\"retained native Razor bootstrap world\""

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 59
    const-string v15, ",\"unit_count\":"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget v15, v0, v18

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 60
    const-string v15, ",\"observed_host_fields\":[\"owner\",\"type\",\"x\",\"y\",\"source_index\",\"packed_tile\"]"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 61
    const-string v15, ",\"genesis_unit_base\":\"0xFF0DAC\",\"genesis_unit_stride\":140"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 62
    const-string v15, ",\"genesis_flag_offset\":9"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 63
    const-string v15, ",\"genesis_flag_value_available\":false"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 64
    const-string v15, ",\"persistent_android_razor_runtime\":false"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 65
    const-string v15, ",\"genesis_slot_identity_proven\":false"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 66
    const-string v15, ",\"flag_write_abi_authorized\":false"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 67
    const-string v15, ",\"executed_game_ticks\":0,\"gameplay_authorized\":false"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 68
    const-string v15, ",\"units\":["

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    aget v15, v0, v18

    if-ge v12, v15, :cond_7

    .line 70
    mul-int/lit8 v15, v12, 0xc

    add-int/2addr v15, v9

    .local v15, "n":I
    mul-int/lit8 v20, v12, 0xc

    add-int/lit8 v20, v20, 0x3

    .line 71
    .local v20, "p":I
    const/16 v21, 0x0

    move/from16 v14, v21

    .local v14, "k":I
    :goto_1
    if-ge v14, v9, :cond_3

    add-int v21, v15, v14

    aget v9, v0, v21

    add-int v21, v20, v14

    aget v0, v1, v21

    if-ne v9, v0, :cond_2

    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x6

    move-object/from16 v0, p0

    goto :goto_1

    .line 72
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v9, "Native 416 identity mismatch"

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    .end local v14    # "k":I
    :cond_3
    add-int/lit8 v0, v15, 0x6

    aget v0, p0, v0

    add-int/lit8 v9, v20, 0x9

    aget v9, v1, v9

    if-ne v0, v9, :cond_6

    add-int/lit8 v0, v15, 0x7

    aget v0, p0, v0

    if-nez v0, :cond_6

    add-int/lit8 v0, v15, 0x8

    aget v0, p0, v0

    const/4 v9, -0x1

    if-ne v0, v9, :cond_6

    add-int/lit8 v0, v15, 0x9

    aget v0, p0, v0

    if-ne v0, v9, :cond_6

    add-int/lit8 v0, v15, 0xa

    aget v0, p0, v0

    if-ne v0, v9, :cond_6

    add-int/lit8 v0, v15, 0xb

    aget v0, p0, v0

    if-nez v0, :cond_6

    aget v0, p0, v15

    if-ne v0, v12, :cond_6

    add-int/lit8 v0, v15, 0x2

    aget v0, p0, v0

    if-ltz v0, :cond_6

    add-int/lit8 v0, v15, 0x2

    aget v0, p0, v0

    const/4 v9, 0x5

    if-ge v0, v9, :cond_6

    add-int/lit8 v0, v15, 0x3

    aget v0, p0, v0

    if-ltz v0, :cond_6

    add-int/lit8 v0, v15, 0x3

    aget v0, p0, v0

    const/16 v14, 0x20

    if-ge v0, v14, :cond_6

    add-int/lit8 v0, v15, 0x4

    aget v0, p0, v0

    if-ltz v0, :cond_6

    add-int/lit8 v0, v15, 0x4

    aget v0, p0, v0

    if-ge v0, v10, :cond_6

    add-int/lit8 v0, v15, 0x5

    aget v0, p0, v0

    if-ltz v0, :cond_6

    add-int/lit8 v0, v15, 0x5

    aget v0, p0, v0

    if-ge v0, v13, :cond_6

    add-int/lit8 v0, v15, 0x6

    aget v0, p0, v0

    add-int/lit8 v17, v15, 0x5

    aget v17, p0, v17

    .line 81
    const/16 v9, 0x80

    if-ne v8, v9, :cond_4

    move/from16 v19, v9

    goto :goto_2

    :cond_4
    const/16 v19, 0x40

    :goto_2
    mul-int v17, v17, v19

    add-int/lit8 v19, v15, 0x4

    aget v19, p0, v19

    add-int v9, v17, v19

    if-ne v0, v9, :cond_6

    .line 83
    if-lez v12, :cond_5

    const/16 v0, 0x2c

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    :cond_5
    const-string v0, "{\"ordinal\":"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    const-string v9, ",\"source_index\":"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v9, v15, 0x1

    aget v9, p0, v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    const-string v9, ",\"owner\":"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v9, v15, 0x2

    aget v9, p0, v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    const-string v9, ",\"type\":"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v9, v15, 0x3

    aget v9, p0, v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    const-string v9, ",\"x\":"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v9, v15, 0x4

    aget v9, p0, v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    const-string v9, ",\"y\":"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v9, v15, 0x5

    aget v9, p0, v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    const-string v9, ",\"packed_tile\":"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v9, v15, 0x6

    aget v9, p0, v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    const-string v9, ",\"genesis_flag_value\":null"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    const-string v9, ",\"genesis_slot\":null"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 93
    const-string v9, ",\"runtime_generation\":null}"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .end local v15    # "n":I
    .end local v20    # "p":I
    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x6

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 82
    .restart local v15    # "n":I
    .restart local v20    # "p":I
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v9, "Unverified or fabricated 68K flag field"

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    .end local v12    # "i":I
    .end local v15    # "n":I
    .end local v20    # "p":I
    :cond_7
    const-string v0, "]}\n"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0

    .line 49
    .end local v11    # "out":Ljava/lang/StringBuilder;
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v9, "Invalid 416 map geometry"

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    .end local v8    # "side":I
    .end local v10    # "width":I
    .end local v13    # "height":I
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v8, "Invalid 416 native observation provenance"

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static gateContract()[B
    .locals 2

    .line 100
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 111
    const-string v1, "{\"schema\":\"demulation.razor.416.one-unit-f40-prestate-gate.v1\",\"observed\":\"native initial UNIT identity read from retained HOST\",\"runtime_flag_offset\":9,\"runtime_flag_known\":false,\"source_words_are_not_flags\":true,\"genesis_runtime_slot_confirmed\":false,\"matched_original_f40_prestate\":false,\"real_cpu_witness_present\":false,\"can_compare_f40_object_flag_delta\":false,\"can_commit_shadow_transaction\":false,\"allow_game_tick\":false,\"blocker\":\"NO_PERSISTENT_RAZOR_UNIT_FLAG_ABI_AND_NO_GENUINE_68K_F40_TRACE\"}\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 100
    return-object v0
.end method

.method private static u16([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "p"    # I

    .line 22
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static writeEnvelope(Ljava/io/File;Ljava/io/File;[BLjava/lang/String;)Ljava/io/File;
    .locals 21
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "predecessor"    # Ljava/io/File;
    .param p2, "report"    # [B
    .param p3, "romSha"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    .line 131
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/32 v7, 0x249f0

    cmp-long v0, v5, v7

    if-gtz v0, :cond_7

    .line 132
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "razor411_razor393_[a-f0-9]{12}_h[0-4]_m[1-9]_r[0-9]+_t[0-9]+(_[0-9]+)?[.]zip"

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v4, :cond_7

    .line 134
    const-string v0, "[a-fA-F0-9]{64}"

    invoke-virtual {v4, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 135
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "razor393_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 136
    const/4 v6, 0x0

    const/16 v7, 0xc

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    array-length v0, v3

    const/16 v5, 0x1c2

    if-lt v0, v5, :cond_7

    array-length v0, v3

    const v5, 0x8000

    if-gt v0, v5, :cond_7

    new-instance v0, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\"rom_sha256\":\""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 139
    invoke-virtual {v4, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 138
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 141
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v8, "^razor411_"

    const-string v9, "razor416_"

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v0

    .line 142
    .local v5, "target":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    .line 143
    const-string v0, ".tmp"

    invoke-static {v9, v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v8

    .line 144
    .local v8, "tmp":Ljava/io/File;
    const/4 v9, 0x0

    .line 146
    .local v9, "published":Z
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object v10, v0

    .line 147
    .local v10, "input":Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object v11, v0

    .line 148
    .local v11, "f":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v0, v11}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v12, v0

    .line 149
    .local v12, "zip":Ljava/util/zip/ZipOutputStream;
    :try_start_3
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->size()I

    move-result v0

    if-ne v0, v7, :cond_4

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "razor411_"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    .line 151
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x4

    add-int/lit8 v15, v15, -0x4

    .line 150
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, ".json"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "origin":Ljava/lang/String;
    new-array v7, v7, [Ljava/lang/String;

    aput-object v0, v7, v6

    const-string v13, "ONE_UNIT_IDENTITY_395.json"

    const/4 v14, 0x1

    aput-object v13, v7, v14

    const-string v13, "CAPTURE_KIND_395.txt"

    const/4 v15, 0x2

    aput-object v13, v7, v15

    const-string v13, "INITIAL_UNIT_STATE_403.json"

    move/from16 v17, v6

    const/4 v6, 0x3

    aput-object v13, v7, v6

    const-string v13, "FIELD_DICTIONARY_403.json"

    aput-object v13, v7, v16

    const-string v13, "CAPTURE_KIND_403.txt"

    const/16 v16, 0x5

    aput-object v13, v7, v16

    const-string v13, "TRANSIENT_UNIT_EMC_SHADOW_405.json"

    const/16 v16, 0x6

    aput-object v13, v7, v16

    const-string v13, "CAPTURE_KIND_405.txt"

    const/16 v16, 0x7

    aput-object v13, v7, v16

    const-string v13, "HOST_MAP_CELLS_411.bin"

    const/16 v16, 0x8

    aput-object v13, v7, v16

    const-string v13, "HOST_MAP_MANIFEST_411.json"

    const/16 v16, 0x9

    aput-object v13, v7, v16

    const-string v13, "TILE_PRESTATE_CONTRACT_411.json"

    const/16 v16, 0xa

    aput-object v13, v7, v16

    const-string v13, "CAPTURE_KIND_411.txt"

    const/16 v16, 0xb

    aput-object v13, v7, v16

    .line 158
    .local v7, "names":[Ljava/lang/String;
    array-length v13, v7

    move/from16 v16, v14

    move/from16 v14, v17

    :goto_0
    if-ge v14, v13, :cond_0

    aget-object v18, v7, v14

    move-object/from16 v19, v18

    .line 159
    .local v19, "name":Ljava/lang/String;
    move/from16 v18, v15

    move-object/from16 v15, v19

    .end local v19    # "name":Ljava/lang/String;
    .local v15, "name":Ljava/lang/String;
    invoke-virtual {v10, v15}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v6

    move-object/from16 v20, v0

    .end local v0    # "origin":Ljava/lang/String;
    .local v20, "origin":Ljava/lang/String;
    const v0, 0x186a0

    invoke-static {v10, v6, v0}, Lcom/ahsim/demulation/RazorNativeUnitFlagEvidence416;->bounded(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;I)[B

    move-result-object v0

    .line 160
    .local v0, "bytes":[B
    new-instance v6, Ljava/util/zip/ZipEntry;

    invoke-direct {v6, v15}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v12, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 158
    .end local v0    # "bytes":[B
    .end local v15    # "name":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move/from16 v15, v18

    move-object/from16 v0, v20

    const/4 v6, 0x3

    goto :goto_0

    .line 162
    .end local v20    # "origin":Ljava/lang/String;
    .local v0, "origin":Ljava/lang/String;
    :cond_0
    move-object/from16 v20, v0

    move/from16 v18, v15

    .end local v0    # "origin":Ljava/lang/String;
    .restart local v20    # "origin":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v6, "NATIVE_UNIT_FLAG_PRESTATE_416.json"

    aput-object v6, v0, v17

    const-string v6, "ONE_UNIT_F40_ABI_GATE_416.json"

    aput-object v6, v0, v16

    const-string v6, "CAPTURE_KIND_416.txt"

    aput-object v6, v0, v18

    .line 164
    .local v0, "additions":[Ljava/lang/String;
    invoke-static {}, Lcom/ahsim/demulation/RazorNativeUnitFlagEvidence416;->gateContract()[B

    move-result-object v6

    const-string v13, "Real read-only native HOST unit identity; Genesis UNIT+9 flags UNAVAILABLE; no ticks.\n"

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 166
    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v13

    filled-new-array {v3, v6, v13}, [[B

    move-result-object v6

    .line 167
    .local v6, "payloads":[[B
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    array-length v14, v0

    if-ge v13, v14, :cond_1

    .line 168
    new-instance v14, Ljava/util/zip/ZipEntry;

    aget-object v15, v0, v13

    invoke-direct {v14, v15}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v14}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 169
    aget-object v14, v6, v13

    invoke-virtual {v12, v14}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 167
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 171
    .end local v13    # "i":I
    :cond_1
    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->finish()V

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    .end local v0    # "additions":[Ljava/lang/String;
    .end local v6    # "payloads":[[B
    .end local v7    # "names":[Ljava/lang/String;
    .end local v20    # "origin":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v12    # "zip":Ljava/util/zip/ZipOutputStream;
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .end local v11    # "f":Ljava/io/FileOutputStream;
    :try_start_6
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V

    .line 173
    .end local v10    # "input":Ljava/util/zip/ZipFile;
    invoke-virtual {v8, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-eqz v0, :cond_3

    .line 174
    const/4 v0, 0x1

    .line 175
    .end local v9    # "published":Z
    .local v0, "published":Z
    if-nez v0, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 174
    :cond_2
    return-object v5

    .line 173
    .end local v0    # "published":Z
    .restart local v9    # "published":Z
    :cond_3
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Cannot publish Razor 416 ZIP"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "target":Ljava/io/File;
    .end local v8    # "tmp":Ljava/io/File;
    .end local v9    # "published":Z
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "predecessor":Ljava/io/File;
    .end local p2    # "report":[B
    .end local p3    # "romSha":Ljava/lang/String;
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 149
    .restart local v5    # "target":Ljava/io/File;
    .restart local v8    # "tmp":Ljava/io/File;
    .restart local v9    # "published":Z
    .restart local v10    # "input":Ljava/util/zip/ZipFile;
    .restart local v11    # "f":Ljava/io/FileOutputStream;
    .restart local v12    # "zip":Ljava/util/zip/ZipOutputStream;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "predecessor":Ljava/io/File;
    .restart local p2    # "report":[B
    .restart local p3    # "romSha":Ljava/lang/String;
    :cond_4
    :try_start_8
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Unexpected 411 archive members"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "target":Ljava/io/File;
    .end local v8    # "tmp":Ljava/io/File;
    .end local v9    # "published":Z
    .end local v10    # "input":Ljava/util/zip/ZipFile;
    .end local v11    # "f":Ljava/io/FileOutputStream;
    .end local v12    # "zip":Ljava/util/zip/ZipOutputStream;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "predecessor":Ljava/io/File;
    .end local p2    # "report":[B
    .end local p3    # "romSha":Ljava/lang/String;
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 146
    .restart local v5    # "target":Ljava/io/File;
    .restart local v8    # "tmp":Ljava/io/File;
    .restart local v9    # "published":Z
    .restart local v10    # "input":Ljava/util/zip/ZipFile;
    .restart local v11    # "f":Ljava/io/FileOutputStream;
    .restart local v12    # "zip":Ljava/util/zip/ZipOutputStream;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "predecessor":Ljava/io/File;
    .restart local p2    # "report":[B
    .restart local p3    # "romSha":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v6, v0

    :try_start_9
    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_a
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "target":Ljava/io/File;
    .end local v8    # "tmp":Ljava/io/File;
    .end local v9    # "published":Z
    .end local v10    # "input":Ljava/util/zip/ZipFile;
    .end local v11    # "f":Ljava/io/FileOutputStream;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "predecessor":Ljava/io/File;
    .end local p2    # "report":[B
    .end local p3    # "romSha":Ljava/lang/String;
    :goto_2
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .end local v12    # "zip":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "target":Ljava/io/File;
    .restart local v8    # "tmp":Ljava/io/File;
    .restart local v9    # "published":Z
    .restart local v10    # "input":Ljava/util/zip/ZipFile;
    .restart local v11    # "f":Ljava/io/FileOutputStream;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "predecessor":Ljava/io/File;
    .restart local p2    # "report":[B
    .restart local p3    # "romSha":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object v6, v0

    :try_start_b
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_c
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "target":Ljava/io/File;
    .end local v8    # "tmp":Ljava/io/File;
    .end local v9    # "published":Z
    .end local v10    # "input":Ljava/util/zip/ZipFile;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "predecessor":Ljava/io/File;
    .end local p2    # "report":[B
    .end local p3    # "romSha":Ljava/lang/String;
    :goto_3
    throw v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .end local v11    # "f":Ljava/io/FileOutputStream;
    .restart local v5    # "target":Ljava/io/File;
    .restart local v8    # "tmp":Ljava/io/File;
    .restart local v9    # "published":Z
    .restart local v10    # "input":Ljava/util/zip/ZipFile;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "predecessor":Ljava/io/File;
    .restart local p2    # "report":[B
    .restart local p3    # "romSha":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object v6, v0

    :try_start_d
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    :try_start_e
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "target":Ljava/io/File;
    .end local v8    # "tmp":Ljava/io/File;
    .end local v9    # "published":Z
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "predecessor":Ljava/io/File;
    .end local p2    # "report":[B
    .end local p3    # "romSha":Ljava/lang/String;
    :goto_4
    throw v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 175
    .end local v10    # "input":Ljava/util/zip/ZipFile;
    .restart local v5    # "target":Ljava/io/File;
    .restart local v8    # "tmp":Ljava/io/File;
    .restart local v9    # "published":Z
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "predecessor":Ljava/io/File;
    .restart local p2    # "report":[B
    .restart local p3    # "romSha":Ljava/lang/String;
    :catchall_6
    move-exception v0

    if-nez v9, :cond_5

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_5
    throw v0

    .line 142
    .end local v8    # "tmp":Ljava/io/File;
    .end local v9    # "published":Z
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Razor 416 archive already exists"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    .end local v5    # "target":Ljava/io/File;
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Unsafe Razor 416 archive inputs"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
