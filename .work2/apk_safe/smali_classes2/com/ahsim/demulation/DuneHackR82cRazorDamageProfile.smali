.class public final Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile;
.super Ljava/lang/Object;
.source "DuneHackR82cRazorDamageProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile$Impact;
    }
.end annotation


# static fields
.field private static final CLASSES:I = 0x6

.field private static final KNOWN_TABLE_SHA:Ljava/lang/String; = "5e41df837fef8ce86cdd803beafb58263776da87c58385df548c6193d633cdb0"

.field private static final OP_CODES:[B

.field private static final WORDS:I = 0x84


# instance fields
.field private final animationCoefficients:[I

.field public final extendedWeaponHookVerified:Z

.field public final modGameplayReady:Z

.field public final romSha256:Ljava/lang/String;

.field public final tableSha256:Ljava/lang/String;

.field public final verifiedRouteAddress:I

.field public final verifiedTableAddress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile;->OP_CODES:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        -0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x30t
        0x30t
        0x40t
        0x0t
        0xct
        0x40t
        0x1t
        0x0t
        0x67t
        0x4t
        -0x3at
        -0x40t
        -0x20t
        -0x75t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;II[I)V
    .locals 1
    .param p1, "sha"    # Ljava/lang/String;
    .param p2, "digest"    # Ljava/lang/String;
    .param p3, "route"    # I
    .param p4, "table"    # I
    .param p5, "coefficients"    # [I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile;->modGameplayReady:Z

    .line 49
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile;->extendedWeaponHookVerified:Z

    .line 54
    iput-object p1, p0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile;->romSha256:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile;->tableSha256:Ljava/lang/String;

    .line 56
    iput p3, p0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile;->verifiedRouteAddress:I

    .line 57
    iput p4, p0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile;->verifiedTableAddress:I

    .line 58
    invoke-virtual {p5}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile;->animationCoefficients:[I

    .line 59
    return-void
.end method

.method private static digest([BII)Ljava/lang/String;
    .locals 8
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 124
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 126
    .local v1, "out":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v2, v4

    .line 127
    .local v5, "b":B
    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    and-int/lit8 v6, v5, 0xf

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    nop

    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 131
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "out":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static fromReference([BLcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;)Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile;
    .locals 10
    .param p0, "rom"    # [B
    .param p1, "evidence"    # Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    iget-boolean v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->referenceSample:Z

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->damageEvidence:Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;->VERIFIED_REFERENCE_TABLE:Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    if-ne v0, v1, :cond_a

    iget-object v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->tableSha256:Ljava/lang/String;

    .line 67
    const-string v1, "5e41df837fef8ce86cdd803beafb58263776da87c58385df548c6193d633cdb0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->linkedDamageWords:I

    const/16 v2, 0x84

    if-ne v0, v2, :cond_a

    array-length v0, p0

    .line 69
    const/4 v3, 0x0

    invoke-static {p0, v3, v0}, Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile;->digest([BII)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->romSha256:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 72
    iget v6, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->linkedInstructionOffset:I

    .line 73
    .local v6, "route":I
    iget v7, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->linkedDamageTableOffset:I

    .line 74
    .local v7, "table":I
    if-ltz v6, :cond_9

    array-length v0, p0

    sget-object v3, Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile;->OP_CODES:[B

    array-length v3, v3

    sub-int/2addr v0, v3

    if-gt v6, v0, :cond_9

    if-ltz v7, :cond_9

    array-length v0, p0

    const/16 v3, 0x108

    sub-int/2addr v0, v3

    if-gt v7, v0, :cond_9

    iget v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->referenceVariant:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    const v0, 0x1cbf0

    if-ne v6, v0, :cond_9

    :cond_0
    iget v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->referenceVariant:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    const v0, 0x1cce4

    if-ne v6, v0, :cond_9

    :cond_1
    const v0, 0x25c3a

    if-ne v7, v0, :cond_9

    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v8, Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile;->OP_CODES:[B

    array-length v8, v8

    if-ge v0, v8, :cond_4

    .line 82
    if-lt v0, v5, :cond_2

    const/4 v8, 0x6

    if-ge v0, v8, :cond_2

    goto :goto_1

    .line 83
    :cond_2
    add-int v8, v6, v0

    aget-byte v8, p0, v8

    sget-object v9, Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile;->OP_CODES:[B

    aget-byte v9, v9, v0

    if-ne v8, v9, :cond_3

    .line 81
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Damage animation branch opcode differs"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    .end local v0    # "i":I
    :cond_4
    add-int/lit8 v0, v6, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v5, v6, 0x3

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v0, v5

    add-int/lit8 v5, v6, 0x4

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    add-int/lit8 v5, v6, 0x5

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v0, v5

    .line 89
    .local v0, "address":I
    if-ne v0, v7, :cond_8

    invoke-static {p0, v7, v3}, Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile;->digest([BII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 92
    new-array v8, v2, [I

    .line 93
    .local v8, "values":[I
    const/4 v1, 0x0

    .line 94
    .local v1, "different":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v3, v8

    if-ge v2, v3, :cond_6

    .line 95
    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v7

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v7

    add-int/2addr v5, v4

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    aput v3, v8, v2

    .line 96
    aget v3, v8, v2

    const/16 v5, 0x100

    if-eq v3, v5, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 94
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 98
    .end local v2    # "i":I
    :cond_6
    const/16 v2, 0x13

    if-ne v1, v2, :cond_7

    iget v2, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->nonUnityCoefficients:I

    if-ne v2, v1, :cond_7

    .line 100
    new-instance v3, Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile;

    iget-object v4, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->romSha256:Ljava/lang/String;

    iget-object v5, p1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->tableSha256:Ljava/lang/String;

    invoke-direct/range {v3 .. v8}, Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile;-><init>(Ljava/lang/String;Ljava/lang/String;II[I)V

    return-object v3

    .line 99
    :cond_7
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unexpected Razor coefficient profile"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    .end local v1    # "different":I
    .end local v8    # "values":[I
    :cond_8
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor linked multiplier table changed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    .end local v0    # "address":I
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected Razor route layout"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    .end local v6    # "route":I
    .end local v7    # "table":I
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Only authenticated Razor R82C references are accepted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public coefficientQ8(II)I
    .locals 2
    .param p1, "animation"    # I
    .param p2, "movementClass"    # I

    .line 105
    if-ltz p1, :cond_0

    const/16 v0, 0x16

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    const/4 v0, 0x6

    if-ge p2, v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile;->animationCoefficients:[I

    mul-int/lit8 v1, p1, 0x6

    add-int/2addr v1, p2

    aget v0, v0, v1

    return v0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid impact class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public previewFirstStage(III)Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile$Impact;
    .locals 8
    .param p1, "rawDamage"    # I
    .param p2, "animation"    # I
    .param p3, "movementClass"    # I

    .line 113
    if-ltz p1, :cond_1

    const v0, 0xffff

    if-gt p1, v0, :cond_1

    .line 115
    invoke-virtual {p0, p2, p3}, Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile;->coefficientQ8(II)I

    move-result v5

    .line 116
    .local v5, "coeff":I
    const/16 v0, 0x100

    if-ne v5, v0, :cond_0

    move v6, p1

    goto :goto_0

    .line 117
    :cond_0
    int-to-long v0, p1

    int-to-long v2, v5

    mul-long/2addr v0, v2

    const/16 v2, 0x8

    ushr-long/2addr v0, v2

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    move v6, v0

    :goto_0
    nop

    .line 118
    .local v6, "result":I
    new-instance v1, Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile$Impact;

    const/4 v7, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    .end local p1    # "rawDamage":I
    .end local p2    # "animation":I
    .end local p3    # "movementClass":I
    .local v2, "rawDamage":I
    .local v3, "animation":I
    .local v4, "movementClass":I
    invoke-direct/range {v1 .. v7}, Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile$Impact;-><init>(IIIIILcom/ahsim/demulation/DuneHackR82cRazorDamageProfile-IA;)V

    return-object v1

    .line 113
    .end local v2    # "rawDamage":I
    .end local v3    # "animation":I
    .end local v4    # "movementClass":I
    .end local v5    # "coeff":I
    .end local v6    # "result":I
    .restart local p1    # "rawDamage":I
    .restart local p2    # "animation":I
    .restart local p3    # "movementClass":I
    :cond_1
    move v2, p1

    move v3, p2

    move v4, p3

    .line 114
    .end local p1    # "rawDamage":I
    .end local p2    # "animation":I
    .end local p3    # "movementClass":I
    .restart local v2    # "rawDamage":I
    .restart local v3    # "animation":I
    .restart local v4    # "movementClass":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "16-bit unsigned base damage required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
