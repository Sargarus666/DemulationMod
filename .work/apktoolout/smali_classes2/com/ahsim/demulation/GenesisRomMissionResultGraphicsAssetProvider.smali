.class public final Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;
.super Ljava/lang/Object;
.source "GenesisRomMissionResultGraphicsAssetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;,
        Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;,
        Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;
    }
.end annotation


# static fields
.field private static final BACKDROP_PTRS:[I

.field private static final COMMON_PTRS:I = 0xa2e80

.field private static final FONT:I = 0x50c34

.field private static final MAP_BYTES:I = 0xe00

.field private static final MAX_ROM_BYTES:I = 0x1000000

.field private static final OVERLAY:I = 0xa5d8e

.field private static final PALETTE:I = 0xa5d0e

.field private static final PASSWORD_OVERLAY:I = 0xa5e64


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    const v0, 0xa6290

    const v1, 0xa659a

    const v2, 0xa5ee4

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->BACKDROP_PTRS:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    .line 284
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->checkRange([BII)V

    .line 285
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

.method private static buildAssets([BLjava/lang/String;)Ljava/util/List;
    .locals 12
    .param p0, "rom"    # [B
    .param p1, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;",
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
    .local v0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;>;"
    new-instance v1, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;

    .line 126
    const v2, 0xa5d0e

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    .line 125
    const/16 v3, 0x80

    invoke-static {p0, v2, v3}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->copy([BII)[B

    move-result-object v2

    const-string v3, "mission_result/palette.bin"

    invoke-direct {v1, v3, v2}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    const/high16 v1, 0x10000

    new-array v2, v1, [B

    .line 129
    .local v2, "scratch":[B
    const/16 v3, 0x7000

    new-array v3, v3, [B

    .line 130
    .local v3, "common":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x7

    const/16 v6, 0x1000

    const/4 v7, 0x0

    if-ge v4, v5, :cond_1

    .line 131
    const v5, 0xa2e80

    invoke-static {p0, v5}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v5

    .line 132
    .local v5, "table":I
    mul-int/lit8 v8, v4, 0x4

    add-int/2addr v8, v5

    invoke-static {p0, v8}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->be32([BI)I

    move-result v8

    .line 133
    .local v8, "ptr":I
    invoke-static {p0, v8, v2}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->decompressInto([BI[B)I

    move-result v9

    .line 134
    .local v9, "produced":I
    if-lez v9, :cond_0

    .line 135
    mul-int/lit16 v10, v4, 0x1000

    invoke-static {v2, v7, v3, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    .end local v5    # "table":I
    .end local v8    # "ptr":I
    .end local v9    # "produced":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 134
    .restart local v5    # "table":I
    .restart local v8    # "ptr":I
    .restart local v9    # "produced":I
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v6, "Mission-result common pattern decode is empty"

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    .end local v4    # "i":I
    .end local v5    # "table":I
    .end local v8    # "ptr":I
    .end local v9    # "produced":I
    :cond_1
    new-instance v4, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;

    const-string v5, "mission_result/common_patterns.bin"

    invoke-direct {v4, v5, v3}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v4, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;

    .line 139
    const v5, 0x50c34

    invoke-static {p0, v5}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v5

    .line 138
    invoke-static {p0, v5, v6}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->copy([BII)[B

    move-result-object v5

    const-string v6, "mission_result/font.bin"

    invoke-direct {v4, v6, v5}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    sget-object v5, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->BACKDROP_PTRS:[I

    array-length v5, v5

    const/16 v6, 0xe00

    if-ge v4, v5, :cond_3

    .line 142
    new-array v5, v1, [B

    .line 143
    .local v5, "map":[B
    sget-object v8, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->BACKDROP_PTRS:[I

    aget v8, v8, v4

    .line 144
    invoke-static {p0, v8}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v8

    .line 143
    invoke-static {p0, v8, v5}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->decompressInto([BI[B)I

    move-result v8

    .line 145
    .local v8, "produced":I
    if-lt v8, v6, :cond_2

    .line 146
    new-instance v9, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mission_result/backdrop"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".map"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v7, v6}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->copy([BII)[B

    move-result-object v6

    invoke-direct {v9, v10, v6}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .end local v5    # "map":[B
    .end local v8    # "produced":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 145
    .restart local v5    # "map":[B
    .restart local v8    # "produced":I
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v6, "Mission-result backdrop decode is short"

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    .end local v4    # "i":I
    .end local v5    # "map":[B
    .end local v8    # "produced":I
    :cond_3
    new-array v4, v1, [B

    .line 150
    .local v4, "overlay":[B
    const v5, 0xa5d8e

    invoke-static {p0, v5}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v5

    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->decompressInto([BI[B)I

    move-result v5

    if-lt v5, v6, :cond_8

    .line 153
    new-instance v5, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;

    const-string v8, "mission_result/overlay.map"

    invoke-static {v4, v7, v6}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->copy([BII)[B

    move-result-object v9

    invoke-direct {v5, v8, v9}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    new-array v1, v1, [B

    .line 156
    .local v1, "password":[B
    const-string v5, "translation_ru_shedevr_lipetsk_usa"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 157
    const v5, 0xb9312

    goto :goto_2

    :cond_4
    const v5, 0xa5e64

    invoke-static {p0, v5}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v5

    .line 158
    .local v5, "passwordOverlay":I
    :goto_2
    invoke-static {p0, v5, v1}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->decompressInto([BI[B)I

    move-result v8

    .line 159
    .local v8, "passwordProduced":I
    if-lt v8, v6, :cond_7

    .line 166
    const/16 v9, 0x700

    .local v9, "o":I
    :goto_3
    if-ge v9, v6, :cond_6

    .line 167
    aget-byte v10, v1, v9

    and-int/lit16 v10, v10, 0xff

    const/16 v11, 0x20

    if-ne v10, v11, :cond_5

    add-int/lit8 v10, v9, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    if-nez v10, :cond_5

    .line 166
    add-int/lit8 v9, v9, 0x2

    goto :goto_3

    .line 168
    :cond_5
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Mission-result password lower page changed"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 171
    .end local v9    # "o":I
    :cond_6
    new-instance v6, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;

    const/16 v9, 0x700

    invoke-static {v1, v7, v9}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->copy([BII)[B

    move-result-object v7

    const-string v9, "mission_result/password_overlay.map"

    invoke-direct {v6, v9, v7}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    return-object v0

    .line 160
    :cond_7
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Mission-result password overlay decode is short"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 151
    .end local v1    # "password":[B
    .end local v5    # "passwordOverlay":I
    .end local v8    # "passwordProduced":I
    :cond_8
    new-instance v1, Ljava/io/IOException;

    const-string v5, "Mission-result overlay decode is short"

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
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

    .line 290
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 291
    return-void

    .line 290
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mission-result ROM range"

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

    .line 265
    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->checkRange([BII)V

    .line 266
    new-array v0, p2, [B

    .line 267
    .local v0, "out":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
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

    .line 201
    move v0, p1

    .line 202
    .local v0, "src":I
    const/4 v1, 0x0

    .line 203
    .local v1, "dst":I
    const/4 v2, 0x0

    .line 205
    .local v2, "guard":I
    :goto_0
    const/4 v3, 0x1

    add-int/2addr v2, v3

    const v4, 0x186a0

    if-gt v2, v4, :cond_c

    .line 206
    invoke-static {p0, v0, v3}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->checkRange([BII)V

    .line 207
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "src":I
    .local v4, "src":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 208
    .local v0, "c":I
    const/16 v5, 0x80

    if-ne v0, v5, :cond_0

    .line 242
    .end local v0    # "c":I
    return v1

    .line 209
    .restart local v0    # "c":I
    :cond_0
    const/16 v5, 0x81

    if-lt v0, v5, :cond_1

    const/16 v5, 0xbf

    if-gt v0, v5, :cond_1

    .line 210
    and-int/lit8 v3, v0, 0x3f

    .line 211
    .local v3, "n":I
    invoke-static {p0, v4, v3}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->checkRange([BII)V

    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->ensureOutput([BII)V

    .line 212
    invoke-static {p0, v4, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v3

    add-int/2addr v1, v3

    .line 213
    .end local v3    # "n":I
    move v0, v4

    goto/16 :goto_5

    :cond_1
    const/16 v5, 0x7f

    const/4 v6, 0x3

    if-gt v0, v5, :cond_4

    .line 214
    invoke-static {p0, v4, v3}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->checkRange([BII)V

    .line 215
    shl-int/lit8 v3, v0, 0x8

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "src":I
    .local v5, "src":I
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xfff

    .line 216
    .local v3, "back":I
    ushr-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v6

    .line 217
    .local v4, "n":I
    if-lez v3, :cond_3

    if-gt v3, v1, :cond_3

    .line 218
    invoke-static {p2, v1, v4}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->ensureOutput([BII)V

    .line 219
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

    .line 220
    .end local v3    # "back":I
    .end local v4    # "n":I
    .end local v6    # "i":I
    :cond_2
    move v0, v5

    goto/16 :goto_5

    .line 217
    .restart local v3    # "back":I
    .restart local v4    # "n":I
    :cond_3
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Mission-result short-copy range"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 220
    .end local v3    # "back":I
    .end local v5    # "src":I
    .local v4, "src":I
    :cond_4
    const/16 v3, 0xfd

    if-gt v0, v3, :cond_7

    .line 221
    const/4 v3, 0x2

    invoke-static {p0, v4, v3}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->checkRange([BII)V

    .line 222
    and-int/lit8 v3, v0, 0x3f

    add-int/2addr v3, v6

    .line 223
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

    .line 224
    if-ltz v5, :cond_6

    if-ge v5, v1, :cond_6

    .line 225
    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->ensureOutput([BII)V

    .line 226
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

    .line 227
    .end local v3    # "n":I
    .end local v5    # "from":I
    .end local v6    # "i":I
    .end local v7    # "dst":I
    .restart local v1    # "dst":I
    :cond_5
    move v0, v4

    goto/16 :goto_5

    .line 224
    .restart local v3    # "n":I
    .restart local v5    # "from":I
    :cond_6
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Mission-result absolute-copy range"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 227
    .end local v3    # "n":I
    .end local v5    # "from":I
    :cond_7
    const/16 v3, 0xfe

    if-ne v0, v3, :cond_9

    .line 228
    invoke-static {p0, v4, v6}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->checkRange([BII)V

    .line 229
    aget-byte v3, p0, v4

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    .line 230
    .restart local v3    # "n":I
    add-int/lit8 v5, v4, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .local v5, "value":I
    add-int/lit8 v4, v4, 0x3

    .line 231
    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->ensureOutput([BII)V

    .line 232
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

    .line 233
    .end local v3    # "n":I
    .end local v5    # "value":I
    .end local v6    # "i":I
    .end local v7    # "dst":I
    .restart local v1    # "dst":I
    :cond_8
    move v0, v4

    goto :goto_5

    .line 234
    :cond_9
    const/4 v3, 0x4

    invoke-static {p0, v4, v3}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->checkRange([BII)V

    .line 235
    aget-byte v3, p0, v4

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    .line 236
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

    .line 237
    if-ltz v5, :cond_b

    if-ge v5, v1, :cond_b

    .line 238
    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->ensureOutput([BII)V

    .line 239
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

    .line 241
    .end local v3    # "n":I
    .end local v4    # "src":I
    .end local v5    # "from":I
    .end local v6    # "i":I
    .local v0, "src":I
    :goto_5
    goto/16 :goto_0

    .line 237
    .local v0, "c":I
    .restart local v3    # "n":I
    .restart local v4    # "src":I
    .restart local v5    # "from":I
    :cond_b
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Mission-result long-copy range"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 205
    .end local v3    # "n":I
    .end local v4    # "src":I
    .end local v5    # "from":I
    .local v0, "src":I
    :cond_c
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Mission-result decompressor guard"

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

    .line 256
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 257
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 259
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
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

    .line 262
    :cond_3
    :goto_1
    return-void

    .line 256
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

    .line 294
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 295
    return-void

    .line 294
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mission-result output overrun"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
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
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    .local v0, "input":Ljava/io/InputStream;
    .local v1, "knownRomSize":J
    .local v3, "stagingRoot":Ljava/io/File;
    .local v4, "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    invoke-static/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;

    move-result-object p0

    return-object p0
.end method

.method public static extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;
    .locals 17
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
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
    invoke-static/range {p0 .. p2}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->readAll(Ljava/io/InputStream;J)[B

    move-result-object v4

    .line 76
    .local v4, "rom":[B
    invoke-static {v4}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->verifyAnchors([B)V

    .line 77
    invoke-static {v4, v3}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->buildAssets([BLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 78
    .local v5, "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest;->entries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v0, v6, :cond_a

    .line 82
    invoke-static {v1}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->deleteRecursively(Ljava/io/File;)V

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

    const-string v6, "Could not create mission-result graphics staging"

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

    check-cast v0, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;

    move-object v6, v0

    .line 93
    .local v6, "asset":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;
    iget-object v0, v6, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;->path:Ljava/lang/String;

    .line 94
    invoke-static {v0}, Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest;->find(Ljava/lang/String;)Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;

    move-result-object v0

    move-object v7, v0

    .line 95
    .local v7, "expected":Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;
    if-eqz v7, :cond_3

    iget-object v0, v6, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;->path:Ljava/lang/String;

    iget-object v9, v6, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;->data:[B

    iget v10, v7, Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;->length:I

    iget-object v15, v7, Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;->sha256:Ljava/lang/String;

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
    iget-object v0, v6, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;->path:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :goto_3
    iget-object v0, v6, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;->data:[B

    array-length v0, v0

    int-to-long v9, v0

    add-long/2addr v12, v9

    .line 102
    iget-object v0, v6, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;->path:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

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

    const-string v15, "Could not create mission-result graphics directory"

    invoke-direct {v0, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "rom":[B
    .end local v5    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;>;"
    .end local v11    # "verified":I
    .end local v12    # "bytes":J
    .end local v14    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    .end local p5    # "profileId":Ljava/lang/String;
    throw v0

    .line 107
    .restart local v4    # "rom":[B
    .restart local v5    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;>;"
    .restart local v11    # "verified":I
    .restart local v12    # "bytes":J
    .restart local v14    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
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
    iget-object v0, v6, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;->data:[B

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

    iget-object v1, v6, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;->path:Ljava/lang/String;

    invoke-interface {v2, v0, v15, v1}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;->onProgress(IILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    .end local v6    # "asset":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;
    .end local v7    # "expected":Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;
    .end local v9    # "out":Ljava/io/File;
    .end local v10    # "parent":Ljava/io/File;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p3

    goto :goto_1

    .line 107
    .restart local v6    # "asset":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;
    .restart local v7    # "expected":Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;
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
    .end local v5    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;>;"
    .end local v11    # "verified":I
    .end local v12    # "bytes":J
    .end local v14    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    .end local p5    # "profileId":Ljava/lang/String;
    :goto_5
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 116
    .end local v6    # "asset":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;
    .end local v7    # "expected":Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;
    .end local v8    # "i":I
    .end local v9    # "out":Ljava/io/File;
    .end local v10    # "parent":Ljava/io/File;
    .end local v15    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "rom":[B
    .restart local v5    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;>;"
    .restart local v11    # "verified":I
    .restart local v12    # "bytes":J
    .restart local v14    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$ProgressListener;
    .restart local p5    # "profileId":Ljava/lang/String;
    :cond_7
    nop

    .line 118
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static/range {p3 .. p3}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 119
    :cond_8
    new-instance v9, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;

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

    invoke-direct/range {v9 .. v16}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Result;-><init>(IIJLjava/util/List;Ljava/io/File;Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider-IA;)V

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
    invoke-static/range {p3 .. p3}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 115
    throw v0

    .line 79
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v11    # "verified":I
    .end local v12    # "bytes":J
    .end local v14    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mission-result graphics asset count mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    .end local v4    # "rom":[B
    .end local v5    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider$Asset;>;"
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is unexpectedly large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mission-result graphics staging is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM stream is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 187
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

    .line 188
    .local v0, "initial":I
    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 189
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x4000

    new-array v2, v2, [B

    .line 190
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 192
    .local v3, "total":I
    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "count":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    .line 193
    add-int/2addr v3, v5

    .line 194
    const/high16 v4, 0x1000000

    if-gt v3, v4, :cond_1

    .line 195
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 194
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v6, "ROM is unexpectedly large"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 197
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

    .line 246
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 247
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "rootPath":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 249
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

    .line 250
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Mission-result graphics asset escaped staging root"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 252
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

    .line 273
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 274
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 275
    .local v1, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 276
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

    .line 277
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 278
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "hash":[B
    .end local v2    # "out":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static verifyAnchors([B)V
    .locals 3
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    const v0, 0xa7000

    invoke-static {p0, v0}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->checkRange([BII)V

    .line 177
    const v0, 0xa2e80

    invoke-static {p0, v0}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v0

    .line 178
    .local v0, "table":I
    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->be32([BI)I

    move-result v1

    const v2, 0xa2e9c

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x4

    .line 179
    invoke-static {p0, v1}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->be32([BI)I

    move-result v1

    const v2, 0xa3674

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x8

    .line 180
    invoke-static {p0, v1}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->be32([BI)I

    move-result v1

    const v2, 0xa3f2e

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x18

    .line 181
    invoke-static {p0, v1}, Lcom/ahsim/demulation/GenesisRomMissionResultGraphicsAssetProvider;->be32([BI)I

    move-result v1

    const v2, 0xa5c1e

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 184
    return-void

    .line 182
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Mission-result common graphics table changed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
