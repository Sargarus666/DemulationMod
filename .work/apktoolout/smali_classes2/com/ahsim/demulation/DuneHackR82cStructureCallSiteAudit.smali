.class public final Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;
.super Ljava/lang/Object;
.source "DuneHackR82cStructureCallSiteAudit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;,
        Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;,
        Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;,
        Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;
    }
.end annotation


# static fields
.field private static final CALL_LIMIT:I = 0x20

.field private static final ENTRY_BYTES:[B

.field private static final EXPECTED_SETUP:[[B

.field private static final HP_BRANCH:[B

.field private static final HP_OFFSET_FROM_ENTRY:I = 0x3a

.field private static final MAX_ROM_BYTES:I = 0x800000

.field private static final MIN_ROM_BYTES:I = 0x40000

.field private static final RAZOR1_CALLS:[I

.field private static final RAZOR2_CALLS:[I

.field private static final START_SCAN:I = 0x400


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 25
    const/16 v0, 0x14

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;->ENTRY_BYTES:[B

    .line 30
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;->HP_BRANCH:[B

    .line 37
    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_2

    const/4 v2, 0x6

    new-array v3, v2, [B

    fill-array-data v3, :array_3

    new-array v4, v2, [B

    fill-array-data v4, :array_4

    new-array v2, v2, [B

    fill-array-data v2, :array_5

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    filled-new-array {v1, v3, v4, v2, v0}, [[B

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;->EXPECTED_SETUP:[[B

    .line 44
    const v0, 0x1c4d8

    const v1, 0x1e7ee

    const/16 v2, 0x637e

    const/16 v3, 0x713a

    const v4, 0xa872

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;->RAZOR1_CALLS:[I

    .line 47
    const v0, 0x1c5cc

    const v1, 0x1e8f2

    const/16 v2, 0x6492

    const/16 v3, 0x7256

    const v4, 0xa9a0

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;->RAZOR2_CALLS:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x48t
        -0x19t
        0x10t
        0x20t
        0x59t
        -0x71t
        0x24t
        0x6ft
        0x0t
        0x10t
        0x20t
        0xat
        0x67t
        0x0t
        0x0t
        -0x22t
        0x4at
        0x6ft
        0x0t
        0x14t
    .end array-data

    :array_1
    .array-data 1
        0x30t
        0x2ft
        0x0t
        0x14t
        -0x6ft
        0x6at
        0x0t
        0x12t
        0x4at
        0x6at
        0x0t
        0x12t
        0x6et
        0x0t
        0x0t
        -0x5ct
        0x42t
        0x6at
        0x0t
        0x12t
    .end array-data

    :array_2
    .array-data 1
        0x42t
        0x57t
        0x3ft
        0x2et
        -0x1t
        -0x26t
        0x2ft
        0xat
    .end array-data

    :array_3
    .array-data 1
        0x42t
        0x57t
        0x3ft
        0x0t
        0x2ft
        0xat
    .end array-data

    nop

    :array_4
    .array-data 1
        0x42t
        0x57t
        0x3ft
        0x3t
        0x2ft
        0xat
    .end array-data

    nop

    :array_5
    .array-data 1
        0x42t
        0x57t
        0x3ft
        0x7t
        0x2ft
        0xct
    .end array-data

    nop

    :array_6
    .array-data 1
        0x3et
        -0x44t
        0x0t
        0x1t
        0x3ft
        0x2t
        0x2ft
        0xbt
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dword([BI)J
    .locals 4
    .param p0, "b"    # [B
    .param p1, "p"    # I

    .line 199
    invoke-static {p0, p1}, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;->word([BI)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x10

    shl-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    invoke-static {p0, v2}, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;->word([BI)I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static hasKnownSetup([BI)Z
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "p"    # I

    .line 185
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;->EXPECTED_SETUP:[[B

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 186
    .local v4, "pattern":[B
    array-length v5, v4

    sub-int v5, p1, v5

    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;->matches([BI[B)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    return v0

    .line 185
    .end local v4    # "pattern":[B
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    :cond_1
    return v2
.end method

.method public static inspectReference([BLcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;)Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;
    .locals 9
    .param p0, "rom"    # [B
    .param p1, "combat"    # Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    .param p2, "building"    # Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;
    .param p3, "impact"    # Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    iget-boolean v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->referenceSample:Z

    if-eqz v0, :cond_7

    iget v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->referenceVariant:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_7

    iget v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->referenceVariant:I

    const/4 v2, 0x2

    if-gt v0, v2, :cond_7

    iget v0, p3, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;->referenceVariant:I

    iget v3, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->referenceVariant:I

    if-ne v0, v3, :cond_7

    iget-object v0, p3, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;->romSha256:Ljava/lang/String;

    iget-object v3, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->romSha256:Ljava/lang/String;

    .line 155
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p3, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;->hpSubtractOffset:I

    iget v3, p2, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;->subtractionInstructionOffset:I

    if-ne v0, v3, :cond_7

    .line 160
    nop

    .line 161
    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit;->inspect([BLcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;)Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;

    move-result-object v0

    .line 162
    .local v0, "rechecked":Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;
    iget v3, v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;->hpSubtractOffset:I

    iget v4, p3, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;->hpSubtractOffset:I

    if-ne v3, v4, :cond_6

    iget v3, v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;->nonlethalBranchTarget:I

    iget v4, p3, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;->nonlethalBranchTarget:I

    if-ne v3, v4, :cond_6

    .line 165
    invoke-static {p0}, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;->surveyCandidate([B)Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;

    move-result-object v3

    .line 166
    .local v3, "provisional":Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;
    iget v4, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->referenceVariant:I

    if-ne v4, v1, :cond_0

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;->RAZOR1_CALLS:[I

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;->RAZOR2_CALLS:[I

    .line 167
    .local v1, "offsets":[I
    :goto_0
    iget v4, v3, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;->hpSubtractOffset:I

    iget v5, p3, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;->hpSubtractOffset:I

    if-ne v4, v5, :cond_5

    iget-object v4, v3, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;->directCalls:Ljava/util/List;

    .line 168
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    array-length v5, v1

    if-ne v4, v5, :cond_5

    .line 170
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_4

    .line 171
    iget-object v5, v3, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;->directCalls:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;

    .line 172
    .local v5, "call":Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;
    iget v6, v5, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;->instructionOffset:I

    aget v7, v1, v4

    if-ne v6, v7, :cond_3

    iget-boolean v6, v5, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;->observedStackSetup:Z

    if-eqz v6, :cond_3

    iget-object v6, v5, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;->encoding:Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;

    .line 173
    if-ne v4, v2, :cond_1

    sget-object v7, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;->JSR_PC_RELATIVE_WORD:Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;

    goto :goto_2

    .line 174
    :cond_1
    sget-object v7, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;->JSR_ABSOLUTE_LONG:Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;

    :goto_2
    if-ne v6, v7, :cond_3

    .line 176
    sget-object v6, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;->EXPECTED_SETUP:[[B

    aget-object v6, v6, v4

    .line 177
    .local v6, "setup":[B
    iget v7, v5, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;->instructionOffset:I

    array-length v8, v6

    sub-int/2addr v7, v8

    invoke-static {p0, v7, v6}, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;->matches([BI[B)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 170
    .end local v5    # "call":Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;
    .end local v6    # "setup":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 178
    .restart local v5    # "call":Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;
    .restart local v6    # "setup":[B
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v7, "Reference Razor call arguments changed"

    invoke-direct {v2, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    .end local v6    # "setup":[B
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v6, "Reference Razor call-site bytes differ"

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    .end local v4    # "i":I
    .end local v5    # "call":Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;
    :cond_4
    new-instance v2, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;

    sget-object v4, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;->REFERENCE_CALL_SITES_VERIFIED:Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;

    iget v5, v3, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;->entryOffset:I

    iget-object v6, v3, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;->directCalls:Ljava/util/List;

    const/4 v7, 0x0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;-><init>(Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;ILjava/util/List;Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit-IA;)V

    return-object v2

    .line 169
    :cond_5
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Reference Razor 314 entry or caller count differs"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    .end local v1    # "offsets":[I
    .end local v3    # "provisional":Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;
    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor impact attestation mismatch"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    .end local v0    # "rechecked":Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Reference Razor 314 attestation missing or mismatched"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static matches([BI[B)Z
    .locals 4
    .param p0, "b"    # [B
    .param p1, "p"    # I
    .param p2, "pattern"    # [B

    .line 190
    const/4 v0, 0x0

    if-ltz p1, :cond_3

    array-length v1, p0

    array-length v2, p2

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 191
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 192
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_1

    return v0

    .line 191
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 190
    :cond_3
    :goto_1
    return v0
.end method

.method public static surveyCandidate([B)Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;
    .locals 10
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    if-eqz p0, :cond_b

    array-length v0, p0

    const/high16 v1, 0x40000

    if-lt v0, v1, :cond_b

    array-length v0, p0

    const/high16 v1, 0x800000

    if-gt v0, v1, :cond_b

    array-length v0, p0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_b

    .line 101
    const/4 v0, -0x1

    .line 102
    .local v0, "entry":I
    const/4 v2, 0x0

    .line 103
    .local v2, "found":I
    const/16 v3, 0x400

    .local v3, "p":I
    :goto_0
    array-length v4, p0

    sget-object v5, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;->ENTRY_BYTES:[B

    array-length v5, v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x40

    if-gt v3, v4, :cond_2

    .line 104
    sget-object v4, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;->ENTRY_BYTES:[B

    invoke-static {p0, v3, v4}, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;->matches([BI[B)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v3, 0x3a

    sget-object v5, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;->HP_BRANCH:[B

    .line 105
    invoke-static {p0, v4, v5}, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;->matches([BI[B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 106
    add-int/lit8 v2, v2, 0x1

    .line 107
    move v0, v3

    .line 108
    if-gt v2, v1, :cond_0

    goto :goto_1

    .line 109
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Ambiguous building damage entry signature"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 112
    .end local v3    # "p":I
    :cond_2
    if-ne v2, v1, :cond_a

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v1, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;>;"
    const/16 v3, 0x400

    move v5, v3

    .local v5, "p":I
    :goto_2
    array-length v3, p0

    add-int/lit8 v3, v3, -0x6

    if-gt v5, v3, :cond_9

    .line 119
    invoke-static {p0, v5}, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;->word([BI)I

    move-result v3

    .line 122
    .local v3, "opcode":I
    const/16 v4, 0x4eb9

    if-ne v3, v4, :cond_4

    .line 123
    add-int/lit8 v4, v5, 0x2

    invoke-static {p0, v4}, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;->dword([BI)J

    move-result-wide v6

    .line 124
    .local v6, "address":J
    const-wide/32 v8, 0x7fffffff

    cmp-long v4, v6, v8

    if-lez v4, :cond_3

    goto :goto_4

    .line 125
    :cond_3
    long-to-int v4, v6

    .line 126
    .local v4, "target":I
    sget-object v6, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;->JSR_ABSOLUTE_LONG:Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;

    .line 127
    .local v6, "encoding":Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;
    move-object v7, v6

    move v6, v4

    goto :goto_3

    .end local v4    # "target":I
    .end local v6    # "encoding":Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;
    :cond_4
    const/16 v4, 0x4eb8

    if-ne v3, v4, :cond_5

    .line 128
    add-int/lit8 v4, v5, 0x2

    invoke-static {p0, v4}, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;->word([BI)I

    move-result v4

    int-to-short v4, v4

    .line 129
    .restart local v4    # "target":I
    sget-object v6, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;->JSR_ABSOLUTE_SHORT:Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;

    move-object v7, v6

    move v6, v4

    .restart local v6    # "encoding":Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;
    goto :goto_3

    .line 130
    .end local v4    # "target":I
    .end local v6    # "encoding":Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;
    :cond_5
    const/16 v4, 0x4eba

    if-ne v3, v4, :cond_8

    .line 132
    add-int/lit8 v4, v5, 0x2

    add-int/lit8 v6, v5, 0x2

    invoke-static {p0, v6}, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;->word([BI)I

    move-result v6

    int-to-short v6, v6

    add-int/2addr v4, v6

    .line 133
    .restart local v4    # "target":I
    sget-object v6, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;->JSR_PC_RELATIVE_WORD:Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;

    move-object v7, v6

    move v6, v4

    .line 137
    .end local v4    # "target":I
    .local v6, "target":I
    .local v7, "encoding":Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;
    :goto_3
    if-eq v6, v0, :cond_6

    goto :goto_4

    .line 138
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/16 v8, 0x20

    if-ge v4, v8, :cond_7

    .line 140
    new-instance v4, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;

    invoke-static {p0, v5}, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;->hasKnownSetup([BI)Z

    move-result v8

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;-><init>(IILcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;ZLcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit-IA;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 139
    :cond_7
    new-instance v4, Ljava/io/IOException;

    const-string v8, "Too many building damage call candidates"

    invoke-direct {v4, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 118
    .end local v3    # "opcode":I
    .end local v6    # "target":I
    .end local v7    # "encoding":Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;
    :cond_8
    :goto_4
    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    .line 142
    .end local v5    # "p":I
    :cond_9
    new-instance v3, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;

    sget-object v4, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;->STRUCTURAL_CANDIDATE:Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v0, v1, v5}, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;-><init>(Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;ILjava/util/List;Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit-IA;)V

    return-object v3

    .line 113
    .end local v1    # "calls":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;>;"
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v3, "No unique building damage signature in ROM"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    .end local v0    # "entry":I
    .end local v2    # "found":I
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid Genesis ROM length for R82C direct-call survey"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static word([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "p"    # I

    .line 196
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    mul-int/lit16 v0, v0, 0x100

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method
