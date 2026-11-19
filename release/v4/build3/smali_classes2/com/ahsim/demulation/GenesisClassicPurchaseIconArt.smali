.class public final Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;
.super Ljava/lang/Object;
.source "GenesisClassicPurchaseIconArt.java"


# static fields
.field private static final ACTION_COUNT:I = 0x6

.field public static final ACTION_EXIT:I = 0x1

.field public static final ACTION_FIX:I = 0x2

.field public static final ACTION_FIX_DISABLED:I = 0x4

.field public static final ACTION_STOP:I = 0x3

.field public static final ACTION_STOP_DISABLED:I = 0x5

.field public static final ACTION_UPGRADE:I = 0x0

.field private static final DEATH_HAND_CLASSIC_PALETTE_LINE:I = 0x0

.field private static final DEATH_HAND_TYPE:I = 0x12

.field private static final DETAIL_HEIGHT:I = 0x38

.field private static final DETAIL_PACKED_BYTES:I = 0xa80

.field private static final DETAIL_RECORD_BYTES:I = 0xaa4

.field private static final DETAIL_WIDTH:I = 0x60

.field private static final HEIGHT:I = 0x18

.field private static final ICON_BYTES:I = 0x180

.field private static final RECORD_BYTES:I = 0x184

.field private static final SANDWORM_CLASSIC_PALETTE_LINE:I = 0x1

.field private static final SANDWORM_TYPE:I = 0x19

.field private static final SONIC_CLASSIC_PALETTE_LINE:I = 0x1

.field private static final SONIC_TANK_TYPE:I = 0xc

.field private static final STRUCTURE_COUNT:I = 0x13

.field private static final UNIT_COUNT:I = 0x1b

.field private static final V1_HEADER_BYTES:I = 0x10

.field private static final V1_LENGTH:I = 0x45c8

.field private static final V2_HEADER_BYTES:I = 0x18

.field private static final V2_HOUSE_FLAGS_BYTES:I = 0x10

.field private static final V2_LENGTH:I = 0x9530

.field private static final V2_PALETTE_BYTES:I = 0x80

.field private static final V3_HEADER_BYTES:I = 0x20

.field private static final V3_LENGTH:I = 0x27eb0

.field private static final V4_LENGTH:I = 0x281b8

.field private static final WIDTH:I = 0x20


