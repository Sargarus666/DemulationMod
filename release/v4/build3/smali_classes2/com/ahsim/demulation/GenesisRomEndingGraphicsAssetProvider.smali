.class public final Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;
.super Ljava/lang/Object;
.source "GenesisRomEndingGraphicsAssetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;,
        Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;,
        Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;
    }
.end annotation


# static fields
.field private static final FONT_STREAM:I = 0x506c8

.field private static final HOUSE_PALETTE_GRADIENTS:I = 0x6c714

.field private static final INITIAL_PALETTE:I = 0xa6d18

.field private static final MAP_BYTES:I = 0xe00

.field private static final MAX_ROM_BYTES:I = 0x1000000

.field private static final RESOURCE_MAP_DESCRIPTOR:I = 0xc7244

.field private static final RESOURCE_PATTERN_TABLE:I = 0xc1216

.field private static final WHITE_PALETTE:I = 0x6c700


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static be16([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "o"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->checkRange([BII)V

    .line 312
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static be32([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "o"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->checkRange([BII)V

    .line 317
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static buildAssets([B)Ljava/util/List;
    .locals 15
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;>;"
    const v1, 0xc1216

    invoke-static {p0, v1}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v1

    .line 126
    .local v1, "patternTable":I
    new-instance v2, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;

    const-string v3, "ending/planet_patterns.bin"

    invoke-static {p0, v1}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->loadPatternsPersistentScratch([BI)[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    const v2, 0xc7244

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    .line 129
    .local v2, "mapDescriptor":I
    add-int/lit8 v3, v2, 0x2

    invoke-static {p0, v3}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->be32([BI)I

    move-result v3

    const v4, 0xffffff

    and-int/2addr v3, v4

    .line 130
    .local v3, "mapPtr":I
    const/high16 v4, 0x10000

    new-array v5, v4, [B

    .line 131
    .local v5, "mapScratch":[B
    invoke-static {p0, v3, v5}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->decompressInto([BI[B)I

    move-result v6

    .line 132
    .local v6, "mapBytes":I
    const/16 v7, 0xe00

    if-ne v6, v7, :cond_2

    .line 133
    new-instance v8, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;

    const-string v9, "ending/planet_map.bin"

    const/4 v10, 0x0

    invoke-static {v5, v10, v7}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->copy([BII)[B

    move-result-object v7

    invoke-direct {v8, v9, v7}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    const v7, 0x506c8

    invoke-static {p0, v7}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v7

    .line 136
    .local v7, "fontStream":I
    invoke-static {p0, v7}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->be16([BI)I

    move-result v8

    .line 137
    .local v8, "expectedFont":I
    const/16 v9, 0x1000

    if-ne v8, v9, :cond_1

    .line 138
    new-array v4, v4, [B

    .line 139
    .local v4, "fontScratch":[B
    add-int/lit8 v9, v7, 0x2

    invoke-static {p0, v9, v4}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->decompressInto([BI[B)I

    move-result v9

    .line 140
    .local v9, "fontBytes":I
    if-ne v9, v8, :cond_0

    .line 141
    new-instance v11, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;

    const-string v12, "ending/font.bin"

    invoke-static {v4, v10, v8}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->copy([BII)[B

    move-result-object v10

    invoke-direct {v11, v12, v10}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v10, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;

    .line 144
    const v11, 0xa6d18

    invoke-static {p0, v11}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v11

    .line 143
    const/16 v12, 0x80

    invoke-static {p0, v11, v12}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->copy([BII)[B

    move-result-object v11

    const-string v12, "ending/initial_palette.bin"

    invoke-direct {v10, v12, v11}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v10, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;

    .line 146
    const v11, 0x6c700

    invoke-static {p0, v11}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v11

    .line 145
    const/16 v12, 0x12

    invoke-static {p0, v11, v12}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->copy([BII)[B

    move-result-object v11

    const-string v13, "ending/fade_white.bin"

    invoke-direct {v10, v13, v11}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    const v10, 0x6c714

    invoke-static {p0, v10}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v10

    .line 149
    .local v10, "houseGradients":I
    new-instance v11, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;

    add-int/lit8 v13, v10, 0x14

    invoke-static {p0, v13, v12}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->copy([BII)[B

    move-result-object v13

    const-string v14, "ending/fade_atreides.bin"

    invoke-direct {v11, v14, v13}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v11, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;

    const-string v13, "ending/fade_harkonnen.bin"

    invoke-static {p0, v10, v12}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->copy([BII)[B

    move-result-object v14

    invoke-direct {v11, v13, v14}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v11, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;

    add-int/lit8 v13, v10, 0x28

    invoke-static {p0, v13, v12}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->copy([BII)[B

    move-result-object v12

    const-string v13, "ending/fade_ordos.bin"

    invoke-direct {v11, v13, v12}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    return-object v0

    .line 140
    .end local v10    # "houseGradients":I
    :cond_0
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Ending font decompression mismatch"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 137
    .end local v4    # "fontScratch":[B
    .end local v9    # "fontBytes":I
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v9, "Unexpected ending font size"

    invoke-direct {v4, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 132
    .end local v7    # "fontStream":I
    .end local v8    # "expectedFont":I
    :cond_2
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ending map decompressed to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static checkRange([BII)V
    .locals 2
    .param p0, "b"    # [B
    .param p1, "o"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 323
    return-void

    .line 322
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Ending ROM range"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static copy([BII)[B
    .locals 2
    .param p0, "source"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->checkRange([BII)V

    .line 293
    new-array v0, p2, [B

    .line 294
    .local v0, "out":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    return-object v0
.end method

.method private static decompressInto([BI[B)I
    .locals 9
    .param p0, "rom"    # [B
    .param p1, "source"    # I
    .param p2, "out"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    move v0, p1

    .local v0, "src":I
    const/4 v1, 0x0

    .local v1, "dst":I
    const/4 v2, 0x0

    .line 232
    .local v2, "guard":I
    :goto_0
    const/4 v3, 0x1

    add-int/2addr v2, v3

    const v4, 0x186a0

    if-gt v2, v4, :cond_c

    .line 233
    invoke-static {p0, v0, v3}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->checkRange([BII)V

    .line 234
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "src":I
    .local v4, "src":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 235
    .local v0, "c":I
    const/16 v5, 0x80

    if-ne v0, v5, :cond_0

    .line 269
    .end local v0    # "c":I
    return v1

    .line 236
    .restart local v0    # "c":I
    :cond_0
    const/16 v5, 0x81

    if-lt v0, v5, :cond_1

    const/16 v5, 0xbf

    if-gt v0, v5, :cond_1

    .line 237
    and-int/lit8 v3, v0, 0x3f

    .line 238
    .local v3, "n":I
    invoke-static {p0, v4, v3}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->checkRange([BII)V

    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->ensureOutput([BII)V

    .line 239
    invoke-static {p0, v4, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v3

    add-int/2addr v1, v3

    .line 240
    .end local v3    # "n":I
    move v0, v4

    goto/16 :goto_5

    :cond_1
    const/16 v5, 0x7f

    const/4 v6, 0x3

    if-gt v0, v5, :cond_4

    .line 241
    invoke-static {p0, v4, v3}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->checkRange([BII)V

    .line 242
    shl-int/lit8 v3, v0, 0x8

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "src":I
    .local v5, "src":I
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xfff

    .line 243
    .local v3, "back":I
    ushr-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v6

    .line 244
    .local v4, "n":I
    if-lez v3, :cond_3

    if-gt v3, v1, :cond_3

    .line 245
    invoke-static {p2, v1, v4}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->ensureOutput([BII)V

    .line 246
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_2

    sub-int v7, v1, v3

    aget-byte v7, p2, v7

    aput-byte v7, p2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 247
    .end local v3    # "back":I
    .end local v4    # "n":I
    .end local v6    # "i":I
    :cond_2
    move v0, v5

    goto/16 :goto_5

    .line 244
    .restart local v3    # "back":I
    .restart local v4    # "n":I
    :cond_3
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Ending short-copy range"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 247
    .end local v3    # "back":I
    .end local v5    # "src":I
    .local v4, "src":I
    :cond_4
    const/16 v3, 0xfd

    if-gt v0, v3, :cond_7

    .line 248
    const/4 v3, 0x2

    invoke-static {p0, v4, v3}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->checkRange([BII)V

    .line 249
    and-int/lit8 v3, v0, 0x3f

    add-int/2addr v3, v6

    .line 250
    .local v3, "n":I
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    .local v5, "from":I
    add-int/lit8 v4, v4, 0x2

    .line 251
    if-ltz v5, :cond_6

    if-ge v5, v1, :cond_6

    .line 252
    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->ensureOutput([BII)V

    .line 253
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    if-ge v6, v3, :cond_5

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "dst":I
    .local v7, "dst":I
    add-int v8, v5, v6

    aget-byte v8, p2, v8

    aput-byte v8, p2, v1

    add-int/lit8 v6, v6, 0x1

    move v1, v7

    goto :goto_2

    .line 254
    .end local v3    # "n":I
    .end local v5    # "from":I
    .end local v6    # "i":I
    .end local v7    # "dst":I
    .restart local v1    # "dst":I
    :cond_5
    move v0, v4

    goto/16 :goto_5

    .line 251
    .restart local v3    # "n":I
    .restart local v5    # "from":I
    :cond_6
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Ending absolute-copy range"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 254
    .end local v3    # "n":I
    .end local v5    # "from":I
    :cond_7
    const/16 v3, 0xfe

    if-ne v0, v3, :cond_9

    .line 255
    invoke-static {p0, v4, v6}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->checkRange([BII)V

    .line 256
    aget-byte v3, p0, v4

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    .line 257
    .restart local v3    # "n":I
    add-int/lit8 v5, v4, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .local v5, "value":I
    add-int/lit8 v4, v4, 0x3

    .line 258
    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->ensureOutput([BII)V

    .line 259
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    if-ge v6, v3, :cond_8

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "dst":I
    .restart local v7    # "dst":I
    int-to-byte v8, v5

    aput-byte v8, p2, v1

    add-int/lit8 v6, v6, 0x1

    move v1, v7

    goto :goto_3

    .line 260
    .end local v3    # "n":I
    .end local v5    # "value":I
    .end local v6    # "i":I
    .end local v7    # "dst":I
    .restart local v1    # "dst":I
    :cond_8
    move v0, v4

    goto :goto_5

    .line 261
    :cond_9
    const/4 v3, 0x4

    invoke-static {p0, v4, v3}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->checkRange([BII)V

    .line 262
    aget-byte v3, p0, v4

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    .line 263
    .restart local v3    # "n":I
    add-int/lit8 v5, v4, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v4, 0x3

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    .local v5, "from":I
    add-int/lit8 v4, v4, 0x4

    .line 264
    if-ltz v5, :cond_b

    if-ge v5, v1, :cond_b

    .line 265
    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->ensureOutput([BII)V

    .line 266
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    if-ge v6, v3, :cond_a

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "dst":I
    .restart local v7    # "dst":I
    add-int v8, v5, v6

    aget-byte v8, p2, v8

    aput-byte v8, p2, v1

    add-int/lit8 v6, v6, 0x1

    move v1, v7

    goto :goto_4

    .end local v7    # "dst":I
    .restart local v1    # "dst":I
    :cond_a
    move v0, v4

    .line 268
    .end local v3    # "n":I
    .end local v4    # "src":I
    .end local v5    # "from":I
    .end local v6    # "i":I
    .local v0, "src":I
    :goto_5
    goto/16 :goto_0

    .line 264
    .local v0, "c":I
    .restart local v3    # "n":I
    .restart local v4    # "src":I
    .restart local v5    # "from":I
    :cond_b
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Ending long-copy range"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 232
    .end local v3    # "n":I
    .end local v4    # "src":I
    .end local v5    # "from":I
    .local v0, "src":I
    :cond_c
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Ending decompressor guard"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static deleteRecursively(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 284
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 286
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
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

    .line 289
    :cond_3
    :goto_1
    return-void

    .line 283
    :cond_4
    :goto_2
    return-void
.end method

.method private static ensureOutput([BII)V
    .locals 2
    .param p0, "out"    # [B
    .param p1, "dst"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 327
    return-void

    .line 326
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Ending output overrun"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    .local v0, "input":Ljava/io/InputStream;
    .local v1, "knownRomSize":J
    .local v3, "stagingRoot":Ljava/io/File;
    .local v4, "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    invoke-static/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;

    move-result-object p0

    return-object p0
.end method

.method public static extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;
    .locals 17
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    .param p5, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    if-eqz p0, :cond_d

    .line 72
    if-eqz v1, :cond_c

    .line 73
    const-wide/32 v4, 0x1000000

    cmp-long v0, p1, v4

    if-gtz v0, :cond_b

    .line 75
    invoke-static/range {p0 .. p2}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->readAll(Ljava/io/InputStream;J)[B

    move-result-object v4

    .line 76
    .local v4, "rom":[B
    invoke-static {v4, v3}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->verifyAnchors([BLjava/lang/String;)V

    .line 77
    invoke-static {v4}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->buildAssets([B)Ljava/util/List;

    move-result-object v5

    .line 78
    .local v5, "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest;->entries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v0, v6, :cond_a

    .line 82
    invoke-static {v1}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 83
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Could not create ending graphics staging"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 88
    .local v0, "verified":I
    const-wide/16 v6, 0x0

    .line 89
    .local v6, "bytes":J
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v8

    .line 91
    .local v14, "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    move v11, v0

    move-wide v12, v6

    .end local v0    # "verified":I
    .end local v6    # "bytes":J
    .local v8, "i":I
    .local v11, "verified":I
    .local v12, "bytes":J
    :goto_1
    :try_start_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_7

    .line 92
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;

    move-object v6, v0

    .line 93
    .local v6, "asset":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;
    iget-object v0, v6, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;->path:Ljava/lang/String;

    .line 94
    invoke-static {v0}, Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest;->find(Ljava/lang/String;)Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;

    move-result-object v0

    move-object v7, v0

    .line 95
    .local v7, "expected":Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;
    if-eqz v7, :cond_3

    iget-object v0, v6, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;->path:Ljava/lang/String;

    iget-object v9, v6, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;->data:[B

    iget v10, v7, Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;->length:I

    iget-object v15, v7, Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;->sha256:Ljava/lang/String;

    invoke-static {v3, v0, v9, v10, v15}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->matchesExtracted(Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 99
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 97
    :cond_3
    :goto_2
    iget-object v0, v6, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;->path:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :goto_3
    iget-object v0, v6, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;->data:[B

    array-length v0, v0

    int-to-long v9, v0

    add-long/2addr v12, v9

    .line 102
    iget-object v0, v6, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;->path:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object v9, v0

    .line 103
    .local v9, "out":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    move-object v10, v0

    .line 104
    .local v10, "parent":Ljava/io/File;
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    .line 105
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v15, "Could not create ending graphics directory"

    invoke-direct {v0, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "rom":[B
    .end local v5    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;>;"
    .end local v11    # "verified":I
    .end local v12    # "bytes":J
    .end local v14    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    .end local p5    # "profileId":Ljava/lang/String;
    throw v0

    .line 107
    .restart local v4    # "rom":[B
    .restart local v5    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;>;"
    .restart local v11    # "verified":I
    .restart local v12    # "bytes":J
    .restart local v14    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    .restart local p5    # "profileId":Ljava/lang/String;
    :cond_5
    :goto_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v15, v0

    .line 108
    .local v15, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v0, v6, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;->data:[B

    invoke-virtual {v15, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 109
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :try_start_2
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 111
    .end local v15    # "stream":Ljava/io/FileOutputStream;
    if-eqz v2, :cond_6

    add-int/lit8 v0, v8, 0x1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v15

    iget-object v1, v6, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;->path:Ljava/lang/String;

    invoke-interface {v2, v0, v15, v1}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;->onProgress(IILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    .end local v6    # "asset":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;
    .end local v7    # "expected":Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;
    .end local v9    # "out":Ljava/io/File;
    .end local v10    # "parent":Ljava/io/File;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p3

    goto :goto_1

    .line 107
    .restart local v6    # "asset":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;
    .restart local v7    # "expected":Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;
    .restart local v9    # "out":Ljava/io/File;
    .restart local v10    # "parent":Ljava/io/File;
    .restart local v15    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_3
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "rom":[B
    .end local v5    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;>;"
    .end local v11    # "verified":I
    .end local v12    # "bytes":J
    .end local v14    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    .end local p5    # "profileId":Ljava/lang/String;
    :goto_5
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 116
    .end local v6    # "asset":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;
    .end local v7    # "expected":Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;
    .end local v8    # "i":I
    .end local v9    # "out":Ljava/io/File;
    .end local v10    # "parent":Ljava/io/File;
    .end local v15    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "rom":[B
    .restart local v5    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;>;"
    .restart local v11    # "verified":I
    .restart local v12    # "bytes":J
    .restart local v14    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$ProgressListener;
    .restart local p5    # "profileId":Ljava/lang/String;
    :cond_7
    nop

    .line 118
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static/range {p3 .. p3}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 119
    :cond_8
    new-instance v9, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    .line 120
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v15, p3

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    move-object v15, v0

    :goto_6
    const/16 v16, 0x0

    invoke-direct/range {v9 .. v16}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Result;-><init>(IIJLjava/util/List;Ljava/io/File;Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider-IA;)V

    .line 119
    return-object v9

    .line 113
    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    :goto_7
    invoke-static/range {p3 .. p3}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 115
    throw v0

    .line 79
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v11    # "verified":I
    .end local v12    # "bytes":J
    .end local v14    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Ending graphics asset count mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    .end local v4    # "rom":[B
    .end local v5    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider$Asset;>;"
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is unexpectedly large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Ending graphics staging is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM stream is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static loadPatternsPersistentScratch([BI)[B
    .locals 11
    .param p0, "rom"    # [B
    .param p1, "tableOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    move v0, p1

    .line 185
    .local v0, "p":I
    const/4 v1, 0x0

    .line 186
    .local v1, "patternCount":I
    const/4 v2, 0x0

    .line 187
    .local v2, "guard":I
    :goto_0
    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->be16([BI)I

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x40

    if-gt v2, v3, :cond_0

    .line 189
    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->be16([BI)I

    move-result v3

    and-int/lit16 v3, v3, 0x7fff

    add-int/2addr v1, v3

    .line 190
    add-int/lit8 v0, v0, 0x6

    goto :goto_0

    .line 188
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Ending pattern table guard"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 192
    :cond_1
    mul-int/lit8 v3, v1, 0x20

    new-array v3, v3, [B

    .line 193
    .local v3, "out":[B
    const/high16 v4, 0x10000

    new-array v4, v4, [B

    .line 194
    .local v4, "scratch":[B
    move v0, p1

    .line 195
    const/4 v5, 0x0

    .line 197
    .local v5, "dst":I
    :goto_1
    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->be16([BI)I

    move-result v6

    .line 198
    .local v6, "flags":I
    if-nez v6, :cond_2

    .line 212
    .end local v6    # "flags":I
    return-object v3

    .line 199
    .restart local v6    # "flags":I
    :cond_2
    add-int/lit8 v7, v0, 0x2

    invoke-static {p0, v7}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->be32([BI)I

    move-result v7

    const v8, 0xffffff

    and-int/2addr v7, v8

    .line 200
    .local v7, "ptr":I
    add-int/lit8 v0, v0, 0x6

    .line 201
    and-int/lit16 v8, v6, 0x7fff

    mul-int/lit8 v8, v8, 0x20

    .line 202
    .local v8, "bytes":I
    const v9, 0x8000

    and-int/2addr v9, v6

    if-eqz v9, :cond_4

    .line 203
    invoke-static {p0, v7, v4}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->decompressInto([BI[B)I

    .line 204
    array-length v9, v4

    if-gt v8, v9, :cond_3

    .line 205
    const/4 v9, 0x0

    invoke-static {v4, v9, v3, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 204
    :cond_3
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Ending pattern bank exceeds scratch"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 207
    :cond_4
    invoke-static {p0, v7, v8}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->checkRange([BII)V

    .line 208
    invoke-static {p0, v7, v3, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    :goto_2
    add-int/2addr v5, v8

    .line 211
    .end local v6    # "flags":I
    .end local v7    # "ptr":I
    .end local v8    # "bytes":I
    goto :goto_1
.end method

.method private static readAll(Ljava/io/InputStream;J)[B
    .locals 7
    .param p0, "input"    # Ljava/io/InputStream;
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

    const-wide/32 v0, 0x1000000

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

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

    move v5, v4

    .local v5, "count":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    .line 222
    add-int/2addr v3, v5

    .line 223
    const/high16 v4, 0x1000000

    if-gt v3, v4, :cond_1

    .line 224
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 223
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v6, "ROM is unexpectedly large"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 226
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
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

    .line 273
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 274
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "rootPath":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

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

    goto :goto_0

    .line 277
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Ending graphics asset escaped staging root"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 279
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static sha256([B)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 301
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 302
    .local v1, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 303
    .local v2, "out":Ljava/lang/StringBuilder;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v1, v4

    .local v5, "b":B
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

    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 305
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "hash":[B
    .end local v2    # "out":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static verifyAnchors([BLjava/lang/String;)V
    .locals 9
    .param p0, "rom"    # [B
    .param p1, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    const v0, 0xc8000

    invoke-static {p0, v0}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->checkRange([BII)V

    .line 157
    const v0, 0xc1216

    invoke-static {p0, v0}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v0

    .line 158
    .local v0, "p":I
    const v2, 0xc2178

    const v3, 0xc2b76

    const v4, 0xc1230

    const v5, 0xc1b52

    filled-new-array {v4, v5, v2, v3}, [I

    move-result-object v2

    .line 159
    .local v2, "expectedPtrs":[I
    const-string v3, "dune_arrakis_europe_gm_t70246_00"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 160
    invoke-static {p0}, Lcom/ahsim/demulation/GermanRomAddressMap;->isExactGerman([B)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    .line 161
    .local v3, "palEnding":Z
    :goto_1
    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x2

    const v8, 0x8080

    if-eqz v3, :cond_2

    .line 162
    new-array v6, v6, [I

    aput v8, v6, v4

    aput v8, v6, v1

    aput v8, v6, v7

    const v1, 0x807b

    aput v1, v6, v5

    goto :goto_2

    .line 163
    :cond_2
    new-array v6, v6, [I

    aput v8, v6, v4

    aput v8, v6, v1

    aput v8, v6, v7

    aput v8, v6, v5

    :goto_2
    nop

    .line 164
    .local v6, "expectedFlags":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v4, v2

    const v5, 0xffffff

    if-ge v1, v4, :cond_4

    .line 165
    aget v4, v2, v1

    invoke-static {p0, v4}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v4

    .line 166
    .local v4, "expectedPtr":I
    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->be16([BI)I

    move-result v7

    aget v8, v6, v1

    if-ne v7, v8, :cond_3

    add-int/lit8 v7, v0, 0x2

    .line 167
    invoke-static {p0, v7}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->be32([BI)I

    move-result v7

    and-int/2addr v5, v7

    if-ne v5, v4, :cond_3

    .line 170
    nop

    .end local v4    # "expectedPtr":I
    add-int/lit8 v0, v0, 0x6

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 168
    .restart local v4    # "expectedPtr":I
    :cond_3
    new-instance v5, Ljava/io/IOException;

    const-string v7, "Ending planet pattern table changed"

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 172
    .end local v1    # "i":I
    .end local v4    # "expectedPtr":I
    :cond_4
    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->be16([BI)I

    move-result v1

    if-nez v1, :cond_7

    .line 173
    const v1, 0xc7244

    invoke-static {p0, v1}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v1

    .line 174
    .local v1, "mapDescriptor":I
    invoke-static {p0, v1}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->be16([BI)I

    move-result v4

    const v7, 0x8e00

    if-ne v4, v7, :cond_6

    add-int/lit8 v4, v1, 0x2

    .line 175
    invoke-static {p0, v4}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->be32([BI)I

    move-result v4

    and-int/2addr v4, v5

    .line 176
    const v5, 0xc724c

    invoke-static {p0, v5}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 179
    const v4, 0x506c8

    invoke-static {p0, v4}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v4

    invoke-static {p0, v4}, Lcom/ahsim/demulation/GenesisRomEndingGraphicsAssetProvider;->be16([BI)I

    move-result v4

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_5

    .line 181
    return-void

    .line 180
    :cond_5
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Ending font anchor changed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 177
    :cond_6
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Ending planet map descriptor changed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 172
    .end local v1    # "mapDescriptor":I
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Ending planet pattern terminator changed"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
