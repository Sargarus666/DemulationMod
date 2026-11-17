.class final Lcom/ahsim/demulation/GenesisAudioSource;
.super Ljava/lang/Object;
.source "GenesisAudioSource.java"


# static fields
.field private static final MAGIC:[B

.field private static final PACK_VERSION:I = 0x1

.field private static final ROM_IMAGE_BYTES:I = 0x100000


# instance fields
.field private final absoluteOffsets:[I

.field private final bytes:[B

.field private final compact:Z

.field private final dataOffsets:[I

.field private final imageBytes:I

.field private final lengths:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ahsim/demulation/GenesisAudioSource;->MAGIC:[B

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

.method private constructor <init>([BI[I[I[IZ)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "imageBytes"    # I
    .param p3, "absoluteOffsets"    # [I
    .param p4, "lengths"    # [I
    .param p5, "dataOffsets"    # [I
    .param p6, "compact"    # Z

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisAudioSource;->bytes:[B

    .line 27
    iput p2, p0, Lcom/ahsim/demulation/GenesisAudioSource;->imageBytes:I

    .line 28
    iput-object p3, p0, Lcom/ahsim/demulation/GenesisAudioSource;->absoluteOffsets:[I

    .line 29
    iput-object p4, p0, Lcom/ahsim/demulation/GenesisAudioSource;->lengths:[I

    .line 30
    iput-object p5, p0, Lcom/ahsim/demulation/GenesisAudioSource;->dataOffsets:[I

    .line 31
    iput-boolean p6, p0, Lcom/ahsim/demulation/GenesisAudioSource;->compact:Z

    .line 32
    return-void
.end method

.method private static be32Raw([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "p"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    if-ltz p1, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x4

    if-gt p1, v0, :cond_0

    .line 151
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

    .line 150
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Audio source pack header truncated"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findSegment(I)I
    .locals 4
    .param p1, "absolute"    # I

    .line 141
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisAudioSource;->absoluteOffsets:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 142
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisAudioSource;->absoluteOffsets:[I

    aget v1, v1, v0

    .line 143
    .local v1, "off":I
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisAudioSource;->lengths:[I

    aget v2, v2, v0

    .line 144
    .local v2, "len":I
    if-lt p1, v1, :cond_0

    sub-int v3, p1, v1

    if-ge v3, v2, :cond_0

    return v0

    .line 141
    .end local v1    # "off":I
    .end local v2    # "len":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 146
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method static fromPack([B)Lcom/ahsim/demulation/GenesisAudioSource;
    .locals 14
    .param p0, "pack"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    if-eqz p0, :cond_9

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "p":I
    sget-object v1, Lcom/ahsim/demulation/GenesisAudioSource;->MAGIC:[B

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-byte v4, v1, v3

    .line 45
    .local v4, "expected":B
    array-length v5, p0

    if-ge v0, v5, :cond_1

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "p":I
    .local v5, "p":I
    aget-byte v0, p0, v0

    if-ne v0, v4, :cond_0

    .line 44
    .end local v4    # "expected":B
    add-int/lit8 v3, v3, 0x1

    move v0, v5

    goto :goto_0

    .line 45
    .restart local v4    # "expected":B
    :cond_0
    move v0, v5

    .line 46
    .end local v5    # "p":I
    .restart local v0    # "p":I
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Audio source pack magic mismatch"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    .end local v4    # "expected":B
    :cond_2
    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisAudioSource;->be32Raw([BI)I

    move-result v1

    .local v1, "version":I
    add-int/lit8 v0, v0, 0x4

    .line 49
    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisAudioSource;->be32Raw([BI)I

    move-result v4

    .local v4, "imageBytes":I
    add-int/lit8 v0, v0, 0x4

    .line 50
    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisAudioSource;->be32Raw([BI)I

    move-result v9

    .local v9, "count":I
    add-int/lit8 v0, v0, 0x4

    .line 51
    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    const/high16 v2, 0x100000

    if-ne v4, v2, :cond_8

    if-lez v9, :cond_8

    const/16 v2, 0x20

    if-gt v9, v2, :cond_8

    .line 54
    mul-int/lit8 v2, v9, 0x8

    add-int/lit8 v10, v2, 0x14

    .line 55
    .local v10, "headerBytes":I
    array-length v2, p0

    if-gt v10, v2, :cond_7

    .line 56
    new-array v5, v9, [I

    .line 57
    .local v5, "offsets":[I
    new-array v6, v9, [I

    .line 58
    .local v6, "lengths":[I
    new-array v7, v9, [I

    .line 59
    .local v7, "dataOffsets":[I
    move v2, v10

    .line 60
    .local v2, "data":I
    const/4 v3, 0x0

    move v11, v2

    .end local v2    # "data":I
    .local v3, "i":I
    .local v11, "data":I
    :goto_1
    if-ge v3, v9, :cond_5

    .line 61
    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisAudioSource;->be32Raw([BI)I

    move-result v2

    .local v2, "off":I
    add-int/lit8 v0, v0, 0x4

    .line 62
    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisAudioSource;->be32Raw([BI)I

    move-result v8

    .local v8, "len":I
    add-int/lit8 v0, v0, 0x4

    .line 63
    if-ltz v2, :cond_4

    if-ltz v8, :cond_4

    sub-int v12, v4, v8

    if-gt v2, v12, :cond_4

    .line 65
    array-length v12, p0

    sub-int/2addr v12, v8

    if-gt v11, v12, :cond_3

    .line 67
    aput v2, v5, v3

    .line 68
    aput v8, v6, v3

    .line 69
    aput v11, v7, v3

    .line 70
    add-int/2addr v11, v8

    .line 60
    .end local v2    # "off":I
    .end local v8    # "len":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 66
    .restart local v2    # "off":I
    .restart local v8    # "len":I
    :cond_3
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Audio source pack is truncated"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 64
    :cond_4
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Audio source pack segment is outside ROM image"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 72
    .end local v2    # "off":I
    .end local v3    # "i":I
    .end local v8    # "len":I
    :cond_5
    array-length v2, p0

    if-ne v11, v2, :cond_6

    .line 73
    new-instance v2, Lcom/ahsim/demulation/GenesisAudioSource;

    const/4 v8, 0x1

    move-object v3, p0

    .end local p0    # "pack":[B
    .local v3, "pack":[B
    invoke-direct/range {v2 .. v8}, Lcom/ahsim/demulation/GenesisAudioSource;-><init>([BI[I[I[IZ)V

    return-object v2

    .line 72
    .end local v3    # "pack":[B
    .restart local p0    # "pack":[B
    :cond_6
    move-object v3, p0

    .end local p0    # "pack":[B
    .restart local v3    # "pack":[B
    new-instance p0, Ljava/io/IOException;

    const-string v2, "Audio source pack has trailing data"

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    .end local v3    # "pack":[B
    .end local v5    # "offsets":[I
    .end local v6    # "lengths":[I
    .end local v7    # "dataOffsets":[I
    .end local v11    # "data":I
    .restart local p0    # "pack":[B
    :cond_7
    move-object v3, p0

    .end local p0    # "pack":[B
    .restart local v3    # "pack":[B
    new-instance p0, Ljava/io/IOException;

    const-string v2, "Audio source pack header truncated"

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 51
    .end local v3    # "pack":[B
    .end local v10    # "headerBytes":I
    .restart local p0    # "pack":[B
    :cond_8
    move-object v3, p0

    .line 52
    .end local p0    # "pack":[B
    .restart local v3    # "pack":[B
    new-instance p0, Ljava/io/IOException;

    const-string v2, "Audio source pack header mismatch"

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    .end local v0    # "p":I
    .end local v1    # "version":I
    .end local v3    # "pack":[B
    .end local v4    # "imageBytes":I
    .end local v9    # "count":I
    .restart local p0    # "pack":[B
    :cond_9
    move-object v3, p0

    .end local p0    # "pack":[B
    .restart local v3    # "pack":[B
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Audio source pack is unavailable"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static fromRom([B)Lcom/ahsim/demulation/GenesisAudioSource;
    .locals 9
    .param p0, "rom"    # [B

    .line 35
    if-eqz p0, :cond_0

    array-length v0, p0

    const/high16 v1, 0x100000

    if-lt v0, v1, :cond_0

    .line 37
    new-instance v2, Lcom/ahsim/demulation/GenesisAudioSource;

    array-length v4, p0

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v5

    array-length v1, p0

    filled-new-array {v1}, [I

    move-result-object v6

    filled-new-array {v0}, [I

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, p0

    .end local p0    # "rom":[B
    .local v3, "rom":[B
    invoke-direct/range {v2 .. v8}, Lcom/ahsim/demulation/GenesisAudioSource;-><init>([BI[I[I[IZ)V

    return-object v2

    .line 35
    .end local v3    # "rom":[B
    .restart local p0    # "rom":[B
    :cond_0
    move-object v3, p0

    .line 36
    .end local p0    # "rom":[B
    .restart local v3    # "rom":[B
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Dune ROM is missing or truncated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method be16(I)I
    .locals 2
    .param p1, "absolute"    # I

    .line 107
    invoke-virtual {p0, p1}, Lcom/ahsim/demulation/GenesisAudioSource;->u8(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/GenesisAudioSource;->u8(I)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method be32(I)I
    .locals 2
    .param p1, "absolute"    # I

    .line 110
    invoke-virtual {p0, p1}, Lcom/ahsim/demulation/GenesisAudioSource;->u8(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/GenesisAudioSource;->u8(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    .line 111
    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/GenesisAudioSource;->u8(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/GenesisAudioSource;->u8(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 110
    return v0
.end method

.method contains(II)Z
    .locals 8
    .param p1, "absolute"    # I
    .param p2, "length"    # I

    .line 82
    const/4 v0, 0x0

    if-ltz p1, :cond_5

    if-ltz p2, :cond_5

    iget v1, p0, Lcom/ahsim/demulation/GenesisAudioSource;->imageBytes:I

    sub-int/2addr v1, p2

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 83
    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_1

    return v1

    .line 84
    :cond_1
    move v2, p2

    .line 85
    .local v2, "remaining":I
    move v3, p1

    .line 86
    .local v3, "cursor":I
    :goto_0
    if-lez v2, :cond_4

    .line 87
    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisAudioSource;->findSegment(I)I

    move-result v4

    .line 88
    .local v4, "s":I
    if-gez v4, :cond_2

    return v0

    .line 89
    :cond_2
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisAudioSource;->absoluteOffsets:[I

    aget v5, v5, v4

    sub-int v5, v3, v5

    .line 90
    .local v5, "within":I
    iget-object v6, p0, Lcom/ahsim/demulation/GenesisAudioSource;->lengths:[I

    aget v6, v6, v4

    sub-int/2addr v6, v5

    .line 91
    .local v6, "available":I
    if-gtz v6, :cond_3

    return v0

    .line 92
    :cond_3
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 93
    .local v7, "step":I
    add-int/2addr v3, v7

    .line 94
    sub-int/2addr v2, v7

    .line 95
    .end local v4    # "s":I
    .end local v5    # "within":I
    .end local v6    # "available":I
    .end local v7    # "step":I
    goto :goto_0

    .line 96
    :cond_4
    return v1

    .line 82
    .end local v2    # "remaining":I
    .end local v3    # "cursor":I
    :cond_5
    :goto_1
    return v0
.end method

.method copyRange(II)[B
    .locals 2
    .param p1, "absolute"    # I
    .param p2, "length"    # I

    .line 134
    new-array v0, p2, [B

    .line 135
    .local v0, "out":[B
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/ahsim/demulation/GenesisAudioSource;->copyTo(I[BII)V

    .line 136
    return-object v0
.end method

.method copyTo(I[BII)V
    .locals 8
    .param p1, "absolute"    # I
    .param p2, "out"    # [B
    .param p3, "outOffset"    # I
    .param p4, "length"    # I

    .line 115
    if-eqz p2, :cond_3

    if-ltz p3, :cond_3

    if-ltz p4, :cond_3

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_3

    .line 117
    move v0, p4

    .line 118
    .local v0, "remaining":I
    move v1, p1

    .line 119
    .local v1, "cursor":I
    move v2, p3

    .line 120
    .local v2, "dst":I
    :goto_0
    if-lez v0, :cond_2

    .line 121
    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisAudioSource;->findSegment(I)I

    move-result v3

    .line 122
    .local v3, "s":I
    const-string v4, "Audio copy source range"

    if-ltz v3, :cond_1

    .line 123
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisAudioSource;->absoluteOffsets:[I

    aget v5, v5, v3

    sub-int v5, v1, v5

    .line 124
    .local v5, "within":I
    iget-object v6, p0, Lcom/ahsim/demulation/GenesisAudioSource;->lengths:[I

    aget v6, v6, v3

    sub-int/2addr v6, v5

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 125
    .local v6, "step":I
    if-lez v6, :cond_0

    .line 126
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisAudioSource;->bytes:[B

    iget-object v7, p0, Lcom/ahsim/demulation/GenesisAudioSource;->dataOffsets:[I

    aget v7, v7, v3

    add-int/2addr v7, v5

    invoke-static {v4, v7, p2, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    add-int/2addr v1, v6

    .line 128
    add-int/2addr v2, v6

    .line 129
    sub-int/2addr v0, v6

    .line 130
    .end local v3    # "s":I
    .end local v5    # "within":I
    .end local v6    # "step":I
    goto :goto_0

    .line 125
    .restart local v3    # "s":I
    .restart local v5    # "within":I
    .restart local v6    # "step":I
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 122
    .end local v5    # "within":I
    .end local v6    # "step":I
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 131
    .end local v3    # "s":I
    :cond_2
    return-void

    .line 116
    .end local v0    # "remaining":I
    .end local v1    # "cursor":I
    .end local v2    # "dst":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Audio copy destination range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method imageBytes()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/ahsim/demulation/GenesisAudioSource;->imageBytes:I

    return v0
.end method

.method isCompact()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisAudioSource;->compact:Z

    return v0
.end method

.method le16(I)I
    .locals 2
    .param p1, "absolute"    # I

    .line 106
    invoke-virtual {p0, p1}, Lcom/ahsim/demulation/GenesisAudioSource;->u8(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/GenesisAudioSource;->u8(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method residentBytes()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisAudioSource;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method segmentCount()I
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisAudioSource;->absoluteOffsets:[I

    array-length v0, v0

    return v0
.end method

.method u24le(I)I
    .locals 2
    .param p1, "absolute"    # I

    .line 108
    invoke-virtual {p0, p1}, Lcom/ahsim/demulation/GenesisAudioSource;->u8(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/GenesisAudioSource;->u8(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/GenesisAudioSource;->u8(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method u8(I)I
    .locals 4
    .param p1, "absolute"    # I

    .line 100
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisAudioSource;->findSegment(I)I

    move-result v0

    .line 101
    .local v0, "s":I
    if-ltz v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisAudioSource;->bytes:[B

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisAudioSource;->dataOffsets:[I

    aget v2, v2, v0

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisAudioSource;->absoluteOffsets:[I

    aget v3, v3, v0

    sub-int/2addr v2, v3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    return v1

    .line 101
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio address is outside READY source: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
