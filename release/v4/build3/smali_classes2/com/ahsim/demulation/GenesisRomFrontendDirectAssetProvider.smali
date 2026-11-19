.class public final Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;
.super Ljava/lang/Object;
.source "GenesisRomFrontendDirectAssetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;,
        Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;,
        Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$Result;
    }
.end annotation


# static fields
.field private static final HOUSE_CURSOR_LAYOUT:I = 0x6434e

.field private static final HOUSE_CURSOR_PATTERNS:I = 0x6424e

.field private static final MAX_DECOMPRESSED:I = 0x10000

.field private static final MAX_ROM_BYTES:I = 0x1000000

.field private static final OPTIONS_FONT:I = 0x50c34

.field private static final OPTIONS_PALETTE:I = 0xa6b98

.field private static final PATTERN_BYTES:I = 0x20

.field private static final SEGA_GRADIENT:I = 0x18d6

.field private static final SEGA_MAP_STREAM:I = 0x1d2a

.field private static final SEGA_PALETTE:I = 0x1da4

.field private static final SEGA_PATTERN_TABLE:I = 0x18ce

.field private static final SHIP_LAYOUT_TABLE:I = 0x1957a

.field private static final SHIP_PALETTE:I = 0xa6e98

.field private static final SHIP_PATTERN_TABLE:I = 0x17f2e

.field private static final SHIP_SCRIPT_TABLE:I = 0x1963a

.field private static final TITLE_FONT_STREAM:I = 0x506ca

.field private static final TITLE_LOGO_REPLACEMENT_PALETTE:I = 0xa6e38

.field private static final TITLE_STRINGS:I = 0x173f4

