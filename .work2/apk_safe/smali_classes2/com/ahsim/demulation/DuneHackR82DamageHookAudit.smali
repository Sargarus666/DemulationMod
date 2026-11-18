.class public final Lcom/ahsim/demulation/DuneHackR82DamageHookAudit;
.super Ljava/lang/Object;
.source "DuneHackR82DamageHookAudit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Finding;,
        Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;,
        Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Result;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inspect([BLcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;)Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Result;
    .locals 9
    .param p0, "rom"    # [B
    .param p1, "hooks"    # Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p0

    const/high16 v1, 0x40000

    if-lt v0, v1, :cond_0

    .line 67
    invoke-static {p0}, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit;->romSha256([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;->sourceSha256:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "unit_damage"

    invoke-virtual {p1, v0}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;->find(Ljava/lang/String;)Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit;->inspectHook([BLcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;)Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Finding;

    move-result-object v0

    .line 70
    .local v0, "unit":Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Finding;
    const-string v1, "build_damage"

    invoke-virtual {p1, v1}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;->find(Ljava/lang/String;)Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit;->inspectHook([BLcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;)Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Finding;

    move-result-object v1

    .line 71
    .local v1, "structure":Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Finding;
    new-instance v2, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Result;

    iget-object v3, p1, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;->sourceSha256:Ljava/lang/String;

    iget-object v4, v0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Finding;->evidence:Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    iget-object v5, v1, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Finding;->evidence:Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    iget v6, v0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Finding;->dest:I

    iget v7, v1, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Finding;->dest:I

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Result;-><init>(Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;IILcom/ahsim/demulation/DuneHackR82DamageHookAudit-IA;)V

    return-object v2

    .line 68
    .end local v0    # "unit":Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Finding;
    .end local v1    # "structure":Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Finding;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unmatched R82C ROM / damage hook evidence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static inspectHook([BLcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;)Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Finding;
    .locals 9
    .param p0, "rom"    # [B
    .param p1, "hook"    # Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;

    .line 47
    iget-object v0, p1, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;->evidence:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;->AMBIGUOUS:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    const/4 v2, -0x1

    if-eq v0, v1, :cond_6

    iget-object v0, p1, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;->evidence:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;->WEAK_OPCODE:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 50
    :cond_0
    iget-object v0, p1, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;->evidence:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;->OPCODE_AT_DOCUMENTED_OFFSET:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    if-eq v0, v1, :cond_1

    .line 51
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Finding;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;->NOT_AT_DOCUMENTED_LAYOUTS:Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Finding;-><init>(Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;I)V

    return-object v0

    .line 52
    :cond_1
    iget v0, p1, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;->matchedAddress:I

    .line 53
    .local v0, "at":I
    if-ltz v0, :cond_5

    array-length v1, p0

    add-int/lit8 v1, v1, -0x6

    if-gt v0, v1, :cond_5

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0x4e

    if-ne v1, v3, :cond_5

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0xf9

    if-eq v1, v3, :cond_2

    goto :goto_1

    .line 56
    :cond_2
    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v3, v1

    const/16 v1, 0x18

    shl-long/2addr v3, v1

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v5, v1

    const/16 v1, 0x10

    shl-long/2addr v5, v1

    or-long/2addr v3, v5

    add-int/lit8 v1, v0, 0x4

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v5, v1

    const/16 v1, 0x8

    shl-long/2addr v5, v1

    or-long/2addr v3, v5

    add-int/lit8 v1, v0, 0x5

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v5, v1

    or-long/2addr v3, v5

    .line 59
    .local v3, "target":J
    const-wide/16 v5, 0x1

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-nez v1, :cond_4

    const-wide/16 v5, 0x200

    cmp-long v1, v3, v5

    if-ltz v1, :cond_4

    array-length v1, p0

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-ltz v1, :cond_3

    goto :goto_0

    .line 61
    :cond_3
    new-instance v1, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Finding;

    sget-object v2, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;->POSSIBLE_JMP_TARGET_IN_ROM:Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    long-to-int v5, v3

    invoke-direct {v1, v2, v5}, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Finding;-><init>(Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;I)V

    return-object v1

    .line 60
    :cond_4
    :goto_0
    new-instance v1, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Finding;

    sget-object v5, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;->JMP_TARGET_INVALID:Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    invoke-direct {v1, v5, v2}, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Finding;-><init>(Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;I)V

    return-object v1

    .line 55
    .end local v3    # "target":J
    :cond_5
    :goto_1
    new-instance v1, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Finding;

    sget-object v3, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;->JMP_TARGET_INVALID:Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    invoke-direct {v1, v3, v2}, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Finding;-><init>(Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;I)V

    return-object v1

    .line 49
    .end local v0    # "at":I
    :cond_6
    :goto_2
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Finding;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;->AMBIGUOUS_LAYOUT:Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Finding;-><init>(Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;I)V

    return-object v0
.end method

.method private static romSha256([B)Ljava/lang/String;
    .locals 7
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 78
    .local v0, "digest":[B
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 79
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "0123456789abcdef"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 80
    .local v2, "hex":[C
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v0, v4

    .line 81
    .local v5, "item":B
    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v2, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    and-int/lit8 v6, v5, 0xf

    aget-char v6, v2, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    nop

    .end local v5    # "item":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 85
    .end local v0    # "digest":[B
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "hex":[C
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
