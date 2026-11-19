.class public final Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;
.super Ljava/lang/Object;
.source "GenesisRomWorldTacticalSpriteAssetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;,
        Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;,
        Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;
    }
.end annotation


# static fields
.field private static final ACTION_ICON_COUNT:I = 0x6

.field private static final DETAIL_PREVIEW_HEIGHT:I = 0x38

.field private static final DETAIL_PREVIEW_PACKED_BYTES:I = 0xa80

.field private static final DETAIL_PREVIEW_WIDTH:I = 0x60

.field private static final EXPECTED_DIRECT_LAYOUTS:I = 0x9c

.field private static final EXPECTED_DYNAMIC_VISUALS:I = 0x27

.field private static final EXPECTED_LOADED_PATTERNS:I = 0x2ba

.field private static final EXPECTED_VALID_VISUALS:I = 0x10f

.field private static final FREMEN_GROUP_ICON:I = 0x6f910

.field private static final FREMEN_SINGLE_ICON:I = 0x70690

.field private static final HARVESTER_EFFECT_LAYOUT_TABLE:I = 0x641ee

.field private static final HOUSE_PALETTE_FLAGS:I = 0x9588

.field private static final MAX_ROM_BYTES:I = 0x1000000

.field private static final ORIGINAL_PALETTE:I = 0xa6c98

.field private static final PLACEMENT_GRID_GFX_A:I = 0x64746

.field private static final PLACEMENT_GRID_GFX_B:I = 0x64846

.field private static final PURCHASE_ICON_BYTES:I = 0x180

.field private static final SIEGE_TANK_COMPOSITE_TABLE:I = 0x2f2fa

.field private static final SPRITE_FIRST_PATTERN:I = 0x39a

.field private static final SPRITE_LOADER_BLOCKS:I = 0x24

.field private static final SPRITE_LOADER_TABLE:I = 0xa48c

.field private static final STRUCTURE_DETAIL_PREVIEW_TABLE:I = 0x882a4

.field private static final STRUCTURE_INFO_POINTERS:I = 0x6b954

.field private static final STRUCTURE_PURCHASE_ICON_COUNT:I = 0x13

.field private static final STRUCTURE_PURCHASE_ICON_TABLE:I = 0x6e840

.field private static final TANK_COMPOSITE_TABLE:I = 0x2ec7a

.field private static final TRACKED_COMPOSITE_STRIDE:I = 0x1a

.field private static final UNIT_DETAIL_PREVIEW_TABLE:I = 0x8f1d0

.field private static final UNIT_INFO_POINTERS:I = 0x6c5bc

.field private static final UNIT_PURCHASE_ICON_COUNT:I = 0x1b

.field private static final UNIT_PURCHASE_ICON_TABLE:I = 0x70ca4

