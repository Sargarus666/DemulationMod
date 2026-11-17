.class public final Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;
.super Ljava/lang/Object;
.source "GenesisRomNativeDataAssetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;,
        Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$ProgressListener;
    }
.end annotation


# static fields
.field private static final ACTION_INFO:I = 0x6cf00

.field private static final FREMEN_COUNTS:I = 0x95ce0

.field private static final FREMEN_TYPES:I = 0x95cd8

.field private static final MAX_ROM_BYTES:I = 0x800000

.field private static final MCV_ANCHORS:I = 0xfee7c

.field private static final ROM_IMAGE_BYTES:I = 0x100000

.field private static final RUBBLE_VISUAL_IDS:I = 0x6bbfa

.field private static final STRUCT_PTRS:I = 0x6b954

.field private static final VISUAL_PTRS:I = 0x6a9bc


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static be16([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->checkRange([BII)V

    .line 188
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
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

    .line 192
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->checkRange([BII)V

    .line 193
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

.method public static buildRemainingPureDataPack([B)[B
    .locals 17
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    move-object/from16 v0, p0

    if-eqz v0, :cond_d

    array-length v1, v0

    const/high16 v2, 0x100000

    if-lt v1, v2, :cond_d

    .line 105
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x2fc

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 107
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    const v3, 0x6cf00

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v3

    .line 108
    .local v3, "actionInfo":I
    const v4, 0x95cd8

    invoke-static {v0, v4}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v4

    .line 109
    .local v4, "fremenTypes":I
    const v5, 0x95ce0

    invoke-static {v0, v5}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v5

    .line 110
    .local v5, "fremenCounts":I
    const v6, 0x6bbfa

    invoke-static {v0, v6}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v6

    .line 111
    .local v6, "rubbleVisualIds":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/16 v8, 0xe

    if-ge v7, v8, :cond_0

    mul-int/lit8 v8, v7, 0xc

    add-int/2addr v8, v3

    const/4 v9, 0x2

    invoke-static {v1, v0, v8, v9}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 112
    .end local v7    # "i":I
    :cond_0
    const/16 v7, 0x8

    invoke-static {v1, v0, v4, v7}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    .line 113
    const/16 v9, 0x10

    invoke-static {v1, v0, v5, v9}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    .line 114
    invoke-static {v1, v0, v6, v8}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    .line 116
    const/16 v8, 0x40

    new-array v9, v8, [Z

    .line 117
    .local v9, "used":[Z
    const/4 v10, 0x0

    .local v10, "type":I
    :goto_1
    const/16 v11, 0x13

    const/4 v12, 0x1

    if-ge v10, v11, :cond_1

    .line 118
    const v11, 0x6b954

    invoke-static {v0, v11, v10}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->ptr24([BII)I

    move-result v11

    .line 119
    .local v11, "p":I
    add-int/lit8 v13, v11, 0x3e

    invoke-static {v0, v13}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->be16([BI)I

    move-result v13

    and-int/lit8 v13, v13, 0x3f

    .line 120
    .local v13, "visual":I
    aput-boolean v12, v9, v13

    .line 117
    .end local v11    # "p":I
    .end local v13    # "visual":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 122
    .end local v10    # "type":I
    :cond_1
    const/4 v10, 0x0

    .local v10, "layout":I
    :goto_2
    const/4 v13, 0x7

    if-ge v10, v13, :cond_2

    .line 123
    mul-int/lit8 v13, v10, 0x2

    add-int/2addr v13, v6

    invoke-static {v0, v13}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->be16([BI)I

    move-result v13

    and-int/lit8 v13, v13, 0x3f

    .line 124
    .restart local v13    # "visual":I
    aput-boolean v12, v9, v13

    .line 122
    .end local v13    # "visual":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 128
    .end local v10    # "layout":I
    :cond_2
    new-instance v10, Ljava/util/TreeMap;

    invoke-direct {v10}, Ljava/util/TreeMap;-><init>()V

    .line 129
    .local v10, "uniqueBySource":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;[B>;"
    new-array v12, v8, [I

    .line 130
    .local v12, "sourceByVisual":[I
    new-array v8, v8, [I

    .line 131
    .local v8, "lengthByVisual":[I
    const/4 v13, 0x0

    .line 132
    .local v13, "usedCount":I
    const/4 v14, 0x0

    .local v14, "visual":I
    :goto_3
    array-length v15, v9

    if-ge v14, v15, :cond_5

    .line 133
    aget-boolean v15, v9, v14

    if-nez v15, :cond_3

    goto :goto_4

    .line 134
    :cond_3
    const v15, 0x6a9bc

    invoke-static {v0, v15, v14}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->ptr24([BII)I

    move-result v15

    .line 135
    .local v15, "p":I
    invoke-static {v0, v15, v14}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->parseVisualStream([BII)[B

    move-result-object v2

    .line 136
    .local v2, "stream":[B
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10, v7, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_4
    aput v15, v12, v14

    .line 138
    array-length v7, v2

    aput v7, v8, v14

    .line 139
    add-int/lit8 v13, v13, 0x1

    .line 132
    .end local v2    # "stream":[B
    .end local v15    # "p":I
    :goto_4
    add-int/lit8 v14, v14, 0x1

    const/16 v2, 0x2fc

    const/16 v7, 0x8

    goto :goto_3

    .line 141
    .end local v14    # "visual":I
    :cond_5
    const/16 v2, 0x15

    if-ne v13, v2, :cond_c

    invoke-virtual {v10}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-ne v2, v11, :cond_c

    .line 145
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 146
    .local v2, "offsetBySource":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 147
    .local v7, "streamBytes":I
    invoke-virtual {v10}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 148
    .local v14, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[B>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    move/from16 v16, v3

    .end local v3    # "actionInfo":I
    .local v16, "actionInfo":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    add-int/2addr v7, v3

    .line 150
    .end local v14    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[B>;"
    move/from16 v3, v16

    goto :goto_5

    .line 151
    .end local v16    # "actionInfo":I
    .restart local v3    # "actionInfo":I
    :cond_6
    move/from16 v16, v3

    .end local v3    # "actionInfo":I
    .restart local v16    # "actionInfo":I
    const/16 v3, 0x234

    if-ne v7, v3, :cond_b

    .line 154
    const/4 v3, 0x0

    .local v3, "visual":I
    :goto_6
    array-length v11, v9

    if-ge v3, v11, :cond_8

    .line 155
    aget-boolean v11, v9, v3

    if-nez v11, :cond_7

    goto :goto_7

    .line 156
    :cond_7
    invoke-static {v1, v3}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->writeU16(Ljava/io/ByteArrayOutputStream;I)V

    .line 157
    aget v11, v12, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v1, v11}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->writeU16(Ljava/io/ByteArrayOutputStream;I)V

    .line 158
    aget v11, v8, v3

    invoke-static {v1, v11}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->writeU16(Ljava/io/ByteArrayOutputStream;I)V

    .line 154
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 160
    .end local v3    # "visual":I
    :cond_8
    invoke-virtual {v10}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .local v11, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[B>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    invoke-virtual {v1, v14}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .end local v11    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[B>;"
    goto :goto_8

    .line 161
    :cond_9
    const v3, 0xfee7c

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v3

    const/16 v11, 0x8

    invoke-static {v1, v0, v3, v11}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    .line 163
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 164
    .local v3, "result":[B
    array-length v11, v3

    const/16 v14, 0x2fc

    if-ne v11, v14, :cond_a

    .line 165
    return-object v3

    .line 164
    :cond_a
    new-instance v11, Ljava/io/IOException;

    const-string v14, "Unexpected remaining pure-data pack size"

    invoke-direct {v11, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 151
    .end local v3    # "result":[B
    :cond_b
    new-instance v3, Ljava/io/IOException;

    const-string v11, "Unexpected native visual-stream payload size"

    invoke-direct {v3, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 141
    .end local v2    # "offsetBySource":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v7    # "streamBytes":I
    .end local v16    # "actionInfo":I
    .local v3, "actionInfo":I
    :cond_c
    move/from16 v16, v3

    .line 142
    .end local v3    # "actionInfo":I
    .restart local v16    # "actionInfo":I
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unexpected structure visual topology"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "fremenTypes":I
    .end local v5    # "fremenCounts":I
    .end local v6    # "rubbleVisualIds":I
    .end local v8    # "lengthByVisual":[I
    .end local v9    # "used":[Z
    .end local v10    # "uniqueBySource":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;[B>;"
    .end local v12    # "sourceByVisual":[I
    .end local v13    # "usedCount":I
    .end local v16    # "actionInfo":I
    :cond_d
    new-instance v1, Ljava/io/IOException;

    const-string v2, "ROM image unavailable"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
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

    .line 210
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    if-gt p1, v0, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p1

    if-lt v0, p2, :cond_0

    .line 213
    return-void

    .line 211
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Native pure-data ROM range is outside selected image"

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

    .line 252
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 253
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 255
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 257
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

    .line 258
    :cond_3
    :goto_1
    return-void

    .line 252
    :cond_4
    :goto_2
    return-void
.end method

.method public static extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;
    .locals 14
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    move-object/from16 v6, p3

    move-object/from16 v8, p4

    if-eqz p0, :cond_a

    .line 57
    if-eqz v6, :cond_9

    .line 58
    const-wide/32 v0, 0x800000

    cmp-long v0, p1, v0

    if-gtz v0, :cond_8

    .line 59
    invoke-static/range {p0 .. p2}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->readAll(Ljava/io/InputStream;J)[B

    move-result-object v9

    .line 60
    .local v9, "rom":[B
    array-length v0, v9

    const/high16 v1, 0x100000

    if-lt v0, v1, :cond_7

    .line 62
    invoke-static {v9}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->buildRemainingPureDataPack([B)[B

    move-result-object v10

    .line 63
    .local v10, "pack":[B
    invoke-static {}, Lcom/ahsim/demulation/RomNativeDataAssetManifest;->entries()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;

    .line 64
    .local v11, "expected":Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v5, "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v6}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 67
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not create native-data staging"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    :goto_0
    :try_start_0
    array-length v0, v10

    iget v1, v11, Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;->length:I

    if-ne v0, v1, :cond_6

    iget-object v0, v11, Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;->sha256:Ljava/lang/String;

    invoke-static {v10}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->sha256([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    .line 76
    :cond_2
    iget-object v0, v11, Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object v12, v0

    .line 77
    .local v12, "out":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    move-object v13, v0

    .line 78
    .local v13, "parent":Ljava/io/File;
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 79
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not create native-data staging directory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "rom":[B
    .end local v10    # "pack":[B
    .end local v11    # "expected":Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$ProgressListener;
    throw v0

    .line 81
    .restart local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "rom":[B
    .restart local v10    # "pack":[B
    .restart local v11    # "expected":Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$ProgressListener;
    :cond_4
    :goto_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 82
    .local v1, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 83
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 85
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    if-eqz v8, :cond_5

    iget-object v0, v11, Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;->relativePath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {v8, v1, v1, v0}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$ProgressListener;->onProgress(IILjava/lang/String;)V

    .line 86
    :cond_5
    new-instance v0, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;

    array-length v1, v10

    int-to-long v3, v1

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;-><init>(IIJLjava/util/List;Ljava/io/File;Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider-IA;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    .line 81
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
    .end local v11    # "expected":Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$ProgressListener;
    :goto_2
    throw v2

    .line 72
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .end local v12    # "out":Ljava/io/File;
    .end local v13    # "parent":Ljava/io/File;
    .restart local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "rom":[B
    .restart local v10    # "pack":[B
    .restart local v11    # "expected":Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$ProgressListener;
    :cond_6
    :goto_3
    iget-object v0, v11, Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-static/range {p3 .. p3}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 74
    new-instance v0, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider$Result;-><init>(IIJLjava/util/List;Ljava/io/File;Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider-IA;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    .line 87
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    invoke-static/range {p3 .. p3}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 89
    throw v0

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "pack":[B
    .end local v11    # "expected":Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is too small for native pure-data tables"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    .end local v9    # "rom":[B
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is unexpectedly large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Native-data staging is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM stream is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseVisualStream([BII)[B
    .locals 4
    .param p0, "rom"    # [B
    .param p1, "p"    # I
    .param p2, "visual"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 170
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .local v1, "step":I
    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 171
    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, p1

    const/4 v3, 0x4

    invoke-static {p0, v2, v3}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->checkRange([BII)V

    .line 172
    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, p1

    invoke-virtual {v0, p0, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 173
    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->be16([BI)I

    move-result v2

    const v3, 0xffff

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 170
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v1    # "step":I
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Visual stream has no terminator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static ptr24([BII)I
    .locals 5
    .param p0, "rom"    # [B
    .param p1, "table"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-static {p0, p1}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v0

    .line 180
    .local v0, "physicalTable":I
    mul-int/lit8 v1, p2, 0x4

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->be32([BI)J

    move-result-wide v1

    .line 181
    .local v1, "raw":J
    const-wide/32 v3, 0xffffff

    and-long/2addr v3, v1

    long-to-int v3, v3

    .line 182
    .local v3, "p":I
    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->checkRange([BII)V

    .line 183
    return v3
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

    .line 216
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/32 v0, 0x800000

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    long-to-int v0, p1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x100000

    .line 217
    .local v0, "initial":I
    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 218
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x4000

    new-array v2, v2, [B

    .line 219
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 221
    .local v3, "total":I
    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 222
    .local v4, "n":I
    if-gez v4, :cond_1

    .line 228
    .end local v4    # "n":I
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 223
    .restart local v4    # "n":I
    :cond_1
    if-nez v4, :cond_2

    goto :goto_1

    .line 224
    :cond_2
    add-int/2addr v3, v4

    .line 225
    const/high16 v5, 0x800000

    if-gt v3, v5, :cond_3

    .line 226
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 227
    .end local v4    # "n":I
    goto :goto_1

    .line 225
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

    .line 232
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 233
    .local v0, "f":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "rp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 235
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

    .line 236
    return-object v0

    .line 235
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unsafe native-data asset path"

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

    .line 241
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 242
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 243
    .local v1, "d":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 244
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

    .line 245
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 246
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "d":[B
    .end local v2    # "b":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 247
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

    .line 205
    invoke-static {p1, p2, p3}, Lcom/ahsim/demulation/GenesisRomNativeDataAssetProvider;->checkRange([BII)V

    .line 206
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 207
    return-void
.end method

.method private static writeU16(Ljava/io/ByteArrayOutputStream;I)V
    .locals 1
    .param p0, "out"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "value"    # I

    .line 200
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 201
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 202
    return-void
.end method
