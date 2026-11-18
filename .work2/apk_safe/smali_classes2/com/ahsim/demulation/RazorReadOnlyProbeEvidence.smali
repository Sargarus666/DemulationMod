.class public final Lcom/ahsim/demulation/RazorReadOnlyProbeEvidence;
.super Ljava/lang/Object;
.source "RazorReadOnlyProbeEvidence.java"


# static fields
.field public static final SCHEMA:Ljava/lang/String; = "demulation.razor.android-native-readonly-probe.v1"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode(Ljava/lang/String;IIIIIIIIZZ[I[I)[B
    .locals 20
    .param p0, "romSha256"    # Ljava/lang/String;
    .param p1, "variant"    # I
    .param p2, "house"    # I
    .param p3, "mission"    # I
    .param p4, "readSequence"    # I
    .param p5, "executedTicks"    # I
    .param p6, "units"    # I
    .param p7, "buildings"    # I
    .param p8, "missingCapabilityBits"    # I
    .param p9, "worldRetained"    # Z
    .param p10, "gameplayReady"    # Z
    .param p11, "firstSlice"    # [I
    .param p12, "boundary"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    if-eqz v0, :cond_7

    const-string v10, "[a-fA-F0-9]{64}"

    invoke-virtual {v0, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x4

    const/4 v11, 0x3

    if-eq v1, v11, :cond_0

    if-ne v1, v10, :cond_7

    :cond_0
    if-ltz v2, :cond_7

    if-gt v2, v10, :cond_7

    const/4 v12, 0x1

    if-lt v3, v12, :cond_7

    const/16 v13, 0x9

    if-gt v3, v13, :cond_7

    if-lez v4, :cond_7

    if-nez p5, :cond_7

    if-ltz v5, :cond_7

    const/16 v13, 0x800

    if-gt v5, v13, :cond_7

    if-ltz v6, :cond_7

    if-gt v6, v13, :cond_7

    const/16 v13, 0x3f

    if-ne v7, v13, :cond_7

    if-eqz p9, :cond_7

    if-nez p10, :cond_7

    if-nez v8, :cond_1

    move v14, v12

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    :goto_0
    if-nez v9, :cond_2

    move v15, v12

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    :goto_1
    if-ne v14, v15, :cond_7

    .line 37
    const/4 v15, 0x6

    const/16 v16, 0x2

    if-eqz v8, :cond_4

    move/from16 v17, v11

    array-length v11, v8

    const/16 v18, 0x0

    const/16 v13, 0x8

    if-ne v11, v13, :cond_3

    array-length v11, v9

    if-ne v11, v10, :cond_3

    if-eqz v5, :cond_3

    aget v11, v8, v18

    if-ltz v11, :cond_3

    aget v11, v8, v18

    const/16 v13, 0x1f

    if-gt v11, v13, :cond_3

    aget v11, v8, v12

    if-ltz v11, :cond_3

    aget v11, v8, v12

    const/16 v13, 0x1a

    if-gt v11, v13, :cond_3

    aget v11, v8, v16

    if-ltz v11, :cond_3

    aget v11, v8, v17

    if-ltz v11, :cond_3

    aget v11, v8, v16

    const v13, 0xffff

    if-gt v11, v13, :cond_3

    aget v11, v8, v17

    if-gt v11, v13, :cond_3

    aget v11, v8, v10

    if-ltz v11, :cond_3

    aget v11, v8, v10

    const/16 v19, 0x5

    const/16 v14, 0x18

    if-gt v11, v14, :cond_3

    aget v11, v8, v19

    if-lt v11, v12, :cond_3

    aget v11, v8, v19

    if-gt v11, v10, :cond_3

    aget v11, v8, v15

    if-ltz v11, :cond_3

    aget v11, v8, v15

    const/16 v14, 0x40

    if-ge v11, v14, :cond_3

    aget v11, v9, v18

    aget v14, v8, v15

    if-ne v11, v14, :cond_3

    aget v11, v9, v12

    if-ltz v11, :cond_3

    aget v11, v9, v12

    const v14, 0xffffff

    if-gt v11, v14, :cond_3

    aget v11, v9, v16

    if-ltz v11, :cond_3

    aget v11, v9, v16

    const/16 v14, 0xf

    if-gt v11, v14, :cond_3

    aget v11, v9, v17

    if-ltz v11, :cond_3

    aget v11, v9, v17

    if-gt v11, v13, :cond_3

    goto :goto_2

    .line 49
    :cond_3
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Invalid first-unit witness: fail closed"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 37
    :cond_4
    move/from16 v17, v11

    const/16 v18, 0x0

    const/16 v19, 0x5

    .line 50
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v13, 0x280

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 51
    .local v11, "j":Ljava/lang/StringBuilder;
    const-string v13, "{\n  \"schema\":\""

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "demulation.razor.android-native-readonly-probe.v1"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 52
    const-string v14, "\",\n  \"stage\":\"0.4.393\","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 53
    const-string v14, "\n  \"source\":\"Android native Razor diagnostic world\","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 54
    const-string v14, "\n  \"memory_model\":\"native host summary (NOT Genesis 68000 RAM)\","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 55
    const-string v14, "\n  \"rom_sha256\":\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 56
    invoke-virtual {v0, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 57
    const-string v14, "\n  \"variant_mib\":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 58
    const-string v14, ",\n  \"house\":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 59
    const-string v14, ",\n  \"mission\":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 60
    const-string v14, ",\n  \"read_sequence\":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 61
    const-string v14, ",\n  \"units\":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 62
    const-string v14, ",\n  \"buildings\":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 63
    const-string v14, ",\n  \"missing_capability_bits\":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 64
    const-string v14, ",\n  \"executed_game_ticks\":0,"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 65
    const-string v14, "\n  \"gameplay_authorized\":false,"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 66
    const-string v14, "\n  \"genesis_68k_ram_exported\":false,"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 67
    const-string v14, "\n  \"original_cpu_trace_captured\":false,"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 68
    const-string v14, "\n  \"capture_provenance_authenticated\":false,"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 69
    const-string v14, "\n  \"native_callback_executed\":false,"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 70
    const-string v14, "\n  \"first_unit\":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    if-nez v8, :cond_5

    const-string v10, "null"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 73
    :cond_5
    const-string v13, "{\"source_type\":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget v14, v8, v18

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 74
    const-string v14, ",\"script_entry\":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget v14, v8, v12

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 75
    const-string v14, ",\"start_pc\":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget v14, v8, v16

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 76
    const-string v14, ",\"stop_pc\":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget v14, v8, v17

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 77
    const-string v14, ",\"instructions_executed_in_isolation\":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget v10, v8, v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 78
    const-string v13, ",\"stop_reason\":"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v13, v8, v19

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 79
    const-string v13, ",\"pending_function\":"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v13, v8, v15

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 80
    const-string v13, ",\"vm_error\":"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v13, 0x7

    aget v13, v8, v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 81
    const-string v13, ",\"rom_handler_pc\":"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v12, v9, v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 82
    const-string v12, ",\"emc_stack_depth\":"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v12, v9, v16

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 83
    const-string v12, ",\"emc_return_word\":"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v12, v9, v17

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 84
    const-string v12, ",\"native_context_authorized\":false}"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :goto_3
    const-string v10, "\n}\n"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    .line 88
    .local v10, "bytes":[B
    array-length v12, v10

    const/16 v13, 0x1000

    if-gt v12, v13, :cond_6

    .line 89
    return-object v10

    .line 88
    :cond_6
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Razor probe export exceeds bound"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 36
    .end local v10    # "bytes":[B
    .end local v11    # "j":Ljava/lang/StringBuilder;
    :cond_7
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Unsafe or incomplete Razor read-only observation"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public static write(Ljava/io/File;Ljava/lang/String;III[B)Ljava/io/File;
    .locals 10
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "romSha256"    # Ljava/lang/String;
    .param p2, "house"    # I
    .param p3, "mission"    # I
    .param p4, "readSequence"    # I
    .param p5, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    .line 96
    const-string v0, "[a-fA-F0-9]{64}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-ltz p2, :cond_7

    const/4 v0, 0x4

    if-gt p2, v0, :cond_7

    const/4 v0, 0x1

    if-lt p3, v0, :cond_7

    const/16 v0, 0x9

    if-gt p3, v0, :cond_7

    if-lez p4, :cond_7

    if-eqz p5, :cond_7

    array-length v0, p5

    if-eqz v0, :cond_7

    array-length v0, p5

    const/16 v1, 0x1000

    if-gt v0, v1, :cond_7

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "razor393_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_h"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_m"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "fileName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 105
    .local v2, "destination":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 106
    .local v3, "time":J
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_0
    const/16 v6, 0x64

    if-ge v5, v6, :cond_2

    .line 107
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v5, :cond_0

    const-string v8, ""

    goto :goto_1

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".json"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    .local v6, "candidate":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    move-object v2, v6

    goto :goto_2

    .line 106
    .end local v6    # "candidate":Ljava/io/File;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 110
    .end local v5    # "n":I
    :cond_2
    :goto_2
    if-eqz v2, :cond_6

    .line 111
    const-string v5, ".tmp"

    invoke-static {v1, v5, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 112
    .local v1, "temp":Ljava/io/File;
    const/4 v5, 0x0

    .line 114
    .local v5, "published":Z
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 115
    .local v6, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v6, p5}, Ljava/io/FileOutputStream;->write([B)V

    .line 116
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 119
    .end local v6    # "out":Ljava/io/FileOutputStream;
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v6, :cond_4

    .line 120
    const/4 v5, 0x1

    .line 121
    nop

    .line 123
    if-nez v5, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 121
    :cond_3
    return-object v2

    .line 119
    :cond_4
    :try_start_3
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Razor evidence atomic rename failed"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "temp":Ljava/io/File;
    .end local v2    # "destination":Ljava/io/File;
    .end local v3    # "time":J
    .end local v5    # "published":Z
    .end local p0    # "directory":Ljava/io/File;
    .end local p1    # "romSha256":Ljava/lang/String;
    .end local p2    # "house":I
    .end local p3    # "mission":I
    .end local p4    # "readSequence":I
    .end local p5    # "bytes":[B
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 114
    .restart local v0    # "fileName":Ljava/lang/String;
    .restart local v1    # "temp":Ljava/io/File;
    .restart local v2    # "destination":Ljava/io/File;
    .restart local v3    # "time":J
    .restart local v5    # "published":Z
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    .restart local p0    # "directory":Ljava/io/File;
    .restart local p1    # "romSha256":Ljava/lang/String;
    .restart local p2    # "house":I
    .restart local p3    # "mission":I
    .restart local p4    # "readSequence":I
    .restart local p5    # "bytes":[B
    :catchall_0
    move-exception v7

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v8

    :try_start_5
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "temp":Ljava/io/File;
    .end local v2    # "destination":Ljava/io/File;
    .end local v3    # "time":J
    .end local v5    # "published":Z
    .end local p0    # "directory":Ljava/io/File;
    .end local p1    # "romSha256":Ljava/lang/String;
    .end local p2    # "house":I
    .end local p3    # "mission":I
    .end local p4    # "readSequence":I
    .end local p5    # "bytes":[B
    :goto_3
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 123
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "fileName":Ljava/lang/String;
    .restart local v1    # "temp":Ljava/io/File;
    .restart local v2    # "destination":Ljava/io/File;
    .restart local v3    # "time":J
    .restart local v5    # "published":Z
    .restart local p0    # "directory":Ljava/io/File;
    .restart local p1    # "romSha256":Ljava/lang/String;
    .restart local p2    # "house":I
    .restart local p3    # "mission":I
    .restart local p4    # "readSequence":I
    .restart local p5    # "bytes":[B
    :catchall_2
    move-exception v6

    if-nez v5, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 124
    :cond_5
    throw v6

    .line 110
    .end local v1    # "temp":Ljava/io/File;
    .end local v5    # "published":Z
    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string v5, "Razor diagnostic name collision"

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v2    # "destination":Ljava/io/File;
    .end local v3    # "time":J
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid Razor diagnostic destination"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zipForSharing(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 7
    .param p0, "diagnosticDirectory"    # Ljava/io/File;
    .param p1, "jsonFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 131
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_4

    .line 132
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "razor393_[a-f0-9]{12}_h[0-4]_m[1-9]_r[0-9]+_t[0-9]+(_[0-9]+)?[.]json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x1000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    .line 135
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    .local v0, "target":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 138
    const-string v1, "razor393_"

    const-string v2, ".zip.tmp"

    invoke-static {v1, v2, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 139
    .local v1, "temp":Ljava/io/File;
    const/4 v2, 0x0

    .line 141
    .local v2, "published":Z
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 142
    .local v3, "raw":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 143
    .local v4, "zip":Ljava/util/zip/ZipOutputStream;
    :try_start_2
    new-instance v5, Ljava/util/zip/ZipEntry;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 144
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-static {v5}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 145
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 146
    new-instance v5, Ljava/util/zip/ZipEntry;

    const-string v6, "CAPTURE_KIND.txt"

    invoke-direct {v5, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 147
    const-string v5, "Android native read-only Razor diagnostic.\nNOT original Genesis 68000 RAM or BizHawk CPU trace.\nNo native callbacks or game ticks were executed.\n"

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 150
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 147
    invoke-virtual {v4, v5}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 151
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 152
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 153
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v4    # "zip":Ljava/util/zip/ZipOutputStream;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 155
    .end local v3    # "raw":Ljava/io/FileOutputStream;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v3, :cond_1

    .line 156
    const/4 v2, 0x1

    .line 157
    nop

    .line 159
    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 157
    :cond_0
    return-object v0

    .line 155
    :cond_1
    :try_start_5
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Razor diagnostic ZIP publication failed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "target":Ljava/io/File;
    .end local v1    # "temp":Ljava/io/File;
    .end local v2    # "published":Z
    .end local p0    # "diagnosticDirectory":Ljava/io/File;
    .end local p1    # "jsonFile":Ljava/io/File;
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 141
    .restart local v0    # "target":Ljava/io/File;
    .restart local v1    # "temp":Ljava/io/File;
    .restart local v2    # "published":Z
    .restart local v3    # "raw":Ljava/io/FileOutputStream;
    .restart local v4    # "zip":Ljava/util/zip/ZipOutputStream;
    .restart local p0    # "diagnosticDirectory":Ljava/io/File;
    .restart local p1    # "jsonFile":Ljava/io/File;
    :catchall_0
    move-exception v5

    :try_start_6
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    :try_start_7
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "target":Ljava/io/File;
    .end local v1    # "temp":Ljava/io/File;
    .end local v2    # "published":Z
    .end local v3    # "raw":Ljava/io/FileOutputStream;
    .end local p0    # "diagnosticDirectory":Ljava/io/File;
    .end local p1    # "jsonFile":Ljava/io/File;
    :goto_0
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v4    # "zip":Ljava/util/zip/ZipOutputStream;
    .restart local v0    # "target":Ljava/io/File;
    .restart local v1    # "temp":Ljava/io/File;
    .restart local v2    # "published":Z
    .restart local v3    # "raw":Ljava/io/FileOutputStream;
    .restart local p0    # "diagnosticDirectory":Ljava/io/File;
    .restart local p1    # "jsonFile":Ljava/io/File;
    :catchall_2
    move-exception v4

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v5

    :try_start_9
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "target":Ljava/io/File;
    .end local v1    # "temp":Ljava/io/File;
    .end local v2    # "published":Z
    .end local p0    # "diagnosticDirectory":Ljava/io/File;
    .end local p1    # "jsonFile":Ljava/io/File;
    :goto_1
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 159
    .end local v3    # "raw":Ljava/io/FileOutputStream;
    .restart local v0    # "target":Ljava/io/File;
    .restart local v1    # "temp":Ljava/io/File;
    .restart local v2    # "published":Z
    .restart local p0    # "diagnosticDirectory":Ljava/io/File;
    .restart local p1    # "jsonFile":Ljava/io/File;
    :catchall_4
    move-exception v3

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 160
    :cond_2
    throw v3

    .line 137
    .end local v1    # "temp":Ljava/io/File;
    .end local v2    # "published":Z
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Diagnostic ZIP already exists"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    .end local v0    # "target":Ljava/io/File;
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsafe Razor diagnostic archive input"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
