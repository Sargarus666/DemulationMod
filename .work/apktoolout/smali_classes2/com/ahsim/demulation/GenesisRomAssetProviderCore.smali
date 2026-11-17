.class public final Lcom/ahsim/demulation/GenesisRomAssetProviderCore;
.super Ljava/lang/Object;
.source "GenesisRomAssetProviderCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;,
        Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static deleteRecursively(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 189
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 191
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 192
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore;->deleteRecursively(Ljava/io/File;)V

    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "children":[Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 196
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_3
    :goto_1
    return-void

    .line 188
    :cond_4
    :goto_2
    return-void
.end method

.method private static digest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Digest unavailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static discardFully(Ljava/io/InputStream;J[B)V
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "bytes"    # J
    .param p3, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    move-wide v0, p1

    .line 168
    .local v0, "remaining":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 169
    array-length v2, p3

    int-to-long v2, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 170
    .local v2, "wanted":I
    const/4 v3, 0x0

    invoke-virtual {p0, p3, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 171
    .local v3, "count":I
    if-ltz v3, :cond_1

    .line 172
    if-nez v3, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    int-to-long v4, v3

    sub-long/2addr v0, v4

    .line 174
    .end local v2    # "wanted":I
    .end local v3    # "count":I
    goto :goto_0

    .line 171
    .restart local v2    # "wanted":I
    .restart local v3    # "count":I
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "ROM ended before the next asset offset"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 175
    .end local v2    # "wanted":I
    .end local v3    # "count":I
    :cond_2
    return-void
.end method

.method public static extractCore(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;)Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;
    .locals 30
    .param p0, "rom"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    move-object/from16 v1, p0

    move-object/from16 v8, p3

    if-eqz v1, :cond_15

    .line 60
    if-eqz v8, :cond_14

    .line 62
    invoke-static {}, Lcom/ahsim/demulation/RomAssetManifest;->coreEntries()Ljava/util/List;

    move-result-object v10

    .line 63
    .local v10, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetManifest$Entry;>;"
    move-wide/from16 v11, p1

    invoke-static {v10, v11, v12}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore;->validateManifest(Ljava/util/List;J)V

    .line 64
    invoke-static {v8}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore;->deleteRecursively(Ljava/io/File;)V

    .line 65
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Could not create ROM asset staging directory"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    :goto_0
    invoke-static {}, Lcom/ahsim/demulation/RomAssetManifest;->corePayloadBytes()J

    move-result-wide v16

    .line 70
    .local v16, "totalPayload":J
    const-wide/16 v2, 0x0

    .line 71
    .local v2, "completedPayload":J
    const-wide/16 v4, 0x0

    .line 72
    .local v4, "streamPosition":J
    const/4 v0, 0x0

    .line 73
    .local v0, "verified":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v7, "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v6, 0x2000

    new-array v6, v6, [B

    .line 77
    .local v6, "buffer":[B
    const/4 v9, 0x0

    move-wide v13, v2

    move-wide/from16 v18, v4

    move v4, v0

    .end local v0    # "verified":I
    .end local v2    # "completedPayload":J
    .local v4, "verified":I
    .local v9, "entryIndex":I
    .local v13, "completedPayload":J
    .local v18, "streamPosition":J
    :goto_1
    :try_start_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_12

    if-ge v9, v0, :cond_12

    .line 78
    :try_start_1
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/RomAssetManifest$Entry;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_a

    move-object v2, v0

    .line 79
    .local v2, "entry":Lcom/ahsim/demulation/RomAssetManifest$Entry;
    move v5, v4

    .end local v4    # "verified":I
    .local v5, "verified":I
    :try_start_2
    iget-wide v3, v2, Lcom/ahsim/demulation/RomAssetManifest$Entry;->offset:J

    sub-long v3, v3, v18

    .line 80
    .local v3, "skip":J
    const-wide/16 v20, 0x0

    cmp-long v0, v3, v20

    if-ltz v0, :cond_11

    .line 81
    invoke-static {v1, v3, v4, v6}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore;->discardFully(Ljava/io/InputStream;J[B)V

    .line 82
    add-long v18, v18, v3

    .line 84
    iget-object v0, v2, Lcom/ahsim/demulation/RomAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {v8, v0}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object v15, v0

    .line 85
    .local v15, "output":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_8

    move-object/from16 v21, v0

    .line 86
    .local v21, "parent":Ljava/io/File;
    if-eqz v21, :cond_3

    :try_start_3
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    move-wide/from16 v22, v3

    goto :goto_2

    .line 87
    :cond_2
    new-instance v0, Ljava/io/IOException;

    move-wide/from16 v22, v3

    .end local v3    # "skip":J
    .local v22, "skip":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create asset directory for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/ahsim/demulation/RomAssetManifest$Entry;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "verified":I
    .end local v6    # "buffer":[B
    .end local v7    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetManifest$Entry;>;"
    .end local v13    # "completedPayload":J
    .end local v16    # "totalPayload":J
    .end local v18    # "streamPosition":J
    .end local p0    # "rom":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 146
    .end local v2    # "entry":Lcom/ahsim/demulation/RomAssetManifest$Entry;
    .end local v9    # "entryIndex":I
    .end local v15    # "output":Ljava/io/File;
    .end local v21    # "parent":Ljava/io/File;
    .end local v22    # "skip":J
    .restart local v5    # "verified":I
    .restart local v6    # "buffer":[B
    .restart local v7    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetManifest$Entry;>;"
    .restart local v13    # "completedPayload":J
    .restart local v16    # "totalPayload":J
    .restart local v18    # "streamPosition":J
    .restart local p0    # "rom":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;
    :catch_0
    move-exception v0

    move v4, v5

    move-object v15, v6

    goto/16 :goto_c

    .line 143
    :catch_1
    move-exception v0

    move v4, v5

    move-object v15, v6

    goto/16 :goto_d

    .line 86
    .restart local v2    # "entry":Lcom/ahsim/demulation/RomAssetManifest$Entry;
    .restart local v3    # "skip":J
    .restart local v9    # "entryIndex":I
    .restart local v15    # "output":Ljava/io/File;
    .restart local v21    # "parent":Ljava/io/File;
    :cond_3
    move-wide/from16 v22, v3

    .line 89
    .end local v3    # "skip":J
    .restart local v22    # "skip":J
    :goto_2
    :try_start_4
    new-instance v0, Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_8

    move/from16 v24, v5

    .end local v5    # "verified":I
    .local v24, "verified":I
    :try_start_5
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v0

    .line 90
    .local v3, "part":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    .line 91
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not replace temporary asset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/ahsim/demulation/RomAssetManifest$Entry;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v6    # "buffer":[B
    .end local v7    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetManifest$Entry;>;"
    .end local v13    # "completedPayload":J
    .end local v16    # "totalPayload":J
    .end local v18    # "streamPosition":J
    .end local v24    # "verified":I
    .end local p0    # "rom":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;
    throw v0

    .line 94
    .restart local v6    # "buffer":[B
    .restart local v7    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetManifest$Entry;>;"
    .restart local v13    # "completedPayload":J
    .restart local v16    # "totalPayload":J
    .restart local v18    # "streamPosition":J
    .restart local v24    # "verified":I
    .restart local p0    # "rom":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;
    :cond_5
    :goto_3
    const-string v0, "SHA-256"

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore;->digest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    move-object v4, v0

    .line 95
    .local v4, "digest":Ljava/security/MessageDigest;
    iget v0, v2, Lcom/ahsim/demulation/RomAssetManifest$Entry;->length:I

    .line 96
    .local v0, "remaining":I
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6

    move-wide/from16 v25, v18

    move-object/from16 v18, v15

    move-wide v14, v13

    move v13, v0

    .line 97
    .end local v0    # "remaining":I
    .end local v15    # "output":Ljava/io/File;
    .local v5, "out":Ljava/io/FileOutputStream;
    .local v13, "remaining":I
    .local v14, "completedPayload":J
    .local v18, "output":Ljava/io/File;
    .local v25, "streamPosition":J
    :goto_4
    if-lez v13, :cond_9

    .line 98
    :try_start_6
    array-length v0, v6

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 99
    .local v0, "wanted":I
    const/4 v8, 0x0

    invoke-virtual {v1, v6, v8, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v19

    move/from16 v27, v19

    .line 100
    .local v27, "count":I
    if-ltz v27, :cond_8

    .line 101
    if-nez v27, :cond_6

    move-object/from16 v8, p3

    goto :goto_4

    .line 102
    :cond_6
    move/from16 v28, v0

    move/from16 v0, v27

    .end local v27    # "count":I
    .local v0, "count":I
    .local v28, "wanted":I
    invoke-virtual {v5, v6, v8, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 103
    invoke-virtual {v4, v6, v8, v0}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 104
    sub-int v8, v13, v0

    .line 105
    .end local v13    # "remaining":I
    .local v8, "remaining":I
    move-object/from16 v27, v4

    move-object/from16 v29, v5

    .end local v4    # "digest":Ljava/security/MessageDigest;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v27, "digest":Ljava/security/MessageDigest;
    .local v29, "out":Ljava/io/FileOutputStream;
    int-to-long v4, v0

    add-long v25, v25, v4

    .line 106
    int-to-long v4, v0

    add-long/2addr v14, v4

    .line 107
    if-eqz p4, :cond_7

    .line 108
    move-object/from16 v4, v18

    .end local v18    # "output":Ljava/io/File;
    .local v4, "output":Ljava/io/File;
    add-int/lit8 v18, v9, 0x1

    .line 109
    :try_start_7
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v19

    iget-object v5, v2, Lcom/ahsim/demulation/RomAssetManifest$Entry;->name:Ljava/lang/String;

    .line 108
    move-object/from16 v13, p4

    move-object/from16 v20, v5

    invoke-interface/range {v13 .. v20}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;->onProgress(JJIILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 96
    .end local v0    # "count":I
    .end local v28    # "wanted":I
    :catchall_0
    move-exception v0

    move-object v5, v0

    move v13, v8

    move-wide/from16 v18, v25

    goto/16 :goto_a

    .line 107
    .end local v4    # "output":Ljava/io/File;
    .restart local v0    # "count":I
    .restart local v18    # "output":Ljava/io/File;
    .restart local v28    # "wanted":I
    :cond_7
    move-object/from16 v4, v18

    .line 111
    .end local v0    # "count":I
    .end local v18    # "output":Ljava/io/File;
    .end local v28    # "wanted":I
    .restart local v4    # "output":Ljava/io/File;
    :goto_5
    move-object/from16 v18, v4

    move v13, v8

    move-object/from16 v4, v27

    move-object/from16 v5, v29

    move-object/from16 v8, p3

    goto :goto_4

    .line 100
    .end local v8    # "remaining":I
    .end local v29    # "out":Ljava/io/FileOutputStream;
    .local v0, "wanted":I
    .local v4, "digest":Ljava/security/MessageDigest;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "remaining":I
    .restart local v18    # "output":Ljava/io/File;
    .local v27, "count":I
    :cond_8
    move/from16 v28, v0

    move-object/from16 v29, v5

    move/from16 v0, v27

    move-object/from16 v27, v4

    move-object/from16 v4, v18

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v18    # "output":Ljava/io/File;
    .local v0, "count":I
    .local v4, "output":Ljava/io/File;
    .local v27, "digest":Ljava/security/MessageDigest;
    .restart local v28    # "wanted":I
    .restart local v29    # "out":Ljava/io/FileOutputStream;
    :try_start_8
    new-instance v5, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v0

    .end local v0    # "count":I
    .local v18, "count":I
    const-string v0, "ROM ended while reading "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, v2, Lcom/ahsim/demulation/RomAssetManifest$Entry;->name:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "entry":Lcom/ahsim/demulation/RomAssetManifest$Entry;
    .end local v3    # "part":Ljava/io/File;
    .end local v4    # "output":Ljava/io/File;
    .end local v6    # "buffer":[B
    .end local v7    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "entryIndex":I
    .end local v10    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetManifest$Entry;>;"
    .end local v13    # "remaining":I
    .end local v14    # "completedPayload":J
    .end local v16    # "totalPayload":J
    .end local v21    # "parent":Ljava/io/File;
    .end local v22    # "skip":J
    .end local v24    # "verified":I
    .end local v25    # "streamPosition":J
    .end local v27    # "digest":Ljava/security/MessageDigest;
    .end local v29    # "out":Ljava/io/FileOutputStream;
    .end local p0    # "rom":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 96
    .end local v18    # "count":I
    .end local v28    # "wanted":I
    .restart local v2    # "entry":Lcom/ahsim/demulation/RomAssetManifest$Entry;
    .restart local v3    # "part":Ljava/io/File;
    .restart local v4    # "output":Ljava/io/File;
    .restart local v6    # "buffer":[B
    .restart local v7    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "entryIndex":I
    .restart local v10    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetManifest$Entry;>;"
    .restart local v13    # "remaining":I
    .restart local v14    # "completedPayload":J
    .restart local v16    # "totalPayload":J
    .restart local v21    # "parent":Ljava/io/File;
    .restart local v22    # "skip":J
    .restart local v24    # "verified":I
    .restart local v25    # "streamPosition":J
    .restart local v27    # "digest":Ljava/security/MessageDigest;
    .restart local v29    # "out":Ljava/io/FileOutputStream;
    .restart local p0    # "rom":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;
    :catchall_1
    move-exception v0

    move-object v5, v0

    move-wide/from16 v18, v25

    goto/16 :goto_a

    .end local v27    # "digest":Ljava/security/MessageDigest;
    .end local v29    # "out":Ljava/io/FileOutputStream;
    .local v4, "digest":Ljava/security/MessageDigest;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .local v18, "output":Ljava/io/File;
    :catchall_2
    move-exception v0

    move-object/from16 v27, v4

    move-object/from16 v29, v5

    move-object/from16 v4, v18

    move-object v5, v0

    move-wide/from16 v18, v25

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v18    # "output":Ljava/io/File;
    .local v4, "output":Ljava/io/File;
    .restart local v27    # "digest":Ljava/security/MessageDigest;
    .restart local v29    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_a

    .line 112
    .end local v27    # "digest":Ljava/security/MessageDigest;
    .end local v29    # "out":Ljava/io/FileOutputStream;
    .local v4, "digest":Ljava/security/MessageDigest;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v18    # "output":Ljava/io/File;
    :cond_9
    move-object/from16 v27, v4

    move-object/from16 v29, v5

    move-object/from16 v4, v18

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v18    # "output":Ljava/io/File;
    .local v4, "output":Ljava/io/File;
    .restart local v27    # "digest":Ljava/security/MessageDigest;
    .restart local v29    # "out":Ljava/io/FileOutputStream;
    :try_start_9
    invoke-virtual/range {v29 .. v29}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 113
    :try_start_a
    invoke-virtual/range {v29 .. v29}, Ljava/io/FileOutputStream;->close()V

    .line 115
    .end local v29    # "out":Ljava/io/FileOutputStream;
    invoke-virtual/range {v27 .. v27}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore;->hex([B)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "actual":Ljava/lang/String;
    iget-object v5, v2, Lcom/ahsim/demulation/RomAssetManifest$Entry;->sha256:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 117
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_a

    move-object/from16 v28, v0

    goto :goto_6

    .line 118
    :cond_a
    new-instance v5, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v0

    .end local v0    # "actual":Ljava/lang/String;
    .local v28, "actual":Ljava/lang/String;
    const-string v0, "Could not replace staged asset "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, v2, Lcom/ahsim/demulation/RomAssetManifest$Entry;->name:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v6    # "buffer":[B
    .end local v7    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetManifest$Entry;>;"
    .end local v14    # "completedPayload":J
    .end local v16    # "totalPayload":J
    .end local v24    # "verified":I
    .end local v25    # "streamPosition":J
    .end local p0    # "rom":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;
    throw v5

    .line 117
    .end local v28    # "actual":Ljava/lang/String;
    .restart local v0    # "actual":Ljava/lang/String;
    .restart local v6    # "buffer":[B
    .restart local v7    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetManifest$Entry;>;"
    .restart local v14    # "completedPayload":J
    .restart local v16    # "totalPayload":J
    .restart local v24    # "verified":I
    .restart local v25    # "streamPosition":J
    .restart local p0    # "rom":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;
    :cond_b
    move-object/from16 v28, v0

    .line 120
    .end local v0    # "actual":Ljava/lang/String;
    .restart local v28    # "actual":Ljava/lang/String;
    :goto_6
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 123
    add-int/lit8 v0, v24, 0x1

    move/from16 v24, v0

    .end local v24    # "verified":I
    .local v0, "verified":I
    goto :goto_8

    .line 121
    .end local v0    # "verified":I
    .restart local v24    # "verified":I
    :cond_c
    new-instance v0, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not publish staged asset "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v2, Lcom/ahsim/demulation/RomAssetManifest$Entry;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v6    # "buffer":[B
    .end local v7    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetManifest$Entry;>;"
    .end local v14    # "completedPayload":J
    .end local v16    # "totalPayload":J
    .end local v24    # "verified":I
    .end local v25    # "streamPosition":J
    .end local p0    # "rom":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;
    throw v0

    .line 125
    .end local v28    # "actual":Ljava/lang/String;
    .local v0, "actual":Ljava/lang/String;
    .restart local v6    # "buffer":[B
    .restart local v7    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetManifest$Entry;>;"
    .restart local v14    # "completedPayload":J
    .restart local v16    # "totalPayload":J
    .restart local v24    # "verified":I
    .restart local v25    # "streamPosition":J
    .restart local p0    # "rom":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;
    :cond_d
    move-object/from16 v28, v0

    .end local v0    # "actual":Ljava/lang/String;
    .restart local v28    # "actual":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_7

    .line 126
    :cond_e
    new-instance v0, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not discard mismatched asset "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v2, Lcom/ahsim/demulation/RomAssetManifest$Entry;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v6    # "buffer":[B
    .end local v7    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetManifest$Entry;>;"
    .end local v14    # "completedPayload":J
    .end local v16    # "totalPayload":J
    .end local v24    # "verified":I
    .end local v25    # "streamPosition":J
    .end local p0    # "rom":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;
    throw v0

    .line 128
    .restart local v6    # "buffer":[B
    .restart local v7    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetManifest$Entry;>;"
    .restart local v14    # "completedPayload":J
    .restart local v16    # "totalPayload":J
    .restart local v24    # "verified":I
    .restart local v25    # "streamPosition":J
    .restart local p0    # "rom":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;
    :cond_f
    :goto_7
    iget-object v0, v2, Lcom/ahsim/demulation/RomAssetManifest$Entry;->name:Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :goto_8
    if-eqz p4, :cond_10

    .line 131
    add-int/lit8 v18, v9, 0x1

    .line 132
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v19

    iget-object v0, v2, Lcom/ahsim/demulation/RomAssetManifest$Entry;->name:Ljava/lang/String;

    .line 131
    move-object/from16 v20, v0

    move v8, v13

    move-object/from16 v13, p4

    .end local v13    # "remaining":I
    .restart local v8    # "remaining":I
    invoke-interface/range {v13 .. v20}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;->onProgress(JJIILjava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_9

    .line 130
    .end local v8    # "remaining":I
    .restart local v13    # "remaining":I
    :cond_10
    move v8, v13

    .line 77
    .end local v2    # "entry":Lcom/ahsim/demulation/RomAssetManifest$Entry;
    .end local v3    # "part":Ljava/io/File;
    .end local v4    # "output":Ljava/io/File;
    .end local v13    # "remaining":I
    .end local v21    # "parent":Ljava/io/File;
    .end local v22    # "skip":J
    .end local v27    # "digest":Ljava/security/MessageDigest;
    .end local v28    # "actual":Ljava/lang/String;
    :goto_9
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v8, p3

    move-wide v13, v14

    move/from16 v4, v24

    move-wide/from16 v18, v25

    goto/16 :goto_1

    .line 146
    .end local v9    # "entryIndex":I
    :catch_2
    move-exception v0

    move-wide v13, v14

    move/from16 v4, v24

    move-wide/from16 v18, v25

    move-object v15, v6

    goto/16 :goto_c

    .line 143
    :catch_3
    move-exception v0

    move-wide v13, v14

    move/from16 v4, v24

    move-wide/from16 v18, v25

    move-object v15, v6

    goto/16 :goto_d

    .line 96
    .restart local v2    # "entry":Lcom/ahsim/demulation/RomAssetManifest$Entry;
    .restart local v3    # "part":Ljava/io/File;
    .restart local v4    # "output":Ljava/io/File;
    .restart local v9    # "entryIndex":I
    .restart local v13    # "remaining":I
    .restart local v21    # "parent":Ljava/io/File;
    .restart local v22    # "skip":J
    .restart local v27    # "digest":Ljava/security/MessageDigest;
    .restart local v29    # "out":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v0

    move v8, v13

    move-object v5, v0

    move-wide/from16 v18, v25

    .end local v25    # "streamPosition":J
    .local v18, "streamPosition":J
    :goto_a
    :try_start_b
    invoke-virtual/range {v29 .. v29}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_b

    :catchall_4
    move-exception v0

    :try_start_c
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v6    # "buffer":[B
    .end local v7    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetManifest$Entry;>;"
    .end local v14    # "completedPayload":J
    .end local v16    # "totalPayload":J
    .end local v18    # "streamPosition":J
    .end local v24    # "verified":I
    .end local p0    # "rom":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;
    :goto_b
    throw v5
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_4

    .line 146
    .end local v2    # "entry":Lcom/ahsim/demulation/RomAssetManifest$Entry;
    .end local v3    # "part":Ljava/io/File;
    .end local v4    # "output":Ljava/io/File;
    .end local v9    # "entryIndex":I
    .end local v13    # "remaining":I
    .end local v21    # "parent":Ljava/io/File;
    .end local v22    # "skip":J
    .end local v27    # "digest":Ljava/security/MessageDigest;
    .end local v29    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "buffer":[B
    .restart local v7    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetManifest$Entry;>;"
    .restart local v14    # "completedPayload":J
    .restart local v16    # "totalPayload":J
    .restart local v18    # "streamPosition":J
    .restart local v24    # "verified":I
    .restart local p0    # "rom":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;
    :catch_4
    move-exception v0

    move-wide v13, v14

    move/from16 v4, v24

    move-object v15, v6

    goto/16 :goto_c

    .line 143
    :catch_5
    move-exception v0

    move-wide v13, v14

    move/from16 v4, v24

    move-object v15, v6

    goto/16 :goto_d

    .line 80
    .end local v14    # "completedPayload":J
    .end local v24    # "verified":I
    .restart local v2    # "entry":Lcom/ahsim/demulation/RomAssetManifest$Entry;
    .local v3, "skip":J
    .local v5, "verified":I
    .restart local v9    # "entryIndex":I
    .local v13, "completedPayload":J
    :cond_11
    move-wide/from16 v22, v3

    move/from16 v24, v5

    .end local v3    # "skip":J
    .end local v5    # "verified":I
    .restart local v22    # "skip":J
    .restart local v24    # "verified":I
    :try_start_d
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Asset manifest is not ordered by ROM offset"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v6    # "buffer":[B
    .end local v7    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetManifest$Entry;>;"
    .end local v13    # "completedPayload":J
    .end local v16    # "totalPayload":J
    .end local v18    # "streamPosition":J
    .end local v24    # "verified":I
    .end local p0    # "rom":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;
    throw v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_6

    .line 146
    .end local v2    # "entry":Lcom/ahsim/demulation/RomAssetManifest$Entry;
    .end local v9    # "entryIndex":I
    .end local v22    # "skip":J
    .restart local v6    # "buffer":[B
    .restart local v7    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetManifest$Entry;>;"
    .restart local v13    # "completedPayload":J
    .restart local v16    # "totalPayload":J
    .restart local v18    # "streamPosition":J
    .restart local v24    # "verified":I
    .restart local p0    # "rom":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomAssetProviderCore$ProgressListener;
    :catch_6
    move-exception v0

    move-object v15, v6

    move/from16 v4, v24

    goto/16 :goto_c

    .line 143
    :catch_7
    move-exception v0

    move-object v15, v6

    move/from16 v4, v24

    goto/16 :goto_d

    .line 146
    .end local v24    # "verified":I
    .restart local v5    # "verified":I
    :catch_8
    move-exception v0

    move/from16 v24, v5

    move-object v15, v6

    move/from16 v4, v24

    .end local v5    # "verified":I
    .restart local v24    # "verified":I
    goto :goto_c

    .line 143
    .end local v24    # "verified":I
    .restart local v5    # "verified":I
    :catch_9
    move-exception v0

    move/from16 v24, v5

    move-object v15, v6

    move/from16 v4, v24

    .end local v5    # "verified":I
    .restart local v24    # "verified":I
    goto :goto_d

    .line 146
    .end local v24    # "verified":I
    .local v4, "verified":I
    :catch_a
    move-exception v0

    move/from16 v24, v4

    move-object v15, v6

    .end local v4    # "verified":I
    .restart local v24    # "verified":I
    goto :goto_c

    .line 143
    .end local v24    # "verified":I
    .restart local v4    # "verified":I
    :catch_b
    move-exception v0

    move/from16 v24, v4

    move-object v15, v6

    .end local v4    # "verified":I
    .restart local v24    # "verified":I
    goto :goto_d

    .line 77
    .end local v24    # "verified":I
    .restart local v4    # "verified":I
    .restart local v9    # "entryIndex":I
    :cond_12
    move/from16 v24, v4

    .line 136
    .end local v4    # "verified":I
    .end local v9    # "entryIndex":I
    .restart local v24    # "verified":I
    :try_start_e
    new-instance v2, Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_10

    const/4 v9, 0x0

    move-object/from16 v8, p3

    move-object v15, v6

    move-wide/from16 v5, v16

    move/from16 v4, v24

    .end local v6    # "buffer":[B
    .end local v16    # "totalPayload":J
    .end local v24    # "verified":I
    .restart local v4    # "verified":I
    .local v5, "totalPayload":J
    .local v15, "buffer":[B
    :try_start_f
    invoke-direct/range {v2 .. v9}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;-><init>(IIJLjava/util/List;Ljava/io/File;Lcom/ahsim/demulation/GenesisRomAssetProviderCore-IA;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_e

    .line 137
    .end local v5    # "totalPayload":J
    .local v2, "result":Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;
    .restart local v16    # "totalPayload":J
    :try_start_10
    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;->allVerified()Z

    move-result v0

    if-nez v0, :cond_13

    .line 140
    invoke-static/range {p3 .. p3}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore;->deleteRecursively(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_c

    .line 142
    :cond_13
    return-object v2

    .line 146
    .end local v2    # "result":Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;
    :catch_c
    move-exception v0

    goto :goto_c

    .line 143
    :catch_d
    move-exception v0

    goto :goto_d

    .line 146
    .end local v16    # "totalPayload":J
    .restart local v5    # "totalPayload":J
    :catch_e
    move-exception v0

    move-wide/from16 v16, v5

    .end local v5    # "totalPayload":J
    .restart local v16    # "totalPayload":J
    goto :goto_c

    .line 143
    .end local v16    # "totalPayload":J
    .restart local v5    # "totalPayload":J
    :catch_f
    move-exception v0

    move-wide/from16 v16, v5

    .end local v5    # "totalPayload":J
    .restart local v16    # "totalPayload":J
    goto :goto_d

    .line 146
    .end local v4    # "verified":I
    .end local v15    # "buffer":[B
    .restart local v6    # "buffer":[B
    .restart local v24    # "verified":I
    :catch_10
    move-exception v0

    move-object v15, v6

    move/from16 v4, v24

    .end local v6    # "buffer":[B
    .end local v24    # "verified":I
    .restart local v4    # "verified":I
    .restart local v15    # "buffer":[B
    goto :goto_c

    .line 143
    .end local v4    # "verified":I
    .end local v15    # "buffer":[B
    .restart local v6    # "buffer":[B
    .restart local v24    # "verified":I
    :catch_11
    move-exception v0

    move-object v15, v6

    move/from16 v4, v24

    .end local v6    # "buffer":[B
    .end local v24    # "verified":I
    .restart local v4    # "verified":I
    .restart local v15    # "buffer":[B
    goto :goto_d

    .line 146
    .end local v15    # "buffer":[B
    .restart local v6    # "buffer":[B
    :catch_12
    move-exception v0

    move-object v15, v6

    .line 147
    .end local v6    # "buffer":[B
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v15    # "buffer":[B
    :goto_c
    invoke-static/range {p3 .. p3}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore;->deleteRecursively(Ljava/io/File;)V

    .line 148
    throw v0

    .line 143
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v15    # "buffer":[B
    .restart local v6    # "buffer":[B
    :catch_13
    move-exception v0

    move-object v15, v6

    .line 144
    .end local v6    # "buffer":[B
    .local v0, "e":Ljava/io/IOException;
    .restart local v15    # "buffer":[B
    :goto_d
    invoke-static/range {p3 .. p3}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore;->deleteRecursively(Ljava/io/File;)V

    .line 145
    throw v0

    .line 60
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "verified":I
    .end local v7    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetManifest$Entry;>;"
    .end local v13    # "completedPayload":J
    .end local v15    # "buffer":[B
    .end local v16    # "totalPayload":J
    .end local v18    # "streamPosition":J
    :cond_14
    move-wide/from16 v11, p1

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Staging directory is unavailable"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_15
    move-wide/from16 v11, p1

    new-instance v0, Ljava/io/IOException;

    const-string v2, "ROM stream is unavailable"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static hex([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .line 209
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 210
    .local v0, "alphabet":[C
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 211
    .local v1, "chars":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 212
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 213
    .local v3, "value":I
    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 214
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v3, 0xf

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 211
    .end local v3    # "value":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method private static safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "root"    # Ljava/io/File;
    .param p1, "relativePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 179
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "rootPath":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "filePath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    return-object v0

    .line 182
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsafe asset output path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static validateManifest(Ljava/util/List;J)V
    .locals 6
    .param p1, "knownRomSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomAssetManifest$Entry;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    .local p0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetManifest$Entry;>;"
    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 155
    const-wide/16 v0, 0x0

    .line 156
    .local v0, "previousEnd":J
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ahsim/demulation/RomAssetManifest$Entry;

    .line 157
    .local v3, "entry":Lcom/ahsim/demulation/RomAssetManifest$Entry;
    iget-wide v4, v3, Lcom/ahsim/demulation/RomAssetManifest$Entry;->offset:J

    cmp-long v4, v4, v0

    if-ltz v4, :cond_3

    .line 158
    iget v4, v3, Lcom/ahsim/demulation/RomAssetManifest$Entry;->length:I

    if-lez v4, :cond_2

    .line 159
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-ltz v4, :cond_1

    invoke-virtual {v3}, Lcom/ahsim/demulation/RomAssetManifest$Entry;->endOffset()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-gtz v4, :cond_0

    goto :goto_1

    .line 160
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ROM is too small for asset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/ahsim/demulation/RomAssetManifest$Entry;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 162
    :cond_1
    :goto_1
    invoke-virtual {v3}, Lcom/ahsim/demulation/RomAssetManifest$Entry;->endOffset()J

    move-result-wide v0

    .line 163
    .end local v3    # "entry":Lcom/ahsim/demulation/RomAssetManifest$Entry;
    goto :goto_0

    .line 158
    .restart local v3    # "entry":Lcom/ahsim/demulation/RomAssetManifest$Entry;
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid asset length for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/ahsim/demulation/RomAssetManifest$Entry;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v4, "ROM asset manifest overlaps or is unsorted"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    .end local v3    # "entry":Lcom/ahsim/demulation/RomAssetManifest$Entry;
    :cond_4
    return-void

    .line 154
    .end local v0    # "previousEnd":J
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM asset manifest is empty"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