.field private static final TITLE_STRINGS_BYTES:I = 0x24


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 76
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

    .line 323
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->checkRange([BII)V

    .line 324
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

    .line 328
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->checkRange([BII)V

    .line 329
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

    .line 336
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 339
    return-void

    .line 337
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM direct frontend range outside file"

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

    .line 316
    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->checkRange([BII)V

    .line 317
    new-array v0, p2, [B

    .line 318
    .local v0, "out":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    return-object v0
.end method

.method private static decodeAssets([B)Ljava/util/List;
    .locals 8
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;>;"
    new-instance v1, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;

    const v2, 0x506ca

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->decompress([BI)[B

    move-result-object v2

    const-string v3, "frontend/direct/title_font.bin"

    invoke-direct {v1, v3, v2}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v1, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;

    const v2, 0x50c34

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    const/16 v3, 0x1000

    invoke-static {p0, v2, v3}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->copy([BII)[B

    move-result-object v2

    const-string v3, "frontend/direct/options_font.bin"

    invoke-direct {v1, v3, v2}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v1, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;

    .line 158
    const v2, 0xa6e38

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    const/16 v3, 0x60

    invoke-static {p0, v2, v3}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->copy([BII)[B

    move-result-object v2

    const-string v4, "frontend/direct/title_logo_replacement_palette.bin"

    invoke-direct {v1, v4, v2}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 157
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v1, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;

    const v2, 0xa6b98

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    const/16 v4, 0x80

    invoke-static {p0, v2, v4}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->copy([BII)[B

    move-result-object v2

    const-string v5, "frontend/direct/options_palette.bin"

    invoke-direct {v1, v5, v2}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v1, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;

    const v2, 0x6424e

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    const/16 v5, 0x100

    invoke-static {p0, v2, v5}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->copy([BII)[B

    move-result-object v2

    const-string v5, "frontend/direct/house_cursor_patterns.bin"

    invoke-direct {v1, v5, v2}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    const v1, 0x6434e

    invoke-static {p0, v1}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->be16([BI)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 162
    .local v2, "cursorCount":I
    if-lez v2, :cond_2

    const/16 v5, 0x20

    if-gt v2, v5, :cond_2

    .line 163
    new-instance v5, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;

    .line 164
    invoke-static {p0, v1}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v1

    mul-int/lit8 v6, v2, 0xc

    add-int/lit8 v6, v6, 0x2

    invoke-static {p0, v1, v6}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->copy([BII)[B

    move-result-object v1

    const-string v6, "frontend/direct/house_cursor_layout.bin"

    invoke-direct {v5, v6, v1}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 163
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v1, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;

    .line 167
    const v5, 0x173f4

    invoke-static {p0, v5}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v5

    const/16 v6, 0x24

    invoke-static {p0, v5, v6}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->copy([BII)[B

    move-result-object v5

    const-string v6, "frontend/direct/title_strings.bin"

    invoke-direct {v1, v6, v5}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 166
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v1, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;

    const/16 v5, 0x18ce

    invoke-static {p0, v5}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v5

    invoke-static {p0, v5}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->decodePatternTable([BI)[B

    move-result-object v5

    const-string v6, "frontend/direct/sega_patterns.bin"

    invoke-direct {v1, v6, v5}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v1, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;

    const/16 v5, 0x1d2a

    invoke-static {p0, v5}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v5

    invoke-static {p0, v5}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->decompress([BI)[B

    move-result-object v5

    const-string v6, "frontend/direct/sega_map.bin"

    invoke-direct {v1, v6, v5}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v1, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;

    const/16 v5, 0x1da4

    invoke-static {p0, v5}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v5

    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->copy([BII)[B

    move-result-object v4

    const-string v5, "frontend/direct/sega_palette.bin"

    invoke-direct {v1, v5, v4}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v1, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;

    const/16 v4, 0x18d6

    invoke-static {p0, v4}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v4

    const/16 v5, 0x3e

    invoke-static {p0, v4, v5}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->copy([BII)[B

    move-result-object v4

    const-string v5, "frontend/direct/sega_gradient.bin"

    invoke-direct {v1, v5, v4}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v1, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;

    const v4, 0x17f2e

    invoke-static {p0, v4}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v4

    invoke-static {p0, v4}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->decodePatternTable([BI)[B

    move-result-object v4

    const-string v5, "frontend/direct/ship_patterns.bin"

    invoke-direct {v1, v5, v4}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v1, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;

    const v4, 0xa6e98

    invoke-static {p0, v4}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v4

    invoke-static {p0, v4, v3}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->copy([BII)[B

    move-result-object v3

    const-string v4, "frontend/direct/ship_palette.bin"

    invoke-direct {v1, v4, v3}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    const/4 v1, 0x0

    .local v1, "type":I
    :goto_0
    const-string v3, "frontend/direct/ship"

    const/4 v4, 0x3

    if-ge v1, v4, :cond_0

    .line 177
    new-instance v4, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_layouts.bin"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-static {p0, v1}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->decodeShipLayouts([BI)[B

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 177
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .end local v1    # "type":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "type":I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 181
    new-instance v5, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_script.bin"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 182
    invoke-static {p0, v1}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->decodeShipScript([BI)[B

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;-><init>(Ljava/lang/String;[B)V

    .line 181
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 184
    .end local v1    # "type":I
    :cond_1
    return-object v0

    .line 162
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v3, "House cursor layout count is invalid"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static decodePatternTable([BI)[B
    .locals 13
    .param p0, "rom"    # [B
    .param p1, "tableOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    move v0, p1

    .line 219
    .local v0, "p":I
    const/4 v1, 0x0

    .line 220
    .local v1, "total":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v2, "flagsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v3, "pointers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->be16([BI)I

    move-result v4

    .line 224
    .local v4, "flags":I
    const/high16 v5, 0x10000

    if-nez v4, :cond_3

    .line 233
    .end local v4    # "flags":I
    new-array v4, v1, [B

    .line 234
    .local v4, "result":[B
    new-array v5, v5, [B

    .line 235
    .local v5, "scratch":[B
    const/4 v6, 0x0

    .line 236
    .local v6, "dst":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 237
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 238
    .local v8, "flags":I
    and-int/lit16 v9, v8, 0x7fff

    mul-int/lit8 v9, v9, 0x20

    .line 239
    .local v9, "bytes":I
    const v10, 0x8000

    and-int/2addr v10, v8

    if-eqz v10, :cond_1

    .line 240
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {p0, v10}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->decompress([BI)[B

    move-result-object v10

    .line 241
    .local v10, "decoded":[B
    array-length v11, v10

    if-eqz v11, :cond_0

    .line 242
    array-length v11, v10

    const/4 v12, 0x0

    invoke-static {v10, v12, v5, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    invoke-static {v5, v12, v4, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    .end local v10    # "decoded":[B
    goto :goto_2

    .line 241
    .restart local v10    # "decoded":[B
    :cond_0
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Empty direct pattern stream"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 245
    .end local v10    # "decoded":[B
    :cond_1
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {p0, v10, v9}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->checkRange([BII)V

    .line 246
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {p0, v10, v4, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    :goto_2
    add-int/2addr v6, v9

    .line 236
    .end local v8    # "flags":I
    .end local v9    # "bytes":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 250
    .end local v7    # "i":I
    :cond_2
    return-object v4

    .line 225
    .end local v5    # "scratch":[B
    .end local v6    # "dst":I
    .local v4, "flags":I
    :cond_3
    add-int/lit8 v6, v0, 0x2

    invoke-static {p0, v6}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->be32([BI)I

    move-result v6

    invoke-static {v6}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->u24(I)I

    move-result v6

    .line 226
    .local v6, "pointer":I
    add-int/lit8 v0, v0, 0x6

    .line 227
    and-int/lit16 v7, v4, 0x7fff

    mul-int/lit8 v7, v7, 0x20

    .line 228
    .local v7, "bytes":I
    if-lez v7, :cond_4

    add-int v8, v1, v7

    if-gt v8, v5, :cond_4

    .line 229
    add-int/2addr v1, v7

    .line 230
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    .end local v4    # "flags":I
    .end local v6    # "pointer":I
    .end local v7    # "bytes":I
    goto/16 :goto_0

    .line 228
    .restart local v4    # "flags":I
    .restart local v6    # "pointer":I
    .restart local v7    # "bytes":I
    :cond_4
    new-instance v5, Ljava/io/IOException;

    const-string v8, "Direct pattern table overrun"

    invoke-direct {v5, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
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

    .line 84
    .local p1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 85
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 86
    .local v0, "selected":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[B>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 87
    .local v1, "wanted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->decodeAssets([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;

    .line 88
    .local v3, "asset":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;
    iget-object v4, v3, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;->path:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;->path:Ljava/lang/String;

    iget-object v5, v3, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;->data:[B

    invoke-virtual {v5}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-virtual {v0, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .end local v3    # "asset":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;
    :cond_0
    goto :goto_0

    .line 90
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

    .line 91
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 92
    .end local v3    # "path":Ljava/lang/String;
    goto :goto_1

    .line 91
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

    .line 93
    .end local v3    # "path":Ljava/lang/String;
    :cond_3
    return-object v0

    .line 84
    .end local v0    # "selected":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[B>;"
    .end local v1    # "wanted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Localization decode arguments unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodeShipLayouts([BI)[B
    .locals 8
    .param p0, "rom"    # [B
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    const v0, 0x1957a

    invoke-static {p0, v0}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v0

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->be32([BI)I

    move-result v0

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->u24(I)I

    move-result v0

    .line 190
    .local v0, "frameTable":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 191
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, "frame":I
    :goto_0
    const/16 v3, 0xf

    if-ge v2, v3, :cond_1

    .line 192
    mul-int/lit8 v3, v2, 0x4

    add-int/2addr v3, v0

    invoke-static {p0, v3}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->be32([BI)I

    move-result v3

    invoke-static {v3}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->u24(I)I

    move-result v3

    .line 193
    .local v3, "layout":I
    invoke-static {p0, v3}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->be16([BI)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 194
    .local v4, "spriteCount":I
    if-lez v4, :cond_0

    const/16 v5, 0x40

    if-gt v4, v5, :cond_0

    .line 195
    mul-int/lit8 v5, v4, 0xc

    add-int/lit8 v5, v5, 0x2

    invoke-static {p0, v3, v5}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->copy([BII)[B

    move-result-object v5

    .line 196
    .local v5, "record":[B
    const/4 v6, 0x0

    array-length v7, v5

    invoke-virtual {v1, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 191
    .end local v3    # "layout":I
    .end local v4    # "spriteCount":I
    .end local v5    # "record":[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    .restart local v3    # "layout":I
    .restart local v4    # "spriteCount":I
    :cond_0
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Ship layout sprite count is invalid"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 198
    .end local v2    # "frame":I
    .end local v3    # "layout":I
    .end local v4    # "spriteCount":I
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method private static decodeShipScript([BI)[B
    .locals 7
    .param p0, "rom"    # [B
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    const v0, 0x1963a

    invoke-static {p0, v0}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v0

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->be32([BI)I

    move-result v0

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->u24(I)I

    move-result v0

    .line 204
    .local v0, "script":I
    move v1, v0

    .line 205
    .local v1, "p":I
    const/4 v2, 0x0

    .line 207
    .local v2, "guard":I
    :goto_0
    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/16 v4, 0x100

    if-gt v2, v4, :cond_3

    .line 208
    invoke-static {p0, v1}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->be16([BI)I

    move-result v4

    .local v4, "command":I
    add-int/lit8 v1, v1, 0x2

    .line 209
    if-nez v4, :cond_0

    .line 214
    .end local v4    # "command":I
    sub-int v3, v1, v0

    invoke-static {p0, v0, v3}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->copy([BII)[B

    move-result-object v3

    return-object v3

    .line 210
    .restart local v4    # "command":I
    :cond_0
    if-ne v4, v3, :cond_1

    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 211
    :cond_1
    const/4 v3, 0x2

    if-ne v4, v3, :cond_2

    .line 212
    :goto_1
    sub-int v3, v1, v0

    invoke-static {p0, v0, v3}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->checkRange([BII)V

    .line 213
    .end local v4    # "command":I
    goto :goto_0

    .line 211
    .restart local v4    # "command":I
    :cond_2
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown ship script command "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 207
    .end local v4    # "command":I
    :cond_3
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Ship script guard"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
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

    .line 254
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->checkRange([BII)V

    .line 255
    const/high16 v1, 0x10000

    new-array v1, v1, [B

    .line 256
    .local v1, "out":[B
    move v2, p1

    .local v2, "src":I
    const/4 v3, 0x0

    .local v3, "dst":I
    const/4 v4, 0x0

    .line 258
    .local v4, "guard":I
    :goto_0
    add-int/2addr v4, v0

    const v5, 0xf4240

    if-gt v4, v5, :cond_c

    .line 259
    invoke-static {p0, v2, v0}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->checkRange([BII)V

    .line 260
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "src":I
    .local v5, "src":I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 261
    .local v2, "c":I
    const/16 v6, 0x80

    if-ne v2, v6, :cond_0

    .line 286
    .end local v2    # "c":I
    new-array v0, v3, [B

    .line 287
    .local v0, "exact":[B
    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    return-object v0

    .line 262
    .end local v0    # "exact":[B
    .restart local v2    # "c":I
    :cond_0
    const/16 v6, 0x81

    if-lt v2, v6, :cond_1

    const/16 v6, 0xbf

    if-gt v2, v6, :cond_1

    .line 263
    and-int/lit8 v6, v2, 0x3f

    .local v6, "n":I
    invoke-static {p0, v5, v6}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->checkRange([BII)V

    invoke-static {v3, v6}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->ensureOut(II)V

    .line 264
    invoke-static {p0, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v6

    add-int/2addr v3, v6

    .line 265
    .end local v6    # "n":I
    move v2, v5

    goto/16 :goto_5

    :cond_1
    const/16 v6, 0x7f

    const/4 v7, 0x3

    if-gt v2, v6, :cond_4

    .line 266
    invoke-static {p0, v5, v0}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->checkRange([BII)V

    shl-int/lit8 v6, v2, 0x8

    add-int/lit8 v8, v5, 0x1

    .end local v5    # "src":I
    .local v8, "src":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xfff

    .line 267
    .local v5, "back":I
    shr-int/lit8 v6, v2, 0x4

    add-int/2addr v6, v7

    .restart local v6    # "n":I
    invoke-static {v3, v6}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->ensureOut(II)V

    .line 268
    if-lez v5, :cond_3

    if-gt v5, v3, :cond_3

    .line 269
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

    .line 270
    .end local v5    # "back":I
    .end local v6    # "n":I
    .end local v7    # "i":I
    :cond_2
    move v2, v8

    goto/16 :goto_5

    .line 268
    .restart local v5    # "back":I
    .restart local v6    # "n":I
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v7, "Direct frontend short-copy range"

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    .end local v6    # "n":I
    .end local v8    # "src":I
    .local v5, "src":I
    :cond_4
    const/16 v6, 0xfd

    if-gt v2, v6, :cond_7

    .line 271
    const/4 v6, 0x2

    invoke-static {p0, v5, v6}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->checkRange([BII)V

    and-int/lit8 v6, v2, 0x3f

    add-int/2addr v6, v7

    .line 272
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

    invoke-static {v3, v6}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->ensureOut(II)V

    .line 273
    if-ltz v7, :cond_6

    if-ge v7, v3, :cond_6

    .line 274
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

    .line 275
    .end local v6    # "n":I
    .end local v7    # "from":I
    move v2, v5

    goto :goto_5

    .line 273
    .restart local v6    # "n":I
    .restart local v7    # "from":I
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v8, "Direct frontend absolute-copy range"

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    .end local v6    # "n":I
    .end local v7    # "from":I
    :cond_7
    const/16 v6, 0xfe

    if-ne v2, v6, :cond_9

    .line 276
    invoke-static {p0, v5, v7}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->checkRange([BII)V

    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    .line 277
    .restart local v6    # "n":I
    add-int/lit8 v7, v5, 0x2

    aget-byte v7, p0, v7

    .local v7, "value":B
    add-int/lit8 v5, v5, 0x3

    invoke-static {v3, v6}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->ensureOut(II)V

    .line 278
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

    .line 279
    .end local v6    # "n":I
    .end local v7    # "value":B
    .end local v8    # "i":I
    .end local v9    # "dst":I
    .restart local v3    # "dst":I
    :cond_8
    move v2, v5

    goto :goto_5

    .line 280
    :cond_9
    const/4 v6, 0x4

    invoke-static {p0, v5, v6}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->checkRange([BII)V

    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    .line 281
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

    invoke-static {v3, v6}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->ensureOut(II)V

    .line 282
    if-ltz v7, :cond_b

    if-ge v7, v3, :cond_b

    .line 283
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

    .line 285
    .end local v5    # "src":I
    .end local v6    # "n":I
    .end local v7    # "from":I
    .local v2, "src":I
    :goto_5
    goto/16 :goto_0

    .line 282
    .local v2, "c":I
    .restart local v5    # "src":I
    .restart local v6    # "n":I
    .restart local v7    # "from":I
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v8, "Direct frontend long-copy range"

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    .end local v5    # "src":I
    .end local v6    # "n":I
    .end local v7    # "from":I
    .local v2, "src":I
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Direct frontend decompressor guard"

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

    .line 348
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 349
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 351
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 353
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

    .line 354
    :cond_3
    :goto_1
    return-void

    .line 348
    :cond_4
    :goto_2
    return-void
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

    .line 342
    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    const/high16 v0, 0x10000

    sub-int/2addr v0, p1

    if-gt p0, v0, :cond_0

    .line 345
    return-void

    .line 343
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Direct frontend decode output overrun"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$Result;
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    .local v0, "input":Ljava/io/InputStream;
    .local v1, "knownRomSize":J
    .local v3, "stagingRoot":Ljava/io/File;
    .local v4, "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    invoke-static/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$Result;

    move-result-object p0

    return-object p0
.end method

.method public static extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$Result;
    .locals 17
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    .param p5, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    move-object/from16 v6, p3

    move-object/from16 v8, p4

    if-eqz p0, :cond_d

    .line 104
    if-eqz v6, :cond_c

    .line 105
    const-wide/32 v0, 0x1000000

    cmp-long v0, p1, v0

    if-gtz v0, :cond_b

    .line 106
    invoke-static/range {p0 .. p2}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->readAll(Ljava/io/InputStream;J)[B

    move-result-object v9

    .line 107
    .local v9, "rom":[B
    array-length v0, v9

    const v1, 0xc8000

    if-lt v0, v1, :cond_a

    .line 109
    invoke-static {v9}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->decodeAssets([B)Ljava/util/List;

    move-result-object v10

    .line 110
    .local v10, "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;>;"
    invoke-static {}, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest;->entries()Ljava/util/List;

    move-result-object v11

    .line 111
    .local v11, "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 113
    invoke-static {v6}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 114
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not create direct frontend staging directory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 119
    .local v0, "verified":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 121
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

    .line 122
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;

    move-object v3, v0

    .line 123
    .local v3, "asset":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;

    move-object v4, v0

    .line 124
    .local v4, "expected":Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;
    iget-object v0, v4, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;->relativePath:Ljava/lang/String;

    iget-object v7, v3, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;->path:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 127
    iget-object v0, v3, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;->path:Ljava/lang/String;

    iget-object v7, v3, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;->data:[B

    iget v12, v4, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;->length:I

    iget-object v13, v4, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;->sha256:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    move-object/from16 v14, p5

    :try_start_1
    invoke-static {v14, v0, v7, v12, v13}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->matchesExtracted(Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)Z

    move-result v0

    move v7, v0

    .line 129
    .local v7, "match":Z
    if-eqz v7, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, v3, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;->path:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    .line 131
    :goto_2
    :try_start_2
    iget-object v0, v3, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;->path:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object v12, v0

    .line 132
    .local v12, "out":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v13, v0

    .line 133
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

    .line 134
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v15, "Could not create direct frontend asset directory"

    invoke-direct {v0, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "verified":I
    .end local v5    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "rom":[B
    .end local v10    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;>;"
    .end local v11    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;>;"
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    .end local p5    # "profileId":Ljava/lang/String;
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    .line 136
    .restart local v2    # "verified":I
    .restart local v5    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "rom":[B
    .restart local v10    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;>;"
    .restart local v11    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;>;"
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
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

    .line 137
    .local v15, "stream":Ljava/io/FileOutputStream;
    :try_start_5
    iget-object v0, v3, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;->data:[B

    invoke-virtual {v15, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 138
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 139
    :try_start_6
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 140
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
    iget-object v2, v3, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;->path:Ljava/lang/String;

    invoke-interface {v8, v0, v15, v2}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;->onProgress(IILjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_4

    .end local v16    # "verified":I
    .restart local v2    # "verified":I
    :cond_5
    move/from16 v16, v2

    .line 121
    .end local v2    # "verified":I
    .end local v3    # "asset":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;
    .end local v4    # "expected":Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;
    .end local v7    # "match":Z
    .end local v12    # "out":Ljava/io/File;
    .end local v13    # "parent":Ljava/io/File;
    .restart local v16    # "verified":I
    :goto_4
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v16

    goto/16 :goto_1

    .line 136
    .end local v16    # "verified":I
    .restart local v2    # "verified":I
    .restart local v3    # "asset":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;
    .restart local v4    # "expected":Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;
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
    .end local v10    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;>;"
    .end local v11    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;>;"
    .end local v16    # "verified":I
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    .end local p5    # "profileId":Ljava/lang/String;
    :goto_5
    throw v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 147
    .end local v1    # "i":I
    .end local v3    # "asset":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;
    .end local v4    # "expected":Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;
    .end local v7    # "match":Z
    .end local v12    # "out":Ljava/io/File;
    .end local v13    # "parent":Ljava/io/File;
    .end local v15    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "rom":[B
    .restart local v10    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;>;"
    .restart local v11    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;>;"
    .restart local v16    # "verified":I
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
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

    .line 125
    .end local v16    # "verified":I
    .restart local v1    # "i":I
    .restart local v2    # "verified":I
    .restart local v3    # "asset":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;
    .restart local v4    # "expected":Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;
    :cond_6
    move-object/from16 v14, p5

    :try_start_a
    new-instance v0, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Direct frontend manifest order mismatch at "

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
    .end local v10    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;>;"
    .end local v11    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;>;"
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    .end local p5    # "profileId":Ljava/lang/String;
    throw v0

    .line 121
    .end local v3    # "asset":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;
    .end local v4    # "expected":Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;
    .restart local v2    # "verified":I
    .restart local v5    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "rom":[B
    .restart local v10    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;>;"
    .restart local v11    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;>;"
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$ProgressListener;
    .restart local p5    # "profileId":Ljava/lang/String;
    :cond_7
    move-object/from16 v14, p5

    .line 142
    .end local v1    # "i":I
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 143
    invoke-static {v6}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 145
    :cond_8
    new-instance v0, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$Result;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {}, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest;->payloadBytes()J

    move-result-wide v3

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$Result;-><init>(IIJLjava/util/List;Ljava/io/File;Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider-IA;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4

    return-object v0

    .line 147
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

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    :goto_9
    invoke-static/range {p3 .. p3}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 149
    throw v0

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "verified":I
    .end local v5    # "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    move-object/from16 v14, p5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Direct frontend manifest/generator count mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    .end local v10    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider$LogicalAsset;>;"
    .end local v11    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;>;"
    :cond_a
    move-object/from16 v14, p5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is too small for direct frontend resources"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    .end local v9    # "rom":[B
    :cond_b
    move-object/from16 v14, p5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is unexpectedly large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_c
    move-object/from16 v14, p5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Direct frontend staging directory is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
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

    .line 292
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

    .line 293
    .local v2, "initial":I
    :goto_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 294
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x2000

    new-array v4, v4, [B

    .line 295
    .local v4, "buffer":[B
    const/4 v5, 0x0

    .line 297
    .local v5, "total":I
    :goto_1
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 298
    .local v6, "n":I
    if-gez v6, :cond_3

    .line 304
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

    .line 305
    :cond_2
    :goto_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 299
    .restart local v6    # "n":I
    :cond_3
    if-nez v6, :cond_4

    goto :goto_1

    .line 300
    :cond_4
    add-int/2addr v5, v6

    .line 301
    const/high16 v7, 0x1000000

    if-gt v5, v7, :cond_5

    .line 302
    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 303
    .end local v6    # "n":I
    goto :goto_1

    .line 301
    .restart local v6    # "n":I
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM exceeds direct frontend provider limit"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
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
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 310
    .local v0, "child":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .local v1, "rp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 311
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

    .line 312
    return-object v0

    .line 311
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unsafe direct frontend output path"

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

    .line 358
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 359
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 360
    .local v1, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 361
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

    .line 362
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 363
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "hash":[B
    .end local v2    # "out":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 is unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static u24(I)I
    .locals 1
    .param p0, "value"    # I

    .line 333
    const v0, 0xffffff

    and-int/2addr v0, p0

    return v0
.end method
