.class public final Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;
.super Ljava/lang/Object;
.source "GenesisRomWorldTerrainRadarAssetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;,
        Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;,
        Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;
    }
.end annotation


# static fields
.field private static final EXPECTED_COUNTS:[I

.field private static final EXPECTED_POINTERS:[I

.field private static final MAX_ROM_BYTES:I = 0x1000000

.field private static final METATILES:I = 0x4adf0

.field private static final METATILE_COUNT:I = 0x16a

.field private static final PALETTE:I = 0xa6c98

.field private static final PATTERN_COUNT:I = 0x39a

.field private static final RADAR_HOUSE_COLOR_BYTES:I = 0x5

.field private static final RADAR_HOUSE_COLOR_TABLE:I = 0x5252

.field private static final RADAR_TERRAIN_COLOR_BYTES:I = 0x200

.field private static final RADAR_TERRAIN_COLOR_TABLE:I = 0x525a

.field private static final RADAR_TRANSITION_FRAME_BYTES:I = 0x200

.field private static final RADAR_TRANSITION_FRAME_COUNT:I = 0xc

.field private static final RADAR_TRANSITION_FRAME_FIRST:I = 0x673d2

.field private static final RESOURCE_ENTRY:I = 0xc7cb2

.field private static final RESOURCE_ID:I = 0x4

.field private static final RESOURCE_TABLE:I = 0xc7c72

.field private static final STRUCTURE_BEACON_FRAME_BYTES:I = 0x80

.field private static final STRUCTURE_BEACON_FRAME_COUNT:I = 0x8

.field private static final STRUCTURE_BEACON_FRAME_FIRST:I = 0x6910

.field private static final TILE_TABLE:I = 0xbc506


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->EXPECTED_COUNTS:[I

    .line 45
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->EXPECTED_POINTERS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x80
        0x80
        0x80
        0x80
        0x80
        0x80
        0x80
        0x1a
    .end array-data

    :array_1
    .array-data 4
        0xbc538
        0xbcd42
        0xbd774
        0xbe20c
        0xbed2c
        0xbf8f6
        0xc0500
        0xc0f90
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static be16([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->checkRange([BII)V

    .line 348
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
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->checkRange([BII)V

    .line 353
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
    .locals 5
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;>;"
    new-instance v1, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;

    const-string v2, "terrain/patterns.bin"

    invoke-static {p0}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->loadPatternChunks([B)[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v1, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;

    .line 176
    const v2, 0x4adf0

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    const/16 v3, 0x2d40

    invoke-static {p0, v2, v3}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->copy([BII)[B

    move-result-object v2

    const-string v3, "terrain/metatile_descriptors.bin"

    invoke-direct {v1, v3, v2}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;-><init>(Ljava/lang/String;[B)V

    .line 175
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v1, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;

    .line 178
    const v2, 0xa6c98

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    .line 177
    const/16 v3, 0x80

    invoke-static {p0, v2, v3}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->copy([BII)[B

    move-result-object v2

    const-string v3, "terrain/palette.bin"

    invoke-direct {v1, v3, v2}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x205

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 182
    .local v1, "radarColors":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x525a

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    const/16 v3, 0x200

    invoke-static {p0, v2, v3}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->copy([BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 184
    const/16 v2, 0x5252

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    const/4 v3, 0x5

    invoke-static {p0, v2, v3}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->copy([BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 186
    new-instance v2, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;

    const-string v3, "radar/color_tables.bin"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v2, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;

    .line 189
    const v3, 0x673d2

    invoke-static {p0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v3

    .line 188
    const/16 v4, 0x1800

    invoke-static {p0, v3, v4}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->copy([BII)[B

    move-result-object v3

    const-string v4, "radar/transition_quadrants.bin"

    invoke-direct {v2, v4, v3}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v2, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;

    .line 192
    const/16 v3, 0x6910

    invoke-static {p0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v3

    .line 191
    const/16 v4, 0x400

    invoke-static {p0, v3, v4}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->copy([BII)[B

    move-result-object v3

    const-string v4, "world/structure_beacon_patterns.bin"

    invoke-direct {v2, v4, v3}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    return-object v0
.end method

.method private static checkRange([BII)V
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 361
    return-void

    .line 359
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ROM graphics offset outside file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static copy([BII)[B
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->checkRange([BII)V

    .line 341
    new-array v0, p2, [B

    .line 342
    .local v0, "out":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    return-object v0
.end method

.method private static decompress([BII)[B
    .locals 10
    .param p0, "rom"    # [B
    .param p1, "source"    # I
    .param p2, "expectedBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    new-array v0, p2, [B

    .line 265
    .local v0, "out":[B
    move v1, p1

    .line 266
    .local v1, "src":I
    const/4 v2, 0x0

    .line 267
    .local v2, "dst":I
    const/4 v3, 0x0

    .line 269
    .local v3, "guard":I
    :goto_0
    const/4 v4, 0x1

    add-int/2addr v3, v4

    const v5, 0x186a0

    if-gt v3, v5, :cond_f

    .line 270
    invoke-static {p0, v1, v4}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->checkRange([BII)V

    .line 271
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "src":I
    .local v5, "src":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 272
    .local v1, "c":I
    const/16 v6, 0x80

    if-ne v1, v6, :cond_1

    .line 316
    .end local v1    # "c":I
    if-ne v2, p2, :cond_0

    .line 319
    return-object v0

    .line 317
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Terrain block decompressed to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", expected "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    .restart local v1    # "c":I
    :cond_1
    const/16 v6, 0x81

    if-lt v1, v6, :cond_3

    const/16 v6, 0xbf

    if-gt v1, v6, :cond_3

    .line 275
    and-int/lit8 v4, v1, 0x3f

    .line 276
    .local v4, "n":I
    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->checkRange([BII)V

    .line 277
    array-length v6, v0

    sub-int/2addr v6, v4

    if-gt v2, v6, :cond_2

    .line 278
    invoke-static {p0, v5, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    add-int/2addr v5, v4

    .line 280
    add-int/2addr v2, v4

    .line 281
    .end local v4    # "n":I
    move v1, v5

    goto/16 :goto_5

    .line 277
    .restart local v4    # "n":I
    :cond_2
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Terrain literal overrun"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 281
    .end local v4    # "n":I
    :cond_3
    const/16 v6, 0x7f

    const/4 v7, 0x3

    if-gt v1, v6, :cond_6

    .line 282
    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->checkRange([BII)V

    .line 283
    shl-int/lit8 v4, v1, 0x8

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "src":I
    .local v6, "src":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xfff

    .line 284
    .local v4, "back":I
    ushr-int/lit8 v5, v1, 0x4

    add-int/2addr v5, v7

    .line 285
    .local v5, "n":I
    if-lez v4, :cond_5

    if-gt v4, v2, :cond_5

    array-length v7, v0

    sub-int/2addr v7, v5

    if-gt v2, v7, :cond_5

    .line 288
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_4

    sub-int v8, v2, v4

    aget-byte v8, v0, v8

    aput-byte v8, v0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 289
    .end local v4    # "back":I
    .end local v5    # "n":I
    .end local v7    # "i":I
    :cond_4
    move v1, v6

    goto/16 :goto_5

    .line 286
    .restart local v4    # "back":I
    .restart local v5    # "n":I
    :cond_5
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Terrain short-copy range error"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 289
    .end local v4    # "back":I
    .end local v6    # "src":I
    .local v5, "src":I
    :cond_6
    const/16 v4, 0xfd

    if-gt v1, v4, :cond_9

    .line 290
    const/4 v4, 0x2

    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->checkRange([BII)V

    .line 291
    and-int/lit8 v4, v1, 0x3f

    add-int/2addr v4, v7

    .line 292
    .local v4, "n":I
    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    .line 293
    .local v6, "from":I
    add-int/lit8 v5, v5, 0x2

    .line 294
    if-ltz v6, :cond_8

    if-ge v6, v2, :cond_8

    array-length v7, v0

    sub-int/2addr v7, v4

    if-gt v2, v7, :cond_8

    .line 297
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    if-ge v7, v4, :cond_7

    add-int/lit8 v8, v2, 0x1

    .end local v2    # "dst":I
    .local v8, "dst":I
    add-int v9, v6, v7

    aget-byte v9, v0, v9

    aput-byte v9, v0, v2

    add-int/lit8 v7, v7, 0x1

    move v2, v8

    goto :goto_2

    .line 298
    .end local v4    # "n":I
    .end local v6    # "from":I
    .end local v7    # "i":I
    .end local v8    # "dst":I
    .restart local v2    # "dst":I
    :cond_7
    move v1, v5

    goto/16 :goto_5

    .line 295
    .restart local v4    # "n":I
    .restart local v6    # "from":I
    :cond_8
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Terrain absolute-copy range error"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 298
    .end local v4    # "n":I
    .end local v6    # "from":I
    :cond_9
    const/16 v4, 0xfe

    if-ne v1, v4, :cond_c

    .line 299
    invoke-static {p0, v5, v7}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->checkRange([BII)V

    .line 300
    aget-byte v4, p0, v5

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    .line 301
    .restart local v4    # "n":I
    add-int/lit8 v6, v5, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    .line 302
    .local v6, "value":I
    add-int/lit8 v5, v5, 0x3

    .line 303
    array-length v7, v0

    sub-int/2addr v7, v4

    if-gt v2, v7, :cond_b

    .line 304
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    if-ge v7, v4, :cond_a

    add-int/lit8 v8, v2, 0x1

    .end local v2    # "dst":I
    .restart local v8    # "dst":I
    int-to-byte v9, v6

    aput-byte v9, v0, v2

    add-int/lit8 v7, v7, 0x1

    move v2, v8

    goto :goto_3

    .line 305
    .end local v4    # "n":I
    .end local v6    # "value":I
    .end local v7    # "i":I
    .end local v8    # "dst":I
    .restart local v2    # "dst":I
    :cond_a
    move v1, v5

    goto :goto_5

    .line 303
    .restart local v4    # "n":I
    .restart local v6    # "value":I
    :cond_b
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Terrain RLE overrun"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 306
    .end local v4    # "n":I
    .end local v6    # "value":I
    :cond_c
    const/4 v4, 0x4

    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->checkRange([BII)V

    .line 307
    aget-byte v4, p0, v5

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    .line 308
    .restart local v4    # "n":I
    add-int/lit8 v6, v5, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v5, 0x3

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    .line 309
    .local v6, "from":I
    add-int/lit8 v5, v5, 0x4

    .line 310
    if-ltz v6, :cond_e

    if-ge v6, v2, :cond_e

    array-length v7, v0

    sub-int/2addr v7, v4

    if-gt v2, v7, :cond_e

    .line 313
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v4, :cond_d

    add-int/lit8 v8, v2, 0x1

    .end local v2    # "dst":I
    .restart local v8    # "dst":I
    add-int v9, v6, v7

    aget-byte v9, v0, v9

    aput-byte v9, v0, v2

    add-int/lit8 v7, v7, 0x1

    move v2, v8

    goto :goto_4

    .end local v8    # "dst":I
    .restart local v2    # "dst":I
    :cond_d
    move v1, v5

    .line 315
    .end local v4    # "n":I
    .end local v5    # "src":I
    .end local v6    # "from":I
    .end local v7    # "i":I
    .local v1, "src":I
    :goto_5
    goto/16 :goto_0

    .line 311
    .local v1, "c":I
    .restart local v4    # "n":I
    .restart local v5    # "src":I
    .restart local v6    # "from":I
    :cond_e
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Terrain long-copy range error"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 269
    .end local v4    # "n":I
    .end local v5    # "src":I
    .end local v6    # "from":I
    .local v1, "src":I
    :cond_f
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Terrain decompressor guard"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static deleteRecursively(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 388
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 390
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 391
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 390
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not list "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    .end local v0    # "children":[Ljava/io/File;
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
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

    .line 394
    :cond_4
    :goto_1
    return-void

    .line 387
    :cond_5
    :goto_2
    return-void
.end method

.method public static extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    .locals 7
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .local v0, "input":Ljava/io/InputStream;
    .local v1, "knownRomSize":J
    .local v3, "stagingRoot":Ljava/io/File;
    .local v4, "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    invoke-static/range {v0 .. v6}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->extractInternal(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;ZLjava/lang/String;)Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;

    move-result-object p0

    return-object p0
.end method

.method public static extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    .locals 7
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .param p5, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .end local p5    # "profileId":Ljava/lang/String;
    .local v0, "input":Ljava/io/InputStream;
    .local v1, "knownRomSize":J
    .local v3, "stagingRoot":Ljava/io/File;
    .local v4, "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .local v6, "profileId":Ljava/lang/String;
    invoke-static/range {v0 .. v6}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->extractInternal(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;ZLjava/lang/String;)Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;

    move-result-object p0

    return-object p0
.end method

.method private static extractInternal(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;ZLjava/lang/String;)Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    .locals 23
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .param p5, "requireReferenceHashes"    # Z
    .param p6, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    move-object/from16 v6, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    if-eqz p0, :cond_10

    .line 107
    if-eqz v6, :cond_f

    .line 108
    const-wide/32 v0, 0x1000000

    cmp-long v0, p1, v0

    if-gtz v0, :cond_e

    .line 110
    invoke-static/range {p0 .. p2}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->readAll(Ljava/io/InputStream;J)[B

    move-result-object v10

    .line 111
    .local v10, "rom":[B
    invoke-static {v10}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->verifyAnchors([B)V

    .line 112
    invoke-static {v10}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->buildAssets([B)Ljava/util/List;

    move-result-object v11

    .line 114
    .local v11, "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;>;"
    invoke-static {}, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest;->entries()Ljava/util/List;

    move-result-object v12

    .line 115
    .local v12, "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 119
    invoke-static {v6}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 120
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not create world terrain/radar staging"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 125
    .local v0, "verified":I
    const-wide/16 v1, 0x0

    .line 126
    .local v1, "bytes":J
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v5, "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    move-wide/from16 v21, v1

    move v1, v3

    move-wide/from16 v3, v21

    move v2, v0

    .end local v0    # "verified":I
    .local v1, "i":I
    .local v2, "verified":I
    .local v3, "bytes":J
    :goto_1
    :try_start_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    .line 129
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;

    move-object v7, v0

    .line 130
    .local v7, "asset":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;

    move-object v13, v0

    .line 131
    .local v13, "expected":Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;
    iget-object v0, v13, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;->relativePath:Ljava/lang/String;

    iget-object v14, v7, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;->path:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_8

    if-eqz v0, :cond_a

    .line 135
    const/4 v14, 0x1

    if-nez p5, :cond_3

    .line 136
    :try_start_1
    iget-object v15, v7, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;->data:[B

    array-length v15, v15

    iget v0, v13, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;->length:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v15, v0, :cond_2

    move v0, v14

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move/from16 v17, v2

    move v2, v0

    .local v0, "match":Z
    goto :goto_4

    .line 166
    .end local v0    # "match":Z
    .end local v1    # "i":I
    .end local v7    # "asset":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;
    .end local v13    # "expected":Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;
    :catch_0
    move-exception v0

    goto/16 :goto_8

    .line 163
    :catch_1
    move-exception v0

    goto/16 :goto_9

    .line 137
    .restart local v1    # "i":I
    .restart local v7    # "asset":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;
    .restart local v13    # "expected":Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;
    :cond_3
    if-eqz v9, :cond_4

    .line 138
    :try_start_2
    iget-object v0, v7, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;->path:Ljava/lang/String;

    iget-object v14, v7, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;->data:[B

    iget v15, v13, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;->length:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_8

    move/from16 v17, v2

    .end local v2    # "verified":I
    .local v17, "verified":I
    :try_start_3
    iget-object v2, v13, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;->sha256:Ljava/lang/String;

    invoke-static {v9, v0, v14, v15, v2}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->matchesExtracted(Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)Z

    move-result v0

    move v2, v0

    .restart local v0    # "match":Z
    goto :goto_4

    .line 141
    .end local v0    # "match":Z
    .end local v17    # "verified":I
    .restart local v2    # "verified":I
    :cond_4
    move/from16 v17, v2

    .end local v2    # "verified":I
    .restart local v17    # "verified":I
    iget-object v0, v7, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;->data:[B

    array-length v0, v0

    iget v2, v13, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;->length:I

    if-ne v0, v2, :cond_5

    iget-object v0, v13, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;->sha256:Ljava/lang/String;

    iget-object v2, v7, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;->data:[B

    .line 142
    invoke-static {v2}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->sha256([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v14

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    move v2, v0

    .line 144
    .local v2, "match":Z
    :goto_4
    if-eqz v2, :cond_6

    add-int/lit8 v0, v17, 0x1

    move/from16 v17, v0

    .end local v17    # "verified":I
    .local v0, "verified":I
    goto :goto_5

    .end local v0    # "verified":I
    .restart local v17    # "verified":I
    :cond_6
    iget-object v0, v7, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;->path:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :goto_5
    iget-object v0, v7, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;->data:[B

    array-length v0, v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_6

    int-to-long v14, v0

    add-long/2addr v3, v14

    .line 147
    :try_start_4
    iget-object v0, v7, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;->path:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object v14, v0

    .line 148
    .local v14, "out":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v15, v0

    .line 149
    .local v15, "parent":Ljava/io/File;
    if-eqz v15, :cond_8

    :try_start_5
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    move/from16 v16, v2

    goto :goto_6

    .line 150
    :cond_7
    new-instance v0, Ljava/io/IOException;

    move/from16 v16, v2

    .end local v2    # "match":Z
    .local v16, "match":Z
    const-string v2, "Could not create world terrain/radar asset directory"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "bytes":J
    .end local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "rom":[B
    .end local v11    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;>;"
    .end local v12    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;>;"
    .end local v17    # "verified":I
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .end local p5    # "requireReferenceHashes":Z
    .end local p6    # "profileId":Ljava/lang/String;
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6

    .line 149
    .end local v16    # "match":Z
    .restart local v2    # "match":Z
    .restart local v3    # "bytes":J
    .restart local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "rom":[B
    .restart local v11    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;>;"
    .restart local v12    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;>;"
    .restart local v17    # "verified":I
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .restart local p5    # "requireReferenceHashes":Z
    .restart local p6    # "profileId":Ljava/lang/String;
    :cond_8
    move/from16 v16, v2

    .line 152
    .end local v2    # "match":Z
    .restart local v16    # "match":Z
    :goto_6
    :try_start_6
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    move-object v2, v0

    .line 154
    .local v2, "stream":Ljava/io/FileOutputStream;
    :try_start_7
    iget-object v0, v7, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;->data:[B

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 155
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 157
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 158
    nop

    .line 159
    if-eqz v8, :cond_9

    add-int/lit8 v0, v1, 0x1

    move-object/from16 v18, v2

    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .local v18, "stream":Ljava/io/FileOutputStream;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4

    move-wide/from16 v19, v3

    .end local v3    # "bytes":J
    .local v19, "bytes":J
    :try_start_9
    iget-object v3, v7, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;->path:Ljava/lang/String;

    invoke-interface {v8, v0, v2, v3}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;->onProgress(IILjava/lang/String;)V

    goto :goto_7

    .end local v18    # "stream":Ljava/io/FileOutputStream;
    .end local v19    # "bytes":J
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "bytes":J
    :cond_9
    move-object/from16 v18, v2

    move-wide/from16 v19, v3

    .line 128
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .end local v3    # "bytes":J
    .end local v7    # "asset":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;
    .end local v13    # "expected":Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;
    .end local v14    # "out":Ljava/io/File;
    .end local v15    # "parent":Ljava/io/File;
    .end local v16    # "match":Z
    .restart local v19    # "bytes":J
    :goto_7
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v17

    move-wide/from16 v3, v19

    goto/16 :goto_1

    .line 157
    .end local v19    # "bytes":J
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "bytes":J
    .restart local v7    # "asset":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;
    .restart local v13    # "expected":Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;
    .restart local v14    # "out":Ljava/io/File;
    .restart local v15    # "parent":Ljava/io/File;
    .restart local v16    # "match":Z
    :catchall_0
    move-exception v0

    move-object/from16 v18, v2

    move-wide/from16 v19, v3

    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .end local v3    # "bytes":J
    .restart local v18    # "stream":Ljava/io/FileOutputStream;
    .restart local v19    # "bytes":J
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V

    .line 158
    nop

    .end local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "rom":[B
    .end local v11    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;>;"
    .end local v12    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;>;"
    .end local v17    # "verified":I
    .end local v19    # "bytes":J
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .end local p5    # "requireReferenceHashes":Z
    .end local p6    # "profileId":Ljava/lang/String;
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    .line 166
    .end local v1    # "i":I
    .end local v7    # "asset":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;
    .end local v13    # "expected":Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;
    .end local v14    # "out":Ljava/io/File;
    .end local v15    # "parent":Ljava/io/File;
    .end local v16    # "match":Z
    .end local v18    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "rom":[B
    .restart local v11    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;>;"
    .restart local v12    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;>;"
    .restart local v17    # "verified":I
    .restart local v19    # "bytes":J
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .restart local p5    # "requireReferenceHashes":Z
    .restart local p6    # "profileId":Ljava/lang/String;
    :catch_2
    move-exception v0

    move/from16 v2, v17

    move-wide/from16 v3, v19

    goto :goto_8

    .line 163
    :catch_3
    move-exception v0

    move/from16 v2, v17

    move-wide/from16 v3, v19

    goto :goto_9

    .line 166
    .end local v19    # "bytes":J
    .restart local v3    # "bytes":J
    :catch_4
    move-exception v0

    move-wide/from16 v19, v3

    move/from16 v2, v17

    .end local v3    # "bytes":J
    .restart local v19    # "bytes":J
    goto :goto_8

    .line 163
    .end local v19    # "bytes":J
    .restart local v3    # "bytes":J
    :catch_5
    move-exception v0

    move-wide/from16 v19, v3

    move/from16 v2, v17

    .end local v3    # "bytes":J
    .restart local v19    # "bytes":J
    goto :goto_9

    .line 132
    .end local v17    # "verified":I
    .end local v19    # "bytes":J
    .restart local v1    # "i":I
    .local v2, "verified":I
    .restart local v3    # "bytes":J
    .restart local v7    # "asset":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;
    .restart local v13    # "expected":Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;
    :cond_a
    move/from16 v17, v2

    .end local v2    # "verified":I
    .restart local v17    # "verified":I
    :try_start_a
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "World terrain/radar manifest order mismatch at "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "bytes":J
    .end local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "rom":[B
    .end local v11    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;>;"
    .end local v12    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;>;"
    .end local v17    # "verified":I
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .end local p5    # "requireReferenceHashes":Z
    .end local p6    # "profileId":Ljava/lang/String;
    throw v0

    .line 128
    .end local v7    # "asset":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;
    .end local v13    # "expected":Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;
    .restart local v2    # "verified":I
    .restart local v3    # "bytes":J
    .restart local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "rom":[B
    .restart local v11    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;>;"
    .restart local v12    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;>;"
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .restart local p5    # "requireReferenceHashes":Z
    .restart local p6    # "profileId":Ljava/lang/String;
    :cond_b
    move/from16 v17, v2

    .line 161
    .end local v1    # "i":I
    .end local v2    # "verified":I
    .restart local v17    # "verified":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {v6}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 162
    :cond_c
    new-instance v0, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_6

    const/4 v7, 0x0

    move/from16 v2, v17

    .end local v17    # "verified":I
    .restart local v2    # "verified":I
    :try_start_b
    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;-><init>(IIJLjava/util/List;Ljava/io/File;Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider-IA;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_8

    .end local v2    # "verified":I
    .restart local v17    # "verified":I
    return-object v0

    .line 166
    :catch_6
    move-exception v0

    move/from16 v2, v17

    goto :goto_8

    .line 163
    :catch_7
    move-exception v0

    move/from16 v2, v17

    goto :goto_9

    .line 166
    .end local v17    # "verified":I
    .restart local v2    # "verified":I
    :catch_8
    move-exception v0

    move/from16 v17, v2

    .line 167
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_8
    invoke-static/range {p3 .. p3}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 168
    throw v0

    .line 163
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_9
    move-exception v0

    move/from16 v17, v2

    .line 164
    .local v0, "e":Ljava/io/IOException;
    :goto_9
    invoke-static/range {p3 .. p3}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 165
    throw v0

    .line 116
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "verified":I
    .end local v3    # "bytes":J
    .end local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "World terrain/radar manifest/generator count mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    .end local v10    # "rom":[B
    .end local v11    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Asset;>;"
    .end local v12    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;>;"
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is unexpectedly large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "World terrain/radar staging is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM stream is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static extractOverlayCandidate(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    .locals 7
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    .local v0, "input":Ljava/io/InputStream;
    .local v1, "knownRomSize":J
    .local v3, "stagingRoot":Ljava/io/File;
    .local v4, "listener":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;
    invoke-static/range {v0 .. v6}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->extractInternal(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;ZLjava/lang/String;)Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;

    move-result-object p0

    return-object p0
.end method

.method private static loadPatternChunks([B)[B
    .locals 10
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    const/16 v0, 0x7340

    new-array v0, v0, [B

    .line 246
    .local v0, "out":[B
    const v1, 0xbc506

    invoke-static {p0, v1}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v1

    .line 247
    .local v1, "table":I
    const/4 v2, 0x0

    .line 248
    .local v2, "dst":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v4, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->EXPECTED_COUNTS:[I

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 249
    invoke-static {p0, v1}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->be16([BI)I

    move-result v4

    .line 250
    .local v4, "flags":I
    add-int/lit8 v5, v1, 0x2

    invoke-static {p0, v5}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->be32([BI)I

    move-result v5

    .line 251
    .local v5, "pointer":I
    add-int/lit8 v1, v1, 0x6

    .line 252
    and-int/lit16 v6, v4, 0x7fff

    .line 253
    .local v6, "count":I
    mul-int/lit8 v7, v6, 0x20

    .line 254
    .local v7, "bytes":I
    invoke-static {p0, v5, v7}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->decompress([BII)[B

    move-result-object v8

    .line 255
    .local v8, "decoded":[B
    const/4 v9, 0x0

    invoke-static {v8, v9, v0, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    add-int/2addr v2, v7

    .line 248
    .end local v4    # "flags":I
    .end local v5    # "pointer":I
    .end local v6    # "count":I
    .end local v7    # "bytes":I
    .end local v8    # "decoded":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    .end local v3    # "i":I
    :cond_0
    array-length v3, v0

    if-ne v2, v3, :cond_1

    .line 259
    return-object v0

    .line 258
    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Terrain pattern payload mismatch"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static readAll(Ljava/io/InputStream;J)[B
    .locals 8
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/16 v3, 0x2000

    if-lez v2, :cond_0

    const-wide/32 v4, 0x1000000

    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    long-to-int v2, p1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 324
    .local v2, "initial":I
    :goto_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 325
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    new-array v3, v3, [B

    .line 327
    .local v3, "buffer":[B
    :goto_1
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "count":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    .line 328
    if-nez v6, :cond_1

    goto :goto_1

    .line 329
    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    const/high16 v7, 0x1000000

    sub-int/2addr v7, v6

    if-gt v5, v7, :cond_2

    .line 330
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 329
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is unexpectedly large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 333
    .local v5, "rom":[B
    cmp-long v0, p1, v0

    if-lez v0, :cond_5

    array-length v0, v5

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 334
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM size changed while reading"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_5
    :goto_2
    return-object v5
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

    .line 364
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 365
    .local v0, "canonicalRoot":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 366
    .local v1, "child":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 367
    .local v2, "rootPath":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 368
    .local v3, "childPath":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Asset path escaped staging root"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 371
    :cond_1
    :goto_0
    return-object v1
.end method

.method private static sha256([B)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 377
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 378
    .local v1, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 379
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

    .line 380
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 381
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "hash":[B
    .end local v2    # "out":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static verifyAnchors([B)V
    .locals 17
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    move-object/from16 v0, p0

    array-length v1, v0

    const v2, 0xc8000

    if-lt v1, v2, :cond_a

    .line 199
    const v1, 0xc7cb2

    invoke-static {v0, v1}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v1

    .line 200
    .local v1, "resourceEntry":I
    invoke-static {v0, v1}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->be32([BI)I

    move-result v2

    const v3, 0xbc506

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v4

    if-ne v2, v4, :cond_9

    add-int/lit8 v2, v1, 0x4

    .line 201
    invoke-static {v0, v2}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->be32([BI)I

    move-result v2

    if-nez v2, :cond_9

    add-int/lit8 v2, v1, 0x8

    .line 202
    invoke-static {v0, v2}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->be32([BI)I

    move-result v2

    const v4, 0xa6c98

    invoke-static {v0, v4}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v4

    if-ne v2, v4, :cond_9

    add-int/lit8 v2, v1, 0xc

    .line 203
    invoke-static {v0, v2}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->be32([BI)I

    move-result v2

    if-nez v2, :cond_9

    .line 206
    invoke-static {v0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    .line 207
    .local v2, "table":I
    const/4 v3, 0x0

    .line 208
    .local v3, "total":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    sget-object v5, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->EXPECTED_COUNTS:[I

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 209
    invoke-static {v0, v2}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->be16([BI)I

    move-result v5

    .line 210
    .local v5, "flags":I
    add-int/lit8 v6, v2, 0x2

    invoke-static {v0, v6}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->be32([BI)I

    move-result v6

    .line 211
    .local v6, "pointer":I
    add-int/lit8 v2, v2, 0x6

    .line 212
    and-int/lit16 v7, v5, 0x7fff

    .line 213
    .local v7, "count":I
    const v8, 0x8000

    and-int/2addr v8, v5

    if-eqz v8, :cond_0

    sget-object v8, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->EXPECTED_COUNTS:[I

    aget v8, v8, v4

    if-ne v7, v8, :cond_0

    sget-object v8, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->EXPECTED_POINTERS:[I

    aget v8, v8, v4

    .line 214
    invoke-static {v0, v8}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v8

    if-ne v6, v8, :cond_0

    .line 217
    add-int/2addr v3, v7

    .line 208
    .end local v5    # "flags":I
    .end local v6    # "pointer":I
    .end local v7    # "count":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 215
    .restart local v5    # "flags":I
    .restart local v6    # "pointer":I
    .restart local v7    # "count":I
    :cond_0
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected tactical pattern chunk "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 219
    .end local v4    # "i":I
    .end local v5    # "flags":I
    .end local v6    # "pointer":I
    .end local v7    # "count":I
    :cond_1
    invoke-static {v0, v2}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->be16([BI)I

    move-result v4

    if-nez v4, :cond_8

    const/16 v4, 0x39a

    if-ne v3, v4, :cond_8

    .line 223
    const/4 v5, -0x1

    .line 224
    .local v5, "maxIndex":I
    const/4 v6, 0x0

    .line 225
    .local v6, "flips":I
    const/4 v7, 0x4

    new-array v7, v7, [Z

    .line 226
    .local v7, "paletteLines":[Z
    const v8, 0x4adf0

    invoke-static {v0, v8}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v8

    .line 227
    .local v8, "metatiles":I
    const/4 v9, 0x0

    .local v9, "tileId":I
    :goto_1
    const/16 v10, 0x16a

    const/4 v11, 0x3

    const/4 v12, 0x1

    if-ge v9, v10, :cond_6

    .line 228
    mul-int/lit8 v10, v9, 0x20

    add-int/2addr v10, v8

    .line 229
    .local v10, "descriptor":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    const/16 v14, 0x10

    if-ge v13, v14, :cond_5

    .line 230
    mul-int/lit8 v14, v13, 0x2

    add-int/2addr v14, v10

    invoke-static {v0, v14}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->be16([BI)I

    move-result v14

    .line 231
    .local v14, "attr":I
    and-int/lit16 v15, v14, 0x7ff

    .line 232
    .local v15, "index":I
    if-ge v15, v4, :cond_4

    .line 233
    if-le v15, v5, :cond_2

    move v5, v15

    .line 234
    :cond_2
    ushr-int/lit8 v16, v14, 0xd

    and-int/lit8 v16, v16, 0x3

    aput-boolean v12, v7, v16

    .line 235
    and-int/lit16 v4, v14, 0x1800

    if-eqz v4, :cond_3

    add-int/lit8 v6, v6, 0x1

    .line 229
    .end local v14    # "attr":I
    .end local v15    # "index":I
    :cond_3
    add-int/lit8 v13, v13, 0x1

    const/16 v4, 0x39a

    goto :goto_2

    .line 232
    .restart local v14    # "attr":I
    .restart local v15    # "index":I
    :cond_4
    new-instance v4, Ljava/io/IOException;

    const-string v11, "Metatile pattern index outside resource 4"

    invoke-direct {v4, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 227
    .end local v10    # "descriptor":I
    .end local v13    # "i":I
    .end local v14    # "attr":I
    .end local v15    # "index":I
    :cond_5
    add-int/lit8 v9, v9, 0x1

    const/16 v4, 0x39a

    goto :goto_1

    .line 238
    .end local v9    # "tileId":I
    :cond_6
    const/16 v4, 0x399

    if-ne v5, v4, :cond_7

    const/16 v4, 0xd9

    if-ne v6, v4, :cond_7

    const/4 v4, 0x0

    aget-boolean v4, v7, v4

    if-eqz v4, :cond_7

    aget-boolean v4, v7, v12

    if-eqz v4, :cond_7

    const/4 v4, 0x2

    aget-boolean v4, v7, v4

    if-eqz v4, :cond_7

    aget-boolean v4, v7, v11

    if-eqz v4, :cond_7

    .line 242
    return-void

    .line 240
    :cond_7
    new-instance v4, Ljava/io/IOException;

    const-string v9, "Metatile descriptor coverage mismatch"

    invoke-direct {v4, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 220
    .end local v5    # "maxIndex":I
    .end local v6    # "flips":I
    .end local v7    # "paletteLines":[Z
    .end local v8    # "metatiles":I
    :cond_8
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Tactical pattern table terminator/count mismatch"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 204
    .end local v2    # "table":I
    .end local v3    # "total":I
    :cond_9
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unexpected tactical resource 4 entry"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    .end local v1    # "resourceEntry":I
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "ROM is too small for terrain resources"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
