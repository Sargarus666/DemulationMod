.class public final Lcom/ahsim/demulation/RazorMapUnitEvidence411;
.super Ljava/lang/Object;
.source "RazorMapUnitEvidence411.java"


# static fields
.field public static final SCHEMA:Ljava/lang/String; = "demulation.razor.411.host-map-unit-prestate.v1"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bounded(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;I)[B
    .locals 6
    .param p0, "zip"    # Ljava/util/zip/ZipFile;
    .param p1, "e"    # Ljava/util/zip/ZipEntry;
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
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

    .line 140
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 141
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 142
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x1000

    :try_start_1
    new-array v2, v2, [B

    .line 143
    .local v2, "block":[B
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "n":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 144
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    add-int/2addr v3, v4

    if-gt v3, p2, :cond_0

    .line 145
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 144
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v5, "Oversized predecessor member"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "zip":Ljava/util/zip/ZipFile;
    .end local p1    # "e":Ljava/util/zip/ZipEntry;
    .end local p2    # "limit":I
    throw v3

    .line 147
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local v1    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "zip":Ljava/util/zip/ZipFile;
    .restart local p1    # "e":Ljava/util/zip/ZipEntry;
    .restart local p2    # "limit":I
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 147
    :cond_2
    return-object v3

    .line 140
    .end local v2    # "block":[B
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
    .end local p1    # "e":Ljava/util/zip/ZipEntry;
    .end local p2    # "limit":I
    :goto_1
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "zip":Ljava/util/zip/ZipFile;
    .restart local p1    # "e":Ljava/util/zip/ZipEntry;
    .restart local p2    # "limit":I
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

    .line 139
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid predecessor diagnostic ZIP member"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static hex32(J)Ljava/lang/String;
    .locals 3
    .param p0, "n"    # J

    .line 40
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "0x%08x"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static manifest([BLjava/lang/String;IIII[I)[B
    .locals 28
    .param p0, "data"    # [B
    .param p1, "romSha"    # Ljava/lang/String;
    .param p2, "variantMiB"    # I
    .param p3, "house"    # I
    .param p4, "mission"    # I
    .param p5, "readSequence"    # I
    .param p6, "unit403"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    if-eqz v0, :cond_17

    array-length v7, v0

    const/16 v8, 0x2d

    if-lt v7, v8, :cond_17

    if-eqz v1, :cond_17

    .line 48
    const-string v7, "[a-fA-F0-9]{64}"

    invoke-virtual {v1, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-eq v2, v8, :cond_1

    if-ne v2, v7, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    goto/16 :goto_6

    :cond_1
    :goto_0
    if-ltz v3, :cond_16

    if-gt v3, v7, :cond_16

    const/4 v9, 0x1

    if-lt v4, v9, :cond_16

    const/16 v10, 0x9

    if-gt v4, v10, :cond_16

    if-lt v5, v9, :cond_16

    if-eqz v6, :cond_16

    array-length v10, v6

    if-lt v10, v8, :cond_16

    const/4 v10, 0x0

    aget v11, v6, v10

    const/16 v12, 0x193

    if-ne v11, v12, :cond_16

    aget-byte v11, v0, v10

    const/16 v12, 0x52

    if-ne v11, v12, :cond_16

    aget-byte v11, v0, v9

    const/16 v12, 0x34

    if-ne v11, v12, :cond_16

    const/4 v11, 0x2

    aget-byte v12, v0, v11

    const/16 v13, 0x31

    if-ne v12, v13, :cond_16

    aget-byte v12, v0, v8

    if-ne v12, v13, :cond_16

    .line 53
    invoke-static {v0, v7}, Lcom/ahsim/demulation/RazorMapUnitEvidence411;->u16([BI)I

    move-result v7

    const/16 v12, 0x19b

    if-ne v7, v12, :cond_15

    const/16 v7, 0x26

    invoke-static {v0, v7}, Lcom/ahsim/demulation/RazorMapUnitEvidence411;->u16([BI)I

    move-result v7

    if-nez v7, :cond_15

    .line 55
    const/4 v7, 0x6

    invoke-static {v0, v7}, Lcom/ahsim/demulation/RazorMapUnitEvidence411;->u16([BI)I

    move-result v7

    .local v7, "side":I
    const/16 v12, 0x8

    invoke-static {v0, v12}, Lcom/ahsim/demulation/RazorMapUnitEvidence411;->u16([BI)I

    move-result v12

    .local v12, "width":I
    const/16 v13, 0xa

    invoke-static {v0, v13}, Lcom/ahsim/demulation/RazorMapUnitEvidence411;->u16([BI)I

    move-result v13

    .line 56
    .local v13, "height":I
    const/16 v14, 0xc

    invoke-static {v0, v14}, Lcom/ahsim/demulation/RazorMapUnitEvidence411;->u16([BI)I

    move-result v15

    move/from16 v16, v8

    .local v15, "stride":I
    const/16 v8, 0xe

    invoke-static {v0, v8}, Lcom/ahsim/demulation/RazorMapUnitEvidence411;->u16([BI)I

    move-result v8

    .line 57
    .local v8, "unitCount":I
    const/16 v10, 0x10

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorMapUnitEvidence411;->u16([BI)I

    move-result v10

    .line 58
    .local v10, "buildingCount":I
    move/from16 v18, v11

    mul-int v11, v7, v7

    .line 59
    .local v11, "count":I
    const/16 v14, 0x20

    const/16 v9, 0x80

    if-eq v7, v14, :cond_3

    const/16 v14, 0x40

    if-eq v7, v14, :cond_4

    if-ne v7, v9, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v0

    move/from16 v23, v8

    move/from16 v24, v10

    move v8, v15

    goto/16 :goto_5

    :cond_3
    const/16 v14, 0x40

    .line 60
    :cond_4
    :goto_1
    if-ne v7, v9, :cond_5

    move v14, v9

    :cond_5
    if-ne v15, v14, :cond_14

    const/4 v14, 0x1

    if-lt v12, v14, :cond_14

    if-lt v13, v14, :cond_14

    if-gt v12, v7, :cond_14

    if-gt v13, v7, :cond_14

    .line 61
    const/16 v14, 0x12

    invoke-static {v0, v14}, Lcom/ahsim/demulation/RazorMapUnitEvidence411;->u32([BI)J

    move-result-wide v21

    move v14, v10

    .end local v10    # "buildingCount":I
    .local v14, "buildingCount":I
    int-to-long v9, v11

    cmp-long v9, v21, v9

    if-nez v9, :cond_13

    array-length v9, v0

    mul-int/lit8 v10, v11, 0x5

    add-int/lit8 v10, v10, 0x28

    if-ne v9, v10, :cond_13

    const/16 v20, 0x1

    aget v9, v6, v20

    if-ne v8, v9, :cond_13

    aget v9, v6, v18

    const/16 v10, 0xc

    if-ne v9, v10, :cond_13

    array-length v9, v6

    mul-int/lit8 v10, v8, 0xc

    add-int/lit8 v10, v10, 0x3

    if-ne v9, v10, :cond_13

    const/16 v9, 0x80

    if-gt v8, v9, :cond_13

    const/16 v9, 0x400

    if-gt v14, v9, :cond_13

    .line 66
    const/4 v9, 0x0

    .local v9, "units":I
    const/4 v10, 0x0

    .local v10, "buildings":I
    const/16 v18, 0x0

    .local v18, "occupiedTiles":I
    const/16 v19, 0x0

    .line 67
    .local v19, "unitTiles":I
    new-array v6, v11, [I

    .line 68
    .local v6, "perCell":[I
    const/16 v21, 0x0

    move/from16 v27, v18

    move/from16 v18, v15

    move/from16 v15, v21

    move/from16 v21, v19

    move/from16 v19, v27

    .local v15, "i":I
    .local v18, "stride":I
    .local v19, "occupiedTiles":I
    .local v21, "unitTiles":I
    :goto_2
    if-ge v15, v11, :cond_c

    .line 69
    mul-int/lit8 v22, v15, 0x5

    add-int/lit8 v22, v22, 0x28

    .local v22, "p":I
    move/from16 v23, v15

    .end local v15    # "i":I
    .local v23, "i":I
    add-int/lit8 v15, v22, 0x1

    invoke-static {v0, v15}, Lcom/ahsim/demulation/RazorMapUnitEvidence411;->u16([BI)I

    move-result v15

    .local v15, "uc":I
    move/from16 v24, v15

    .end local v15    # "uc":I
    .local v24, "uc":I
    add-int/lit8 v15, v22, 0x3

    invoke-static {v0, v15}, Lcom/ahsim/demulation/RazorMapUnitEvidence411;->u16([BI)I

    move-result v15

    .line 70
    .local v15, "bc":I
    move/from16 v25, v15

    .end local v15    # "bc":I
    .local v25, "bc":I
    div-int v15, v23, v7

    if-ge v15, v13, :cond_6

    rem-int v15, v23, v7

    if-lt v15, v12, :cond_7

    :cond_6
    if-nez v24, :cond_b

    if-nez v25, :cond_b

    .line 72
    :cond_7
    add-int v9, v9, v24

    add-int v10, v10, v25

    .line 73
    if-eqz v24, :cond_8

    add-int/lit8 v21, v21, 0x1

    .line 74
    :cond_8
    if-nez v24, :cond_9

    if-eqz v25, :cond_a

    :cond_9
    add-int/lit8 v19, v19, 0x1

    .line 75
    :cond_a
    aput v24, v6, v23

    .line 68
    .end local v22    # "p":I
    .end local v24    # "uc":I
    .end local v25    # "bc":I
    add-int/lit8 v15, v23, 0x1

    .end local v23    # "i":I
    .local v15, "i":I
    goto :goto_2

    .line 71
    .end local v15    # "i":I
    .restart local v22    # "p":I
    .restart local v23    # "i":I
    .restart local v24    # "uc":I
    .restart local v25    # "bc":I
    :cond_b
    new-instance v15, Ljava/io/IOException;

    const-string v0, "Occupancy outside playable map"

    invoke-direct {v15, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 68
    .end local v22    # "p":I
    .end local v23    # "i":I
    .end local v24    # "uc":I
    .end local v25    # "bc":I
    .restart local v15    # "i":I
    :cond_c
    move/from16 v23, v15

    .line 77
    .end local v15    # "i":I
    if-ne v9, v8, :cond_12

    if-ne v10, v14, :cond_12

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v8, :cond_f

    .line 80
    mul-int/lit8 v15, v0, 0xc

    add-int/lit8 v15, v15, 0x3

    .line 81
    .local v15, "p":I
    add-int/lit8 v22, v15, 0x4

    move/from16 v23, v8

    .end local v8    # "unitCount":I
    .local v23, "unitCount":I
    aget v8, p6, v22

    .local v8, "x":I
    add-int/lit8 v22, v15, 0x5

    move/from16 v24, v14

    .end local v14    # "buildingCount":I
    .local v24, "buildingCount":I
    aget v14, p6, v22

    .line 82
    .local v14, "y":I
    move/from16 v22, v15

    .end local v15    # "p":I
    .restart local v22    # "p":I
    aget v15, p6, v22

    if-ne v15, v0, :cond_d

    if-ltz v8, :cond_d

    if-ltz v14, :cond_d

    if-ge v8, v12, :cond_d

    if-ge v14, v13, :cond_d

    add-int/lit8 v15, v22, 0x6

    aget v15, p6, v15

    add-int/lit8 v25, v22, 0x2

    move/from16 v26, v0

    .end local v0    # "i":I
    .local v26, "i":I
    aget v0, p6, v25

    if-ne v15, v0, :cond_e

    add-int/lit8 v15, v22, 0x7

    aget v0, p6, v15

    add-int/lit8 v15, v22, 0x3

    aget v15, p6, v15

    if-ne v0, v15, :cond_e

    add-int/lit8 v15, v22, 0x9

    aget v0, p6, v15

    mul-int v15, v14, v7

    add-int/2addr v15, v8

    if-ne v0, v15, :cond_e

    mul-int v0, v14, v7

    add-int/2addr v0, v8

    aget v15, v6, v0

    const/16 v20, 0x1

    add-int/lit8 v15, v15, -0x1

    aput v15, v6, v0

    if-ltz v15, :cond_e

    .line 79
    .end local v8    # "x":I
    .end local v14    # "y":I
    .end local v22    # "p":I
    add-int/lit8 v0, v26, 0x1

    move/from16 v8, v23

    move/from16 v14, v24

    .end local v26    # "i":I
    .restart local v0    # "i":I
    goto :goto_3

    .line 82
    .restart local v8    # "x":I
    .restart local v14    # "y":I
    .restart local v22    # "p":I
    :cond_d
    move/from16 v26, v0

    .line 86
    .end local v0    # "i":I
    .restart local v26    # "i":I
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v15, "HOST unit coordinate not represented in map"

    invoke-direct {v0, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    .end local v22    # "p":I
    .end local v23    # "unitCount":I
    .end local v24    # "buildingCount":I
    .end local v26    # "i":I
    .restart local v0    # "i":I
    .local v8, "unitCount":I
    .local v14, "buildingCount":I
    :cond_f
    move/from16 v26, v0

    move/from16 v23, v8

    move/from16 v24, v14

    .line 88
    .end local v0    # "i":I
    .end local v8    # "unitCount":I
    .end local v14    # "buildingCount":I
    .restart local v23    # "unitCount":I
    .restart local v24    # "buildingCount":I
    array-length v0, v6

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v0, :cond_11

    aget v14, v6, v8

    .local v14, "n":I
    if-nez v14, :cond_10

    .end local v14    # "n":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 89
    .restart local v14    # "n":I
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v8, "HOST occupancy has unmatched UNIT"

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    .end local v14    # "n":I
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "{\"schema\":\"demulation.razor.411.host-map-unit-prestate.v1\",\"rom_sha256\":\""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 91
    invoke-virtual {v1, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "\",\"variant_mib\":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ",\"house\":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ",\"mission\":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ",\"read_sequence\":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ",\"source_kind\":\"retained immutable Android-native bootstrap world\",\"map_stored_side\":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ",\"map_width\":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ",\"map_height\":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ",\"occupancy_stride\":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v8, v18

    .end local v18    # "stride":I
    .local v8, "stride":I
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, ",\"cell_count\":"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, ",\"unit_count\":"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, ",\"building_count\":"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, ",\"occupied_tiles\":"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v14, v19

    .end local v19    # "occupiedTiles":I
    .local v14, "occupiedTiles":I
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, ",\"unit_occupied_tiles\":"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v15, v21

    .end local v21    # "unitTiles":I
    .local v15, "unitTiles":I
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"building_occupancy_semantics\":\"building origin/anchor tile only; not full footprint\",\"map_fingerprint_fnv32\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    const/16 v1, 0x16

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lcom/ahsim/demulation/RazorMapUnitEvidence411;->u32([BI)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/ahsim/demulation/RazorMapUnitEvidence411;->hex32(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"scenario_fingerprint_fnv32\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    const/16 v1, 0x1a

    invoke-static {v2, v1}, Lcom/ahsim/demulation/RazorMapUnitEvidence411;->u32([BI)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/ahsim/demulation/RazorMapUnitEvidence411;->hex32(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"object_fingerprint_fnv32\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    const/16 v1, 0x1e

    invoke-static {v2, v1}, Lcom/ahsim/demulation/RazorMapUnitEvidence411;->u32([BI)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/ahsim/demulation/RazorMapUnitEvidence411;->hex32(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"native_world_fingerprint_fnv32\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    const/16 v1, 0x22

    invoke-static {v2, v1}, Lcom/ahsim/demulation/RazorMapUnitEvidence411;->u32([BI)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/ahsim/demulation/RazorMapUnitEvidence411;->hex32(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"snapshot_binary_sha256\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 106
    invoke-static {v2}, Lcom/ahsim/demulation/RazorMapUnitEvidence411;->sha256([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"snapshot_binary_layout\":\"R411 40-byte big-endian header; per stored cell: raw terrain u8, host unit occupancy u16 BE, host building occupancy u16 BE\",\"captured_after_world_bootstrap\":true,\"retained_world_game_ticks\":0,\"persistent_unit_emc_runtime\":false,\"original_68k_four_byte_tile_flags_available\":false,\"genesis_68k_ram_captured\":false,\"function40_executed\":false,\"function40_ram_delta_known\":false,\"gameplay_authorized\":false}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "json":Ljava/lang/String;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1

    .line 77
    .end local v0    # "json":Ljava/lang/String;
    .end local v15    # "unitTiles":I
    .end local v23    # "unitCount":I
    .end local v24    # "buildingCount":I
    .local v8, "unitCount":I
    .local v14, "buildingCount":I
    .restart local v18    # "stride":I
    .restart local v19    # "occupiedTiles":I
    .restart local v21    # "unitTiles":I
    :cond_12
    move-object/from16 v2, p0

    move/from16 v23, v8

    move/from16 v24, v14

    move/from16 v8, v18

    move/from16 v14, v19

    move/from16 v15, v21

    .line 78
    .end local v18    # "stride":I
    .end local v19    # "occupiedTiles":I
    .end local v21    # "unitTiles":I
    .local v8, "stride":I
    .local v14, "occupiedTiles":I
    .restart local v15    # "unitTiles":I
    .restart local v23    # "unitCount":I
    .restart local v24    # "buildingCount":I
    new-instance v0, Ljava/io/IOException;

    const-string v1, "HOST occupancy counts disagree"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    .end local v6    # "perCell":[I
    .end local v9    # "units":I
    .end local v10    # "buildings":I
    .end local v23    # "unitCount":I
    .end local v24    # "buildingCount":I
    .local v8, "unitCount":I
    .local v14, "buildingCount":I
    .local v15, "stride":I
    :cond_13
    move-object v2, v0

    move/from16 v23, v8

    move/from16 v24, v14

    move v8, v15

    .end local v14    # "buildingCount":I
    .end local v15    # "stride":I
    .local v8, "stride":I
    .restart local v23    # "unitCount":I
    .restart local v24    # "buildingCount":I
    goto :goto_5

    .line 60
    .end local v23    # "unitCount":I
    .end local v24    # "buildingCount":I
    .local v8, "unitCount":I
    .local v10, "buildingCount":I
    .restart local v15    # "stride":I
    :cond_14
    move-object v2, v0

    move/from16 v23, v8

    move/from16 v24, v10

    move v8, v15

    .line 65
    .end local v10    # "buildingCount":I
    .end local v15    # "stride":I
    .local v8, "stride":I
    .restart local v23    # "unitCount":I
    .restart local v24    # "buildingCount":I
    :goto_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "HOST map/UNIT dimensions disagree"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    .end local v7    # "side":I
    .end local v8    # "stride":I
    .end local v11    # "count":I
    .end local v12    # "width":I
    .end local v13    # "height":I
    .end local v23    # "unitCount":I
    .end local v24    # "buildingCount":I
    :cond_15
    move-object v2, v0

    goto :goto_6

    .line 48
    :cond_16
    move-object v2, v0

    goto :goto_6

    .line 47
    :cond_17
    move-object v2, v0

    .line 54
    :goto_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid 411 HOST map input"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static sha256([B)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 32
    .local v0, "digest":[B
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 33
    .local v1, "b":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v0, v3

    .local v4, "v":B
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, "%02x"

    and-int/lit16 v7, v4, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v4    # "v":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 35
    .end local v0    # "digest":[B
    .end local v1    # "b":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 36
    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Missing SHA-256"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static tileWritePrestateContract()[B
    .locals 2

    .line 121
    const-string v0, "{\"schema\":\"demulation.razor.411.f40-tile-prestate-gate.v1\",\"android_prestate\":\"retained bootstrap HOST terrain and occupancy\",\"68k_variant_3_map_base\":\"0xFF7D9C\",\"68k_variant_4_map_base\":\"0x200000\",\"68k_cell_record_size\":4,\"android_cell_record_size\":5,\"android_cell_record_definition\":\"source terrain byte + occupancy counts, not 68k flags\",\"can_validate_scenario_tile_identity\":true,\"can_validate_initial_occupancy\":true,\"can_validate_f40_bit11_write\":false,\"can_validate_native_side_effects\":false,\"genuine_bizhawk_before_after_required\":true,\"matched_68k_unit_identity_proven\":false,\"first_shadow_tick_ready\":false}\n"

    .line 134
    .local v0, "j":Ljava/lang/String;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1
.end method

.method private static u16([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "p"    # I

    .line 23
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static u32([BI)J
    .locals 5
    .param p0, "b"    # [B
    .param p1, "p"    # I

    .line 26
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static writeEnvelope(Ljava/io/File;Ljava/io/File;[B[BLjava/lang/String;)Ljava/io/File;
    .locals 22
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "zip405"    # Ljava/io/File;
    .param p2, "cells"    # [B
    .param p3, "mapManifest"    # [B
    .param p4, "romSha"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 155
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x20000

    cmp-long v0, v6, v8

    if-gtz v0, :cond_7

    .line 156
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "razor405_razor393_[a-f0-9]{12}_h[0-4]_m[1-9]_r[0-9]+_t[0-9]+(_[0-9]+)?[.]zip"

    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v5, :cond_7

    .line 157
    const-string v0, "[a-fA-F0-9]{64}"

    invoke-virtual {v5, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 158
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "razor393_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 159
    const/4 v7, 0x0

    const/16 v8, 0xc

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 158
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    array-length v0, v3

    const/16 v6, 0x2d

    if-lt v0, v6, :cond_7

    array-length v0, v3

    const v6, 0x14028

    if-gt v0, v6, :cond_7

    if-eqz v4, :cond_7

    array-length v0, v4

    const/16 v6, 0x12c

    if-lt v0, v6, :cond_7

    array-length v0, v4

    const/16 v6, 0x1000

    if-gt v0, v6, :cond_7

    new-instance v0, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\"rom_sha256\":\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 163
    invoke-virtual {v5, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 162
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\"snapshot_binary_sha256\":\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 165
    invoke-static {v3}, Lcom/ahsim/demulation/RazorMapUnitEvidence411;->sha256([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 164
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 167
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "^razor405_"

    const-string v9, "razor411_"

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v6, v0

    .line 168
    .local v6, "target":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    .line 169
    const-string v0, ".zip.tmp"

    invoke-static {v9, v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v8

    .line 170
    .local v8, "tmp":Ljava/io/File;
    const/4 v9, 0x0

    .line 172
    .local v9, "done":Z
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object v10, v0

    .line 173
    .local v10, "predecessor":Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object v11, v0

    .line 174
    .local v11, "file":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v0, v11}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v12, v0

    .line 175
    .local v12, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_3
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->size()I

    move-result v0

    const/16 v13, 0x8

    if-ne v0, v13, :cond_4

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "razor405_"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    .line 177
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v17, v7

    const/16 v18, 0x4

    add-int/lit8 v7, v16, -0x4

    .line 176
    invoke-virtual {v14, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ".json"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "origin":Ljava/lang/String;
    new-array v7, v13, [Ljava/lang/String;

    aput-object v0, v7, v17

    const-string v13, "ONE_UNIT_IDENTITY_395.json"

    const/4 v14, 0x1

    aput-object v13, v7, v14

    const-string v13, "CAPTURE_KIND_395.txt"

    const/4 v15, 0x2

    aput-object v13, v7, v15

    const-string v13, "INITIAL_UNIT_STATE_403.json"

    const/16 v16, 0x3

    aput-object v13, v7, v16

    const-string v13, "FIELD_DICTIONARY_403.json"

    aput-object v13, v7, v18

    const-string v13, "CAPTURE_KIND_403.txt"

    const/16 v19, 0x5

    aput-object v13, v7, v19

    const-string v13, "TRANSIENT_UNIT_EMC_SHADOW_405.json"

    const/16 v19, 0x6

    aput-object v13, v7, v19

    const-string v13, "CAPTURE_KIND_405.txt"

    const/16 v19, 0x7

    aput-object v13, v7, v19

    .line 182
    .local v7, "old":[Ljava/lang/String;
    array-length v13, v7

    move/from16 v19, v14

    move/from16 v14, v17

    :goto_0
    if-ge v14, v13, :cond_0

    aget-object v20, v7, v14

    move-object/from16 v21, v20

    .line 183
    .local v21, "name":Ljava/lang/String;
    move/from16 v20, v15

    move-object/from16 v15, v21

    move-object/from16 v21, v0

    .end local v0    # "origin":Ljava/lang/String;
    .local v15, "name":Ljava/lang/String;
    .local v21, "origin":Ljava/lang/String;
    invoke-virtual {v10, v15}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    const v1, 0x8000

    invoke-static {v10, v0, v1}, Lcom/ahsim/demulation/RazorMapUnitEvidence411;->bounded(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;I)[B

    move-result-object v0

    .line 184
    .local v0, "block":[B
    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v1, v15}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v12, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 182
    .end local v0    # "block":[B
    .end local v15    # "name":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move/from16 v15, v20

    move-object/from16 v0, v21

    goto :goto_0

    .line 186
    .end local v21    # "origin":Ljava/lang/String;
    .local v0, "origin":Ljava/lang/String;
    :cond_0
    move-object/from16 v21, v0

    move/from16 v20, v15

    .end local v0    # "origin":Ljava/lang/String;
    .restart local v21    # "origin":Ljava/lang/String;
    invoke-static {}, Lcom/ahsim/demulation/RazorMapUnitEvidence411;->tileWritePrestateContract()[B

    move-result-object v0

    const-string v1, "Read-only Android HOST map snapshot; no real 68K F40 tile writes or game ticks.\n"

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 188
    invoke-virtual {v1, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    filled-new-array {v3, v4, v0, v1}, [[B

    move-result-object v0

    .line 189
    .local v0, "added":[[B
    move/from16 v1, v18

    new-array v1, v1, [Ljava/lang/String;

    const-string v13, "HOST_MAP_CELLS_411.bin"

    aput-object v13, v1, v17

    const-string v13, "HOST_MAP_MANIFEST_411.json"

    aput-object v13, v1, v19

    const-string v13, "TILE_PRESTATE_CONTRACT_411.json"

    aput-object v13, v1, v20

    const-string v13, "CAPTURE_KIND_411.txt"

    aput-object v13, v1, v16

    .line 191
    .local v1, "names":[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    array-length v14, v1

    if-ge v13, v14, :cond_1

    .line 192
    new-instance v14, Ljava/util/zip/ZipEntry;

    aget-object v15, v1, v13

    invoke-direct {v14, v15}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v14}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 193
    aget-object v14, v0, v13

    invoke-virtual {v12, v14}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 191
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 195
    .end local v13    # "i":I
    :cond_1
    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->finish()V

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 196
    .end local v0    # "added":[[B
    .end local v1    # "names":[Ljava/lang/String;
    .end local v7    # "old":[Ljava/lang/String;
    .end local v21    # "origin":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v12    # "out":Ljava/util/zip/ZipOutputStream;
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .end local v11    # "file":Ljava/io/FileOutputStream;
    :try_start_6
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V

    .line 197
    .end local v10    # "predecessor":Ljava/util/zip/ZipFile;
    invoke-virtual {v8, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-eqz v0, :cond_3

    .line 198
    const/4 v0, 0x1

    .line 199
    .end local v9    # "done":Z
    .local v0, "done":Z
    if-nez v0, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 198
    :cond_2
    return-object v6

    .line 197
    .end local v0    # "done":Z
    .restart local v9    # "done":Z
    :cond_3
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot publish Razor map ZIP"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v6    # "target":Ljava/io/File;
    .end local v8    # "tmp":Ljava/io/File;
    .end local v9    # "done":Z
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "zip405":Ljava/io/File;
    .end local p2    # "cells":[B
    .end local p3    # "mapManifest":[B
    .end local p4    # "romSha":Ljava/lang/String;
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 175
    .restart local v6    # "target":Ljava/io/File;
    .restart local v8    # "tmp":Ljava/io/File;
    .restart local v9    # "done":Z
    .restart local v10    # "predecessor":Ljava/util/zip/ZipFile;
    .restart local v11    # "file":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "zip405":Ljava/io/File;
    .restart local p2    # "cells":[B
    .restart local p3    # "mapManifest":[B
    .restart local p4    # "romSha":Ljava/lang/String;
    :cond_4
    :try_start_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Expected eight 405 members"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v6    # "target":Ljava/io/File;
    .end local v8    # "tmp":Ljava/io/File;
    .end local v9    # "done":Z
    .end local v10    # "predecessor":Ljava/util/zip/ZipFile;
    .end local v11    # "file":Ljava/io/FileOutputStream;
    .end local v12    # "out":Ljava/util/zip/ZipOutputStream;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "zip405":Ljava/io/File;
    .end local p2    # "cells":[B
    .end local p3    # "mapManifest":[B
    .end local p4    # "romSha":Ljava/lang/String;
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 172
    .restart local v6    # "target":Ljava/io/File;
    .restart local v8    # "tmp":Ljava/io/File;
    .restart local v9    # "done":Z
    .restart local v10    # "predecessor":Ljava/util/zip/ZipFile;
    .restart local v11    # "file":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "zip405":Ljava/io/File;
    .restart local p2    # "cells":[B
    .restart local p3    # "mapManifest":[B
    .restart local p4    # "romSha":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_9
    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v6    # "target":Ljava/io/File;
    .end local v8    # "tmp":Ljava/io/File;
    .end local v9    # "done":Z
    .end local v10    # "predecessor":Ljava/util/zip/ZipFile;
    .end local v11    # "file":Ljava/io/FileOutputStream;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "zip405":Ljava/io/File;
    .end local p2    # "cells":[B
    .end local p3    # "mapManifest":[B
    .end local p4    # "romSha":Ljava/lang/String;
    :goto_2
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .end local v12    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "target":Ljava/io/File;
    .restart local v8    # "tmp":Ljava/io/File;
    .restart local v9    # "done":Z
    .restart local v10    # "predecessor":Ljava/util/zip/ZipFile;
    .restart local v11    # "file":Ljava/io/FileOutputStream;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "zip405":Ljava/io/File;
    .restart local p2    # "cells":[B
    .restart local p3    # "mapManifest":[B
    .restart local p4    # "romSha":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_b
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_c
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v6    # "target":Ljava/io/File;
    .end local v8    # "tmp":Ljava/io/File;
    .end local v9    # "done":Z
    .end local v10    # "predecessor":Ljava/util/zip/ZipFile;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "zip405":Ljava/io/File;
    .end local p2    # "cells":[B
    .end local p3    # "mapManifest":[B
    .end local p4    # "romSha":Ljava/lang/String;
    :goto_3
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .end local v11    # "file":Ljava/io/FileOutputStream;
    .restart local v6    # "target":Ljava/io/File;
    .restart local v8    # "tmp":Ljava/io/File;
    .restart local v9    # "done":Z
    .restart local v10    # "predecessor":Ljava/util/zip/ZipFile;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "zip405":Ljava/io/File;
    .restart local p2    # "cells":[B
    .restart local p3    # "mapManifest":[B
    .restart local p4    # "romSha":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object v1, v0

    :try_start_d
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    :try_start_e
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v6    # "target":Ljava/io/File;
    .end local v8    # "tmp":Ljava/io/File;
    .end local v9    # "done":Z
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "zip405":Ljava/io/File;
    .end local p2    # "cells":[B
    .end local p3    # "mapManifest":[B
    .end local p4    # "romSha":Ljava/lang/String;
    :goto_4
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 199
    .end local v10    # "predecessor":Ljava/util/zip/ZipFile;
    .restart local v6    # "target":Ljava/io/File;
    .restart local v8    # "tmp":Ljava/io/File;
    .restart local v9    # "done":Z
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "zip405":Ljava/io/File;
    .restart local p2    # "cells":[B
    .restart local p3    # "mapManifest":[B
    .restart local p4    # "romSha":Ljava/lang/String;
    :catchall_6
    move-exception v0

    if-nez v9, :cond_5

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_5
    throw v0

    .line 168
    .end local v8    # "tmp":Ljava/io/File;
    .end local v9    # "done":Z
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 411 diagnostic already exists"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    .end local v6    # "target":Ljava/io/File;
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsafe 411 map evidence inputs"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
