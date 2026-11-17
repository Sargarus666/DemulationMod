.class public final Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;
.super Ljava/lang/Object;
.source "GenesisRomMentatAssetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;,
        Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;,
        Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$Result;
    }
.end annotation


# static fields
.field private static final BACKDROP_H:I = 0x70

.field private static final BACKDROP_LAYER_BYTES:I = 0x7380

.field private static final BACKDROP_W:I = 0x108

.field private static final COMMON_PALETTE:I = 0xa2d7e

.field private static final COMPONENT_BYTE_REMAP:I = 0x24082

.field private static final COMPONENT_HEIGHT:I = 0x24062

.field private static final COMPONENT_TILE_COUNT:I = 0x96304

.field private static final COMPONENT_WIDTH:I = 0x24042

.field private static final EYE_BANK_PTRS:I = 0x25940

.field private static final EYE_EXPECTED:I = 0xb40

.field private static final EYE_POSITION_TABLE:I = 0x25958

.field private static final FINAL_MISSION_COMMON_PALETTE:I = 0xa2dfe

.field private static final HOUSE_COMPONENT_PTRS:I = 0x95f6c

.field private static final HOUSE_DESCRIPTOR_PTRS:I = 0x962dc

.field private static final HOUSE_JOIN_POINTER_TABLE:I = 0x87d7c

.field private static final HOUSE_PALETTES:I = 0xa2c3e

.field private static final HOUSE_PATTERN_BYTES:I = 0x986e6

