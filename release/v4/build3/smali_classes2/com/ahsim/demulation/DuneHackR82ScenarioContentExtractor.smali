.class public final Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor;
.super Ljava/lang/Object;
.source "DuneHackR82ScenarioContentExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;
    }
.end annotation


# static fields
.field private static final AUDITED_SAMPLE_SHA256:Ljava/lang/String; = "09bfe4bef56c7642edef7dea47c41274bdcce595fd95fbb85e64af4d3308d0ce"

.field public static final ENTRY_COUNT:I = 0x2d

.field private static final FIRST_PAYLOAD:I = 0x1590b6

.field public static final HOUSE_COUNT:I = 0x5

.field private static final LENGTHS:[[I

.field public static final MISSIONS_PER_HOUSE:I = 0x9

.field private static final POINTER_TABLE:I = 0x83cb4

.field private static final RECORD_HEADER_LENGTH:I = 0x10

.field private static final STORAGE_ORDER:[I


# direct methods
.method static bridge synthetic -$$Nest$sfgetLENGTHS()[[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor;->LENGTHS:[[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 29
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    new-array v3, v0, [I

    fill-array-data v3, :array_2

    new-array v4, v0, [I

    fill-array-data v4, :array_3

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    filled-new-array {v1, v2, v3, v4, v0}, [[I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor;->LENGTHS:[[I

    .line 37
    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor;->STORAGE_ORDER:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x176
        0x25c
        0x2fe
        0x4ce
        0x612
        0x678
        0x96e
        0xafe
        0xb20
    .end array-data

    :array_1
    .array-data 4
        0x196
        0x234
        0x26c
        0x4b2
        0x5ae
        0x610
        0x77e
        0xae8
        0xabe
    .end array-data

    :array_2
    .array-data 4
        0x176
        0x24a
        0x480
        0x470
        0x42a
        0x65c
        0x612
        0xb72
        0xaa6
    .end array-data

    :array_3
    .array-data 4
        0x196
        0x234
        0x26c
        0x4b2
        0x5ae
        0x610
        0x77e
        0xae8
        0xabe
    .end array-data

    :array_4
    .array-data 4
        0x176
        0x25c
        0x2fe
        0x4ce
        0x612
        0x678
        0x96e
        0xafe
        0xb20
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static be32([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "at"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    if-ltz p1, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x4

    if-gt p1, v0, :cond_0

    .line 137
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

    .line 136
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "R82C pointer table truncated"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static be32Unchecked([BI)I
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "at"    # I

    .line 132
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

.method public static extract([BLcom/ahsim/demulation/DuneHackR82Probe$Result;)Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;
    .locals 12
    .param p0, "rom"    # [B
    .param p1, "probe"    # Lcom/ahsim/demulation/DuneHackR82Probe$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->family:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82Probe$Family;->R82C_PLUS:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    if-ne v0, v1, :cond_6

    array-length v0, p0

    const v1, 0x1590c6

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

    .line 89
    const-string v0, "09bfe4bef56c7642edef7dea47c41274bdcce595fd95fbb85e64af4d3308d0ce"

    invoke-static {p0}, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;->sha256([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/16 v2, 0x9

    aput v2, v0, v1

    const/4 v1, 0x0

    const/4 v3, 0x5

    aput v3, v0, v1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 93
    .local v0, "addresses":[[I
    const v4, 0x1590b6

    .line 95
    .local v4, "next":I
    sget-object v5, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor;->STORAGE_ORDER:[I

    array-length v6, v5

    :goto_0
    if-ge v1, v6, :cond_2

    aget v7, v5, v1

    .line 96
    .local v7, "house":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v2, :cond_1

    .line 97
    mul-int/lit8 v9, v7, 0x9

    add-int/2addr v9, v8

    mul-int/lit8 v9, v9, 0x4

    const v10, 0x83cb4

    add-int/2addr v9, v10

    invoke-static {p0, v9}, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor;->be32([BI)I

    move-result v9

    .line 98
    .local v9, "address":I
    sget-object v10, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor;->LENGTHS:[[I

    aget-object v10, v10, v7

    aget v10, v10, v8

    .line 99
    .local v10, "length":I
    if-ne v9, v4, :cond_0

    and-int/lit8 v11, v9, 0x1

    if-nez v11, :cond_0

    const/16 v11, 0x10

    if-le v10, v11, :cond_0

    array-length v11, p0

    sub-int/2addr v11, v10

    if-gt v9, v11, :cond_0

    .line 100
    invoke-static {p0, v9}, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor;->hasRecordHeader([BI)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 103
    aget-object v11, v0, v7

    aput v9, v11, v8

    .line 104
    add-int/2addr v4, v10

    .line 96
    .end local v9    # "address":I
    .end local v10    # "length":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 101
    .restart local v9    # "address":I
    .restart local v10    # "length":I
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "R82C+ scenario pointer/payload mismatch"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    .end local v7    # "house":I
    .end local v8    # "i":I
    .end local v9    # "address":I
    .end local v10    # "length":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_2
    const v1, 0x1590b6

    sub-int v1, v4, v1

    new-array v1, v1, [B

    .line 109
    .local v1, "data":[B
    const/4 v5, 0x0

    .line 110
    .local v5, "cursor":I
    const/4 v6, 0x0

    .local v6, "h":I
    :goto_2
    if-ge v6, v3, :cond_4

    .line 111
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v2, :cond_3

    .line 112
    aget-object v8, v0, v6

    aget v8, v8, v7

    sget-object v9, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor;->LENGTHS:[[I

    aget-object v9, v9, v6

    aget v9, v9, v7

    invoke-static {p0, v8, v1, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    sget-object v8, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor;->LENGTHS:[[I

    aget-object v8, v8, v6

    aget v8, v8, v7

    add-int/2addr v5, v8

    .line 111
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 110
    .end local v7    # "i":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 116
    .end local v6    # "h":I
    :cond_4
    new-instance v2, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;-><init>([B[[ILcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor-IA;)V

    return-object v2

    .line 90
    .end local v0    # "addresses":[[I
    .end local v1    # "data":[B
    .end local v4    # "next":I
    .end local v5    # "cursor":I
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "R82C+ scenario layout has not yet been audited for this ROM"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a verified R82C+ normalized ROM"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static hasRecordHeader([BI)Z
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "start"    # I

    .line 119
    const/4 v0, 0x0

    if-ltz p1, :cond_8

    array-length v1, p0

    add-int/lit8 v1, v1, -0x10

    if-le p1, v1, :cond_0

    goto :goto_3

    .line 120
    :cond_0
    invoke-static {p0, p1}, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor;->be32Unchecked([BI)I

    move-result v1

    const/16 v2, 0xe

    if-eq v1, v2, :cond_1

    return v0

    .line 123
    :cond_1
    add-int/lit8 v1, p1, 0xc

    aget-byte v1, p0, v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_7

    add-int/lit8 v1, p1, 0xd

    aget-byte v1, p0, v1

    const/16 v2, 0x57

    if-ne v1, v2, :cond_7

    add-int/lit8 v1, p1, 0xe

    aget-byte v1, p0, v1

    const/16 v2, 0x53

    if-ne v1, v2, :cond_7

    add-int/lit8 v1, p1, 0xf

    aget-byte v1, p0, v1

    const/16 v2, 0x41

    if-eq v1, v2, :cond_2

    goto :goto_2

    .line 125
    :cond_2
    const/4 v1, 0x4

    .local v1, "i":I
    :goto_0
    const/16 v3, 0xc

    if-ge v1, v3, :cond_6

    .line 126
    add-int v3, p1, v1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 127
    .local v3, "c":I
    const/16 v4, 0x30

    if-lt v3, v4, :cond_5

    const/16 v4, 0x39

    if-le v3, v4, :cond_3

    if-lt v3, v2, :cond_5

    :cond_3
    const/16 v4, 0x5a

    if-le v3, v4, :cond_4

    goto :goto_1

    .line 125
    .end local v3    # "c":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    .restart local v3    # "c":I
    :cond_5
    :goto_1
    return v0

    .line 129
    .end local v1    # "i":I
    .end local v3    # "c":I
    :cond_6
    const/4 v0, 0x1

    return v0

    .line 124
    :cond_7
    :goto_2
    return v0

    .line 119
    :cond_8
    :goto_3
    return v0
.end method