# instance fields
.field private final actionIcons:[Landroid/graphics/Bitmap;

.field private final fremenClassicIcons:[Landroid/graphics/Bitmap;

.field private final housePaletteFlags:[I

.field private final palette:[I

.field private final structureDetailPreviews:[Landroid/graphics/Bitmap;

.field private final structureInfoCache:[[Landroid/graphics/Bitmap;

.field private final structureInfoPayload:[[B

.field private final structurePurchaseIcons:[Landroid/graphics/Bitmap;

.field private final unitDetailPreviews:[Landroid/graphics/Bitmap;

.field private final unitInfoCache:[[Landroid/graphics/Bitmap;

.field private final unitInfoPayload:[[B

.field private final unitPurchaseIcons:[Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/ahsim/demulation/RomRuntimeWorldAssets;)V
    .locals 8
    .param p1, "assets"    # Lcom/ahsim/demulation/RomRuntimeWorldAssets;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/16 v0, 0x13

    new-array v1, v0, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->structurePurchaseIcons:[Landroid/graphics/Bitmap;

    .line 65
    const/16 v1, 0x1b

    new-array v2, v1, [Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->unitPurchaseIcons:[Landroid/graphics/Bitmap;

    .line 66
    new-array v2, v0, [[B

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->structureInfoPayload:[[B

    .line 67
    new-array v2, v1, [[B

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->unitInfoPayload:[[B

    .line 68
    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    const/16 v5, 0x8

    aput v5, v3, v4

    const/4 v6, 0x0

    aput v0, v3, v6

    const-class v7, Landroid/graphics/Bitmap;

    invoke-static {v7, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->structureInfoCache:[[Landroid/graphics/Bitmap;

    .line 69
    new-array v3, v2, [I

    aput v5, v3, v4

    aput v1, v3, v6

    const-class v4, Landroid/graphics/Bitmap;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->unitInfoCache:[[Landroid/graphics/Bitmap;

    .line 70
    const/4 v3, 0x6

    new-array v3, v3, [Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->actionIcons:[Landroid/graphics/Bitmap;

    .line 71
    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->structureDetailPreviews:[Landroid/graphics/Bitmap;

    .line 72
    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->unitDetailPreviews:[Landroid/graphics/Bitmap;

    .line 74
    new-array v0, v2, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->fremenClassicIcons:[Landroid/graphics/Bitmap;

    .line 75
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->palette:[I

    .line 76
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->housePaletteFlags:[I

    .line 79
    if-eqz p1, :cond_0

    .line 80
    const-string v0, "tactical/classic_purchase_icons.bin"

    invoke-virtual {p1, v0}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    .line 81
    .local v0, "data":[B
    invoke-direct {p0, v0, p1}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->parse([BLcom/ahsim/demulation/RomRuntimeWorldAssets;)V

    .line 82
    return-void

    .line 79
    .end local v0    # "data":[B
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "World media missing for classic icons"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 357
    if-ltz p1, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    if-gt p1, v0, :cond_0

    .line 358
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 357
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Classic icon data truncated"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkRecord([BIII)V
    .locals 5
    .param p1, "data"    # [B
    .param p2, "p"    # I
    .param p3, "expectedKey"    # I
    .param p4, "expectedPaletteMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    if-ltz p2, :cond_2

    array-length v0, p1

    add-int/lit16 v0, v0, -0x184

    if-gt p2, v0, :cond_2

    .line 309
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    .line 310
    .local v0, "present":I
    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 311
    .local v1, "paletteMode":I
    add-int/lit8 v2, p2, 0x2

    invoke-static {p1, v2}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v2

    .line 312
    .local v2, "key":I
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    :cond_0
    if-ne v1, p4, :cond_1

    if-ne v2, p3, :cond_1

    .line 315
    return-void

    .line 313
    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Classic icon record identity mismatch"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 308
    .end local v0    # "present":I
    .end local v1    # "paletteMode":I
    .end local v2    # "key":I
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Classic icon record truncated"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decodeDetailPreview([BI)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    if-ltz p2, :cond_3

    array-length v0, p1

    add-int/lit8 v0, v0, -0x20

    add-int/lit16 v0, v0, -0xa80

    if-gt p2, v0, :cond_3

    .line 262
    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 263
    .local v1, "localPalette":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, p2

    invoke-static {p1, v3}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v3

    invoke-static {v3}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->genesisColor(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    .end local v2    # "i":I
    :cond_0
    add-int/lit8 v0, p2, 0x20

    .line 265
    .local v0, "pixelsOffset":I
    const/16 v2, 0x1500

    new-array v2, v2, [I

    .line 266
    .local v2, "pixels":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 267
    ushr-int/lit8 v4, v3, 0x1

    add-int/2addr v4, v0

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    .line 268
    .local v4, "packed":I
    and-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_1

    ushr-int/lit8 v5, v4, 0x4

    goto :goto_2

    :cond_1
    and-int/lit8 v5, v4, 0xf

    .line 269
    .local v5, "colour":I
    :goto_2
    aget v6, v1, v5

    aput v6, v2, v3

    .line 266
    .end local v4    # "packed":I
    .end local v5    # "colour":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 271
    .end local v3    # "i":I
    :cond_2
    const/16 v3, 0x38

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v5, 0x60

    invoke-static {v2, v5, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 261
    .end local v0    # "pixelsOffset":I
    .end local v1    # "localPalette":[I
    .end local v2    # "pixels":[I
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Classic detail preview truncated"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decodeDetailRecord([BII[Landroid/graphics/Bitmap;)I
    .locals 5
    .param p1, "data"    # [B
    .param p2, "p"    # I
    .param p3, "expectedKey"    # I
    .param p4, "destination"    # [Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    if-ltz p2, :cond_3

    array-length v0, p1

    add-int/lit16 v0, v0, -0xaa4

    if-gt p2, v0, :cond_3

    .line 249
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    .line 250
    .local v0, "present":I
    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 251
    .local v1, "paletteMode":I
    add-int/lit8 v2, p2, 0x2

    invoke-static {p1, v2}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v2

    .line 252
    .local v2, "key":I
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    :cond_0
    const/16 v3, 0x40

    if-ne v1, v3, :cond_2

    if-ne v2, p3, :cond_2

    .line 255
    if-eqz v0, :cond_1

    add-int/lit8 v3, p2, 0x4

    invoke-direct {p0, p1, v3}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->decodeDetailPreview([BI)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, p4, p3

    .line 256
    :cond_1
    add-int/lit16 v3, p2, 0xaa4

    return v3

    .line 253
    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Classic detail record identity mismatch"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 248
    .end local v0    # "present":I
    .end local v1    # "paletteMode":I
    .end local v2    # "key":I
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Classic detail record truncated"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decodeFixedRecord([BIII[Landroid/graphics/Bitmap;)I
    .locals 3
    .param p1, "data"    # [B
    .param p2, "p"    # I
    .param p3, "expectedKey"    # I
    .param p4, "expectedPaletteLine"    # I
    .param p5, "destination"    # [Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->checkRecord([BIII)V

    .line 277
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    .line 278
    .local v0, "present":I
    if-eqz v0, :cond_3

    .line 283
    move v1, p4

    .line 284
    .local v1, "line":I
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->unitPurchaseIcons:[Landroid/graphics/Bitmap;

    if-ne p5, v2, :cond_2

    .line 285
    const/16 v2, 0x19

    if-ne p3, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 286
    :cond_0
    const/16 v2, 0xc

    if-ne p3, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 287
    :cond_1
    const/16 v2, 0x12

    if-ne p3, v2, :cond_2

    const/4 v1, 0x0

    .line 289
    :cond_2
    :goto_0
    add-int/lit8 v2, p2, 0x4

    invoke-direct {p0, p1, v2, v1}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->decodeIcon([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, p5, p3

    .line 291
    .end local v1    # "line":I
    :cond_3
    add-int/lit16 v1, p2, 0x184

    return v1
.end method

.method private decodeIcon([BII)Landroid/graphics/Bitmap;
    .locals 20
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "paletteLine"    # I

    .line 318
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    if-ltz v2, :cond_7

    const/4 v3, 0x3

    if-gt v2, v3, :cond_7

    if-ltz v1, :cond_7

    array-length v4, v0

    add-int/lit16 v4, v4, -0x180

    if-le v1, v4, :cond_0

    move-object/from16 v3, p0

    goto/16 :goto_6

    .line 319
    :cond_0
    const/16 v4, 0x300

    new-array v4, v4, [I

    .line 320
    .local v4, "pixels":[I
    const/4 v5, 0x0

    .local v5, "column":I
    :goto_0
    const/4 v6, 0x4

    if-ge v5, v6, :cond_6

    .line 321
    const/4 v6, 0x0

    .local v6, "row":I
    :goto_1
    if-ge v6, v3, :cond_5

    .line 322
    mul-int/lit8 v7, v5, 0x3

    add-int/2addr v7, v6

    .line 323
    .local v7, "pattern":I
    mul-int/lit8 v8, v7, 0x20

    add-int/2addr v8, v1

    .line 324
    .local v8, "patternOffset":I
    const/4 v9, 0x0

    .local v9, "py":I
    :goto_2
    const/16 v10, 0x8

    if-ge v9, v10, :cond_4

    .line 325
    mul-int/lit8 v11, v9, 0x4

    add-int/2addr v11, v8

    .line 326
    .local v11, "line":I
    const/4 v12, 0x0

    .local v12, "px":I
    :goto_3
    if-ge v12, v10, :cond_3

    .line 327
    ushr-int/lit8 v13, v12, 0x1

    add-int/2addr v13, v11

    aget-byte v13, v0, v13

    and-int/lit16 v13, v13, 0xff

    .line 328
    .local v13, "packed":I
    and-int/lit8 v14, v12, 0x1

    if-nez v14, :cond_1

    ushr-int/lit8 v14, v13, 0x4

    goto :goto_4

    :cond_1
    and-int/lit8 v14, v13, 0xf

    .line 329
    .local v14, "colorIndex":I
    :goto_4
    mul-int/lit8 v15, v5, 0x8

    add-int/2addr v15, v12

    .line 330
    .local v15, "x":I
    mul-int/lit8 v16, v6, 0x8

    add-int v16, v16, v9

    .line 331
    .local v16, "y":I
    mul-int/lit8 v17, v16, 0x20

    add-int v17, v17, v15

    if-nez v14, :cond_2

    .line 332
    const/16 v18, 0x0

    move-object/from16 v3, p0

    move/from16 v10, v18

    goto :goto_5

    :cond_2
    move-object/from16 v3, p0

    iget-object v10, v3, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->palette:[I

    mul-int/lit8 v19, v2, 0x10

    add-int v19, v19, v14

    aget v10, v10, v19

    :goto_5
    aput v10, v4, v17

    .line 326
    .end local v13    # "packed":I
    .end local v14    # "colorIndex":I
    .end local v15    # "x":I
    .end local v16    # "y":I
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x3

    const/16 v10, 0x8

    goto :goto_3

    :cond_3
    move-object/from16 v3, p0

    .line 324
    .end local v11    # "line":I
    .end local v12    # "px":I
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x3

    goto :goto_2

    :cond_4
    move-object/from16 v3, p0

    .line 321
    .end local v7    # "pattern":I
    .end local v8    # "patternOffset":I
    .end local v9    # "py":I
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x3

    goto :goto_1

    :cond_5
    move-object/from16 v3, p0

    .line 320
    .end local v6    # "row":I
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x3

    goto :goto_0

    :cond_6
    move-object/from16 v3, p0

    .line 337
    .end local v5    # "column":I
    const/16 v5, 0x18

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v7, 0x20

    invoke-static {v4, v7, v5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5

    .line 318
    .end local v4    # "pixels":[I
    :cond_7
    move-object/from16 v3, p0

    :goto_6
    const/4 v4, 0x0

    return-object v4
.end method

.method private decodeInfoRecord([BII[[B)I
    .locals 5
    .param p1, "data"    # [B
    .param p2, "p"    # I
    .param p3, "expectedKey"    # I
    .param p4, "destination"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    const/16 v0, 0x80

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->checkRecord([BIII)V

    .line 297
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    .line 298
    .local v0, "present":I
    if-eqz v0, :cond_0

    .line 299
    const/16 v1, 0x180

    new-array v1, v1, [B

    .line 300
    .local v1, "payload":[B
    add-int/lit8 v2, p2, 0x4

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {p1, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    aput-object v1, p4, p3

    .line 303
    .end local v1    # "payload":[B
    :cond_0
    add-int/lit16 v1, p2, 0x184

    return v1
.end method

.method private decodePalette([B)V
    .locals 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    if-eqz p1, :cond_1

    array-length v0, p1

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    .line 342
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 343
    mul-int/lit8 v1, v0, 0x2

    invoke-static {p1, v1}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v1

    .line 344
    .local v1, "word":I
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->palette:[I

    invoke-static {v1}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->genesisColor(I)I

    move-result v3

    aput v3, v2, v0

    .line 342
    .end local v1    # "word":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 341
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Installed classic palette has wrong size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static genesisColor(I)I
    .locals 8
    .param p0, "word"    # I

    .line 349
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v0, v0, 0x7

    .line 350
    .local v0, "r3":I
    ushr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x7

    .line 351
    .local v1, "g3":I
    ushr-int/lit8 v2, p0, 0x9

    and-int/lit8 v2, v2, 0x7

    .line 352
    .local v2, "b3":I
    int-to-float v3, v0

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    const/high16 v5, 0x40e00000    # 7.0f

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v6, v1

    mul-float/2addr v6, v4

    div-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v7, v2

    mul-float/2addr v7, v4

    div-float/2addr v7, v5

    .line 353
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 352
    invoke-static {v3, v6, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    return v3
.end method

.method private getInfoIcon(II[[B[[Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "type"    # I
    .param p2, "house"    # I
    .param p3, "payloads"    # [[B
    .param p4, "cache"    # [[Landroid/graphics/Bitmap;

    .line 126
    if-ltz p1, :cond_6

    array-length v0, p3

    if-ge p1, v0, :cond_6

    aget-object v0, p3, p1

    if-nez v0, :cond_0

    goto :goto_3

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->unitInfoPayload:[[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_1

    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 132
    .local v0, "worm":Z
    :goto_0
    if-eqz v0, :cond_3

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    if-ltz p2, :cond_2

    const/16 v3, 0x8

    if-ge p2, v3, :cond_2

    move v3, p2

    .line 133
    .local v3, "h":I
    :goto_1
    aget-object v4, p4, p1

    aget-object v4, v4, v3

    .line 134
    .local v4, "icon":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_4

    return-object v4

    .line 135
    :cond_4
    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->housePaletteFlags:[I

    aget v1, v1, v3

    ushr-int/lit8 v1, v1, 0xd

    and-int/lit8 v1, v1, 0x3

    .line 136
    .local v1, "line":I
    :goto_2
    aget-object v5, p3, p1

    invoke-direct {p0, v5, v2, v1}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->decodeIcon([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 137
    .end local v4    # "icon":Landroid/graphics/Bitmap;
    .local v2, "icon":Landroid/graphics/Bitmap;
    aget-object v4, p4, p1

    aput-object v2, v4, v3

    .line 138
    return-object v2

    .line 126
    .end local v0    # "worm":Z
    .end local v1    # "line":I
    .end local v2    # "icon":Landroid/graphics/Bitmap;
    .end local v3    # "h":I
    :cond_6
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private parse([BLcom/ahsim/demulation/RomRuntimeWorldAssets;)V
    .locals 5
    .param p1, "data"    # [B
    .param p2, "assets"    # Lcom/ahsim/demulation/RomRuntimeWorldAssets;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    if-eqz p1, :cond_4

    array-length v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    aget-byte v2, p1, v0

    const/16 v3, 0x50

    if-ne v2, v3, :cond_4

    const/4 v2, 0x2

    aget-byte v3, p1, v2

    const/16 v4, 0x49

    if-ne v3, v4, :cond_4

    const/4 v3, 0x3

    aget-byte v4, p1, v3

    if-ne v4, v1, :cond_4

    .line 146
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v4

    .line 147
    .local v4, "version":I
    if-ne v4, v0, :cond_0

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->parseV1([BLcom/ahsim/demulation/RomRuntimeWorldAssets;)V

    goto :goto_1

    .line 149
    :cond_0
    if-ne v4, v2, :cond_1

    .line 150
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->parseV2([B)V

    goto :goto_1

    .line 151
    :cond_1
    if-eq v4, v3, :cond_3

    if-ne v4, v1, :cond_2

    goto :goto_0

    .line 154
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported classic icon pack version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_3
    :goto_0
    invoke-direct {p0, p1, v4}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->parseV3OrV4([BI)V

    .line 156
    :goto_1
    return-void

    .line 144
    .end local v4    # "version":I
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Installed classic icon pack header mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseV1([BLcom/ahsim/demulation/RomRuntimeWorldAssets;)V
    .locals 9
    .param p1, "data"    # [B
    .param p2, "assets"    # Lcom/ahsim/demulation/RomRuntimeWorldAssets;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    array-length v2, p1

    const/16 v3, 0x45c8

    if-ne v2, v3, :cond_3

    const/4 v2, 0x6

    invoke-static {p1, v2}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_3

    const/16 v2, 0x8

    invoke-static {p1, v2}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v3

    const/16 v4, 0x18

    if-ne v3, v4, :cond_3

    .line 160
    const/16 v3, 0xa

    invoke-static {p1, v3}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v3

    const/16 v4, 0x180

    if-ne v3, v4, :cond_3

    const/16 v3, 0xc

    invoke-static {p1, v3}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v3

    const/16 v6, 0x13

    if-ne v3, v6, :cond_3

    .line 161
    const/16 v3, 0xe

    invoke-static {p1, v3}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v3

    const/16 v7, 0x1b

    if-ne v3, v7, :cond_3

    .line 164
    const-string v3, "terrain/palette.bin"

    invoke-virtual {p2, v3}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->read(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->decodePalette([B)V

    .line 165
    new-array v2, v2, [I

    fill-array-data v2, :array_0

    move-object v8, v2

    .line 166
    .local v8, "historical":[I
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->housePaletteFlags:[I

    array-length v3, v8

    const/4 v4, 0x0

    invoke-static {v8, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    const/16 v2, 0x10

    .line 168
    .local v2, "p":I
    const/4 v3, 0x0

    .local v3, "type":I
    :goto_0
    if-ge v3, v6, :cond_0

    .line 169
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->structurePurchaseIcons:[Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->decodeFixedRecord([BIII[Landroid/graphics/Bitmap;)I

    move-result v2

    .line 168
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    .end local v3    # "type":I
    :cond_0
    const/4 v1, 0x0

    move v3, v1

    .restart local v3    # "type":I
    :goto_1
    if-ge v3, v7, :cond_1

    .line 172
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->unitPurchaseIcons:[Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->decodeFixedRecord([BIII[Landroid/graphics/Bitmap;)I

    move-result v2

    .line 171
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 174
    .end local v3    # "type":I
    :cond_1
    array-length v0, p1

    if-ne v2, v0, :cond_2

    .line 175
    return-void

    .line 174
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Installed classic icon pack v1 trailing data"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    .end local v2    # "p":I
    .end local v8    # "historical":[I
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Installed classic icon pack v1 shape mismatch"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        0x0
        0x2000
        0x6000
        0x2000
        0x4000
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private parseV2([B)V
    .locals 12
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    array-length v2, p1

    const v3, 0x9530

    if-ne v2, v3, :cond_7

    const/4 v6, 0x6

    invoke-static {p1, v6}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_7

    const/16 v2, 0x8

    invoke-static {p1, v2}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_7

    .line 179
    const/16 v2, 0xa

    invoke-static {p1, v2}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v2

    const/16 v3, 0x180

    if-ne v2, v3, :cond_7

    const/16 v2, 0xc

    invoke-static {p1, v2}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v2

    const/16 v7, 0x13

    if-ne v2, v7, :cond_7

    .line 180
    const/16 v2, 0xe

    invoke-static {p1, v2}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v2

    const/16 v8, 0x1b

    if-ne v2, v8, :cond_7

    const/16 v2, 0x10

    invoke-static {p1, v2}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v3

    if-ne v3, v6, :cond_7

    .line 181
    const/16 v3, 0x12

    invoke-static {p1, v3}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v3

    if-ne v3, v7, :cond_7

    const/16 v3, 0x14

    invoke-static {p1, v3}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v3

    if-ne v3, v8, :cond_7

    .line 182
    const/16 v3, 0x16

    invoke-static {p1, v3}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v3

    if-nez v3, :cond_7

    .line 185
    const/16 v3, 0x18

    .line 186
    .local v3, "p":I
    const/16 v4, 0x80

    new-array v9, v4, [B

    .line 187
    .local v9, "paletteBytes":[B
    const/4 v4, 0x0

    array-length v5, v9

    invoke-static {p1, v3, v9, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    invoke-direct {p0, v9}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->decodePalette([B)V

    .line 189
    array-length v4, v9

    add-int/2addr v3, v4

    .line 190
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->housePaletteFlags:[I

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 191
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->housePaletteFlags:[I

    mul-int/lit8 v10, v4, 0x2

    add-int/2addr v10, v3

    invoke-static {p1, v10}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v10

    aput v10, v5, v4

    .line 190
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 193
    .end local v4    # "i":I
    :cond_0
    add-int/2addr v3, v2

    .line 195
    const/4 v2, 0x0

    move v11, v3

    move v3, v2

    move v2, v11

    .local v2, "p":I
    .local v3, "type":I
    :goto_1
    if-ge v3, v7, :cond_1

    .line 196
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->structurePurchaseIcons:[Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->decodeFixedRecord([BIII[Landroid/graphics/Bitmap;)I

    move-result v2

    .line 195
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 198
    .end local v3    # "type":I
    :cond_1
    const/4 v1, 0x0

    move v3, v1

    .restart local v3    # "type":I
    :goto_2
    if-ge v3, v8, :cond_2

    .line 199
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->unitPurchaseIcons:[Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->decodeFixedRecord([BIII[Landroid/graphics/Bitmap;)I

    move-result v2

    .line 198
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 201
    .end local v3    # "type":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "type":I
    :goto_3
    if-ge v3, v7, :cond_3

    .line 202
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->structureInfoPayload:[[B

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->decodeInfoRecord([BII[[B)I

    move-result v2

    .line 201
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 204
    .end local v3    # "type":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "type":I
    :goto_4
    if-ge v3, v8, :cond_4

    .line 205
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->unitInfoPayload:[[B

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->decodeInfoRecord([BII[[B)I

    move-result v2

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 207
    .end local v3    # "type":I
    :cond_4
    const/4 v3, 0x0

    .local v3, "action":I
    :goto_5
    if-ge v3, v6, :cond_5

    .line 208
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->actionIcons:[Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->decodeFixedRecord([BIII[Landroid/graphics/Bitmap;)I

    move-result v2

    .line 207
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 210
    .end local v3    # "action":I
    :cond_5
    array-length v0, p1

    if-ne v2, v0, :cond_6

    .line 211
    return-void

    .line 210
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Installed classic icon pack v2 trailing data"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    .end local v2    # "p":I
    .end local v9    # "paletteBytes":[B
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Installed classic icon pack v2 shape mismatch"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseV3OrV4([BI)V
    .locals 14
    .param p1, "data"    # [B
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    move/from16 v6, p2

    array-length v2, p1

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    const v3, 0x281b8

    goto :goto_0

    :cond_0
    const v3, 0x27eb0

    :goto_0
    if-ne v2, v3, :cond_b

    const/4 v8, 0x6

    invoke-static {p1, v8}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_b

    const/16 v2, 0x8

    invoke-static {p1, v2}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_b

    .line 215
    const/16 v2, 0xa

    invoke-static {p1, v2}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v2

    const/16 v4, 0x180

    if-ne v2, v4, :cond_b

    const/16 v2, 0xc

    invoke-static {p1, v2}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v2

    const/16 v9, 0x13

    if-ne v2, v9, :cond_b

    .line 216
    const/16 v2, 0xe

    invoke-static {p1, v2}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v2

    const/16 v10, 0x1b

    if-ne v2, v10, :cond_b

    const/16 v2, 0x10

    invoke-static {p1, v2}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v4

    if-ne v4, v8, :cond_b

    .line 217
    const/16 v4, 0x12

    invoke-static {p1, v4}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v4

    if-ne v4, v9, :cond_b

    const/16 v4, 0x14

    invoke-static {p1, v4}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v4

    if-ne v4, v10, :cond_b

    .line 218
    const/16 v4, 0x16

    invoke-static {p1, v4}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v4

    if-ne v4, v9, :cond_b

    invoke-static {p1, v3}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v3

    if-ne v3, v10, :cond_b

    .line 219
    const/16 v3, 0x1a

    invoke-static {p1, v3}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v3

    const/16 v4, 0x60

    if-ne v3, v4, :cond_b

    const/16 v3, 0x1c

    invoke-static {p1, v3}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v3

    const/16 v4, 0x38

    if-ne v3, v4, :cond_b

    .line 220
    const/16 v3, 0x1e

    invoke-static {p1, v3}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v3

    const/16 v4, 0xa80

    if-ne v3, v4, :cond_b

    .line 223
    const/16 v3, 0x20

    .line 224
    .local v3, "p":I
    const/16 v4, 0x80

    new-array v11, v4, [B

    .line 225
    .local v11, "paletteBytes":[B
    const/4 v4, 0x0

    array-length v5, v11

    invoke-static {p1, v3, v11, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    invoke-direct {p0, v11}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->decodePalette([B)V

    .line 227
    array-length v4, v11

    add-int/2addr v3, v4

    .line 228
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->housePaletteFlags:[I

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 229
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->housePaletteFlags:[I

    mul-int/lit8 v12, v4, 0x2

    add-int/2addr v12, v3

    invoke-static {p1, v12}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->be16([BI)I

    move-result v12

    aput v12, v5, v4

    .line 228
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 231
    .end local v4    # "i":I
    :cond_1
    add-int/2addr v3, v2

    .line 232
    const/4 v2, 0x0

    move v13, v3

    move v3, v2

    move v2, v13

    .local v2, "p":I
    .local v3, "type":I
    :goto_2
    if-ge v3, v9, :cond_2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->structurePurchaseIcons:[Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->decodeFixedRecord([BIII[Landroid/graphics/Bitmap;)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 233
    .end local v3    # "type":I
    :cond_2
    const/4 v1, 0x0

    move v3, v1

    .restart local v3    # "type":I
    :goto_3
    if-ge v3, v10, :cond_3

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->unitPurchaseIcons:[Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->decodeFixedRecord([BIII[Landroid/graphics/Bitmap;)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 234
    .end local v3    # "type":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "type":I
    :goto_4
    if-ge v3, v9, :cond_4

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->structureInfoPayload:[[B

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->decodeInfoRecord([BII[[B)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 235
    .end local v3    # "type":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "type":I
    :goto_5
    if-ge v3, v10, :cond_5

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->unitInfoPayload:[[B

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->decodeInfoRecord([BII[[B)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 236
    .end local v3    # "type":I
    :cond_5
    const/4 v3, 0x0

    .local v3, "action":I
    :goto_6
    if-ge v3, v8, :cond_6

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->actionIcons:[Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->decodeFixedRecord([BIII[Landroid/graphics/Bitmap;)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 237
    .end local v3    # "action":I
    :cond_6
    const/4 v3, 0x0

    .local v3, "type":I
    :goto_7
    if-ge v3, v9, :cond_7

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->structureDetailPreviews:[Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->decodeDetailRecord([BII[Landroid/graphics/Bitmap;)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 238
    .end local v3    # "type":I
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "type":I
    :goto_8
    if-ge v3, v10, :cond_8

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->unitDetailPreviews:[Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->decodeDetailRecord([BII[Landroid/graphics/Bitmap;)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 239
    .end local v3    # "type":I
    :cond_8
    if-ne v6, v7, :cond_9

    .line 240
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->fremenClassicIcons:[Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->decodeFixedRecord([BIII[Landroid/graphics/Bitmap;)I

    move-result v2

    .line 241
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->fremenClassicIcons:[Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->decodeFixedRecord([BIII[Landroid/graphics/Bitmap;)I

    move-result v2

    .line 243
    :cond_9
    array-length v0, p1

    if-ne v2, v0, :cond_a

    .line 244
    return-void

    .line 243
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Installed classic icon pack trailing data"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    .end local v2    # "p":I
    .end local v11    # "paletteBytes":[B
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Installed classic icon pack v3 shape mismatch"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getActionIcon(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "action"    # I

    .line 114
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->actionIcons:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->actionIcons:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFremenClassicSelectedIcon(II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "type"    # I
    .param p2, "house"    # I

    .line 107
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    return-object v0

    .line 108
    :cond_0
    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->fremenClassicIcons:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 109
    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->fremenClassicIcons:[Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    .line 110
    :cond_2
    return-object v0
.end method

.method public getStructureDetailPreview(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "type"    # I

    .line 118
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->structureDetailPreviews:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->structureDetailPreviews:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getStructureIcon(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "type"    # I

    .line 85
    invoke-virtual {p0, p1}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->getStructurePurchaseIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getStructureInfoIcon(II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "type"    # I
    .param p2, "house"    # I

    .line 97
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->structureInfoPayload:[[B

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->structureInfoCache:[[Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->getInfoIcon(II[[B[[Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getStructurePurchaseIcon(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "type"    # I

    .line 89
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->structurePurchaseIcons:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->structurePurchaseIcons:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getUnitDetailPreview(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "type"    # I

    .line 122
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->unitDetailPreviews:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->unitDetailPreviews:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getUnitIcon(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "type"    # I

    .line 86
    invoke-virtual {p0, p1}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->getUnitPurchaseIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getUnitInfoIcon(II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "type"    # I
    .param p2, "house"    # I

    .line 101
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->unitInfoPayload:[[B

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->unitInfoCache:[[Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->getInfoIcon(II[[B[[Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getUnitPurchaseIcon(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "type"    # I

    .line 93
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->unitPurchaseIcons:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->unitPurchaseIcons:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
