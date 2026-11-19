.class public final Lcom/ahsim/demulation/DuneHackR82bRequiteAudit;
.super Ljava/lang/Object;
.source "DuneHackR82bRequiteAudit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$EmcBank;,
        Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$Result;
    }
.end annotation


# static fields
.field public static final REQUITE_BUILD_TAG:Ljava/lang/String; = "NS14JUN21_82B"

.field public static final REQUITE_SAMPLE_SHA256:Ljava/lang/String; = "a133c2b6dddcb33c843e419d9d8f75c4d4a4dcb4cd068ad1a1088a7d9d02577c"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ascii([BII)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v0, "s":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 133
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 134
    .local v2, "v":I
    if-nez v2, :cond_0

    goto :goto_1

    .line 135
    :cond_0
    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    const/16 v4, 0x7e

    if-gt v2, v4, :cond_1

    int-to-char v3, v2

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    .end local v2    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "i":I
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static be32([BI)J
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "p"    # I

    .line 126
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

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static containsInRange([BIILjava/lang/String;)Z
    .locals 7
    .param p0, "data"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "token"    # Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    if-ltz p1, :cond_5

    array-length v1, p0

    if-gt p2, v1, :cond_5

    if-le p1, p2, :cond_0

    goto :goto_3

    .line 108
    :cond_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 109
    .local v1, "needle":[B
    move v2, p1

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    sub-int v3, p2, v3

    if-gt v2, v3, :cond_4

    .line 110
    const/4 v3, 0x1

    .line 111
    .local v3, "ok":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 112
    add-int v5, v2, v4

    aget-byte v5, p0, v5

    aget-byte v6, v1, v4

    if-eq v5, v6, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    .line 111
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 114
    .end local v4    # "j":I
    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    const/4 v0, 0x1

    return v0

    .line 109
    .end local v3    # "ok":Z
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    .end local v2    # "i":I
    :cond_4
    return v0

    .line 107
    .end local v1    # "needle":[B
    :cond_5
    :goto_3
    return v0
.end method

.method public static inspect([BLjava/lang/String;)Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$Result;
    .locals 19
    .param p0, "rom"    # [B
    .param p1, "normalizedSha256"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_d

    array-length v2, v0

    const/high16 v3, 0x40000

    if-lt v2, v3, :cond_d

    array-length v2, v0

    const/high16 v3, 0x800000

    if-gt v2, v3, :cond_d

    .line 63
    const/16 v2, 0x100

    const-string v3, "SEGA"

    invoke-static {v0, v2, v3}, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit;->matches([BILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_d

    .line 64
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-ne v2, v3, :cond_d

    .line 67
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit;->sha256([BII)Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, "actual":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 70
    const/16 v2, 0x120

    const/16 v4, 0x150

    invoke-static {v0, v2, v4}, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit;->ascii([BII)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "domestic":Ljava/lang/String;
    const/16 v6, 0x180

    invoke-static {v0, v4, v6}, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit;->ascii([BII)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 72
    .local v11, "overseas":Ljava/lang/String;
    const/16 v4, 0x220

    const/16 v6, 0x240

    invoke-static {v0, v4, v6}, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit;->ascii([BII)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 73
    .local v12, "tag":Ljava/lang/String;
    const-string v4, "DUNE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    const-string v4, "REBUILD R82B"

    invoke-virtual {v11, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    const-string v4, "NS14JUN21_82B"

    invoke-virtual {v12, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v3

    .line 75
    .local v7, "r82bHeader":Z
    :goto_0
    if-eqz v7, :cond_b

    .line 77
    const-string v4, "a133c2b6dddcb33c843e419d9d8f75c4d4a4dcb4cd068ad1a1088a7d9d02577c"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 80
    .local v4, "sample":Z
    if-eqz v4, :cond_1

    const-string v8, "REQUITE"

    const v9, 0x109e00

    const v10, 0x10a120

    invoke-static {v0, v9, v10, v8}, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit;->containsInRange([BIILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 81
    const-string v8, "Dimidrol"

    invoke-static {v0, v9, v10, v8}, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit;->containsInRange([BIILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v6

    goto :goto_1

    :cond_1
    move v8, v3

    .line 82
    .local v8, "attribution":Z
    :goto_1
    if-eqz v4, :cond_3

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string v6, "Requite sample markers missing"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 86
    :cond_3
    :goto_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v9, "banks":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$EmcBank;>;"
    if-eqz v4, :cond_a

    .line 88
    const v3, 0x201ca

    const v6, 0x20328

    const v10, 0x1fcd0

    const v13, 0x20102

    filled-new-array {v10, v13, v3, v6}, [I

    move-result-object v3

    .line 89
    .local v3, "expected":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    array-length v10, v3

    if-ge v6, v10, :cond_9

    .line 90
    aget v10, v3, v6

    .line 91
    .local v10, "offset":I
    const-string v13, "FORM"

    invoke-static {v0, v10, v13}, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit;->matches([BILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    add-int/lit8 v13, v10, 0x8

    const-string v14, "EMC2ORDR"

    invoke-static {v0, v13, v14}, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit;->matches([BILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 93
    add-int/lit8 v13, v10, 0x4

    invoke-static {v0, v13}, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit;->be32([BI)J

    move-result-wide v13

    .line 94
    .local v13, "size":J
    move-object v15, v2

    .end local v2    # "domestic":Ljava/lang/String;
    .local v15, "domestic":Ljava/lang/String;
    int-to-long v1, v10

    const-wide/16 v16, 0x4

    add-long v1, v1, v16

    add-long/2addr v1, v13

    .line 95
    .local v1, "end":J
    const-wide/16 v16, 0x18

    cmp-long v16, v13, v16

    if-ltz v16, :cond_7

    move-wide/from16 v16, v1

    .end local v1    # "end":J
    .local v16, "end":J
    array-length v1, v0

    int-to-long v1, v1

    cmp-long v1, v16, v1

    if-gtz v1, :cond_6

    add-int/lit8 v1, v10, 0x10

    int-to-long v1, v1

    cmp-long v1, v16, v1

    if-lez v1, :cond_6

    add-int/lit8 v1, v6, 0x1

    array-length v2, v3

    if-ge v1, v2, :cond_5

    add-int/lit8 v1, v6, 0x1

    aget v1, v3, v1

    int-to-long v1, v1

    cmp-long v1, v16, v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    move-object/from16 v18, v3

    goto :goto_5

    .line 99
    :cond_5
    :goto_4
    int-to-long v1, v10

    sub-long v1, v16, v1

    long-to-int v1, v1

    .line 100
    .local v1, "length":I
    new-instance v2, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$EmcBank;

    move-object/from16 v18, v3

    .end local v3    # "expected":[I
    .local v18, "expected":[I
    invoke-static {v0, v10, v1}, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit;->sha256([BII)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    invoke-direct {v2, v10, v1, v3, v0}, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$EmcBank;-><init>(IILjava/lang/String;Lcom/ahsim/demulation/DuneHackR82bRequiteAudit-IA;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v1    # "length":I
    .end local v10    # "offset":I
    .end local v13    # "size":J
    .end local v16    # "end":J
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move-object/from16 v3, v18

    goto :goto_3

    .line 95
    .end local v18    # "expected":[I
    .restart local v3    # "expected":[I
    .restart local v10    # "offset":I
    .restart local v13    # "size":J
    .restart local v16    # "end":J
    :cond_6
    move-object/from16 v18, v3

    .end local v3    # "expected":[I
    .restart local v18    # "expected":[I
    goto :goto_5

    .end local v16    # "end":J
    .end local v18    # "expected":[I
    .local v1, "end":J
    .restart local v3    # "expected":[I
    :cond_7
    move-wide/from16 v16, v1

    move-object/from16 v18, v3

    .line 97
    .end local v1    # "end":J
    .end local v3    # "expected":[I
    .restart local v16    # "end":J
    .restart local v18    # "expected":[I
    :goto_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Requite EMC bank length mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    .end local v13    # "size":J
    .end local v15    # "domestic":Ljava/lang/String;
    .end local v16    # "end":J
    .end local v18    # "expected":[I
    .restart local v2    # "domestic":Ljava/lang/String;
    .restart local v3    # "expected":[I
    :cond_8
    move-object v15, v2

    move-object/from16 v18, v3

    .line 92
    .end local v2    # "domestic":Ljava/lang/String;
    .end local v3    # "expected":[I
    .restart local v15    # "domestic":Ljava/lang/String;
    .restart local v18    # "expected":[I
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Requite FORM/EMC2 marker mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    .end local v10    # "offset":I
    .end local v15    # "domestic":Ljava/lang/String;
    .end local v18    # "expected":[I
    .restart local v2    # "domestic":Ljava/lang/String;
    .restart local v3    # "expected":[I
    :cond_9
    move-object v15, v2

    move-object/from16 v18, v3

    .end local v2    # "domestic":Ljava/lang/String;
    .end local v3    # "expected":[I
    .restart local v15    # "domestic":Ljava/lang/String;
    .restart local v18    # "expected":[I
    goto :goto_6

    .line 87
    .end local v6    # "i":I
    .end local v15    # "domestic":Ljava/lang/String;
    .end local v18    # "expected":[I
    .restart local v2    # "domestic":Ljava/lang/String;
    :cond_a
    move-object v15, v2

    .line 103
    .end local v2    # "domestic":Ljava/lang/String;
    .restart local v15    # "domestic":Ljava/lang/String;
    :goto_6
    move v6, v4

    .end local v4    # "sample":Z
    .local v6, "sample":Z
    new-instance v4, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$Result;

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$Result;-><init>(Ljava/lang/String;ZZZLjava/util/List;Lcom/ahsim/demulation/DuneHackR82bRequiteAudit-IA;)V

    return-object v4

    .line 75
    .end local v6    # "sample":Z
    .end local v8    # "attribution":Z
    .end local v9    # "banks":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$EmcBank;>;"
    .end local v15    # "domestic":Ljava/lang/String;
    .restart local v2    # "domestic":Ljava/lang/String;
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "R82B title/build evidence missing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    .end local v2    # "domestic":Ljava/lang/String;
    .end local v7    # "r82bHeader":Z
    .end local v11    # "overseas":Ljava/lang/String;
    .end local v12    # "tag":Ljava/lang/String;
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "R82B ROM SHA-256 mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    .end local v5    # "actual":Ljava/lang/String;
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Valid normalized Genesis ROM and fingerprint required"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static matches([BILjava/lang/String;)Z
    .locals 4
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .param p2, "s"    # Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    if-ltz p1, :cond_3

    array-length v1, p0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 121
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    add-int v2, p1, v1

    aget-byte v2, p0, v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 120
    :cond_3
    :goto_1
    return v0
.end method

.method private static sha256([BII)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B
    .param p1, "off"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 143
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 144
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 145
    .local v1, "digest":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 146
    .local v2, "hex":Ljava/lang/StringBuilder;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v1, v4

    .line 147
    .local v5, "b":B
    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    and-int/lit8 v6, v5, 0xf

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    nop

    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 151
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "digest":[B
    .end local v2    # "hex":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
