.class public final Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit;
.super Ljava/lang/Object;
.source "DuneHackR82ActiveDamageRouteAudit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;,
        Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;,
        Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Result;
    }
.end annotation


# static fields
.field private static final MAX_HANDLER_SCAN:I = 0x600

.field private static final RETURN_TARGETS:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 61
    const v0, 0x1cc84

    const v1, 0x1cd78

    const v2, 0x1cbb4

    const v3, 0x1cca8

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    const v1, 0x9f70

    const v2, 0xa09e

    const v3, 0x9efa

    const v4, 0xa028

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    filled-new-array {v0, v1}, [[I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit;->RETURN_TARGETS:[[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static be32([BI)J
    .locals 5
    .param p0, "rom"    # [B
    .param p1, "at"    # I

    .line 69
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

.method private static check([BLcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;I)Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;
    .locals 16
    .param p0, "rom"    # [B
    .param p1, "e"    # Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
    .param p2, "kind"    # I

    .line 87
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;->layout:I

    const/4 v3, 0x4

    if-ltz v2, :cond_0

    iget v2, v1, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;->layout:I

    if-ge v2, v3, :cond_0

    sget-object v2, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit;->RETURN_TARGETS:[[I

    aget-object v2, v2, p2

    iget v4, v1, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;->layout:I

    aget v2, v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    move v8, v2

    .line 88
    .local v8, "expected":I
    iget-object v2, v1, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;->evidence:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    sget-object v4, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;->REFERENCE_ENTRY_BYTES:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    if-ne v2, v4, :cond_1

    .line 89
    new-instance v4, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;

    sget-object v5, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;->REFERENCE_ENTRY_NO_HOOK:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    iget v6, v1, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;->offset:I

    const-string v11, "reference bytes only"

    const/4 v12, 0x0

    const/4 v7, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;-><init>(Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;IIIIILjava/lang/String;Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit-IA;)V

    return-object v4

    .line 90
    :cond_1
    iget-object v2, v1, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;->evidence:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    sget-object v4, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;->INVALID_JMP_DESTINATION:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    if-ne v2, v4, :cond_2

    .line 91
    new-instance v4, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;

    sget-object v5, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;->BAD_ENTRY:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    iget v6, v1, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;->offset:I

    const-string v11, "invalid JMP target"

    const/4 v12, 0x0

    const/4 v7, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;-><init>(Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;IIIIILjava/lang/String;Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit-IA;)V

    return-object v4

    .line 92
    :cond_2
    iget-object v2, v1, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;->evidence:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    sget-object v4, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;->JMP_TO_ROM_UNVERIFIED:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    if-eq v2, v4, :cond_3

    .line 93
    new-instance v4, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;

    sget-object v5, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;->NO_PROVEN_HOOK:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    iget v6, v1, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;->offset:I

    const-string v11, "ambiguous or unknown entry"

    const/4 v12, 0x0

    const/4 v7, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;-><init>(Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;IIIIILjava/lang/String;Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit-IA;)V

    return-object v4

    .line 94
    :cond_3
    iget v7, v1, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;->jumpDestination:I

    .line 95
    .local v7, "dest":I
    const/16 v2, 0x400

    if-lt v7, v2, :cond_e

    and-int/lit8 v2, v7, 0x1

    if-nez v2, :cond_e

    array-length v2, v0

    add-int/lit8 v2, v2, -0x10

    if-le v7, v2, :cond_4

    goto/16 :goto_5

    .line 99
    :cond_4
    const/4 v2, 0x0

    .local v2, "count":I
    const/4 v4, -0x1

    .line 100
    .local v4, "observed":I
    const/4 v5, 0x0

    .local v5, "matching":Z
    const/4 v6, 0x0

    .line 101
    .local v6, "mismatched":Z
    array-length v9, v0

    add-int/lit8 v9, v9, -0x6

    add-int/lit16 v10, v7, 0x600

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 102
    .local v13, "limit":I
    move v9, v7

    move v10, v9

    move v9, v4

    move v4, v10

    move v10, v2

    move v2, v5

    move v14, v6

    .end local v5    # "matching":Z
    .end local v6    # "mismatched":Z
    .local v2, "matching":Z
    .local v4, "at":I
    .local v9, "observed":I
    .local v10, "count":I
    .local v14, "mismatched":Z
    :goto_1
    if-gt v4, v13, :cond_a

    .line 103
    aget-byte v5, v0, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x4e

    if-ne v5, v6, :cond_9

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xf9

    if-eq v5, v6, :cond_5

    move v15, v4

    goto :goto_3

    .line 104
    :cond_5
    add-int/lit8 v5, v4, 0x2

    invoke-static {v0, v5}, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit;->be32([BI)J

    move-result-wide v5

    .line 105
    .local v5, "to":J
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    if-ge v11, v3, :cond_8

    .line 106
    sget-object v12, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit;->RETURN_TARGETS:[[I

    aget-object v12, v12, p2

    aget v12, v12, v11

    move v15, v4

    .end local v4    # "at":I
    .local v15, "at":I
    int-to-long v3, v12

    cmp-long v3, v5, v3

    if-nez v3, :cond_7

    .line 107
    add-int/lit8 v10, v10, 0x1

    .line 108
    long-to-int v3, v5

    .line 109
    .end local v9    # "observed":I
    .local v3, "observed":I
    iget v4, v1, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;->layout:I

    if-ne v11, v4, :cond_6

    const/4 v2, 0x1

    move v9, v3

    goto :goto_3

    .line 110
    :cond_6
    const/4 v4, 0x1

    .line 111
    .end local v14    # "mismatched":Z
    .local v4, "mismatched":Z
    move v9, v3

    move v14, v4

    goto :goto_3

    .line 105
    .end local v3    # "observed":I
    .end local v4    # "mismatched":Z
    .restart local v9    # "observed":I
    .restart local v14    # "mismatched":Z
    :cond_7
    add-int/lit8 v11, v11, 0x1

    move v4, v15

    const/4 v3, 0x4

    goto :goto_2

    .end local v15    # "at":I
    .local v4, "at":I
    :cond_8
    move v15, v4

    .end local v4    # "at":I
    .restart local v15    # "at":I
    goto :goto_3

    .line 103
    .end local v5    # "to":J
    .end local v11    # "j":I
    .end local v15    # "at":I
    .restart local v4    # "at":I
    :cond_9
    move v15, v4

    .line 102
    .end local v4    # "at":I
    .restart local v15    # "at":I
    :goto_3
    add-int/lit8 v4, v15, 0x2

    const/4 v3, 0x4

    .end local v15    # "at":I
    .restart local v4    # "at":I
    goto :goto_1

    :cond_a
    move v15, v4

    .line 116
    .end local v4    # "at":I
    if-nez v10, :cond_b

    sget-object v3, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;->NO_POSSIBLE_RETURN:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    move-object v5, v3

    .local v3, "evidence":Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;
    goto :goto_4

    .line 117
    .end local v3    # "evidence":Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;
    :cond_b
    const/4 v3, 0x1

    if-le v10, v3, :cond_c

    sget-object v3, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;->MULTIPLE_POSSIBLE_RETURNS:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    move-object v5, v3

    .restart local v3    # "evidence":Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;
    goto :goto_4

    .line 118
    .end local v3    # "evidence":Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;
    :cond_c
    if-eqz v2, :cond_d

    if-nez v14, :cond_d

    sget-object v3, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;->POSSIBLE_RETURN_TO_EXPECTED_LAYOUT:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    move-object v5, v3

    .restart local v3    # "evidence":Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;
    goto :goto_4

    .line 119
    .end local v3    # "evidence":Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;
    :cond_d
    sget-object v3, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;->POSSIBLE_RETURN_TO_OTHER_LAYOUT:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    move-object v5, v3

    .line 120
    .local v5, "evidence":Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;
    :goto_4
    new-instance v4, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;

    iget v6, v1, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;->offset:I

    const-string v11, "static tail-JMP pattern; reachability and semantics unverified"

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;-><init>(Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;IIIIILjava/lang/String;Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit-IA;)V

    return-object v4

    .line 96
    .end local v2    # "matching":Z
    .end local v5    # "evidence":Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;
    .end local v9    # "observed":I
    .end local v10    # "count":I
    .end local v13    # "limit":I
    .end local v14    # "mismatched":Z
    :cond_e
    :goto_5
    new-instance v4, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;

    sget-object v5, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;->BAD_ENTRY:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    iget v6, v1, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;->offset:I

    const-string v11, "invalid handler bounds"

    const/4 v12, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;-><init>(Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;IIIIILjava/lang/String;Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit-IA;)V

    return-object v4
.end method

.method public static inspect([BLcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;)Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Result;
    .locals 4
    .param p0, "rom"    # [B
    .param p1, "compiled"    # Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p0

    const/high16 v1, 0x40000

    if-lt v0, v1, :cond_0

    array-length v0, p0

    const/high16 v1, 0x800000

    if-gt v0, v1, :cond_0

    iget-object v0, p1, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;->unitDamage:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;->structureDamage:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;

    if-eqz v0, :cond_0

    .line 127
    invoke-static {p0}, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit;->sha256([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;->romSha256:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Result;

    iget-object v1, p1, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;->unitDamage:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit;->check([BLcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;I)Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;

    move-result-object v1

    iget-object v2, p1, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;->structureDamage:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit;->check([BLcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;I)Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Result;-><init>(Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit-IA;)V

    return-object v0

    .line 128
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Active damage audit ROM identity mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static sha256([B)Ljava/lang/String;
    .locals 6
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 75
    .local v0, "digest":[B
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .local v1, "out":[C
    const-string v2, "0123456789abcdef"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 76
    .local v2, "digits":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 77
    mul-int/lit8 v4, v3, 0x2

    aget-byte v5, v0, v3

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v2, v5

    aput-char v5, v1, v4

    .line 78
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v5, v0, v3

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v2, v5

    aput-char v5, v1, v4

    .line 76
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 80
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 81
    .end local v0    # "digest":[B
    .end local v1    # "out":[C
    .end local v2    # "digits":[C
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 missing"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