.field private static final HOUSE_TAG:[Ljava/lang/String;

.field private static final MAX_DECOMPRESSED:I = 0x10000

.field private static final MAX_ROM_BYTES:I = 0x1000000

.field private static final MOUTH_BANK_PTRS:I = 0x2594c

.field private static final MOUTH_EXPECTED:I = 0x15e0

.field private static final MOUTH_POSITION_TABLE:I = 0x25964

.field private static final PORTRAIT_BANK_PTRS:I = 0x25934

.field private static final PORTRAIT_EXPECTED:[I

.field private static final SELECTOR_BRIEFING_STREAM:I = 0xa2818

.field private static final SELECTOR_COMMON_STREAM:I = 0xa27fc

.field private static final SELECTOR_JOIN_STREAM:I = 0xa2a44

.field private static final SPRITE_TEMPLATE:I = 0x257ec

.field private static final STATIC_COMPONENT_STREAM:I = 0x95d00

.field private static final STATIC_DESCRIPTOR_PTRS:I = 0x96158

.field private static final STATIC_PATTERN_BYTES:I = 0x96324


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 60
    const/16 v0, 0x2880

    filled-new-array {v0, v0, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->PORTRAIT_EXPECTED:[I

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "radnor_harkonnen"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cyril_atreides"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ammon_ordos"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->HOUSE_TAG:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static be16([BI)I
    .locals 2
    .param p0, "rom"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->checkRange([BII)V

    .line 410
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
    .param p0, "rom"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->checkRange([BII)V

    .line 420
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

.method private static blitComponent([B[[BIIIIII)V
    .locals 20
    .param p0, "rom"    # [B
    .param p1, "layers"    # [[B
    .param p2, "sourceBase"    # I
    .param p3, "firstTile"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "code"    # I
    .param p7, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    move-object/from16 v0, p0

    move/from16 v1, p7

    const/4 v2, 0x0

    .line 293
    .local v2, "layer":I
    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    const/4 v2, 0x1

    add-int/lit8 v1, v1, -0x2

    .line 294
    .end local p7    # "mode":I
    .local v1, "mode":I
    :cond_0
    const v4, 0x24042

    invoke-static {v0, v4}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v4

    mul-int/lit8 v5, p6, 0x2

    add-int/2addr v4, v5

    invoke-static {v0, v4}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->be16([BI)I

    move-result v4

    add-int/2addr v4, v3

    .line 295
    .local v4, "tilesWide":I
    const v5, 0x24062

    invoke-static {v0, v5}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v5

    mul-int/lit8 v6, p6, 0x2

    add-int/2addr v5, v6

    invoke-static {v0, v5}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->be16([BI)I

    move-result v5

    add-int/2addr v5, v3

    .line 296
    .local v5, "tilesHigh":I
    add-int/lit8 v6, p4, -0x18

    .line 297
    .local v6, "dx0":I
    add-int/lit8 v7, p5, -0x30

    .line 298
    .local v7, "dy0":I
    move/from16 v8, p3

    .line 299
    .local v8, "tile":I
    const/4 v9, 0x0

    .local v9, "cx":I
    :goto_0
    if-ge v9, v4, :cond_9

    .line 300
    const/4 v10, 0x0

    .local v10, "cy":I
    :goto_1
    if-ge v10, v5, :cond_8

    .line 301
    mul-int/lit8 v11, v8, 0x20

    add-int v11, p2, v11

    .line 302
    .local v11, "tileOffset":I
    const/16 v12, 0x20

    invoke-static {v0, v11, v12}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->checkRange([BII)V

    .line 303
    const/4 v12, 0x0

    .local v12, "py":I
    :goto_2
    const/16 v13, 0x8

    if-ge v12, v13, :cond_7

    .line 304
    const/4 v13, 0x0

    .local v13, "pair":I
    :goto_3
    const/4 v14, 0x4

    if-ge v13, v14, :cond_6

    .line 305
    mul-int/lit8 v14, v12, 0x4

    add-int/2addr v14, v11

    add-int/2addr v14, v13

    aget-byte v14, v0, v14

    and-int/lit16 v14, v14, 0xff

    .line 306
    .local v14, "packed":I
    if-eqz v1, :cond_1

    const v15, 0x24082

    invoke-static {v0, v15}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v15

    add-int/2addr v15, v14

    aget-byte v15, v0, v15

    and-int/lit16 v14, v15, 0xff

    .line 307
    :cond_1
    ushr-int/lit8 v15, v14, 0x4

    .line 308
    .local v15, "hi":I
    move/from16 v16, v3

    and-int/lit8 v3, v14, 0xf

    .line 309
    .local v3, "lo":I
    mul-int/lit8 v17, v9, 0x8

    add-int v17, v6, v17

    mul-int/lit8 v18, v13, 0x2

    add-int v0, v17, v18

    .line 310
    .local v0, "px":I
    mul-int/lit8 v17, v10, 0x8

    add-int v17, v7, v17

    move/from16 p7, v1

    .end local v1    # "mode":I
    .restart local p7    # "mode":I
    add-int v1, v17, v12

    .line 311
    .local v1, "yy":I
    if-ltz v1, :cond_4

    move/from16 v17, v2

    .end local v2    # "layer":I
    .local v17, "layer":I
    const/16 v2, 0x70

    if-ge v1, v2, :cond_3

    .line 312
    const/16 v2, 0x108

    if-eqz v15, :cond_2

    if-ltz v0, :cond_2

    if-ge v0, v2, :cond_2

    .line 313
    aget-object v18, p1, v17

    mul-int/lit16 v2, v1, 0x108

    add-int/2addr v2, v0

    move/from16 v19, v0

    .end local v0    # "px":I
    .local v19, "px":I
    int-to-byte v0, v15

    aput-byte v0, v18, v2

    goto :goto_4

    .line 312
    .end local v19    # "px":I
    .restart local v0    # "px":I
    :cond_2
    move/from16 v19, v0

    .line 314
    .end local v0    # "px":I
    .restart local v19    # "px":I
    :goto_4
    if-eqz v3, :cond_5

    add-int/lit8 v0, v19, 0x1

    if-ltz v0, :cond_5

    add-int/lit8 v0, v19, 0x1

    const/16 v2, 0x108

    if-ge v0, v2, :cond_5

    .line 315
    aget-object v0, p1, v17

    mul-int/lit16 v2, v1, 0x108

    add-int v2, v2, v19

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v18, v0

    int-to-byte v0, v3

    aput-byte v0, v18, v2

    goto :goto_5

    .line 311
    .end local v19    # "px":I
    .restart local v0    # "px":I
    :cond_3
    move/from16 v19, v0

    .end local v0    # "px":I
    .restart local v19    # "px":I
    goto :goto_5

    .end local v17    # "layer":I
    .end local v19    # "px":I
    .restart local v0    # "px":I
    .restart local v2    # "layer":I
    :cond_4
    move/from16 v19, v0

    move/from16 v17, v2

    .line 304
    .end local v0    # "px":I
    .end local v1    # "yy":I
    .end local v2    # "layer":I
    .end local v3    # "lo":I
    .end local v14    # "packed":I
    .end local v15    # "hi":I
    .restart local v17    # "layer":I
    :cond_5
    :goto_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v3, v16

    move/from16 v2, v17

    goto :goto_3

    .end local v17    # "layer":I
    .end local p7    # "mode":I
    .local v1, "mode":I
    .restart local v2    # "layer":I
    :cond_6
    move/from16 p7, v1

    move/from16 v17, v2

    move/from16 v16, v3

    .line 303
    .end local v1    # "mode":I
    .end local v2    # "layer":I
    .end local v13    # "pair":I
    .restart local v17    # "layer":I
    .restart local p7    # "mode":I
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_2

    .end local v17    # "layer":I
    .end local p7    # "mode":I
    .restart local v1    # "mode":I
    .restart local v2    # "layer":I
    :cond_7
    move/from16 p7, v1

    move/from16 v17, v2

    move/from16 v16, v3

    .line 319
    .end local v1    # "mode":I
    .end local v2    # "layer":I
    .end local v12    # "py":I
    .restart local v17    # "layer":I
    .restart local p7    # "mode":I
    nop

    .end local v11    # "tileOffset":I
    add-int/lit8 v8, v8, 0x1

    .line 300
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_1

    .end local v17    # "layer":I
    .end local p7    # "mode":I
    .restart local v1    # "mode":I
    .restart local v2    # "layer":I
    :cond_8
    move/from16 p7, v1

    move/from16 v17, v2

    move/from16 v16, v3

    .line 299
    .end local v1    # "mode":I
    .end local v2    # "layer":I
    .end local v10    # "cy":I
    .restart local v17    # "layer":I
    .restart local p7    # "mode":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 322
    .end local v9    # "cx":I
    .end local v17    # "layer":I
    .end local p7    # "mode":I
    .restart local v1    # "mode":I
    .restart local v2    # "layer":I
    :cond_9
    return-void
.end method

.method private static checkRange([BII)V
    .locals 2
    .param p0, "rom"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 428
    return-void

    .line 426
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM Mentat range outside file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static copy([BII)[B
    .locals 2
    .param p0, "rom"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->checkRange([BII)V

    .line 403
    new-array v0, p2, [B

    .line 404
    .local v0, "out":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    return-object v0
.end method

.method private static copyZeroTerminated([BII)[B
    .locals 3
    .param p0, "rom"    # [B
    .param p1, "offset"    # I
    .param p2, "maxBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->checkRange([BII)V

    .line 371
    move v1, p1

    .line 372
    .local v1, "end":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    sub-int v2, v1, p1

    if-ge v2, p2, :cond_0

    aget-byte v2, p0, v1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    :cond_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    sub-int v2, v1, p1

    if-ge v2, p2, :cond_1

    .line 374
    sub-int v2, v1, p1

    add-int/2addr v2, v0

    invoke-static {p0, p1, v2}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->copy([BII)[B

    move-result-object v0

    return-object v0

    .line 373
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Mentat join text is not terminated"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodeAssets([B)Ljava/util/List;
    .locals 12
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;>;"
    const/4 v1, 0x0

    .local v1, "house":I
    :goto_0
    const/4 v2, 0x3

    const-string v3, "frontend/mentat/"

    if-ge v1, v2, :cond_1

    .line 177
    const v2, 0x25934

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    mul-int/lit8 v4, v1, 0x4

    add-int/2addr v2, v4

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->be32([BI)I

    move-result v2

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->decompress([BI)[B

    move-result-object v2

    .line 178
    .local v2, "portrait":[B
    const v4, 0x25940

    invoke-static {p0, v4}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v4

    mul-int/lit8 v5, v1, 0x4

    add-int/2addr v4, v5

    invoke-static {p0, v4}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->be32([BI)I

    move-result v4

    invoke-static {p0, v4}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->decompress([BI)[B

    move-result-object v4

    .line 179
    .local v4, "eyes":[B
    const v5, 0x2594c

    invoke-static {p0, v5}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v5

    mul-int/lit8 v6, v1, 0x4

    add-int/2addr v5, v6

    invoke-static {p0, v5}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->be32([BI)I

    move-result v5

    invoke-static {p0, v5}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->decompress([BI)[B

    move-result-object v5

    .line 180
    .local v5, "mouth":[B
    array-length v6, v2

    sget-object v7, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->PORTRAIT_EXPECTED:[I

    aget v7, v7, v1

    if-ne v6, v7, :cond_0

    array-length v6, v4

    const/16 v7, 0xb40

    if-ne v6, v7, :cond_0

    array-length v6, v5

    const/16 v7, 0x15e0

    if-ne v6, v7, :cond_0

    .line 184
    new-instance v6, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->HOUSE_TAG:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_portrait.bin"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v6, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->HOUSE_TAG:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_eyes.bin"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v6, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->HOUSE_TAG:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "_mouth.bin"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3, v5}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v2    # "portrait":[B
    .end local v4    # "eyes":[B
    .end local v5    # "mouth":[B
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 182
    .restart local v2    # "portrait":[B
    .restart local v4    # "eyes":[B
    .restart local v5    # "mouth":[B
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected Mentat face-bank size for House "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 189
    .end local v1    # "house":I
    .end local v2    # "portrait":[B
    .end local v4    # "eyes":[B
    .end local v5    # "mouth":[B
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "house":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 190
    const/4 v4, 0x0

    .local v4, "mission":I
    :goto_2
    const/16 v5, 0x9

    if-ge v4, v5, :cond_2

    .line 191
    new-instance v5, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v7, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->HOUSE_TAG:[Ljava/lang/String;

    aget-object v7, v7, v1

    add-int/lit8 v8, v4, 0x1

    .line 192
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    .line 191
    const-string v8, "frontend/mentat/backdrop_%s_m%02d_layers.bin"

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 193
    invoke-static {p0, v1, v4}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->decodeBackdropLayers([BII)[B

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 191
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 189
    .end local v4    # "mission":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 197
    .end local v1    # "house":I
    :cond_3
    const v1, 0xa27fc

    invoke-static {p0, v1}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v1

    invoke-static {p0, v1}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->decompress([BI)[B

    move-result-object v1

    .line 198
    .local v1, "selectorCommon":[B
    invoke-static {p0}, Lcom/ahsim/demulation/GermanRomAddressMap;->isExactGerman([B)Z

    move-result v4

    const v5, 0xa2818

    const/16 v6, 0x500

    if-eqz v4, :cond_4

    .line 199
    invoke-static {p0, v5}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v4

    invoke-static {p0, v4, v6}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->copy([BII)[B

    move-result-object v4

    goto :goto_3

    .line 200
    :cond_4
    invoke-static {p0, v5}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v4

    invoke-static {p0, v4}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->decompress([BI)[B

    move-result-object v4

    :goto_3
    nop

    .line 201
    .local v4, "selectorBriefing":[B
    const v5, 0xa2a44

    invoke-static {p0, v5}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v5

    invoke-static {p0, v5}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->decompress([BI)[B

    move-result-object v5

    .line 202
    .local v5, "selectorJoin":[B
    array-length v7, v1

    const/16 v8, 0x280

    if-ne v7, v8, :cond_7

    array-length v7, v4

    if-ne v7, v6, :cond_7

    array-length v7, v5

    if-ne v7, v6, :cond_7

    .line 206
    new-instance v6, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;

    const-string v7, "frontend/mentat/selector_common.bin"

    invoke-direct {v6, v7, v1}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v6, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;

    const-string v7, "frontend/mentat/selector_briefing.bin"

    invoke-direct {v6, v7, v4}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v6, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;

    const-string v7, "frontend/mentat/selector_join.bin"

    invoke-direct {v6, v7, v5}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v6, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;

    const v7, 0xa2d7e

    invoke-static {p0, v7}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v7

    const/16 v8, 0x40

    invoke-static {p0, v7, v8}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->copy([BII)[B

    move-result-object v7

    const-string v9, "frontend/mentat/common_palette.bin"

    invoke-direct {v6, v9, v7}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v6, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;

    .line 212
    const v7, 0xa2dfe

    invoke-static {p0, v7}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v7

    invoke-static {p0, v7, v8}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->copy([BII)[B

    move-result-object v7

    const-string v9, "frontend/mentat/final_mission_common_palette.bin"

    invoke-direct {v6, v9, v7}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 211
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    const/4 v6, 0x0

    .local v6, "house":I
    :goto_4
    if-ge v6, v2, :cond_5

    .line 214
    new-instance v7, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->HOUSE_TAG:[Ljava/lang/String;

    aget-object v10, v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_palette.bin"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    mul-int/lit16 v10, v6, 0x80

    const v11, 0xa2c3e

    add-int/2addr v10, v11

    .line 215
    invoke-static {p0, v10}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v10

    invoke-static {p0, v10, v8}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->copy([BII)[B

    move-result-object v10

    invoke-direct {v7, v9, v10}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 214
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 218
    .end local v6    # "house":I
    :cond_5
    new-instance v6, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;

    const v7, 0x257ec

    invoke-static {p0, v7}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v7

    const/16 v8, 0x140

    invoke-static {p0, v7, v8}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->copy([BII)[B

    move-result-object v7

    const-string v8, "frontend/mentat/sprite_template.bin"

    invoke-direct {v6, v8, v7}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v6, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;

    const v7, 0x25958

    invoke-static {p0, v7}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v7

    const/16 v8, 0xc

    invoke-static {p0, v7, v8}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->copy([BII)[B

    move-result-object v7

    const-string v9, "frontend/mentat/eye_positions.bin"

    invoke-direct {v6, v9, v7}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v6, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;

    const v7, 0x25964

    invoke-static {p0, v7}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v7

    invoke-static {p0, v7, v8}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->copy([BII)[B

    move-result-object v7

    const-string v8, "frontend/mentat/mouth_positions.bin"

    invoke-direct {v6, v8, v7}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    const/4 v6, 0x0

    .restart local v6    # "house":I
    :goto_5
    if-ge v6, v2, :cond_6

    .line 224
    const v7, 0x87d7c

    invoke-static {p0, v7}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v7

    mul-int/lit8 v8, v6, 0x4

    add-int/2addr v7, v8

    invoke-static {p0, v7}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->be32([BI)I

    move-result v7

    const v8, 0xffffff

    and-int/2addr v7, v8

    .line 225
    .local v7, "pointer":I
    new-instance v8, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->HOUSE_TAG:[Ljava/lang/String;

    aget-object v10, v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_join_text.bin"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 226
    const/16 v10, 0x400

    invoke-static {p0, v7, v10}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->readCStringBytes([BII)[B

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 225
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    .end local v7    # "pointer":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 228
    .end local v6    # "house":I
    :cond_6
    return-object v0

    .line 204
    :cond_7
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unexpected Mentat selector decode size"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static decodeBackdropLayers([BII)[B
    .locals 8
    .param p0, "rom"    # [B
    .param p1, "house"    # I
    .param p2, "missionZero"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    const v0, 0x96158

    invoke-static {p0, v0}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v0

    const v1, 0x95d00

    invoke-static {p0, v1}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v1

    const v2, 0x96324

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->drawDescriptorCall([BIII)[[B

    move-result-object v0

    .line 251
    .local v0, "base":[[B
    const v1, 0x95f6c

    invoke-static {p0, v1}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v1

    mul-int/lit8 v2, p1, 0x4

    add-int/2addr v1, v2

    invoke-static {p0, v1}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->be32([BI)I

    move-result v1

    mul-int/lit8 v2, p2, 0x14

    add-int/2addr v1, v2

    .line 252
    .local v1, "houseComponents":I
    const v2, 0x962dc

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    const v3, 0x986e6

    invoke-static {p0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v3

    invoke-static {p0, v2, v1, v3}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->drawDescriptorCall([BIII)[[B

    move-result-object v2

    .line 253
    .local v2, "overlay":[[B
    const/4 v3, 0x0

    .local v3, "layer":I
    :goto_0
    const/4 v4, 0x2

    const/16 v5, 0x7380

    if-ge v3, v4, :cond_2

    .line 254
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_1

    .line 255
    aget-object v6, v2, v3

    aget-byte v6, v6, v4

    if-eqz v6, :cond_0

    aget-object v6, v0, v3

    aget-object v7, v2, v3

    aget-byte v7, v7, v4

    aput-byte v7, v6, v4

    .line 254
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 253
    .end local v4    # "i":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    .end local v3    # "layer":I
    :cond_2
    const v3, 0xe700

    new-array v3, v3, [B

    .line 259
    .local v3, "result":[B
    const/4 v4, 0x0

    aget-object v6, v0, v4

    invoke-static {v6, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-static {v6, v4, v3, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    return-object v3
.end method

.method static decodeSelectedAssets([BLjava/util/List;)Ljava/util/Map;
    .locals 6
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    .local p1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 107
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 108
    .local v0, "selected":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[B>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 109
    .local v1, "wanted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->decodeAssets([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;

    .line 110
    .local v3, "asset":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;
    iget-object v4, v3, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;->path:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;->path:Ljava/lang/String;

    iget-object v5, v3, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;->data:[B

    invoke-virtual {v5}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-virtual {v0, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .end local v3    # "asset":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;
    :cond_0
    goto :goto_0

    .line 112
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 113
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    .end local v3    # "path":Ljava/lang/String;
    goto :goto_1

    .line 113
    .restart local v3    # "path":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Localization asset not decoded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    .end local v3    # "path":Ljava/lang/String;
    :cond_3
    return-object v0

    .line 106
    .end local v0    # "selected":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[B>;"
    .end local v1    # "wanted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Localization decode arguments unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decompress([BI)[B
    .locals 11
    .param p0, "rom"    # [B
    .param p1, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->checkRange([BII)V

    .line 326
    const/high16 v1, 0x10000

    new-array v1, v1, [B

    .line 327
    .local v1, "out":[B
    move v2, p1

    .local v2, "src":I
    const/4 v3, 0x0

    .local v3, "dst":I
    const/4 v4, 0x0

    .line 329
    .local v4, "guard":I
    :goto_0
    add-int/2addr v4, v0

    const v5, 0xf4240

    if-gt v4, v5, :cond_c

    .line 330
    invoke-static {p0, v2, v0}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->checkRange([BII)V

    .line 331
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "src":I
    .local v5, "src":I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 332
    .local v2, "c":I
    const/16 v6, 0x80

    if-ne v2, v6, :cond_0

    .line 364
    .end local v2    # "c":I
    new-array v0, v3, [B

    .line 365
    .local v0, "exact":[B
    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 366
    return-object v0

    .line 333
    .end local v0    # "exact":[B
    .restart local v2    # "c":I
    :cond_0
    const/16 v6, 0x81

    if-lt v2, v6, :cond_1

    const/16 v6, 0xbf

    if-gt v2, v6, :cond_1

    .line 334
    and-int/lit8 v6, v2, 0x3f

    .line 335
    .local v6, "n":I
    invoke-static {p0, v5, v6}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->checkRange([BII)V

    invoke-static {v3, v6}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->ensureOut(II)V

    .line 336
    invoke-static {p0, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v6

    add-int/2addr v3, v6

    .line 337
    .end local v6    # "n":I
    move v2, v5

    goto/16 :goto_5

    :cond_1
    const/16 v6, 0x7f

    const/4 v7, 0x3

    if-gt v2, v6, :cond_4

    .line 338
    invoke-static {p0, v5, v0}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->checkRange([BII)V

    .line 339
    shl-int/lit8 v6, v2, 0x8

    add-int/lit8 v8, v5, 0x1

    .end local v5    # "src":I
    .local v8, "src":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xfff

    .line 340
    .local v5, "back":I
    ushr-int/lit8 v6, v2, 0x4

    add-int/2addr v6, v7

    .restart local v6    # "n":I
    invoke-static {v3, v6}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->ensureOut(II)V

    .line 341
    if-lez v5, :cond_3

    if-gt v5, v3, :cond_3

    .line 342
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v6, :cond_2

    sub-int v9, v3, v5

    aget-byte v9, v1, v9

    aput-byte v9, v1, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 343
    .end local v5    # "back":I
    .end local v6    # "n":I
    .end local v7    # "i":I
    :cond_2
    move v2, v8

    goto/16 :goto_5

    .line 341
    .restart local v5    # "back":I
    .restart local v6    # "n":I
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v7, "Mentat short-copy range"

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    .end local v6    # "n":I
    .end local v8    # "src":I
    .local v5, "src":I
    :cond_4
    const/16 v6, 0xfd

    if-gt v2, v6, :cond_7

    .line 344
    const/4 v6, 0x2

    invoke-static {p0, v5, v6}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->checkRange([BII)V

    .line 345
    and-int/lit8 v6, v2, 0x3f

    add-int/2addr v6, v7

    .line 346
    .restart local v6    # "n":I
    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v5, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    .local v7, "from":I
    add-int/lit8 v5, v5, 0x2

    .line 347
    invoke-static {v3, v6}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->ensureOut(II)V

    .line 348
    if-ltz v7, :cond_6

    if-ge v7, v3, :cond_6

    .line 349
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v6, :cond_5

    add-int v9, v3, v8

    add-int v10, v7, v8

    aget-byte v10, v1, v10

    aput-byte v10, v1, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v8    # "i":I
    :cond_5
    add-int/2addr v3, v6

    .line 350
    .end local v6    # "n":I
    .end local v7    # "from":I
    move v2, v5

    goto :goto_5

    .line 348
    .restart local v6    # "n":I
    .restart local v7    # "from":I
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v8, "Mentat absolute-copy range"

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    .end local v6    # "n":I
    .end local v7    # "from":I
    :cond_7
    const/16 v6, 0xfe

    if-ne v2, v6, :cond_9

    .line 351
    invoke-static {p0, v5, v7}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->checkRange([BII)V

    .line 352
    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    .line 353
    .restart local v6    # "n":I
    add-int/lit8 v7, v5, 0x2

    aget-byte v7, p0, v7

    .local v7, "value":B
    add-int/lit8 v5, v5, 0x3

    invoke-static {v3, v6}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->ensureOut(II)V

    .line 354
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v6, :cond_8

    add-int/lit8 v9, v3, 0x1

    .end local v3    # "dst":I
    .local v9, "dst":I
    aput-byte v7, v1, v3

    add-int/lit8 v8, v8, 0x1

    move v3, v9

    goto :goto_3

    .line 355
    .end local v6    # "n":I
    .end local v7    # "value":B
    .end local v8    # "i":I
    .end local v9    # "dst":I
    .restart local v3    # "dst":I
    :cond_8
    move v2, v5

    goto :goto_5

    .line 356
    :cond_9
    const/4 v6, 0x4

    invoke-static {p0, v5, v6}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->checkRange([BII)V

    .line 357
    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    .line 358
    .restart local v6    # "n":I
    add-int/lit8 v7, v5, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v5, 0x3

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    .local v7, "from":I
    add-int/lit8 v5, v5, 0x4

    .line 359
    invoke-static {v3, v6}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->ensureOut(II)V

    .line 360
    if-ltz v7, :cond_b

    if-ge v7, v3, :cond_b

    .line 361
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4
    if-ge v8, v6, :cond_a

    add-int v9, v3, v8

    add-int v10, v7, v8

    aget-byte v10, v1, v10

    aput-byte v10, v1, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .end local v8    # "i":I
    :cond_a
    add-int/2addr v3, v6

    move v2, v5

    .line 363
    .end local v5    # "src":I
    .end local v6    # "n":I
    .end local v7    # "from":I
    .local v2, "src":I
    :goto_5
    goto/16 :goto_0

    .line 360
    .local v2, "c":I
    .restart local v5    # "src":I
    .restart local v6    # "n":I
    .restart local v7    # "from":I
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v8, "Mentat long-copy range"

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    .end local v5    # "src":I
    .end local v6    # "n":I
    .end local v7    # "from":I
    .local v2, "src":I
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Mentat decompressor guard"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

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

    .line 437
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 438
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 440
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 442
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

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_3
    :goto_1
    return-void

    .line 437
    :cond_4
    :goto_2
    return-void
.end method

.method private static drawDescriptorCall([BIII)[[B
    .locals 11
    .param p0, "rom"    # [B
    .param p1, "descriptorPointerTable"    # I
    .param p2, "componentStream"    # I
    .param p3, "patternBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    const/16 v0, 0x7380

    new-array v1, v0, [B

    new-array v0, v0, [B

    filled-new-array {v1, v0}, [[B

    move-result-object v0

    move-object v2, v0

    .line 267
    .local v2, "layers":[[B
    const/4 v0, 0x0

    .line 268
    .local v0, "tileIndex":I
    move v1, p2

    .line 269
    .local v1, "components":I
    const/4 v3, 0x0

    move v9, v3

    .local v9, "slot":I
    :goto_0
    const/16 v3, 0xa

    if-ge v9, v3, :cond_1

    .line 270
    mul-int/lit8 v3, v9, 0x4

    add-int/2addr v3, p1

    invoke-static {p0, v3}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->be32([BI)I

    move-result v3

    .line 271
    .local v3, "descriptor":I
    invoke-static {p0, v3}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->s16([BI)I

    move-result v4

    .line 272
    .local v4, "x":I
    add-int/lit8 v5, v3, 0x2

    invoke-static {p0, v5}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->s16([BI)I

    move-result v5

    .line 273
    .local v5, "y":I
    add-int/lit8 v6, v3, 0x4

    invoke-static {p0, v6}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->be16([BI)I

    move-result v6

    .line 274
    .local v6, "code":I
    add-int/lit8 v3, v3, 0x6

    .line 275
    invoke-static {p0, v1}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->be16([BI)I

    move-result v8

    .line 276
    .local v8, "mode":I
    add-int/lit8 v10, v1, 0x2

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v0

    move v0, v3

    .line 278
    .end local v1    # "components":I
    .end local v3    # "descriptor":I
    .local v0, "descriptor":I
    .local v4, "tileIndex":I
    .local v5, "x":I
    .local v6, "y":I
    .local v7, "code":I
    .local v10, "components":I
    :goto_1
    move-object v1, p0

    move v3, p3

    .end local p0    # "rom":[B
    .end local p3    # "patternBytes":I
    .local v1, "rom":[B
    .local v3, "patternBytes":I
    invoke-static/range {v1 .. v8}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->blitComponent([B[[BIIIIII)V

    .line 279
    .end local v1    # "rom":[B
    .restart local p0    # "rom":[B
    const p3, 0x96304

    invoke-static {p0, p3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result p3

    mul-int/lit8 v1, v7, 0x2

    add-int/2addr p3, v1

    invoke-static {p0, p3}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->be16([BI)I

    move-result p3

    add-int/2addr v4, p3

    .line 280
    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->be32([BI)I

    move-result p3

    if-nez p3, :cond_0

    .line 269
    .end local v0    # "descriptor":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v7    # "code":I
    .end local v8    # "mode":I
    add-int/lit8 v9, v9, 0x1

    move p3, v3

    move v0, v4

    move v1, v10

    goto :goto_0

    .line 281
    .restart local v0    # "descriptor":I
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    .restart local v7    # "code":I
    .restart local v8    # "mode":I
    :cond_0
    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->s16([BI)I

    move-result p3

    add-int/2addr v5, p3

    .line 282
    add-int/lit8 p3, v0, 0x2

    invoke-static {p0, p3}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->s16([BI)I

    move-result p3

    add-int/2addr v6, p3

    .line 283
    add-int/lit8 p3, v0, 0x4

    invoke-static {p0, p3}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->be16([BI)I

    move-result v7

    .line 284
    add-int/lit8 v0, v0, 0x6

    move p3, v3

    goto :goto_1

    .line 287
    .end local v3    # "patternBytes":I
    .end local v4    # "tileIndex":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v7    # "code":I
    .end local v8    # "mode":I
    .end local v9    # "slot":I
    .end local v10    # "components":I
    .local v0, "tileIndex":I
    .local v1, "components":I
    .restart local p3    # "patternBytes":I
    :cond_1
    return-object v2
.end method

.method private static ensureOut(II)V
    .locals 2
    .param p0, "offset"    # I
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    const/high16 v0, 0x10000

    sub-int/2addr v0, p1

    if-gt p0, v0, :cond_0

    .line 434
    return-void

    .line 432
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mentat decode output overrun"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$Result;
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    .local v0, "input":Ljava/io/InputStream;
    .local v1, "knownRomSize":J
    .local v3, "stagingRoot":Ljava/io/File;
    .local v4, "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    invoke-static/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$Result;

    move-result-object p0

    return-object p0
.end method

.method public static extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$Result;
    .locals 17
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    .param p5, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    move-object/from16 v6, p3

    move-object/from16 v8, p4

    if-eqz p0, :cond_d

    .line 126
    if-eqz v6, :cond_c

    .line 127
    const-wide/32 v0, 0x1000000

    cmp-long v0, p1, v0

    if-gtz v0, :cond_b

    .line 128
    invoke-static/range {p0 .. p2}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->readAll(Ljava/io/InputStream;J)[B

    move-result-object v9

    .line 129
    .local v9, "rom":[B
    array-length v0, v9

    const v1, 0xa4000

    if-lt v0, v1, :cond_a

    .line 131
    invoke-static {v9}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->decodeAssets([B)Ljava/util/List;

    move-result-object v10

    .line 132
    .local v10, "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;>;"
    invoke-static {}, Lcom/ahsim/demulation/RomMentatAssetManifest;->entries()Ljava/util/List;

    move-result-object v11

    .line 133
    .local v11, "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 135
    invoke-static {v6}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 136
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not create Mentat staging directory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 141
    .local v0, "verified":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v5, "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    move v2, v0

    .end local v0    # "verified":I
    .local v1, "i":I
    .local v2, "verified":I
    :goto_1
    :try_start_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 144
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;

    move-object v3, v0

    .line 145
    .local v3, "asset":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-object v4, v0

    .line 146
    .local v4, "expected":Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;
    iget-object v0, v4, Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;->relativePath:Ljava/lang/String;

    iget-object v7, v3, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;->path:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 149
    iget-object v0, v3, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;->path:Ljava/lang/String;

    iget-object v7, v3, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;->data:[B

    iget v12, v4, Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;->length:I

    iget-object v13, v4, Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;->sha256:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    move-object/from16 v14, p5

    :try_start_1
    invoke-static {v14, v0, v7, v12, v13}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->matchesExtracted(Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)Z

    move-result v0

    move v7, v0

    .line 151
    .local v7, "match":Z
    if-eqz v7, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, v3, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;->path:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    .line 153
    :goto_2
    :try_start_2
    iget-object v0, v3, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;->path:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object v12, v0

    .line 154
    .local v12, "out":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v13, v0

    .line 155
    .local v13, "parent":Ljava/io/File;
    if-eqz v13, :cond_4

    :try_start_3
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    .line 156
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v15, "Could not create Mentat asset directory"

    invoke-direct {v0, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "verified":I
    .end local v5    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "rom":[B
    .end local v10    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;>;"
    .end local v11    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;>;"
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    .end local p5    # "profileId":Ljava/lang/String;
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    .line 158
    .restart local v2    # "verified":I
    .restart local v5    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "rom":[B
    .restart local v10    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;>;"
    .restart local v11    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;>;"
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    .restart local p5    # "profileId":Ljava/lang/String;
    :cond_4
    :goto_3
    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v15, v0

    .line 159
    .local v15, "stream":Ljava/io/FileOutputStream;
    :try_start_5
    iget-object v0, v3, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;->data:[B

    invoke-virtual {v15, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 160
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 161
    :try_start_6
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 162
    .end local v15    # "stream":Ljava/io/FileOutputStream;
    if-eqz v8, :cond_5

    add-int/lit8 v0, v1, 0x1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    move/from16 v16, v2

    .end local v2    # "verified":I
    .local v16, "verified":I
    :try_start_7
    iget-object v2, v3, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;->path:Ljava/lang/String;

    invoke-interface {v8, v0, v15, v2}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;->onProgress(IILjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_4

    .end local v16    # "verified":I
    .restart local v2    # "verified":I
    :cond_5
    move/from16 v16, v2

    .line 143
    .end local v2    # "verified":I
    .end local v3    # "asset":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;
    .end local v4    # "expected":Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;
    .end local v7    # "match":Z
    .end local v12    # "out":Ljava/io/File;
    .end local v13    # "parent":Ljava/io/File;
    .restart local v16    # "verified":I
    :goto_4
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v16

    goto/16 :goto_1

    .line 158
    .end local v16    # "verified":I
    .restart local v2    # "verified":I
    .restart local v3    # "asset":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;
    .restart local v4    # "expected":Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;
    .restart local v7    # "match":Z
    .restart local v12    # "out":Ljava/io/File;
    .restart local v13    # "parent":Ljava/io/File;
    .restart local v15    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v0

    move/from16 v16, v2

    move-object v2, v0

    .end local v2    # "verified":I
    .restart local v16    # "verified":I
    :try_start_8
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    :try_start_9
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "rom":[B
    .end local v10    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;>;"
    .end local v11    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;>;"
    .end local v16    # "verified":I
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    .end local p5    # "profileId":Ljava/lang/String;
    :goto_5
    throw v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 167
    .end local v1    # "i":I
    .end local v3    # "asset":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;
    .end local v4    # "expected":Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;
    .end local v7    # "match":Z
    .end local v12    # "out":Ljava/io/File;
    .end local v13    # "parent":Ljava/io/File;
    .end local v15    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "rom":[B
    .restart local v10    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;>;"
    .restart local v11    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;>;"
    .restart local v16    # "verified":I
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    .restart local p5    # "profileId":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    :goto_6
    move/from16 v2, v16

    goto :goto_9

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
    goto :goto_9

    .line 147
    .end local v16    # "verified":I
    .restart local v1    # "i":I
    .restart local v2    # "verified":I
    .restart local v3    # "asset":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;
    .restart local v4    # "expected":Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;
    :cond_6
    move-object/from16 v14, p5

    :try_start_a
    new-instance v0, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mentat manifest order mismatch at "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "verified":I
    .end local v5    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "rom":[B
    .end local v10    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;>;"
    .end local v11    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;>;"
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    .end local p5    # "profileId":Ljava/lang/String;
    throw v0

    .line 143
    .end local v3    # "asset":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;
    .end local v4    # "expected":Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;
    .restart local v2    # "verified":I
    .restart local v5    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "rom":[B
    .restart local v10    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;>;"
    .restart local v11    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;>;"
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$ProgressListener;
    .restart local p5    # "profileId":Ljava/lang/String;
    :cond_7
    move-object/from16 v14, p5

    .line 164
    .end local v1    # "i":I
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v6}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 165
    :cond_8
    new-instance v0, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$Result;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {}, Lcom/ahsim/demulation/RomMentatAssetManifest;->payloadBytes()J

    move-result-wide v3

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$Result;-><init>(IIJLjava/util/List;Ljava/io/File;Lcom/ahsim/demulation/GenesisRomMentatAssetProvider-IA;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4

    return-object v0

    .line 167
    :catch_4
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_9

    :catch_6
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v0

    :goto_8
    move-object/from16 v14, p5

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    :goto_9
    invoke-static/range {p3 .. p3}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 169
    throw v0

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "verified":I
    .end local v5    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    move-object/from16 v14, p5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mentat manifest/generator count mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    .end local v10    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomMentatAssetProvider$LogicalAsset;>;"
    .end local v11    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;>;"
    :cond_a
    move-object/from16 v14, p5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is too small for Mentat resources"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    .end local v9    # "rom":[B
    :cond_b
    move-object/from16 v14, p5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is unexpectedly large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_c
    move-object/from16 v14, p5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mentat staging directory is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_d
    move-object/from16 v14, p5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM stream is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readAll(Ljava/io/InputStream;J)[B
    .locals 8
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const-wide/32 v2, 0x1000000

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    long-to-int v2, p1

    goto :goto_0

    :cond_0
    const/high16 v2, 0x100000

    .line 379
    .local v2, "initial":I
    :goto_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 380
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x2000

    new-array v4, v4, [B

    .line 381
    .local v4, "buffer":[B
    const/4 v5, 0x0

    .line 383
    .local v5, "total":I
    :goto_1
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 384
    .local v6, "n":I
    if-gez v6, :cond_3

    .line 390
    .end local v6    # "n":I
    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    int-to-long v0, v5

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM size changed while reading"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_2
    :goto_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 385
    .restart local v6    # "n":I
    :cond_3
    if-nez v6, :cond_4

    goto :goto_1

    .line 386
    :cond_4
    add-int/2addr v5, v6

    .line 387
    const/high16 v7, 0x1000000

    if-gt v5, v7, :cond_5

    .line 388
    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 389
    .end local v6    # "n":I
    goto :goto_1

    .line 387
    .restart local v6    # "n":I
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM exceeds Mentat provider limit"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 232
    if-ltz p1, :cond_4

    array-length v0, p0

    if-ge p1, v0, :cond_4

    .line 233
    move v0, p1

    .line 234
    .local v0, "end":I
    array-length v1, p0

    add-int v2, p1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 235
    .local v1, "limit":I
    :goto_0
    if-ge v0, v1, :cond_2

    aget-byte v2, p0, v0

    if-eqz v2, :cond_2

    .line 236
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 237
    .local v2, "c":I
    invoke-static {p0}, Lcom/ahsim/demulation/GermanRomAddressMap;->isExactGerman([B)Z

    move-result v3

    .line 238
    .local v3, "german":Z
    const/16 v4, 0x20

    if-lt v2, v4, :cond_1

    if-nez v3, :cond_0

    const/16 v4, 0x7e

    if-gt v2, v4, :cond_1

    .line 240
    :cond_0
    nop

    .end local v2    # "c":I
    .end local v3    # "german":Z
    add-int/lit8 v0, v0, 0x1

    .line 241
    goto :goto_0

    .line 239
    .restart local v2    # "c":I
    .restart local v3    # "german":Z
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Mentat join text contains an invalid character"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 242
    .end local v2    # "c":I
    .end local v3    # "german":Z
    :cond_2
    if-ge v0, v1, :cond_3

    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 243
    sub-int v2, v0, p1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [B

    .line 244
    .local v2, "out":[B
    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {p0, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    return-object v2

    .line 242
    .end local v2    # "out":[B
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Mentat join text is unterminated"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 232
    .end local v0    # "end":I
    .end local v1    # "limit":I
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mentat join-text pointer outside ROM"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static s16([BI)I
    .locals 2
    .param p0, "rom"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    invoke-static {p0, p1}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->be16([BI)I

    move-result v0

    .line 415
    .local v0, "v":I
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/high16 v1, 0x10000

    sub-int v1, v0, v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method private static safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "root"    # Ljava/io/File;
    .param p1, "relativePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 396
    .local v0, "child":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .local v1, "rp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 397
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

    .line 398
    return-object v0

    .line 397
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unsafe Mentat output path"

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

    .line 447
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 448
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 449
    .local v1, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 450
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

    .line 451
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 452
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "hash":[B
    .end local v2    # "out":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 is unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
