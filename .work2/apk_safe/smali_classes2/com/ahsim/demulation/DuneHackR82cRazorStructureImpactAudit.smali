.class public final Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit;
.super Ljava/lang/Object;
.source "DuneHackR82cRazorStructureImpactAudit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;,
        Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$OriginalCoreRoute;,
        Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;
    }
.end annotation


# static fields
.field private static final ENTRY_PREFIX:[B

.field private static final HP_BRANCH:[B

.field private static final PREFIX_LENGTH:I = 0x30

.field private static final RETURN_EPILOGUE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit;->ENTRY_PREFIX:[B

    .line 21
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit;->HP_BRANCH:[B

    .line 26
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit;->RETURN_EPILOGUE:[B

    return-void

    :array_0
    .array-data 1
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
        0x67t
        0x0t
        0x0t
        -0x2at
    .end array-data

    nop

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
        0x70t
        0x0t
        0x58t
        -0x71t
        0x4ct
        -0x21t
        0x4t
        0x8t
        0x4et
        0x75t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inspect([BLcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;)Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;
    .locals 9
    .param p0, "rom"    # [B
    .param p1, "combat"    # Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    .param p2, "building"    # Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    iget-boolean v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->referenceSample:Z

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->referenceVariant:I

    iget v1, p2, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;->referenceVariant:I

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->romSha256:Ljava/lang/String;

    iget-object v1, p2, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;->romSha256:Ljava/lang/String;

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;->entryEvidence:Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;->VERIFIED_INLINE_SUBTRACTION:Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;

    if-ne v0, v1, :cond_3

    .line 94
    nop

    .line 95
    invoke-static {p0, p1}, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit;->inspect([BLcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;)Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;

    move-result-object v0

    .line 96
    .local v0, "verified":Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;
    iget-object v1, v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;->instructionWindowSha256:Ljava/lang/String;

    iget-object v2, p2, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;->instructionWindowSha256:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;->subtractionInstructionOffset:I

    iget v2, p2, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;->subtractionInstructionOffset:I

    if-ne v1, v2, :cond_2

    .line 99
    iget v6, v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;->subtractionInstructionOffset:I

    .line 100
    .local v6, "sub":I
    add-int/lit8 v1, v6, -0x30

    .line 101
    .local v1, "entry":I
    sget-object v2, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit;->ENTRY_PREFIX:[B

    invoke-static {p0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit;->match([BI[B)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit;->HP_BRANCH:[B

    invoke-static {p0, v6, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit;->match([BI[B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    add-int/lit8 v2, v6, 0xe

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v6, 0xf

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-short v2, v2

    .line 108
    .local v2, "branchDisplacement":I
    add-int/lit8 v3, v6, 0xe

    add-int v7, v3, v2

    .line 109
    .local v7, "epilogue":I
    sget-object v3, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit;->HP_BRANCH:[B

    array-length v3, v3

    add-int/2addr v3, v6

    if-le v7, v3, :cond_0

    sget-object v3, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit;->RETURN_EPILOGUE:[B

    invoke-static {p0, v7, v3}, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit;->match([BI[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    new-instance v3, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;

    iget-object v4, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->romSha256:Ljava/lang/String;

    iget v5, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->referenceVariant:I

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;-><init>(Ljava/lang/String;IIILcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit-IA;)V

    return-object v3

    .line 110
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Razor nonlethal branch does not reach return epilogue"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 102
    .end local v2    # "branchDisplacement":I
    .end local v7    # "epilogue":I
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Razor building instruction flow changed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    .end local v1    # "entry":I
    .end local v6    # "sub":I
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor 313 building attestation mismatch"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    .end local v0    # "verified":Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 313 requires matching exact-ROM combat and building evidence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static match([BI[B)Z
    .locals 4
    .param p0, "rom"    # [B
    .param p1, "pos"    # I
    .param p2, "pattern"    # [B

    .line 118
    const/4 v0, 0x0

    if-ltz p1, :cond_3

    array-length v1, p0

    array-length v2, p2

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 119
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 120
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_1

    return v0

    .line 119
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 118
    :cond_3
    :goto_1
    return v0
.end method
