.class public final Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit;
.super Ljava/lang/Object;
.source "DuneHackR82cRazorCombatAudit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;,
        Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$EmcBank;,
        Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    }
.end annotation


# static fields
.field public static final DAMAGE_ANIMATIONS:I = 0x16

.field public static final DAMAGE_WORDS:I = 0x84

.field private static final LIMIT:I = 0x800000

.field public static final MOVEMENT_CLASSES:I = 0x6

.field public static final RAZOR_ONE_SHA256:Ljava/lang/String; = "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

.field public static final RAZOR_TWO_SHA256:Ljava/lang/String; = "e32b1846ff38fac3163caa03b204148e60a19371131a8806fc1937c7aff383af"

.field private static final REFERENCE_TABLE_SHA256:Ljava/lang/String; = "5e41df837fef8ce86cdd803beafb58263776da87c58385df548c6193d633cdb0"

.field private static final ROUTE_OPCODE_SUFFIX:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit;->ROUTE_OPCODE_SUFFIX:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x30t
        0x40t
        0x0t
        0xct
        0x40t
        0x1t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static asciiBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 185
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method private static be16([BI)I
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "p"    # I

    .line 198
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static be32([BI)J
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "p"    # I

    .line 201
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

.method private static contains([BILjava/lang/String;)Z
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "text"    # Ljava/lang/String;

    .line 188
    invoke-static {p2}, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit;->matches([BI[B)Z

    move-result v0

    return v0
.end method

.method public static inspect([BLcom/ahsim/demulation/DuneHackR82Probe$Result;Ljava/lang/String;)Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    .locals 21
    .param p0, "rom"    # [B
    .param p1, "family"    # Lcom/ahsim/demulation/DuneHackR82Probe$Result;
    .param p2, "normalizedSha256"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eqz v0, :cond_19

    array-length v2, v0

    const/high16 v3, 0x40000

    if-lt v2, v3, :cond_19

    array-length v2, v0

    const/high16 v3, 0x800000

    if-gt v2, v3, :cond_19

    if-eqz p1, :cond_19

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->recognized()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 102
    const-string v2, "SEGA"

    invoke-static {v2}, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x100

    invoke-static {v0, v3, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit;->matches([BI[B)Z

    move-result v2

    if-eqz v2, :cond_19

    if-eqz v1, :cond_19

    .line 103
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-ne v2, v3, :cond_19

    .line 106
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit;->sha256([BII)Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "actualSha":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 110
    const-string v2, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    move v3, v6

    goto :goto_0

    .line 111
    :cond_0
    const-string v2, "e32b1846ff38fac3163caa03b204148e60a19371131a8806fc1937c7aff383af"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    :cond_1
    :goto_0
    nop

    .line 112
    .local v3, "variant":I
    const/16 v2, 0x220

    const/16 v7, 0x240

    invoke-static {v0, v2, v7}, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit;->printableUntilNull([BII)Ljava/lang/String;

    move-result-object v7

    .line 113
    .local v7, "tag":Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v2, "Ns16JUN25_82C"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    const v2, 0x259e8

    const-string v8, "R82 V25 10.01.2026"

    invoke-static {v0, v2, v8}, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit;->contains([BILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 115
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Razor reference ROM assembler markers changed"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :cond_3
    :goto_1
    const/4 v2, 0x0

    .local v2, "seen":I
    const/4 v8, -0x1

    .local v8, "route":I
    const/4 v9, -0x1

    .line 121
    .local v9, "table":I
    const/16 v10, 0x400

    .local v10, "p":I
    :goto_2
    add-int/lit8 v11, v10, 0xe

    array-length v12, v0

    const/4 v13, -0x1

    if-gt v11, v12, :cond_7

    .line 122
    aget-byte v11, v0, v10

    and-int/lit16 v11, v11, 0xff

    const/16 v12, 0x41

    if-ne v11, v12, :cond_6

    add-int/lit8 v11, v10, 0x1

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    const/16 v12, 0xf9

    if-ne v11, v12, :cond_6

    add-int/lit8 v11, v10, 0x6

    sget-object v12, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit;->ROUTE_OPCODE_SUFFIX:[B

    .line 123
    invoke-static {v0, v11, v12}, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit;->matches([BI[B)Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_4

    .line 124
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 125
    if-ne v2, v6, :cond_6

    .line 126
    move v8, v10

    .line 127
    add-int/lit8 v11, v10, 0x2

    invoke-static {v0, v11}, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit;->be32([BI)J

    move-result-wide v11

    .line 128
    .local v11, "target":J
    const-wide/32 v14, 0x7fffffff

    cmp-long v14, v11, v14

    if-gtz v14, :cond_5

    const-wide/16 v14, 0x1

    and-long/2addr v14, v11

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_5

    .line 129
    long-to-int v13, v11

    goto :goto_3

    :cond_5
    nop

    :goto_3
    move v9, v13

    .line 121
    .end local v11    # "target":J
    :cond_6
    :goto_4
    add-int/lit8 v10, v10, 0x2

    goto :goto_2

    .line 133
    .end local v10    # "p":I
    :cond_7
    const/4 v10, 0x0

    .line 134
    .local v10, "values":[I
    const-string v11, ""

    .line 135
    .local v11, "tableDigest":Ljava/lang/String;
    if-nez v2, :cond_8

    .line 136
    sget-object v12, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;->NO_CODE_LINK:Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    .line 137
    .local v12, "evidence":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;
    move v9, v13

    move v8, v13

    move/from16 v20, v9

    move v9, v8

    move-object v8, v12

    move-object v12, v11

    move-object v11, v10

    move/from16 v10, v20

    goto/16 :goto_8

    .line 138
    .end local v12    # "evidence":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;
    :cond_8
    if-le v2, v6, :cond_9

    .line 139
    sget-object v12, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;->AMBIGUOUS_CODE_LINK:Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    .line 140
    .restart local v12    # "evidence":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;
    move v9, v13

    move v8, v13

    move/from16 v20, v9

    move v9, v8

    move-object v8, v12

    move-object v12, v11

    move-object v11, v10

    move/from16 v10, v20

    goto :goto_8

    .line 141
    .end local v12    # "evidence":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;
    :cond_9
    const/16 v12, 0x400

    if-lt v9, v12, :cond_d

    array-length v12, v0

    const/16 v13, 0x108

    sub-int/2addr v12, v13

    if-le v9, v12, :cond_a

    goto :goto_7

    .line 145
    :cond_a
    const/16 v12, 0x84

    new-array v14, v12, [I

    .line 146
    .local v14, "parsed":[I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_5
    if-ge v15, v12, :cond_b

    .line 147
    mul-int/lit8 v16, v15, 0x2

    add-int v12, v9, v16

    invoke-static {v0, v12}, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit;->be16([BI)I

    move-result v12

    aput v12, v14, v15

    .line 146
    add-int/lit8 v15, v15, 0x1

    const/16 v12, 0x84

    goto :goto_5

    .line 149
    .end local v15    # "i":I
    :cond_b
    invoke-static {v0, v9, v13}, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit;->sha256([BII)Ljava/lang/String;

    move-result-object v11

    .line 152
    if-eqz v3, :cond_c

    const-string v12, "5e41df837fef8ce86cdd803beafb58263776da87c58385df548c6193d633cdb0"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 153
    sget-object v12, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;->VERIFIED_REFERENCE_TABLE:Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    goto :goto_6

    :cond_c
    sget-object v12, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;->CODE_LINKED_CANDIDATE:Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    .line 154
    .restart local v12    # "evidence":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;
    :goto_6
    move-object v10, v14

    move/from16 v20, v9

    move v9, v8

    move-object v8, v12

    move-object v12, v11

    move-object v11, v10

    move/from16 v10, v20

    goto :goto_8

    .line 142
    .end local v12    # "evidence":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;
    .end local v14    # "parsed":[I
    :cond_d
    :goto_7
    sget-object v12, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;->INVALID_TABLE_POINTER:Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    .line 143
    .restart local v12    # "evidence":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;
    const/4 v9, -0x1

    move/from16 v20, v9

    move v9, v8

    move-object v8, v12

    move-object v12, v11

    move-object v11, v10

    move/from16 v10, v20

    .line 156
    .local v8, "evidence":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;
    .local v9, "route":I
    .local v10, "table":I
    .local v11, "values":[I
    .local v12, "tableDigest":Ljava/lang/String;
    :goto_8
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v13, "banks":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$EmcBank;>;"
    const/16 v14, 0x400

    .local v14, "p":I
    :goto_9
    add-int/lit8 v15, v14, 0x18

    const/16 v16, 0x2

    array-length v4, v0

    if-ge v15, v4, :cond_13

    .line 160
    const-string v4, "FORM"

    invoke-static {v4}, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v0, v14, v4}, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit;->matches([BI[B)Z

    move-result v4

    if-eqz v4, :cond_12

    add-int/lit8 v4, v14, 0x8

    .line 161
    const-string v15, "EMC2ORDR"

    invoke-static {v15}, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v15

    invoke-static {v0, v4, v15}, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit;->matches([BI[B)Z

    move-result v4

    if-nez v4, :cond_e

    move/from16 v18, v2

    move-object v15, v7

    goto :goto_a

    .line 165
    :cond_e
    add-int/lit8 v4, v14, 0x4

    move-object v15, v7

    .end local v7    # "tag":Ljava/lang/String;
    .local v15, "tag":Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit;->be32([BI)J

    move-result-wide v6

    .line 166
    .local v6, "size":J
    const-wide/16 v18, 0x18

    cmp-long v4, v6, v18

    if-ltz v4, :cond_11

    const-wide/32 v18, 0x10000

    cmp-long v4, v6, v18

    if-gtz v4, :cond_11

    array-length v4, v0

    sub-int/2addr v4, v14

    move/from16 v18, v2

    .end local v2    # "seen":I
    .local v18, "seen":I
    int-to-long v1, v4

    cmp-long v1, v6, v1

    if-lez v1, :cond_f

    goto :goto_a

    .line 167
    :cond_f
    long-to-int v1, v6

    .line 168
    .local v1, "bytes":I
    new-instance v2, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$EmcBank;

    invoke-static {v0, v14, v1}, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit;->sha256([BII)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    invoke-direct {v2, v14, v1, v4, v0}, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$EmcBank;-><init>(IILjava/lang/String;Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit-IA;)V

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x10

    if-gt v0, v2, :cond_10

    .line 170
    add-int/lit8 v0, v1, -0x2

    and-int/lit8 v0, v0, -0x2

    add-int/2addr v14, v0

    goto :goto_a

    .line 169
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unexpected excessive EMC candidates"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    .end local v1    # "bytes":I
    .end local v18    # "seen":I
    .restart local v2    # "seen":I
    :cond_11
    move/from16 v18, v2

    .end local v2    # "seen":I
    .restart local v18    # "seen":I
    goto :goto_a

    .line 160
    .end local v6    # "size":J
    .end local v15    # "tag":Ljava/lang/String;
    .end local v18    # "seen":I
    .restart local v2    # "seen":I
    .restart local v7    # "tag":Ljava/lang/String;
    :cond_12
    move/from16 v18, v2

    move-object v15, v7

    .line 159
    .end local v2    # "seen":I
    .end local v7    # "tag":Ljava/lang/String;
    .restart local v15    # "tag":Ljava/lang/String;
    .restart local v18    # "seen":I
    :goto_a
    add-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v7, v15

    move/from16 v2, v18

    const/4 v6, 0x1

    goto :goto_9

    .end local v15    # "tag":Ljava/lang/String;
    .end local v18    # "seen":I
    .restart local v2    # "seen":I
    .restart local v7    # "tag":Ljava/lang/String;
    :cond_13
    move/from16 v18, v2

    move-object v15, v7

    .line 172
    .end local v2    # "seen":I
    .end local v7    # "tag":Ljava/lang/String;
    .end local v14    # "p":I
    .restart local v15    # "tag":Ljava/lang/String;
    .restart local v18    # "seen":I
    if-eqz v3, :cond_17

    .line 173
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;->VERIFIED_REFERENCE_TABLE:Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    if-ne v8, v0, :cond_16

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    if-ne v3, v0, :cond_14

    const v0, 0x1cbf0

    if-ne v9, v0, :cond_16

    :cond_14
    move/from16 v0, v16

    if-ne v3, v0, :cond_15

    const v0, 0x1cce4

    if-ne v9, v0, :cond_16

    :cond_15
    const v0, 0x25c3a

    if-ne v10, v0, :cond_16

    if-eqz v11, :cond_16

    goto :goto_b

    .line 177
    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor reference evidence inconsistent"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_17
    :goto_b
    new-instance v4, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;

    const/4 v14, 0x0

    move v6, v3

    move-object v7, v15

    .end local v3    # "variant":I
    .end local v15    # "tag":Ljava/lang/String;
    .local v6, "variant":I
    .restart local v7    # "tag":Ljava/lang/String;
    invoke-direct/range {v4 .. v14}, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;II[ILjava/lang/String;Ljava/util/List;Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit-IA;)V

    .end local v7    # "tag":Ljava/lang/String;
    .restart local v15    # "tag":Ljava/lang/String;
    return-object v4

    .line 108
    .end local v6    # "variant":I
    .end local v8    # "evidence":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;
    .end local v9    # "route":I
    .end local v10    # "table":I
    .end local v11    # "values":[I
    .end local v12    # "tableDigest":Ljava/lang/String;
    .end local v13    # "banks":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$EmcBank;>;"
    .end local v15    # "tag":Ljava/lang/String;
    .end local v18    # "seen":I
    :cond_18
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM fingerprint changed during R82C Razor audit"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    .end local v5    # "actualSha":Ljava/lang/String;
    :cond_19
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Normalized R82C Genesis image and SHA-256 required"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static matches([BI[B)Z
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "pattern"    # [B

    .line 191
    const/4 v0, 0x0

    if-ltz p1, :cond_3

    array-length v1, p0

    array-length v2, p2

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 192
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 193
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_1

    return v0

    .line 192
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v1    # "j":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 191
    :cond_3
    :goto_1
    return v0
.end method

.method private static printableUntilNull([BII)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v0, "out":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_3

    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 207
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 208
    .local v2, "v":I
    if-nez v2, :cond_0

    goto :goto_2

    .line 209
    :cond_0
    const/16 v3, 0x20

    if-lt v2, v3, :cond_2

    const/16 v3, 0x7e

    if-le v2, v3, :cond_1

    goto :goto_1

    .line 210
    :cond_1
    int-to-char v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    .end local v2    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    .restart local v2    # "v":I
    :cond_2
    :goto_1
    const-string v3, ""

    return-object v3

    .line 212
    .end local v1    # "i":I
    .end local v2    # "v":I
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static sha256([BII)Ljava/lang/String;
    .locals 8
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 217
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 219
    .local v1, "out":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v2, v4

    .line 220
    .local v5, "v":B
    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    and-int/lit8 v6, v5, 0xf

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    nop

    .end local v5    # "v":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 224
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "out":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 225
    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 is unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
