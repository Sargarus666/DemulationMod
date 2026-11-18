.class public final Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit;
.super Ljava/lang/Object;
.source "DuneHackR82cRazorStructureDamageAudit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;,
        Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;
    }
.end annotation


# static fields
.field private static final INLINE_SUBTRACT:[B

.field private static final PRECEDING_BYTES:I = 0x30

.field private static final WINDOW_BYTES:I = 0x80

.field private static final WINDOW_SHA256:Ljava/lang/String; = "f0f8fba01c27f899f7d7baacbaef264ce269a0f9305d769752dbd31931879953"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit;->INLINE_SUBTRACT:[B

    return-void

    :array_0
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
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inspect([BLcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;)Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;
    .locals 9
    .param p0, "rom"    # [B
    .param p1, "evidence"    # Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    iget-boolean v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->referenceSample:Z

    if-eqz v0, :cond_6

    iget v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->referenceVariant:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_6

    iget v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->referenceVariant:I

    const/4 v2, 0x2

    if-gt v0, v2, :cond_6

    iget-object v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->damageEvidence:Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    sget-object v2, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;->VERIFIED_REFERENCE_TABLE:Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    if-ne v0, v2, :cond_6

    array-length v0, p0

    .line 74
    const/4 v2, 0x0

    invoke-static {p0, v2, v0}, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit;->sha256([BII)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->romSha256:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 79
    invoke-static {p0, p1}, Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile;->fromReference([BLcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;)Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile;

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "matches":I
    const/4 v2, -0x1

    .line 83
    .local v2, "found":I
    const/16 v3, 0x30

    .local v3, "pos":I
    :goto_0
    sget-object v4, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit;->INLINE_SUBTRACT:[B

    array-length v4, v4

    add-int/2addr v4, v3

    array-length v5, p0

    if-gt v4, v5, :cond_2

    .line 85
    sget-object v4, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit;->INLINE_SUBTRACT:[B

    invoke-static {p0, v3, v4}, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit;->matches([BI[B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 86
    add-int/lit8 v0, v0, 0x1

    .line 87
    if-ne v0, v1, :cond_0

    move v2, v3

    .line 88
    :cond_0
    if-le v0, v1, :cond_1

    move v5, v2

    goto :goto_1

    .line 84
    :cond_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 83
    :cond_2
    move v5, v2

    .line 91
    .end local v2    # "found":I
    .end local v3    # "pos":I
    .local v5, "found":I
    :goto_1
    iget v2, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->referenceVariant:I

    if-ne v2, v1, :cond_3

    const v2, 0x9f42

    goto :goto_2

    :cond_3
    const v2, 0xa070

    :goto_2
    move v8, v2

    .line 92
    .local v8, "expected":I
    if-ne v0, v1, :cond_5

    if-ne v5, v8, :cond_5

    add-int/lit16 v1, v5, 0x80

    add-int/lit8 v1, v1, -0x30

    array-length v2, p0

    if-gt v1, v2, :cond_5

    .line 96
    add-int/lit8 v1, v5, -0x30

    const/16 v2, 0x80

    invoke-static {p0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit;->sha256([BII)Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "windowDigest":Ljava/lang/String;
    const-string v1, "f0f8fba01c27f899f7d7baacbaef264ce269a0f9305d769752dbd31931879953"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 100
    new-instance v2, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;

    iget-object v3, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->romSha256:Ljava/lang/String;

    iget v4, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->referenceVariant:I

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit-IA;)V

    return-object v2

    .line 98
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor building damage branch bytes differ from reference"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    .end local v6    # "windowDigest":Ljava/lang/String;
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor building damage route absent or ambiguous"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    .end local v0    # "matches":I
    .end local v5    # "found":I
    .end local v8    # "expected":I
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor structure damage audit requires exact ROM evidence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static matches([BI[B)Z
    .locals 4
    .param p0, "rom"    # [B
    .param p1, "offset"    # I
    .param p2, "pattern"    # [B

    .line 105
    const/4 v0, 0x0

    if-ltz p1, :cond_3

    array-length v1, p0

    array-length v2, p2

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 106
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 107
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_1

    return v0

    .line 106
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 105
    :cond_3
    :goto_1
    return v0
.end method

.method private static sha256([BII)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B
    .param p1, "at"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 115
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 117
    .local v1, "s":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v2, v4

    .line 118
    .local v5, "b":B
    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    and-int/lit8 v6, v5, 0xf

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    nop

    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 122
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "s":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Missing SHA-256 implementation"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
