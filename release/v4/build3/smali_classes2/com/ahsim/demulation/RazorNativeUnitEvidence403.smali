.class public final Lcom/ahsim/demulation/RazorNativeUnitEvidence403;
.super Ljava/lang/Object;
.source "RazorNativeUnitEvidence403.java"


# static fields
.field public static final DICTIONARY_SCHEMA:Ljava/lang/String; = "demulation.razor.403.field-dictionary.v1"

.field public static final SCHEMA:Ljava/lang/String; = "demulation.razor.403.android-native-initial-units.v1"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode([I[ILjava/lang/String;IIIIIII)[B
    .locals 23
    .param p0, "words"    # [I
    .param p1, "first"    # [I
    .param p2, "romSha"    # Ljava/lang/String;
    .param p3, "variant"    # I
    .param p4, "house"    # I
    .param p5, "mission"    # I
    .param p6, "readSequence"    # I
    .param p7, "storedSide"    # I
    .param p8, "width"    # I
    .param p9, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    if-eqz v0, :cond_f

    array-length v10, v0

    const/4 v11, 0x3

    if-lt v10, v11, :cond_f

    const/4 v10, 0x0

    aget v12, v0, v10

    const/16 v13, 0x193

    if-ne v12, v13, :cond_f

    const/4 v12, 0x2

    aget v13, v0, v12

    const/16 v14, 0xc

    if-ne v13, v14, :cond_f

    const/4 v13, 0x1

    aget v15, v0, v13

    if-lt v15, v13, :cond_f

    aget v15, v0, v13

    move/from16 v16, v10

    const/16 v10, 0x80

    if-gt v15, v10, :cond_f

    array-length v15, v0

    aget v17, v0, v13

    mul-int/lit8 v17, v17, 0xc

    move/from16 v18, v12

    add-int/lit8 v12, v17, 0x3

    if-ne v15, v12, :cond_f

    if-eqz v1, :cond_f

    array-length v12, v1

    const/16 v15, 0xb

    if-ne v12, v15, :cond_f

    if-eqz v2, :cond_f

    .line 28
    const-string v12, "[a-fA-F0-9]{64}"

    invoke-virtual {v2, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    const/4 v12, 0x4

    if-eq v3, v11, :cond_0

    if-ne v3, v12, :cond_f

    :cond_0
    if-ltz v4, :cond_f

    if-gt v4, v12, :cond_f

    if-lt v5, v13, :cond_f

    const/16 v15, 0x9

    if-gt v5, v15, :cond_f

    if-lez v6, :cond_f

    move/from16 v17, v11

    const/16 v11, 0x20

    move/from16 v19, v12

    const/16 v12, 0x40

    if-eq v7, v11, :cond_1

    if-eq v7, v12, :cond_1

    if-ne v7, v10, :cond_f

    :cond_1
    if-lt v8, v13, :cond_f

    if-lt v9, v13, :cond_f

    .line 32
    if-ne v7, v10, :cond_2

    move v12, v10

    :cond_2
    if-gt v8, v12, :cond_f

    .line 33
    if-ne v7, v10, :cond_3

    move v12, v10

    goto :goto_0

    :cond_3
    const/16 v12, 0x40

    :goto_0
    if-gt v9, v12, :cond_f

    const/16 v12, 0xa

    aget v12, v1, v12

    move/from16 v21, v13

    aget v13, v0, v21

    if-ne v12, v13, :cond_f

    const/4 v12, 0x7

    aget v12, v1, v12

    if-ne v12, v7, :cond_f

    const/16 v12, 0x8

    aget v12, v1, v12

    if-ne v12, v8, :cond_f

    aget v12, v1, v15

    if-ne v12, v9, :cond_f

    .line 37
    if-ne v7, v10, :cond_4

    goto :goto_1

    :cond_4
    const/16 v10, 0x40

    .line 38
    .local v10, "stride":I
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    aget v13, v0, v21

    mul-int/lit16 v13, v13, 0xa5

    add-int/lit16 v13, v13, 0xf0

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 39
    .local v12, "j":Ljava/lang/StringBuilder;
    const-string v13, "{\"schema\":\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "demulation.razor.403.android-native-initial-units.v1"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 40
    const-string v15, "\",\"rom_sha256\":\""

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 41
    const-string v15, "\",\"variant_mib\":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 42
    const-string v15, ",\"house\":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ",\"mission\":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 43
    const-string v15, ",\"read_sequence\":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 44
    const-string v15, ",\"stored_side\":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 45
    const-string v15, ",\"width\":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ",\"height\":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 46
    const-string v15, ",\"unit_count\":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget v15, v0, v21

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 47
    const-string v15, ",\"source_kind\":\"initial scenario records copied into retained Android-native world\""

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 48
    const-string v15, ",\"emc_runtime_initialized\":false"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 49
    const-string v15, ",\"original_genesis_ram_available\":false"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 50
    const-string v15, ",\"genesis_runtime_slot_mapping_proven\":false"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 51
    const-string v15, ",\"original_cpu_trace_captured\":false"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 52
    const-string v15, ",\"gameplay_ticks_authorized\":false"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 53
    const-string v15, ",\"units\":["

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    aget v15, v0, v21

    if-ge v13, v15, :cond_d

    .line 55
    mul-int/lit8 v15, v13, 0xc

    add-int/lit8 v15, v15, 0x3

    .line 56
    .local v15, "p":I
    const/16 v20, 0x0

    move/from16 v11, v20

    .local v11, "n":I
    :goto_3
    if-ge v11, v14, :cond_6

    add-int v20, v15, v11

    aget v20, v0, v20

    if-ltz v20, :cond_5

    add-int v20, v15, v11

    aget v14, v0, v20

    const v0, 0xffff

    if-gt v14, v0, :cond_5

    add-int/lit8 v11, v11, 0x1

    const/16 v14, 0xc

    move-object/from16 v0, p0

    goto :goto_3

    .line 57
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v14, "UNIT field exceeds unsigned 16-bit range"

    invoke-direct {v0, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    .end local v11    # "n":I
    :cond_6
    aget v0, p0, v15

    if-ne v0, v13, :cond_c

    add-int/lit8 v0, v15, 0x1

    aget v0, p0, v0

    const/16 v11, 0xff

    if-gt v0, v11, :cond_c

    add-int/lit8 v0, v15, 0x2

    aget v0, p0, v0

    const/4 v11, 0x5

    if-ge v0, v11, :cond_c

    add-int/lit8 v0, v15, 0x3

    aget v0, p0, v0

    const/16 v14, 0x20

    if-ge v0, v14, :cond_c

    add-int/lit8 v0, v15, 0x4

    aget v0, p0, v0

    if-ge v0, v8, :cond_c

    add-int/lit8 v0, v15, 0x5

    aget v0, p0, v0

    if-ge v0, v9, :cond_c

    add-int/lit8 v0, v15, 0x6

    aget v0, p0, v0

    add-int/lit8 v20, v15, 0x2

    move/from16 v22, v11

    aget v11, p0, v20

    if-ne v0, v11, :cond_c

    add-int/lit8 v0, v15, 0x7

    aget v0, p0, v0

    add-int/lit8 v11, v15, 0x3

    aget v11, p0, v11

    if-ne v0, v11, :cond_c

    add-int/lit8 v0, v15, 0x9

    aget v0, p0, v0

    add-int/lit8 v11, v15, 0x5

    aget v11, p0, v11

    mul-int/2addr v11, v10

    add-int/lit8 v20, v15, 0x4

    aget v20, p0, v20

    add-int v11, v11, v20

    if-ne v0, v11, :cond_c

    .line 64
    const/4 v0, 0x6

    if-nez v13, :cond_8

    aget v11, v1, v16

    if-nez v11, :cond_7

    aget v11, v1, v21

    add-int/lit8 v20, v15, 0x1

    aget v14, p0, v20

    if-ne v11, v14, :cond_7

    aget v11, v1, v18

    add-int/lit8 v14, v15, 0x2

    aget v14, p0, v14

    if-ne v11, v14, :cond_7

    aget v11, v1, v17

    add-int/lit8 v14, v15, 0x3

    aget v14, p0, v14

    if-ne v11, v14, :cond_7

    aget v11, v1, v19

    add-int/lit8 v14, v15, 0x4

    aget v14, p0, v14

    if-ne v11, v14, :cond_7

    aget v11, v1, v22

    add-int/lit8 v14, v15, 0x5

    aget v14, p0, v14

    if-ne v11, v14, :cond_7

    aget v11, v1, v0

    add-int/lit8 v14, v15, 0x9

    aget v14, p0, v14

    if-ne v11, v14, :cond_7

    goto :goto_4

    .line 68
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v11, "First UNIT differs from 0.4.395 identity"

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_8
    :goto_4
    const/16 v11, 0x2c

    if-lez v13, :cond_9

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    :cond_9
    const-string v14, "{\"ordinal\":"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget v11, p0, v15

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 71
    const-string v14, ",\"source_record_tag\":"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v14, v15, 0x1

    aget v14, p0, v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 72
    const-string v14, ",\"owner\":"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v14, v15, 0x2

    aget v14, p0, v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 73
    const-string v14, ",\"type\":"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v14, v15, 0x3

    aget v14, p0, v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 74
    const-string v14, ",\"x\":"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v14, v15, 0x4

    aget v14, p0, v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 75
    const-string v14, ",\"y\":"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v14, v15, 0x5

    aget v14, p0, v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 76
    const-string v14, ",\"source_words\":["

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const/4 v11, 0x0

    .restart local v11    # "n":I
    :goto_5
    if-ge v11, v0, :cond_b

    .line 78
    if-lez v11, :cond_a

    const/16 v14, 0x2c

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_a
    const/16 v14, 0x2c

    .line 79
    :goto_6
    add-int/lit8 v20, v15, 0x6

    add-int v20, v20, v11

    aget v0, p0, v20

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    add-int/lit8 v11, v11, 0x1

    const/4 v0, 0x6

    goto :goto_5

    .line 81
    .end local v11    # "n":I
    :cond_b
    const-string v0, "]}"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .end local v15    # "p":I
    add-int/lit8 v13, v13, 0x1

    const/16 v11, 0x20

    const/16 v14, 0xc

    move-object/from16 v0, p0

    goto/16 :goto_2

    .line 63
    .restart local v15    # "p":I
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v11, "Inconsistent native UNIT source record"

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    .end local v13    # "i":I
    .end local v15    # "p":I
    :cond_d
    const-string v0, "]}\n"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 85
    .local v0, "bytes":[B
    array-length v11, v0

    const v13, 0x8000

    if-gt v11, v13, :cond_e

    .line 86
    return-object v0

    .line 85
    :cond_e
    new-instance v11, Ljava/io/IOException;

    const-string v13, "UNIT diagnostic exceeds 32 KiB"

    invoke-direct {v11, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 36
    .end local v0    # "bytes":[B
    .end local v10    # "stride":I
    .end local v12    # "j":Ljava/lang/StringBuilder;
    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v10, "Invalid native initial UNIT source"

    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fieldDictionary()[B
    .locals 2

    .line 91
    const-string v0, "{\"schema\":\"demulation.razor.403.field-dictionary.v1\",\"record_word_count\":12,\"source_record_count_max\":128,\"android_origin\":\"DuneRazorNativeWorldHost.units[]\",\"cross_runtime_68k_fields_verified\":false,\"fields\":[{\"name\":\"ordinal\",\"origin\":\"native host array index\",\"genesis_runtime_offset\":null},{\"name\":\"source_record_tag\",\"origin\":\"scenario section 8 record tag\",\"genesis_runtime_offset\":null},{\"name\":\"owner\",\"origin\":\"scenario value[0]\",\"genesis_runtime_offset\":null},{\"name\":\"type\",\"origin\":\"scenario value[1]\",\"genesis_runtime_offset\":null},{\"name\":\"x\",\"origin\":\"decode source_words[3]\",\"genesis_runtime_offset\":null},{\"name\":\"y\",\"origin\":\"decode source_words[3]\",\"genesis_runtime_offset\":null},{\"name\":\"source_words\",\"origin\":\"six unmodified source scenario 16-bit words\",\"known_word_indices\":{\"owner\":0,\"type\":1,\"packed_tile\":3},\"unresolved_word_indices\":[2,4,5],\"genesis_runtime_offset\":null}],\"unavailable\":[\"live_68k_unit_pointer\",\"live_68k_emc_pc\",\"emc_execution_stack\",\"unit_health\",\"unit_action\",\"native_side_effects\"],\"shadow_ram_65536_bytes_exported\":false,\"gameplay_ticks_authorized\":false}\n"

    .line 105
    .local v0, "j":Ljava/lang/String;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1
.end method

.method private static readBounded(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;I)[B
    .locals 6
    .param p0, "zip"    # Ljava/util/zip/ZipFile;
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    .line 111
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    int-to-long v2, p2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    .line 112
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 113
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 114
    .local v1, "b":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x800

    :try_start_1
    new-array v2, v2, [B

    .line 115
    .local v2, "buf":[B
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "n":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 116
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    add-int/2addr v3, v4

    if-gt v3, p2, :cond_0

    .line 117
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 116
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v5, "Oversized ZIP data"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "b":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "zip":Ljava/util/zip/ZipFile;
    .end local p1    # "entry":Ljava/util/zip/ZipEntry;
    .end local p2    # "limit":I
    throw v3

    .line 119
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local v1    # "b":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "zip":Ljava/util/zip/ZipFile;
    .restart local p1    # "entry":Ljava/util/zip/ZipEntry;
    .restart local p2    # "limit":I
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 119
    :cond_2
    return-object v3

    .line 112
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
    .end local p2    # "limit":I
    :goto_1
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v1    # "b":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "zip":Ljava/util/zip/ZipFile;
    .restart local p1    # "entry":Ljava/util/zip/ZipEntry;
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

    .line 111
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsafe Razor ZIP member"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static writeEnvelope(Ljava/io/File;Ljava/io/File;[BLjava/lang/String;)Ljava/io/File;
    .locals 22
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "identity395"    # Ljava/io/File;
    .param p2, "unitJson"    # [B
    .param p3, "romSha"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v0, "CAPTURE_KIND_395.txt"

    const-string v5, ".json"

    const-string v6, "ONE_UNIT_IDENTITY_395.json"

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_c

    if-eqz v2, :cond_c

    .line 128
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/32 v9, 0x10000

    cmp-long v7, v7, v9

    if-gtz v7, :cond_c

    .line 129
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "razor395_razor393_[a-f0-9]{12}_h[0-4]_m[1-9]_r[0-9]+_t[0-9]+(_[0-9]+)?[.]zip"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    if-eqz v4, :cond_c

    .line 130
    const-string v7, "[a-fA-F0-9]{64}"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 131
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "razor393_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-virtual {v4, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    if-eqz v3, :cond_c

    array-length v7, v3

    const/16 v8, 0x64

    if-lt v7, v8, :cond_c

    array-length v7, v3

    const v8, 0x8000

    if-gt v7, v8, :cond_c

    .line 134
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "razor395_"

    const-string v9, "razor403_"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 135
    .local v7, "sourceName":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 136
    .local v8, "result":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_b

    .line 137
    const-string v11, ".zip.tmp"

    invoke-static {v9, v11, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v9

    .line 138
    .local v9, "temp":Ljava/io/File;
    const/4 v11, 0x0

    .line 140
    .local v11, "done":Z
    :try_start_0
    new-instance v12, Ljava/util/zip/ZipFile;

    invoke-direct {v12, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 141
    .local v12, "old":Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 142
    .local v13, "f":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v14, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v14, v13}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 143
    .local v14, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_3
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->size()I

    move-result v15

    move/from16 v16, v10

    const/4 v10, 0x3

    if-ne v15, v10, :cond_9

    .line 144
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 145
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v1, v17, -0x4

    .line 144
    const/16 v2, 0x9

    invoke-virtual {v10, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "original":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 147
    invoke-virtual {v12, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 148
    invoke-virtual {v12, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 150
    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/String;

    aput-object v1, v5, v16

    const/4 v2, 0x1

    aput-object v6, v5, v2

    const/4 v10, 0x2

    aput-object v0, v5, v10

    .line 151
    .local v5, "names":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v15, v16

    :goto_0
    if-ge v15, v0, :cond_2

    aget-object v17, v5, v15

    move-object/from16 v18, v17

    .line 152
    .local v18, "name":Ljava/lang/String;
    move/from16 v17, v2

    move-object/from16 v2, v18

    move/from16 v18, v10

    .end local v18    # "name":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v12, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v10

    move/from16 v19, v0

    const/16 v0, 0x2000

    invoke-static {v12, v10, v0}, Lcom/ahsim/demulation/RazorNativeUnitEvidence403;->readBounded(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;I)[B

    move-result-object v0

    .line 153
    .local v0, "data":[B
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v10, Ljava/lang/String;

    move-object/from16 v20, v1

    .end local v1    # "original":Ljava/lang/String;
    .local v20, "original":Ljava/lang/String;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v5

    .end local v5    # "names":[Ljava/lang/String;
    .local v21, "names":[Ljava/lang/String;
    const-string v5, "\"rom_sha256\":\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 155
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 156
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v5, "Legacy identity source ROM differs"

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v7    # "sourceName":Ljava/lang/String;
    .end local v8    # "result":Ljava/io/File;
    .end local v9    # "temp":Ljava/io/File;
    .end local v11    # "done":Z
    .end local v12    # "old":Ljava/util/zip/ZipFile;
    .end local v13    # "f":Ljava/io/FileOutputStream;
    .end local v14    # "out":Ljava/util/zip/ZipOutputStream;
    .end local p0    # "directory":Ljava/io/File;
    .end local p1    # "identity395":Ljava/io/File;
    .end local p2    # "unitJson":[B
    .end local p3    # "romSha":Ljava/lang/String;
    throw v1

    .line 153
    .end local v20    # "original":Ljava/lang/String;
    .end local v21    # "names":[Ljava/lang/String;
    .restart local v1    # "original":Ljava/lang/String;
    .restart local v5    # "names":[Ljava/lang/String;
    .restart local v7    # "sourceName":Ljava/lang/String;
    .restart local v8    # "result":Ljava/io/File;
    .restart local v9    # "temp":Ljava/io/File;
    .restart local v11    # "done":Z
    .restart local v12    # "old":Ljava/util/zip/ZipFile;
    .restart local v13    # "f":Ljava/io/FileOutputStream;
    .restart local v14    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local p0    # "directory":Ljava/io/File;
    .restart local p1    # "identity395":Ljava/io/File;
    .restart local p2    # "unitJson":[B
    .restart local p3    # "romSha":Ljava/lang/String;
    :cond_1
    move-object/from16 v20, v1

    move-object/from16 v21, v5

    .line 157
    .end local v1    # "original":Ljava/lang/String;
    .end local v5    # "names":[Ljava/lang/String;
    .restart local v20    # "original":Ljava/lang/String;
    .restart local v21    # "names":[Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v14, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {v14}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 151
    .end local v0    # "data":[B
    .end local v2    # "name":Ljava/lang/String;
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v17

    move/from16 v10, v18

    move/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v5, v21

    goto :goto_0

    .line 159
    .end local v20    # "original":Ljava/lang/String;
    .end local v21    # "names":[Ljava/lang/String;
    .restart local v1    # "original":Ljava/lang/String;
    .restart local v5    # "names":[Ljava/lang/String;
    :cond_2
    move-object/from16 v20, v1

    move/from16 v17, v2

    move-object/from16 v21, v5

    move/from16 v18, v10

    .end local v1    # "original":Ljava/lang/String;
    .end local v5    # "names":[Ljava/lang/String;
    .restart local v20    # "original":Ljava/lang/String;
    .restart local v21    # "names":[Ljava/lang/String;
    invoke-static {}, Lcom/ahsim/demulation/RazorNativeUnitEvidence403;->fieldDictionary()[B

    move-result-object v0

    const-string v1, "Android native initial-scenario UNIT record snapshot.\nNOT live Genesis 68000 RAM or live EMC state.\nNo gameplay ticks authorized.\n"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    filled-new-array {v3, v0, v1}, [[B

    move-result-object v0

    .line 163
    .local v0, "blocks":[[B
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "INITIAL_UNIT_STATE_403.json"

    aput-object v2, v1, v16

    const-string v2, "FIELD_DICTIONARY_403.json"

    aput-object v2, v1, v17

    const-string v2, "CAPTURE_KIND_403.txt"

    aput-object v2, v1, v18

    .line 165
    .local v1, "newNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v5, v1

    if-ge v2, v5, :cond_3

    .line 166
    new-instance v5, Ljava/util/zip/ZipEntry;

    aget-object v6, v1, v2

    invoke-direct {v5, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 167
    aget-object v5, v0, v2

    invoke-virtual {v14, v5}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {v14}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 169
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v14}, Ljava/util/zip/ZipOutputStream;->finish()V

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    .end local v0    # "blocks":[[B
    .end local v1    # "newNames":[Ljava/lang/String;
    .end local v20    # "original":Ljava/lang/String;
    .end local v21    # "names":[Ljava/lang/String;
    :try_start_4
    invoke-virtual {v14}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v14    # "out":Ljava/util/zip/ZipOutputStream;
    :try_start_5
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .end local v13    # "f":Ljava/io/FileOutputStream;
    :try_start_6
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V

    .line 171
    .end local v12    # "old":Ljava/util/zip/ZipFile;
    invoke-virtual {v9, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-eqz v0, :cond_5

    .line 172
    const/4 v0, 0x1

    .line 173
    .end local v11    # "done":Z
    .local v0, "done":Z
    if-nez v0, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 172
    :cond_4
    return-object v8

    .line 171
    .end local v0    # "done":Z
    .restart local v11    # "done":Z
    :cond_5
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot publish UNIT ZIP atomically"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v7    # "sourceName":Ljava/lang/String;
    .end local v8    # "result":Ljava/io/File;
    .end local v9    # "temp":Ljava/io/File;
    .end local v11    # "done":Z
    .end local p0    # "directory":Ljava/io/File;
    .end local p1    # "identity395":Ljava/io/File;
    .end local p2    # "unitJson":[B
    .end local p3    # "romSha":Ljava/lang/String;
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 148
    .local v1, "original":Ljava/lang/String;
    .restart local v7    # "sourceName":Ljava/lang/String;
    .restart local v8    # "result":Ljava/io/File;
    .restart local v9    # "temp":Ljava/io/File;
    .restart local v11    # "done":Z
    .restart local v12    # "old":Ljava/util/zip/ZipFile;
    .restart local v13    # "f":Ljava/io/FileOutputStream;
    .restart local v14    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local p0    # "directory":Ljava/io/File;
    .restart local p1    # "identity395":Ljava/io/File;
    .restart local p2    # "unitJson":[B
    .restart local p3    # "romSha":Ljava/lang/String;
    :cond_6
    move-object/from16 v20, v1

    .end local v1    # "original":Ljava/lang/String;
    .restart local v20    # "original":Ljava/lang/String;
    goto :goto_3

    .line 147
    .end local v20    # "original":Ljava/lang/String;
    .restart local v1    # "original":Ljava/lang/String;
    :cond_7
    move-object/from16 v20, v1

    .end local v1    # "original":Ljava/lang/String;
    .restart local v20    # "original":Ljava/lang/String;
    goto :goto_3

    .line 146
    .end local v20    # "original":Ljava/lang/String;
    .restart local v1    # "original":Ljava/lang/String;
    :cond_8
    move-object/from16 v20, v1

    .line 149
    .end local v1    # "original":Ljava/lang/String;
    .restart local v20    # "original":Ljava/lang/String;
    :goto_3
    :try_start_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing previous identity evidence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v7    # "sourceName":Ljava/lang/String;
    .end local v8    # "result":Ljava/io/File;
    .end local v9    # "temp":Ljava/io/File;
    .end local v11    # "done":Z
    .end local v12    # "old":Ljava/util/zip/ZipFile;
    .end local v13    # "f":Ljava/io/FileOutputStream;
    .end local v14    # "out":Ljava/util/zip/ZipOutputStream;
    .end local p0    # "directory":Ljava/io/File;
    .end local p1    # "identity395":Ljava/io/File;
    .end local p2    # "unitJson":[B
    .end local p3    # "romSha":Ljava/lang/String;
    throw v0

    .line 143
    .end local v20    # "original":Ljava/lang/String;
    .restart local v7    # "sourceName":Ljava/lang/String;
    .restart local v8    # "result":Ljava/io/File;
    .restart local v9    # "temp":Ljava/io/File;
    .restart local v11    # "done":Z
    .restart local v12    # "old":Ljava/util/zip/ZipFile;
    .restart local v13    # "f":Ljava/io/FileOutputStream;
    .restart local v14    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local p0    # "directory":Ljava/io/File;
    .restart local p1    # "identity395":Ljava/io/File;
    .restart local p2    # "unitJson":[B
    .restart local p3    # "romSha":Ljava/lang/String;
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unrecognized previous identity ZIP"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v7    # "sourceName":Ljava/lang/String;
    .end local v8    # "result":Ljava/io/File;
    .end local v9    # "temp":Ljava/io/File;
    .end local v11    # "done":Z
    .end local v12    # "old":Ljava/util/zip/ZipFile;
    .end local v13    # "f":Ljava/io/FileOutputStream;
    .end local v14    # "out":Ljava/util/zip/ZipOutputStream;
    .end local p0    # "directory":Ljava/io/File;
    .end local p1    # "identity395":Ljava/io/File;
    .end local p2    # "unitJson":[B
    .end local p3    # "romSha":Ljava/lang/String;
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 140
    .restart local v7    # "sourceName":Ljava/lang/String;
    .restart local v8    # "result":Ljava/io/File;
    .restart local v9    # "temp":Ljava/io/File;
    .restart local v11    # "done":Z
    .restart local v12    # "old":Ljava/util/zip/ZipFile;
    .restart local v13    # "f":Ljava/io/FileOutputStream;
    .restart local v14    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local p0    # "directory":Ljava/io/File;
    .restart local p1    # "identity395":Ljava/io/File;
    .restart local p2    # "unitJson":[B
    .restart local p3    # "romSha":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_9
    invoke-virtual {v14}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v7    # "sourceName":Ljava/lang/String;
    .end local v8    # "result":Ljava/io/File;
    .end local v9    # "temp":Ljava/io/File;
    .end local v11    # "done":Z
    .end local v12    # "old":Ljava/util/zip/ZipFile;
    .end local v13    # "f":Ljava/io/FileOutputStream;
    .end local p0    # "directory":Ljava/io/File;
    .end local p1    # "identity395":Ljava/io/File;
    .end local p2    # "unitJson":[B
    .end local p3    # "romSha":Ljava/lang/String;
    :goto_4
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .end local v14    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v7    # "sourceName":Ljava/lang/String;
    .restart local v8    # "result":Ljava/io/File;
    .restart local v9    # "temp":Ljava/io/File;
    .restart local v11    # "done":Z
    .restart local v12    # "old":Ljava/util/zip/ZipFile;
    .restart local v13    # "f":Ljava/io/FileOutputStream;
    .restart local p0    # "directory":Ljava/io/File;
    .restart local p1    # "identity395":Ljava/io/File;
    .restart local p2    # "unitJson":[B
    .restart local p3    # "romSha":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_b
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    :try_start_c
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v7    # "sourceName":Ljava/lang/String;
    .end local v8    # "result":Ljava/io/File;
    .end local v9    # "temp":Ljava/io/File;
    .end local v11    # "done":Z
    .end local v12    # "old":Ljava/util/zip/ZipFile;
    .end local p0    # "directory":Ljava/io/File;
    .end local p1    # "identity395":Ljava/io/File;
    .end local p2    # "unitJson":[B
    .end local p3    # "romSha":Ljava/lang/String;
    :goto_5
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .end local v13    # "f":Ljava/io/FileOutputStream;
    .restart local v7    # "sourceName":Ljava/lang/String;
    .restart local v8    # "result":Ljava/io/File;
    .restart local v9    # "temp":Ljava/io/File;
    .restart local v11    # "done":Z
    .restart local v12    # "old":Ljava/util/zip/ZipFile;
    .restart local p0    # "directory":Ljava/io/File;
    .restart local p1    # "identity395":Ljava/io/File;
    .restart local p2    # "unitJson":[B
    .restart local p3    # "romSha":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object v1, v0

    :try_start_d
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    :try_start_e
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v7    # "sourceName":Ljava/lang/String;
    .end local v8    # "result":Ljava/io/File;
    .end local v9    # "temp":Ljava/io/File;
    .end local v11    # "done":Z
    .end local p0    # "directory":Ljava/io/File;
    .end local p1    # "identity395":Ljava/io/File;
    .end local p2    # "unitJson":[B
    .end local p3    # "romSha":Ljava/lang/String;
    :goto_6
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 173
    .end local v12    # "old":Ljava/util/zip/ZipFile;
    .restart local v7    # "sourceName":Ljava/lang/String;
    .restart local v8    # "result":Ljava/io/File;
    .restart local v9    # "temp":Ljava/io/File;
    .restart local v11    # "done":Z
    .restart local p0    # "directory":Ljava/io/File;
    .restart local p1    # "identity395":Ljava/io/File;
    .restart local p2    # "unitJson":[B
    .restart local p3    # "romSha":Ljava/lang/String;
    :catchall_6
    move-exception v0

    if-nez v11, :cond_a

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_a
    throw v0

    .line 136
    .end local v9    # "temp":Ljava/io/File;
    .end local v11    # "done":Z
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor UNIT snapshot already published"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    .end local v7    # "sourceName":Ljava/lang/String;
    .end local v8    # "result":Ljava/io/File;
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid 403 envelope inputs"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
