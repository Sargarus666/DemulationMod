.class public final Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;
.super Ljava/lang/Object;
.source "GenesisRomGameplayDataAssetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;,
        Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    }
.end annotation


# static fields
.field private static final HOUSE_BASE:I = 0x6c75a

.field private static final HOUSE_FIELDS:[I

.field private static final MAX_ROM_BYTES:I = 0x800000

.field private static final ROM_IMAGE_BYTES:I = 0x100000

.field private static final STRUCT_PTRS:I = 0x6b954

.field private static final STRUCT_WORDS:[I

.field private static final UNIT_PTRS:I = 0x6c5bc

.field private static final UNIT_WORDS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 21
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->UNIT_WORDS:[I

    .line 25
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->STRUCT_WORDS:[I

    .line 29
    const/4 v0, 0x4

    const/16 v1, 0x8

    const/16 v2, 0xc

    const/16 v3, 0xe

    const/16 v4, 0x12

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->HOUSE_FIELDS:[I

    return-void

    :array_0
    .array-data 4
        0xc
        0xe
        0x10
        0x12
        0x16
        0x18
        0x28
        0x2e
        0x30
        0x38
        0x3e
        0x40
        0x42
        0x44
        0x4a
        0x50
        0x52
        0x54
        0x56
        0x58
        0x5a
    .end array-data

    :array_1
    .array-data 4
        0xc
        0xe
        0x10
        0x12
        0x16
        0x18
        0x1a
        0x2e
        0x30
        0x38
        0x3a
        0x3c
        0x3e
        0x60
        0x62
        0x64
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static be32([BI)J
    .locals 5
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->checkRange([BII)V

    .line 157
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

.method public static buildUnitStructureParametersPack([B)[B
    .locals 15
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    if-eqz p0, :cond_9

    array-length v0, p0

    const/high16 v1, 0x100000

    if-lt v0, v1, :cond_9

    .line 102
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x9ea

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 105
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, "type":I
    :goto_0
    const/16 v3, 0x1b

    const/4 v4, 0x4

    const/4 v5, 0x0

    const v6, 0x6c5bc

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v2, v3, :cond_1

    .line 106
    invoke-static {p0, v6, v2}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->ptr24([BII)I

    move-result v3

    .line 107
    .local v3, "p":I
    sget-object v6, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->UNIT_WORDS:[I

    array-length v9, v6

    :goto_1
    if-ge v5, v9, :cond_0

    aget v10, v6, v5

    .local v10, "off":I
    add-int v11, v3, v10

    invoke-static {v0, p0, v11, v7}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    .end local v10    # "off":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 108
    :cond_0
    add-int/lit8 v5, v3, 0x1c

    invoke-static {v0, p0, v5, v4}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    .line 109
    add-int/lit8 v4, v3, 0x21

    invoke-static {v0, p0, v4, v8}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    .line 110
    add-int/lit8 v4, v3, 0x32

    invoke-static {v0, p0, v4, v8}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    .line 105
    .end local v3    # "p":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    .end local v2    # "type":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "type":I
    :goto_2
    const/16 v9, 0x13

    if-ge v2, v9, :cond_4

    .line 115
    const v9, 0x6b954

    invoke-static {p0, v9, v2}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->ptr24([BII)I

    move-result v9

    .line 116
    .local v9, "p":I
    sget-object v10, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->STRUCT_WORDS:[I

    array-length v11, v10

    move v12, v5

    :goto_3
    if-ge v12, v11, :cond_2

    aget v13, v10, v12

    .local v13, "off":I
    add-int v14, v9, v13

    invoke-static {v0, p0, v14, v7}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    .end local v13    # "off":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 117
    :cond_2
    add-int/lit8 v10, v9, 0x1c

    invoke-static {v0, p0, v10, v4}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    .line 118
    add-int/lit8 v10, v9, 0x34

    invoke-static {v0, p0, v10, v4}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    .line 119
    add-int/lit8 v10, v9, 0x21

    invoke-static {v0, p0, v10, v8}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    .line 120
    add-int/lit8 v10, v9, 0x32

    invoke-static {v0, p0, v10, v8}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    .line 121
    const/16 v10, 0x4c

    .restart local v10    # "off":I
    :goto_4
    const/16 v11, 0x60

    if-ge v10, v11, :cond_3

    add-int v11, v9, v10

    invoke-static {v0, p0, v11, v7}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    add-int/lit8 v10, v10, 0x2

    goto :goto_4

    .line 114
    .end local v9    # "p":I
    .end local v10    # "off":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 125
    .end local v2    # "type":I
    :cond_4
    const v2, 0x6c75a

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    .line 126
    .local v2, "houseBase":I
    const/4 v4, 0x0

    .local v4, "house":I
    :goto_5
    const/4 v8, 0x5

    if-ge v4, v8, :cond_6

    .line 127
    mul-int/lit8 v8, v4, 0x1e

    add-int/2addr v8, v2

    .line 128
    .local v8, "p":I
    sget-object v9, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->HOUSE_FIELDS:[I

    array-length v10, v9

    move v11, v5

    :goto_6
    if-ge v11, v10, :cond_5

    aget v12, v9, v11

    .local v12, "off":I
    add-int v13, v8, v12

    invoke-static {v0, p0, v13, v7}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    .end local v12    # "off":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 126
    .end local v8    # "p":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 130
    .end local v4    # "house":I
    :cond_6
    add-int/lit16 v4, v2, 0x96

    add-int/lit8 v4, v4, 0xe

    invoke-static {v0, p0, v4, v7}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    .line 134
    invoke-static {p0, v6, v3}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->ptr24([BII)I

    move-result v3

    .line 135
    .local v3, "p27":I
    add-int/lit8 v4, v3, 0x16

    invoke-static {v0, p0, v4, v7}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    .line 137
    const/16 v4, 0x1b

    .local v4, "type":I
    :goto_7
    const/16 v5, 0x20

    if-ge v4, v5, :cond_7

    .line 138
    invoke-static {p0, v6, v4}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->ptr24([BII)I

    move-result v5

    .line 139
    .local v5, "p":I
    add-int/lit8 v8, v5, 0x2e

    invoke-static {v0, p0, v8, v7}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->writeRange(Ljava/io/ByteArrayOutputStream;[BII)V

    .line 137
    .end local v5    # "p":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 142
    .end local v4    # "type":I
    :cond_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 143
    .local v4, "result":[B
    array-length v5, v4

    if-ne v5, v1, :cond_8

    .line 144
    return-object v4

    .line 143
    :cond_8
    new-instance v1, Ljava/io/IOException;

    const-string v5, "Unexpected gameplay-data projection size"

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    .end local v0    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "houseBase":I
    .end local v3    # "p27":I
    .end local v4    # "result":[B
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM image unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 169
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    if-gt p1, v0, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p1

    if-lt v0, p2, :cond_0

    .line 172
    return-void

    .line 170
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Gameplay-data ROM range is outside selected image"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

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

    .line 211
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 212
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 214
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
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

    .line 217
    :cond_3
    :goto_1
    return-void

    .line 211
    :cond_4
    :goto_2
    return-void
.end method

.method public static extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    .local v0, "input":Ljava/io/InputStream;
    .local v1, "knownRomSize":J
    .local v3, "stagingRoot":Ljava/io/File;
    .local v4, "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    invoke-static/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;

    move-result-object p0

    return-object p0
.end method

.method public static extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    .locals 15
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    .param p5, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    move-object/from16 v8, p4

    if-eqz p0, :cond_9

    .line 62
    if-eqz p3, :cond_8

    .line 63
    const-wide/32 v0, 0x800000

    cmp-long v0, p1, v0

    if-gtz v0, :cond_7

    .line 64
    invoke-static/range {p0 .. p2}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->readAll(Ljava/io/InputStream;J)[B

    move-result-object v9

    .line 65
    .local v9, "rom":[B
    array-length v0, v9

    const/high16 v1, 0x100000

    if-lt v0, v1, :cond_6

    .line 67
    invoke-static {v9}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->buildUnitStructureParametersPack([B)[B

    move-result-object v10

    .line 68
    .local v10, "pack":[B
    invoke-static {}, Lcom/ahsim/demulation/RomGameplayDataAssetManifest;->entries()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;

    .line 69
    .local v11, "expected":Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v5, "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p3 .. p3}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 72
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not create gameplay-data staging"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, v11, Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;->relativePath:Ljava/lang/String;

    iget v1, v11, Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;->length:I

    iget-object v2, v11, Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;->sha256:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v12, p5

    :try_start_1
    invoke-static {v12, v0, v10, v1, v2}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->matchesExtracted(Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v0, :cond_2

    .line 78
    :try_start_2
    iget-object v0, v11, Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-static/range {p3 .. p3}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 80
    new-instance v0, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object/from16 v6, p3

    :try_start_3
    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;-><init>(IIJLjava/util/List;Ljava/io/File;Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider-IA;)V

    return-object v0

    .line 93
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    move-object/from16 v6, p3

    goto :goto_5

    .line 82
    :cond_2
    move-object/from16 v6, p3

    iget-object v0, v11, Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object v13, v0

    .line 83
    .local v13, "out":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    move-object v14, v0

    .line 84
    .local v14, "parent":Ljava/io/File;
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 85
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not create gameplay-data staging directory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "rom":[B
    .end local v10    # "pack":[B
    .end local v11    # "expected":Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    .end local p5    # "profileId":Ljava/lang/String;
    throw v0

    .line 87
    .restart local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "rom":[B
    .restart local v10    # "pack":[B
    .restart local v11    # "expected":Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    .restart local p5    # "profileId":Ljava/lang/String;
    :cond_4
    :goto_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v0

    .line 88
    .local v1, "stream":Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual {v1, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 89
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 90
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 91
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    if-eqz v8, :cond_5

    iget-object v0, v11, Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;->relativePath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {v8, v1, v1, v0}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;->onProgress(IILjava/lang/String;)V

    .line 92
    :cond_5
    new-instance v0, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;

    array-length v1, v10

    int-to-long v3, v1

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$Result;-><init>(IIJLjava/util/List;Ljava/io/File;Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider-IA;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    return-object v0

    .line 87
    .restart local v1    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_7
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "rom":[B
    .end local v10    # "pack":[B
    .end local v11    # "expected":Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    .end local p5    # "profileId":Ljava/lang/String;
    :goto_3
    throw v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    .line 93
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .end local v13    # "out":Ljava/io/File;
    .end local v14    # "parent":Ljava/io/File;
    .restart local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "rom":[B
    .restart local v10    # "pack":[B
    .restart local v11    # "expected":Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider$ProgressListener;
    .restart local p5    # "profileId":Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    :goto_4
    move-object/from16 v12, p5

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    invoke-static/range {p3 .. p3}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 95
    throw v0

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "pack":[B
    .end local v11    # "expected":Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;
    :cond_6
    move-object/from16 v12, p5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is too small for gameplay-data tables"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    .end local v9    # "rom":[B
    :cond_7
    move-object/from16 v12, p5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is unexpectedly large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_8
    move-object/from16 v12, p5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Gameplay-data staging is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_9
    move-object/from16 v12, p5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM stream is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static ptr24([BII)I
    .locals 5
    .param p0, "rom"    # [B
    .param p1, "table"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-static {p0, p1}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v0

    .line 149
    .local v0, "physicalTable":I
    mul-int/lit8 v1, p2, 0x4

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->be32([BI)J

    move-result-wide v1

    .line 150
    .local v1, "raw":J
    const-wide/32 v3, 0xffffff

    and-long/2addr v3, v1

    long-to-int v3, v3

    .line 151
    .local v3, "p":I
    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->checkRange([BII)V

    .line 152
    return v3
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

    .line 175
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/32 v0, 0x800000

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    long-to-int v0, p1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x100000

    .line 176
    .local v0, "initial":I
    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 177
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x4000

    new-array v2, v2, [B

    .line 178
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 180
    .local v3, "total":I
    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 181
    .local v4, "n":I
    if-gez v4, :cond_1

    .line 187
    .end local v4    # "n":I
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 182
    .restart local v4    # "n":I
    :cond_1
    if-nez v4, :cond_2

    goto :goto_1

    .line 183
    :cond_2
    add-int/2addr v3, v4

    .line 184
    const/high16 v5, 0x800000

    if-gt v3, v5, :cond_3

    .line 185
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 186
    .end local v4    # "n":I
    goto :goto_1

    .line 184
    .restart local v4    # "n":I
    :cond_3
    new-instance v5, Ljava/io/IOException;

    const-string v6, "ROM is unexpectedly large"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
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

    .line 191
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 192
    .local v0, "f":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "rp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "fp":Ljava/lang/String;
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

    .line 195
    return-object v0

    .line 194
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unsafe gameplay-data asset path"

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

    .line 200
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 201
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 202
    .local v1, "d":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 203
    .local v2, "b":Ljava/lang/StringBuilder;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v1, v4

    .local v5, "v":B
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

    .end local v5    # "v":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 205
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "d":[B
    .end local v2    # "b":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static writeRange(Ljava/io/ByteArrayOutputStream;[BII)V
    .locals 0
    .param p0, "out"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-static {p1, p2, p3}, Lcom/ahsim/demulation/GenesisRomGameplayDataAssetProvider;->checkRange([BII)V

    .line 165
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 166
    return-void
.end method
