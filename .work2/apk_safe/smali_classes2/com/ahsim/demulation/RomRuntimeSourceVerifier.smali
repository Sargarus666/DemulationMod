.class public final Lcom/ahsim/demulation/RomRuntimeSourceVerifier;
.super Ljava/lang/Object;
.source "RomRuntimeSourceVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomRuntimeSourceVerifier$Result;
    }
.end annotation


# static fields
.field private static final MAX_SOURCE_BYTES:I = 0x1000000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private static hex([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 86
    .local v0, "out":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .local v3, "value":B
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    and-int/lit16 v5, v3, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%02x"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v3    # "value":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static normalizeSha256(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    if-eqz p0, :cond_1

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "normalized":Ljava/lang/String;
    const-string v1, "[0-9a-f]{64}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    return-object v0

    .line 71
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "READY source fingerprint is invalid"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    .end local v0    # "normalized":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "READY source fingerprint is missing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readAndVerify(Ljava/io/InputStream;JLjava/lang/String;)Lcom/ahsim/demulation/RomRuntimeSourceVerifier$Result;
    .locals 10
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "advertisedSize"    # J
    .param p3, "expectedSha256"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    if-eqz p0, :cond_7

    .line 37
    invoke-static {p3}, Lcom/ahsim/demulation/RomRuntimeSourceVerifier;->normalizeSha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "expected":Ljava/lang/String;
    const-wide/32 v1, 0x1000000

    cmp-long v3, p1, v1

    if-gtz v3, :cond_6

    .line 42
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    .line 43
    long-to-int v1, p1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x100000

    .line 44
    .local v1, "initialCapacity":I
    :goto_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 45
    .local v2, "output":Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Lcom/ahsim/demulation/RomRuntimeSourceVerifier;->sha256Digest()Ljava/security/MessageDigest;

    move-result-object v3

    .line 46
    .local v3, "digest":Ljava/security/MessageDigest;
    const/16 v4, 0x4000

    new-array v4, v4, [B

    .line 47
    .local v4, "buffer":[B
    const/4 v5, 0x0

    .line 49
    .local v5, "total":I
    :goto_1
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "count":I
    if-ltz v6, :cond_3

    .line 50
    if-nez v7, :cond_1

    goto :goto_1

    .line 51
    :cond_1
    add-int/2addr v5, v7

    .line 52
    const/high16 v6, 0x1000000

    if-gt v5, v6, :cond_2

    .line 55
    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 56
    invoke-virtual {v3, v4, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1

    .line 53
    :cond_2
    new-instance v6, Ljava/io/IOException;

    const-string v8, "Selected ROM exceeds runtime source size limit"

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 58
    :cond_3
    if-eqz v5, :cond_5

    .line 60
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    invoke-static {v6}, Lcom/ahsim/demulation/RomRuntimeSourceVerifier;->hex([B)Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, "actual":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 64
    new-instance v8, Lcom/ahsim/demulation/RomRuntimeSourceVerifier$Result;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v9, v6}, Lcom/ahsim/demulation/RomRuntimeSourceVerifier$Result;-><init>([BLjava/lang/String;)V

    return-object v8

    .line 62
    :cond_4
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Selected ROM does not match the ROM used for READY assets"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 58
    .end local v6    # "actual":Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/io/IOException;

    const-string v8, "Selected ROM is empty"

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 39
    .end local v1    # "initialCapacity":I
    .end local v2    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "digest":Ljava/security/MessageDigest;
    .end local v4    # "buffer":[B
    .end local v5    # "total":I
    .end local v7    # "count":I
    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Selected ROM is too large for the runtime source bridge"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    .end local v0    # "expected":Ljava/lang/String;
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Selected ROM stream is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static sha256Digest()Ljava/security/MessageDigest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "impossible":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 is unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
