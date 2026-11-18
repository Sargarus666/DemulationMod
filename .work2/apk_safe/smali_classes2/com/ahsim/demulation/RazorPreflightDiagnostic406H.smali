.class public final Lcom/ahsim/demulation/RazorPreflightDiagnostic406H;
.super Ljava/lang/Object;
.source "RazorPreflightDiagnostic406H.java"


# static fields
.field public static final SCHEMA:Ljava/lang/String; = "demulation.razor.preview-preflight.v1"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/io/File;Ljava/lang/String;IIIIIILjava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 16
    .param p0, "diagnosticsDir"    # Ljava/io/File;
    .param p1, "romSha256"    # Ljava/lang/String;
    .param p2, "romVariantMiB"    # I
    .param p3, "house"    # I
    .param p4, "mission"    # I
    .param p5, "units"    # I
    .param p6, "buildings"    # I
    .param p7, "terrainMarkers"    # I
    .param p8, "probeStatus"    # Ljava/lang/String;
    .param p9, "failure"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_0
    if-eqz v2, :cond_8

    .line 24
    const-string v0, "[0-9a-fA-F]{64}"

    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    const/4 v10, 0x4

    if-eq v3, v0, :cond_1

    if-ne v3, v10, :cond_8

    :cond_1
    if-ltz v4, :cond_8

    if-gt v4, v10, :cond_8

    const/4 v0, 0x1

    if-lt v5, v0, :cond_8

    const/16 v0, 0x9

    if-gt v5, v0, :cond_8

    const/4 v0, -0x1

    if-lt v6, v0, :cond_8

    if-lt v7, v0, :cond_8

    if-lt v8, v0, :cond_8

    .line 28
    const-string v0, "NOT_RUN"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "IN_PROGRESS"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 29
    const-string v0, "FAILED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "EXPORT_FAILED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 31
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "{\n  \"schema\":\"demulation.razor.preview-preflight.v1\",\n  \"capture_kind\":\"PRECHECK_ONLY_NOT_NATIVE_WITNESS\",\n  \"stage\":\"0.4.406H\",\n  \"rom_sha256\":\""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 35
    invoke-virtual {v2, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "\",\n  \"variant_mib\":"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ",\n  \"house\":"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ",\n  \"mission\":"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ",\n  \"preview_source_units\":"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ",\n  \"preview_source_buildings\":"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ",\n  \"preview_terrain_markers\":"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ",\n  \"native_probe_status\":\""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "\",\n  \"probe_error\":\""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 43
    if-nez p9, :cond_3

    const-string v10, ""

    goto :goto_0

    :cond_3
    move-object/from16 v10, p9

    :goto_0
    invoke-static {v10}, Lcom/ahsim/demulation/RazorPreflightDiagnostic406H;->escapeJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "\",\n  \"emc_runtime_observed\":false,\n  \"original_cpu_trace_captured\":false,\n  \"executed_game_ticks\":0,\n  \"gameplay_authorized\":false\n}\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 49
    .local v10, "json":Ljava/lang/String;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    .line 50
    .local v11, "jsonBytes":[B
    array-length v0, v11

    const/16 v12, 0x2000

    if-gt v0, v12, :cond_7

    .line 51
    const-string v0, "razor406h_"

    const-string v12, ".tmp"

    invoke-static {v0, v12, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v13

    .line 53
    .local v13, "tmp":Ljava/io/File;
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v14}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v14, v0

    .line 54
    .local v14, "zip":Ljava/util/zip/ZipOutputStream;
    :try_start_1
    const-string v0, "RAZOR_PREFLIGHT_406H.json"

    invoke-static {v14, v0, v11}, Lcom/ahsim/demulation/RazorPreflightDiagnostic406H;->entry(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[B)V

    .line 55
    const-string v0, "README.txt"

    const-string v15, "PRECHECK ONLY: this archive records preview source and whether native probe was attempted. It is NOT a Razor 68000 witness and cannot authorize gameplay ticks.\n"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 58
    invoke-virtual {v15, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 55
    invoke-static {v14, v0, v2}, Lcom/ahsim/demulation/RazorPreflightDiagnostic406H;->entry(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    invoke-virtual {v14}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 60
    .end local v14    # "zip":Ljava/util/zip/ZipOutputStream;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v14, ".zip"

    invoke-virtual {v2, v12, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    .local v0, "published":Ljava/io/File;
    invoke-virtual {v13, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_5

    .line 62
    nop

    .line 64
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 62
    :cond_4
    return-object v0

    .line 61
    :cond_5
    :try_start_3
    new-instance v2, Ljava/io/IOException;

    const-string v12, "Failed to publish Razor preflight ZIP"

    invoke-direct {v2, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v10    # "json":Ljava/lang/String;
    .end local v11    # "jsonBytes":[B
    .end local v13    # "tmp":Ljava/io/File;
    .end local p0    # "diagnosticsDir":Ljava/io/File;
    .end local p1    # "romSha256":Ljava/lang/String;
    .end local p2    # "romVariantMiB":I
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "units":I
    .end local p6    # "buildings":I
    .end local p7    # "terrainMarkers":I
    .end local p8    # "probeStatus":Ljava/lang/String;
    .end local p9    # "failure":Ljava/lang/String;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 53
    .end local v0    # "published":Ljava/io/File;
    .restart local v10    # "json":Ljava/lang/String;
    .restart local v11    # "jsonBytes":[B
    .restart local v13    # "tmp":Ljava/io/File;
    .restart local v14    # "zip":Ljava/util/zip/ZipOutputStream;
    .restart local p0    # "diagnosticsDir":Ljava/io/File;
    .restart local p1    # "romSha256":Ljava/lang/String;
    .restart local p2    # "romVariantMiB":I
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "units":I
    .restart local p6    # "buildings":I
    .restart local p7    # "terrainMarkers":I
    .restart local p8    # "probeStatus":Ljava/lang/String;
    .restart local p9    # "failure":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-virtual {v14}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v10    # "json":Ljava/lang/String;
    .end local v11    # "jsonBytes":[B
    .end local v13    # "tmp":Ljava/io/File;
    .end local p0    # "diagnosticsDir":Ljava/io/File;
    .end local p1    # "romSha256":Ljava/lang/String;
    .end local p2    # "romVariantMiB":I
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "units":I
    .end local p6    # "buildings":I
    .end local p7    # "terrainMarkers":I
    .end local p8    # "probeStatus":Ljava/lang/String;
    .end local p9    # "failure":Ljava/lang/String;
    :goto_1
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 64
    .end local v14    # "zip":Ljava/util/zip/ZipOutputStream;
    .restart local v10    # "json":Ljava/lang/String;
    .restart local v11    # "jsonBytes":[B
    .restart local v13    # "tmp":Ljava/io/File;
    .restart local p0    # "diagnosticsDir":Ljava/io/File;
    .restart local p1    # "romSha256":Ljava/lang/String;
    .restart local p2    # "romVariantMiB":I
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "units":I
    .restart local p6    # "buildings":I
    .restart local p7    # "terrainMarkers":I
    .restart local p8    # "probeStatus":Ljava/lang/String;
    .restart local p9    # "failure":Ljava/lang/String;
    :catchall_2
    move-exception v0

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 65
    :cond_6
    throw v0

    .line 50
    .end local v13    # "tmp":Ljava/io/File;
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Razor preflight details exceed limit"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    .end local v10    # "json":Ljava/lang/String;
    .end local v11    # "jsonBytes":[B
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid Razor preflight evidence source"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static entry(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[B)V
    .locals 1
    .param p0, "zip"    # Ljava/util/zip/ZipOutputStream;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 71
    invoke-virtual {p0, p2}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 72
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 73
    return-void
.end method

.method private static escapeJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "raw"    # Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v0, "escaped":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    const/16 v2, 0x400

    if-ge v1, v2, :cond_6

    .line 78
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 79
    .local v2, "c":C
    const/16 v3, 0x5c

    if-eq v2, v3, :cond_5

    const/16 v4, 0x22

    if-ne v2, v4, :cond_0

    goto :goto_1

    .line 80
    :cond_0
    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    const-string v3, "\\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 81
    :cond_1
    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    const-string v3, "\\r"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 82
    :cond_2
    const/16 v3, 0x9

    if-ne v2, v3, :cond_3

    const-string v3, "\\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 83
    :cond_3
    const/16 v3, 0x20

    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 84
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 79
    :cond_5
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    .end local v2    # "c":C
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "i":I
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
