.class public final Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;
.super Ljava/lang/Object;
.source "GenesisRomRussianLocalizationAssetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;
    }
.end annotation


# static fields
.field private static final ENDING_TEXT_STREAM:I = 0x11930

.field private static final HOUSE_MISSION_TABLE:I = 0x87f38

.field private static final MAX_ROM_BYTES:I = 0x1000000

.field private static final MENTAT_FONT_LOADER_POINTER_RU:I = 0x25a6c

.field private static final RESULT_COMMON_PTRS:I = 0xa2e80

.field private static final RESULT_FONT:I = 0x50c34

.field private static final RESULT_HOUSE_LABELS_RU:I = 0xa697d

.field private static final RESULT_OVERLAY:I = 0xa5d8e

.field private static final RESULT_PASSWORD_OVERLAY_RU:I = 0xb9312

.field private static final RESULT_PASSWORD_RECORDS:I = 0x88124

.field private static final RESULT_RANK_NAMES:I = 0xa68e2

.field private static final RESULT_THRESHOLDS:I = 0xa68d2

.field private static final RUSSIAN_SHARED_FONT_STREAM:I = 0xfeee0

.field private static final STRUCTURE_INFO_POINTERS:I = 0x6b954

.field private static final STRUCTURE_NAME_COUNT:I = 0x13

.field private static final TITLE_FONT_LOADER_POINTER_RU:I = 0x19a58

.field private static final TUTORIAL_CHAR_MAP:I = 0x42ad0

.field private static final TUTORIAL_FONT:I = 0x42d02

.field private static final TUTORIAL_FONT_BYTES:I = 0x1520

.field private static final TUTORIAL_SCENE_TABLE:I = 0x416e2

