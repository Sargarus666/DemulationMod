.class public final Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe;
.super Ljava/lang/Object;
.source "DuneHackR82UnitDispatchProbe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;
    }
.end annotation


# static fields
.field private static final MAX_ROM_BYTES:I = 0x800000

.field public static final SCRIPT_ENTRIES:I = 0x1b

.field private static final SCRIPT_IDS:[I

.field private static final UNIT_INFO_BYTES:I = 0x5c

.field public static final UNIT_TYPES:I = 0x20


# direct methods
.method static bridge synthetic -$$Nest$sfgetSCRIPT_IDS()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe;->SCRIPT_IDS:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 20
    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe;->SCRIPT_IDS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0xa
        0xf
        0xa
        0x7
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inspect([BLcom/ahsim/demulation/DuneHackR82Probe$Result;Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;)Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;
    .locals 11
    .param p0, "rom"    # [B
    .param p1, "family"    # Lcom/ahsim/demulation/DuneHackR82Probe$Result;
    .param p2, "emc"    # Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    if-eqz p0, :cond_13

    array-length v0, p0

    const/high16 v1, 0x40000

    if-lt v0, v1, :cond_13

    array-length v0, p0

    const/high16 v1, 0x800000

    if-gt v0, v1, :cond_13

    if-eqz p1, :cond_13

    .line 88
    invoke-virtual {p1}, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->recognized()Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;->scriptsIdentified()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 92
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe;->sha256([BII)Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, "hash":Ljava/lang/String;
    iget-object v0, p2, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;->sourceSha256:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 96
    const/4 v0, -0x1

    .line 97
    .local v0, "scriptOffset":I
    const/4 v1, 0x0

    move v3, v0

    .end local v0    # "scriptOffset":I
    .local v1, "at":I
    .local v3, "scriptOffset":I
    :goto_0
    array-length v0, p0

    const/16 v2, 0x20

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_6

    .line 98
    aget-byte v0, p0, v1

    if-nez v0, :cond_5

    add-int/lit8 v0, v1, 0x1

    aget-byte v0, p0, v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_5

    add-int/lit8 v0, v1, 0x2

    aget-byte v0, p0, v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    goto :goto_3

    .line 99
    :cond_0
    const/4 v0, 0x1

    .line 100
    .local v0, "matches":Z
    const/4 v4, 0x3

    .local v4, "id":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 101
    add-int v5, v1, v4

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    sget-object v7, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe;->SCRIPT_IDS:[I

    aget v7, v7, v4

    if-eq v5, v7, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    .line 100
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 103
    .end local v4    # "id":I
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    goto :goto_3

    .line 104
    :cond_3
    if-gez v3, :cond_4

    .line 105
    move v2, v1

    move v3, v2

    .end local v3    # "scriptOffset":I
    .local v2, "scriptOffset":I
    goto :goto_3

    .line 104
    .end local v2    # "scriptOffset":I
    .restart local v3    # "scriptOffset":I
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Ambiguous R82C unit script mappings"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    .end local v0    # "matches":Z
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 107
    .end local v1    # "at":I
    :cond_6
    if-ltz v3, :cond_11

    .line 111
    const/4 v0, -0x1

    .line 112
    .local v0, "tableOffset":I
    const/4 v1, -0x1

    .line 113
    .local v1, "recordStart":I
    const/4 v4, 0x0

    move v5, v4

    move v4, v0

    move v0, v5

    move v5, v1

    .end local v1    # "recordStart":I
    .local v0, "at":I
    .local v4, "tableOffset":I
    .local v5, "recordStart":I
    :goto_4
    array-length v1, p0

    add-int/lit8 v1, v1, -0x80

    if-gt v0, v1, :cond_e

    .line 114
    aget-byte v1, p0, v0

    if-eqz v1, :cond_7

    goto :goto_7

    .line 115
    :cond_7
    invoke-static {p0, v0}, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe;->u32([BI)I

    move-result v1

    .line 116
    .local v1, "first":I
    const/16 v7, 0x200

    if-lt v1, v7, :cond_d

    add-int/lit16 v7, v0, 0x80

    if-lt v1, v7, :cond_d

    and-int/lit8 v7, v1, 0x1

    if-nez v7, :cond_d

    array-length v7, p0

    add-int/lit16 v7, v7, -0xb80

    if-le v1, v7, :cond_8

    .line 118
    goto :goto_7

    .line 119
    :cond_8
    const/4 v7, 0x1

    .line 120
    .local v7, "matches":Z
    const/4 v8, 0x1

    .local v8, "id":I
    :goto_5
    if-ge v8, v2, :cond_a

    .line 121
    mul-int/lit8 v9, v8, 0x4

    add-int/2addr v9, v0

    invoke-static {p0, v9}, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe;->u32([BI)I

    move-result v9

    mul-int/lit8 v10, v8, 0x5c

    add-int/2addr v10, v1

    if-eq v9, v10, :cond_9

    .line 122
    const/4 v7, 0x0

    goto :goto_6

    .line 120
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 125
    .end local v8    # "id":I
    :cond_a
    :goto_6
    if-nez v7, :cond_b

    goto :goto_7

    .line 126
    :cond_b
    if-gez v4, :cond_c

    .line 127
    move v4, v0

    .line 128
    move v5, v1

    goto :goto_7

    .line 126
    :cond_c
    new-instance v2, Ljava/io/IOException;

    const-string v8, "Ambiguous R82C UnitInfo pointer tables"

    invoke-direct {v2, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    .end local v1    # "first":I
    .end local v7    # "matches":Z
    :cond_d
    :goto_7
    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    .line 130
    .end local v0    # "at":I
    :cond_e
    if-ltz v4, :cond_10

    .line 131
    const/4 v0, 0x5

    new-array v7, v0, [Ljava/lang/String;

    .line 132
    .local v7, "hashes":[Ljava/lang/String;
    const/16 v0, 0x1b

    .local v0, "id":I
    :goto_8
    if-ge v0, v2, :cond_f

    .line 133
    add-int/lit8 v1, v0, -0x1b

    mul-int/lit8 v8, v0, 0x5c

    add-int/2addr v8, v5

    const/16 v9, 0x5c

    invoke-static {p0, v8, v9}, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe;->sha256([BII)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 134
    .end local v0    # "id":I
    :cond_f
    new-instance v2, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;-><init>(IIILjava/lang/String;[Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe-IA;)V

    return-object v2

    .line 130
    .end local v7    # "hashes":[Ljava/lang/String;
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown R82C 32-entry UnitInfo pointer table"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    .end local v4    # "tableOffset":I
    .end local v5    # "recordStart":I
    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown R82C 32-to-27 unit EMC mapping"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    .end local v3    # "scriptOffset":I
    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v1, "R82C unit dispatcher and EMC from different ROM images"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    .end local v6    # "hash":Ljava/lang/String;
    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not an audited R82C EMC ROM"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static sha256([BII)Ljava/lang/String;
    .locals 7
    .param p0, "b"    # [B
    .param p1, "from"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 71
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 72
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 73
    .local v1, "digest":[B
    const-string v2, "0123456789abcdef"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 74
    .local v2, "alphabet":[C
    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [C

    .line 75
    .local v3, "out":[C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 76
    mul-int/lit8 v5, v4, 0x2

    aget-byte v6, v1, v4

    ushr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v2, v6

    aput-char v6, v3, v5

    .line 77
    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v6, v1, v4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v2, v6

    aput-char v6, v3, v5

    .line 75
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 79
    .end local v4    # "i":I
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 80
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "digest":[B
    .end local v2    # "alphabet":[C
    .end local v3    # "out":[C
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static u32([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "p"    # I

    .line 65
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
