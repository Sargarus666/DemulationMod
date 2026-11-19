.class public final Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;
.super Ljava/lang/Object;
.source "GenesisRomOriginalContentAssetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;,
        Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;,
        Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;
    }
.end annotation


# static fields
.field private static final ENDING_TEXT_STREAM:I = 0x11930

.field private static final HOUSE_JOIN_POINTERS:I = 0x87d7c

.field private static final HOUSE_MISSION_TABLE:I = 0x87f38

.field private static final MAX_ROM_BYTES:I = 0x1000000

.field private static final RESULT_HOUSE_LABELS:I = 0xa697c

.field private static final RESULT_PASSWORD_RECORDS:I = 0x88124

.field private static final RESULT_RANK_NAMES:I = 0xa68e2

.field private static final RESULT_THRESHOLDS:I = 0xa68d2

.field private static final ROM_IMAGE_BYTES:I = 0x100000

.field private static final TITLE_TEXT:I = 0x173f4

.field private static final TITLE_TEXT_BYTES:I = 0x24

.field private static final TUTORIAL_CHAR_MAP:I = 0x42ad0

.field private static final TUTORIAL_CHAR_MAP_BYTES:I = 0x80

.field private static final TUTORIAL_MESSAGE_COUNT:I = 0x19

.field private static final TUTORIAL_SCRIPT_STARTS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->TUTORIAL_SCRIPT_STARTS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x41b48
        0x41b82
        0x41bd0
        0x41fd6
        0x423cc
        0x42936
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 64
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

    .line 435
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->checkRange([BII)V

    .line 436
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

    .line 440
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->checkRange([BII)V

    .line 441
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
    .locals 1
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->buildAssets([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildAssets([BLjava/lang/String;)Ljava/util/List;
    .locals 21
    .param p0, "rom"    # [B
    .param p1, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v2, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;>;"
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x259

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 242
    .local v3, "frontend":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0}, Lcom/ahsim/demulation/GermanRomAddressMap;->isExactGerman([B)Z

    move-result v4

    .line 243
    .local v4, "exactGerman":Z
    const v5, 0x173f4

    invoke-static {v0, v5}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v5

    .line 244
    .local v5, "titleText":I
    const/4 v6, 0x4

    if-eqz v4, :cond_1

    .line 245
    move v7, v5

    .line 246
    .local v7, "cursor":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v6, :cond_0

    .line 247
    const/16 v9, 0x80

    invoke-static {v0, v7, v9}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->readCStringBytes([BII)[B

    move-result-object v9

    .line 248
    .local v9, "value":[B
    invoke-virtual {v3, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 249
    array-length v10, v9

    add-int/2addr v7, v10

    .line 246
    .end local v9    # "value":[B
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 251
    .end local v7    # "cursor":I
    .end local v8    # "i":I
    :cond_0
    goto :goto_1

    .line 252
    :cond_1
    const/16 v7, 0x24

    invoke-static {v0, v5, v7}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->copy([BII)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 254
    :goto_1
    const v7, 0x87d7c

    invoke-static {v0, v7}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v7

    .line 255
    .local v7, "houseJoinPointers":I
    const/4 v8, 0x0

    .local v8, "romHouse":I
    :goto_2
    const/4 v9, 0x3

    if-ge v8, v9, :cond_2

    .line 256
    mul-int/lit8 v9, v8, 0x4

    add-int/2addr v9, v7

    invoke-static {v0, v9}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->be32([BI)I

    move-result v9

    invoke-static {v9}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->u24(I)I

    move-result v9

    const/16 v10, 0x400

    invoke-static {v0, v9, v10}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->readCStringBytes([BII)[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 255
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 258
    .end local v8    # "romHouse":I
    :cond_2
    new-instance v8, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;

    const-string v10, "content/frontend/exact_text_v1.bin"

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-direct {v8, v10, v11}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    const-string v8, "translation_ru_shedevr_lipetsk_usa"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 261
    .local v8, "russian":Z
    const-string v10, "dune_arrakis_germany_gm_t70246_00"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 262
    .local v10, "german":Z
    const-string v11, "content/ending/ending_text_v1.bin"

    const-string v12, "content/result/mission_result_data_v1.bin"

    const-string v13, "content/tutorial/exact_text_v1.bin"

    const-string v14, "content/mission/presentation_text_v1.bin"

    if-eqz v8, :cond_3

    .line 263
    new-instance v6, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;

    .line 264
    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->decodeMissionPresentationText([B)[B

    move-result-object v9

    invoke-direct {v6, v14, v9}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 263
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v6, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;

    .line 266
    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->decodeTutorialExactText([B)[B

    move-result-object v9

    invoke-direct {v6, v13, v9}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 265
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v6, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;

    .line 268
    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->decodeMissionResultExactData([B)[B

    move-result-object v9

    invoke-direct {v6, v12, v9}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 267
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v6, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;

    .line 270
    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->decodeEndingText([B)[B

    move-result-object v9

    invoke-direct {v6, v11, v9}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 269
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v3

    goto/16 :goto_6

    .line 272
    :cond_3
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x3e27

    invoke-direct {v15, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 273
    .local v15, "mission":Ljava/io/ByteArrayOutputStream;
    const v6, 0x87f38

    invoke-static {v0, v6}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v6

    .line 274
    .local v6, "houseMissionTable":I
    const/16 v17, 0x0

    move/from16 v1, v17

    .local v1, "romHouse":I
    :goto_3
    if-ge v1, v9, :cond_6

    .line 275
    mul-int/lit8 v17, v1, 0x4

    add-int v9, v6, v17

    invoke-static {v0, v9}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->be32([BI)I

    move-result v9

    invoke-static {v9}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->u24(I)I

    move-result v9

    .line 276
    .local v9, "base":I
    const/16 v17, 0x0

    move/from16 v18, v1

    move/from16 v1, v17

    .local v1, "m":I
    .local v18, "romHouse":I
    :goto_4
    move-object/from16 v17, v3

    .end local v3    # "frontend":Ljava/io/ByteArrayOutputStream;
    .local v17, "frontend":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x9

    if-ge v1, v3, :cond_5

    .line 277
    mul-int/lit8 v3, v1, 0x10

    add-int/2addr v3, v9

    .line 278
    .local v3, "record":I
    const/16 v19, 0x0

    move/from16 v20, v1

    move/from16 v1, v19

    .local v1, "field":I
    .local v20, "m":I
    :goto_5
    move/from16 v19, v3

    const/4 v3, 0x4

    .end local v3    # "record":I
    .local v19, "record":I
    if-ge v1, v3, :cond_4

    .line 279
    mul-int/lit8 v16, v1, 0x4

    add-int v3, v19, v16

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->be32([BI)I

    move-result v3

    invoke-static {v3}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->u24(I)I

    move-result v3

    .line 280
    .local v3, "pointer":I
    move/from16 v16, v1

    .end local v1    # "field":I
    .local v16, "field":I
    const/16 v1, 0x1000

    invoke-static {v0, v3, v1}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->readCStringBytes([BII)[B

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 278
    .end local v3    # "pointer":I
    add-int/lit8 v1, v16, 0x1

    move/from16 v3, v19

    .end local v16    # "field":I
    .restart local v1    # "field":I
    goto :goto_5

    :cond_4
    move/from16 v16, v1

    .line 276
    .end local v1    # "field":I
    .end local v19    # "record":I
    add-int/lit8 v1, v20, 0x1

    move-object/from16 v3, v17

    .end local v20    # "m":I
    .local v1, "m":I
    goto :goto_4

    :cond_5
    move/from16 v20, v1

    .line 274
    .end local v1    # "m":I
    .end local v9    # "base":I
    add-int/lit8 v1, v18, 0x1

    move-object/from16 v3, v17

    const/4 v9, 0x3

    .end local v18    # "romHouse":I
    .local v1, "romHouse":I
    goto :goto_3

    .end local v17    # "frontend":Ljava/io/ByteArrayOutputStream;
    .local v3, "frontend":Ljava/io/ByteArrayOutputStream;
    :cond_6
    move/from16 v18, v1

    move-object/from16 v17, v3

    .line 284
    .end local v1    # "romHouse":I
    .end local v3    # "frontend":Ljava/io/ByteArrayOutputStream;
    .restart local v17    # "frontend":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v1, v14, v3}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    new-instance v1, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;

    .line 286
    xor-int/lit8 v3, v10, 0x1

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->buildTutorialExactAsset([BZ)[B

    move-result-object v3

    invoke-direct {v1, v13, v3}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 285
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance v1, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->buildMissionResultExactAsset([B)[B

    move-result-object v3

    invoke-direct {v1, v12, v3}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v1, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;

    .line 289
    xor-int/lit8 v3, v10, 0x1

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->buildEndingTextAsset([BZ)[B

    move-result-object v3

    invoke-direct {v1, v11, v3}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 288
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    .end local v6    # "houseMissionTable":I
    .end local v15    # "mission":Ljava/io/ByteArrayOutputStream;
    :goto_6
    return-object v2
.end method

.method private static buildEndingTextAsset([B)[B
    .locals 1
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->buildEndingTextAsset([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method private static buildEndingTextAsset([BZ)[B
    .locals 8
    .param p0, "rom"    # [B
    .param p1, "requireReferenceSize"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    const v0, 0x11930

    invoke-static {p0, v0}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v0

    .line 319
    .local v0, "start":I
    move v1, v0

    .line 320
    .local v1, "p":I
    array-length v2, p0

    add-int/lit16 v3, v0, 0x1000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 321
    .local v2, "limit":I
    invoke-static {p0}, Lcom/ahsim/demulation/GermanRomAddressMap;->isExactGerman([B)Z

    move-result v3

    .line 322
    .local v3, "german":Z
    const/4 v4, 0x0

    .line 323
    .local v4, "terminated":Z
    :goto_0
    if-ge v1, v2, :cond_6

    .line 324
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "p":I
    .local v5, "p":I
    aget-byte v1, p0, v1

    const/16 v6, 0xff

    and-int/2addr v1, v6

    .line 325
    .local v1, "c":I
    if-nez v1, :cond_0

    const/4 v4, 0x1

    move v1, v5

    goto :goto_3

    .line 326
    :cond_0
    if-ne v1, v6, :cond_3

    .line 327
    if-ge v5, v2, :cond_2

    add-int/lit8 v7, v5, 0x1

    .end local v5    # "p":I
    .local v7, "p":I
    aget-byte v5, p0, v5

    and-int/2addr v5, v6

    const/4 v6, 0x3

    if-gt v5, v6, :cond_1

    move v1, v7

    goto :goto_2

    :cond_1
    move v5, v7

    .end local v7    # "p":I
    .restart local v5    # "p":I
    :cond_2
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Ending palette marker mismatch"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 328
    :cond_3
    const/16 v6, 0xa

    if-eq v1, v6, :cond_5

    const/16 v6, 0x20

    if-lt v1, v6, :cond_4

    if-nez v3, :cond_5

    const/16 v6, 0x7e

    if-gt v1, v6, :cond_4

    goto :goto_1

    .line 329
    :cond_4
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Ending text stream contains unsupported byte"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 331
    .end local v1    # "c":I
    :cond_5
    :goto_1
    move v1, v5

    .end local v5    # "p":I
    .local v1, "p":I
    :goto_2
    goto :goto_0

    .line 332
    :cond_6
    :goto_3
    if-eqz v4, :cond_b

    .line 333
    sub-int v5, v1, v0

    invoke-static {p0, v0, v5}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->copy([BII)[B

    move-result-object v5

    .line 334
    .local v5, "out":[B
    if-eqz p1, :cond_8

    array-length v6, v5

    const/16 v7, 0x54a

    if-ne v6, v7, :cond_7

    goto :goto_4

    .line 335
    :cond_7
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Ending exact-content size mismatch"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 336
    :cond_8
    :goto_4
    if-nez p1, :cond_a

    array-length v6, v5

    const/16 v7, 0x80

    if-lt v6, v7, :cond_9

    array-length v6, v5

    const/16 v7, 0x2000

    if-gt v6, v7, :cond_9

    goto :goto_5

    .line 337
    :cond_9
    new-instance v6, Ljava/io/IOException;

    const-string v7, "German ending content size mismatch"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 338
    :cond_a
    :goto_5
    return-object v5

    .line 332
    .end local v5    # "out":[B
    :cond_b
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Ending text stream is unterminated"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method static buildExactAssets([B)Ljava/util/List;
    .locals 7
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    invoke-static {p0}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->buildAssets([B)Ljava/util/List;

    move-result-object v0

    .line 225
    .local v0, "logical":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v1, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-static {}, Lcom/ahsim/demulation/RomOriginalContentAssetManifest;->entries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;

    .line 227
    .local v3, "e":Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;
    iget-object v4, v3, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->find(Ljava/util/List;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;

    move-result-object v4

    .line 228
    .local v4, "a":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;
    if-eqz v4, :cond_0

    .line 229
    iget-object v5, v4, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;->data:[B

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .end local v3    # "e":Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;
    .end local v4    # "a":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;
    goto :goto_0

    .line 228
    .restart local v3    # "e":Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;
    .restart local v4    # "a":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing original-content asset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 231
    .end local v3    # "e":Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;
    .end local v4    # "a":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private static buildMissionResultExactAsset([B)[B
    .locals 10
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1ed

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 296
    .local v0, "result":Ljava/io/ByteArrayOutputStream;
    const v2, 0xa68d2

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {p0, v2, v3}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->copy([BII)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 297
    const v2, 0xa68e2

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    const/16 v3, 0x99

    invoke-static {p0, v2, v3}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->copy([BII)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 298
    const v2, 0xa697c

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    const/16 v3, 0x1b

    invoke-static {p0, v2, v3}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->copy([BII)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 299
    const v2, 0x88124

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    .line 300
    .local v2, "passwordRecords":I
    const/4 v3, 0x1

    .local v3, "mission":I
    :goto_0
    const/16 v4, 0x9

    if-gt v3, v4, :cond_2

    .line 301
    const/4 v4, 0x0

    .local v4, "romHouse":I
    :goto_1
    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    .line 302
    add-int/lit8 v5, v3, -0x1

    mul-int/lit8 v5, v5, 0x18

    add-int/2addr v5, v2

    mul-int/lit8 v6, v4, 0x8

    add-int/2addr v5, v6

    .line 303
    .local v5, "record":I
    invoke-static {p0, v5}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->be32([BI)I

    move-result v6

    invoke-static {v6}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->u24(I)I

    move-result v6

    .line 304
    .local v6, "pointer":I
    const/16 v7, 0x20

    invoke-static {p0, v6, v7}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->readCStringBytes([BII)[B

    move-result-object v7

    .line 305
    .local v7, "password":[B
    array-length v8, v7

    const/16 v9, 0xb

    if-ne v8, v9, :cond_0

    .line 306
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 301
    .end local v5    # "record":I
    .end local v6    # "pointer":I
    .end local v7    # "password":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 305
    .restart local v5    # "record":I
    .restart local v6    # "pointer":I
    .restart local v7    # "password":[B
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v8, "Mission-result password length mismatch"

    invoke-direct {v1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    .end local v4    # "romHouse":I
    .end local v5    # "record":I
    .end local v6    # "pointer":I
    .end local v7    # "password":[B
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 309
    .end local v3    # "mission":I
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 310
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 309
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Mission-result exact-content size mismatch"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static buildTutorialExactAsset([B)[B
    .locals 1
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->buildTutorialExactAsset([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method private static buildTutorialExactAsset([BZ)[B
    .locals 12
    .param p0, "rom"    # [B
    .param p1, "requireReferenceSize"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x595

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 347
    .local v0, "tutorial":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 348
    .local v2, "tutorialMessages":I
    sget-object v3, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->TUTORIAL_SCRIPT_STARTS:[I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    aget v6, v3, v5

    .line 349
    .local v6, "scriptStart":I
    invoke-static {p0, v6}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v7

    .line 350
    .local v7, "pc":I
    const/4 v8, 0x0

    .line 352
    .local v8, "guard":I
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x800

    if-gt v8, v9, :cond_4

    .line 353
    invoke-static {p0, v7}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->be16([BI)I

    move-result v9

    .line 354
    .local v9, "op":I
    add-int/lit8 v7, v7, 0x2

    .line 355
    if-nez v9, :cond_1

    .line 348
    .end local v6    # "scriptStart":I
    .end local v7    # "pc":I
    .end local v8    # "guard":I
    .end local v9    # "op":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 356
    .restart local v6    # "scriptStart":I
    .restart local v7    # "pc":I
    .restart local v8    # "guard":I
    .restart local v9    # "op":I
    :cond_1
    const/16 v10, 0x30

    if-ne v9, v10, :cond_2

    .line 357
    const/16 v10, 0x100

    invoke-static {p0, v7, v10}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->readTutorialCStringBytes([BII)[B

    move-result-object v10

    .line 358
    .local v10, "message":[B
    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 359
    add-int/lit8 v2, v2, 0x1

    .line 360
    array-length v11, v10

    add-int/2addr v7, v11

    .line 361
    and-int/lit8 v11, v7, 0x1

    if-eqz v11, :cond_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 364
    .end local v10    # "message":[B
    :cond_2
    invoke-static {v9}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->tutorialArgumentBytes(I)I

    move-result v10

    .line 365
    .local v10, "argumentBytes":I
    if-ltz v10, :cond_3

    .line 369
    invoke-static {p0, v7, v10}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->checkRange([BII)V

    .line 370
    add-int/2addr v7, v10

    .line 371
    .end local v9    # "op":I
    .end local v10    # "argumentBytes":I
    goto :goto_1

    .line 366
    .restart local v9    # "op":I
    .restart local v10    # "argumentBytes":I
    :cond_3
    new-instance v1, Ljava/io/IOException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 367
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 366
    const-string v5, "Unsupported tutorial content opcode %04X"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 352
    .end local v9    # "op":I
    .end local v10    # "argumentBytes":I
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Tutorial content scan guard"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 373
    .end local v6    # "scriptStart":I
    .end local v7    # "pc":I
    .end local v8    # "guard":I
    :cond_5
    const/16 v3, 0x19

    if-ne v2, v3, :cond_b

    .line 375
    invoke-static {p0}, Lcom/ahsim/demulation/GermanRomAddressMap;->isExactGerman([B)Z

    move-result v3

    const/16 v4, 0x80

    if-eqz v3, :cond_6

    const/16 v3, 0x96

    goto :goto_2

    :cond_6
    move v3, v4

    .line 376
    .local v3, "tutorialCharMapBytes":I
    :goto_2
    const v5, 0x42ad0

    invoke-static {p0, v5}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v5

    invoke-static {p0, v5, v3}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->copy([BII)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 378
    if-eqz p1, :cond_8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    if-ne v5, v1, :cond_7

    goto :goto_3

    .line 379
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Tutorial exact-content size mismatch"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 380
    :cond_8
    :goto_3
    if-nez p1, :cond_a

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-lt v1, v4, :cond_9

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    const/16 v4, 0x4000

    if-gt v1, v4, :cond_9

    goto :goto_4

    .line 381
    :cond_9
    new-instance v1, Ljava/io/IOException;

    const-string v4, "German tutorial exact-content size mismatch"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 382
    :cond_a
    :goto_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 374
    .end local v3    # "tutorialCharMapBytes":I
    :cond_b
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Tutorial exact-message count mismatch"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static checkRange([BII)V
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 455
    return-void

    .line 453
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Original-content ROM range is invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static completeV8ToV9ContentStaging(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .param p0, "previousV8Root"    # Ljava/io/File;
    .param p1, "stagingRoot"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 210
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 211
    invoke-static {}, Lcom/ahsim/demulation/RomOriginalContentAssetManifest;->stagePEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;

    .line 212
    .local v1, "e":Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;
    iget-object v2, v1, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 213
    .local v2, "src":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    iget v5, v1, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->length:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->sha256:Ljava/lang/String;

    iget v4, v1, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->length:I

    invoke-static {v2, v4}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->readExactly(Ljava/io/File;I)[B

    move-result-object v4

    invoke-static {v4}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->sha256([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 215
    iget-object v3, v1, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 216
    .local v3, "dst":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 217
    .local v4, "parent":Ljava/io/File;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 218
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Could not create migrated content directory"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_1
    :goto_1
    invoke-static {v2, v3}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->copySynced(Ljava/io/File;Ljava/io/File;)V

    .line 220
    .end local v1    # "e":Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;
    .end local v2    # "src":Ljava/io/File;
    .end local v3    # "dst":Ljava/io/File;
    .end local v4    # "parent":Ljava/io/File;
    goto :goto_0

    .line 214
    .restart local v1    # "e":Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;
    .restart local v2    # "src":Ljava/io/File;
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Previous READY v8 content mismatch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    .end local v1    # "e":Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;
    .end local v2    # "src":Ljava/io/File;
    :cond_3
    return-void

    .line 210
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Tutorial-content staging is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Previous READY v8 root is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static completeV9ToV10ContentStaging(Ljava/io/File;Ljava/io/File;)V
    .locals 8
    .param p0, "previousV9Root"    # Ljava/io/File;
    .param p1, "stagingRoot"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 191
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v0, "old":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;>;"
    invoke-static {}, Lcom/ahsim/demulation/RomOriginalContentAssetManifest;->stagePEntries()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 194
    invoke-static {}, Lcom/ahsim/demulation/RomOriginalContentAssetManifest;->stageQEntries()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 195
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;

    .line 196
    .local v2, "e":Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;
    iget-object v3, v2, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 197
    .local v3, "src":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    iget v6, v2, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->length:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    iget-object v4, v2, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->sha256:Ljava/lang/String;

    iget v5, v2, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->length:I

    invoke-static {v3, v5}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->readExactly(Ljava/io/File;I)[B

    move-result-object v5

    invoke-static {v5}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->sha256([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 199
    iget-object v4, v2, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 200
    .local v4, "dst":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 201
    .local v5, "parent":Ljava/io/File;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 202
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v6, "Could not create migrated content directory"

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_1
    :goto_1
    invoke-static {v3, v4}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->copySynced(Ljava/io/File;Ljava/io/File;)V

    .line 204
    .end local v2    # "e":Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;
    .end local v3    # "src":Ljava/io/File;
    .end local v4    # "dst":Ljava/io/File;
    .end local v5    # "parent":Ljava/io/File;
    goto :goto_0

    .line 198
    .restart local v2    # "e":Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;
    .restart local v3    # "src":Ljava/io/File;
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Previous READY v9 content mismatch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    .end local v2    # "e":Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;
    .end local v3    # "src":Ljava/io/File;
    :cond_3
    return-void

    .line 191
    .end local v0    # "old":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;>;"
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Result/ending-content staging is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Previous READY v9 root is unavailable"

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

    .line 446
    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->checkRange([BII)V

    .line 447
    new-array v0, p2, [B

    .line 448
    .local v0, "out":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    return-object v0
.end method

.method private static copySynced(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .param p0, "source"    # Ljava/io/File;
    .param p1, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 491
    .local v0, "buffer":[B
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 493
    .local v2, "out":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "n":I
    if-ltz v3, :cond_1

    if-lez v4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 494
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    .end local v4    # "n":I
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 496
    .end local v1    # "in":Ljava/io/InputStream;
    return-void

    .line 491
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "buffer":[B
    .end local v1    # "in":Ljava/io/InputStream;
    .end local p0    # "source":Ljava/io/File;
    .end local p1    # "destination":Ljava/io/File;
    :goto_1
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local p0    # "source":Ljava/io/File;
    .restart local p1    # "destination":Ljava/io/File;
    :catchall_2
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
.end method

.method public static deleteRecursively(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 506
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 507
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 509
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 511
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

    .line 512
    :cond_3
    :goto_1
    return-void

    .line 506
    :cond_4
    :goto_2
    return-void
.end method

.method public static extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    .local v0, "input":Ljava/io/InputStream;
    .local v1, "knownRomSize":J
    .local v3, "stagingRoot":Ljava/io/File;
    .local v4, "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    invoke-static/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;

    move-result-object p0

    return-object p0
.end method

.method public static extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    .locals 21
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    .param p5, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    move-object/from16 v6, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    if-eqz p0, :cond_d

    .line 74
    if-eqz v6, :cond_c

    .line 75
    const-wide/32 v0, 0x1000000

    cmp-long v0, p1, v0

    if-gtz v0, :cond_b

    .line 76
    invoke-static/range {p0 .. p2}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->readAll(Ljava/io/InputStream;J)[B

    move-result-object v10

    .line 77
    .local v10, "rom":[B
    array-length v0, v10

    const/high16 v1, 0x100000

    if-lt v0, v1, :cond_a

    .line 78
    invoke-static {v10, v9}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->buildAssets([BLjava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 79
    .local v11, "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;>;"
    invoke-static {}, Lcom/ahsim/demulation/RomOriginalContentAssetManifest;->entries()Ljava/util/List;

    move-result-object v12

    .line 80
    .local v12, "expected":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v5, "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 82
    .local v0, "verified":I
    const-wide/16 v1, 0x0

    .line 84
    .local v1, "payload":J
    invoke-static {v6}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 85
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not create original-content staging"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 89
    :cond_1
    :goto_0
    const/4 v3, 0x0

    move-wide/from16 v19, v1

    move v1, v3

    move-wide/from16 v3, v19

    move v2, v0

    .end local v0    # "verified":I
    .local v1, "i":I
    .local v2, "verified":I
    .local v3, "payload":J
    :goto_1
    :try_start_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 90
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;

    move-object v7, v0

    .line 91
    .local v7, "e":Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;
    iget-object v0, v7, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {v11, v0}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->find(Ljava/util/List;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;

    move-result-object v0

    move-object v13, v0

    .line 92
    .local v13, "a":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;
    if-eqz v13, :cond_2

    iget-object v0, v7, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->relativePath:Ljava/lang/String;

    iget-object v14, v13, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;->data:[B

    iget v15, v7, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->length:I

    move/from16 v16, v1

    .end local v1    # "i":I
    .local v16, "i":I
    iget-object v1, v7, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->sha256:Ljava/lang/String;

    invoke-static {v9, v0, v14, v15, v1}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->matchesExtracted(Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    .end local v16    # "i":I
    .restart local v1    # "i":I
    :cond_2
    move/from16 v16, v1

    .end local v1    # "i":I
    .restart local v16    # "i":I
    :cond_3
    const/4 v0, 0x0

    :goto_2
    move v1, v0

    .line 94
    .local v1, "match":Z
    if-nez v1, :cond_4

    .line 95
    iget-object v0, v7, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    goto :goto_4

    .line 98
    :cond_4
    iget-object v0, v7, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object v14, v0

    .line 99
    .local v14, "out":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    move-object v15, v0

    .line 100
    .local v15, "parent":Ljava/io/File;
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5

    move/from16 v17, v1

    goto :goto_3

    .line 101
    :cond_5
    new-instance v0, Ljava/io/IOException;

    move/from16 v17, v1

    .end local v1    # "match":Z
    .local v17, "match":Z
    const-string v1, "Could not create original-content staging directory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "verified":I
    .end local v3    # "payload":J
    .end local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "rom":[B
    .end local v11    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;>;"
    .end local v12    # "expected":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;>;"
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    .end local p5    # "profileId":Ljava/lang/String;
    throw v0

    .line 100
    .end local v17    # "match":Z
    .restart local v1    # "match":Z
    .restart local v2    # "verified":I
    .restart local v3    # "payload":J
    .restart local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "rom":[B
    .restart local v11    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;>;"
    .restart local v12    # "expected":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;>;"
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    .restart local p5    # "profileId":Ljava/lang/String;
    :cond_6
    move/from16 v17, v1

    .line 103
    .end local v1    # "match":Z
    .restart local v17    # "match":Z
    :goto_3
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 104
    .local v1, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v0, v13, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;->data:[B

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 105
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 107
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    add-int/lit8 v2, v2, 0x1

    .line 108
    iget-object v0, v13, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    add-long/2addr v3, v0

    .line 109
    if-eqz v8, :cond_7

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, v7, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-interface {v8, v2, v0, v1}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;->onProgress(IILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 89
    .end local v7    # "e":Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;
    .end local v13    # "a":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;
    .end local v14    # "out":Ljava/io/File;
    .end local v15    # "parent":Ljava/io/File;
    .end local v17    # "match":Z
    :cond_7
    :goto_4
    add-int/lit8 v1, v16, 0x1

    .end local v16    # "i":I
    .local v1, "i":I
    goto/16 :goto_1

    .line 103
    .local v1, "stream":Ljava/io/FileOutputStream;
    .restart local v7    # "e":Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;
    .restart local v13    # "a":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;
    .restart local v14    # "out":Ljava/io/File;
    .restart local v15    # "parent":Ljava/io/File;
    .restart local v16    # "i":I
    .restart local v17    # "match":Z
    :catchall_0
    move-exception v0

    move-object/from16 v18, v1

    move-object v1, v0

    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .local v18, "stream":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "verified":I
    .end local v3    # "payload":J
    .end local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "rom":[B
    .end local v11    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;>;"
    .end local v12    # "expected":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;>;"
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    .end local p5    # "profileId":Ljava/lang/String;
    :goto_5
    throw v1

    .line 89
    .end local v7    # "e":Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;
    .end local v13    # "a":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;
    .end local v14    # "out":Ljava/io/File;
    .end local v15    # "parent":Ljava/io/File;
    .end local v16    # "i":I
    .end local v17    # "match":Z
    .end local v18    # "stream":Ljava/io/FileOutputStream;
    .local v1, "i":I
    .restart local v2    # "verified":I
    .restart local v3    # "payload":J
    .restart local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "rom":[B
    .restart local v11    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;>;"
    .restart local v12    # "expected":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;>;"
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    .restart local p5    # "profileId":Ljava/lang/String;
    :cond_8
    move/from16 v16, v1

    .line 111
    .end local v1    # "i":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {v6}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 112
    :cond_9
    new-instance v0, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;-><init>(IIJLjava/util/List;Ljava/io/File;Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider-IA;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    .line 113
    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    :goto_6
    invoke-static/range {p3 .. p3}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 115
    throw v0

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "verified":I
    .end local v3    # "payload":J
    .end local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;>;"
    .end local v12    # "expected":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;>;"
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is too small for original content tables"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    .end local v10    # "rom":[B
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is unexpectedly large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Original-content staging is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM stream is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static extractResultEndingContent(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    .locals 19
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    move-object/from16 v6, p3

    move-object/from16 v8, p4

    if-eqz p0, :cond_c

    .line 154
    if-eqz v6, :cond_b

    .line 155
    const-wide/32 v0, 0x1000000

    cmp-long v0, p1, v0

    if-gtz v0, :cond_a

    .line 156
    invoke-static/range {p0 .. p2}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->readAll(Ljava/io/InputStream;J)[B

    move-result-object v9

    .line 157
    .local v9, "rom":[B
    array-length v0, v9

    const/high16 v1, 0x100000

    if-lt v0, v1, :cond_9

    .line 158
    invoke-static {v9}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->buildMissionResultExactAsset([B)[B

    move-result-object v0

    invoke-static {v9}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->buildEndingTextAsset([B)[B

    move-result-object v1

    filled-new-array {v0, v1}, [[B

    move-result-object v0

    move-object v10, v0

    .line 159
    .local v10, "assets":[[B
    invoke-static {}, Lcom/ahsim/demulation/RomOriginalContentAssetManifest;->stageREntries()Ljava/util/List;

    move-result-object v11

    .line 160
    .local v11, "expected":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;>;"
    invoke-static {v6}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 161
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not create result/ending-content staging"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_1
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v5, "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 165
    .local v0, "verified":I
    const-wide/16 v1, 0x0

    .line 166
    .local v1, "payload":J
    const/4 v3, 0x0

    move-wide/from16 v17, v1

    move v1, v3

    move-wide/from16 v3, v17

    move v2, v0

    .end local v0    # "verified":I
    .local v1, "i":I
    .local v2, "verified":I
    .local v3, "payload":J
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 167
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;

    .line 168
    .local v7, "e":Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;
    aget-object v12, v10, v1

    .line 169
    .local v12, "data":[B
    array-length v0, v12

    iget v13, v7, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->length:I

    if-ne v0, v13, :cond_5

    iget-object v0, v7, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->sha256:Ljava/lang/String;

    invoke-static {v12}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->sha256([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move/from16 v16, v1

    goto :goto_4

    .line 173
    :cond_2
    iget-object v0, v7, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 174
    .local v13, "out":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    .line 175
    .local v14, "parent":Ljava/io/File;
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 176
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v15, "Could not create result/ending-content staging directory"

    invoke-direct {v0, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_4
    :goto_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v15, v0

    .line 178
    .local v15, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v15, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 179
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 181
    .end local v15    # "stream":Ljava/io/FileOutputStream;
    add-int/lit8 v2, v2, 0x1

    array-length v0, v12

    move/from16 v16, v1

    .end local v1    # "i":I
    .local v16, "i":I
    int-to-long v0, v0

    add-long/2addr v3, v0

    .line 182
    if-eqz v8, :cond_6

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, v7, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-interface {v8, v2, v0, v1}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;->onProgress(IILjava/lang/String;)V

    goto :goto_5

    .line 177
    .end local v16    # "i":I
    .restart local v1    # "i":I
    .restart local v15    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v0

    move/from16 v16, v1

    move-object v1, v0

    .end local v1    # "i":I
    .restart local v16    # "i":I
    :try_start_1
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1

    .line 169
    .end local v13    # "out":Ljava/io/File;
    .end local v14    # "parent":Ljava/io/File;
    .end local v15    # "stream":Ljava/io/FileOutputStream;
    .end local v16    # "i":I
    .restart local v1    # "i":I
    :cond_5
    move/from16 v16, v1

    .line 170
    .end local v1    # "i":I
    .restart local v16    # "i":I
    :goto_4
    iget-object v0, v7, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    nop

    .line 166
    .end local v7    # "e":Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;
    .end local v12    # "data":[B
    :cond_6
    :goto_5
    add-int/lit8 v1, v16, 0x1

    .end local v16    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_1

    :cond_7
    move/from16 v16, v1

    .line 184
    .end local v1    # "i":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v6}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 185
    :cond_8
    new-instance v0, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;-><init>(IIJLjava/util/List;Ljava/io/File;Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider-IA;)V

    return-object v0

    .line 157
    .end local v2    # "verified":I
    .end local v3    # "payload":J
    .end local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "assets":[[B
    .end local v11    # "expected":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;>;"
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is too small for result/ending content"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    .end local v9    # "rom":[B
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is unexpectedly large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Original-content staging is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM stream is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static extractTutorialContent(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
    .locals 14
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    move-object/from16 v6, p3

    move-object/from16 v8, p4

    if-eqz p0, :cond_a

    .line 123
    if-eqz v6, :cond_9

    .line 124
    const-wide/32 v0, 0x1000000

    cmp-long v0, p1, v0

    if-gtz v0, :cond_8

    .line 125
    invoke-static/range {p0 .. p2}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->readAll(Ljava/io/InputStream;J)[B

    move-result-object v9

    .line 126
    .local v9, "rom":[B
    array-length v0, v9

    const/high16 v1, 0x100000

    if-lt v0, v1, :cond_7

    .line 127
    invoke-static {v9}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->buildTutorialExactAsset([B)[B

    move-result-object v10

    .line 128
    .local v10, "tutorial":[B
    invoke-static {}, Lcom/ahsim/demulation/RomOriginalContentAssetManifest;->stageQEntries()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;

    .line 129
    .local v11, "expected":Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;
    invoke-static {v6}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 130
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not create tutorial-content staging"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v5, "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v0, v10

    iget v1, v11, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->length:I

    if-ne v0, v1, :cond_6

    iget-object v0, v11, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->sha256:Ljava/lang/String;

    invoke-static {v10}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->sha256([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    .line 138
    :cond_2
    iget-object v0, v11, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 139
    .local v12, "out":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    .line 140
    .local v13, "parent":Ljava/io/File;
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 141
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not create tutorial-content staging directory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_4
    :goto_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v0

    .line 143
    .local v1, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v1, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 144
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 146
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    if-eqz v8, :cond_5

    iget-object v0, v11, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->relativePath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {v8, v1, v1, v0}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$ProgressListener;->onProgress(IILjava/lang/String;)V

    .line 147
    :cond_5
    new-instance v0, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;

    array-length v1, v10

    int-to-long v3, v1

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;-><init>(IIJLjava/util/List;Ljava/io/File;Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider-IA;)V

    return-object v0

    .line 142
    .restart local v1    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2

    .line 134
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .end local v12    # "out":Ljava/io/File;
    .end local v13    # "parent":Ljava/io/File;
    :cond_6
    :goto_3
    iget-object v0, v11, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-static/range {p3 .. p3}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 136
    new-instance v0, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;-><init>(IIJLjava/util/List;Ljava/io/File;Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider-IA;)V

    return-object v0

    .line 126
    .end local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "tutorial":[B
    .end local v11    # "expected":Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is too small for tutorial content"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    .end local v9    # "rom":[B
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is unexpectedly large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Original-content staging is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM stream is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static find(Ljava/util/List;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;"
        }
    .end annotation

    .line 386
    .local p0, "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;

    .local v1, "a":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;
    iget-object v2, v1, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;->path:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .end local v1    # "a":Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$LogicalAsset;
    :cond_0
    goto :goto_0

    .line 387
    :cond_1
    const/4 v0, 0x0

    return-object v0
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

    .line 457
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

    .line 458
    .local v0, "initial":I
    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 459
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 460
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 462
    .local v3, "total":I
    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 463
    .local v4, "n":I
    if-gez v4, :cond_1

    .line 469
    .end local v4    # "n":I
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 464
    .restart local v4    # "n":I
    :cond_1
    if-nez v4, :cond_2

    goto :goto_1

    .line 465
    :cond_2
    add-int/2addr v3, v4

    .line 466
    const/high16 v5, 0x1000000

    if-gt v3, v5, :cond_3

    .line 467
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 468
    .end local v4    # "n":I
    goto :goto_1

    .line 466
    .restart local v4    # "n":I
    :cond_3
    new-instance v5, Ljava/io/IOException;

    const-string v6, "ROM is unexpectedly large"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static readCStringBytes([BII)[B
    .locals 6
    .param p0, "rom"    # [B
    .param p1, "offset"    # I
    .param p2, "guard"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    if-ltz p1, :cond_4

    array-length v0, p0

    if-ge p1, v0, :cond_4

    .line 392
    move v0, p1

    .line 393
    .local v0, "end":I
    array-length v1, p0

    add-int v2, p1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 394
    .local v1, "limit":I
    invoke-static {p0}, Lcom/ahsim/demulation/GermanRomAddressMap;->isExactGerman([B)Z

    move-result v2

    .line 395
    .local v2, "german":Z
    :goto_0
    if-ge v0, v1, :cond_2

    aget-byte v3, p0, v0

    if-eqz v3, :cond_2

    .line 396
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    .line 397
    .local v3, "c":I
    const/16 v4, 0x20

    if-lt v3, v4, :cond_1

    if-nez v2, :cond_0

    const/16 v4, 0x7e

    if-gt v3, v4, :cond_1

    .line 399
    :cond_0
    nop

    .end local v3    # "c":I
    add-int/lit8 v0, v0, 0x1

    .line 400
    goto :goto_0

    .line 398
    .restart local v3    # "c":I
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Original-content text contains unsupported byte"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 401
    .end local v3    # "c":I
    :cond_2
    if-ge v0, v1, :cond_3

    array-length v3, p0

    if-ge v0, v3, :cond_3

    .line 402
    sub-int v3, v0, p1

    add-int/lit8 v3, v3, 0x1

    invoke-static {p0, p1, v3}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->copy([BII)[B

    move-result-object v3

    return-object v3

    .line 401
    :cond_3
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Original-content string is unterminated"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 391
    .end local v0    # "end":I
    .end local v1    # "limit":I
    .end local v2    # "german":Z
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Original-content string pointer outside ROM"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readExactly(Ljava/io/File;I)[B
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "expectedLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 473
    .local v0, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 474
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x2000

    :try_start_1
    new-array v2, v2, [B

    .line 475
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 477
    .local v3, "total":I
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 478
    .local v4, "n":I
    if-gez v4, :cond_1

    .line 484
    .end local v4    # "n":I
    if-ne v3, p1, :cond_0

    .line 485
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 485
    return-object v4

    .line 484
    :cond_0
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Content file changed while reading"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "input":Ljava/io/InputStream;
    .end local v1    # "output":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "expectedLength":I
    throw v4

    .line 479
    .restart local v0    # "input":Ljava/io/InputStream;
    .restart local v1    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "n":I
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "expectedLength":I
    :cond_1
    if-nez v4, :cond_2

    goto :goto_0

    .line 480
    :cond_2
    add-int/2addr v3, v4

    .line 481
    if-gt v3, p1, :cond_3

    .line 482
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 483
    .end local v4    # "n":I
    goto :goto_0

    .line 481
    .restart local v4    # "n":I
    :cond_3
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Content file grew while reading"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "input":Ljava/io/InputStream;
    .end local v1    # "output":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "expectedLength":I
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 472
    .end local v2    # "buffer":[B
    .end local v3    # "total":I
    .end local v4    # "n":I
    .restart local v0    # "input":Ljava/io/InputStream;
    .restart local v1    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "expectedLength":I
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "input":Ljava/io/InputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "expectedLength":I
    :goto_1
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v1    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "input":Ljava/io/InputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "expectedLength":I
    :catchall_2
    move-exception v1

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
.end method

.method private static readTutorialCStringBytes([BII)[B
    .locals 6
    .param p0, "rom"    # [B
    .param p1, "offset"    # I
    .param p2, "guard"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    if-ltz p1, :cond_4

    array-length v0, p0

    if-ge p1, v0, :cond_4

    .line 407
    move v0, p1

    .line 408
    .local v0, "end":I
    array-length v1, p0

    add-int v2, p1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 409
    .local v1, "limit":I
    invoke-static {p0}, Lcom/ahsim/demulation/GermanRomAddressMap;->isExactGerman([B)Z

    move-result v2

    .line 410
    .local v2, "german":Z
    :goto_0
    if-ge v0, v1, :cond_2

    aget-byte v3, p0, v0

    if-eqz v3, :cond_2

    .line 411
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    .line 412
    .local v3, "c":I
    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    const/16 v4, 0x20

    if-lt v3, v4, :cond_0

    if-nez v2, :cond_1

    const/16 v4, 0x7e

    if-gt v3, v4, :cond_0

    goto :goto_1

    .line 413
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Tutorial content text contains unsupported byte"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 415
    :cond_1
    :goto_1
    nop

    .end local v3    # "c":I
    add-int/lit8 v0, v0, 0x1

    .line 416
    goto :goto_0

    .line 417
    :cond_2
    if-ge v0, v1, :cond_3

    array-length v3, p0

    if-ge v0, v3, :cond_3

    .line 418
    sub-int v3, v0, p1

    add-int/lit8 v3, v3, 0x1

    invoke-static {p0, p1, v3}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;->copy([BII)[B

    move-result-object v3

    return-object v3

    .line 417
    :cond_3
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Tutorial content string is unterminated"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 406
    .end local v0    # "end":I
    .end local v1    # "limit":I
    .end local v2    # "german":Z
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Tutorial content string outside ROM"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 499
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 500
    .local v0, "child":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "rp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 502
    .local v2, "cp":Ljava/lang/String;
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

    .line 503
    return-object v0

    .line 502
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unsafe original-content asset path"

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

    .line 515
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 516
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 517
    .local v1, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 518
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

    .line 519
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 520
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "hash":[B
    .end local v2    # "out":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 is unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static tutorialArgumentBytes(I)I
    .locals 1
    .param p0, "op"    # I

    .line 422
    sparse-switch p0, :sswitch_data_0

    .line 430
    const/4 v0, -0x1

    return v0

    .line 426
    :sswitch_0
    const/4 v0, 0x6

    return v0

    .line 425
    :sswitch_1
    const/4 v0, 0x4

    return v0

    .line 429
    :sswitch_2
    const/4 v0, 0x0

    return v0

    .line 424
    :sswitch_3
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x4 -> :sswitch_3
        0x6 -> :sswitch_3
        0x8 -> :sswitch_2
        0xa -> :sswitch_3
        0xc -> :sswitch_1
        0xe -> :sswitch_2
        0x10 -> :sswitch_1
        0x12 -> :sswitch_3
        0x14 -> :sswitch_2
        0x16 -> :sswitch_1
        0x18 -> :sswitch_3
        0x1a -> :sswitch_2
        0x1c -> :sswitch_2
        0x1e -> :sswitch_2
        0x20 -> :sswitch_2
        0x22 -> :sswitch_0
        0x24 -> :sswitch_2
        0x26 -> :sswitch_1
        0x28 -> :sswitch_2
        0x2a -> :sswitch_2
        0x2c -> :sswitch_1
        0x2e -> :sswitch_2
        0x32 -> :sswitch_2
        0x34 -> :sswitch_2
    .end sparse-switch
.end method

.method private static u24(I)I
    .locals 1
    .param p0, "value"    # I

    .line 444
    const v0, 0xffffff

    and-int/2addr v0, p0

    return v0
.end method
