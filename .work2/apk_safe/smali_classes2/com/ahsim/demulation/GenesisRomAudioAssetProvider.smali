.class public final Lcom/ahsim/demulation/GenesisRomAudioAssetProvider;
.super Ljava/lang/Object;
.source "GenesisRomAudioAssetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;,
        Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    }
.end annotation


# static fields
.field static final GERMAN_PACK_BYTES:I = 0x35702

.field static final GERMAN_PACK_SEGMENTS:I = 0xb

.field private static final MAGIC:[B

.field private static final MAX_ROM_BYTES:I = 0x1000000

.field private static final PACK_VERSION:I = 0x1

.field private static final ROM_IMAGE_BYTES:I = 0x100000

.field private static final SEGMENTS:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 17
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider;->MAGIC:[B

    .line 22
    const v0, 0x20874

    const v1, 0x20c14

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const v1, 0x6a87e

    const v2, 0x6a9ba

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const v2, 0x87f44

    const v3, 0x88124

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const v3, 0xc8160

    const v4, 0xfed40

    filled-new-array {v3, v4}, [I

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [[I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider;->SEGMENTS:[[I

    return-void

    :array_0
    .array-data 1
        0x44t
        0x45t
        0x4dt
        0x41t
        0x55t
        0x44t
        0x30t
        0x31t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildGermanPack([B)[B
    .locals 31
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    move-object/from16 v0, p0

    const v1, 0xc8160

    invoke-static {v0, v1}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v2

    .line 127
    .local v2, "titleDtbl":I
    const v3, 0xcf970

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v4

    .line 128
    .local v4, "titleStbl":I
    const v5, 0xd0251

    invoke-static {v0, v5}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v6

    .line 129
    .local v6, "titleEtbl":I
    const v7, 0xd02ae

    invoke-static {v0, v7}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v8

    .line 130
    .local v8, "titlePtbl":I
    const v9, 0xd06bf

    invoke-static {v0, v9}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v10

    .line 131
    .local v10, "gameplayDtbl":I
    const v11, 0xf6363

    invoke-static {v0, v11}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v12

    .line 132
    .local v12, "gameplayStbl":I
    const v13, 0xfe185

    invoke-static {v0, v13}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v14

    .line 133
    .local v14, "gameplayEtbl":I
    const v15, 0xfe2b6

    invoke-static {v0, v15}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v13

    .line 134
    .local v13, "gameplayPtbl":I
    const v15, 0xfed40

    invoke-static {v0, v15}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v15

    .line 135
    .local v15, "gemsEnd":I
    const v11, 0x20874

    invoke-static {v0, v11}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v11

    .line 136
    .local v11, "names":I
    const v9, 0x20c14

    invoke-static {v0, v9}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v9

    .line 137
    .local v9, "namesEnd":I
    const v7, 0x6a87e

    invoke-static {v0, v7}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v5

    .line 138
    .local v5, "direct":I
    const v3, 0x6a9ba

    invoke-static {v0, v3}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v3

    .line 139
    .local v3, "directEnd":I
    const v1, 0x87f44

    invoke-static {v0, v1}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v7

    .line 140
    .local v7, "options":I
    const v1, 0x88124

    invoke-static {v0, v1}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v1

    .line 142
    .local v1, "optionsEnd":I
    filled-new-array {v11, v11, v9}, [I

    move-result-object v19

    move/from16 v30, v9

    const v9, 0x6a87e

    .end local v9    # "namesEnd":I
    .local v30, "namesEnd":I
    filled-new-array {v9, v5, v3}, [I

    move-result-object v20

    const v9, 0x87f44

    filled-new-array {v9, v7, v1}, [I

    move-result-object v21

    const v9, 0xc8160

    filled-new-array {v9, v2, v4}, [I

    move-result-object v22

    const v9, 0xcf970

    filled-new-array {v9, v4, v6}, [I

    move-result-object v23

    const v9, 0xd0251

    filled-new-array {v9, v6, v8}, [I

    move-result-object v24

    const v9, 0xd02ae

    filled-new-array {v9, v8, v10}, [I

    move-result-object v25

    const v9, 0xd06bf

    filled-new-array {v9, v10, v12}, [I

    move-result-object v26

    const v9, 0xf6363

    filled-new-array {v9, v12, v14}, [I

    move-result-object v27

    const v9, 0xfe185

    filled-new-array {v9, v14, v13}, [I

    move-result-object v28

    const v9, 0xfe2b6

    filled-new-array {v9, v13, v15}, [I

    move-result-object v29

    filled-new-array/range {v19 .. v29}, [[I

    move-result-object v9

    .line 160
    .local v9, "slices":[[I
    move/from16 v16, v1

    .end local v1    # "optionsEnd":I
    .local v16, "optionsEnd":I
    invoke-static {v0, v9}, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider;->buildPackFromSlices([B[[I)[B

    move-result-object v1

    .line 161
    .local v1, "pack":[B
    array-length v0, v1

    move/from16 v17, v2

    .end local v2    # "titleDtbl":I
    .local v17, "titleDtbl":I
    const v2, 0x35702

    if-ne v0, v2, :cond_0

    .line 163
    return-object v1

    .line 162
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v3

    .end local v3    # "directEnd":I
    .local v18, "directEnd":I
    const-string v3, "German audio pack layout size mismatch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static buildPack([B)[B
    .locals 1
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider;->buildPack([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static buildPack([BLjava/lang/String;)[B
    .locals 7
    .param p0, "rom"    # [B
    .param p1, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    if-eqz p0, :cond_2

    array-length v0, p0

    const/high16 v1, 0x100000

    if-lt v0, v1, :cond_2

    .line 114
    invoke-static {p0}, Lcom/ahsim/demulation/GermanRomAddressMap;->isExactGerman([B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider;->buildGermanPack([B)[B

    move-result-object v0

    return-object v0

    .line 116
    :cond_0
    sget-object v0, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider;->SEGMENTS:[[I

    array-length v0, v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    const/4 v4, 0x3

    aput v4, v2, v3

    const/4 v4, 0x0

    aput v0, v2, v4

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 117
    .local v0, "slices":[[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v5, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider;->SEGMENTS:[[I

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 118
    aget-object v5, v0, v2

    sget-object v6, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider;->SEGMENTS:[[I

    aget-object v6, v6, v2

    aget v6, v6, v4

    aput v6, v5, v4

    .line 119
    aget-object v5, v0, v2

    sget-object v6, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider;->SEGMENTS:[[I

    aget-object v6, v6, v2

    aget v6, v6, v4

    aput v6, v5, v3

    .line 120
    aget-object v5, v0, v2

    sget-object v6, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider;->SEGMENTS:[[I

    aget-object v6, v6, v2

    aget v6, v6, v3

    aput v6, v5, v1

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    .end local v2    # "i":I
    :cond_1
    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider;->buildPackFromSlices([B[[I)[B

    move-result-object v1

    return-object v1

    .line 113
    .end local v0    # "slices":[[I
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is truncated"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static buildPackFromSlices([B[[I)[B
    .locals 10
    .param p0, "rom"    # [B
    .param p1, "slices"    # [[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "payload":I
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/high16 v4, 0x100000

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v3, v1, :cond_2

    aget-object v7, p1, v3

    .line 170
    .local v7, "slice":[I
    if-eqz v7, :cond_1

    array-length v8, v7

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    aget v8, v7, v2

    if-ltz v8, :cond_1

    aget v8, v7, v6

    if-ltz v8, :cond_1

    aget v8, v7, v5

    aget v9, v7, v6

    if-lt v8, v9, :cond_1

    aget v8, v7, v5

    array-length v9, p0

    if-gt v8, v9, :cond_1

    .line 173
    aget v5, v7, v5

    aget v6, v7, v6

    sub-int/2addr v5, v6

    .line 174
    .local v5, "len":I
    aget v6, v7, v2

    sub-int/2addr v4, v5

    if-gt v6, v4, :cond_0

    .line 176
    add-int/2addr v0, v5

    .line 169
    .end local v5    # "len":I
    .end local v7    # "slice":[I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    .restart local v5    # "len":I
    .restart local v7    # "slice":[I
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Audio virtual slice is outside ROM address space"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    .end local v5    # "len":I
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Audio source slice is outside ROM"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    .end local v7    # "slice":[I
    :cond_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x14

    add-int/2addr v3, v0

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 179
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider;->MAGIC:[B

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 180
    invoke-static {v1, v6}, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider;->writeBe32(Ljava/io/ByteArrayOutputStream;I)V

    .line 181
    invoke-static {v1, v4}, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider;->writeBe32(Ljava/io/ByteArrayOutputStream;I)V

    .line 182
    array-length v3, p1

    invoke-static {v1, v3}, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider;->writeBe32(Ljava/io/ByteArrayOutputStream;I)V

    .line 183
    array-length v3, p1

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v7, p1, v4

    .line 184
    .restart local v7    # "slice":[I
    aget v8, v7, v2

    invoke-static {v1, v8}, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider;->writeBe32(Ljava/io/ByteArrayOutputStream;I)V

    .line 185
    aget v8, v7, v5

    aget v9, v7, v6

    sub-int/2addr v8, v9

    invoke-static {v1, v8}, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider;->writeBe32(Ljava/io/ByteArrayOutputStream;I)V

    .line 183
    .end local v7    # "slice":[I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 187
    :cond_3
    array-length v3, p1

    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v4, p1, v2

    .local v4, "slice":[I
    aget v7, v4, v6

    aget v8, v4, v5

    aget v9, v4, v6

    sub-int/2addr v8, v9

    invoke-virtual {v1, p0, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .end local v4    # "slice":[I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 188
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public static deleteRecursively(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 224
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 226
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
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

    .line 229
    :cond_3
    :goto_1
    return-void

    .line 223
    :cond_4
    :goto_2
    return-void
.end method

.method public static extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
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
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    .local v0, "input":Ljava/io/InputStream;
    .local v1, "knownRomSize":J
    .local v3, "stagingRoot":Ljava/io/File;
    .local v4, "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    invoke-static/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider;->extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;

    move-result-object p0

    return-object p0
.end method

.method public static extract(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;
    .locals 16
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownRomSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    .param p5, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    move-object/from16 v6, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    if-eqz p0, :cond_b

    .line 62
    if-eqz v6, :cond_a

    .line 63
    const-wide/32 v0, 0x1000000

    cmp-long v0, p1, v0

    if-gtz v0, :cond_9

    .line 64
    invoke-static/range {p0 .. p2}, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider;->readAll(Ljava/io/InputStream;J)[B

    move-result-object v10

    .line 65
    .local v10, "rom":[B
    array-length v0, v10

    const/high16 v1, 0x100000

    if-lt v0, v1, :cond_8

    .line 66
    invoke-static {v10, v9}, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider;->buildPack([BLjava/lang/String;)[B

    move-result-object v11

    .line 67
    .local v11, "pack":[B
    invoke-static {}, Lcom/ahsim/demulation/RomAudioAssetManifest;->entries()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/ahsim/demulation/RomAudioAssetManifest$Entry;

    .line 68
    .local v12, "expected":Lcom/ahsim/demulation/RomAudioAssetManifest$Entry;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v5, "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, v12, Lcom/ahsim/demulation/RomAudioAssetManifest$Entry;->relativePath:Ljava/lang/String;

    iget v2, v12, Lcom/ahsim/demulation/RomAudioAssetManifest$Entry;->length:I

    iget-object v3, v12, Lcom/ahsim/demulation/RomAudioAssetManifest$Entry;->sha256:Ljava/lang/String;

    invoke-static {v9, v0, v11, v2, v3}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->matchesExtracted(Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)Z

    move-result v13

    .line 71
    .local v13, "match":Z
    if-nez v13, :cond_0

    iget-object v0, v12, Lcom/ahsim/demulation/RomAudioAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    invoke-static {v6}, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 74
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not create audio staging"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_2
    :goto_0
    :try_start_0
    iget-object v0, v12, Lcom/ahsim/demulation/RomAudioAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object v14, v0

    .line 79
    .local v14, "out":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    move-object v15, v0

    .line 80
    .local v15, "parent":Ljava/io/File;
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 81
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not create audio staging directory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "rom":[B
    .end local v11    # "pack":[B
    .end local v12    # "expected":Lcom/ahsim/demulation/RomAudioAssetManifest$Entry;
    .end local v13    # "match":Z
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    .end local p5    # "profileId":Ljava/lang/String;
    throw v0

    .line 83
    .restart local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "rom":[B
    .restart local v11    # "pack":[B
    .restart local v12    # "expected":Lcom/ahsim/demulation/RomAudioAssetManifest$Entry;
    .restart local v13    # "match":Z
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    .restart local p5    # "profileId":Ljava/lang/String;
    :cond_4
    :goto_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 84
    .local v2, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 85
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 87
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    const/4 v0, 0x1

    if-eqz v8, :cond_5

    iget-object v2, v12, Lcom/ahsim/demulation/RomAudioAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-interface {v8, v0, v0, v2}, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;->onProgress(IILjava/lang/String;)V

    .line 88
    :cond_5
    if-nez v13, :cond_6

    invoke-static {v6}, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 89
    :cond_6
    move v2, v0

    new-instance v0, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;

    if-eqz v13, :cond_7

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    array-length v1, v11

    int-to-long v3, v1

    const/4 v7, 0x0

    const/4 v1, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$Result;-><init>(IIJLjava/util/List;Ljava/io/File;Lcom/ahsim/demulation/GenesisRomAudioAssetProvider-IA;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    .line 83
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "rom":[B
    .end local v11    # "pack":[B
    .end local v12    # "expected":Lcom/ahsim/demulation/RomAudioAssetManifest$Entry;
    .end local v13    # "match":Z
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "knownRomSize":J
    .end local p3    # "stagingRoot":Ljava/io/File;
    .end local p4    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    .end local p5    # "profileId":Ljava/lang/String;
    :goto_3
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 90
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .end local v14    # "out":Ljava/io/File;
    .end local v15    # "parent":Ljava/io/File;
    .restart local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "rom":[B
    .restart local v11    # "pack":[B
    .restart local v12    # "expected":Lcom/ahsim/demulation/RomAudioAssetManifest$Entry;
    .restart local v13    # "match":Z
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "knownRomSize":J
    .restart local p3    # "stagingRoot":Ljava/io/File;
    .restart local p4    # "listener":Lcom/ahsim/demulation/GenesisRomAudioAssetProvider$ProgressListener;
    .restart local p5    # "profileId":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    invoke-static/range {p3 .. p3}, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 92
    throw v0

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "mismatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "pack":[B
    .end local v12    # "expected":Lcom/ahsim/demulation/RomAudioAssetManifest$Entry;
    .end local v13    # "match":Z
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is too small for original audio banks"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    .end local v10    # "rom":[B
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is unexpectedly large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Audio staging is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_b
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

    .line 192
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

    .line 193
    .local v0, "initial":I
    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 194
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 195
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 197
    .local v3, "total":I
    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 198
    .local v4, "n":I
    if-gez v4, :cond_1

    .line 204
    .end local v4    # "n":I
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 199
    .restart local v4    # "n":I
    :cond_1
    if-nez v4, :cond_2

    goto :goto_1

    .line 200
    :cond_2
    add-int/2addr v3, v4

    .line 201
    const/high16 v5, 0x1000000

    if-gt v3, v5, :cond_3

    .line 202
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 203
    .end local v4    # "n":I
    goto :goto_1

    .line 201
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

    .line 215
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 216
    .local v0, "child":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "rp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 218
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

    .line 219
    return-object v0

    .line 218
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unsafe audio asset path"

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

    .line 233
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 234
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 235
    .local v1, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 236
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

    .line 237
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 238
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "hash":[B
    .end local v2    # "out":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 is unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static writeBe32(Ljava/io/ByteArrayOutputStream;I)V
    .locals 1
    .param p0, "out"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "value"    # I

    .line 208
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 209
    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 210
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 211
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 212
    return-void
.end method