.field private static final VICTORY_FLYOVER_LAYOUTS:[I

.field private static final VISUAL_ID_LIMIT:I = 0x15e

.field private static final VISUAL_TABLE:I = 0x60e8c

.field private static final VRAM_PATTERN_COUNT:I = 0x800


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    const v0, 0xb6a8

    const v1, 0xb6fe

    const v2, 0xb5fc

    const v3, 0xb652

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->VICTORY_FLYOVER_LAYOUTS:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 121
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

    .line 749
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->checkRange([BII)V

    .line 750
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static be32u([BI)J
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 754
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->checkRange([BII)V

    .line 755
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

.method private static buildAssets([BZ)Ljava/util/List;
    .locals 5
    .param p0, "rom"    # [B
    .param p1, "includeClassicPurchaseIcons"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BZ)",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;>;"
    new-instance v1, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;

    const-string v2, "tactical/static_patterns_922_2047.bin"

    invoke-static {p0}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->buildStaticPatternSlice([B)[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v1, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;

    const-string v2, "tactical/visual_catalog.bin"

    invoke-static {p0}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->buildVisualCatalog([B)[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v1, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;

    const-string v2, "tactical/dynamic_patterns.bin"

    invoke-static {p0}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->buildDynamicPatternCatalog([B)[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v1, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;

    const-string v2, "tactical/direct_layouts.bin"

    invoke-static {p0}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->buildDirectLayouts([B)[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 215
    .local v1, "grid":Ljava/io/ByteArrayOutputStream;
    const v2, 0x64746

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    const/16 v3, 0x100

    invoke-static {p0, v2, v3}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->copy([BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 216
    const v2, 0x64846

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    invoke-static {p0, v2, v3}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->copy([BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 217
    new-instance v2, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;

    const-string v3, "tactical/placement_grid_patterns.bin"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    if-eqz p1, :cond_0

    .line 219
    new-instance v2, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;

    .line 220
    invoke-static {p0}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->buildClassicPurchaseIcons([B)[B

    move-result-object v3

    const-string v4, "tactical/classic_purchase_icons.bin"

    invoke-direct {v2, v4, v3}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;-><init>(Ljava/lang/String;[B)V

    .line 219
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_0
    return-object v0
.end method

.method private static buildClassicPurchaseIcons([B)[B
    .locals 10
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    const v0, 0x281b8

    .line 235
    .local v0, "resultBytes":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const v2, 0x281b8

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 236
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 237
    .local v3, "out":Ljava/io/DataOutputStream;
    const-string v4, "CPIC"

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 238
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 239
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 240
    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 241
    const/16 v4, 0x180

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 242
    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 243
    const/16 v5, 0x1b

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 244
    const/4 v6, 0x6

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 245
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 246
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 247
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 248
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 249
    const/16 v7, 0x60

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 250
    const/16 v7, 0x38

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 251
    const/16 v7, 0xa80

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 252
    const v7, 0xa6c98

    invoke-static {p0, v7}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v7

    const/16 v8, 0x80

    invoke-static {p0, v7, v8}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->copy([BII)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->write([B)V

    .line 253
    const v7, 0x9588

    invoke-static {p0, v7}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v7

    const/16 v8, 0x10

    invoke-static {p0, v7, v8}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->copy([BII)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->write([B)V

    .line 254
    const v7, 0x6e840

    const/4 v8, 0x1

    invoke-static {v3, p0, v7, v4, v8}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->writePurchaseIconRecords(Ljava/io/DataOutputStream;[BIII)V

    .line 256
    const v7, 0x70ca4

    const/4 v9, 0x3

    invoke-static {v3, p0, v7, v5, v9}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->writePurchaseIconRecords(Ljava/io/DataOutputStream;[BIII)V

    .line 258
    const v7, 0x6b954

    invoke-static {v3, p0, v7, v4}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->writeInfoIconRecords(Ljava/io/DataOutputStream;[BII)V

    .line 260
    const v7, 0x6c5bc

    invoke-static {v3, p0, v7, v5}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->writeInfoIconRecords(Ljava/io/DataOutputStream;[BII)V

    .line 262
    const v7, 0x70d10

    invoke-static {v3, p0, v7, v6, v9}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->writePurchaseIconRecords(Ljava/io/DataOutputStream;[BIII)V

    .line 264
    const v6, 0x882a4

    invoke-static {v3, p0, v6, v4}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->writeDetailPreviewRecords(Ljava/io/DataOutputStream;[BII)V

    .line 266
    const v4, 0x8f1d0

    invoke-static {v3, p0, v4, v5}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->writeDetailPreviewRecords(Ljava/io/DataOutputStream;[BII)V

    .line 271
    const/4 v4, 0x0

    const v5, 0x6f910

    invoke-static {v3, p0, v4, v5}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->writeFremenIconRecord(Ljava/io/DataOutputStream;[BII)V

    .line 272
    const v4, 0x70690

    invoke-static {v3, p0, v8, v4}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->writeFremenIconRecord(Ljava/io/DataOutputStream;[BII)V

    .line 273
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 274
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 275
    .local v4, "result":[B
    array-length v5, v4

    if-ne v5, v2, :cond_0

    .line 276
    return-object v4

    .line 275
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v5, "Classic icon pack v3 size mismatch"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static buildDirectLayouts([B)[B
    .locals 10
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 560
    .local v0, "bytes":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 561
    .local v1, "out":Ljava/io/DataOutputStream;
    const-string v2, "DDIR"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 562
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 563
    const/16 v3, 0x9c

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 564
    const/4 v4, 0x0

    .line 565
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    sget-object v6, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->VICTORY_FLYOVER_LAYOUTS:[I

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 566
    sget-object v6, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->VICTORY_FLYOVER_LAYOUTS:[I

    aget v6, v6, v5

    .line 567
    invoke-static {p0, v6}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v6

    .line 566
    invoke-static {v1, p0, v2, v5, v6}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->writeDirectLayout(Ljava/io/DataOutputStream;[BIII)V

    .line 567
    add-int/lit8 v4, v4, 0x1

    .line 565
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 569
    .end local v5    # "i":I
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v5, 0x40

    if-ge v2, v5, :cond_1

    .line 570
    nop

    .line 571
    const v5, 0x2ec7a

    invoke-static {p0, v5}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v5

    mul-int/lit8 v6, v2, 0x1a

    add-int/2addr v5, v6

    .line 570
    const/4 v6, 0x2

    invoke-static {v1, p0, v6, v2, v5}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->writeDirectLayout(Ljava/io/DataOutputStream;[BIII)V

    .line 571
    add-int/lit8 v4, v4, 0x1

    .line 569
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 573
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v5, :cond_2

    .line 574
    nop

    .line 575
    const v6, 0x2f2fa

    invoke-static {p0, v6}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v6

    mul-int/lit8 v7, v2, 0x1a

    add-int/2addr v6, v7

    .line 574
    const/4 v7, 0x3

    invoke-static {v1, p0, v7, v2, v6}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->writeDirectLayout(Ljava/io/DataOutputStream;[BIII)V

    .line 575
    add-int/lit8 v4, v4, 0x1

    .line 573
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 577
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    const/16 v5, 0x18

    if-ge v2, v5, :cond_3

    .line 578
    const v5, 0x641ee

    invoke-static {p0, v5}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v5

    .line 579
    .local v5, "harvesterTable":I
    mul-int/lit8 v6, v2, 0x4

    add-int/2addr v6, v5

    invoke-static {p0, v6}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->be32u([BI)J

    move-result-wide v6

    const-wide/32 v8, 0xffffff

    and-long/2addr v6, v8

    long-to-int v6, v6

    .line 580
    .local v6, "pointer":I
    const/4 v7, 0x4

    invoke-static {v1, p0, v7, v2, v6}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->writeDirectLayout(Ljava/io/DataOutputStream;[BIII)V

    .end local v5    # "harvesterTable":I
    .end local v6    # "pointer":I
    add-int/lit8 v4, v4, 0x1

    .line 577
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 582
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 583
    if-ne v4, v3, :cond_4

    .line 584
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 583
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unexpected direct tactical layout count"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static buildDynamicPatternCatalog([B)[B
    .locals 25
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 514
    move-object/from16 v0, p0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x4000

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 515
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 516
    .local v2, "out":Ljava/io/DataOutputStream;
    const-string v3, "DDYN"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 517
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 518
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 519
    const/4 v5, 0x0

    .line 520
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "visualId":I
    :goto_0
    const/16 v7, 0x15e

    if-ge v6, v7, :cond_4

    .line 521
    const v7, 0x60e8c

    invoke-static {v0, v7}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v7

    mul-int/lit8 v8, v6, 0x8

    add-int/2addr v7, v8

    .line 522
    .local v7, "entry":I
    invoke-static {v0, v7}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->be32u([BI)J

    move-result-wide v8

    .line 523
    .local v8, "sourceWord":J
    const/16 v10, 0x18

    ushr-long v10, v8, v10

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    goto :goto_1

    .line 524
    :cond_0
    add-int/lit8 v10, v7, 0x4

    invoke-static {v0, v10}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->be32u([BI)J

    move-result-wide v10

    const-wide/32 v12, 0xffffff

    and-long/2addr v10, v12

    long-to-int v10, v10

    .line 525
    .local v10, "layout":I
    invoke-static {v0, v10}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->isValidLayout([BI)Z

    move-result v11

    if-nez v11, :cond_1

    .line 520
    .end local v7    # "entry":I
    .end local v8    # "sourceWord":J
    .end local v10    # "layout":I
    :goto_1
    move-object/from16 v23, v1

    move/from16 v16, v3

    goto/16 :goto_3

    .line 526
    .restart local v7    # "entry":I
    .restart local v8    # "sourceWord":J
    .restart local v10    # "layout":I
    :cond_1
    invoke-static {v0, v10}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->be16([BI)I

    move-result v11

    add-int/2addr v11, v3

    .line 527
    .local v11, "pieceCount":I
    const v14, 0x7fffffff

    .line 528
    .local v14, "minPattern":I
    const/4 v15, -0x1

    .line 529
    .local v15, "maxPattern":I
    const/16 v16, 0x0

    move/from16 v24, v16

    move/from16 v16, v3

    move/from16 v3, v24

    .local v3, "i":I
    :goto_2
    if-ge v3, v11, :cond_2

    .line 530
    add-int/lit8 v17, v10, 0x2

    mul-int/lit8 v18, v3, 0xc

    add-int v17, v17, v18

    .line 531
    .local v17, "piece":I
    move-wide/from16 v18, v12

    add-int/lit8 v12, v17, 0x6

    invoke-static {v0, v12}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->be16([BI)I

    move-result v12

    .line 532
    .local v12, "size":I
    add-int/lit8 v13, v17, 0x8

    invoke-static {v0, v13}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->be16([BI)I

    move-result v13

    .line 533
    .local v13, "attr":I
    ushr-int/lit8 v20, v12, 0xa

    and-int/lit8 v20, v20, 0x3

    add-int/lit8 v20, v20, 0x1

    .line 534
    .local v20, "wt":I
    ushr-int/lit8 v21, v12, 0x8

    and-int/lit8 v21, v21, 0x3

    add-int/lit8 v21, v21, 0x1

    .line 535
    .local v21, "ht":I
    and-int/lit16 v4, v13, 0x7ff

    .line 536
    .local v4, "first":I
    invoke-static {v14, v4}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 537
    mul-int v22, v20, v21

    add-int v22, v4, v22

    move-object/from16 v23, v1

    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .local v23, "bytes":Ljava/io/ByteArrayOutputStream;
    add-int/lit8 v1, v22, -0x1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 529
    .end local v4    # "first":I
    .end local v12    # "size":I
    .end local v13    # "attr":I
    .end local v17    # "piece":I
    .end local v20    # "wt":I
    .end local v21    # "ht":I
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v12, v18

    move-object/from16 v1, v23

    const/4 v4, 0x0

    goto :goto_2

    .end local v23    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    :cond_2
    move-object/from16 v23, v1

    move-wide/from16 v18, v12

    .line 539
    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "i":I
    .restart local v23    # "bytes":Ljava/io/ByteArrayOutputStream;
    if-lt v15, v14, :cond_3

    .line 540
    sub-int v1, v15, v14

    add-int/lit8 v1, v1, 0x1

    .line 541
    .local v1, "patternCount":I
    and-long v3, v8, v18

    long-to-int v3, v3

    .line 542
    .local v3, "source":I
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 543
    invoke-virtual {v2, v14}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 544
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 545
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 546
    mul-int/lit8 v12, v1, 0x20

    invoke-static {v0, v3, v12}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->copy([BII)[B

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/DataOutputStream;->write([B)V

    .line 547
    add-int/lit8 v5, v5, 0x1

    .line 520
    .end local v1    # "patternCount":I
    .end local v3    # "source":I
    .end local v7    # "entry":I
    .end local v8    # "sourceWord":J
    .end local v10    # "layout":I
    .end local v11    # "pieceCount":I
    .end local v14    # "minPattern":I
    .end local v15    # "maxPattern":I
    :goto_3
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v16

    move-object/from16 v1, v23

    goto/16 :goto_0

    .line 539
    .restart local v7    # "entry":I
    .restart local v8    # "sourceWord":J
    .restart local v10    # "layout":I
    .restart local v11    # "pieceCount":I
    .restart local v14    # "minPattern":I
    .restart local v15    # "maxPattern":I
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Empty dynamic tactical layout"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 520
    .end local v7    # "entry":I
    .end local v8    # "sourceWord":J
    .end local v10    # "layout":I
    .end local v11    # "pieceCount":I
    .end local v14    # "minPattern":I
    .end local v15    # "maxPattern":I
    .end local v23    # "bytes":Ljava/io/ByteArrayOutputStream;
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    :cond_4
    move-object/from16 v23, v1

    .line 549
    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "visualId":I
    .restart local v23    # "bytes":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 550
    invoke-virtual/range {v23 .. v23}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 551
    .local v1, "result":[B
    ushr-int/lit8 v3, v5, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x6

    aput-byte v3, v1, v4

    .line 552
    and-int/lit16 v3, v5, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x7

    aput-byte v3, v1, v4

    .line 553
    const/16 v3, 0x27

    if-ne v5, v3, :cond_5

    .line 554
    return-object v1

    .line 553
    :cond_5
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unexpected dynamic tactical visual count"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static buildStaticPatternSlice([B)[B
    .locals 24
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    move-object/from16 v0, p0

    const/high16 v1, 0x10000

    new-array v1, v1, [B

    .line 438
    .local v1, "vram":[B
    const v2, 0xa48c

    invoke-static {v0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    .line 439
    .local v2, "table":I
    const/4 v3, 0x0

    .line 440
    .local v3, "blocks":I
    const/4 v4, 0x0

    .line 441
    .local v4, "patterns":I
    const v5, 0x7fffffff

    .line 442
    .local v5, "minPattern":I
    const/4 v6, -0x1

    .line 444
    .local v6, "maxPattern":I
    :goto_0
    invoke-static {v0, v2}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->be32u([BI)J

    move-result-wide v7

    .line 445
    .local v7, "d3":J
    add-int/lit8 v2, v2, 0x4

    .line 446
    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    const/4 v12, 0x0

    const/16 v13, 0x39a

    if-nez v11, :cond_1

    .line 473
    .end local v7    # "d3":J
    const/16 v7, 0x24

    if-ne v3, v7, :cond_0

    const/16 v7, 0x2ba

    if-ne v4, v7, :cond_0

    if-ne v5, v13, :cond_0

    const/16 v7, 0x7ff

    if-ne v6, v7, :cond_0

    .line 475
    const v7, 0xa5b0

    invoke-static {v0, v7}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v7

    if-ne v2, v7, :cond_0

    .line 478
    const v7, 0x8cc0

    new-array v7, v7, [B

    .line 479
    .local v7, "out":[B
    const/16 v8, 0x7340

    array-length v9, v7

    invoke-static {v1, v8, v7, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 480
    return-object v7

    .line 476
    .end local v7    # "out":[B
    :cond_0
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Tactical sprite loader coverage mismatch"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 447
    .local v7, "d3":J
    :cond_1
    invoke-static {v0, v2}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->be32u([BI)J

    move-result-wide v14

    .line 448
    .local v14, "sourceWord":J
    add-int/lit8 v2, v2, 0x4

    .line 449
    const/16 v11, 0x10

    ushr-long v16, v7, v11

    const-wide/32 v18, 0xffff

    move-wide/from16 v20, v9

    and-long v9, v16, v18

    long-to-int v9, v9

    .line 450
    .local v9, "vramByteAddress":I
    and-long v10, v7, v18

    long-to-int v10, v10

    .line 451
    .local v10, "words":I
    mul-int/lit8 v11, v10, 0x2

    .line 452
    .local v11, "bytes":I
    and-int/lit8 v16, v9, 0x1f

    if-nez v16, :cond_5

    and-int/lit8 v16, v11, 0x1f

    if-nez v16, :cond_5

    if-lez v11, :cond_5

    .line 455
    div-int/lit8 v12, v9, 0x20

    .line 456
    .local v12, "firstPattern":I
    div-int/lit8 v17, v11, 0x20

    .line 457
    .local v17, "count":I
    if-lt v12, v13, :cond_4

    add-int v13, v12, v17

    move/from16 v18, v2

    .end local v2    # "table":I
    .local v18, "table":I
    const/16 v2, 0x800

    if-gt v13, v2, :cond_3

    .line 460
    const-wide/32 v22, 0xffffff

    move v13, v3

    .end local v3    # "blocks":I
    .local v13, "blocks":I
    and-long v2, v14, v22

    long-to-int v2, v2

    .line 462
    .local v2, "source":I
    const-wide v22, 0x80000000L

    and-long v22, v14, v22

    cmp-long v3, v22, v20

    if-eqz v3, :cond_2

    .line 463
    invoke-static {v0, v2, v11}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->copy([BII)[B

    move-result-object v3

    .local v3, "decoded":[B
    goto :goto_1

    .line 465
    .end local v3    # "decoded":[B
    :cond_2
    invoke-static {v0, v2, v11}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->decompress([BII)[B

    move-result-object v3

    .line 467
    .restart local v3    # "decoded":[B
    :goto_1
    mul-int/lit8 v0, v12, 0x20

    move/from16 v19, v2

    const/4 v2, 0x0

    .end local v2    # "source":I
    .local v19, "source":I
    invoke-static {v3, v2, v1, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 468
    add-int/lit8 v0, v13, 0x1

    .line 469
    .end local v13    # "blocks":I
    .local v0, "blocks":I
    add-int v4, v4, v17

    .line 470
    invoke-static {v5, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 471
    add-int v2, v12, v17

    add-int/lit8 v2, v2, -0x1

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 472
    .end local v3    # "decoded":[B
    .end local v7    # "d3":J
    .end local v9    # "vramByteAddress":I
    .end local v10    # "words":I
    .end local v11    # "bytes":I
    .end local v12    # "firstPattern":I
    .end local v14    # "sourceWord":J
    .end local v17    # "count":I
    .end local v19    # "source":I
    move v3, v0

    move/from16 v2, v18

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 457
    .end local v0    # "blocks":I
    .local v3, "blocks":I
    .restart local v7    # "d3":J
    .restart local v9    # "vramByteAddress":I
    .restart local v10    # "words":I
    .restart local v11    # "bytes":I
    .restart local v12    # "firstPattern":I
    .restart local v14    # "sourceWord":J
    .restart local v17    # "count":I
    :cond_3
    move v13, v3

    .end local v3    # "blocks":I
    .restart local v13    # "blocks":I
    goto :goto_2

    .end local v13    # "blocks":I
    .end local v18    # "table":I
    .local v2, "table":I
    .restart local v3    # "blocks":I
    :cond_4
    move/from16 v18, v2

    move v13, v3

    .line 458
    .end local v2    # "table":I
    .end local v3    # "blocks":I
    .restart local v13    # "blocks":I
    .restart local v18    # "table":I
    :goto_2
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Tactical sprite loader block outside VRAM media range"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    .end local v12    # "firstPattern":I
    .end local v13    # "blocks":I
    .end local v17    # "count":I
    .end local v18    # "table":I
    .restart local v2    # "table":I
    .restart local v3    # "blocks":I
    :cond_5
    move/from16 v18, v2

    move v13, v3

    .line 453
    .end local v2    # "table":I
    .end local v3    # "blocks":I
    .restart local v13    # "blocks":I
    .restart local v18    # "table":I
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unaligned tactical sprite loader block"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static buildVisualCatalog([B)[B
    .locals 15
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 485
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 486
    .local v0, "bytes":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 487
    .local v1, "out":Ljava/io/DataOutputStream;
    const-string v2, "DVIS"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 488
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 489
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 490
    const/4 v4, 0x0

    .line 491
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "visualId":I
    :goto_0
    const/16 v6, 0x15e

    if-ge v5, v6, :cond_2

    .line 492
    const v6, 0x60e8c

    invoke-static {p0, v6}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v6

    mul-int/lit8 v7, v5, 0x8

    add-int/2addr v6, v7

    .line 493
    .local v6, "entry":I
    invoke-static {p0, v6}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->be32u([BI)J

    move-result-wide v7

    .line 494
    .local v7, "sourceWord":J
    add-int/lit8 v9, v6, 0x4

    invoke-static {p0, v9}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->be32u([BI)J

    move-result-wide v9

    const-wide/32 v11, 0xffffff

    and-long/2addr v9, v11

    long-to-int v9, v9

    .line 495
    .local v9, "layout":I
    invoke-static {p0, v9}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->isValidLayout([BI)Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_2

    .line 496
    :cond_0
    invoke-static {p0, v9}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->be16([BI)I

    move-result v10

    add-int/2addr v10, v2

    .line 497
    .local v10, "pieceCount":I
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 498
    invoke-virtual {v1, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 499
    const/16 v11, 0x18

    ushr-long v11, v7, v11

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    const-wide/16 v13, 0x80

    cmp-long v11, v11, v13

    if-nez v11, :cond_1

    move v11, v2

    goto :goto_1

    :cond_1
    move v11, v3

    :goto_1
    invoke-virtual {v1, v11}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 500
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 501
    add-int/lit8 v11, v9, 0x2

    mul-int/lit8 v12, v10, 0xc

    invoke-static {p0, v11, v12}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->copy([BII)[B

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/DataOutputStream;->write([B)V

    .line 502
    add-int/lit8 v4, v4, 0x1

    .line 491
    .end local v6    # "entry":I
    .end local v7    # "sourceWord":J
    .end local v9    # "layout":I
    .end local v10    # "pieceCount":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 504
    .end local v5    # "visualId":I
    :cond_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 505
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 506
    .local v2, "result":[B
    ushr-int/lit8 v3, v4, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v5, 0x6

    aput-byte v3, v2, v5

    .line 507
    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    const/4 v5, 0x7

    aput-byte v3, v2, v5

    .line 508
    const/16 v3, 0x10f

    if-ne v4, v3, :cond_3

    .line 509
    return-object v2

    .line 508
    :cond_3
    new-instance v3, Ljava/io/IOException;

    const-string v5, "Unexpected tactical visual catalog size"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
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

    .line 762
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 765
    return-void

    .line 763
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ROM tactical-media offset outside file: "

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

    .line 742
    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->checkRange([BII)V

    .line 743
    new-array v0, p2, [B

    .line 744
    .local v0, "out":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 745
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

    .line 667
    new-array v0, p2, [B

    .line 668
    .local v0, "out":[B
    move v1, p1

    .line 669
    .local v1, "src":I
    const/4 v2, 0x0

    .line 670
    .local v2, "dst":I
    const/4 v3, 0x0

    .line 672
    .local v3, "guard":I
    :goto_0
    const/4 v4, 0x1

    add-int/2addr v3, v4

    const v5, 0x186a0

    if-gt v3, v5, :cond_f

    .line 673
    invoke-static {p0, v1, v4}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->checkRange([BII)V

    .line 674
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "src":I
    .local v5, "src":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 675
    .local v1, "c":I
    const/16 v6, 0x80

    if-ne v1, v6, :cond_1

    .line 718
    .end local v1    # "c":I
    if-ne v2, p2, :cond_0

    .line 721
    return-object v0

    .line 719
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tactical block decompressed to "

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

    .line 676
    .restart local v1    # "c":I
    :cond_1
    const/16 v6, 0x81

    if-lt v1, v6, :cond_3

    const/16 v6, 0xbf

    if-gt v1, v6, :cond_3

    .line 677
    and-int/lit8 v4, v1, 0x3f

    .line 678
    .local v4, "n":I
    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->checkRange([BII)V

    .line 679
    array-length v6, v0

    sub-int/2addr v6, v4

    if-gt v2, v6, :cond_2

    .line 680
    invoke-static {p0, v5, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 681
    add-int/2addr v5, v4

    .line 682
    add-int/2addr v2, v4

    .line 683
    .end local v4    # "n":I
    move v1, v5

    goto/16 :goto_5

    .line 679
    .restart local v4    # "n":I
    :cond_2
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Tactical literal overrun"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 683
    .end local v4    # "n":I
    :cond_3
    const/16 v6, 0x7f

    const/4 v7, 0x3

    if-gt v1, v6, :cond_6

    .line 684
    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->checkRange([BII)V

    .line 685
    shl-int/lit8 v4, v1, 0x8

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "src":I
    .local v6, "src":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xfff

    .line 686
    .local v4, "back":I
    ushr-int/lit8 v5, v1, 0x4

    add-int/2addr v5, v7

    .line 687
    .local v5, "n":I
    if-lez v4, :cond_5

    if-gt v4, v2, :cond_5

    array-length v7, v0

    sub-int/2addr v7, v5

    if-gt v2, v7, :cond_5

    .line 690
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

    .line 691
    .end local v4    # "back":I
    .end local v5    # "n":I
    .end local v7    # "i":I
    :cond_4
    move v1, v6

    goto/16 :goto_5

    .line 688
    .restart local v4    # "back":I
    .restart local v5    # "n":I
    :cond_5
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Tactical short-copy range error"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 691
    .end local v4    # "back":I
    .end local v6    # "src":I
    .local v5, "src":I
    :cond_6
    const/16 v4, 0xfd

    if-gt v1, v4, :cond_9

    .line 692
    const/4 v4, 0x2

    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->checkRange([BII)V

    .line 693
    and-int/lit8 v4, v1, 0x3f

    add-int/2addr v4, v7

    .line 694
    .local v4, "n":I
    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    .line 695
    .local v6, "from":I
    add-int/lit8 v5, v5, 0x2

    .line 696
    if-ltz v6, :cond_8

    if-ge v6, v2, :cond_8

    array-length v7, v0

    sub-int/2addr v7, v4

    if-gt v2, v7, :cond_8

    .line 699
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

    .line 700
    .end local v4    # "n":I
    .end local v6    # "from":I
    .end local v7    # "i":I
    .end local v8    # "dst":I
    .restart local v2    # "dst":I
    :cond_7
    move v1, v5

    goto/16 :goto_5

    .line 697
    .restart local v4    # "n":I
    .restart local v6    # "from":I
    :cond_8
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Tactical absolute-copy range error"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 700
    .end local v4    # "n":I
    .end local v6    # "from":I
    :cond_9
    const/16 v4, 0xfe

    if-ne v1, v4, :cond_c

    .line 701
    invoke-static {p0, v5, v7}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->checkRange([BII)V

    .line 702
    aget-byte v4, p0, v5

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    .line 703
    .restart local v4    # "n":I
    add-int/lit8 v6, v5, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    .line 704
    .local v6, "value":I
    add-int/lit8 v5, v5, 0x3

    .line 705
    array-length v7, v0

    sub-int/2addr v7, v4

    if-gt v2, v7, :cond_b

    .line 706
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

    .line 707
    .end local v4    # "n":I
    .end local v6    # "value":I
    .end local v7    # "i":I
    .end local v8    # "dst":I
    .restart local v2    # "dst":I
    :cond_a
    move v1, v5

    goto :goto_5

    .line 705
    .restart local v4    # "n":I
    .restart local v6    # "value":I
    :cond_b
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Tactical RLE overrun"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 708
    .end local v4    # "n":I
    .end local v6    # "value":I
    :cond_c
    const/4 v4, 0x4

    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->checkRange([BII)V

    .line 709
    aget-byte v4, p0, v5

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    .line 710
    .restart local v4    # "n":I
    add-int/lit8 v6, v5, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v5, 0x3

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    .line 711
    .local v6, "from":I
    add-int/lit8 v5, v5, 0x4

    .line 712
    if-ltz v6, :cond_e

    if-ge v6, v2, :cond_e

    array-length v7, v0

    sub-int/2addr v7, v4

    if-gt v2, v7, :cond_e

    .line 715
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

    .line 717
    .end local v4    # "n":I
    .end local v5    # "src":I
    .end local v6    # "from":I
    .end local v7    # "i":I
    .local v1, "src":I
    :goto_5
    goto/16 :goto_0

    .line 713
    .local v1, "c":I
    .restart local v4    # "n":I
    .restart local v5    # "src":I
    .restart local v6    # "from":I
    :cond_e
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Tactical long-copy range error"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 672
    .end local v4    # "n":I
    .end local v5    # "src":I
    .end local v6    # "from":I
    .local v1, "src":I
    :cond_f
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Tactical decompressor guard"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static decompressPreviewStream([BI)[B
    .locals 11
    .param p0, "rom"    # [B
    .param p1, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 611
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    .line 612
    .local v0, "scratch":[B
    move v1, p1

    .line 613
    .local v1, "src":I
    const/4 v2, 0x0

    .line 614
    .local v2, "dst":I
    const/4 v3, 0x0

    .line 616
    .local v3, "guard":I
    :goto_0
    const/4 v4, 0x1

    add-int/2addr v3, v4

    const v5, 0xf4240

    if-gt v3, v5, :cond_e

    .line 617
    invoke-static {p0, v1, v4}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->checkRange([BII)V

    .line 618
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "src":I
    .local v5, "src":I
    aget-byte v1, p0, v1

    const/16 v6, 0xff

    and-int/2addr v1, v6

    .line 619
    .local v1, "c":I
    const/16 v7, 0x80

    if-ne v1, v7, :cond_0

    .line 660
    .end local v1    # "c":I
    new-array v1, v2, [B

    .line 661
    .local v1, "out":[B
    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 662
    return-object v1

    .line 620
    .local v1, "c":I
    :cond_0
    and-int/lit16 v7, v1, 0x80

    const/4 v8, 0x3

    if-nez v7, :cond_3

    .line 621
    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->checkRange([BII)V

    .line 622
    shl-int/lit8 v4, v1, 0x8

    add-int/lit8 v7, v5, 0x1

    .end local v5    # "src":I
    .local v7, "src":I
    aget-byte v5, p0, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xfff

    .line 623
    .local v4, "back":I
    ushr-int/lit8 v5, v1, 0x4

    add-int/2addr v5, v8

    .line 624
    .local v5, "n":I
    if-lez v4, :cond_2

    if-gt v4, v2, :cond_2

    array-length v6, v0

    sub-int/2addr v6, v5

    if-gt v2, v6, :cond_2

    .line 626
    sub-int v6, v2, v4

    .line 627
    .local v6, "from":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v5, :cond_1

    add-int/lit8 v9, v2, 0x1

    .end local v2    # "dst":I
    .local v9, "dst":I
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "from":I
    .local v10, "from":I
    aget-byte v6, v0, v6

    aput-byte v6, v0, v2

    add-int/lit8 v8, v8, 0x1

    move v2, v9

    move v6, v10

    goto :goto_1

    .line 628
    .end local v4    # "back":I
    .end local v5    # "n":I
    .end local v8    # "i":I
    .end local v9    # "dst":I
    .end local v10    # "from":I
    .restart local v2    # "dst":I
    :cond_1
    move v1, v7

    goto/16 :goto_5

    .line 625
    .restart local v4    # "back":I
    .restart local v5    # "n":I
    :cond_2
    new-instance v6, Ljava/io/IOException;

    const-string v8, "Classic detail short-copy range error"

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 628
    .end local v4    # "back":I
    .end local v7    # "src":I
    .local v5, "src":I
    :cond_3
    and-int/lit8 v4, v1, 0x40

    if-nez v4, :cond_5

    .line 629
    and-int/lit8 v4, v1, 0x3f

    .line 630
    .local v4, "n":I
    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->checkRange([BII)V

    .line 631
    array-length v6, v0

    sub-int/2addr v6, v4

    if-gt v2, v6, :cond_4

    .line 632
    invoke-static {p0, v5, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 633
    add-int/2addr v5, v4

    .line 634
    add-int/2addr v2, v4

    .line 635
    .end local v4    # "n":I
    move v1, v5

    goto/16 :goto_5

    .line 631
    .restart local v4    # "n":I
    :cond_4
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Classic detail literal overrun"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 635
    .end local v4    # "n":I
    :cond_5
    const/16 v4, 0xfe

    if-ne v1, v4, :cond_8

    .line 636
    invoke-static {p0, v5, v8}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->checkRange([BII)V

    .line 637
    aget-byte v4, p0, v5

    and-int/2addr v4, v6

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, p0, v7

    and-int/2addr v6, v7

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    .line 638
    .restart local v4    # "n":I
    add-int/lit8 v6, v5, 0x2

    aget-byte v6, p0, v6

    .line 639
    .local v6, "value":B
    add-int/lit8 v5, v5, 0x3

    .line 640
    array-length v7, v0

    sub-int/2addr v7, v4

    if-gt v2, v7, :cond_7

    .line 641
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v4, :cond_6

    add-int/lit8 v8, v2, 0x1

    .end local v2    # "dst":I
    .local v8, "dst":I
    aput-byte v6, v0, v2

    add-int/lit8 v7, v7, 0x1

    move v2, v8

    goto :goto_2

    .line 642
    .end local v4    # "n":I
    .end local v6    # "value":B
    .end local v7    # "i":I
    .end local v8    # "dst":I
    .restart local v2    # "dst":I
    :cond_6
    move v1, v5

    goto/16 :goto_5

    .line 640
    .restart local v4    # "n":I
    .restart local v6    # "value":B
    :cond_7
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Classic detail RLE overrun"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 642
    .end local v4    # "n":I
    .end local v6    # "value":B
    :cond_8
    if-ne v1, v6, :cond_b

    .line 643
    const/4 v4, 0x4

    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->checkRange([BII)V

    .line 644
    aget-byte v4, p0, v5

    and-int/2addr v4, v6

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, p0, v7

    and-int/2addr v7, v6

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v4, v7

    .line 645
    .restart local v4    # "n":I
    add-int/lit8 v7, v5, 0x2

    aget-byte v7, p0, v7

    and-int/2addr v7, v6

    add-int/lit8 v8, v5, 0x3

    aget-byte v8, p0, v8

    and-int/2addr v6, v8

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v6, v7

    .line 646
    .local v6, "from":I
    add-int/lit8 v5, v5, 0x4

    .line 647
    if-ltz v6, :cond_a

    array-length v7, v0

    sub-int/2addr v7, v4

    if-gt v6, v7, :cond_a

    array-length v7, v0

    sub-int/2addr v7, v4

    if-gt v2, v7, :cond_a

    .line 649
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    if-ge v7, v4, :cond_9

    add-int/lit8 v8, v2, 0x1

    .end local v2    # "dst":I
    .restart local v8    # "dst":I
    add-int/lit8 v9, v6, 0x1

    .end local v6    # "from":I
    .local v9, "from":I
    aget-byte v6, v0, v6

    aput-byte v6, v0, v2

    add-int/lit8 v7, v7, 0x1

    move v2, v8

    move v6, v9

    goto :goto_3

    .line 650
    .end local v4    # "n":I
    .end local v7    # "i":I
    .end local v8    # "dst":I
    .end local v9    # "from":I
    .restart local v2    # "dst":I
    :cond_9
    move v1, v5

    goto :goto_5

    .line 648
    .restart local v4    # "n":I
    .restart local v6    # "from":I
    :cond_a
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Classic detail long-copy range error"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 651
    .end local v4    # "n":I
    .end local v6    # "from":I
    :cond_b
    const/4 v4, 0x2

    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->checkRange([BII)V

    .line 652
    and-int/lit8 v4, v1, 0x3f

    add-int/2addr v4, v8

    .line 653
    .restart local v4    # "n":I
    aget-byte v7, p0, v5

    and-int/2addr v7, v6

    add-int/lit8 v8, v5, 0x1

    aget-byte v8, p0, v8

    and-int/2addr v6, v8

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v6, v7

    .line 654
    .restart local v6    # "from":I
    add-int/lit8 v5, v5, 0x2

    .line 655
    if-ltz v6, :cond_d

    array-length v7, v0

    sub-int/2addr v7, v4

    if-gt v6, v7, :cond_d

    array-length v7, v0

    sub-int/2addr v7, v4

    if-gt v2, v7, :cond_d

    .line 657
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v4, :cond_c

    add-int/lit8 v8, v2, 0x1

    .end local v2    # "dst":I
    .restart local v8    # "dst":I
    add-int/lit8 v9, v6, 0x1

    .end local v6    # "from":I
    .restart local v9    # "from":I
    aget-byte v6, v0, v6

    aput-byte v6, v0, v2

    add-int/lit8 v7, v7, 0x1

    move v2, v8

    move v6, v9

    goto :goto_4

    .end local v8    # "dst":I
    .end local v9    # "from":I
    .restart local v2    # "dst":I
    .restart local v6    # "from":I
    :cond_c
    move v1, v5

    .line 659
    .end local v4    # "n":I
    .end local v5    # "src":I
    .end local v6    # "from":I
    .end local v7    # "i":I
    .local v1, "src":I
    :goto_5
    goto/16 :goto_0

    .line 656
    .local v1, "c":I
    .restart local v4    # "n":I
    .restart local v5    # "src":I
    .restart local v6    # "from":I
    :cond_d
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Classic detail absolute-copy range error"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 616
    .end local v4    # "n":I
    .end local v5    # "src":I
    .end local v6    # "from":I
    .local v1, "src":I
    :cond_e
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Classic detail decompressor guard"

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

    .line 791
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 792
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 793
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 794
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 795
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 794
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

    .line 797
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

    .line 798
    :cond_4
    :goto_1
    return-void

    .line 791
    :cond_5
    :goto_2
    return-void
.end method

.method public static extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .local v0, "input":Ljava/io/InputStream;
    .local v1, "knownRomSize":J
    .local v3, "stagingRoot":Ljava/io/File;
    .local v4, "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    invoke-static/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;

    move-result-object p0

    return-object p0
.end method

.method public static extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;
    .locals 7
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .param p5, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .end local p5    # "profileId":Ljava/lang/String;
    .local v0, "input":Ljava/io/InputStream;
    .local v1, "knownRomSize":J
    .local v3, "stagingRoot":Ljava/io/File;
    .local v4, "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .local v6, "profileId":Ljava/lang/String;
    invoke-static/range {v0 .. v6}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->extractInternal(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;ZLjava/lang/String;)Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;

    move-result-object p0

    return-object p0
.end method

.method private static extractInternal(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;ZLjava/lang/String;)Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;
    .locals 23
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .param p5, "requireReferenceHashes"    # Z
    .param p6, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    move-object/from16 v6, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    if-eqz p0, :cond_f

    .line 148
    if-eqz v6, :cond_e

    .line 149
    const-wide/32 v0, 0x1000000

    cmp-long v0, p1, v0

    if-gtz v0, :cond_d

    .line 151
    invoke-static/range {p0 .. p2}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->readAll(Ljava/io/InputStream;J)[B

    move-result-object v10

    .line 155
    .local v10, "rom":[B
    invoke-static {v10, v9}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->buildAssets([BZ)Ljava/util/List;

    move-result-object v11

    .line 156
    .local v11, "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;>;"
    if-eqz v9, :cond_0

    .line 157
    invoke-static {}, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest;->entries()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 158
    :cond_0
    invoke-static {}, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest;->legacyEntries()Ljava/util/List;

    move-result-object v0

    :goto_0
    move-object v12, v0

    .line 159
    .local v12, "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 163
    invoke-static {v6}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 164
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 165
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not create tactical sprite staging"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 169
    .local v0, "verified":I
    const-wide/16 v1, 0x0

    .line 170
    .local v1, "bytes":J
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 172
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
    :goto_2
    :try_start_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 173
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;

    move-object v7, v0

    .line 174
    .local v7, "asset":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;

    move-object v13, v0

    .line 175
    .local v13, "expected":Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;
    iget-object v0, v13, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;->relativePath:Ljava/lang/String;

    iget-object v14, v7, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;->path:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 178
    if-eqz v9, :cond_4

    iget-object v0, v7, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;->path:Ljava/lang/String;

    iget-object v14, v7, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;->data:[B

    iget v15, v13, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;->length:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_a

    move/from16 v16, v2

    .end local v2    # "verified":I
    .local v16, "verified":I
    :try_start_1
    iget-object v2, v13, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;->sha256:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v9, p6

    :try_start_2
    invoke-static {v9, v0, v14, v15, v2}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->matchesExtracted(Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    .line 202
    .end local v1    # "i":I
    .end local v7    # "asset":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;
    .end local v13    # "expected":Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;
    :catch_0
    move-exception v0

    move-object/from16 v9, p6

    goto/16 :goto_8

    .line 199
    :catch_1
    move-exception v0

    move-object/from16 v9, p6

    goto/16 :goto_9

    .line 178
    .end local v16    # "verified":I
    .restart local v1    # "i":I
    .restart local v2    # "verified":I
    .restart local v7    # "asset":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;
    .restart local v13    # "expected":Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;
    :cond_4
    move-object/from16 v9, p6

    move/from16 v16, v2

    .end local v2    # "verified":I
    .restart local v16    # "verified":I
    :goto_3
    const/4 v0, 0x1

    :goto_4
    move v2, v0

    .line 180
    .local v2, "match":Z
    if-eqz v2, :cond_5

    add-int/lit8 v0, v16, 0x1

    move/from16 v16, v0

    .end local v16    # "verified":I
    .restart local v0    # "verified":I
    goto :goto_5

    .end local v0    # "verified":I
    .restart local v16    # "verified":I
    :cond_5
    iget-object v0, v7, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;->path:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :goto_5
    iget-object v0, v7, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;->data:[B

    array-length v0, v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_8

    int-to-long v14, v0

    add-long/2addr v3, v14

    .line 183
    :try_start_3
    iget-object v0, v7, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;->path:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object v14, v0

    .line 184
    .local v14, "out":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v15, v0

    .line 185
    .local v15, "parent":Ljava/io/File;
    if-eqz v15, :cond_7

    :try_start_4
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    move/from16 v17, v2

    goto :goto_6

    .line 186
    :cond_6
    new-instance v0, Ljava/io/IOException;

    move/from16 v17, v2

    .end local v2    # "match":Z
    .local v17, "match":Z
    const-string v2, "Could not create tactical sprite asset directory"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "bytes":J
    .end local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "rom":[B
    .end local v11    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;>;"
    .end local v12    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;>;"
    .end local v16    # "verified":I
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .end local p5    # "requireReferenceHashes":Z
    .end local p6    # "profileId":Ljava/lang/String;
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_8

    .line 185
    .end local v17    # "match":Z
    .restart local v2    # "match":Z
    .restart local v3    # "bytes":J
    .restart local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "rom":[B
    .restart local v11    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;>;"
    .restart local v12    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;>;"
    .restart local v16    # "verified":I
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .restart local p5    # "requireReferenceHashes":Z
    .restart local p6    # "profileId":Ljava/lang/String;
    :cond_7
    move/from16 v17, v2

    .line 188
    .end local v2    # "match":Z
    .restart local v17    # "match":Z
    :goto_6
    :try_start_5
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v2, v0

    .line 190
    .local v2, "stream":Ljava/io/FileOutputStream;
    :try_start_6
    iget-object v0, v7, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;->data:[B

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 191
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 193
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 194
    nop

    .line 195
    if-eqz v8, :cond_8

    add-int/lit8 v0, v1, 0x1

    move-object/from16 v18, v2

    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .local v18, "stream":Ljava/io/FileOutputStream;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4

    move-wide/from16 v19, v3

    .end local v3    # "bytes":J
    .local v19, "bytes":J
    :try_start_8
    iget-object v3, v7, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;->path:Ljava/lang/String;

    invoke-interface {v8, v0, v2, v3}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;->onProgress(IILjava/lang/String;)V

    goto :goto_7

    .end local v18    # "stream":Ljava/io/FileOutputStream;
    .end local v19    # "bytes":J
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "bytes":J
    :cond_8
    move-object/from16 v18, v2

    move-wide/from16 v19, v3

    .line 172
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .end local v3    # "bytes":J
    .end local v7    # "asset":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;
    .end local v13    # "expected":Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;
    .end local v14    # "out":Ljava/io/File;
    .end local v15    # "parent":Ljava/io/File;
    .end local v17    # "match":Z
    .restart local v19    # "bytes":J
    :goto_7
    add-int/lit8 v1, v1, 0x1

    move/from16 v9, p5

    move/from16 v2, v16

    move-wide/from16 v3, v19

    goto/16 :goto_2

    .line 193
    .end local v19    # "bytes":J
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "bytes":J
    .restart local v7    # "asset":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;
    .restart local v13    # "expected":Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;
    .restart local v14    # "out":Ljava/io/File;
    .restart local v15    # "parent":Ljava/io/File;
    .restart local v17    # "match":Z
    :catchall_0
    move-exception v0

    move-object/from16 v18, v2

    move-wide/from16 v19, v3

    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .end local v3    # "bytes":J
    .restart local v18    # "stream":Ljava/io/FileOutputStream;
    .restart local v19    # "bytes":J
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V

    .line 194
    nop

    .end local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "rom":[B
    .end local v11    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;>;"
    .end local v12    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;>;"
    .end local v16    # "verified":I
    .end local v19    # "bytes":J
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .end local p5    # "requireReferenceHashes":Z
    .end local p6    # "profileId":Ljava/lang/String;
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    .line 202
    .end local v1    # "i":I
    .end local v7    # "asset":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;
    .end local v13    # "expected":Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;
    .end local v14    # "out":Ljava/io/File;
    .end local v15    # "parent":Ljava/io/File;
    .end local v17    # "match":Z
    .end local v18    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "rom":[B
    .restart local v11    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;>;"
    .restart local v12    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;>;"
    .restart local v16    # "verified":I
    .restart local v19    # "bytes":J
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .restart local p5    # "requireReferenceHashes":Z
    .restart local p6    # "profileId":Ljava/lang/String;
    :catch_2
    move-exception v0

    move/from16 v2, v16

    move-wide/from16 v3, v19

    goto :goto_b

    .line 199
    :catch_3
    move-exception v0

    move/from16 v2, v16

    move-wide/from16 v3, v19

    goto :goto_d

    .line 202
    .end local v19    # "bytes":J
    .restart local v3    # "bytes":J
    :catch_4
    move-exception v0

    move-wide/from16 v19, v3

    move/from16 v2, v16

    .end local v3    # "bytes":J
    .restart local v19    # "bytes":J
    goto :goto_b

    .line 199
    .end local v19    # "bytes":J
    .restart local v3    # "bytes":J
    :catch_5
    move-exception v0

    move-wide/from16 v19, v3

    move/from16 v2, v16

    .end local v3    # "bytes":J
    .restart local v19    # "bytes":J
    goto :goto_d

    .line 176
    .end local v16    # "verified":I
    .end local v19    # "bytes":J
    .restart local v1    # "i":I
    .local v2, "verified":I
    .restart local v3    # "bytes":J
    .restart local v7    # "asset":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;
    .restart local v13    # "expected":Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;
    :cond_9
    move-object/from16 v9, p6

    move/from16 v16, v2

    .end local v2    # "verified":I
    .restart local v16    # "verified":I
    :try_start_9
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Tactical sprite manifest order mismatch at "

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
    .end local v11    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;>;"
    .end local v12    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;>;"
    .end local v16    # "verified":I
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .end local p5    # "requireReferenceHashes":Z
    .end local p6    # "profileId":Ljava/lang/String;
    throw v0

    .line 172
    .end local v7    # "asset":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;
    .end local v13    # "expected":Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;
    .restart local v2    # "verified":I
    .restart local v3    # "bytes":J
    .restart local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "rom":[B
    .restart local v11    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;>;"
    .restart local v12    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;>;"
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .restart local p5    # "requireReferenceHashes":Z
    .restart local p6    # "profileId":Ljava/lang/String;
    :cond_a
    move-object/from16 v9, p6

    move/from16 v16, v2

    .line 197
    .end local v1    # "i":I
    .end local v2    # "verified":I
    .restart local v16    # "verified":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {v6}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 198
    :cond_b
    new-instance v0, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_8

    const/4 v7, 0x0

    move/from16 v2, v16

    .end local v16    # "verified":I
    .restart local v2    # "verified":I
    :try_start_a
    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;-><init>(IIJLjava/util/List;Ljava/io/File;Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider-IA;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_6

    .end local v2    # "verified":I
    .restart local v16    # "verified":I
    return-object v0

    .line 202
    .end local v16    # "verified":I
    .restart local v2    # "verified":I
    :catch_6
    move-exception v0

    goto :goto_a

    .line 199
    :catch_7
    move-exception v0

    goto :goto_c

    .line 202
    .end local v2    # "verified":I
    .restart local v16    # "verified":I
    :catch_8
    move-exception v0

    :goto_8
    move/from16 v2, v16

    goto :goto_b

    .line 199
    :catch_9
    move-exception v0

    :goto_9
    move/from16 v2, v16

    goto :goto_d

    .line 202
    .end local v16    # "verified":I
    .restart local v2    # "verified":I
    :catch_a
    move-exception v0

    move-object/from16 v9, p6

    :goto_a
    move/from16 v16, v2

    .line 203
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_b
    invoke-static/range {p3 .. p3}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 204
    throw v0

    .line 199
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_b
    move-exception v0

    move-object/from16 v9, p6

    :goto_c
    move/from16 v16, v2

    .line 200
    .local v0, "e":Ljava/io/IOException;
    :goto_d
    invoke-static/range {p3 .. p3}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 201
    throw v0

    .line 160
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "verified":I
    .end local v3    # "bytes":J
    .end local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c
    move-object/from16 v9, p6

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Tactical sprite manifest/generator count mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    .end local v10    # "rom":[B
    .end local v11    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Asset;>;"
    .end local v12    # "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;>;"
    :cond_d
    move-object/from16 v9, p6

    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is unexpectedly large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_e
    move-object/from16 v9, p6

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Tactical sprite staging is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_f
    move-object/from16 v9, p6

    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM stream is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static extractOverlayCandidate(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;
    .locals 7
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    .local v0, "input":Ljava/io/InputStream;
    .local v1, "knownRomSize":J
    .local v3, "stagingRoot":Ljava/io/File;
    .local v4, "listener":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;
    invoke-static/range {v0 .. v6}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->extractInternal(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;ZLjava/lang/String;)Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;

    move-result-object p0

    return-object p0
.end method

.method private static isValidLayout([BI)Z
    .locals 5
    .param p0, "rom"    # [B
    .param p1, "layout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 600
    const/4 v0, 0x0

    if-lez p1, :cond_4

    array-length v1, p0

    add-int/lit8 v1, v1, -0x2

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 601
    :cond_0
    invoke-static {p0, p1}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->be16([BI)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 602
    .local v1, "pieceCount":I
    if-lt v1, v2, :cond_3

    const/16 v3, 0x20

    if-le v1, v3, :cond_1

    goto :goto_0

    .line 603
    :cond_1
    array-length v3, p0

    add-int/lit8 v3, v3, -0x2

    mul-int/lit8 v4, v1, 0xc

    sub-int/2addr v3, v4

    if-gt p1, v3, :cond_2

    move v0, v2

    :cond_2
    return v0

    .line 602
    :cond_3
    :goto_0
    return v0

    .line 600
    .end local v1    # "pieceCount":I
    :cond_4
    :goto_1
    return v0
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

    .line 725
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

    .line 726
    .local v2, "initial":I
    :goto_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 727
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    new-array v3, v3, [B

    .line 729
    .local v3, "buffer":[B
    :goto_1
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "count":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    .line 730
    if-nez v6, :cond_1

    goto :goto_1

    .line 731
    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    const/high16 v7, 0x1000000

    sub-int/2addr v7, v6

    if-gt v5, v7, :cond_2

    .line 732
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 731
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is unexpectedly large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    :cond_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 735
    .local v5, "rom":[B
    cmp-long v0, p1, v0

    if-lez v0, :cond_5

    array-length v0, v5

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 736
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM size changed while reading"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :cond_5
    :goto_2
    return-object v5
.end method

.method private static renderDetailPreview4bpp([BI[BI)[B
    .locals 23
    .param p0, "rom"    # [B
    .param p1, "mapOffset"    # I
    .param p2, "patterns"    # [B
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    move-object/from16 v0, p2

    const/16 v1, 0xa80

    new-array v1, v1, [B

    .line 406
    .local v1, "packed":[B
    array-length v2, v0

    div-int/lit8 v2, v2, 0x20

    .line 407
    .local v2, "patternCount":I
    const/4 v3, 0x0

    .local v3, "tileY":I
    :goto_0
    const/4 v4, 0x7

    if-ge v3, v4, :cond_a

    .line 408
    const/4 v4, 0x0

    .local v4, "tileX":I
    :goto_1
    const/16 v5, 0xc

    if-ge v4, v5, :cond_9

    .line 409
    mul-int/lit8 v5, v3, 0xc

    add-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x2

    add-int v5, p1, v5

    move-object/from16 v6, p0

    invoke-static {v6, v5}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->be16([BI)I

    move-result v5

    .line 410
    .local v5, "attr":I
    and-int/lit16 v7, v5, 0x7ff

    .line 411
    .local v7, "pattern":I
    and-int/lit16 v8, v5, 0x800

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_0

    move v8, v10

    goto :goto_2

    :cond_0
    move v8, v9

    .line 412
    .local v8, "hFlip":Z
    :goto_2
    and-int/lit16 v11, v5, 0x1000

    if-eqz v11, :cond_1

    move v9, v10

    .line 413
    .local v9, "vFlip":Z
    :cond_1
    if-ltz v7, :cond_8

    if-ge v7, v2, :cond_8

    .line 416
    mul-int/lit8 v10, v7, 0x20

    .line 417
    .local v10, "patternOffset":I
    const/4 v11, 0x0

    .local v11, "py":I
    :goto_3
    const/16 v12, 0x8

    if-ge v11, v12, :cond_7

    .line 418
    if-eqz v9, :cond_2

    rsub-int/lit8 v13, v11, 0x7

    goto :goto_4

    :cond_2
    move v13, v11

    .line 419
    .local v13, "sourceY":I
    :goto_4
    const/4 v14, 0x0

    .local v14, "px":I
    :goto_5
    if-ge v14, v12, :cond_6

    .line 420
    if-eqz v8, :cond_3

    rsub-int/lit8 v15, v14, 0x7

    goto :goto_6

    :cond_3
    move v15, v14

    .line 421
    .local v15, "sourceX":I
    :goto_6
    mul-int/lit8 v16, v13, 0x4

    add-int v16, v10, v16

    ushr-int/lit8 v17, v15, 0x1

    add-int v16, v16, v17

    aget-byte v12, v0, v16

    and-int/lit16 v12, v12, 0xff

    .line 422
    .local v12, "sourceByte":I
    and-int/lit8 v16, v15, 0x1

    if-nez v16, :cond_4

    ushr-int/lit8 v16, v12, 0x4

    goto :goto_7

    :cond_4
    and-int/lit8 v16, v12, 0xf

    .line 423
    .local v16, "colour":I
    :goto_7
    mul-int/lit8 v18, v4, 0x8

    add-int v18, v18, v14

    .line 424
    .local v18, "x":I
    mul-int/lit8 v19, v3, 0x8

    add-int v19, v19, v11

    .line 425
    .local v19, "y":I
    mul-int/lit8 v20, v19, 0x60

    add-int v20, v20, v18

    .line 426
    .local v20, "pixel":I
    ushr-int/lit8 v21, v20, 0x1

    .line 427
    .local v21, "dst":I
    and-int/lit8 v22, v20, 0x1

    if-nez v22, :cond_5

    shl-int/lit8 v0, v16, 0x4

    int-to-byte v0, v0

    aput-byte v0, v1, v21

    goto :goto_8

    .line 428
    :cond_5
    aget-byte v0, v1, v21

    and-int/lit16 v0, v0, 0xf0

    or-int v0, v0, v16

    int-to-byte v0, v0

    aput-byte v0, v1, v21

    .line 419
    .end local v12    # "sourceByte":I
    .end local v15    # "sourceX":I
    .end local v16    # "colour":I
    .end local v18    # "x":I
    .end local v19    # "y":I
    .end local v20    # "pixel":I
    .end local v21    # "dst":I
    :goto_8
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p2

    const/16 v12, 0x8

    goto :goto_5

    .line 417
    .end local v13    # "sourceY":I
    .end local v14    # "px":I
    :cond_6
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p2

    goto :goto_3

    .line 408
    .end local v5    # "attr":I
    .end local v7    # "pattern":I
    .end local v8    # "hFlip":Z
    .end local v9    # "vFlip":Z
    .end local v10    # "patternOffset":I
    .end local v11    # "py":I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p2

    goto/16 :goto_1

    .line 414
    .restart local v5    # "attr":I
    .restart local v7    # "pattern":I
    .restart local v8    # "hFlip":Z
    .restart local v9    # "vFlip":Z
    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Classic detail preview pattern outside stream: type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v11, p3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    .end local v5    # "attr":I
    .end local v7    # "pattern":I
    .end local v8    # "hFlip":Z
    .end local v9    # "vFlip":Z
    :cond_9
    move-object/from16 v6, p0

    move/from16 v11, p3

    .line 407
    .end local v4    # "tileX":I
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p2

    goto/16 :goto_0

    :cond_a
    move-object/from16 v6, p0

    move/from16 v11, p3

    .line 433
    .end local v3    # "tileY":I
    return-object v1
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

    .line 768
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 769
    .local v0, "canonicalRoot":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 770
    .local v1, "child":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 771
    .local v2, "rootPath":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 772
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

    .line 773
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Asset path escaped staging root"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 775
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

    .line 780
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 781
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 782
    .local v1, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 783
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

    .line 784
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 785
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "hash":[B
    .end local v2    # "out":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 786
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static writeDetailPreviewRecords(Ljava/io/DataOutputStream;[BII)V
    .locals 11
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "rom"    # [B
    .param p2, "canonicalPointerTable"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    invoke-static {p1, p2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v0

    .line 365
    .local v0, "table":I
    if-ltz v0, :cond_7

    array-length v1, p1

    mul-int/lit8 v2, p3, 0x4

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_7

    .line 368
    const/16 v1, 0x20

    new-array v2, v1, [B

    .line 369
    .local v2, "emptyPalette":[B
    const/16 v3, 0xa80

    new-array v3, v3, [B

    .line 370
    .local v3, "emptyPixels":[B
    const/4 v4, 0x0

    .local v4, "type":I
    :goto_0
    if-ge v4, p3, :cond_6

    .line 371
    mul-int/lit8 v5, v4, 0x4

    add-int/2addr v5, v0

    invoke-static {p1, v5}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->be32u([BI)J

    move-result-wide v5

    const-wide/32 v7, 0xffffff

    and-long/2addr v5, v7

    long-to-int v5, v5

    .line 372
    .local v5, "record":I
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    move v8, v7

    goto :goto_1

    :cond_0
    move v8, v6

    .line 373
    .local v8, "present":Z
    :goto_1
    const/4 v9, 0x0

    .line 374
    .local v9, "transferBytes":I
    if-eqz v8, :cond_2

    .line 375
    const/16 v10, 0xca

    invoke-static {p1, v5, v10}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->checkRange([BII)V

    .line 376
    add-int/lit16 v10, v5, 0xc8

    invoke-static {p1, v10}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->be16([BI)I

    move-result v9

    .line 377
    if-lt v9, v1, :cond_1

    move v10, v7

    goto :goto_2

    :cond_1
    move v10, v6

    :goto_2
    move v8, v10

    .line 379
    :cond_2
    if-eqz v8, :cond_3

    move v6, v7

    :cond_3
    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 380
    const/16 v6, 0x40

    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 381
    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 382
    if-nez v8, :cond_4

    .line 383
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 384
    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 385
    goto :goto_3

    .line 387
    :cond_4
    invoke-virtual {p0, p1, v5, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 394
    add-int/lit16 v6, v5, 0xca

    invoke-static {p1, v6}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->decompressPreviewStream([BI)[B

    move-result-object v6

    .line 395
    .local v6, "patterns":[B
    array-length v7, v6

    and-int/lit8 v7, v7, 0x1f

    if-nez v7, :cond_5

    array-length v7, v6

    if-eqz v7, :cond_5

    .line 398
    add-int/lit8 v7, v5, 0x20

    invoke-static {p1, v7, v6, v4}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->renderDetailPreview4bpp([BI[BI)[B

    move-result-object v7

    .line 399
    .local v7, "packed":[B
    invoke-virtual {p0, v7}, Ljava/io/DataOutputStream;->write([B)V

    .line 370
    .end local v5    # "record":I
    .end local v6    # "patterns":[B
    .end local v7    # "packed":[B
    .end local v8    # "present":Z
    .end local v9    # "transferBytes":I
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 396
    .restart local v5    # "record":I
    .restart local v6    # "patterns":[B
    .restart local v8    # "present":Z
    .restart local v9    # "transferBytes":I
    :cond_5
    new-instance v1, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Classic detail preview decoded pattern size mismatch: type "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 401
    .end local v4    # "type":I
    .end local v5    # "record":I
    .end local v6    # "patterns":[B
    .end local v8    # "present":Z
    .end local v9    # "transferBytes":I
    :cond_6
    return-void

    .line 366
    .end local v2    # "emptyPalette":[B
    .end local v3    # "emptyPixels":[B
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Classic detail preview table outside ROM"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static writeDirectLayout(Ljava/io/DataOutputStream;[BIII)V
    .locals 3
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "rom"    # [B
    .param p2, "kind"    # I
    .param p3, "index"    # I
    .param p4, "layout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 589
    invoke-static {p1, p4}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->isValidLayout([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    invoke-static {p1, p4}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->be16([BI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 591
    .local v0, "pieceCount":I
    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 592
    invoke-virtual {p0, p3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 593
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 594
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 595
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 596
    add-int/lit8 v1, p4, 0x2

    mul-int/lit8 v2, v0, 0xc

    invoke-static {p1, v1, v2}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->copy([BII)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 597
    return-void

    .line 589
    .end local v0    # "pieceCount":I
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid direct tactical layout"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static writeFremenIconRecord(Ljava/io/DataOutputStream;[BII)V
    .locals 3
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "rom"    # [B
    .param p2, "key"    # I
    .param p3, "canonicalOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    invoke-static {p1, p3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v0

    .line 282
    .local v0, "source":I
    if-ltz v0, :cond_0

    array-length v1, p1

    const/16 v2, 0x180

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 285
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 286
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 287
    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 288
    invoke-virtual {p0, p1, v0, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 289
    return-void

    .line 283
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Original Fremen icon outside authenticated BASE ROM"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static writeInfoIconRecords(Ljava/io/DataOutputStream;[BII)V
    .locals 22
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "rom"    # [B
    .param p2, "canonicalInfoPointers"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-static/range {p1 .. p2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v3

    .line 319
    .local v3, "infoTable":I
    const v4, 0x60e8c

    invoke-static {v1, v4}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v4

    .line 320
    .local v4, "visualTable":I
    const/16 v5, 0x180

    new-array v6, v5, [B

    .line 321
    .local v6, "empty":[B
    if-ltz v3, :cond_8

    array-length v7, v1

    mul-int/lit8 v8, v2, 0x4

    sub-int/2addr v7, v8

    if-gt v3, v7, :cond_8

    .line 324
    const/4 v7, 0x0

    .local v7, "type":I
    :goto_0
    if-ge v7, v2, :cond_7

    .line 325
    mul-int/lit8 v8, v7, 0x4

    add-int/2addr v8, v3

    invoke-static {v1, v8}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->be32u([BI)J

    move-result-wide v8

    const-wide/32 v10, 0xffffff

    and-long/2addr v8, v10

    long-to-int v8, v8

    .line 326
    .local v8, "info":I
    if-lez v8, :cond_6

    array-length v9, v1

    add-int/lit8 v9, v9, -0x16

    if-gt v8, v9, :cond_6

    .line 329
    add-int/lit8 v9, v8, 0x14

    invoke-static {v1, v9}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->be16([BI)I

    move-result v9

    .line 330
    .local v9, "visualId":I
    const/4 v12, 0x0

    if-eqz v9, :cond_0

    const/4 v14, 0x1

    goto :goto_1

    :cond_0
    move v14, v12

    .line 331
    .local v14, "present":Z
    :goto_1
    if-eqz v14, :cond_1

    const/4 v12, 0x1

    :cond_1
    invoke-virtual {v0, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 332
    const/16 v12, 0x80

    invoke-virtual {v0, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 333
    invoke-virtual {v0, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 334
    if-nez v14, :cond_2

    .line 335
    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 336
    move/from16 v21, v3

    move/from16 v18, v4

    move v4, v5

    goto/16 :goto_2

    .line 338
    :cond_2
    mul-int/lit8 v12, v9, 0x8

    add-int/2addr v12, v4

    .line 339
    .local v12, "visual":I
    if-ltz v12, :cond_5

    array-length v15, v1

    add-int/lit8 v15, v15, -0x8

    if-gt v12, v15, :cond_5

    .line 342
    invoke-static {v1, v12}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->be32u([BI)J

    move-result-wide v15

    move-wide/from16 v17, v10

    and-long v10, v15, v17

    long-to-int v10, v10

    .line 343
    .local v10, "source":I
    add-int/lit8 v11, v12, 0x4

    invoke-static {v1, v11}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->be32u([BI)J

    move-result-wide v15

    move/from16 v19, v14

    const/4 v11, 0x1

    .end local v14    # "present":Z
    .local v19, "present":Z
    and-long v13, v15, v17

    long-to-int v13, v13

    .line 344
    .local v13, "layout":I
    if-lez v10, :cond_4

    array-length v14, v1

    sub-int/2addr v14, v5

    if-gt v10, v14, :cond_4

    if-lez v13, :cond_4

    array-length v14, v1

    add-int/lit8 v14, v14, -0xe

    if-gt v13, v14, :cond_4

    .line 348
    invoke-static {v1, v13}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->be16([BI)I

    move-result v14

    add-int/2addr v14, v11

    .line 349
    .local v14, "pieceCount":I
    add-int/lit8 v15, v13, 0x8

    invoke-static {v1, v15}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->be16([BI)I

    move-result v15

    .line 350
    .local v15, "size":I
    move/from16 v16, v11

    add-int/lit8 v11, v13, 0xc

    invoke-static {v1, v11}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->be16([BI)I

    move-result v11

    int-to-short v11, v11

    .line 351
    .local v11, "x":I
    add-int/lit8 v5, v13, 0x6

    invoke-static {v1, v5}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->be16([BI)I

    move-result v5

    int-to-short v5, v5

    .line 352
    .local v5, "y":I
    ushr-int/lit8 v18, v15, 0xa

    const/4 v2, 0x3

    and-int/lit8 v18, v18, 0x3

    move/from16 v20, v2

    add-int/lit8 v2, v18, 0x1

    .line 353
    .local v2, "widthTiles":I
    ushr-int/lit8 v18, v15, 0x8

    and-int/lit8 v18, v18, 0x3

    move/from16 v21, v3

    .end local v3    # "infoTable":I
    .local v21, "infoTable":I
    add-int/lit8 v3, v18, 0x1

    .line 354
    .local v3, "heightTiles":I
    move/from16 v18, v4

    move/from16 v4, v16

    .end local v4    # "visualTable":I
    .local v18, "visualTable":I
    if-ne v14, v4, :cond_3

    const/4 v4, 0x4

    if-ne v2, v4, :cond_3

    move/from16 v4, v20

    if-ne v3, v4, :cond_3

    if-nez v11, :cond_3

    if-nez v5, :cond_3

    .line 357
    const/16 v4, 0x180

    invoke-virtual {v0, v1, v10, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 324
    .end local v2    # "widthTiles":I
    .end local v3    # "heightTiles":I
    .end local v5    # "y":I
    .end local v8    # "info":I
    .end local v9    # "visualId":I
    .end local v10    # "source":I
    .end local v11    # "x":I
    .end local v12    # "visual":I
    .end local v13    # "layout":I
    .end local v14    # "pieceCount":I
    .end local v15    # "size":I
    .end local v19    # "present":Z
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, p3

    move v5, v4

    move/from16 v4, v18

    move/from16 v3, v21

    goto/16 :goto_0

    .line 355
    .restart local v2    # "widthTiles":I
    .restart local v3    # "heightTiles":I
    .restart local v5    # "y":I
    .restart local v8    # "info":I
    .restart local v9    # "visualId":I
    .restart local v10    # "source":I
    .restart local v11    # "x":I
    .restart local v12    # "visual":I
    .restart local v13    # "layout":I
    .restart local v14    # "pieceCount":I
    .restart local v15    # "size":I
    .restart local v19    # "present":Z
    :cond_3
    new-instance v4, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Classic info visual geometry mismatch: type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 344
    .end local v2    # "widthTiles":I
    .end local v5    # "y":I
    .end local v11    # "x":I
    .end local v14    # "pieceCount":I
    .end local v15    # "size":I
    .end local v18    # "visualTable":I
    .end local v21    # "infoTable":I
    .local v3, "infoTable":I
    .restart local v4    # "visualTable":I
    :cond_4
    move/from16 v21, v3

    move/from16 v18, v4

    .line 346
    .end local v3    # "infoTable":I
    .end local v4    # "visualTable":I
    .restart local v18    # "visualTable":I
    .restart local v21    # "infoTable":I
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Classic info visual payload outside ROM: type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    .end local v10    # "source":I
    .end local v13    # "layout":I
    .end local v18    # "visualTable":I
    .end local v19    # "present":Z
    .end local v21    # "infoTable":I
    .restart local v3    # "infoTable":I
    .restart local v4    # "visualTable":I
    .local v14, "present":Z
    :cond_5
    move/from16 v21, v3

    move/from16 v18, v4

    move/from16 v19, v14

    .line 340
    .end local v3    # "infoTable":I
    .end local v4    # "visualTable":I
    .end local v14    # "present":Z
    .restart local v18    # "visualTable":I
    .restart local v19    # "present":Z
    .restart local v21    # "infoTable":I
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Classic info visual outside ROM: type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    .end local v9    # "visualId":I
    .end local v12    # "visual":I
    .end local v18    # "visualTable":I
    .end local v19    # "present":Z
    .end local v21    # "infoTable":I
    .restart local v3    # "infoTable":I
    .restart local v4    # "visualTable":I
    :cond_6
    move/from16 v21, v3

    move/from16 v18, v4

    .line 327
    .end local v3    # "infoTable":I
    .end local v4    # "visualTable":I
    .restart local v18    # "visualTable":I
    .restart local v21    # "infoTable":I
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Classic info record outside ROM: type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    .end local v7    # "type":I
    .end local v8    # "info":I
    .end local v18    # "visualTable":I
    .end local v21    # "infoTable":I
    .restart local v3    # "infoTable":I
    .restart local v4    # "visualTable":I
    :cond_7
    return-void

    .line 321
    :cond_8
    move/from16 v21, v3

    move/from16 v18, v4

    .line 322
    .end local v3    # "infoTable":I
    .end local v4    # "visualTable":I
    .restart local v18    # "visualTable":I
    .restart local v21    # "infoTable":I
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Classic info pointer table outside ROM"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static writePurchaseIconRecords(Ljava/io/DataOutputStream;[BIII)V
    .locals 8
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "rom"    # [B
    .param p2, "canonicalTable"    # I
    .param p3, "count"    # I
    .param p4, "paletteLine"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    invoke-static {p1, p2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v0

    .line 295
    .local v0, "table":I
    if-ltz v0, :cond_5

    array-length v1, p1

    mul-int/lit8 v2, p3, 0x4

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_5

    .line 298
    const/16 v1, 0x180

    new-array v2, v1, [B

    .line 299
    .local v2, "empty":[B
    const/4 v3, 0x0

    .local v3, "type":I
    :goto_0
    if-ge v3, p3, :cond_4

    .line 300
    mul-int/lit8 v4, v3, 0x4

    add-int/2addr v4, v0

    invoke-static {p1, v4}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->be32u([BI)J

    move-result-wide v4

    const-wide/32 v6, 0xffffff

    and-long/2addr v4, v6

    long-to-int v4, v4

    .line 301
    .local v4, "pointer":I
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    move v7, v6

    goto :goto_1

    :cond_0
    move v7, v5

    .line 302
    .local v7, "present":Z
    :goto_1
    if-eqz v7, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p0, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 303
    invoke-virtual {p0, p4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 304
    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 305
    if-nez v7, :cond_2

    .line 306
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_2

    .line 308
    :cond_2
    if-ltz v4, :cond_3

    array-length v5, p1

    sub-int/2addr v5, v1

    if-gt v4, v5, :cond_3

    .line 311
    invoke-virtual {p0, p1, v4, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 299
    .end local v4    # "pointer":I
    .end local v7    # "present":Z
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 309
    .restart local v4    # "pointer":I
    .restart local v7    # "present":Z
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Classic purchase icon pointer outside ROM: type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 314
    .end local v3    # "type":I
    .end local v4    # "pointer":I
    .end local v7    # "present":Z
    :cond_4
    return-void

    .line 296
    .end local v2    # "empty":[B
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Classic purchase icon table outside ROM"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
