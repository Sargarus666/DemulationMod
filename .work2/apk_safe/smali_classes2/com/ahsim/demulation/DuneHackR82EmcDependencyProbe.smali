.class public final Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe;
.super Ljava/lang/Object;
.source "DuneHackR82EmcDependencyProbe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;,
        Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;
    }
.end annotation


# static fields
.field private static final COMMON_BUILD:Ljava/lang/String; = "d813c5732056b6e8e42daeb8eba5572da8724e212a134331e0ba947da7ab2551"

.field private static final COMMON_TEAM:Ljava/lang/String; = "f35fa2e0347e70e55d13c70d67197ded0e8ddf548dac81ec2bbfcc0f981e1195"

.field private static final DATA:[B

.field private static final EMC2:[B

.field private static final FORM:[B

.field private static final MAX_SCAN_BYTES:I = 0x800000

.field private static final MAX_SCRIPT_BYTES:I = 0x10000

.field private static final MIN_ROM:I = 0x40000

.field private static final ORDR:[B

.field private static final UNIT_AUG:Ljava/lang/String; = "e21674f991a3e7e625a8a26dfc5b4e32426621364fbaeb242c8fb29f950be0de"

.field private static final UNIT_TI_FEB:Ljava/lang/String; = "018bfb8a11c6ec7af35de4ef650ce1a62caad6c1a3e48f7ef09b6a7b85b8cd9f"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-string v0, "FORM"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe;->FORM:[B

    .line 33
    const-string v0, "EMC2"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe;->EMC2:[B

    .line 34
    const-string v0, "ORDR"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe;->ORDR:[B

    .line 35
    const-string v0, "DATA"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe;->DATA:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static be32([BI)I
    .locals 2
    .param p0, "raw"    # [B
    .param p1, "p"    # I

    .line 79
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

.method public static inspect([BLcom/ahsim/demulation/DuneHackR82Probe$Result;)Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;
    .locals 11
    .param p0, "rom"    # [B
    .param p1, "family"    # Lcom/ahsim/demulation/DuneHackR82Probe$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    if-eqz p0, :cond_2

    array-length v0, p0

    const/high16 v1, 0x40000

    if-lt v0, v1, :cond_2

    array-length v0, p0

    const/high16 v1, 0x800000

    if-gt v0, v1, :cond_2

    if-eqz p1, :cond_2

    .line 136
    invoke-virtual {p1}, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->recognized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    const/16 v0, 0x13

    const-string v1, "d813c5732056b6e8e42daeb8eba5572da8724e212a134331e0ba947da7ab2551"

    const-string v2, "build"

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v1, v3}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe;->scan([BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;

    move-result-object v5

    .line 141
    .local v5, "build":Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;
    const/4 v0, 0x6

    const-string v1, "f35fa2e0347e70e55d13c70d67197ded0e8ddf548dac81ec2bbfcc0f981e1195"

    const-string v2, "team"

    invoke-static {p0, v2, v0, v1, v3}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe;->scan([BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;

    move-result-object v6

    .line 142
    .local v6, "team":Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;
    const-string v0, "e21674f991a3e7e625a8a26dfc5b4e32426621364fbaeb242c8fb29f950be0de"

    const-string v1, "018bfb8a11c6ec7af35de4ef650ce1a62caad6c1a3e48f7ef09b6a7b85b8cd9f"

    const-string v2, "unit"

    const/16 v3, 0x1b

    invoke-static {p0, v2, v3, v0, v1}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe;->scan([BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;

    move-result-object v7

    .line 143
    .local v7, "unit":Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;
    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    .line 145
    iget v0, v5, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->offset:I

    iget v1, v5, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->length:I

    add-int/2addr v0, v1

    iget v1, v6, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->offset:I

    if-ne v0, v1, :cond_0

    iget v0, v6, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->offset:I

    iget v1, v6, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->length:I

    add-int/2addr v0, v1

    iget v1, v7, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->offset:I

    if-ne v0, v1, :cond_0

    .line 147
    const/4 v1, 0x0

    .line 149
    .local v1, "params":Z
    :try_start_0
    invoke-static {p0, p1}, Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe;->extract([BLcom/ahsim/demulation/DuneHackR82Probe$Result;)Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    const/4 v1, 0x1

    .line 154
    move v8, v1

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    move v8, v1

    .line 155
    .end local v1    # "params":Z
    .local v8, "params":Z
    :goto_0
    new-instance v4, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe;->sha256([BII)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;-><init>(Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;ZLjava/lang/String;Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe-IA;)V

    return-object v4

    .line 146
    .end local v8    # "params":Z
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "R82C compiled EMC bank relocation/order differs from ASM layout"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown or modified R82C EMC bank; native compatibility not established"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    .end local v5    # "build":Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;
    .end local v6    # "team":Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;
    .end local v7    # "unit":Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a supported R82C-family ROM for EMC inspection"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static match([BI[B)Z
    .locals 4
    .param p0, "raw"    # [B
    .param p1, "p"    # I
    .param p2, "bytes"    # [B

    .line 83
    const/4 v0, 0x0

    if-ltz p1, :cond_3

    array-length v1, p0

    array-length v2, p2

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 84
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    add-int v2, p1, v1

    aget-byte v2, p0, v2

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "j":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 83
    :cond_3
    :goto_1
    return v0
.end method

.method private static scan([BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;
    .locals 17
    .param p0, "rom"    # [B
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "expectedEntries"    # I
    .param p3, "knownHash1"    # Ljava/lang/String;
    .param p4, "knownHash2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p4

    const/4 v1, 0x0

    .line 106
    .local v1, "result":Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;
    array-length v3, v0

    const/high16 v4, 0x800000

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 107
    .local v11, "cap":I
    const/4 v3, 0x0

    move-object v12, v1

    .end local v1    # "result":Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;
    .local v3, "p":I
    .local v12, "result":Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;
    :goto_0
    add-int/lit8 v1, v11, -0x1c

    if-gt v3, v1, :cond_d

    .line 108
    sget-object v1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe;->FORM:[B

    invoke-static {v0, v3, v1}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe;->match([BI[B)Z

    move-result v1

    if-eqz v1, :cond_c

    add-int/lit8 v1, v3, 0x8

    sget-object v4, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe;->EMC2:[B

    invoke-static {v0, v1, v4}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe;->match([BI[B)Z

    move-result v1

    if-eqz v1, :cond_c

    add-int/lit8 v1, v3, 0xc

    sget-object v4, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe;->ORDR:[B

    .line 109
    invoke-static {v0, v1, v4}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe;->match([BI[B)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 110
    :cond_0
    add-int/lit8 v1, v3, 0x4

    invoke-static {v0, v1}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe;->be32([BI)I

    move-result v4

    .local v4, "length":I
    add-int/lit8 v1, v3, 0x10

    invoke-static {v0, v1}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe;->be32([BI)I

    move-result v13

    .line 111
    .local v13, "order":I
    const/16 v1, 0x20

    if-lt v4, v1, :cond_c

    const/high16 v1, 0x10000

    if-gt v4, v1, :cond_c

    and-int/lit8 v1, v4, 0x1

    if-nez v1, :cond_c

    sub-int v1, v11, v3

    if-gt v4, v1, :cond_c

    mul-int/lit8 v1, p2, 0x2

    if-eq v13, v1, :cond_1

    .line 112
    goto/16 :goto_4

    .line 113
    :cond_1
    add-int/lit8 v14, v13, 0x14

    .line 114
    .local v14, "dataAt":I
    add-int v1, v3, v14

    sget-object v5, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe;->DATA:[B

    invoke-static {v0, v1, v5}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe;->match([BI[B)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_4

    .line 115
    :cond_2
    add-int v1, v3, v14

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe;->be32([BI)I

    move-result v15

    .line 116
    .local v15, "dataLen":I
    const/4 v1, 0x2

    if-lt v15, v1, :cond_c

    and-int/lit8 v1, v15, 0x1

    if-nez v1, :cond_c

    add-int/lit8 v1, v14, 0x8

    add-int/2addr v1, v15

    if-eq v1, v4, :cond_3

    goto/16 :goto_4

    .line 117
    :cond_3
    invoke-static {v0, v3, v4}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe;->sha256([BII)Ljava/lang/String;

    move-result-object v7

    .line 118
    .local v7, "hash":Ljava/lang/String;
    move-object/from16 v1, p3

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v10, :cond_4

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    goto/16 :goto_4

    .line 120
    :cond_5
    const/4 v5, 0x1

    .line 121
    .local v5, "valid":Z
    add-int/lit8 v6, v3, 0x14

    .local v6, "at":I
    :goto_1
    add-int/lit8 v8, v3, 0x14

    add-int/2addr v8, v13

    if-ge v6, v8, :cond_7

    .line 122
    aget-byte v8, v0, v6

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v9, v6, 0x1

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    .line 123
    .local v8, "index":I
    div-int/lit8 v9, v15, 0x2

    if-lt v8, v9, :cond_6

    const/4 v5, 0x0

    move/from16 v16, v5

    goto :goto_2

    .line 121
    .end local v8    # "index":I
    :cond_6
    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    :cond_7
    move/from16 v16, v5

    .line 125
    .end local v5    # "valid":Z
    .end local v6    # "at":I
    .local v16, "valid":Z
    :goto_2
    if-nez v16, :cond_8

    goto :goto_4

    .line 126
    :cond_8
    if-nez v12, :cond_b

    .line 127
    const-string v5, "unit"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 128
    const-string v5, "e21674f991a3e7e625a8a26dfc5b4e32426621364fbaeb242c8fb29f950be0de"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "aug2026"

    goto :goto_3

    :cond_9
    const-string v5, "ti2024_feb2026"

    goto :goto_3

    :cond_a
    const-string v5, "shared_r82c"

    :goto_3
    move-object v8, v5

    .line 129
    .local v8, "variant":Ljava/lang/String;
    new-instance v1, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;

    div-int/lit8 v6, v15, 0x2

    const/4 v9, 0x0

    move/from16 v5, p2

    invoke-direct/range {v1 .. v9}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe-IA;)V

    move-object v12, v1

    .end local v12    # "result":Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;
    .restart local v1    # "result":Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;
    goto :goto_4

    .line 126
    .end local v1    # "result":Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;
    .end local v8    # "variant":Ljava/lang/String;
    .restart local v12    # "result":Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;
    :cond_b
    new-instance v1, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ambiguous duplicate R82C "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " EMC bank"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    .end local v4    # "length":I
    .end local v7    # "hash":Ljava/lang/String;
    .end local v13    # "order":I
    .end local v14    # "dataAt":I
    .end local v15    # "dataLen":I
    .end local v16    # "valid":Z
    :cond_c
    :goto_4
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_0

    .line 131
    .end local v3    # "p":I
    :cond_d
    return-object v12
.end method

.method private static sha256([BII)Ljava/lang/String;
    .locals 7
    .param p0, "raw"    # [B
    .param p1, "start"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 90
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 91
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 92
    .local v1, "bytes":[B
    const-string v2, "0123456789abcdef"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 93
    .local v2, "hex":[C
    const/16 v3, 0x40

    new-array v3, v3, [C

    .line 94
    .local v3, "out":[C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x20

    if-ge v4, v5, :cond_0

    .line 95
    mul-int/lit8 v5, v4, 0x2

    aget-byte v6, v1, v4

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v2, v6

    aput-char v6, v3, v5

    .line 96
    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v6, v1, v4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v2, v6

    aput-char v6, v3, v5

    .line 94
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 98
    .end local v4    # "i":I
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 99
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "bytes":[B
    .end local v2    # "hex":[C
    .end local v3    # "out":[C
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
