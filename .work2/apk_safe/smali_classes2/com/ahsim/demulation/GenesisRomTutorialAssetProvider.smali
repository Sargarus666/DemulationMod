.class public final Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;
.super Ljava/lang/Object;
.source "GenesisRomTutorialAssetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;,
        Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;,
        Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;
    }
.end annotation


# static fields
.field private static final CURSOR_DESCRIPTOR_TABLE:I = 0x1321a

.field private static final CURSOR_PATTERN_TABLE:I = 0x13876

.field private static final DYNAMIC00_PATTERNS:I = 0x41f56

.field private static final MAX_ROM_BYTES:I = 0x1000000

.field private static final PATTERN_BYTES:I = 0x20

.field private static final SCENE_TABLE:I = 0x416e2

.field private static final TEXT_DESCRIPTOR:I = 0x42b50

.field private static final TEXT_FONT:I = 0x42d02

.field private static final TEXT_FONT_BYTES:I = 0x1520


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static argumentBytes(I)I
    .locals 1
    .param p0, "op"    # I

    .line 238
    const/4 v0, 0x4

    packed-switch p0, :pswitch_data_0

    .line 248
    :pswitch_0
    const/4 v0, -0x2

    return v0

    .line 247
    :pswitch_1
    const/4 v0, -0x1

    return v0

    .line 243
    :pswitch_2
    const/4 v0, 0x6

    return v0

    .line 242
    :pswitch_3
    return v0

    .line 241
    :pswitch_4
    return v0

    .line 246
    :pswitch_5
    const/4 v0, 0x0

    return v0

    .line 240
    :pswitch_6
    const/4 v0, 0x2

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
    .end packed-switch
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

    .line 450
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->checkRange([BII)V

    .line 451
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
    .param p1, "off"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->checkRange([BII)V

    .line 456
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

.method private static buildCursorLayouts([B)[B
    .locals 9
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 263
    .local v0, "bytes":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 264
    .local v1, "out":Ljava/io/DataOutputStream;
    const/4 v2, 0x4

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 265
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 266
    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 267
    const/4 v5, 0x0

    .local v5, "type":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 268
    const v6, 0x1321a

    invoke-static {p0, v6}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v6

    mul-int/lit8 v7, v5, 0x8

    add-int/2addr v6, v7

    add-int/2addr v6, v2

    invoke-static {p0, v6}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be32([BI)I

    move-result v6

    .line 269
    .local v6, "descriptor":I
    invoke-static {p0, v6}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be16([BI)I

    move-result v7

    add-int/2addr v7, v3

    mul-int/lit8 v7, v7, 0xc

    add-int/lit8 v7, v7, 0x2

    .line 270
    .local v7, "length":I
    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 271
    invoke-static {p0, v6, v7}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->copy([BII)[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 267
    .end local v6    # "descriptor":I
    .end local v7    # "length":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 273
    .end local v5    # "type":I
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    :array_0
    .array-data 1
        0x44t
        0x43t
        0x55t
        0x52t
    .end array-data
.end method

.method private static buildNormalizedScript([BI)[B
    .locals 12
    .param p0, "rom"    # [B
    .param p1, "start"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v0, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v1, "payloads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    move v2, p1

    .line 183
    .local v2, "p":I
    :goto_0
    invoke-static {p0, v2}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be16([BI)I

    move-result v3

    .local v3, "op":I
    add-int/lit8 v2, v2, 0x2

    .line 184
    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_1

    .line 185
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v6, v6, [B

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    nop

    .line 224
    .end local v3    # "op":I
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 225
    .local v3, "bytes":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 226
    .local v6, "out":Ljava/io/DataOutputStream;
    new-array v4, v4, [B

    fill-array-data v4, :array_0

    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 227
    invoke-virtual {v6, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 228
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 229
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 230
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 231
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    array-length v5, v5

    invoke-virtual {v6, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 232
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-virtual {v6, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 229
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 234
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 188
    .end local v6    # "out":Ljava/io/DataOutputStream;
    .local v3, "op":I
    :cond_1
    invoke-static {v3}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->argumentBytes(I)I

    move-result v7

    .line 190
    .local v7, "arg":I
    const/16 v8, 0x30

    if-ne v3, v8, :cond_3

    .line 191
    move v8, v2

    .line 193
    .local v8, "begin":I
    :goto_2
    invoke-static {p0, v2, v5}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->checkRange([BII)V

    .line 194
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "p":I
    .local v9, "p":I
    aget-byte v2, p0, v2

    if-nez v2, :cond_2

    .line 196
    add-int/lit8 v2, v9, -0x1

    invoke-static {p0, v8, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 197
    .local v2, "payload":[B
    add-int/lit8 v5, v9, 0x1

    and-int/lit8 v5, v5, -0x2

    .line 198
    .end local v8    # "begin":I
    .end local v9    # "p":I
    .local v5, "p":I
    goto :goto_3

    .line 194
    .end local v2    # "payload":[B
    .end local v5    # "p":I
    .restart local v8    # "begin":I
    .restart local v9    # "p":I
    :cond_2
    move v2, v9

    goto :goto_2

    .line 199
    .end local v8    # "begin":I
    .end local v9    # "p":I
    .local v2, "p":I
    :cond_3
    if-ltz v7, :cond_9

    .line 200
    invoke-static {p0, v2, v7}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->copy([BII)[B

    move-result-object v5

    .line 201
    .local v5, "payload":[B
    add-int/2addr v2, v7

    move-object v11, v5

    move v5, v2

    move-object v2, v11

    .line 204
    .local v2, "payload":[B
    .local v5, "p":I
    :goto_3
    const/16 v8, 0x10

    if-ne v3, v8, :cond_5

    .line 205
    invoke-static {v2, v6}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be32([BI)I

    move-result v8

    .line 206
    .local v8, "pointer":I
    invoke-static {p0, v8}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->paletteSceneForPointer([BI)I

    move-result v9

    .line 207
    .local v9, "scene":I
    if-ltz v9, :cond_4

    .line 208
    new-array v2, v4, [B

    .line 209
    const v4, 0x50414c00

    or-int/2addr v4, v9

    invoke-static {v2, v6, v4}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->put32([BII)V

    .line 210
    .end local v8    # "pointer":I
    .end local v9    # "scene":I
    goto :goto_5

    .line 207
    .restart local v8    # "pointer":I
    .restart local v9    # "scene":I
    :cond_4
    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown tutorial palette pointer "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 210
    .end local v8    # "pointer":I
    .end local v9    # "scene":I
    :cond_5
    const/16 v8, 0x2c

    if-ne v3, v8, :cond_7

    .line 211
    invoke-static {v2, v6}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be32([BI)I

    move-result v8

    .line 212
    .restart local v8    # "pointer":I
    const v9, 0x41f56

    invoke-static {p0, v9}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v9

    if-ne v8, v9, :cond_6

    .line 214
    new-array v2, v4, [B

    .line 215
    const v4, 0x44594e00    # 869.21875f

    invoke-static {v2, v6, v4}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->put32([BII)V

    .end local v8    # "pointer":I
    goto :goto_4

    .line 213
    .restart local v8    # "pointer":I
    :cond_6
    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown tutorial dynamic-pattern pointer "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 216
    .end local v8    # "pointer":I
    :cond_7
    const/16 v4, 0xc

    if-eq v3, v4, :cond_8

    :goto_4
    nop

    .line 221
    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .end local v2    # "payload":[B
    .end local v3    # "op":I
    .end local v7    # "arg":I
    move v2, v5

    goto/16 :goto_0

    .line 219
    .restart local v2    # "payload":[B
    .restart local v3    # "op":I
    .restart local v7    # "arg":I
    :cond_8
    new-instance v4, Ljava/io/IOException;

    const-string v6, "Tutorial absolute script jump requires normalization"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 199
    .end local v5    # "p":I
    .local v2, "p":I
    :cond_9
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported tutorial opcode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :array_0
    .array-data 1
        0x44t
        0x54t
        0x52t
        0x53t
    .end array-data
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

    .line 468
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 469
    return-void

    .line 468
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Tutorial ROM range"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static copy([BII)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->checkRange([BII)V

    .line 446
    add-int v0, p1, p2

    invoke-static {p0, p1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method private static decodeAssets([BLjava/lang/String;)Ljava/util/List;
    .locals 14
    .param p0, "rom"    # [B
    .param p1, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-static {p0, p1}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->verifyAnchors([BLjava/lang/String;)V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;>;"
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 126
    .local v1, "sceneIndexBytes":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 127
    .local v2, "sceneIndex":Ljava/io/DataOutputStream;
    const/4 v3, 0x4

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 128
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 129
    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 130
    const/4 v5, 0x0

    .local v5, "scene":I
    :goto_0
    if-ge v5, v4, :cond_6

    .line 131
    const v6, 0x416e2

    invoke-static {p0, v6}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v6

    mul-int/lit8 v7, v5, 0xc

    add-int/2addr v6, v7

    .line 132
    .local v6, "entry":I
    invoke-static {p0, v6}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be32([BI)I

    move-result v7

    .line 133
    .local v7, "patternTable":I
    add-int/lit8 v8, v6, 0x4

    invoke-static {p0, v8}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be32([BI)I

    move-result v8

    .line 134
    .local v8, "plane0":I
    add-int/lit8 v9, v6, 0x8

    invoke-static {p0, v9}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be32([BI)I

    move-result v9

    .line 135
    .local v9, "plane1":I
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 136
    const/4 v10, 0x0

    if-nez v7, :cond_0

    move v11, v10

    goto :goto_1

    :cond_0
    move v11, v3

    :goto_1
    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 137
    if-nez v8, :cond_1

    move v11, v10

    goto :goto_2

    :cond_1
    move v11, v3

    :goto_2
    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 138
    if-nez v9, :cond_2

    goto :goto_3

    :cond_2
    move v10, v3

    :goto_3
    invoke-virtual {v2, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 139
    if-eqz v7, :cond_3

    new-instance v10, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;

    .line 140
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, "tutorial/scenes/scene%02d_patterns.bin"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 141
    invoke-static {p0, v7}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->loadPatternTable([BI)[B

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 139
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_3
    const/high16 v10, 0x10000

    if-eqz v8, :cond_4

    new-instance v11, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;

    .line 143
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    const-string v13, "tutorial/scenes/scene%02d_plane0.delta"

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 144
    invoke-static {p0, v8, v10}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->decompressExact([BII)[B

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 142
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_4
    if-eqz v9, :cond_5

    new-instance v11, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;

    .line 146
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    const-string v13, "tutorial/scenes/scene%02d_plane1.delta"

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 147
    invoke-static {p0, v9, v10}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->decompressExact([BII)[B

    move-result-object v10

    invoke-direct {v11, v12, v10}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 145
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v6    # "entry":I
    .end local v7    # "patternTable":I
    .end local v8    # "plane0":I
    .end local v9    # "plane1":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 149
    .end local v5    # "scene":I
    :cond_6
    new-instance v4, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;

    const-string v5, "tutorial/scenes/index.bin"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    const/4 v4, 0x7

    new-array v5, v4, [I

    fill-array-data v5, :array_1

    .line 152
    .local v5, "paletteScenes":[I
    new-array v4, v4, [I

    fill-array-data v4, :array_2

    .line 153
    .local v4, "palettePointers":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    array-length v7, v5

    const/16 v8, 0x80

    if-ge v6, v7, :cond_7

    .line 154
    new-instance v7, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;

    aget v9, v5, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "tutorial/palettes/scene%02d.bin"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aget v10, v4, v6

    .line 155
    invoke-static {p0, v10}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v10

    invoke-static {p0, v10, v8}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->copy([BII)[B

    move-result-object v8

    invoke-direct {v7, v9, v8}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 154
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 157
    .end local v6    # "i":I
    :cond_7
    new-instance v6, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;

    .line 158
    const v7, 0x41f56

    invoke-static {p0, v7}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v7

    invoke-static {p0, v7, v8}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->copy([BII)[B

    move-result-object v7

    const-string v8, "tutorial/dynamic/dynamic00_patterns.bin"

    invoke-direct {v6, v8, v7}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 157
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v6, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;

    .line 161
    const v7, 0x13876

    invoke-static {p0, v7}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v7

    invoke-static {p0, v7}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->loadPatternTable([BI)[B

    move-result-object v7

    const-string v8, "tutorial/cursor/patterns.bin"

    invoke-direct {v6, v8, v7}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 160
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v6, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;

    const-string v7, "tutorial/cursor/layouts.bin"

    invoke-static {p0}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->buildCursorLayouts([B)[B

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    const v6, 0x42b50

    invoke-static {p0, v6}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v6

    .line 165
    .local v6, "textDescriptor":I
    invoke-static {p0, v6}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be16([BI)I

    move-result v7

    add-int/2addr v7, v3

    .line 166
    .local v7, "textPieces":I
    new-instance v3, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;

    mul-int/lit8 v8, v7, 0xc

    add-int/lit8 v8, v8, 0x2

    .line 167
    invoke-static {p0, v6, v8}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->copy([BII)[B

    move-result-object v8

    const-string v9, "tutorial/text/layout.bin"

    invoke-direct {v3, v9, v8}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 166
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v3, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;

    const v8, 0x42d02

    invoke-static {p0, v8}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v8

    const/16 v9, 0x1520

    invoke-static {p0, v8, v9}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->copy([BII)[B

    move-result-object v8

    const-string v9, "tutorial/text/font.bin"

    invoke-direct {v3, v9, v8}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    return-object v0

    :array_0
    .array-data 1
        0x44t
        0x54t
        0x53t
        0x43t
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x3
        0x4
        0x6
        0x9
        0xb
    .end array-data

    :array_2
    .array-data 4
        0x307fc
        0x331b4
        0x36df2
        0x39176
        0x3c988
        0x3f4ee
        0x412fe
    .end array-data
.end method

.method private static decompressExact([BII)[B
    .locals 3
    .param p0, "rom"    # [B
    .param p1, "source"    # I
    .param p2, "maxOutput"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    new-array v0, p2, [B

    .line 313
    .local v0, "scratch":[B
    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->decompressInto([BI[B)I

    move-result v1

    .line 314
    .local v1, "n":I
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    return-object v2
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

    .line 319
    move v0, p1

    .line 320
    .local v0, "src":I
    const/4 v1, 0x0

    .line 321
    .local v1, "dst":I
    const/4 v2, 0x0

    .line 323
    .local v2, "guard":I
    :goto_0
    const/4 v3, 0x1

    add-int/2addr v2, v3

    const v4, 0x186a0

    if-gt v2, v4, :cond_c

    .line 324
    invoke-static {p0, v0, v3}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->checkRange([BII)V

    .line 325
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "src":I
    .local v4, "src":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 326
    .local v0, "c":I
    const/16 v5, 0x80

    if-ne v0, v5, :cond_0

    .line 360
    .end local v0    # "c":I
    return v1

    .line 327
    .restart local v0    # "c":I
    :cond_0
    const/16 v5, 0x81

    if-lt v0, v5, :cond_1

    const/16 v5, 0xbf

    if-gt v0, v5, :cond_1

    .line 328
    and-int/lit8 v3, v0, 0x3f

    .line 329
    .local v3, "n":I
    invoke-static {p0, v4, v3}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->checkRange([BII)V

    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->ensureOutput([BII)V

    .line 330
    invoke-static {p0, v4, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v3

    add-int/2addr v1, v3

    .line 331
    .end local v3    # "n":I
    move v0, v4

    goto/16 :goto_5

    :cond_1
    const/16 v5, 0x7f

    const/4 v6, 0x3

    if-gt v0, v5, :cond_4

    .line 332
    invoke-static {p0, v4, v3}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->checkRange([BII)V

    .line 333
    shl-int/lit8 v3, v0, 0x8

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "src":I
    .local v5, "src":I
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xfff

    .line 334
    .local v3, "back":I
    ushr-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v6

    .line 335
    .local v4, "n":I
    if-lez v3, :cond_3

    if-gt v3, v1, :cond_3

    .line 336
    invoke-static {p2, v1, v4}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->ensureOutput([BII)V

    .line 337
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

    .line 338
    .end local v3    # "back":I
    .end local v4    # "n":I
    .end local v6    # "i":I
    :cond_2
    move v0, v5

    goto/16 :goto_5

    .line 335
    .restart local v3    # "back":I
    .restart local v4    # "n":I
    :cond_3
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Tutorial short-copy range"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 338
    .end local v3    # "back":I
    .end local v5    # "src":I
    .local v4, "src":I
    :cond_4
    const/16 v3, 0xfd

    if-gt v0, v3, :cond_7

    .line 339
    const/4 v3, 0x2

    invoke-static {p0, v4, v3}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->checkRange([BII)V

    .line 340
    and-int/lit8 v3, v0, 0x3f

    add-int/2addr v3, v6

    .line 341
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

    .line 342
    if-ltz v5, :cond_6

    if-ge v5, v1, :cond_6

    .line 343
    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->ensureOutput([BII)V

    .line 344
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

    .line 345
    .end local v3    # "n":I
    .end local v5    # "from":I
    .end local v6    # "i":I
    .end local v7    # "dst":I
    .restart local v1    # "dst":I
    :cond_5
    move v0, v4

    goto/16 :goto_5

    .line 342
    .restart local v3    # "n":I
    .restart local v5    # "from":I
    :cond_6
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Tutorial absolute-copy range"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 345
    .end local v3    # "n":I
    .end local v5    # "from":I
    :cond_7
    const/16 v3, 0xfe

    if-ne v0, v3, :cond_9

    .line 346
    invoke-static {p0, v4, v6}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->checkRange([BII)V

    .line 347
    aget-byte v3, p0, v4

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    .line 348
    .restart local v3    # "n":I
    add-int/lit8 v5, v4, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .local v5, "value":I
    add-int/lit8 v4, v4, 0x3

    .line 349
    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->ensureOutput([BII)V

    .line 350
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

    .line 351
    .end local v3    # "n":I
    .end local v5    # "value":I
    .end local v6    # "i":I
    .end local v7    # "dst":I
    .restart local v1    # "dst":I
    :cond_8
    move v0, v4

    goto :goto_5

    .line 352
    :cond_9
    const/4 v3, 0x4

    invoke-static {p0, v4, v3}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->checkRange([BII)V

    .line 353
    aget-byte v3, p0, v4

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    .line 354
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

    .line 355
    if-ltz v5, :cond_b

    if-ge v5, v1, :cond_b

    .line 356
    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->ensureOutput([BII)V

    .line 357
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

    .line 359
    .end local v3    # "n":I
    .end local v4    # "src":I
    .end local v5    # "from":I
    .end local v6    # "i":I
    .local v0, "src":I
    :goto_5
    goto/16 :goto_0

    .line 355
    .local v0, "c":I
    .restart local v3    # "n":I
    .restart local v4    # "src":I
    .restart local v5    # "from":I
    :cond_b
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Tutorial long-copy range"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 323
    .end local v3    # "n":I
    .end local v4    # "src":I
    .end local v5    # "from":I
    .local v0, "src":I
    :cond_c
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Tutorial decompressor guard"

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

    .line 424
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 425
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 427
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 429
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

    .line 430
    :cond_3
    :goto_1
    return-void

    .line 424
    :cond_4
    :goto_2
    return-void
.end method

.method private static ensureOutput([BII)V
    .locals 2
    .param p0, "out"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 473
    return-void

    .line 472
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Tutorial output overrun"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    .local v0, "input":Ljava/io/InputStream;
    .local v1, "knownRomSize":J
    .local v3, "stagingRoot":Ljava/io/File;
    .local v4, "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    invoke-static/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;

    move-result-object p0

    return-object p0
.end method

.method public static extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;
    .locals 17
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    .param p5, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    move-object/from16 v6, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    if-eqz p0, :cond_d

    .line 77
    if-eqz v6, :cond_c

    .line 78
    const-wide/32 v0, 0x1000000

    cmp-long v0, p1, v0

    if-gtz v0, :cond_b

    .line 79
    invoke-static/range {p0 .. p2}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->readAll(Ljava/io/InputStream;J)[B

    move-result-object v10

    .line 80
    .local v10, "rom":[B
    array-length v0, v10

    const v1, 0x44300

    if-lt v0, v1, :cond_a

    .line 82
    invoke-static {v10, v9}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->decodeAssets([BLjava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 83
    .local v11, "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;>;"
    invoke-static {}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->entries()Ljava/util/List;

    move-result-object v12

    .line 84
    .local v12, "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 86
    invoke-static {v6}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 87
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not create tutorial staging directory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 91
    .local v0, "verified":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v5, "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    move v2, v0

    .end local v0    # "verified":I
    .local v1, "i":I
    .local v2, "verified":I
    :goto_1
    :try_start_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 94
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;

    move-object v3, v0

    .line 95
    .local v3, "asset":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-object v4, v0

    .line 96
    .local v4, "expected":Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;
    iget-object v0, v4, Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;->relativePath:Ljava/lang/String;

    iget-object v7, v3, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;->path:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 98
    iget-object v0, v3, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;->path:Ljava/lang/String;

    iget-object v7, v3, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;->data:[B

    iget v13, v4, Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;->length:I

    iget-object v14, v4, Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;->sha256:Ljava/lang/String;

    invoke-static {v9, v0, v7, v13, v14}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->matchesExtracted(Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)Z

    move-result v0

    move v7, v0

    .line 100
    .local v7, "match":Z
    if-eqz v7, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, v3, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;->path:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    .line 102
    :goto_2
    :try_start_1
    iget-object v0, v3, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;->path:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object v13, v0

    .line 103
    .local v13, "out":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v14, v0

    .line 104
    .local v14, "parent":Ljava/io/File;
    if-eqz v14, :cond_4

    :try_start_2
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    .line 105
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v15, "Could not create tutorial asset directory"

    invoke-direct {v0, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "verified":I
    .end local v5    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "rom":[B
    .end local v11    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;>;"
    .end local v12    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;>;"
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    .end local p5    # "profileId":Ljava/lang/String;
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    .line 106
    .restart local v2    # "verified":I
    .restart local v5    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "rom":[B
    .restart local v11    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;>;"
    .restart local v12    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;>;"
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    .restart local p5    # "profileId":Ljava/lang/String;
    :cond_4
    :goto_3
    :try_start_3
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v15, v0

    .line 107
    .local v15, "stream":Ljava/io/FileOutputStream;
    :try_start_4
    iget-object v0, v3, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;->data:[B

    invoke-virtual {v15, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 108
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 109
    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 110
    .end local v15    # "stream":Ljava/io/FileOutputStream;
    if-eqz v8, :cond_5

    add-int/lit8 v0, v1, 0x1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    move/from16 v16, v2

    .end local v2    # "verified":I
    .local v16, "verified":I
    :try_start_6
    iget-object v2, v3, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;->path:Ljava/lang/String;

    invoke-interface {v8, v0, v15, v2}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;->onProgress(IILjava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    .end local v16    # "verified":I
    .restart local v2    # "verified":I
    :cond_5
    move/from16 v16, v2

    .line 93
    .end local v2    # "verified":I
    .end local v3    # "asset":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;
    .end local v4    # "expected":Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;
    .end local v7    # "match":Z
    .end local v13    # "out":Ljava/io/File;
    .end local v14    # "parent":Ljava/io/File;
    .restart local v16    # "verified":I
    :goto_4
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v16

    goto/16 :goto_1

    .line 106
    .end local v16    # "verified":I
    .restart local v2    # "verified":I
    .restart local v3    # "asset":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;
    .restart local v4    # "expected":Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;
    .restart local v7    # "match":Z
    .restart local v13    # "out":Ljava/io/File;
    .restart local v14    # "parent":Ljava/io/File;
    .restart local v15    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v0

    move/from16 v16, v2

    move-object v2, v0

    .end local v2    # "verified":I
    .restart local v16    # "verified":I
    :try_start_7
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    :try_start_8
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "rom":[B
    .end local v11    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;>;"
    .end local v12    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;>;"
    .end local v16    # "verified":I
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    .end local p5    # "profileId":Ljava/lang/String;
    :goto_5
    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    .line 115
    .end local v1    # "i":I
    .end local v3    # "asset":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;
    .end local v4    # "expected":Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;
    .end local v7    # "match":Z
    .end local v13    # "out":Ljava/io/File;
    .end local v14    # "parent":Ljava/io/File;
    .end local v15    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "rom":[B
    .restart local v11    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;>;"
    .restart local v12    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;>;"
    .restart local v16    # "verified":I
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    .restart local p5    # "profileId":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    :goto_6
    move/from16 v2, v16

    goto :goto_8

    .end local v16    # "verified":I
    .restart local v2    # "verified":I
    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    :goto_7
    move/from16 v16, v2

    .end local v2    # "verified":I
    .restart local v16    # "verified":I
    goto :goto_8

    .line 97
    .end local v16    # "verified":I
    .restart local v1    # "i":I
    .restart local v2    # "verified":I
    .restart local v3    # "asset":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;
    .restart local v4    # "expected":Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;
    :cond_6
    :try_start_9
    new-instance v0, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Tutorial manifest order mismatch at "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "verified":I
    .end local v5    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "rom":[B
    .end local v11    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;>;"
    .end local v12    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;>;"
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    .end local p5    # "profileId":Ljava/lang/String;
    throw v0

    .line 112
    .end local v1    # "i":I
    .end local v3    # "asset":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;
    .end local v4    # "expected":Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;
    .restart local v2    # "verified":I
    .restart local v5    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "rom":[B
    .restart local v11    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;>;"
    .restart local v12    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;>;"
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;
    .restart local p5    # "profileId":Ljava/lang/String;
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v6}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 113
    :cond_8
    new-instance v0, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->payloadBytes()J

    move-result-wide v3

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$Result;-><init>(IIJLjava/util/List;Ljava/io/File;Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider-IA;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_4

    return-object v0

    .line 115
    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    :goto_8
    invoke-static/range {p3 .. p3}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 117
    throw v0

    .line 84
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "verified":I
    .end local v5    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Tutorial manifest/generator count mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    .end local v11    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$LogicalAsset;>;"
    .end local v12    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;>;"
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is too small for tutorial resources"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    .end local v10    # "rom":[B
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is unexpectedly large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Tutorial staging directory is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM stream is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static loadPatternTable([BI)[B
    .locals 12
    .param p0, "rom"    # [B
    .param p1, "tableOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    move v0, p1

    .line 279
    .local v0, "p":I
    const/4 v1, 0x0

    .line 280
    .local v1, "bytes":I
    const/4 v2, 0x0

    .line 282
    .local v2, "guard":I
    :goto_0
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x100

    if-gt v2, v3, :cond_4

    .line 283
    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be16([BI)I

    move-result v3

    .line 284
    .local v3, "flags":I
    if-nez v3, :cond_3

    .line 288
    .end local v3    # "flags":I
    new-array v4, v1, [B

    .line 289
    .local v4, "out":[B
    const/high16 v3, 0x10000

    new-array v5, v3, [B

    .line 290
    .local v5, "scratch":[B
    move v0, p1

    .line 291
    const/4 v3, 0x0

    .line 293
    .local v3, "dst":I
    :goto_1
    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be16([BI)I

    move-result v6

    .line 294
    .local v6, "flags":I
    if-nez v6, :cond_0

    .line 308
    .end local v6    # "flags":I
    return-object v4

    .line 295
    .restart local v6    # "flags":I
    :cond_0
    add-int/lit8 v7, v0, 0x2

    invoke-static {p0, v7}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be32([BI)I

    move-result v7

    .line 296
    .local v7, "pointer":I
    add-int/lit8 v0, v0, 0x6

    .line 297
    and-int/lit16 v8, v6, 0x7fff

    mul-int/lit8 v8, v8, 0x20

    .line 298
    .local v8, "n":I
    const v9, 0x8000

    and-int/2addr v9, v6

    if-eqz v9, :cond_2

    .line 299
    invoke-static {p0, v7, v5}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->decompressInto([BI[B)I

    move-result v9

    .line 300
    .local v9, "produced":I
    if-lez v9, :cond_1

    .line 301
    const/4 v10, 0x0

    invoke-static {v5, v10, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    .end local v9    # "produced":I
    goto :goto_2

    .line 300
    .restart local v9    # "produced":I
    :cond_1
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Tutorial pattern decode empty"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 303
    .end local v9    # "produced":I
    :cond_2
    invoke-static {p0, v7, v8}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->checkRange([BII)V

    .line 304
    invoke-static {p0, v7, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    :goto_2
    add-int/2addr v3, v8

    .line 307
    .end local v6    # "flags":I
    .end local v7    # "pointer":I
    .end local v8    # "n":I
    goto :goto_1

    .line 285
    .end local v4    # "out":[B
    .end local v5    # "scratch":[B
    .local v3, "flags":I
    :cond_3
    and-int/lit16 v4, v3, 0x7fff

    mul-int/lit8 v4, v4, 0x20

    add-int/2addr v1, v4

    .line 286
    nop

    .end local v3    # "flags":I
    add-int/lit8 v0, v0, 0x6

    .line 287
    goto :goto_0

    .line 282
    :cond_4
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Tutorial pattern table guard"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static paletteSceneForPointer([BI)I
    .locals 4
    .param p0, "rom"    # [B
    .param p1, "pointer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 254
    .local v1, "canonical":[I
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    .line 255
    .local v0, "scenes":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 256
    aget v3, v1, v2

    invoke-static {p0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v3

    if-ne p1, v3, :cond_0

    aget v3, v0, v2

    return v3

    .line 255
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 257
    .end local v2    # "i":I
    :cond_1
    const/4 v2, -0x1

    return v2

    nop

    :array_0
    .array-data 4
        0x307fc
        0x331b4
        0x36df2
        0x39176
        0x3c988
        0x3f4ee
        0x412fe
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x3
        0x4
        0x6
        0x9
        0xb
    .end array-data
.end method

.method private static put32([BII)V
    .locals 2
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .param p2, "value"    # I

    .line 461
    ushr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 462
    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 463
    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 464
    add-int/lit8 v0, p1, 0x3

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 465
    return-void
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

    .line 401
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

    .line 402
    .local v0, "initial":I
    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 403
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x4000

    new-array v2, v2, [B

    .line 405
    .local v2, "buf":[B
    const/4 v3, 0x0

    .line 406
    .local v3, "total":I
    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "n":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    .line 407
    add-int/2addr v3, v5

    .line 408
    const/high16 v4, 0x1000000

    if-gt v3, v4, :cond_1

    .line 409
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 408
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v6, "ROM is unexpectedly large"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 411
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

    .line 415
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 416
    .local v0, "out":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "rootPath":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 418
    .local v2, "outPath":Ljava/lang/String;
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

    .line 419
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Tutorial asset escaped staging root"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 420
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static sha256([B)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 435
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 436
    .local v1, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 437
    .local v2, "out":Ljava/lang/StringBuilder;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v1, v4

    .local v5, "b":B
    const-string v6, "%02x"

    and-int/lit16 v7, v5, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 438
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 439
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "hash":[B
    .end local v2    # "out":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static verifyAnchors([BLjava/lang/String;)V
    .locals 19
    .param p0, "rom"    # [B
    .param p1, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    move-object/from16 v0, p0

    const-string v1, "translation_ru_shedevr_lipetsk_usa"

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 365
    .local v1, "russian":Z
    const v3, 0x416e2

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v3

    .line 366
    .local v3, "sceneTable":I
    if-eqz v1, :cond_0

    const v4, 0x324d2

    goto :goto_0

    :cond_0
    const v4, 0x32472

    .line 367
    .local v4, "scene00Plane0":I
    :goto_0
    if-eqz v1, :cond_1

    const v5, 0x415e2

    goto :goto_1

    :cond_1
    const v5, 0x415cc

    .line 368
    .local v5, "scene11Plane0":I
    :goto_1
    const v6, 0x3087c

    invoke-static {v0, v6}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v6

    .line 369
    .local v6, "expectedScene0Pattern":I
    invoke-static {v0, v4}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v7

    .line 370
    .local v7, "expectedScene0Plane0":I
    const v8, 0x32e5e

    invoke-static {v0, v8}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v8

    .line 371
    .local v8, "expectedScene0Plane1":I
    invoke-static {v0, v5}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v9

    .line 372
    .local v9, "expectedScene11Plane0":I
    invoke-static {v0, v3}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be32([BI)I

    move-result v10

    if-ne v10, v6, :cond_5

    add-int/lit8 v10, v3, 0x4

    invoke-static {v0, v10}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be32([BI)I

    move-result v10

    if-ne v10, v7, :cond_5

    add-int/lit8 v10, v3, 0x8

    .line 373
    invoke-static {v0, v10}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be32([BI)I

    move-result v10

    if-ne v10, v8, :cond_4

    add-int/lit16 v10, v3, 0x84

    const/4 v11, 0x4

    add-int/2addr v10, v11

    .line 374
    invoke-static {v0, v10}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be32([BI)I

    move-result v10

    if-ne v10, v9, :cond_3

    .line 377
    const v10, 0x41b48

    invoke-static {v0, v10}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v10

    .line 378
    .local v10, "s0":I
    const v12, 0x41b82

    invoke-static {v0, v12}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v12

    .line 379
    .local v12, "s1":I
    const v13, 0x41bd0

    invoke-static {v0, v13}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v13

    .line 380
    .local v13, "s2":I
    const v14, 0x41fd6

    invoke-static {v0, v14}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v14

    .line 381
    .local v14, "s3":I
    const v15, 0x4231c

    invoke-static {v0, v15}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v15

    .line 382
    .local v15, "s4":I
    const v11, 0x423cc

    invoke-static {v0, v11}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v11

    .line 383
    .local v11, "s5":I
    move/from16 v16, v1

    .end local v1    # "russian":Z
    .local v16, "russian":Z
    const v1, 0x4270c

    invoke-static {v0, v1}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v1

    .line 384
    .local v1, "s6":I
    const v2, 0x42936

    invoke-static {v0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    .line 385
    .local v2, "s7":I
    move/from16 v17, v3

    .end local v3    # "sceneTable":I
    .local v17, "sceneTable":I
    invoke-static {v0, v10}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be16([BI)I

    move-result v3

    move/from16 v18, v4

    const/4 v4, 0x4

    .end local v4    # "scene00Plane0":I
    .local v18, "scene00Plane0":I
    if-ne v3, v4, :cond_2

    invoke-static {v0, v12}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be16([BI)I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 386
    const v3, 0x41b56

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v3

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be32([BI)I

    move-result v3

    const v4, 0x307fc

    invoke-static {v0, v4}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 387
    const v3, 0x41b90

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v3

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be32([BI)I

    move-result v3

    const v4, 0x331b4

    invoke-static {v0, v4}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 388
    invoke-static {v0, v13}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be16([BI)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    const v3, 0x41bf2

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v3

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be16([BI)I

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_2

    .line 389
    const v3, 0x41d5c

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v3

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be32([BI)I

    move-result v3

    const v4, 0x41f56

    invoke-static {v0, v4}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 390
    invoke-static {v0, v14}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be16([BI)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    const v3, 0x41fd8

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v3

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be16([BI)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 391
    invoke-static {v0, v15}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be16([BI)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    const v3, 0x4231e

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v3

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be16([BI)I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    .line 392
    invoke-static {v0, v11}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be16([BI)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    const v3, 0x423ce

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v3

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be16([BI)I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_2

    .line 393
    invoke-static {v0, v1}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be16([BI)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    const v3, 0x4270e

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v3

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be16([BI)I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 394
    invoke-static {v0, v2}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be16([BI)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    const v3, 0x42938

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v3

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be16([BI)I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_2

    .line 395
    const v3, 0x4293a

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v3

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be16([BI)I

    move-result v3

    const/16 v4, 0x34

    if-ne v3, v4, :cond_2

    .line 396
    const v3, 0x42942

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v3

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider;->be32([BI)I

    move-result v3

    const v4, 0x412fe

    invoke-static {v0, v4}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 398
    return-void

    .line 397
    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Original tutorial scripts changed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 374
    .end local v2    # "s7":I
    .end local v10    # "s0":I
    .end local v11    # "s5":I
    .end local v12    # "s1":I
    .end local v13    # "s2":I
    .end local v14    # "s3":I
    .end local v15    # "s4":I
    .end local v16    # "russian":Z
    .end local v17    # "sceneTable":I
    .end local v18    # "scene00Plane0":I
    .local v1, "russian":Z
    .restart local v3    # "sceneTable":I
    .restart local v4    # "scene00Plane0":I
    :cond_3
    move/from16 v16, v1

    move/from16 v17, v3

    move/from16 v18, v4

    .end local v1    # "russian":Z
    .end local v3    # "sceneTable":I
    .end local v4    # "scene00Plane0":I
    .restart local v16    # "russian":Z
    .restart local v17    # "sceneTable":I
    .restart local v18    # "scene00Plane0":I
    goto :goto_2

    .line 373
    .end local v16    # "russian":Z
    .end local v17    # "sceneTable":I
    .end local v18    # "scene00Plane0":I
    .restart local v1    # "russian":Z
    .restart local v3    # "sceneTable":I
    .restart local v4    # "scene00Plane0":I
    :cond_4
    move/from16 v16, v1

    move/from16 v17, v3

    move/from16 v18, v4

    .end local v1    # "russian":Z
    .end local v3    # "sceneTable":I
    .end local v4    # "scene00Plane0":I
    .restart local v16    # "russian":Z
    .restart local v17    # "sceneTable":I
    .restart local v18    # "scene00Plane0":I
    goto :goto_2

    .line 372
    .end local v16    # "russian":Z
    .end local v17    # "sceneTable":I
    .end local v18    # "scene00Plane0":I
    .restart local v1    # "russian":Z
    .restart local v3    # "sceneTable":I
    .restart local v4    # "scene00Plane0":I
    :cond_5
    move/from16 v16, v1

    move/from16 v17, v3

    move/from16 v18, v4

    .line 375
    .end local v1    # "russian":Z
    .end local v3    # "sceneTable":I
    .end local v4    # "scene00Plane0":I
    .restart local v16    # "russian":Z
    .restart local v17    # "sceneTable":I
    .restart local v18    # "scene00Plane0":I
    :goto_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Original/tutorial-profile scene table changed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
