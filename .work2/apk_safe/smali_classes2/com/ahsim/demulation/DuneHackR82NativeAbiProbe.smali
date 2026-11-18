.class public final Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe;
.super Ljava/lang/Object;
.source "DuneHackR82NativeAbiProbe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;,
        Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Result;
    }
.end annotation


# static fields
.field public static final MAX_NATIVE_ID:I = 0x3f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inspect([BLcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;)Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Result;
    .locals 7
    .param p0, "rom"    # [B
    .param p1, "emc"    # Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;
    .param p2, "dispatch"    # Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    if-eqz p0, :cond_3

    array-length v0, p0

    const/high16 v1, 0x40000

    if-lt v0, v1, :cond_3

    array-length v0, p0

    const/high16 v1, 0x800000

    if-gt v0, v1, :cond_3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 126
    invoke-virtual {p1}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;->scriptsIdentified()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {p0}, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe;->sha256([B)Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, "hash":Ljava/lang/String;
    iget-object v0, p1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;->sourceSha256:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;->sourceSha256:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;->build:Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;

    invoke-static {p0, v0}, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe;->scan([BLcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;)Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;

    move-result-object v2

    .line 135
    .local v2, "build":Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;
    iget-object v0, p1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;->team:Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;

    invoke-static {p0, v0}, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe;->scan([BLcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;)Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;

    move-result-object v3

    .line 136
    .local v3, "team":Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;
    iget-object v0, p1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;->unit:Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;

    invoke-static {p0, v0}, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe;->scan([BLcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;)Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;

    move-result-object v4

    .line 138
    .local v4, "unit":Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;
    iget v0, v2, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;->executeCount:I

    const/16 v1, 0x53

    if-ne v0, v1, :cond_1

    iget v0, v2, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;->distinctNativeIds:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    iget v0, v3, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;->executeCount:I

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_1

    iget v0, v3, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;->distinctNativeIds:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    iget v0, v4, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;->executeCount:I

    const/16 v1, 0x22c

    if-eq v0, v1, :cond_0

    iget v0, v4, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;->executeCount:I

    const/16 v1, 0x22e

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, v4, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;->distinctNativeIds:I

    const/16 v1, 0x35

    if-ne v0, v1, :cond_1

    .line 144
    new-instance v1, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Result;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Result;-><init>(Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe-IA;)V

    return-object v1

    .line 142
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "R82C EMC native call inventory differs from audited builders"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    .end local v2    # "build":Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;
    .end local v3    # "team":Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;
    .end local v4    # "unit":Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "R82C EMC ABI audit mixed different ROM sources"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    .end local v5    # "hash":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No audited R82C EMC + unit dispatch evidence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static scan([BLcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;)Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;
    .locals 16
    .param p0, "rom"    # [B
    .param p1, "script"    # Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_a

    .line 77
    iget v2, v1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->entries:I

    mul-int/lit8 v2, v2, 0x2

    .line 78
    .local v2, "orderBytes":I
    iget v3, v1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->offset:I

    add-int/lit8 v3, v3, 0x14

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x8

    .line 79
    .local v3, "begin":I
    iget v4, v1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->dataWords:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    .line 80
    .local v4, "end":I
    iget v5, v1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->offset:I

    if-ltz v5, :cond_9

    iget v5, v1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->length:I

    add-int/lit8 v6, v2, 0x1c

    if-lt v5, v6, :cond_9

    if-ltz v3, :cond_9

    if-lt v4, v3, :cond_9

    array-length v5, v0

    if-gt v4, v5, :cond_9

    iget v5, v1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->offset:I

    iget v6, v1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->length:I

    add-int/2addr v5, v6

    if-ne v4, v5, :cond_9

    add-int/lit8 v5, v3, -0x8

    aget-byte v5, v0, v5

    const/16 v6, 0x44

    if-ne v5, v6, :cond_9

    add-int/lit8 v5, v3, -0x7

    aget-byte v5, v0, v5

    const/16 v6, 0x41

    if-ne v5, v6, :cond_9

    add-int/lit8 v5, v3, -0x6

    aget-byte v5, v0, v5

    const/16 v7, 0x54

    if-ne v5, v7, :cond_9

    add-int/lit8 v5, v3, -0x5

    aget-byte v5, v0, v5

    if-ne v5, v6, :cond_9

    .line 87
    const/16 v5, 0x40

    new-array v12, v5, [I

    .line 88
    .local v12, "counts":[I
    const/4 v5, 0x0

    .line 89
    .local v5, "instructions":I
    const/4 v6, 0x0

    .line 90
    .local v6, "executes":I
    const-wide/16 v7, 0x0

    .line 91
    .local v7, "mask":J
    move v9, v3

    move-wide v10, v7

    move v8, v5

    move v5, v9

    move v9, v6

    .line 92
    .end local v6    # "executes":I
    .end local v7    # "mask":J
    .local v5, "at":I
    .local v8, "instructions":I
    .local v9, "executes":I
    .local v10, "mask":J
    :goto_0
    if-ge v5, v4, :cond_7

    .line 93
    invoke-static {v0, v5}, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe;->u16([BI)I

    move-result v6

    .line 94
    .local v6, "word":I
    add-int/lit8 v5, v5, 0x2

    .line 95
    ushr-int/lit8 v7, v6, 0x8

    and-int/lit8 v7, v7, 0x1f

    .line 96
    .local v7, "opcode":I
    and-int/lit16 v13, v6, 0xff

    .line 97
    .local v13, "param":I
    const v14, 0x8000

    and-int/2addr v14, v6

    if-eqz v14, :cond_0

    .line 98
    const/4 v7, 0x0

    .line 99
    and-int/lit16 v13, v6, 0x7fff

    goto :goto_1

    .line 100
    :cond_0
    and-int/lit16 v14, v6, 0x4000

    if-eqz v14, :cond_1

    .line 101
    int-to-byte v13, v6

    goto :goto_1

    .line 102
    :cond_1
    and-int/lit16 v14, v6, 0x2000

    if-eqz v14, :cond_3

    .line 103
    add-int/lit8 v14, v5, 0x2

    if-gt v14, v4, :cond_2

    .line 104
    invoke-static {v0, v5}, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe;->u16([BI)I

    move-result v13

    .line 105
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 103
    :cond_2
    new-instance v14, Ljava/io/IOException;

    const-string v15, "Truncated EMC extended operand"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 107
    :cond_3
    :goto_1
    const/16 v14, 0x12

    if-gt v7, v14, :cond_6

    .line 108
    add-int/lit8 v8, v8, 0x1

    .line 109
    const/16 v14, 0xe

    if-ne v7, v14, :cond_5

    .line 111
    if-ltz v13, :cond_4

    const/16 v14, 0x3f

    if-gt v13, v14, :cond_4

    .line 114
    aget v14, v12, v13

    add-int/lit8 v14, v14, 0x1

    aput v14, v12, v13

    .line 115
    const-wide/16 v14, 0x1

    shl-long/2addr v14, v13

    or-long/2addr v10, v14

    .line 116
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 112
    :cond_4
    new-instance v14, Ljava/io/IOException;

    const-string v15, "R82C native Execute index out of supported range"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 118
    .end local v6    # "word":I
    .end local v7    # "opcode":I
    .end local v13    # "param":I
    :cond_5
    :goto_2
    goto :goto_0

    .line 107
    .restart local v6    # "word":I
    .restart local v7    # "opcode":I
    .restart local v13    # "param":I
    :cond_6
    new-instance v14, Ljava/io/IOException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported EMC opcode "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 119
    .end local v6    # "word":I
    .end local v7    # "opcode":I
    .end local v13    # "param":I
    :cond_7
    if-ne v5, v4, :cond_8

    if-eqz v9, :cond_8

    .line 120
    new-instance v6, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;

    iget-object v7, v1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->name:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;-><init>(Ljava/lang/String;IIJ[ILcom/ahsim/demulation/DuneHackR82NativeAbiProbe-IA;)V

    return-object v6

    .line 119
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v6, "R82C EMC inventory incomplete"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    .end local v5    # "at":I
    .end local v8    # "instructions":I
    .end local v9    # "executes":I
    .end local v10    # "mask":J
    .end local v12    # "counts":[I
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v5, "R82C EMC DATA range mismatch"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    .end local v2    # "orderBytes":I
    .end local v3    # "begin":I
    .end local v4    # "end":I
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v2, "R82C EMC bank not identified"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static sha256([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 59
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 60
    .local v1, "digest":[B
    const/16 v2, 0x40

    new-array v2, v2, [C

    .line 61
    .local v2, "out":[C
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 62
    .local v3, "chars":[C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x20

    if-ge v4, v5, :cond_0

    .line 63
    mul-int/lit8 v5, v4, 0x2

    aget-byte v6, v1, v4

    ushr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v3, v6

    aput-char v6, v2, v5

    .line 64
    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v6, v1, v4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v3, v6

    aput-char v6, v2, v5

    .line 62
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 66
    .end local v4    # "i":I
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 67
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "digest":[B
    .end local v2    # "out":[C
    .end local v3    # "chars":[C
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static u16([BI)I
    .locals 2
    .param p0, "rom"    # [B
    .param p1, "off"    # I

    .line 72
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method
