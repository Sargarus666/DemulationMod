.class public final Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider;
.super Ljava/lang/Object;
.source "GenesisRomWorldDataAssetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;,
        Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$ProgressListener;
    }
.end annotation


# static fields
.field private static final MAX_ROM_BYTES:I = 0x1000000

.field private static final ROM_IMAGE_BYTES:I = 0x100000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static be32([BI)J
    .locals 5
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider;->checkRange([BII)V

    .line 128
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

.method public static buildMapScenarioLayoutPack([B)[B
    .locals 14
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    if-eqz p0, :cond_7

    array-length v0, p0

    const/high16 v1, 0x100000

    if-lt v0, v1, :cond_7

    .line 89
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const v1, 0x16b31

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 91
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    const v2, 0x714a8

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    const/16 v3, 0xc

    invoke-static {v0, p0, v2, v3}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    .line 92
    const v2, 0x6ce82

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v0, p0, v2, v3}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    .line 93
    const/16 v2, 0x581c

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    const/16 v3, 0x100

    invoke-static {v0, p0, v2, v3}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    .line 94
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xf

    if-ge v2, v3, :cond_0

    .line 95
    const v3, 0x6ccb2

    invoke-static {p0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v3

    mul-int/lit8 v4, v2, 0x1c

    add-int/2addr v3, v4

    .line 96
    .local v3, "base":I
    add-int/lit8 v4, v3, 0xc

    const/4 v5, 0x2

    invoke-static {v0, p0, v4, v5}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    .line 97
    add-int/lit8 v4, v3, 0xe

    invoke-static {v0, p0, v4, v5}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    .line 98
    add-int/lit8 v4, v3, 0x10

    invoke-static {v0, p0, v4, v5}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    .line 94
    .end local v3    # "base":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v2    # "i":I
    :cond_0
    const v2, 0x6b82e

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    const/16 v3, 0xe

    invoke-static {v0, p0, v2, v3}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    .line 101
    const v2, 0x6b740

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    const/16 v3, 0x7e

    invoke-static {v0, p0, v2, v3}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    .line 102
    const v2, 0x6b83c

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    const/16 v3, 0xe0

    invoke-static {v0, p0, v2, v3}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    .line 103
    const v2, 0x6bbc6

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v0, p0, v2, v3}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    .line 104
    const v2, 0x6bbca

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    const/16 v3, 0x30

    invoke-static {v0, p0, v2, v3}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    .line 106
    const/16 v2, 0x1b

    new-array v3, v2, [I

    .line 107
    .local v3, "addresses":[I
    new-array v4, v2, [I

    .line 108
    .local v4, "sizes":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_4

    .line 109
    const v6, 0x1b27a

    invoke-static {p0, v6}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v6

    .line 110
    .local v6, "scenarioTable":I
    mul-int/lit8 v7, v5, 0x4

    add-int/2addr v7, v6

    invoke-static {p0, v7}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider;->be32([BI)J

    move-result-wide v7

    .line 111
    .local v7, "raw":J
    const-wide v9, 0x80000000L

    and-long/2addr v9, v7

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v9, :cond_1

    move v9, v11

    goto :goto_2

    :cond_1
    move v9, v10

    .line 112
    .local v9, "small32":Z
    :goto_2
    const-wide/32 v12, 0xffffff

    and-long/2addr v12, v7

    long-to-int v12, v12

    .line 113
    .local v12, "address":I
    if-eqz v9, :cond_2

    const/16 v13, 0x400

    goto :goto_3

    :cond_2
    const/16 v13, 0x1000

    .line 114
    .local v13, "size":I
    :goto_3
    invoke-static {p0, v12, v13}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider;->checkRange([BII)V

    .line 115
    if-eqz v9, :cond_3

    move v10, v11

    :cond_3
    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 116
    aput v12, v3, v5

    .line 117
    aput v13, v4, v5

    .line 108
    .end local v6    # "scenarioTable":I
    .end local v7    # "raw":J
    .end local v9    # "small32":Z
    .end local v12    # "address":I
    .end local v13    # "size":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 119
    .end local v5    # "i":I
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    if-ge v5, v2, :cond_5

    aget v6, v3, v5

    aget v7, v4, v5

    invoke-static {v0, p0, v6, v7}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 121
    .end local v5    # "i":I
    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 122
    .local v2, "result":[B
    array-length v5, v2

    if-ne v5, v1, :cond_6

    .line 123
    return-object v2

    .line 122
    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string v5, "Unexpected world-data projection size"

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    .end local v0    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "result":[B
    .end local v3    # "addresses":[I
    .end local v4    # "sizes":[I
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM image unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkRange([BII)V
    .locals 2
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    if-gt p1, v0, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p1

    if-lt v0, p2, :cond_0

    .line 143
    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "World-data ROM range is outside selected image"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static deleteRecursively(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 183
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 185
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "children":[Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_3
    :goto_1
    return-void

    .line 182
    :cond_4
    :goto_2
    return-void
.end method

.method public static extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;
    .locals 14
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    move-object/from16 v6, p3

    move-object/from16 v8, p4

    if-eqz p0, :cond_a

    .line 50
    if-eqz v6, :cond_9

    .line 51
    const-wide/32 v0, 0x1000000

    cmp-long v0, p1, v0

    if-gtz v0, :cond_8

    .line 52
    invoke-static/range {p0 .. p2}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider;->readAll(Ljava/io/InputStream;J)[B

    move-result-object v9

    .line 53
    .local v9, "rom":[B
    array-length v0, v9

    const/high16 v1, 0x100000

    if-lt v0, v1, :cond_7

    .line 55
    invoke-static {v9}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider;->buildMapScenarioLayoutPack([B)[B

    move-result-object v10

    .line 56
    .local v10, "pack":[B
    invoke-static {}, Lcom/ahsim/demulation/RomWorldDataAssetManifest;->entries()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;

    .line 57
    .local v11, "expected":Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v5, "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v6}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 60
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not create world-data staging"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    :goto_0
    :try_start_0
    array-length v0, v10

    iget v1, v11, Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;->length:I

    if-ne v0, v1, :cond_6

    iget-object v0, v11, Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;->sha256:Ljava/lang/String;

    invoke-static {v10}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider;->sha256([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    .line 69
    :cond_2
    iget-object v0, v11, Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object v12, v0

    .line 70
    .local v12, "out":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    move-object v13, v0

    .line 71
    .local v13, "parent":Ljava/io/File;
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 72
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not create world-data staging directory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "rom":[B
    .end local v10    # "pack":[B
    .end local v11    # "expected":Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$ProgressListener;
    throw v0

    .line 74
    .restart local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "rom":[B
    .restart local v10    # "pack":[B
    .restart local v11    # "expected":Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$ProgressListener;
    :cond_4
    :goto_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 75
    .local v1, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 76
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 78
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    if-eqz v8, :cond_5

    iget-object v0, v11, Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;->relativePath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {v8, v1, v1, v0}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$ProgressListener;->onProgress(IILjava/lang/String;)V

    .line 79
    :cond_5
    new-instance v0, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;

    array-length v1, v10

    int-to-long v3, v1

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;-><init>(IIJLjava/util/List;Ljava/io/File;Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider-IA;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    .line 74
    .restart local v1    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "rom":[B
    .end local v10    # "pack":[B
    .end local v11    # "expected":Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$ProgressListener;
    :goto_2
    throw v2

    .line 65
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .end local v12    # "out":Ljava/io/File;
    .end local v13    # "parent":Ljava/io/File;
    .restart local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "rom":[B
    .restart local v10    # "pack":[B
    .restart local v11    # "expected":Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$ProgressListener;
    :cond_6
    :goto_3
    iget-object v0, v11, Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-static/range {p3 .. p3}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 67
    new-instance v0, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider$Result;-><init>(IIJLjava/util/List;Ljava/io/File;Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider-IA;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    .line 80
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    invoke-static/range {p3 .. p3}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 82
    throw v0

    .line 53
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "pack":[B
    .end local v11    # "expected":Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is too small for world-data tables"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    .end local v9    # "rom":[B
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is unexpectedly large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "World-data staging is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM stream is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readAll(Ljava/io/InputStream;J)[B
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "knownSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/32 v0, 0x1000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    long-to-int v0, p1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x100000

    .line 147
    .local v0, "initial":I
    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 148
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x4000

    new-array v2, v2, [B

    .line 149
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 151
    .local v3, "total":I
    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 152
    .local v4, "n":I
    if-gez v4, :cond_1

    .line 158
    .end local v4    # "n":I
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 153
    .restart local v4    # "n":I
    :cond_1
    if-nez v4, :cond_2

    goto :goto_1

    .line 154
    :cond_2
    add-int/2addr v3, v4

    .line 155
    const/high16 v5, 0x1000000

    if-gt v3, v5, :cond_3

    .line 156
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 157
    .end local v4    # "n":I
    goto :goto_1

    .line 155
    .restart local v4    # "n":I
    :cond_3
    new-instance v5, Ljava/io/IOException;

    const-string v6, "ROM is unexpectedly large"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "root"    # Ljava/io/File;
    .param p1, "relative"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 163
    .local v0, "f":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "rp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "fp":Ljava/lang/String;
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

    .line 166
    return-object v0

    .line 165
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unsafe world-data asset path"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static sha256([B)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 172
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 173
    .local v1, "d":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 174
    .local v2, "b":Ljava/lang/StringBuilder;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v1, v4

    .local v5, "v":B
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%02x"

    and-int/lit16 v8, v5, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v5    # "v":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 176
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "d":[B
    .end local v2    # "b":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static writeRange(Ljava/io/ByteArrayOutputStream;[BII)V
    .locals 0
    .param p0, "out"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-static {p1, p2, p3}, Lcom/ahsim/demulation/GenesisRomWorldDataAssetProvider;->checkRange([BII)V

    .line 136
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 137
    return-void
.end method