.field private static final TUTORIAL_SCRIPT_STARTS:[I

.field private static final UNIT_INFO_POINTERS:I = 0x6c5bc

.field private static final UNIT_NAME_COUNT:I = 0x1b

.field private static final UTF8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->TUTORIAL_SCRIPT_STARTS:[I

    .line 58
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->UTF8:Ljava/nio/charset/Charset;

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

    .line 507
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->checkRange([BII)V

    .line 508
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

    .line 512
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->checkRange([BII)V

    .line 513
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
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 525
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 527
    return-void

    .line 526
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Translation ROM range is invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static copy([BII)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->checkRange([BII)V

    .line 521
    add-int v0, p1, p2

    invoke-static {p0, p1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method private static decodeEndingLocalization([BLjava/util/LinkedHashMap;)V
    .locals 2
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    .local p1, "out":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[B>;"
    const-string v0, "ending/font.bin"

    invoke-static {p0}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->decodeRussianSharedFont([B)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v0, "content/ending/ending_text_v1.bin"

    invoke-static {p0}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->decodeEndingText([B)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    return-void
.end method

.method static decodeEndingText([B)[B
    .locals 6
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    const v0, 0x11930

    .line 284
    .local v0, "p":I
    array-length v1, p0

    const v2, 0x12930

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 285
    .local v1, "limit":I
    const/4 v2, 0x0

    .line 286
    .local v2, "terminated":Z
    :goto_0
    if-ge v0, v1, :cond_6

    .line 287
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "p":I
    .local v3, "p":I
    aget-byte v0, p0, v0

    const/16 v4, 0xff

    and-int/2addr v0, v4

    .line 288
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v2, 0x1

    move v0, v3

    goto :goto_3

    .line 289
    :cond_0
    if-ne v0, v4, :cond_3

    .line 290
    if-ge v3, v1, :cond_2

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "p":I
    .local v5, "p":I
    aget-byte v3, p0, v3

    and-int/2addr v3, v4

    const/4 v4, 0x3

    if-gt v3, v4, :cond_1

    move v0, v5

    goto :goto_2

    :cond_1
    move v3, v5

    .line 291
    .end local v5    # "p":I
    .restart local v3    # "p":I
    :cond_2
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Translated ending palette marker mismatch"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 292
    :cond_3
    const/16 v4, 0xa

    if-eq v0, v4, :cond_5

    const/16 v4, 0x20

    if-lt v0, v4, :cond_4

    const/16 v4, 0x7e

    if-gt v0, v4, :cond_4

    goto :goto_1

    .line 293
    :cond_4
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Translated ending text contains unsupported byte"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 295
    .end local v0    # "c":I
    :cond_5
    :goto_1
    move v0, v3

    .end local v3    # "p":I
    .local v0, "p":I
    :goto_2
    goto :goto_0

    .line 296
    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    .line 297
    const v3, 0x11930

    sub-int v4, v0, v3

    invoke-static {p0, v3, v4}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->copy([BII)[B

    move-result-object v3

    return-object v3

    .line 296
    :cond_7
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Translated ending text is unterminated"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static decodeHudObjectNameTable([BIILjava/io/ByteArrayOutputStream;)V
    .locals 8
    .param p0, "rom"    # [B
    .param p1, "pointerTable"    # I
    .param p2, "count"    # I
    .param p3, "out"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    const/4 v0, 0x0

    .local v0, "type":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 315
    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p1

    invoke-static {p0, v1}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->be32([BI)I

    move-result v1

    invoke-static {v1}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->u24(I)I

    move-result v1

    .line 316
    .local v1, "record":I
    add-int/lit8 v2, v1, 0x2

    const/4 v3, 0x4

    invoke-static {p0, v2, v3}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->checkRange([BII)V

    .line 317
    add-int/lit8 v2, v1, 0x2

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->be32([BI)I

    move-result v2

    invoke-static {v2}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->u24(I)I

    move-result v2

    .line 318
    .local v2, "namePointer":I
    const/16 v3, 0x40

    invoke-static {p0, v2, v3}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->readCStringBytes([BII)[B

    move-result-object v3

    .line 319
    .local v3, "raw":[B
    invoke-static {v3}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->decodeRussianHudName([B)Ljava/lang/String;

    move-result-object v4

    .line 320
    .local v4, "decoded":Ljava/lang/String;
    sget-object v5, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 321
    .local v5, "utf8":[B
    array-length v6, v5

    const/4 v7, 0x0

    invoke-virtual {p3, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 322
    invoke-virtual {p3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 314
    .end local v1    # "record":I
    .end local v2    # "namePointer":I
    .end local v3    # "raw":[B
    .end local v4    # "decoded":Ljava/lang/String;
    .end local v5    # "utf8":[B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    .end local v0    # "type":I
    :cond_0
    return-void
.end method

.method static decodeHudObjectNames([B)[B
    .locals 3
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x2bc

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 307
    .local v0, "names":Ljava/io/ByteArrayOutputStream;
    const v1, 0x6c5bc

    const/16 v2, 0x1b

    invoke-static {p0, v1, v2, v0}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->decodeHudObjectNameTable([BIILjava/io/ByteArrayOutputStream;)V

    .line 308
    const v1, 0x6b954

    const/16 v2, 0x13

    invoke-static {p0, v1, v2, v0}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->decodeHudObjectNameTable([BIILjava/io/ByteArrayOutputStream;)V

    .line 309
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method static decodeMissionPresentationText([B)[B
    .locals 8
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x3e80

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 161
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .local v1, "romHouse":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 162
    mul-int/lit8 v2, v1, 0x4

    const v3, 0x87f38

    add-int/2addr v2, v3

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->be32([BI)I

    move-result v2

    invoke-static {v2}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->u24(I)I

    move-result v2

    .line 163
    .local v2, "base":I
    const/4 v3, 0x0

    .local v3, "mission":I
    :goto_1
    const/16 v4, 0x9

    if-ge v3, v4, :cond_1

    .line 164
    mul-int/lit8 v4, v3, 0x10

    add-int/2addr v4, v2

    .line 165
    .local v4, "record":I
    const/4 v5, 0x0

    .local v5, "field":I
    :goto_2
    const/4 v6, 0x4

    if-ge v5, v6, :cond_0

    .line 166
    mul-int/lit8 v6, v5, 0x4

    add-int/2addr v6, v4

    invoke-static {p0, v6}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->be32([BI)I

    move-result v6

    invoke-static {v6}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->u24(I)I

    move-result v6

    .line 167
    .local v6, "pointer":I
    const/16 v7, 0x1000

    invoke-static {p0, v6, v7}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->readCStringBytes([BII)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 165
    .end local v6    # "pointer":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 163
    .end local v4    # "record":I
    .end local v5    # "field":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 161
    .end local v2    # "base":I
    .end local v3    # "mission":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "romHouse":I
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method static decodeMissionResultExactData([B)[B
    .locals 8
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1ed

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 247
    .local v0, "result":Ljava/io/ByteArrayOutputStream;
    const v1, 0xa68d2

    const/16 v2, 0x10

    invoke-static {p0, v1, v2}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->copy([BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 248
    const v1, 0xa68e2

    const/16 v2, 0x99

    invoke-static {p0, v1, v2}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->copy([BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 249
    const v1, 0xa697d

    const/16 v2, 0x1b

    invoke-static {p0, v1, v2}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->copy([BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 250
    const/4 v1, 0x0

    .local v1, "mission":I
    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_2

    .line 251
    const/4 v2, 0x0

    .local v2, "house":I
    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 252
    mul-int/lit8 v3, v1, 0x18

    const v4, 0x88124

    add-int/2addr v3, v4

    mul-int/lit8 v4, v2, 0x8

    add-int/2addr v3, v4

    .line 253
    .local v3, "record":I
    invoke-static {p0, v3}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->be32([BI)I

    move-result v4

    invoke-static {v4}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->u24(I)I

    move-result v4

    .line 254
    .local v4, "pointer":I
    const/16 v5, 0x20

    invoke-static {p0, v4, v5}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->readCStringBytes([BII)[B

    move-result-object v5

    .line 255
    .local v5, "password":[B
    array-length v6, v5

    const/16 v7, 0xb

    if-ne v6, v7, :cond_0

    .line 256
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 251
    .end local v3    # "record":I
    .end local v4    # "pointer":I
    .end local v5    # "password":[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 255
    .restart local v3    # "record":I
    .restart local v4    # "pointer":I
    .restart local v5    # "password":[B
    :cond_0
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Translated result password length mismatch"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 250
    .end local v2    # "house":I
    .end local v3    # "record":I
    .end local v4    # "pointer":I
    .end local v5    # "password":[B
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    .end local v1    # "mission":I
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private static decodeMissionResultLocalization([BLjava/util/LinkedHashMap;)V
    .locals 8
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    .local p1, "out":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[B>;"
    const/16 v0, 0x7000

    new-array v0, v0, [B

    .line 229
    .local v0, "common":[B
    const/high16 v1, 0x10000

    new-array v1, v1, [B

    .line 230
    .local v1, "scratch":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x7

    const/16 v4, 0x1000

    if-ge v2, v3, :cond_1

    .line 231
    mul-int/lit8 v3, v2, 0x4

    const v5, 0xa2e80

    add-int/2addr v3, v5

    invoke-static {p0, v3}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->be32([BI)I

    move-result v3

    invoke-static {v3}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->u24(I)I

    move-result v3

    .line 232
    .local v3, "ptr":I
    invoke-static {p0, v3, v1}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->decompressInto([BI[B)I

    move-result v5

    .line 233
    .local v5, "produced":I
    if-lez v5, :cond_0

    .line 234
    mul-int/lit16 v6, v2, 0x1000

    const/4 v7, 0x0

    invoke-static {v1, v7, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    .end local v3    # "ptr":I
    .end local v5    # "produced":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    .restart local v3    # "ptr":I
    .restart local v5    # "produced":I
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v6, "Translated result common pattern decode empty"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 236
    .end local v2    # "i":I
    .end local v3    # "ptr":I
    .end local v5    # "produced":I
    :cond_1
    const-string v2, "mission_result/common_patterns.bin"

    invoke-virtual {p1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const v2, 0x50c34

    invoke-static {p0, v2, v4}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->copy([BII)[B

    move-result-object v2

    const-string v3, "mission_result/font.bin"

    invoke-virtual {p1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const v2, 0xa5d8e

    const/16 v3, 0xe00

    invoke-static {p0, v2, v3}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->decompressPrefix([BII)[B

    move-result-object v2

    const-string v3, "mission_result/overlay.map"

    invoke-virtual {p1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    nop

    .line 240
    const v2, 0xb9312

    const/16 v3, 0x700

    invoke-static {p0, v2, v3}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->decompressPrefix([BII)[B

    move-result-object v2

    .line 239
    const-string v3, "mission_result/password_overlay.map"

    invoke-virtual {p1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    nop

    .line 242
    invoke-static {p0}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->decodeMissionResultExactData([B)[B

    move-result-object v2

    .line 241
    const-string v3, "content/result/mission_result_data_v1.bin"

    invoke-virtual {p1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    return-void
.end method

.method private static decodeRussianHudName([B)Ljava/lang/String;
    .locals 9
    .param p0, "rawWithZero"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    array-length v0, p0

    .line 328
    .local v0, "n":I
    if-lez v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_3

    .line 329
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    const-string v3, "US-ASCII"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4, v2, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "raw":Ljava/lang/String;
    const-string v2, "IX"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    .line 331
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 332
    .local v2, "out":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 333
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 334
    .local v4, "ch":C
    const/16 v5, 0x410

    sparse-switch v4, :sswitch_data_0

    .line 367
    new-instance v5, Ljava/io/IOException;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 368
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7, v1}, [Ljava/lang/Object;

    move-result-object v7

    .line 367
    const-string v8, "Unsupported translated HUD glyph code %02X in %s"

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 366
    :sswitch_0
    const/16 v5, 0x428

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 365
    :sswitch_1
    const/16 v5, 0x427

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 364
    :sswitch_2
    const/16 v5, 0x426

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 363
    :sswitch_3
    const/16 v5, 0x424

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 362
    :sswitch_4
    const/16 v5, 0x423

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 361
    :sswitch_5
    const/16 v5, 0x41f

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 360
    :sswitch_6
    const/16 v5, 0x42f

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 359
    :sswitch_7
    const/16 v5, 0x41b

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 358
    :sswitch_8
    const/16 v5, 0x419

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 357
    :sswitch_9
    const/16 v5, 0x418

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 356
    :sswitch_a
    const/16 v5, 0x417

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 355
    :sswitch_b
    const/16 v5, 0x416

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 354
    :sswitch_c
    const/16 v5, 0x42d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 353
    :sswitch_d
    const/16 v5, 0x414

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 352
    :sswitch_e
    const/16 v5, 0x413

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 351
    :sswitch_f
    const/16 v5, 0x411

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 350
    :sswitch_10
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 349
    :sswitch_11
    const/16 v5, 0x42c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 348
    :sswitch_12
    const/16 v5, 0x429

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 347
    :sswitch_13
    const/16 v5, 0x425

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 346
    :sswitch_14
    const/16 v5, 0x422

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 345
    :sswitch_15
    const/16 v5, 0x420

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 344
    :sswitch_16
    const/16 v5, 0x41e

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 343
    :sswitch_17
    const/16 v5, 0x41c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 342
    :sswitch_18
    const/16 v5, 0x41a

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 341
    :sswitch_19
    const/16 v5, 0x49

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 340
    :sswitch_1a
    const/16 v5, 0x41d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 339
    :sswitch_1b
    const/16 v5, 0x415

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 338
    :sswitch_1c
    const/16 v5, 0x421

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 337
    :sswitch_1d
    const/16 v5, 0x412

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 336
    :sswitch_1e
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 335
    :sswitch_1f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 332
    .end local v4    # "ch":C
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 371
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, "decoded":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 373
    return-object v3

    .line 372
    :cond_2
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Translated HUD name decoded empty"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 328
    .end local v1    # "raw":Ljava/lang/String;
    .end local v2    # "out":Ljava/lang/StringBuilder;
    .end local v3    # "decoded":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Translated HUD name is unterminated"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1f
        0x2d -> :sswitch_1f
        0x2e -> :sswitch_1f
        0x32 -> :sswitch_1f
        0x41 -> :sswitch_1e
        0x42 -> :sswitch_1d
        0x43 -> :sswitch_1c
        0x45 -> :sswitch_1b
        0x48 -> :sswitch_1a
        0x49 -> :sswitch_19
        0x4b -> :sswitch_18
        0x4d -> :sswitch_17
        0x4f -> :sswitch_16
        0x50 -> :sswitch_15
        0x54 -> :sswitch_14
        0x58 -> :sswitch_13
        0x61 -> :sswitch_12
        0x62 -> :sswitch_11
        0x63 -> :sswitch_10
        0x64 -> :sswitch_f
        0x66 -> :sswitch_e
        0x67 -> :sswitch_d
        0x68 -> :sswitch_c
        0x69 -> :sswitch_b
        0x6a -> :sswitch_a
        0x6c -> :sswitch_9
        0x6e -> :sswitch_8
        0x71 -> :sswitch_7
        0x72 -> :sswitch_6
        0x73 -> :sswitch_5
        0x75 -> :sswitch_4
        0x76 -> :sswitch_3
        0x77 -> :sswitch_2
        0x79 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method private static decodeRussianSharedFont([B)[B
    .locals 4
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    const v0, 0x19a58

    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->be32([BI)I

    move-result v0

    const v1, 0xfeee0

    if-ne v0, v1, :cond_2

    .line 264
    const v0, 0x25a6c

    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->be32([BI)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 267
    invoke-static {p0, v1}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->be16([BI)I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_1

    .line 269
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    .line 270
    .local v0, "font":[B
    const v2, 0xfeee2

    invoke-static {p0, v2, v0}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->decompressInto([BI[B)I

    move-result v2

    .line 271
    .local v2, "fontBytes":I
    if-ne v2, v1, :cond_0

    .line 272
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    return-object v1

    .line 271
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Translated shared Russian font decode size mismatch"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 268
    .end local v0    # "font":[B
    .end local v2    # "fontBytes":I
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Translated shared Russian font anchor changed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Translated title/Mentat font-loader anchors changed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static decodeTutorialExactText([B)[B
    .locals 11
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x595

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 198
    .local v0, "tutorial":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 199
    .local v1, "messages":I
    sget-object v2, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->TUTORIAL_SCRIPT_STARTS:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget v5, v2, v4

    .line 200
    .local v5, "scriptStart":I
    move v6, v5

    .line 201
    .local v6, "pc":I
    const/4 v7, 0x0

    .line 203
    .local v7, "guard":I
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    const/16 v8, 0x800

    if-gt v7, v8, :cond_4

    .line 204
    invoke-static {p0, v6}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->be16([BI)I

    move-result v8

    .local v8, "op":I
    add-int/lit8 v6, v6, 0x2

    .line 205
    if-nez v8, :cond_1

    .line 199
    .end local v5    # "scriptStart":I
    .end local v6    # "pc":I
    .end local v7    # "guard":I
    .end local v8    # "op":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 206
    .restart local v5    # "scriptStart":I
    .restart local v6    # "pc":I
    .restart local v7    # "guard":I
    .restart local v8    # "op":I
    :cond_1
    const/16 v9, 0x30

    if-ne v8, v9, :cond_2

    .line 207
    const/16 v9, 0x100

    invoke-static {p0, v6, v9}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->readTutorialCStringBytes([BII)[B

    move-result-object v9

    .line 208
    .local v9, "message":[B
    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 209
    add-int/lit8 v1, v1, 0x1

    .line 210
    array-length v10, v9

    add-int/2addr v6, v10

    .line 211
    and-int/lit8 v10, v6, 0x1

    if-eqz v10, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 214
    .end local v9    # "message":[B
    :cond_2
    invoke-static {v8}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->tutorialArgumentBytes(I)I

    move-result v9

    .line 215
    .local v9, "arg":I
    if-ltz v9, :cond_3

    .line 217
    invoke-static {p0, v6, v9}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->checkRange([BII)V

    .line 218
    add-int/2addr v6, v9

    .line 219
    .end local v8    # "op":I
    .end local v9    # "arg":I
    goto :goto_1

    .line 215
    .restart local v8    # "op":I
    .restart local v9    # "arg":I
    :cond_3
    new-instance v2, Ljava/io/IOException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 216
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 215
    const-string v10, "Unsupported translated tutorial opcode %04X"

    invoke-static {v3, v10, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    .end local v8    # "op":I
    .end local v9    # "arg":I
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Translated tutorial scan guard"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 221
    .end local v5    # "scriptStart":I
    .end local v6    # "pc":I
    .end local v7    # "guard":I
    :cond_5
    const/16 v2, 0x19

    if-ne v1, v2, :cond_6

    .line 222
    const v2, 0x42ad0

    const/16 v3, 0x80

    invoke-static {p0, v2, v3}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->copy([BII)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 223
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 221
    :cond_6
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Translated tutorial message count mismatch"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static decodeTutorialLocalization([BLjava/util/LinkedHashMap;)V
    .locals 10
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    .local p1, "out":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[B>;"
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 178
    .local v0, "patternScenes":[I
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const v4, 0x416e2

    if-ge v3, v1, :cond_1

    aget v5, v0, v3

    .line 179
    .local v5, "scene":I
    mul-int/lit8 v6, v5, 0xc

    add-int/2addr v6, v4

    .line 180
    .local v6, "table":I
    invoke-static {p0, v6}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->be32([BI)I

    move-result v4

    .line 181
    .local v4, "patternPtr":I
    if-eqz v4, :cond_0

    .line 182
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "tutorial/scenes/scene%02d_patterns.bin"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 183
    invoke-static {p0, v4}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->loadPatternTable([BI)[B

    move-result-object v8

    .line 182
    invoke-virtual {p1, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .end local v4    # "patternPtr":I
    .end local v5    # "scene":I
    .end local v6    # "table":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    .restart local v4    # "patternPtr":I
    .restart local v5    # "scene":I
    .restart local v6    # "table":I
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Translated tutorial pattern pointer missing for scene "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    .end local v4    # "patternPtr":I
    .end local v5    # "scene":I
    .end local v6    # "table":I
    :cond_1
    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    .line 186
    .local v1, "plane0Scenes":[I
    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_3

    aget v5, v1, v2

    .line 187
    .restart local v5    # "scene":I
    mul-int/lit8 v6, v5, 0xc

    add-int/2addr v6, v4

    add-int/lit8 v6, v6, 0x4

    invoke-static {p0, v6}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->be32([BI)I

    move-result v6

    .line 188
    .local v6, "source":I
    if-eqz v6, :cond_2

    .line 189
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "tutorial/scenes/scene%02d_plane0.delta"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 190
    invoke-static {p0, v6}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->decompressExact([BI)[B

    move-result-object v8

    .line 189
    invoke-virtual {p1, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .end local v5    # "scene":I
    .end local v6    # "source":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 188
    .restart local v5    # "scene":I
    .restart local v6    # "source":I
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Translated tutorial plane0 pointer missing for scene "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    .end local v5    # "scene":I
    .end local v6    # "source":I
    :cond_3
    const v2, 0x42d02

    const/16 v3, 0x1520

    invoke-static {p0, v2, v3}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->copy([BII)[B

    move-result-object v2

    const-string v3, "tutorial/text/font.bin"

    invoke-virtual {p1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v2, "content/tutorial/exact_text_v1.bin"

    invoke-static {p0}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->decodeTutorialExactText([B)[B

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x4
        0x6
        0x9
        0xb
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x3
        0x6
        0x7
        0x9
        0xa
        0xb
    .end array-data
.end method

.method private static decompressExact([BI)[B
    .locals 3
    .param p0, "rom"    # [B
    .param p1, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    .line 411
    .local v0, "scratch":[B
    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->decompressInto([BI[B)I

    move-result v1

    .line 412
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

    .line 424
    move v0, p1

    .local v0, "src":I
    const/4 v1, 0x0

    .local v1, "dst":I
    const/4 v2, 0x0

    .line 426
    .local v2, "guard":I
    :goto_0
    const/4 v3, 0x1

    add-int/2addr v2, v3

    const v4, 0x186a0

    if-gt v2, v4, :cond_c

    .line 427
    invoke-static {p0, v0, v3}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->checkRange([BII)V

    .line 428
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "src":I
    .local v4, "src":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 429
    .local v0, "c":I
    const/16 v5, 0x80

    if-ne v0, v5, :cond_0

    .line 463
    .end local v0    # "c":I
    return v1

    .line 430
    .restart local v0    # "c":I
    :cond_0
    const/16 v5, 0x81

    if-lt v0, v5, :cond_1

    const/16 v5, 0xbf

    if-gt v0, v5, :cond_1

    .line 431
    and-int/lit8 v3, v0, 0x3f

    .line 432
    .local v3, "n":I
    invoke-static {p0, v4, v3}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->checkRange([BII)V

    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->ensureOutput([BII)V

    .line 433
    invoke-static {p0, v4, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v3

    add-int/2addr v1, v3

    .line 434
    .end local v3    # "n":I
    move v0, v4

    goto/16 :goto_5

    :cond_1
    const/16 v5, 0x7f

    const/4 v6, 0x3

    if-gt v0, v5, :cond_4

    .line 435
    invoke-static {p0, v4, v3}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->checkRange([BII)V

    .line 436
    shl-int/lit8 v3, v0, 0x8

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "src":I
    .local v5, "src":I
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xfff

    .line 437
    .local v3, "back":I
    ushr-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v6

    .line 438
    .local v4, "n":I
    if-lez v3, :cond_3

    if-gt v3, v1, :cond_3

    .line 439
    invoke-static {p2, v1, v4}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->ensureOutput([BII)V

    .line 440
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

    .line 441
    .end local v3    # "back":I
    .end local v4    # "n":I
    .end local v6    # "i":I
    :cond_2
    move v0, v5

    goto/16 :goto_5

    .line 438
    .restart local v3    # "back":I
    .restart local v4    # "n":I
    :cond_3
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Translated resource short-copy range"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 441
    .end local v3    # "back":I
    .end local v5    # "src":I
    .local v4, "src":I
    :cond_4
    const/16 v3, 0xfd

    if-gt v0, v3, :cond_7

    .line 442
    const/4 v3, 0x2

    invoke-static {p0, v4, v3}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->checkRange([BII)V

    .line 443
    and-int/lit8 v3, v0, 0x3f

    add-int/2addr v3, v6

    .line 444
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

    .line 445
    if-ltz v5, :cond_6

    if-ge v5, v1, :cond_6

    .line 446
    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->ensureOutput([BII)V

    .line 447
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

    .line 448
    .end local v3    # "n":I
    .end local v5    # "from":I
    .end local v6    # "i":I
    .end local v7    # "dst":I
    .restart local v1    # "dst":I
    :cond_5
    move v0, v4

    goto/16 :goto_5

    .line 445
    .restart local v3    # "n":I
    .restart local v5    # "from":I
    :cond_6
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Translated resource absolute-copy range"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 448
    .end local v3    # "n":I
    .end local v5    # "from":I
    :cond_7
    const/16 v3, 0xfe

    if-ne v0, v3, :cond_9

    .line 449
    invoke-static {p0, v4, v6}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->checkRange([BII)V

    .line 450
    aget-byte v3, p0, v4

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    .line 451
    .restart local v3    # "n":I
    add-int/lit8 v5, v4, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .local v5, "value":I
    add-int/lit8 v4, v4, 0x3

    .line 452
    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->ensureOutput([BII)V

    .line 453
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

    .line 454
    .end local v3    # "n":I
    .end local v5    # "value":I
    .end local v6    # "i":I
    .end local v7    # "dst":I
    .restart local v1    # "dst":I
    :cond_8
    move v0, v4

    goto :goto_5

    .line 455
    :cond_9
    const/4 v3, 0x4

    invoke-static {p0, v4, v3}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->checkRange([BII)V

    .line 456
    aget-byte v3, p0, v4

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    .line 457
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

    .line 458
    if-ltz v5, :cond_b

    if-ge v5, v1, :cond_b

    .line 459
    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->ensureOutput([BII)V

    .line 460
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

    .line 462
    .end local v3    # "n":I
    .end local v4    # "src":I
    .end local v5    # "from":I
    .end local v6    # "i":I
    .local v0, "src":I
    :goto_5
    goto/16 :goto_0

    .line 458
    .local v0, "c":I
    .restart local v3    # "n":I
    .restart local v4    # "src":I
    .restart local v5    # "from":I
    :cond_b
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Translated resource long-copy range"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 426
    .end local v3    # "n":I
    .end local v4    # "src":I
    .end local v5    # "from":I
    .local v0, "src":I
    :cond_c
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Translated resource decompressor guard"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static decompressPrefix([BII)[B
    .locals 4
    .param p0, "rom"    # [B
    .param p1, "source"    # I
    .param p2, "prefix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    .line 417
    .local v0, "scratch":[B
    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->decompressInto([BI[B)I

    move-result v1

    .line 418
    .local v1, "n":I
    if-lt v1, p2, :cond_0

    .line 419
    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    return-object v2

    .line 418
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Translated compressed asset is shorter than required prefix"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static deleteRecursively(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 571
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 572
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 574
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 576
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

    .line 577
    :cond_3
    :goto_1
    return-void

    .line 571
    :cond_4
    :goto_2
    return-void
.end method

.method private static ensureOutput([BII)V
    .locals 2
    .param p0, "out"    # [B
    .param p1, "dst"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 530
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 532
    return-void

    .line 531
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Translated resource output overrun"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static extract(Ljava/io/InputStream;JLjava/io/File;)Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;
    .locals 14
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    move-object/from16 v1, p3

    if-eqz p0, :cond_11

    .line 86
    if-eqz v1, :cond_10

    .line 87
    const-wide/32 v2, 0x1000000

    cmp-long v0, p1, v2

    if-gtz v0, :cond_f

    .line 88
    invoke-static/range {p0 .. p2}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->readAll(Ljava/io/InputStream;J)[B

    move-result-object v9

    .line 89
    .local v9, "rom":[B
    array-length v0, v9

    const/high16 v2, 0x100000

    if-ne v0, v2, :cond_e

    .line 90
    invoke-static {v9}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->sha256([B)Ljava/lang/String;

    move-result-object v7

    .line 91
    .local v7, "sourceSha":Ljava/lang/String;
    const-string v0, "4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 96
    .local v10, "genericPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 97
    .local v11, "directPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 98
    .local v12, "mentatPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->entries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "content/hud/object_names_utf8_v1.bin"

    const-string v4, "frontend/direct/title_font.bin"

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    .line 99
    .local v2, "e":Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;
    iget-object v5, v2, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    goto :goto_0

    .line 103
    :cond_0
    iget-object v3, v2, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    goto :goto_0

    .line 107
    :cond_1
    iget-object v3, v2, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;->relativePath:Ljava/lang/String;

    const-string v4, "frontend/direct/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 108
    :cond_2
    iget-object v3, v2, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;->relativePath:Ljava/lang/String;

    const-string v4, "frontend/mentat/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 109
    :cond_3
    iget-object v3, v2, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;->relativePath:Ljava/lang/String;

    const-string v4, "frontend/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v2    # "e":Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;
    :cond_4
    :goto_1
    goto :goto_0

    .line 112
    :cond_5
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v13, v0

    .line 113
    .local v13, "decoded":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[B>;"
    invoke-static {v9, v10}, Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider;->decodeSelectedAssets([BLjava/util/List;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 114
    invoke-static {v9, v11}, Lcom/ahsim/demulation/GenesisRomFrontendDirectAssetProvider;->decodeSelectedAssets([BLjava/util/List;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 117
    invoke-static {v9}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->decodeRussianSharedFont([B)[B

    move-result-object v0

    invoke-virtual {v13, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {v9, v12}, Lcom/ahsim/demulation/GenesisRomMentatAssetProvider;->decodeSelectedAssets([BLjava/util/List;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 119
    nop

    .line 120
    invoke-static {v9}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->decodeMissionPresentationText([B)[B

    move-result-object v0

    .line 119
    const-string v2, "content/mission/presentation_text_v1.bin"

    invoke-virtual {v13, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {v9, v13}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->decodeTutorialLocalization([BLjava/util/LinkedHashMap;)V

    .line 122
    invoke-static {v9, v13}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->decodeMissionResultLocalization([BLjava/util/LinkedHashMap;)V

    .line 123
    invoke-static {v9, v13}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->decodeEndingLocalization([BLjava/util/LinkedHashMap;)V

    .line 124
    invoke-static {v9}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->decodeHudObjectNames([B)[B

    move-result-object v0

    invoke-virtual {v13, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {v1}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 127
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 128
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Could not create localization staging directory"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_7
    :goto_2
    :try_start_0
    invoke-static {}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->entries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    .line 132
    .local v2, "expected":Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;
    iget-object v3, v2, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 133
    .local v3, "data":[B
    if-eqz v3, :cond_b

    .line 134
    array-length v4, v3

    iget v5, v2, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;->length:I

    if-ne v4, v5, :cond_a

    iget-object v4, v2, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;->sha256:Ljava/lang/String;

    invoke-static {v3}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->sha256([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 137
    iget-object v4, v2, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 138
    .local v4, "out":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 139
    .local v5, "parent":Ljava/io/File;
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_4

    .line 140
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Could not create localization asset directory"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v7    # "sourceSha":Ljava/lang/String;
    .end local v9    # "rom":[B
    .end local v10    # "genericPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "directPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "mentatPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "decoded":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[B>;"
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    throw v0

    .line 142
    .restart local v7    # "sourceSha":Ljava/lang/String;
    .restart local v9    # "rom":[B
    .restart local v10    # "genericPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "directPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "mentatPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "decoded":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[B>;"
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    :cond_9
    :goto_4
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .local v6, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v6, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 144
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 146
    .end local v2    # "expected":Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;
    .end local v3    # "data":[B
    .end local v4    # "out":Ljava/io/File;
    .end local v5    # "parent":Ljava/io/File;
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 142
    .restart local v2    # "expected":Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;
    .restart local v3    # "data":[B
    .restart local v4    # "out":Ljava/io/File;
    .restart local v5    # "parent":Ljava/io/File;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v0

    move-object v8, v0

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v8, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v7    # "sourceSha":Ljava/lang/String;
    .end local v9    # "rom":[B
    .end local v10    # "genericPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "directPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "mentatPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "decoded":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[B>;"
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    :goto_5
    throw v8

    .line 135
    .end local v4    # "out":Ljava/io/File;
    .end local v5    # "parent":Ljava/io/File;
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .restart local v7    # "sourceSha":Ljava/lang/String;
    .restart local v9    # "rom":[B
    .restart local v10    # "genericPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "directPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "mentatPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "decoded":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[B>;"
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    :cond_a
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Localization asset verification failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v7    # "sourceSha":Ljava/lang/String;
    .end local v9    # "rom":[B
    .end local v10    # "genericPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "directPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "mentatPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "decoded":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[B>;"
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    throw v0

    .line 133
    .restart local v7    # "sourceSha":Ljava/lang/String;
    .restart local v9    # "rom":[B
    .restart local v10    # "genericPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "directPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "mentatPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "decoded":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[B>;"
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    :cond_b
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Localization asset missing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v7    # "sourceSha":Ljava/lang/String;
    .end local v9    # "rom":[B
    .end local v10    # "genericPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "directPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "mentatPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "decoded":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[B>;"
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    throw v0

    .line 147
    .end local v2    # "expected":Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;
    .end local v3    # "data":[B
    .restart local v7    # "sourceSha":Ljava/lang/String;
    .restart local v9    # "rom":[B
    .restart local v10    # "genericPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "directPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "mentatPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "decoded":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[B>;"
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    :cond_c
    new-instance v0, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;

    invoke-static {}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->entries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget-object v3, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->TEXT:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 148
    invoke-static {v3}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->count(Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)I

    move-result v3

    sget-object v4, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 149
    invoke-static {v4}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->count(Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)I

    move-result v4

    .line 150
    invoke-static {}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->payloadBytes()J

    move-result-wide v5

    const-string v8, "translation_ru_shedevr_lipetsk_usa"

    invoke-direct/range {v0 .. v8}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;-><init>(Ljava/io/File;IIIJLjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 147
    return-object v0

    .line 152
    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    :goto_6
    invoke-static/range {p3 .. p3}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 154
    throw v0

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "genericPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "directPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "mentatPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "decoded":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[B>;"
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Translation ROM fingerprint is not the audited Shedevr/Lipetsk build"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    .end local v7    # "sourceSha":Ljava/lang/String;
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Audited Russian translation must be exactly 1 MiB"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    .end local v9    # "rom":[B
    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Translation ROM is unexpectedly large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Localization staging directory is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Translation ROM stream is unavailable"

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

    .line 377
    move v0, p1

    .local v0, "p":I
    const/4 v1, 0x0

    .local v1, "bytes":I
    const/4 v2, 0x0

    .line 379
    .local v2, "guard":I
    :goto_0
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x100

    if-gt v2, v3, :cond_5

    .line 380
    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->be16([BI)I

    move-result v3

    .line 381
    .local v3, "flags":I
    if-nez v3, :cond_4

    .line 385
    .end local v3    # "flags":I
    new-array v4, v1, [B

    .line 386
    .local v4, "result":[B
    const/high16 v3, 0x10000

    new-array v5, v3, [B

    .line 387
    .local v5, "scratch":[B
    move v0, p1

    .line 388
    const/4 v3, 0x0

    .line 390
    .local v3, "dst":I
    :goto_1
    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->be16([BI)I

    move-result v6

    .line 391
    .local v6, "flags":I
    if-nez v6, :cond_0

    .line 406
    .end local v6    # "flags":I
    return-object v4

    .line 392
    .restart local v6    # "flags":I
    :cond_0
    add-int/lit8 v7, v0, 0x2

    invoke-static {p0, v7}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->be32([BI)I

    move-result v7

    invoke-static {v7}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->u24(I)I

    move-result v7

    .line 393
    .local v7, "pointer":I
    add-int/lit8 v0, v0, 0x6

    .line 394
    and-int/lit16 v8, v6, 0x7fff

    mul-int/lit8 v8, v8, 0x20

    .line 395
    .local v8, "n":I
    const v9, 0x8000

    and-int/2addr v9, v6

    if-eqz v9, :cond_3

    .line 396
    invoke-static {p0, v7, v5}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->decompressInto([BI[B)I

    move-result v9

    .line 397
    .local v9, "produced":I
    if-lez v9, :cond_2

    .line 398
    array-length v10, v5

    if-gt v8, v10, :cond_1

    .line 399
    const/4 v10, 0x0

    invoke-static {v5, v10, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    .end local v9    # "produced":I
    goto :goto_2

    .line 398
    .restart local v9    # "produced":I
    :cond_1
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Translated tutorial pattern scratch overflow"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 397
    :cond_2
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Translated tutorial pattern decode empty"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 401
    .end local v9    # "produced":I
    :cond_3
    invoke-static {p0, v7, v8}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->checkRange([BII)V

    .line 402
    invoke-static {p0, v7, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    :goto_2
    add-int/2addr v3, v8

    .line 405
    .end local v6    # "flags":I
    .end local v7    # "pointer":I
    .end local v8    # "n":I
    goto :goto_1

    .line 382
    .end local v4    # "result":[B
    .end local v5    # "scratch":[B
    .local v3, "flags":I
    :cond_4
    and-int/lit16 v4, v3, 0x7fff

    mul-int/lit8 v4, v4, 0x20

    add-int/2addr v1, v4

    .line 383
    nop

    .end local v3    # "flags":I
    add-int/lit8 v0, v0, 0x6

    .line 384
    goto :goto_0

    .line 379
    :cond_5
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Translated tutorial pattern-table guard"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static readAll(Ljava/io/InputStream;J)[B
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "knownSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
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

    .line 536
    .local v0, "initial":I
    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 537
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    const/high16 v2, 0x10000

    new-array v2, v2, [B

    .line 538
    .local v2, "buf":[B
    const/4 v3, 0x0

    .line 540
    .local v3, "total":I
    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 541
    .local v4, "n":I
    if-gez v4, :cond_1

    .line 547
    .end local v4    # "n":I
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 542
    .restart local v4    # "n":I
    :cond_1
    if-nez v4, :cond_2

    goto :goto_1

    .line 543
    :cond_2
    add-int/2addr v3, v4

    .line 544
    const/high16 v5, 0x1000000

    if-gt v3, v5, :cond_3

    .line 545
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 546
    .end local v4    # "n":I
    goto :goto_1

    .line 544
    .restart local v4    # "n":I
    :cond_3
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Translation ROM exceeds size limit"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static readCStringBytes([BII)[B
    .locals 5
    .param p0, "rom"    # [B
    .param p1, "offset"    # I
    .param p2, "guard"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 467
    if-ltz p1, :cond_3

    array-length v0, p0

    if-ge p1, v0, :cond_3

    .line 468
    move v0, p1

    .line 469
    .local v0, "end":I
    array-length v1, p0

    add-int v2, p1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 470
    .local v1, "limit":I
    :goto_0
    if-ge v0, v1, :cond_1

    aget-byte v2, p0, v0

    if-eqz v2, :cond_1

    .line 471
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 472
    .local v2, "c":I
    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_0

    .line 473
    nop

    .end local v2    # "c":I
    add-int/lit8 v0, v0, 0x1

    .line 474
    goto :goto_0

    .line 472
    .restart local v2    # "c":I
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Translation text contains unsupported byte"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 475
    .end local v2    # "c":I
    :cond_1
    if-ge v0, v1, :cond_2

    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 476
    sub-int v2, v0, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {p0, p1, v2}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->copy([BII)[B

    move-result-object v2

    return-object v2

    .line 475
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Translation text is unterminated"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 467
    .end local v0    # "end":I
    .end local v1    # "limit":I
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Translation text pointer outside ROM"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readTutorialCStringBytes([BII)[B
    .locals 5
    .param p0, "rom"    # [B
    .param p1, "offset"    # I
    .param p2, "guard"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 480
    if-ltz p1, :cond_4

    array-length v0, p0

    if-ge p1, v0, :cond_4

    .line 481
    move v0, p1

    .line 482
    .local v0, "end":I
    array-length v1, p0

    add-int v2, p1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 483
    .local v1, "limit":I
    :goto_0
    if-ge v0, v1, :cond_2

    aget-byte v2, p0, v0

    if-eqz v2, :cond_2

    .line 484
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 485
    .local v2, "c":I
    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_0

    goto :goto_1

    .line 486
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Translated tutorial text contains unsupported byte"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 487
    :cond_1
    :goto_1
    nop

    .end local v2    # "c":I
    add-int/lit8 v0, v0, 0x1

    .line 488
    goto :goto_0

    .line 489
    :cond_2
    if-ge v0, v1, :cond_3

    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 490
    sub-int v2, v0, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {p0, p1, v2}, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;->copy([BII)[B

    move-result-object v2

    return-object v2

    .line 489
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Translated tutorial text is unterminated"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 480
    .end local v0    # "end":I
    .end local v1    # "limit":I
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Translated tutorial text pointer outside ROM"

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

    .line 563
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 564
    .local v0, "base":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 565
    .local v1, "child":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 567
    return-object v1

    .line 566
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Localization path escapes staging root"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static sha256([B)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 552
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 553
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 554
    .local v1, "digest":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 555
    .local v2, "sb":Ljava/lang/StringBuilder;
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

    .line 556
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 557
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "digest":[B
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static tutorialArgumentBytes(I)I
    .locals 1
    .param p0, "op"    # I

    .line 494
    sparse-switch p0, :sswitch_data_0

    .line 502
    const/4 v0, -0x1

    return v0

    .line 498
    :sswitch_0
    const/4 v0, 0x6

    return v0

    .line 497
    :sswitch_1
    const/4 v0, 0x4

    return v0

    .line 501
    :sswitch_2
    const/4 v0, 0x0

    return v0

    .line 496
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

    .line 517
    const v0, 0xffffff

    and-int/2addr v0, p0

    return v0
.end method
