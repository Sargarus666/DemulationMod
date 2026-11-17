.class public final Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit;
.super Ljava/lang/Object;
.source "DuneHackR82WeaponHookAudit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;,
        Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;,
        Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Result;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inspect([BLcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;)Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Result;
    .locals 5
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

    array-length v0, p0

    const/high16 v1, 0x800000

    if-gt v0, v1, :cond_0

    .line 67
    invoke-static {p0}, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit;->sha256([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;->sourceSha256:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Result;

    iget-object v1, p1, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;->sourceSha256:Ljava/lang/String;

    .line 70
    const-string v2, "death_hand"

    invoke-virtual {p1, v2}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;->find(Ljava/lang/String;)Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit;->read([BLcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;)Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;

    move-result-object v2

    const-string v3, "projectile_surface"

    invoke-virtual {p1, v3}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;->find(Ljava/lang/String;)Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit;->read([BLcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;)Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Result;-><init>(Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit-IA;)V

    .line 69
    return-object v0

    .line 68
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "R82C weapon hook ROM identity mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static read([BLcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;)Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;
    .locals 9
    .param p0, "rom"    # [B
    .param p1, "hook"    # Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;

    .line 42
    iget-object v0, p1, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;->evidence:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;->AMBIGUOUS:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    const/4 v2, -0x1

    if-eq v0, v1, :cond_6

    iget-object v0, p1, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;->evidence:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;->WEAK_OPCODE:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 45
    :cond_0
    iget-object v0, p1, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;->evidence:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;->OPCODE_AT_DOCUMENTED_OFFSET:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    if-eq v0, v1, :cond_1

    .line 46
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;->NOT_OBSERVED:Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;-><init>(Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;I)V

    return-object v0

    .line 47
    :cond_1
    iget v0, p1, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;->matchedAddress:I

    .line 48
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

    .line 50
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

    .line 52
    .local v3, "to":J
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

    .line 54
    :cond_3
    new-instance v1, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;

    sget-object v2, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;->POSSIBLE_JMP_IN_ROM:Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    long-to-int v5, v3

    invoke-direct {v1, v2, v5}, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;-><init>(Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;I)V

    return-object v1

    .line 53
    :cond_4
    :goto_0
    new-instance v1, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;

    sget-object v5, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;->INVALID_TARGET:Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    invoke-direct {v1, v5, v2}, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;-><init>(Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;I)V

    return-object v1

    .line 49
    .end local v3    # "to":J
    :cond_5
    :goto_1
    new-instance v1, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;

    sget-object v3, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;->INVALID_TARGET:Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    invoke-direct {v1, v3, v2}, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;-><init>(Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;I)V

    return-object v1

    .line 44
    .end local v0    # "at":I
    :cond_6
    :goto_2
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;->AMBIGUOUS_LAYOUT:Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;-><init>(Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;I)V

    return-object v0
.end method

.method private static sha256([B)Ljava/lang/String;
    .locals 7
    .param p0, "rom"    # [B
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

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 59
    .local v0, "d":[B
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 60
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "0123456789abcdef"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 61
    .local v2, "hex":[C
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v0, v4

    .local v5, "b":B
    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v2, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v6, v5, 0xf

    aget-char v6, v2, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 63
    .end local v0    # "d":[B
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "hex":[C
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
