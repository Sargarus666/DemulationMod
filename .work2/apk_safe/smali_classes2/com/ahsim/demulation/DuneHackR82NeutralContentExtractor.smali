.class public final Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;
.super Ljava/lang/Object;
.source "DuneHackR82NeutralContentExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;
    }
.end annotation


# static fields
.field private static final GAME_HEADER:[I

.field public static final GAME_PALETTE_BYTES:I = 0x200

.field private static final MAX_ROM_BYTES:I = 0x1000000

.field private static final REGION_HEADER:[I

.field public static final REGION_PALETTE_BYTES:I = 0x60


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;->GAME_HEADER:[I

    .line 33
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;->REGION_HEADER:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x6ac
        0x48a
        0x268
        0x46
        0x224
        0x6c
        0x2a
        0x444
        0xeee
        0xa88
        0x422
        0x0
        0xae
        0xa
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x8ce
        0x6ac
        0x48a
        0x268
        0x46
        0x224
        0x2
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static equalsWords([BI[I)Z
    .locals 4
    .param p0, "rom"    # [B
    .param p1, "offset"    # I
    .param p2, "words"    # [I

    .line 111
    const/4 v0, 0x0

    if-ltz p1, :cond_3

    array-length v1, p0

    array-length v2, p2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 113
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p1

    invoke-static {p0, v2}, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;->u16([BI)I

    move-result v2

    aget v3, p2, v1

    if-eq v2, v3, :cond_1

    return v0

    .line 112
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 111
    :cond_3
    :goto_1
    return v0
.end method

.method public static extract([BLcom/ahsim/demulation/DuneHackR82Probe$Result;)Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;
    .locals 5
    .param p0, "rom"    # [B
    .param p1, "probe"    # Lcom/ahsim/demulation/DuneHackR82Probe$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->recognized()Z

    move-result v0

    if-eqz v0, :cond_6

    array-length v0, p0

    const/high16 v1, 0x40000

    if-lt v0, v1, :cond_6

    array-length v0, p0

    const/high16 v1, 0x1000000

    if-gt v0, v1, :cond_6

    const/16 v0, 0x100

    aget-byte v0, p0, v0

    const/16 v1, 0x53

    if-ne v0, v1, :cond_6

    const/16 v0, 0x101

    aget-byte v0, p0, v0

    const/16 v1, 0x45

    if-ne v0, v1, :cond_6

    const/16 v0, 0x102

    aget-byte v0, p0, v0

    const/16 v1, 0x47

    if-ne v0, v1, :cond_6

    const/16 v0, 0x103

    aget-byte v0, p0, v0

    const/16 v1, 0x41

    if-ne v0, v1, :cond_6

    .line 68
    const/4 v0, -0x1

    .line 69
    .local v0, "match":I
    const/16 v1, 0x240

    .local v1, "offset":I
    :goto_0
    array-length v2, p0

    add-int/lit16 v2, v2, -0x200

    add-int/lit8 v2, v2, -0x60

    if-gt v1, v2, :cond_4

    .line 71
    sget-object v2, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;->GAME_HEADER:[I

    invoke-static {p0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;->equalsWords([BI[I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    add-int/lit16 v2, v1, 0x200

    sget-object v3, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;->REGION_HEADER:[I

    invoke-static {p0, v2, v3}, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;->equalsWords([BI[I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 73
    :cond_1
    invoke-static {p0, v1}, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;->validateBlock([BI)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 74
    :cond_2
    if-gez v0, :cond_3

    .line 77
    move v0, v1

    .line 70
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 75
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Ambiguous R82C neutral palette layout: multiple candidates"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    .end local v1    # "offset":I
    :cond_4
    if-ltz v0, :cond_5

    .line 82
    add-int/lit16 v1, v0, 0x200

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 83
    .local v1, "game":[B
    add-int/lit16 v2, v0, 0x200

    add-int/lit16 v3, v0, 0x200

    add-int/lit8 v3, v3, 0x60

    invoke-static {p0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 85
    .local v2, "region":[B
    new-instance v3, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;-><init>(I[B[BLcom/ahsim/demulation/DuneHackR82NeutralContentExtractor-IA;)V

    return-object v3

    .line 80
    .end local v1    # "game":[B
    .end local v2    # "region":[B
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unsupported R82C neutral palette layout (not an audited 2026 bank)"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    .end local v0    # "match":I
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "R82C neutral preview requires a recognized normalized Genesis ROM"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static sha256([B)Ljava/lang/String;
    .locals 8
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 125
    .local v0, "digest":[B
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 126
    .local v1, "out":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v0, v3

    .local v4, "b":B
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%02x"

    and-int/lit16 v7, v4, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 128
    .end local v0    # "digest":[B
    .end local v1    # "out":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static u16([BI)I
    .locals 2
    .param p0, "rom"    # [B
    .param p1, "p"    # I

    .line 119
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static validateBlock([BI)Z
    .locals 9
    .param p0, "rom"    # [B
    .param p1, "pos"    # I

    .line 89
    const/16 v0, 0x260

    .line 91
    .local v0, "length":I
    move v1, p1

    .local v1, "p":I
    :goto_0
    add-int v2, p1, v0

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 92
    invoke-static {p0, v1}, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;->u16([BI)I

    move-result v2

    .line 93
    .local v2, "colour":I
    const v4, 0xf111

    and-int/2addr v4, v2

    if-eqz v4, :cond_0

    return v3

    .line 91
    .end local v2    # "colour":I
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 97
    .end local v1    # "p":I
    :cond_1
    const/4 v1, 0x0

    .local v1, "line":I
    :goto_1
    const/4 v2, 0x4

    if-ge v1, v2, :cond_5

    .line 98
    const/4 v4, 0x1

    .local v4, "bank":I
    :goto_2
    if-ge v4, v2, :cond_4

    .line 99
    const/4 v5, 0x0

    .local v5, "colour":I
    :goto_3
    const/16 v6, 0xd

    if-ge v5, v6, :cond_3

    .line 100
    mul-int/lit8 v6, v1, 0x20

    add-int/2addr v6, p1

    mul-int/lit8 v7, v5, 0x2

    add-int/2addr v6, v7

    invoke-static {p0, v6}, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;->u16([BI)I

    move-result v6

    mul-int/lit16 v7, v4, 0x80

    add-int/2addr v7, p1

    mul-int/lit8 v8, v1, 0x20

    add-int/2addr v7, v8

    mul-int/lit8 v8, v5, 0x2

    add-int/2addr v7, v8

    .line 101
    invoke-static {p0, v7}, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;->u16([BI)I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 102
    return v3

    .line 99
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 98
    .end local v5    # "colour":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 97
    .end local v4    # "bank":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 107
    .end local v1    # "line":I
    :cond_5
    const/4 v1, 0x1

    return v1
.end method
