.class public final Lcom/ahsim/demulation/RazorOneUnitIdentityEvidence;
.super Ljava/lang/Object;
.source "RazorOneUnitIdentityEvidence.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode([B[I[BLjava/lang/String;II)[B
    .locals 21
    .param p0, "prior"    # [B
    .param p1, "unit"    # [I
    .param p2, "scenario"    # [B
    .param p3, "romSha"    # Ljava/lang/String;
    .param p4, "house"    # I
    .param p5, "mission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    if-eqz v0, :cond_2

    array-length v6, v0

    const/4 v7, 0x1

    if-lt v6, v7, :cond_2

    array-length v6, v0

    const/16 v8, 0x1000

    if-gt v6, v8, :cond_2

    if-eqz v2, :cond_2

    array-length v6, v2

    const/4 v8, 0x4

    if-lt v6, v8, :cond_2

    array-length v6, v2

    const/high16 v9, 0x10000

    if-gt v6, v9, :cond_2

    if-eqz v3, :cond_2

    .line 29
    const-string v6, "[a-fA-F0-9]{64}"

    invoke-virtual {v3, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-ltz v4, :cond_2

    if-gt v4, v8, :cond_2

    if-lt v5, v7, :cond_2

    const/16 v6, 0x9

    if-gt v5, v6, :cond_2

    if-eqz v1, :cond_2

    array-length v9, v1

    const/16 v10, 0xb

    if-ne v9, v10, :cond_2

    const/4 v9, 0x0

    aget v10, v1, v9

    if-nez v10, :cond_2

    aget v10, v1, v7

    if-ltz v10, :cond_2

    aget v10, v1, v7

    const/16 v11, 0xff

    if-gt v10, v11, :cond_2

    const/4 v10, 0x2

    aget v11, v1, v10

    if-ltz v11, :cond_2

    aget v11, v1, v10

    const/4 v12, 0x5

    if-ge v11, v12, :cond_2

    const/4 v11, 0x3

    aget v13, v1, v11

    if-ltz v13, :cond_2

    aget v13, v1, v11

    const/16 v14, 0x20

    if-ge v13, v14, :cond_2

    const/4 v13, 0x7

    aget v15, v1, v13

    move/from16 v16, v6

    const/16 v6, 0x40

    move/from16 v17, v8

    const/16 v8, 0x80

    if-eq v15, v14, :cond_0

    aget v14, v1, v13

    if-eq v14, v6, :cond_0

    aget v14, v1, v13

    if-ne v14, v8, :cond_2

    :cond_0
    const/16 v14, 0x8

    aget v15, v1, v14

    if-lt v15, v7, :cond_2

    aget v15, v1, v14

    if-gt v15, v8, :cond_2

    aget v15, v1, v16

    if-lt v15, v7, :cond_2

    aget v15, v1, v16

    if-gt v15, v8, :cond_2

    aget v15, v1, v17

    if-ltz v15, :cond_2

    aget v15, v1, v17

    aget v6, v1, v14

    if-ge v15, v6, :cond_2

    aget v6, v1, v12

    if-ltz v6, :cond_2

    aget v6, v1, v12

    aget v15, v1, v16

    if-ge v6, v15, :cond_2

    const/4 v6, 0x6

    aget v15, v1, v6

    if-ltz v15, :cond_2

    aget v15, v1, v6

    move/from16 v18, v6

    const/16 v6, 0x3fff

    if-gt v15, v6, :cond_2

    const/16 v6, 0xa

    aget v15, v1, v6

    if-lt v15, v7, :cond_2

    aget v15, v1, v6

    if-gt v15, v8, :cond_2

    aget v15, v1, v18

    aget v19, v1, v12

    .line 37
    move/from16 v20, v6

    aget v6, v1, v13

    if-ne v6, v8, :cond_1

    move v6, v8

    goto :goto_0

    :cond_1
    const/16 v6, 0x40

    :goto_0
    mul-int v19, v19, v6

    aget v6, v1, v17

    add-int v6, v19, v6

    if-ne v15, v6, :cond_2

    .line 39
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "{\"schema\":\"demulation.razor.395.scenario-first-unit.v1\",\"rom_sha256\":\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 40
    invoke-virtual {v3, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\",\"house\":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ",\"mission\":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ",\"legacy_evidence_sha256\":\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 42
    invoke-static {v0}, Lcom/ahsim/demulation/RazorOneUnitIdentityEvidence;->sha([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\",\"scenario_sha256\":\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 43
    invoke-static {v2}, Lcom/ahsim/demulation/RazorOneUnitIdentityEvidence;->sha([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\",\"source_unit_ordinal\":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v8, v1, v9

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ",\"source_record_tag\":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v1, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",\"source_owner\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v1, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",\"source_type\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v1, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",\"tile_x\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v1, v17

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",\"tile_y\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v1, v12

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",\"source_packed_tile\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v1, v18

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",\"stored_side\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v1, v13

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",\"map_width\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v1, v14

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",\"map_height\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v1, v16

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",\"scenario_unit_count\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v1, v20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",\"emulator_runtime_identity_proven\":false,\"native_to_68k_slot_mapping_proven\":false,\"original_68k_trace_captured\":false,\"game_ticks_authorized\":false}\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, "text":Ljava/lang/String;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    return-object v7

    .line 38
    .end local v6    # "text":Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Invalid source UNIT identity / scenario witness"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private static sha([B)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 20
    .local v0, "h":[B
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 21
    .local v1, "out":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v0, v3

    .local v4, "b":B
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

    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 23
    .end local v0    # "h":[B
    .end local v1    # "out":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static writeEnvelope(Ljava/io/File;Ljava/io/File;[B[I[BLjava/lang/String;II)Ljava/io/File;
    .locals 9
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "original"    # Ljava/io/File;
    .param p2, "originalBytes"    # [B
    .param p3, "unit"    # [I
    .param p4, "scenario"    # [B
    .param p5, "romSha"    # Ljava/lang/String;
    .param p6, "house"    # I
    .param p7, "mission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 63
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "razor393_[a-f0-9]{12}_h[0-4]_m[1-9]_r[1-9][0-9]*_t[0-9]+(_[0-9]+)?[.]json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 66
    invoke-static/range {p2 .. p7}, Lcom/ahsim/demulation/RazorOneUnitIdentityEvidence;->encode([B[I[BLjava/lang/String;II)[B

    move-result-object v1

    .line 67
    .local v1, "identity":[B
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "base":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "razor395_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".zip"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v0

    .line 69
    .local v3, "target":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 70
    const-string v0, ".zip.tmp"

    invoke-static {v4, v0, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 71
    .local v4, "temp":Ljava/io/File;
    const/4 v5, 0x0

    .line 73
    .local v5, "published":Z
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v6, v0

    .line 74
    .local v6, "raw":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v0, v6}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v7, v0

    .line 75
    .local v7, "zip":Ljava/util/zip/ZipOutputStream;
    :try_start_2
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 76
    invoke-virtual {v7, p2}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 77
    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string v8, "ONE_UNIT_IDENTITY_395.json"

    invoke-direct {v0, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 78
    invoke-virtual {v7, v1}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 79
    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string v8, "CAPTURE_KIND_395.txt"

    invoke-direct {v0, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 80
    const-string v0, "Android native initial-scenario UNIT identity, read-only.\nNOT Genesis 68K runtime object identity or CPU trace.\nNo gameplay ticks authorized.\n"

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 82
    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 80
    invoke-virtual {v7, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 83
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->finish()V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    :try_start_3
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v7    # "zip":Ljava/util/zip/ZipOutputStream;
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 85
    .end local v6    # "raw":Ljava/io/FileOutputStream;
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v0, :cond_1

    .line 86
    const/4 v0, 0x1

    .line 87
    .end local v5    # "published":Z
    .local v0, "published":Z
    nop

    .line 88
    if-nez v0, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 87
    :cond_0
    return-object v3

    .line 85
    .end local v0    # "published":Z
    .restart local v5    # "published":Z
    :cond_1
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Failed atomic 395 envelope commit"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "identity":[B
    .end local v2    # "base":Ljava/lang/String;
    .end local v3    # "target":Ljava/io/File;
    .end local v4    # "temp":Ljava/io/File;
    .end local v5    # "published":Z
    .end local p0    # "directory":Ljava/io/File;
    .end local p1    # "original":Ljava/io/File;
    .end local p2    # "originalBytes":[B
    .end local p3    # "unit":[I
    .end local p4    # "scenario":[B
    .end local p5    # "romSha":Ljava/lang/String;
    .end local p6    # "house":I
    .end local p7    # "mission":I
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 73
    .restart local v1    # "identity":[B
    .restart local v2    # "base":Ljava/lang/String;
    .restart local v3    # "target":Ljava/io/File;
    .restart local v4    # "temp":Ljava/io/File;
    .restart local v5    # "published":Z
    .restart local v6    # "raw":Ljava/io/FileOutputStream;
    .restart local v7    # "zip":Ljava/util/zip/ZipOutputStream;
    .restart local p0    # "directory":Ljava/io/File;
    .restart local p1    # "original":Ljava/io/File;
    .restart local p2    # "originalBytes":[B
    .restart local p3    # "unit":[I
    .restart local p4    # "scenario":[B
    .restart local p5    # "romSha":Ljava/lang/String;
    .restart local p6    # "house":I
    .restart local p7    # "mission":I
    :catchall_0
    move-exception v0

    move-object v8, v0

    :try_start_6
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_7
    invoke-virtual {v8, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "identity":[B
    .end local v2    # "base":Ljava/lang/String;
    .end local v3    # "target":Ljava/io/File;
    .end local v4    # "temp":Ljava/io/File;
    .end local v5    # "published":Z
    .end local v6    # "raw":Ljava/io/FileOutputStream;
    .end local p0    # "directory":Ljava/io/File;
    .end local p1    # "original":Ljava/io/File;
    .end local p2    # "originalBytes":[B
    .end local p3    # "unit":[I
    .end local p4    # "scenario":[B
    .end local p5    # "romSha":Ljava/lang/String;
    .end local p6    # "house":I
    .end local p7    # "mission":I
    :goto_0
    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v7    # "zip":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "identity":[B
    .restart local v2    # "base":Ljava/lang/String;
    .restart local v3    # "target":Ljava/io/File;
    .restart local v4    # "temp":Ljava/io/File;
    .restart local v5    # "published":Z
    .restart local v6    # "raw":Ljava/io/FileOutputStream;
    .restart local p0    # "directory":Ljava/io/File;
    .restart local p1    # "original":Ljava/io/File;
    .restart local p2    # "originalBytes":[B
    .restart local p3    # "unit":[I
    .restart local p4    # "scenario":[B
    .restart local p5    # "romSha":Ljava/lang/String;
    .restart local p6    # "house":I
    .restart local p7    # "mission":I
    :catchall_2
    move-exception v0

    move-object v7, v0

    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "identity":[B
    .end local v2    # "base":Ljava/lang/String;
    .end local v3    # "target":Ljava/io/File;
    .end local v4    # "temp":Ljava/io/File;
    .end local v5    # "published":Z
    .end local p0    # "directory":Ljava/io/File;
    .end local p1    # "original":Ljava/io/File;
    .end local p2    # "originalBytes":[B
    .end local p3    # "unit":[I
    .end local p4    # "scenario":[B
    .end local p5    # "romSha":Ljava/lang/String;
    .end local p6    # "house":I
    .end local p7    # "mission":I
    :goto_1
    throw v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 88
    .end local v6    # "raw":Ljava/io/FileOutputStream;
    .restart local v1    # "identity":[B
    .restart local v2    # "base":Ljava/lang/String;
    .restart local v3    # "target":Ljava/io/File;
    .restart local v4    # "temp":Ljava/io/File;
    .restart local v5    # "published":Z
    .restart local p0    # "directory":Ljava/io/File;
    .restart local p1    # "original":Ljava/io/File;
    .restart local p2    # "originalBytes":[B
    .restart local p3    # "unit":[I
    .restart local p4    # "scenario":[B
    .restart local p5    # "romSha":Ljava/lang/String;
    .restart local p6    # "house":I
    .restart local p7    # "mission":I
    :catchall_4
    move-exception v0

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_2
    throw v0

    .line 69
    .end local v4    # "temp":Ljava/io/File;
    .end local v5    # "published":Z
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Razor identity envelope exists"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    .end local v1    # "identity":[B
    .end local v2    # "base":Ljava/lang/String;
    .end local v3    # "target":Ljava/io/File;
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unrecognized legacy Razor evidence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
