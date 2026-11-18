.class public final Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit;
.super Ljava/lang/Object;
.source "DuneHackR82CompiledCombatAudit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;,
        Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;,
        Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;
    }
.end annotation


# static fields
.field private static final IDS:[Ljava/lang/String;

.field private static final PRIMARY_DAMAGE_WORDS:I = 0x84

.field private static final REFERENCE_ENTRIES:[[B

.field private static final SITES:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 73
    const v0, 0x9f68

    const v1, 0xa096

    const v2, 0x9ef2

    const v3, 0xa020

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    const v1, 0x1cc70

    const v2, 0x1cd64

    const v3, 0x1cba0

    const v4, 0x1cc94

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    const v2, 0x1b0d2

    const v3, 0x1b1c8

    const v4, 0x1b002

    const v5, 0x1b0f8

    filled-new-array {v4, v5, v2, v3}, [I

    move-result-object v2

    const v3, 0x1c5a4

    const v4, 0x1c698

    const v5, 0x1c4d4

    const v6, 0x1c5c8

    filled-new-array {v5, v6, v3, v4}, [I

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [[I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit;->SITES:[[I

    .line 79
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "build_damage"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "unit_damage"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "death_hand"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "projectile_surface"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit;->IDS:[Ljava/lang/String;

    .line 82
    nop

    .line 83
    const-string v0, "30 2f 00 14 91 6a 00 12 4a 6a 00 12 6e 00 00 a4"

    invoke-static {v0}, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit;->hex(Ljava/lang/String;)[B

    move-result-object v0

    .line 84
    const-string v1, "41 f9 00 02 5c 36 30 30 40 00 0c 40 01 00 67 04"

    invoke-static {v1}, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit;->hex(Ljava/lang/String;)[B

    move-result-object v1

    .line 85
    const-string v2, "30 04 04 40 00 13 d0 40 30 3b 00 06 4e fb 00 02"

    invoke-static {v2}, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit;->hex(Ljava/lang/String;)[B

    move-result-object v2

    .line 86
    const-string v3, "38 40 0c 2a 00 17 00 02 66 00 00 b6"

    invoke-static {v3}, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit;->hex(Ljava/lang/String;)[B

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [[B

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit;->REFERENCE_ENTRIES:[[B

    .line 82
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static absoluteJmp([BI)Z
    .locals 2
    .param p0, "rom"    # [B
    .param p1, "addr"    # I

    .line 108
    if-ltz p1, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x6

    if-gt p1, v0, :cond_0

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xf9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static bytesMatch([BI[B)Z
    .locals 4
    .param p0, "rom"    # [B
    .param p1, "offset"    # I
    .param p2, "pattern"    # [B

    .line 102
    const/4 v0, 0x0

    if-ltz p1, :cond_3

    array-length v1, p0

    array-length v2, p2

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 103
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

    .line 104
    .end local v1    # "j":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 102
    :cond_3
    :goto_1
    return v0
.end method

.method private static hex(Ljava/lang/String;)[B
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .line 93
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "compact":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 95
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 96
    mul-int/lit8 v3, v2, 0x2

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static inspect([BLcom/ahsim/demulation/DuneHackR82Probe$Result;Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;)Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;
    .locals 21
    .param p0, "rom"    # [B
    .param p1, "family"    # Lcom/ahsim/demulation/DuneHackR82Probe$Result;
    .param p2, "hookAudit"    # Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v0, :cond_5

    array-length v3, v0

    const/high16 v4, 0x40000

    if-lt v3, v4, :cond_5

    array-length v3, v0

    const/high16 v4, 0x800000

    if-gt v3, v4, :cond_5

    if-eqz v1, :cond_5

    .line 147
    invoke-virtual {v1}, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->recognized()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 150
    invoke-static {v0}, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit;->sha256([B)Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, "sha":Ljava/lang/String;
    iget-object v3, v2, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;->sourceSha256:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x100

    aget-byte v4, v0, v3

    const/16 v6, 0x53

    if-ne v4, v6, :cond_4

    const/16 v4, 0x101

    aget-byte v4, v0, v4

    const/16 v6, 0x45

    if-ne v4, v6, :cond_4

    const/16 v4, 0x102

    aget-byte v4, v0, v4

    const/16 v6, 0x47

    if-ne v4, v6, :cond_4

    const/16 v4, 0x103

    aget-byte v4, v0, v4

    const/16 v6, 0x41

    if-ne v4, v6, :cond_4

    .line 155
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit;->inspectEntry([BI)Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;

    move-result-object v7

    .line 156
    .local v7, "build":Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit;->inspectEntry([BI)Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;

    move-result-object v8

    .line 157
    .local v8, "unit":Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
    const/4 v9, 0x2

    move v10, v9

    invoke-static {v0, v10}, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit;->inspectEntry([BI)Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;

    move-result-object v9

    .line 158
    .local v9, "death":Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
    const/4 v11, 0x3

    invoke-static {v0, v11}, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit;->inspectEntry([BI)Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;

    move-result-object v11

    .line 159
    .local v11, "projectile":Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
    const/4 v12, -0x1

    .local v12, "offset":I
    const/4 v13, 0x0

    .local v13, "words":I
    const/4 v14, 0x0

    .line 163
    .local v14, "notOne":I
    iget-object v15, v8, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;->evidence:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    move/from16 v16, v4

    sget-object v4, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;->REFERENCE_ENTRY_BYTES:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    if-ne v15, v4, :cond_2

    iget v4, v8, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;->offset:I

    if-ltz v4, :cond_2

    iget v4, v8, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;->offset:I

    aget-byte v4, v0, v4

    if-ne v4, v6, :cond_2

    iget v4, v8, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;->offset:I

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v6, 0xf9

    if-ne v4, v6, :cond_2

    .line 165
    iget v4, v8, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;->offset:I

    add-int/2addr v4, v10

    invoke-static {v0, v4}, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit;->readLong([BI)J

    move-result-wide v3

    .line 166
    .local v3, "table":J
    const-wide/16 v17, 0x1

    and-long v17, v3, v17

    const-wide/16 v19, 0x0

    cmp-long v10, v17, v19

    if-nez v10, :cond_1

    const-wide/16 v17, 0x400

    cmp-long v10, v3, v17

    if-ltz v10, :cond_1

    array-length v10, v0

    add-int/lit16 v10, v10, -0x108

    move-object v15, v7

    .end local v7    # "build":Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
    .local v15, "build":Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
    int-to-long v6, v10

    cmp-long v6, v3, v6

    if-gtz v6, :cond_3

    .line 167
    long-to-int v12, v3

    .line 168
    const/16 v13, 0x84

    .line 169
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    if-ge v6, v13, :cond_3

    .line 170
    mul-int/lit8 v7, v6, 0x2

    add-int/2addr v7, v12

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    mul-int/lit8 v10, v6, 0x2

    add-int/2addr v10, v12

    add-int/lit8 v10, v10, 0x1

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v7, v10

    .line 171
    .local v7, "m":I
    const/16 v10, 0x100

    if-eq v7, v10, :cond_0

    add-int/lit8 v14, v14, 0x1

    .line 169
    .end local v7    # "m":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 166
    .end local v6    # "j":I
    .end local v15    # "build":Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
    .local v7, "build":Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
    :cond_1
    move-object v15, v7

    .end local v7    # "build":Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
    .restart local v15    # "build":Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
    goto :goto_1

    .line 163
    .end local v3    # "table":J
    .end local v15    # "build":Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
    .restart local v7    # "build":Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
    :cond_2
    move-object v15, v7

    .line 175
    .end local v7    # "build":Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
    .restart local v15    # "build":Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
    :cond_3
    :goto_1
    new-instance v4, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;

    iget-boolean v6, v1, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->exampleFingerprintMatched:Z

    move-object v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    .end local v14    # "notOne":I
    .local v10, "projectile":Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
    .local v11, "offset":I
    .local v12, "words":I
    .local v13, "notOne":I
    const/4 v14, 0x0

    move-object v7, v15

    .end local v15    # "build":Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
    .restart local v7    # "build":Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
    invoke-direct/range {v4 .. v14}, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;-><init>(Ljava/lang/String;ZLcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;IIILcom/ahsim/demulation/DuneHackR82CompiledCombatAudit-IA;)V

    .end local v7    # "build":Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
    .restart local v15    # "build":Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
    return-object v4

    .line 153
    .end local v8    # "unit":Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
    .end local v9    # "death":Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
    .end local v10    # "projectile":Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
    .end local v11    # "offset":I
    .end local v12    # "words":I
    .end local v13    # "notOne":I
    .end local v15    # "build":Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
    :cond_4
    new-instance v3, Ljava/io/IOException;

    const-string v4, "ROM identity/header mismatch in compiled combat audit"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 148
    .end local v5    # "sha":Ljava/lang/String;
    :cond_5
    new-instance v3, Ljava/io/IOException;

    const-string v4, "R82C ROM with matching ASM audit required"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static inspectEntry([BI)Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
    .locals 23
    .param p0, "rom"    # [B
    .param p1, "index"    # I

    .line 118
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "matched":I
    const/4 v2, -0x1

    .local v2, "layout":I
    const/4 v3, -0x1

    .line 119
    .local v3, "matchedAddr":I
    const/4 v4, 0x0

    .line 120
    .local v4, "jmp":Z
    const/4 v5, 0x0

    move v12, v1

    move v14, v4

    move v1, v5

    move v5, v2

    move v4, v3

    .end local v2    # "layout":I
    .end local v3    # "matchedAddr":I
    .local v1, "l":I
    .local v4, "matchedAddr":I
    .local v5, "layout":I
    .local v12, "matched":I
    .local v14, "jmp":Z
    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-ge v1, v2, :cond_3

    .line 121
    sget-object v2, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit;->SITES:[[I

    aget-object v2, v2, p1

    aget v2, v2, v1

    .line 122
    .local v2, "at":I
    invoke-static {v0, v2}, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit;->absoluteJmp([BI)Z

    move-result v7

    .line 125
    .local v7, "candidateJump":Z
    if-nez v1, :cond_0

    sget-object v8, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit;->REFERENCE_ENTRIES:[[B

    aget-object v8, v8, p1

    invoke-static {v0, v2, v8}, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit;->bytesMatch([BI[B)Z

    move-result v8

    if-eqz v8, :cond_0

    move v3, v6

    .line 126
    .local v3, "reference":Z
    :cond_0
    if-nez v7, :cond_1

    if-eqz v3, :cond_2

    .line 127
    :cond_1
    add-int/lit8 v12, v12, 0x1

    .line 128
    move v5, v1

    .line 129
    move v4, v2

    .line 130
    move v6, v7

    move v14, v6

    .line 120
    .end local v2    # "at":I
    .end local v3    # "reference":Z
    .end local v7    # "candidateJump":Z
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v1    # "l":I
    :cond_3
    if-le v12, v6, :cond_4

    new-instance v6, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit;->IDS:[Ljava/lang/String;

    aget-object v7, v1, p1

    sget-object v8, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;->MULTIPLE_LAYOUT_CANDIDATES:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    const/4 v11, -0x1

    const/4 v13, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct/range {v6 .. v13}, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;-><init>(Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;IIIILcom/ahsim/demulation/DuneHackR82CompiledCombatAudit-IA;)V

    return-object v6

    .line 134
    :cond_4
    if-nez v12, :cond_5

    new-instance v15, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit;->IDS:[Ljava/lang/String;

    aget-object v16, v1, p1

    sget-object v17, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;->NO_VERIFIED_ENTRY:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    invoke-direct/range {v15 .. v22}, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;-><init>(Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;IIIILcom/ahsim/demulation/DuneHackR82CompiledCombatAudit-IA;)V

    return-object v15

    .line 135
    :cond_5
    if-nez v14, :cond_6

    new-instance v1, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;

    sget-object v2, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit;->IDS:[Ljava/lang/String;

    aget-object v2, v2, p1

    sget-object v3, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;->REFERENCE_ENTRY_BYTES:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, -0x1

    invoke-direct/range {v1 .. v8}, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;-><init>(Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;IIIILcom/ahsim/demulation/DuneHackR82CompiledCombatAudit-IA;)V

    return-object v1

    .line 136
    :cond_6
    add-int/lit8 v1, v4, 0x2

    invoke-static {v0, v1}, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit;->readLong([BI)J

    move-result-wide v9

    .line 138
    .local v9, "to":J
    const-wide/16 v1, 0x1

    and-long/2addr v1, v9

    const-wide/16 v7, 0x0

    cmp-long v1, v1, v7

    if-nez v1, :cond_8

    const-wide/16 v1, 0x400

    cmp-long v1, v9, v1

    if-ltz v1, :cond_8

    array-length v1, v0

    add-int/lit8 v1, v1, -0x10

    int-to-long v1, v1

    cmp-long v1, v9, v1

    if-gtz v1, :cond_8

    int-to-long v1, v4

    cmp-long v1, v9, v1

    if-ltz v1, :cond_7

    add-int/lit8 v1, v4, 0x6

    int-to-long v1, v1

    cmp-long v1, v9, v1

    if-ltz v1, :cond_8

    :cond_7
    move v3, v6

    :cond_8
    move v11, v3

    .line 140
    .local v11, "valid":Z
    new-instance v1, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;

    sget-object v2, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit;->IDS:[Ljava/lang/String;

    aget-object v2, v2, p1

    if-eqz v11, :cond_9

    sget-object v3, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;->JMP_TO_ROM_UNVERIFIED:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    goto :goto_1

    :cond_9
    sget-object v3, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;->INVALID_JMP_DESTINATION:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    .line 141
    :goto_1
    if-eqz v11, :cond_a

    long-to-int v6, v9

    goto :goto_2

    :cond_a
    const/4 v6, -0x1

    :goto_2
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;-><init>(Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;IIIILcom/ahsim/demulation/DuneHackR82CompiledCombatAudit-IA;)V

    .line 140
    return-object v1
.end method

.method private static readLong([BI)J
    .locals 5
    .param p0, "rom"    # [B
    .param p1, "at"    # I

    .line 113
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

.method private static sha256([B)Ljava/lang/String;
    .locals 6
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 182
    .local v0, "digest":[B
    const-string v1, "0123456789abcdef"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 183
    .local v1, "hex":[C
    const/16 v2, 0x40

    new-array v2, v2, [C

    .line 184
    .local v2, "chars":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 185
    mul-int/lit8 v4, v3, 0x2

    aget-byte v5, v0, v3

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v1, v5

    aput-char v5, v2, v4

    .line 186
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v5, v0, v3

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v1, v5

    aput-char v5, v2, v4

    .line 184
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 188
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 189
    .end local v0    # "digest":[B
    .end local v1    # "hex":[C
    .end local v2    # "chars":[C
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
