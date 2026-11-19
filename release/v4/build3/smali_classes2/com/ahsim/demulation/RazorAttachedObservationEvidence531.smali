.class public final Lcom/ahsim/demulation/RazorAttachedObservationEvidence531;
.super Ljava/lang/Object;
.source "RazorAttachedObservationEvidence531.java"


# static fields
.field public static final ENTRY:Ljava/lang/String; = "razor_android_emc_status531.json"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[I)Ljava/io/File;
    .locals 17
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "previous"    # Ljava/io/File;
    .param p2, "sha"    # Ljava/lang/String;
    .param p3, "house"    # I
    .param p4, "mission"    # I
    .param p5, "outcome"    # Ljava/lang/String;
    .param p6, "reason"    # Ljava/lang/String;
    .param p7, "verified"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 103
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".zip"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 105
    invoke-static/range {p2 .. p7}, Lcom/ahsim/demulation/RazorAttachedObservationEvidence531;->status(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[I)[B

    move-result-object v3

    .line 106
    .local v3, "payload":[B
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\.zip$"

    const-string v6, "_531.zip"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v0

    .line 107
    .local v4, "target":Ljava/io/File;
    invoke-virtual {v4, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 108
    const-string v0, "razor531_"

    const-string v5, ".part"

    invoke-static {v0, v5, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 109
    .local v5, "temp":Ljava/io/File;
    const/4 v6, 0x0

    .line 111
    .local v6, "ok":Z
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v7, v0

    .line 112
    .local v7, "zin":Ljava/util/zip/ZipInputStream;
    :try_start_1
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v8}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v8, v0

    .line 114
    .local v8, "zout":Ljava/util/zip/ZipOutputStream;
    :try_start_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 115
    .local v0, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v9, 0x2000

    new-array v9, v9, [B

    .local v9, "b":[B
    const/4 v10, 0x0

    .local v10, "entries":I
    const-wide/16 v11, 0x0

    .line 116
    .local v11, "total":J
    :goto_0
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v14, v13

    .local v14, "entry":Ljava/util/zip/ZipEntry;
    const-string v15, "razor_android_emc_status531.json"

    if-eqz v13, :cond_5

    .line 117
    :try_start_3
    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    .line 118
    .local v13, "name":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    const/16 v1, 0x80

    if-gt v10, v1, :cond_4

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "/"

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ".."

    .line 119
    invoke-virtual {v13, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\\"

    invoke-virtual {v13, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 120
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v1, v13}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 123
    :goto_1
    invoke-virtual {v7, v9}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v1

    move v15, v1

    move-object/from16 v16, v0

    .end local v0    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v15, "read":I
    .local v16, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    .line 124
    int-to-long v0, v15

    add-long/2addr v11, v0

    .line 125
    const-wide/32 v0, 0xa00000

    cmp-long v0, v11, v0

    if-gtz v0, :cond_0

    .line 127
    const/4 v0, 0x0

    invoke-virtual {v8, v9, v0, v15}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    move-object/from16 v0, v16

    goto :goto_1

    .line 126
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 531 ZIP size exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "payload":[B
    .end local v4    # "target":Ljava/io/File;
    .end local v5    # "temp":Ljava/io/File;
    .end local v6    # "ok":Z
    .end local v7    # "zin":Ljava/util/zip/ZipInputStream;
    .end local v8    # "zout":Ljava/util/zip/ZipOutputStream;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "outcome":Ljava/lang/String;
    .end local p6    # "reason":Ljava/lang/String;
    .end local p7    # "verified":[I
    throw v0

    .line 129
    .end local v15    # "read":I
    .restart local v3    # "payload":[B
    .restart local v4    # "target":Ljava/io/File;
    .restart local v5    # "temp":Ljava/io/File;
    .restart local v6    # "ok":Z
    .restart local v7    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v8    # "zout":Ljava/util/zip/ZipOutputStream;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "outcome":Ljava/lang/String;
    .restart local p6    # "reason":Ljava/lang/String;
    .restart local p7    # "verified":[I
    :cond_1
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 130
    .end local v13    # "name":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto :goto_0

    .line 120
    .end local v16    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v0    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v13    # "name":Ljava/lang/String;
    :cond_2
    move-object/from16 v16, v0

    .end local v0    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_2

    .line 119
    .end local v16    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v0    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v16, v0

    .end local v0    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_2

    .line 118
    .end local v16    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v0    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v16, v0

    .line 121
    .end local v0    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 531 invalid existing ZIP entry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "payload":[B
    .end local v4    # "target":Ljava/io/File;
    .end local v5    # "temp":Ljava/io/File;
    .end local v6    # "ok":Z
    .end local v7    # "zin":Ljava/util/zip/ZipInputStream;
    .end local v8    # "zout":Ljava/util/zip/ZipOutputStream;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "outcome":Ljava/lang/String;
    .end local p6    # "reason":Ljava/lang/String;
    .end local p7    # "verified":[I
    throw v0

    .line 131
    .end local v13    # "name":Ljava/lang/String;
    .end local v16    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v0    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3    # "payload":[B
    .restart local v4    # "target":Ljava/io/File;
    .restart local v5    # "temp":Ljava/io/File;
    .restart local v6    # "ok":Z
    .restart local v7    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v8    # "zout":Ljava/util/zip/ZipOutputStream;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "outcome":Ljava/lang/String;
    .restart local p6    # "reason":Ljava/lang/String;
    .restart local p7    # "verified":[I
    :cond_5
    move-object/from16 v16, v0

    .end local v0    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, v15}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 132
    invoke-virtual {v8, v3}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    .end local v9    # "b":[B
    .end local v10    # "entries":I
    .end local v11    # "total":J
    .end local v14    # "entry":Ljava/util/zip/ZipEntry;
    .end local v16    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_4
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v8    # "zout":Ljava/util/zip/ZipOutputStream;
    :try_start_5
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V

    .line 134
    .end local v7    # "zin":Ljava/util/zip/ZipInputStream;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    .line 135
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 531 previous status could not be replaced"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "payload":[B
    .end local v4    # "target":Ljava/io/File;
    .end local v5    # "temp":Ljava/io/File;
    .end local v6    # "ok":Z
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "outcome":Ljava/lang/String;
    .end local p6    # "reason":Ljava/lang/String;
    .end local p7    # "verified":[I
    throw v0

    .line 136
    .restart local v3    # "payload":[B
    .restart local v4    # "target":Ljava/io/File;
    .restart local v5    # "temp":Ljava/io/File;
    .restart local v6    # "ok":Z
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "outcome":Ljava/lang/String;
    .restart local p6    # "reason":Ljava/lang/String;
    .restart local p7    # "verified":[I
    :cond_7
    :goto_3
    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v0, :cond_9

    .line 137
    const/4 v0, 0x1

    .line 138
    .end local v6    # "ok":Z
    .local v0, "ok":Z
    if-nez v0, :cond_8

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 137
    :cond_8
    return-object v4

    .line 136
    .end local v0    # "ok":Z
    .restart local v6    # "ok":Z
    :cond_9
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 531 ZIP commit failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "payload":[B
    .end local v4    # "target":Ljava/io/File;
    .end local v5    # "temp":Ljava/io/File;
    .end local v6    # "ok":Z
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "outcome":Ljava/lang/String;
    .end local p6    # "reason":Ljava/lang/String;
    .end local p7    # "verified":[I
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 111
    .restart local v3    # "payload":[B
    .restart local v4    # "target":Ljava/io/File;
    .restart local v5    # "temp":Ljava/io/File;
    .restart local v6    # "ok":Z
    .restart local v7    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v8    # "zout":Ljava/util/zip/ZipOutputStream;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "outcome":Ljava/lang/String;
    .restart local p6    # "reason":Ljava/lang/String;
    .restart local p7    # "verified":[I
    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_7
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "payload":[B
    .end local v4    # "target":Ljava/io/File;
    .end local v5    # "temp":Ljava/io/File;
    .end local v6    # "ok":Z
    .end local v7    # "zin":Ljava/util/zip/ZipInputStream;
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "outcome":Ljava/lang/String;
    .end local p6    # "reason":Ljava/lang/String;
    .end local p7    # "verified":[I
    :goto_4
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .end local v8    # "zout":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "payload":[B
    .restart local v4    # "target":Ljava/io/File;
    .restart local v5    # "temp":Ljava/io/File;
    .restart local v6    # "ok":Z
    .restart local v7    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "outcome":Ljava/lang/String;
    .restart local p6    # "reason":Ljava/lang/String;
    .restart local p7    # "verified":[I
    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_9
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    :try_start_a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "payload":[B
    .end local v4    # "target":Ljava/io/File;
    .end local v5    # "temp":Ljava/io/File;
    .end local v6    # "ok":Z
    .end local p0    # "dir":Ljava/io/File;
    .end local p1    # "previous":Ljava/io/File;
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "house":I
    .end local p4    # "mission":I
    .end local p5    # "outcome":Ljava/lang/String;
    .end local p6    # "reason":Ljava/lang/String;
    .end local p7    # "verified":[I
    :goto_5
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 138
    .end local v7    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v3    # "payload":[B
    .restart local v4    # "target":Ljava/io/File;
    .restart local v5    # "temp":Ljava/io/File;
    .restart local v6    # "ok":Z
    .restart local p0    # "dir":Ljava/io/File;
    .restart local p1    # "previous":Ljava/io/File;
    .restart local p2    # "sha":Ljava/lang/String;
    .restart local p3    # "house":I
    .restart local p4    # "mission":I
    .restart local p5    # "outcome":Ljava/lang/String;
    .restart local p6    # "reason":Ljava/lang/String;
    .restart local p7    # "verified":[I
    :catchall_4
    move-exception v0

    if-nez v6, :cond_a

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_a
    throw v0

    .line 107
    .end local v5    # "temp":Ljava/io/File;
    .end local v6    # "ok":Z
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 531 cannot overwrite source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    .end local v3    # "payload":[B
    .end local v4    # "target":Ljava/io/File;
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 531 previous evidence ZIP unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static bankFingerprint([B)I
    .locals 6
    .param p0, "bytes"    # [B

    .line 23
    const v0, -0x7ee3623b

    .line 24
    .local v0, "h":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .local v3, "b":B
    and-int/lit16 v4, v3, 0xff

    xor-int/2addr v4, v0

    const v5, 0x1000193

    mul-int v0, v4, v5

    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    :cond_0
    return v0
.end method

.method private static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;

    .line 57
    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 60
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 61
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 62
    .local v3, "c":C
    const/16 v4, 0x5c

    if-eq v3, v4, :cond_4

    const/16 v5, 0x22

    if-ne v3, v5, :cond_1

    goto :goto_2

    .line 63
    :cond_1
    const/16 v4, 0x20

    if-lt v3, v4, :cond_3

    const/16 v4, 0x7e

    if-le v3, v4, :cond_2

    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 63
    :cond_3
    :goto_1
    const/16 v4, 0x5f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 62
    :cond_4
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .end local v3    # "c":C
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static status(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[I)[B
    .locals 5
    .param p0, "sha"    # Ljava/lang/String;
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .param p3, "outcome"    # Ljava/lang/String;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "verified"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    if-eqz p0, :cond_3

    const-string v0, "[0-9a-fA-F]{64}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    const/4 v0, 0x5

    if-ge p1, v0, :cond_3

    const/4 v0, 0x1

    if-lt p2, v0, :cond_3

    const/16 v0, 0x9

    if-gt p2, v0, :cond_3

    .line 75
    const-string v0, "OBSERVED"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FAILED"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    const-string v1, "SKIPPED"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    nop

    .line 77
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p5, :cond_3

    array-length v1, p5

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    .line 79
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x190

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 80
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "{\"schema\":\"demulation.razor.531.android-emc-status.v1\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 81
    const-string v3, "\"source_rom_sha256\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 82
    const-string v4, "\"house\":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",\"mission\":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 83
    const-string v4, ",\"outcome\":\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 84
    const-string v4, "\"reason\":\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Lcom/ahsim/demulation/RazorAttachedObservationEvidence531;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 85
    const-string v3, "\"android_world_owner_verified\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 86
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 87
    const-string v3, ",\"genesis_cpu_authenticated\":false,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 88
    const-string v3, "\"native_callback_executed\":false,\"gameplay_ticks\":0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    if-eqz p5, :cond_2

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    const-string v0, ",\"emc_ordinal\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    aget v2, p5, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    const-string v2, ",\"emc_native_id\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x7

    aget v2, p5, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    const-string v2, ",\"emc_steps\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x8

    aget v2, p5, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    :cond_2
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0

    .line 78
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid Razor 531 status parameters"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verify([I[I[B)V
    .locals 9
    .param p0, "w"    # [I
    .param p1, "unitRows"    # [I
    .param p2, "unitBank"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    if-eqz p0, :cond_5

    array-length v0, p0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    aget v2, p0, v0

    const/16 v3, 0x212

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    aget v3, p0, v2

    if-ne v3, v2, :cond_5

    const/4 v3, 0x7

    aget v4, p0, v3

    const/16 v5, 0x10

    if-eq v4, v5, :cond_0

    aget v3, p0, v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_5

    :cond_0
    const/16 v3, 0x1d

    aget v3, p0, v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    const/16 v3, 0x1f

    aget v3, p0, v3

    if-ne v3, v4, :cond_5

    const/16 v3, 0x1a

    aget v3, p0, v3

    if-nez v3, :cond_5

    const/16 v3, 0x1b

    aget v3, p0, v3

    if-nez v3, :cond_5

    const/16 v3, 0x1c

    aget v3, p0, v3

    if-nez v3, :cond_5

    if-eqz p2, :cond_5

    array-length v3, p2

    const/16 v6, 0x156c

    if-ne v3, v6, :cond_5

    if-eqz p1, :cond_5

    array-length v3, p1

    const/4 v6, 0x3

    if-lt v3, v6, :cond_5

    aget v0, p1, v0

    const/16 v3, 0x193

    if-ne v0, v3, :cond_5

    aget v0, p1, v4

    const/16 v3, 0xc

    if-ne v0, v3, :cond_5

    aget v0, p1, v2

    if-lt v0, v2, :cond_5

    aget v0, p1, v2

    const/16 v7, 0x80

    if-gt v0, v7, :cond_5

    array-length v0, p1

    aget v8, p1, v2

    mul-int/2addr v8, v3

    add-int/2addr v8, v6

    if-ne v0, v8, :cond_5

    .line 41
    aget v0, p0, v4

    .line 42
    .local v0, "ordinal":I
    if-ltz v0, :cond_4

    aget v3, p1, v2

    if-ge v0, v3, :cond_4

    const/16 v3, 0x8

    aget v4, p0, v3

    if-ltz v4, :cond_4

    aget v3, p0, v3

    if-gt v3, v7, :cond_4

    const/16 v3, 0x9

    aget v4, p0, v3

    if-ltz v4, :cond_4

    aget v3, p0, v3

    const/16 v4, 0xf

    if-gt v3, v4, :cond_4

    const/16 v3, 0xa

    aget v7, p0, v3

    if-ltz v7, :cond_4

    aget v3, p0, v3

    const/16 v7, 0x11

    if-gt v3, v7, :cond_4

    const/16 v3, 0x1e

    aget v7, p0, v3

    if-lt v7, v2, :cond_4

    aget v2, p0, v3

    if-gt v2, v1, :cond_4

    const/16 v1, 0xd

    aget v1, p0, v1

    if-nez v1, :cond_1

    const/16 v1, 0xe

    aget v1, p0, v1

    if-eqz v1, :cond_4

    :cond_1
    aget v1, p0, v4

    if-nez v1, :cond_2

    aget v1, p0, v5

    if-eqz v1, :cond_4

    :cond_2
    const/16 v1, 0xb

    aget v1, p0, v1

    .line 47
    invoke-static {p2}, Lcom/ahsim/demulation/RazorAttachedObservationEvidence531;->bankFingerprint([B)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 49
    mul-int/lit8 v1, v0, 0xc

    add-int/2addr v1, v6

    .line 50
    .local v1, "p":I
    aget v2, p1, v1

    if-ne v2, v0, :cond_3

    add-int/lit8 v2, v1, 0x2

    aget v2, p1, v2

    const/4 v3, 0x4

    aget v3, p0, v3

    if-ne v2, v3, :cond_3

    add-int/lit8 v2, v1, 0x3

    aget v2, p1, v2

    aget v3, p0, v6

    if-ne v2, v3, :cond_3

    add-int/lit8 v2, v1, 0x4

    aget v2, p1, v2

    if-ltz v2, :cond_3

    add-int/lit8 v2, v1, 0x5

    aget v2, p1, v2

    if-ltz v2, :cond_3

    .line 54
    return-void

    .line 53
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Razor 531 retained-world owner mismatch"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    .end local v1    # "p":I
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor 531 bank/event/ordinal mismatch"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    .end local v0    # "ordinal":I
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 531 invalid observation identity"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
