.class public final Lcom/ahsim/demulation/RomImageNormalizer;
.super Ljava/lang/Object;
.source "RomImageNormalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;,
        Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;
    }
.end annotation


# static fields
.field private static final GENESIS_HEADER_OFFSET:I = 0x100

.field public static final MAX_ROM_BYTES:I = 0x1000000

.field private static final SMD_BLOCK_BYTES:I = 0x4000

.field private static final SMD_HALF_BLOCK_BYTES:I = 0x2000

.field private static final SMD_HEADER_BYTES:I = 0x200


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deinterleaveBlock([BI[BI)V
    .locals 3
    .param p0, "raw"    # [B
    .param p1, "src"    # I
    .param p2, "out"    # [B
    .param p3, "dst"    # I

    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x2000

    if-ge v0, v1, :cond_0

    .line 114
    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    add-int/lit16 v2, p1, 0x2000

    add-int/2addr v2, v0

    aget-byte v2, p0, v2

    aput-byte v2, p2, v1

    .line 115
    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x1

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, p2, v1

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static deinterleaveClassicSmd([B)[B
    .locals 5
    .param p0, "raw"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    array-length v0, p0

    add-int/lit16 v0, v0, -0x200

    .line 98
    .local v0, "payload":I
    if-lez v0, :cond_1

    rem-int/lit16 v1, v0, 0x4000

    if-nez v1, :cond_1

    .line 101
    new-array v1, v0, [B

    .line 102
    .local v1, "out":[B
    const/16 v2, 0x200

    .local v2, "src":I
    const/4 v3, 0x0

    .local v3, "dst":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_0

    .line 104
    invoke-static {p0, v2, v1, v3}, Lcom/ahsim/demulation/RomImageNormalizer;->deinterleaveBlock([BI[BI)V

    .line 103
    add-int/lit16 v2, v2, 0x4000

    add-int/lit16 v3, v3, 0x4000

    goto :goto_0

    .line 106
    .end local v2    # "src":I
    .end local v3    # "dst":I
    :cond_0
    return-object v1

    .line 99
    .end local v1    # "out":[B
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid classic SMD payload length"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static hasGenesisHeader([B)Z
    .locals 2
    .param p0, "data"    # [B

    .line 77
    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0x104

    if-lt v0, v1, :cond_0

    const/16 v0, 0x100

    aget-byte v0, p0, v0

    const/16 v1, 0x53

    if-ne v0, v1, :cond_0

    const/16 v0, 0x101

    aget-byte v0, p0, v0

    const/16 v1, 0x45

    if-ne v0, v1, :cond_0

    const/16 v0, 0x102

    aget-byte v0, p0, v0

    const/16 v1, 0x47

    if-ne v0, v1, :cond_0

    const/16 v0, 0x103

    aget-byte v0, p0, v0

    const/16 v1, 0x41

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static looksLikeClassicSmd([B)Z
    .locals 4
    .param p0, "raw"    # [B

    .line 85
    array-length v0, p0

    const/16 v1, 0x200

    sub-int/2addr v0, v1

    .line 86
    .local v0, "payload":I
    const/4 v2, 0x0

    if-lez v0, :cond_1

    rem-int/lit16 v3, v0, 0x4000

    if-eqz v3, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    const/16 v3, 0x4000

    :try_start_0
    new-array v3, v3, [B

    .line 89
    .local v3, "first":[B
    invoke-static {p0, v1, v3, v2}, Lcom/ahsim/demulation/RomImageNormalizer;->deinterleaveBlock([BI[BI)V

    .line 90
    invoke-static {v3}, Lcom/ahsim/demulation/RomImageNormalizer;->hasGenesisHeader([B)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 91
    .end local v3    # "first":[B
    :catch_0
    move-exception v1

    .line 92
    .local v1, "ignored":Ljava/lang/RuntimeException;
    return v2

    .line 86
    .end local v1    # "ignored":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return v2
.end method

.method public static normalize([B)Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    .locals 5
    .param p0, "raw"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    if-eqz p0, :cond_4

    array-length v0, p0

    if-eqz v0, :cond_4

    .line 54
    array-length v0, p0

    const/high16 v1, 0x1000000

    if-gt v0, v1, :cond_3

    .line 58
    invoke-static {p0}, Lcom/ahsim/demulation/RomImageNormalizer;->hasGenesisHeader([B)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    sget-object v4, Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;->LINEAR:Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;-><init>([BLcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;ILcom/ahsim/demulation/RomImageNormalizer-IA;)V

    return-object v0

    .line 62
    :cond_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomImageNormalizer;->looksLikeClassicSmd([B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    invoke-static {p0}, Lcom/ahsim/demulation/RomImageNormalizer;->deinterleaveClassicSmd([B)[B

    move-result-object v0

    .line 64
    .local v0, "linear":[B
    invoke-static {v0}, Lcom/ahsim/demulation/RomImageNormalizer;->hasGenesisHeader([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    new-instance v1, Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;

    sget-object v3, Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;->SMD_INTERLEAVED:Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;

    const/16 v4, 0x200

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;-><init>([BLcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;ILcom/ahsim/demulation/RomImageNormalizer-IA;)V

    return-object v1

    .line 65
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SMD deinterleave did not produce a Genesis header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    .end local v0    # "linear":[B
    :cond_2
    new-instance v0, Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    sget-object v4, Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;->LINEAR:Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;-><init>([BLcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;ILcom/ahsim/demulation/RomImageNormalizer-IA;)V

    return-object v0

    .line 54
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is unexpectedly large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM image is empty"

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

    .line 120
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/32 v0, 0x1000000

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 121
    long-to-int v0, p1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x100000

    .line 122
    .local v0, "initial":I
    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x1000

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 123
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    const v2, 0x8000

    new-array v2, v2, [B

    .line 124
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 126
    .local v3, "total":I
    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "n":I
    if-ltz v4, :cond_3

    .line 127
    if-nez v5, :cond_1

    goto :goto_1

    .line 128
    :cond_1
    add-int/2addr v3, v5

    .line 129
    const/high16 v4, 0x1000000

    if-gt v3, v4, :cond_2

    .line 130
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 129
    :cond_2
    new-instance v4, Ljava/io/IOException;

    const-string v6, "ROM is unexpectedly large"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 132
    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method public static readAndNormalize(Ljava/io/InputStream;J)Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    if-eqz p0, :cond_0

    .line 48
    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/RomImageNormalizer;->readAll(Ljava/io/InputStream;J)[B

    move-result-object v0

    .line 49
    .local v0, "raw":[B
    invoke-static {v0}, Lcom/ahsim/demulation/RomImageNormalizer;->normalize([B)Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;

    move-result-object v1

    return-object v1

    .line 47
    .end local v0    # "raw":[B
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM stream is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
