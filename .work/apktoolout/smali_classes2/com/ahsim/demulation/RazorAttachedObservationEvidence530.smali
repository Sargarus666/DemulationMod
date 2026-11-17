.class public final Lcom/ahsim/demulation/RazorAttachedObservationEvidence530;
.super Ljava/lang/Object;
.source "RazorAttachedObservationEvidence530.java"


# static fields
.field private static final ENTRY:Ljava/lang/String; = "razor_attached_emc530.json"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode([ILjava/lang/String;II)[B
    .locals 4
    .param p0, "w"    # [I
    .param p1, "sha"    # Ljava/lang/String;
    .param p2, "house"    # I
    .param p3, "mission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    if-eqz p0, :cond_3

    array-length v0, p0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    aget v0, p0, v0

    const/16 v1, 0x212

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    aget v1, p0, v0

    if-ne v1, v0, :cond_3

    const/4 v1, 0x7

    aget v2, p0, v1

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    aget v1, p0, v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_3

    :cond_0
    const/16 v1, 0x1d

    aget v1, p0, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const/16 v1, 0x1f

    aget v1, p0, v1

    if-ne v1, v2, :cond_3

    const/16 v1, 0x1a

    aget v1, p0, v1

    if-nez v1, :cond_3

    const/16 v1, 0x1b

    aget v1, p0, v1

    if-nez v1, :cond_3

    const/16 v1, 0x1c

    aget v1, p0, v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    .line 26
    const-string v1, "[0-9a-fA-F]{64}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-ltz p2, :cond_3

    const/4 v1, 0x4

    if-gt p2, v1, :cond_3

    if-lt p3, v0, :cond_3

    const/16 v0, 0x9

    if-gt p3, v0, :cond_3

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x15e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 30
    .local v0, "out":Ljava/lang/StringBuilder;
    const-string v1, "{\"schema\":\"demulation.razor.530.attached-emc.v1\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, "\"rom_sha256\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, "\"house\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"mission\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 33
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"words\":["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 35
    if-lez v1, :cond_1

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    :cond_1
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v1    # "i":I
    :cond_2
    const-string v1, "],\"origin\":\"ANDROID_RETAINED_EMC_REPLAY\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v1, "\"genesis_cpu_authenticated\":false,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, "\"native_callback_executed\":false,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, "\"gameplay_ticks\":0}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1

    .line 28
    .end local v0    # "out":Ljava/lang/StringBuilder;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsafe Razor 530 evidence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static writeEnvelope(Ljava/io/File;Ljava/io/File;[ILjava/lang/String;II)Ljava/io/File;
    .locals 17
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "previous"    # Ljava/io/File;
    .param p2, "words"    # [I
    .param p3, "sha"    # Ljava/lang/String;
    .param p4, "house"    # I
    .param p5, "mission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v1, :cond_b

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 48
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 49
    invoke-static/range {p2 .. p5}, Lcom/ahsim/demulation/RazorAttachedObservationEvidence530;->encode([ILjava/lang/String;II)[B

    move-result-object v3

    .line 50
    .local v3, "payload":[B
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "basename":Ljava/lang/String;
    const-string v0, ".zip"

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 52
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_530.zip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v0

    .line 53
    .local v5, "target":Ljava/io/File;
    invoke-virtual {v5, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 54
    const-string v0, "razor530_"

    const-string v6, ".part"

    invoke-static {v0, v6, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    .line 55
    .local v6, "tmp":Ljava/io/File;
    const/4 v8, 0x0

    .line 57
    .local v8, "completed":Z
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v9}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v9, v0

    .line 58
    .local v9, "src":Ljava/util/zip/ZipInputStream;
    :try_start_1
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v10}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v10, v0

    .line 59
    .local v10, "zip":Ljava/util/zip/ZipOutputStream;
    const/16 v0, 0x2000

    :try_start_2
    new-array v0, v0, [B

    .line 60
    .local v0, "buffer":[B
    const/4 v11, 0x0

    .local v11, "entries":I
    const-wide/16 v12, 0x0

    .line 61
    .local v12, "total":J
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 62
    .local v14, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v16, v15

    .local v16, "entry":Ljava/util/zip/ZipEntry;
    const-string v7, "razor_attached_emc530.json"

    if-eqz v15, :cond_3

    .line 63
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    .line 64
    .local v15, "name":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    const/16 v1, 0x80

    if-gt v11, v1, :cond_2

    const-string v1, "/"

    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".."

    invoke-virtual {v15, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\\"

    .line 65
    invoke-virtual {v15, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v14, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v1, v15}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 69
    :goto_1
    invoke-virtual {v9, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v1

    move v7, v1

    .local v7, "count":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 70
    int-to-long v1, v7

    add-long/2addr v12, v1

    .line 71
    const-wide/32 v1, 0xa00000

    cmp-long v1, v12, v1

    if-gtz v1, :cond_0

    .line 73
    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1, v7}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    move-object/from16 v2, p1

    goto :goto_1

    .line 72
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor diagnostic ZIP too large"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "payload":[B
    .end local v4    # "basename":Ljava/lang/String;
    .end local v5    # "target":Ljava/io/File;
    .end local v6    # "tmp":Ljava/io/File;
    .end local v8    # "completed":Z
    .end local v9    # "src":Ljava/util/zip/ZipInputStream;
    .end local v10    # "zip":Ljava/util/zip/ZipOutputStream;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "words":[I
    .end local p3    # "sha":Ljava/lang/String;
    .end local p4    # "house":I
    .end local p5    # "mission":I
    throw v1

    .line 75
    .restart local v3    # "payload":[B
    .restart local v4    # "basename":Ljava/lang/String;
    .restart local v5    # "target":Ljava/io/File;
    .restart local v6    # "tmp":Ljava/io/File;
    .restart local v8    # "completed":Z
    .restart local v9    # "src":Ljava/util/zip/ZipInputStream;
    .restart local v10    # "zip":Ljava/util/zip/ZipOutputStream;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "words":[I
    .restart local p3    # "sha":Ljava/lang/String;
    .restart local p4    # "house":I
    .restart local p5    # "mission":I
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 76
    .end local v7    # "count":I
    .end local v15    # "name":Ljava/lang/String;
    move-object/from16 v2, p1

    move v7, v1

    move-object/from16 v1, p0

    goto :goto_0

    .line 66
    .restart local v15    # "name":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unsafe previous Razor evidence ZIP"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "payload":[B
    .end local v4    # "basename":Ljava/lang/String;
    .end local v5    # "target":Ljava/io/File;
    .end local v6    # "tmp":Ljava/io/File;
    .end local v8    # "completed":Z
    .end local v9    # "src":Ljava/util/zip/ZipInputStream;
    .end local v10    # "zip":Ljava/util/zip/ZipOutputStream;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "words":[I
    .end local p3    # "sha":Ljava/lang/String;
    .end local p4    # "house":I
    .end local p5    # "mission":I
    throw v1

    .line 77
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "payload":[B
    .restart local v4    # "basename":Ljava/lang/String;
    .restart local v5    # "target":Ljava/io/File;
    .restart local v6    # "tmp":Ljava/io/File;
    .restart local v8    # "completed":Z
    .restart local v9    # "src":Ljava/util/zip/ZipInputStream;
    .restart local v10    # "zip":Ljava/util/zip/ZipOutputStream;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "words":[I
    .restart local p3    # "sha":Ljava/lang/String;
    .restart local p4    # "house":I
    .restart local p5    # "mission":I
    :cond_3
    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v1, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 78
    invoke-virtual {v10, v3}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    .end local v0    # "buffer":[B
    .end local v11    # "entries":I
    .end local v12    # "total":J
    .end local v14    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_4
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v10    # "zip":Ljava/util/zip/ZipOutputStream;
    :try_start_5
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V

    .line 80
    .end local v9    # "src":Ljava/util/zip/ZipInputStream;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 81
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot replace stale Razor 530 ZIP"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "payload":[B
    .end local v4    # "basename":Ljava/lang/String;
    .end local v5    # "target":Ljava/io/File;
    .end local v6    # "tmp":Ljava/io/File;
    .end local v8    # "completed":Z
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "words":[I
    .end local p3    # "sha":Ljava/lang/String;
    .end local p4    # "house":I
    .end local p5    # "mission":I
    throw v0

    .line 82
    .restart local v3    # "payload":[B
    .restart local v4    # "basename":Ljava/lang/String;
    .restart local v5    # "target":Ljava/io/File;
    .restart local v6    # "tmp":Ljava/io/File;
    .restart local v8    # "completed":Z
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "words":[I
    .restart local p3    # "sha":Ljava/lang/String;
    .restart local p4    # "house":I
    .restart local p5    # "mission":I
    :cond_5
    :goto_2
    invoke-virtual {v6, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v0, :cond_7

    .line 84
    const/4 v0, 0x1

    .line 85
    .end local v8    # "completed":Z
    .local v0, "completed":Z
    nop

    .line 87
    if-nez v0, :cond_6

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 85
    :cond_6
    return-object v5

    .line 83
    .end local v0    # "completed":Z
    .restart local v8    # "completed":Z
    :cond_7
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot commit Razor 530 ZIP"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "payload":[B
    .end local v4    # "basename":Ljava/lang/String;
    .end local v5    # "target":Ljava/io/File;
    .end local v6    # "tmp":Ljava/io/File;
    .end local v8    # "completed":Z
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "words":[I
    .end local p3    # "sha":Ljava/lang/String;
    .end local p4    # "house":I
    .end local p5    # "mission":I
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 57
    .restart local v3    # "payload":[B
    .restart local v4    # "basename":Ljava/lang/String;
    .restart local v5    # "target":Ljava/io/File;
    .restart local v6    # "tmp":Ljava/io/File;
    .restart local v8    # "completed":Z
    .restart local v9    # "src":Ljava/util/zip/ZipInputStream;
    .restart local v10    # "zip":Ljava/util/zip/ZipOutputStream;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "words":[I
    .restart local p3    # "sha":Ljava/lang/String;
    .restart local p4    # "house":I
    .restart local p5    # "mission":I
    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_7
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "payload":[B
    .end local v4    # "basename":Ljava/lang/String;
    .end local v5    # "target":Ljava/io/File;
    .end local v6    # "tmp":Ljava/io/File;
    .end local v8    # "completed":Z
    .end local v9    # "src":Ljava/util/zip/ZipInputStream;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "words":[I
    .end local p3    # "sha":Ljava/lang/String;
    .end local p4    # "house":I
    .end local p5    # "mission":I
    :goto_3
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .end local v10    # "zip":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "payload":[B
    .restart local v4    # "basename":Ljava/lang/String;
    .restart local v5    # "target":Ljava/io/File;
    .restart local v6    # "tmp":Ljava/io/File;
    .restart local v8    # "completed":Z
    .restart local v9    # "src":Ljava/util/zip/ZipInputStream;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "words":[I
    .restart local p3    # "sha":Ljava/lang/String;
    .restart local p4    # "house":I
    .restart local p5    # "mission":I
    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_9
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    :try_start_a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "payload":[B
    .end local v4    # "basename":Ljava/lang/String;
    .end local v5    # "target":Ljava/io/File;
    .end local v6    # "tmp":Ljava/io/File;
    .end local v8    # "completed":Z
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "words":[I
    .end local p3    # "sha":Ljava/lang/String;
    .end local p4    # "house":I
    .end local p5    # "mission":I
    :goto_4
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 87
    .end local v9    # "src":Ljava/util/zip/ZipInputStream;
    .restart local v3    # "payload":[B
    .restart local v4    # "basename":Ljava/lang/String;
    .restart local v5    # "target":Ljava/io/File;
    .restart local v6    # "tmp":Ljava/io/File;
    .restart local v8    # "completed":Z
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "words":[I
    .restart local p3    # "sha":Ljava/lang/String;
    .restart local p4    # "house":I
    .restart local p5    # "mission":I
    :catchall_4
    move-exception v0

    if-nez v8, :cond_8

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 88
    :cond_8
    throw v0

    .line 53
    .end local v6    # "tmp":Ljava/io/File;
    .end local v8    # "completed":Z
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot overwrite evidence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    .end local v5    # "target":Ljava/io/File;
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid ZIP name"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    .end local v3    # "payload":[B
    .end local v4    # "basename":Ljava/lang/String;
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing Razor evidence ZIP"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
