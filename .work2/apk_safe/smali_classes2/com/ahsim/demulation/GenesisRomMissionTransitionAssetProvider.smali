.class public final Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;
.super Ljava/lang/Object;
.source "GenesisRomMissionTransitionAssetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;,
        Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;,
        Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;,
        Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Geometry;
    }
.end annotation


# static fields
.field private static final BANNER_PALETTE:I = 0xa3dc

.field private static final BANNER_PATTERN_BASE:I = 0x580

.field private static final COMPONENT_BYTE_REMAP:I = 0x24082

.field private static final COMPONENT_HEIGHT:I = 0x24062

.field private static final COMPONENT_TILE_COUNT:I = 0x96304

.field private static final COMPONENT_WIDTH:I = 0x24042

.field private static final FOCUS_PALETTE_OFFSET_TABLE:I = 0x95cf8

.field private static final FRONTEND_TO_ROM_HOUSE:[I

.field private static final HOUSE_COMPONENT_PTRS:I = 0x95f6c

.field private static final HOUSE_DESCRIPTOR_PTRS:I = 0x962dc

.field private static final HOUSE_PATTERN_BYTES:I = 0x986e6

.field private static final LOSS_BANNER_GFX:I = 0x9ddc

.field private static final LOSS_BANNER_LAYOUT:I = 0x9d9c

.field private static final MAX_ROM_BYTES:I = 0x1000000

.field private static final MISSION_MAP_RECORD_PTRS:I = 0x96050

.field private static final STATIC_COMPONENT_STREAM:I = 0x95d00

.field private static final STATIC_DESCRIPTOR_PTRS:I = 0x96158

.field private static final STATIC_PATTERN_BYTES:I = 0x96324

.field private static final WIN_BANNER_GFX:I = 0xa07c

.field private static final WIN_BANNER_LAYOUT:I = 0x9db6

.field private static final ZOOM_PIECE_STRIDE:I = 0xfc

.field private static final ZOOM_RECORD_BYTES:I = 0xc

.field private static final ZOOM_TABLE:I = 0x24b8e


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->FRONTEND_TO_ROM_HOUSE:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 88
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

    .line 337
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->checkRange([BII)V

    .line 338
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

    .line 342
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->checkRange([BII)V

    .line 343
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

.method private static buildGeometry([BI)Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Geometry;
    .locals 19
    .param p0, "rom"    # [B
    .param p1, "descriptorPointerTable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    move-object/from16 v0, p0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 184
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 185
    .local v2, "out":Ljava/io/DataOutputStream;
    const/4 v3, 0x4

    new-array v4, v3, [B

    fill-array-data v4, :array_0

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 186
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 187
    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 188
    const/4 v6, 0x0

    .line 189
    .local v6, "tileIndex":I
    const/4 v7, 0x0

    .local v7, "slot":I
    :goto_0
    if-ge v7, v5, :cond_4

    .line 190
    mul-int/lit8 v8, v7, 0x4

    add-int v8, p1, v8

    invoke-static {v0, v8}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->be32([BI)I

    move-result v8

    .line 191
    .local v8, "descriptor":I
    invoke-static {v0, v8}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->s16([BI)I

    move-result v9

    .line 192
    .local v9, "x":I
    add-int/lit8 v10, v8, 0x2

    invoke-static {v0, v10}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->s16([BI)I

    move-result v10

    .line 193
    .local v10, "y":I
    add-int/lit8 v11, v8, 0x4

    invoke-static {v0, v11}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->be16([BI)I

    move-result v11

    .line 194
    .local v11, "code":I
    add-int/lit8 v8, v8, 0x6

    .line 196
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move v15, v6

    move v13, v9

    move v14, v10

    .line 198
    .end local v6    # "tileIndex":I
    .end local v9    # "x":I
    .end local v10    # "y":I
    .local v12, "components":Ljava/util/List;, "Ljava/util/List<[I>;"
    .local v13, "x":I
    .local v14, "y":I
    .local v15, "tileIndex":I
    :goto_1
    const v6, 0x24042

    invoke-static {v0, v6}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v6

    mul-int/lit8 v9, v11, 0x2

    add-int/2addr v6, v9

    invoke-static {v0, v6}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->be16([BI)I

    move-result v6

    add-int/2addr v6, v4

    .line 199
    .local v6, "tilesWide":I
    const v9, 0x24062

    invoke-static {v0, v9}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v9

    mul-int/lit8 v10, v11, 0x2

    add-int/2addr v9, v10

    invoke-static {v0, v9}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->be16([BI)I

    move-result v9

    add-int/2addr v9, v4

    .line 200
    .local v9, "tilesHigh":I
    const v10, 0x96304

    invoke-static {v0, v10}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v10

    mul-int/lit8 v16, v11, 0x2

    add-int v10, v10, v16

    invoke-static {v0, v10}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->be16([BI)I

    move-result v10

    .line 201
    .local v10, "tileCount":I
    if-lt v6, v4, :cond_3

    if-lt v9, v4, :cond_3

    if-lt v10, v4, :cond_3

    .line 203
    move/from16 v16, v6

    move/from16 v17, v9

    move/from16 v18, v10

    .end local v6    # "tilesWide":I
    .end local v9    # "tilesHigh":I
    .end local v10    # "tileCount":I
    .local v16, "tilesWide":I
    .local v17, "tilesHigh":I
    .local v18, "tileCount":I
    filled-new-array/range {v13 .. v18}, [I

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    add-int v15, v15, v18

    .line 205
    invoke-static {v0, v8}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->be32([BI)I

    move-result v6

    if-nez v6, :cond_1

    .line 212
    .end local v16    # "tilesWide":I
    .end local v17    # "tilesHigh":I
    .end local v18    # "tileCount":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 213
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    .line 214
    .local v9, "c":[I
    const/4 v10, 0x0

    aget v10, v9, v10

    invoke-virtual {v2, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 215
    aget v10, v9, v4

    invoke-virtual {v2, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 216
    const/4 v10, 0x2

    aget v10, v9, v10

    invoke-virtual {v2, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 217
    const/4 v10, 0x3

    aget v10, v9, v10

    invoke-virtual {v2, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 218
    aget v10, v9, v3

    invoke-virtual {v2, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 219
    const/4 v10, 0x5

    aget v10, v9, v10

    invoke-virtual {v2, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 220
    .end local v9    # "c":[I
    goto :goto_2

    .line 189
    .end local v8    # "descriptor":I
    .end local v11    # "code":I
    .end local v12    # "components":Ljava/util/List;, "Ljava/util/List<[I>;"
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    move v6, v15

    goto/16 :goto_0

    .line 206
    .restart local v8    # "descriptor":I
    .restart local v11    # "code":I
    .restart local v12    # "components":Ljava/util/List;, "Ljava/util/List<[I>;"
    .restart local v13    # "x":I
    .restart local v14    # "y":I
    .restart local v16    # "tilesWide":I
    .restart local v17    # "tilesHigh":I
    .restart local v18    # "tileCount":I
    :cond_1
    invoke-static {v0, v8}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->s16([BI)I

    move-result v6

    add-int/2addr v13, v6

    .line 207
    add-int/lit8 v6, v8, 0x2

    invoke-static {v0, v6}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->s16([BI)I

    move-result v6

    add-int/2addr v14, v6

    .line 208
    add-int/lit8 v6, v8, 0x4

    invoke-static {v0, v6}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->be16([BI)I

    move-result v11

    .line 209
    add-int/lit8 v8, v8, 0x6

    .line 210
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    const/16 v9, 0x20

    if-gt v6, v9, :cond_2

    .line 211
    .end local v16    # "tilesWide":I
    .end local v17    # "tilesHigh":I
    .end local v18    # "tileCount":I
    goto/16 :goto_1

    .line 210
    .restart local v16    # "tilesWide":I
    .restart local v17    # "tilesHigh":I
    .restart local v18    # "tileCount":I
    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Campaign descriptor-chain guard"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 201
    .end local v16    # "tilesWide":I
    .end local v17    # "tilesHigh":I
    .end local v18    # "tileCount":I
    .restart local v6    # "tilesWide":I
    .local v9, "tilesHigh":I
    .restart local v10    # "tileCount":I
    :cond_3
    move/from16 v16, v6

    move/from16 v17, v9

    move/from16 v18, v10

    .line 202
    .end local v6    # "tilesWide":I
    .end local v9    # "tilesHigh":I
    .end local v10    # "tileCount":I
    .restart local v16    # "tilesWide":I
    .restart local v17    # "tilesHigh":I
    .restart local v18    # "tileCount":I
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid campaign component geometry"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 222
    .end local v7    # "slot":I
    .end local v8    # "descriptor":I
    .end local v11    # "code":I
    .end local v12    # "components":Ljava/util/List;, "Ljava/util/List<[I>;"
    .end local v13    # "x":I
    .end local v14    # "y":I
    .end local v15    # "tileIndex":I
    .end local v16    # "tilesWide":I
    .end local v17    # "tilesHigh":I
    .end local v18    # "tileCount":I
    .local v6, "tileIndex":I
    :cond_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 223
    new-instance v3, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Geometry;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4, v6}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Geometry;-><init>([BI)V

    return-object v3

    :array_0
    .array-data 1
        0x44t
        0x4dt
        0x50t
        0x47t
    .end array-data
.end method

.method private static buildHouseModes([B)[B
    .locals 7
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x21c

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 229
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .local v1, "frontendHouse":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 230
    sget-object v2, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->FRONTEND_TO_ROM_HOUSE:[I

    aget v2, v2, v1

    .line 231
    .local v2, "romHouse":I
    const v3, 0x95f6c

    invoke-static {p0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v3

    mul-int/lit8 v4, v2, 0x4

    add-int/2addr v3, v4

    invoke-static {p0, v3}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->be32([BI)I

    move-result v3

    .line 232
    .local v3, "table":I
    const/4 v4, 0x0

    .local v4, "mission":I
    :goto_1
    const/16 v5, 0x9

    if-ge v4, v5, :cond_0

    .line 233
    mul-int/lit8 v5, v4, 0x14

    add-int/2addr v5, v3

    const/16 v6, 0x14

    invoke-static {p0, v5, v6}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->copy([BII)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 232
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 229
    .end local v2    # "romHouse":I
    .end local v3    # "table":I
    .end local v4    # "mission":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    .end local v1    # "frontendHouse":I
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private static buildMissionRecords([B)[B
    .locals 7
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xd8

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 241
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .local v1, "frontendHouse":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 242
    sget-object v2, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->FRONTEND_TO_ROM_HOUSE:[I

    aget v2, v2, v1

    .line 243
    .local v2, "romHouse":I
    const v3, 0x96050

    invoke-static {p0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v3

    mul-int/lit8 v4, v2, 0x4

    add-int/2addr v3, v4

    invoke-static {p0, v3}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->be32([BI)I

    move-result v3

    .line 244
    .local v3, "table":I
    const/4 v4, 0x0

    .local v4, "mission":I
    :goto_1
    const/16 v5, 0x9

    if-ge v4, v5, :cond_0

    .line 245
    mul-int/lit8 v5, v4, 0x8

    add-int/2addr v5, v3

    const/16 v6, 0x8

    invoke-static {p0, v5, v6}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->copy([BII)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 244
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 241
    .end local v2    # "romHouse":I
    .end local v3    # "table":I
    .end local v4    # "mission":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    .end local v1    # "frontendHouse":I
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private static buildZoomRecords([B)[B
    .locals 5
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x780

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 253
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .local v1, "piece":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 254
    const/4 v2, 0x0

    .local v2, "frame":I
    :goto_1
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 255
    const v3, 0x24b8e

    invoke-static {p0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v3

    mul-int/lit16 v4, v1, 0xfc

    add-int/2addr v3, v4

    mul-int/lit8 v4, v2, 0xc

    add-int/2addr v3, v4

    .line 256
    .local v3, "source":I
    const/16 v4, 0xc

    invoke-static {p0, v3, v4}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->copy([BII)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 254
    .end local v3    # "source":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 253
    .end local v2    # "frame":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    .end local v1    # "piece":I
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
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

    .line 348
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 349
    return-void

    .line 348
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mission/campaign ROM range"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static copy([BII)[B
    .locals 1
    .param p0, "rom"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->checkRange([BII)V

    .line 289
    add-int v0, p1, p2

    invoke-static {p0, p1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method private static copyBannerLayout([BI)[B
    .locals 3
    .param p0, "rom"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    invoke-static {p0, p1}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->be16([BI)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 283
    .local v0, "pieces":I
    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 284
    mul-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0x2

    invoke-static {p0, p1, v1}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->copy([BII)[B

    move-result-object v1

    return-object v1

    .line 283
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected mission-banner piece count"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static decodeAssets([B)Ljava/util/List;
    .locals 6
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;>;"
    new-instance v1, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;

    .line 146
    const v2, 0xa3dc

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    const/16 v3, 0x80

    invoke-static {p0, v2, v3}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->copy([BII)[B

    move-result-object v2

    const-string v3, "frontend/mission_sequence/banner_palette.bin"

    invoke-direct {v1, v3, v2}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 145
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v1, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;

    .line 148
    const v2, 0x9ddc

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    const v3, 0x9d9c

    invoke-static {p0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v4

    invoke-static {p0, v4}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->usedBannerPatternBytes([BI)I

    move-result v4

    invoke-static {p0, v2, v4}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->copy([BII)[B

    move-result-object v2

    const-string v4, "frontend/mission_sequence/loss_banner_patterns.bin"

    invoke-direct {v1, v4, v2}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 147
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v1, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;

    .line 150
    invoke-static {p0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->copyBannerLayout([BI)[B

    move-result-object v2

    const-string v3, "frontend/mission_sequence/loss_banner_layout.bin"

    invoke-direct {v1, v3, v2}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 149
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v1, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;

    .line 152
    const v2, 0xa07c

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    const v3, 0x9db6

    invoke-static {p0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v4

    invoke-static {p0, v4}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->usedBannerPatternBytes([BI)I

    move-result v4

    invoke-static {p0, v2, v4}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->copy([BII)[B

    move-result-object v2

    const-string v4, "frontend/mission_sequence/win_banner_patterns.bin"

    invoke-direct {v1, v4, v2}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 151
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v1, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;

    .line 154
    invoke-static {p0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->copyBannerLayout([BI)[B

    move-result-object v2

    const-string v3, "frontend/mission_sequence/win_banner_layout.bin"

    invoke-direct {v1, v3, v2}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 153
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    const v1, 0x96158

    invoke-static {p0, v1}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v1

    invoke-static {p0, v1}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->buildGeometry([BI)Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Geometry;

    move-result-object v1

    .line 157
    .local v1, "staticGeometry":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Geometry;
    const v2, 0x962dc

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->buildGeometry([BI)Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Geometry;

    move-result-object v2

    .line 158
    .local v2, "houseGeometry":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Geometry;
    new-instance v3, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;

    const-string v4, "frontend/campaign_transition/static_geometry.bin"

    iget-object v5, v1, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Geometry;->bytes:[B

    invoke-direct {v3, v4, v5}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v3, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;

    const-string v4, "frontend/campaign_transition/house_geometry.bin"

    iget-object v5, v2, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Geometry;->bytes:[B

    invoke-direct {v3, v4, v5}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v3, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;

    .line 161
    const v4, 0x96324

    invoke-static {p0, v4}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v4

    iget v5, v1, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Geometry;->tileCount:I

    mul-int/lit8 v5, v5, 0x20

    invoke-static {p0, v4, v5}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->copy([BII)[B

    move-result-object v4

    const-string v5, "frontend/campaign_transition/static_patterns.bin"

    invoke-direct {v3, v5, v4}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 160
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v3, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;

    .line 163
    const v4, 0x986e6

    invoke-static {p0, v4}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v4

    iget v5, v2, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Geometry;->tileCount:I

    mul-int/lit8 v5, v5, 0x20

    invoke-static {p0, v4, v5}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->copy([BII)[B

    move-result-object v4

    const-string v5, "frontend/campaign_transition/house_patterns.bin"

    invoke-direct {v3, v5, v4}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 162
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v3, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;

    .line 165
    const v4, 0x95d00

    invoke-static {p0, v4}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v4

    const/16 v5, 0x14

    invoke-static {p0, v4, v5}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->copy([BII)[B

    move-result-object v4

    const-string v5, "frontend/campaign_transition/static_modes.bin"

    invoke-direct {v3, v5, v4}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 164
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v3, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;

    const-string v4, "frontend/campaign_transition/house_modes.bin"

    invoke-static {p0}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->buildHouseModes([B)[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v3, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;

    const-string v4, "frontend/campaign_transition/mission_records.bin"

    invoke-static {p0}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->buildMissionRecords([B)[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v3, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;

    .line 169
    const v4, 0x24082

    invoke-static {p0, v4}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v4

    const/16 v5, 0x100

    invoke-static {p0, v4, v5}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->copy([BII)[B

    move-result-object v4

    const-string v5, "frontend/campaign_transition/byte_remap.bin"

    invoke-direct {v3, v5, v4}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 168
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v3, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;

    const-string v4, "frontend/campaign_transition/zoom_records.bin"

    invoke-static {p0}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->buildZoomRecords([B)[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v3, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;

    .line 172
    const v4, 0x95cf8

    invoke-static {p0, v4}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v4

    const/16 v5, 0x8

    invoke-static {p0, v4, v5}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->copy([BII)[B

    move-result-object v4

    const-string v5, "frontend/campaign_transition/focus_palette_offsets.bin"

    invoke-direct {v3, v5, v4}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 171
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    return-object v0
.end method

.method public static deleteRecursively(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 353
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 355
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 356
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
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

    .line 358
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

    .line 359
    :cond_4
    :goto_1
    return-void

    .line 352
    :cond_5
    :goto_2
    return-void
.end method

.method public static extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    .local v0, "input":Ljava/io/InputStream;
    .local v1, "knownRomSize":J
    .local v3, "stagingRoot":Ljava/io/File;
    .local v4, "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    invoke-static/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;

    move-result-object p0

    return-object p0
.end method

.method public static extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;
    .locals 17
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    .param p5, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    move-object/from16 v6, p3

    move-object/from16 v8, p4

    if-eqz p0, :cond_d

    .line 98
    if-eqz v6, :cond_c

    .line 99
    const-wide/32 v0, 0x1000000

    cmp-long v0, p1, v0

    if-gtz v0, :cond_b

    .line 100
    invoke-static/range {p0 .. p2}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->readAll(Ljava/io/InputStream;J)[B

    move-result-object v9

    .line 101
    .local v9, "rom":[B
    array-length v0, v9

    const v1, 0xa4000

    if-lt v0, v1, :cond_a

    .line 103
    invoke-static {v9}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->decodeAssets([B)Ljava/util/List;

    move-result-object v10

    .line 104
    .local v10, "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;>;"
    invoke-static {}, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest;->entries()Ljava/util/List;

    move-result-object v11

    .line 105
    .local v11, "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 107
    invoke-static {v6}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 108
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not create mission/campaign staging directory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 112
    .local v0, "verified":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 114
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

    .line 115
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;

    move-object v3, v0

    .line 116
    .local v3, "asset":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;

    move-object v4, v0

    .line 117
    .local v4, "expected":Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;
    iget-object v0, v4, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;->relativePath:Ljava/lang/String;

    iget-object v7, v3, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;->path:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 119
    iget-object v0, v3, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;->path:Ljava/lang/String;

    iget-object v7, v3, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;->data:[B

    iget v12, v4, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;->length:I

    iget-object v13, v4, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;->sha256:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    move-object/from16 v14, p5

    :try_start_1
    invoke-static {v14, v0, v7, v12, v13}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->matchesExtracted(Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)Z

    move-result v0

    move v7, v0

    .line 121
    .local v7, "match":Z
    if-eqz v7, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, v3, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;->path:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    .line 123
    :goto_2
    :try_start_2
    iget-object v0, v3, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;->path:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object v12, v0

    .line 124
    .local v12, "out":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v13, v0

    .line 125
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

    .line 126
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v15, "Could not create mission/campaign asset directory"

    invoke-direct {v0, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "verified":I
    .end local v5    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "rom":[B
    .end local v10    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;>;"
    .end local v11    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;>;"
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    .end local p5    # "profileId":Ljava/lang/String;
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    .line 127
    .restart local v2    # "verified":I
    .restart local v5    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "rom":[B
    .restart local v10    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;>;"
    .restart local v11    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;>;"
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
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

    .line 128
    .local v15, "stream":Ljava/io/FileOutputStream;
    :try_start_5
    iget-object v0, v3, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;->data:[B

    invoke-virtual {v15, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 129
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 130
    :try_start_6
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 131
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
    iget-object v2, v3, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;->path:Ljava/lang/String;

    invoke-interface {v8, v0, v15, v2}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;->onProgress(IILjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_4

    .end local v16    # "verified":I
    .restart local v2    # "verified":I
    :cond_5
    move/from16 v16, v2

    .line 114
    .end local v2    # "verified":I
    .end local v3    # "asset":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;
    .end local v4    # "expected":Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;
    .end local v7    # "match":Z
    .end local v12    # "out":Ljava/io/File;
    .end local v13    # "parent":Ljava/io/File;
    .restart local v16    # "verified":I
    :goto_4
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v16

    goto/16 :goto_1

    .line 127
    .end local v16    # "verified":I
    .restart local v2    # "verified":I
    .restart local v3    # "asset":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;
    .restart local v4    # "expected":Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;
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
    .end local v10    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;>;"
    .end local v11    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;>;"
    .end local v16    # "verified":I
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    .end local p5    # "profileId":Ljava/lang/String;
    :goto_5
    throw v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 136
    .end local v1    # "i":I
    .end local v3    # "asset":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;
    .end local v4    # "expected":Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;
    .end local v7    # "match":Z
    .end local v12    # "out":Ljava/io/File;
    .end local v13    # "parent":Ljava/io/File;
    .end local v15    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "rom":[B
    .restart local v10    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;>;"
    .restart local v11    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;>;"
    .restart local v16    # "verified":I
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
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

    .line 118
    .end local v16    # "verified":I
    .restart local v1    # "i":I
    .restart local v2    # "verified":I
    .restart local v3    # "asset":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;
    .restart local v4    # "expected":Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;
    :cond_6
    move-object/from16 v14, p5

    :try_start_a
    new-instance v0, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mission/campaign manifest order mismatch at "

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
    .end local v10    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;>;"
    .end local v11    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;>;"
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    .end local p5    # "profileId":Ljava/lang/String;
    throw v0

    .line 114
    .end local v3    # "asset":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;
    .end local v4    # "expected":Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;
    .restart local v2    # "verified":I
    .restart local v5    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "rom":[B
    .restart local v10    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;>;"
    .restart local v11    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;>;"
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$ProgressListener;
    .restart local p5    # "profileId":Ljava/lang/String;
    :cond_7
    move-object/from16 v14, p5

    .line 133
    .end local v1    # "i":I
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v6}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 134
    :cond_8
    new-instance v0, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {}, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest;->payloadBytes()J

    move-result-wide v3

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Result;-><init>(IIJLjava/util/List;Ljava/io/File;Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider-IA;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4

    return-object v0

    .line 136
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

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    :goto_9
    invoke-static/range {p3 .. p3}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 138
    throw v0

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "verified":I
    .end local v5    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    move-object/from16 v14, p5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mission/campaign manifest/generator count mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    .end local v10    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;>;"
    .end local v11    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;>;"
    :cond_a
    move-object/from16 v14, p5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is too small for mission/campaign resources"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    .end local v9    # "rom":[B
    :cond_b
    move-object/from16 v14, p5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is unexpectedly large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_c
    move-object/from16 v14, p5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mission/campaign staging directory is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_d
    move-object/from16 v14, p5

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

    .line 293
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

    .line 294
    .local v0, "initial":I
    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 295
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    const/high16 v2, 0x10000

    new-array v2, v2, [B

    .line 296
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 298
    .local v3, "total":I
    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 299
    .local v4, "got":I
    if-gez v4, :cond_1

    .line 305
    .end local v4    # "got":I
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 300
    .restart local v4    # "got":I
    :cond_1
    if-nez v4, :cond_2

    goto :goto_1

    .line 301
    :cond_2
    add-int/2addr v3, v4

    .line 302
    const/high16 v5, 0x1000000

    if-gt v3, v5, :cond_3

    .line 303
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 304
    .end local v4    # "got":I
    goto :goto_1

    .line 302
    .restart local v4    # "got":I
    :cond_3
    new-instance v5, Ljava/io/IOException;

    const-string v6, "ROM exceeds maximum supported size"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static s16([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "o"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    invoke-static {p0, p1}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->be16([BI)I

    move-result v0

    .line 333
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

    .line 309
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    const-string v0, "\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 312
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 313
    .local v0, "canonicalRoot":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 314
    .local v1, "child":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 316
    return-object v1

    .line 315
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Mission/campaign asset escapes staging root"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 311
    .end local v0    # "canonicalRoot":Ljava/io/File;
    .end local v1    # "child":Ljava/io/File;
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsafe mission/campaign asset path"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static sha256([B)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 322
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 323
    .local v1, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 324
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

    .line 325
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 326
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "hash":[B
    .end local v2    # "out":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static usedBannerPatternBytes([BI)I
    .locals 11
    .param p0, "rom"    # [B
    .param p1, "layoutOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    invoke-static {p0, p1}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->be16([BI)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 265
    .local v0, "pieces":I
    if-lt v0, v1, :cond_2

    const/16 v2, 0x8

    if-gt v0, v2, :cond_2

    .line 266
    const/16 v2, 0x580

    .line 267
    .local v2, "maxPatternExclusive":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 268
    add-int/lit8 v4, p1, 0x2

    mul-int/lit8 v5, v3, 0xc

    add-int/2addr v4, v5

    .line 269
    .local v4, "p":I
    const/16 v5, 0xc

    invoke-static {p0, v4, v5}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->checkRange([BII)V

    .line 270
    add-int/lit8 v5, v4, 0x6

    invoke-static {p0, v5}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->be16([BI)I

    move-result v5

    .line 271
    .local v5, "size":I
    add-int/lit8 v6, v4, 0x8

    invoke-static {p0, v6}, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;->be16([BI)I

    move-result v6

    .line 272
    .local v6, "attr":I
    ushr-int/lit8 v7, v5, 0xa

    and-int/lit8 v7, v7, 0x3

    add-int/2addr v7, v1

    .line 273
    .local v7, "tilesWide":I
    ushr-int/lit8 v8, v5, 0x8

    and-int/lit8 v8, v8, 0x3

    add-int/2addr v8, v1

    .line 274
    .local v8, "tilesHigh":I
    and-int/lit16 v9, v6, 0x7ff

    .line 275
    .local v9, "first":I
    const/16 v10, 0x580

    if-lt v9, v10, :cond_0

    .line 276
    mul-int v10, v7, v8

    add-int/2addr v10, v9

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 267
    .end local v4    # "p":I
    .end local v5    # "size":I
    .end local v6    # "attr":I
    .end local v7    # "tilesWide":I
    .end local v8    # "tilesHigh":I
    .end local v9    # "first":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 275
    .restart local v4    # "p":I
    .restart local v5    # "size":I
    .restart local v6    # "attr":I
    .restart local v7    # "tilesWide":I
    .restart local v8    # "tilesHigh":I
    .restart local v9    # "first":I
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v10, "Mission-banner pattern base mismatch"

    invoke-direct {v1, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    .end local v3    # "i":I
    .end local v4    # "p":I
    .end local v5    # "size":I
    .end local v6    # "attr":I
    .end local v7    # "tilesWide":I
    .end local v8    # "tilesHigh":I
    .end local v9    # "first":I
    :cond_1
    add-int/lit16 v1, v2, -0x580

    mul-int/lit8 v1, v1, 0x20

    return v1

    .line 265
    .end local v2    # "maxPatternExclusive":I
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected mission-banner piece count"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
