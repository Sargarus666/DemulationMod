.class public final Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate;
.super Ljava/lang/Object;
.source "RazorF40ObjectFlagShadowGate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate$Verdict;
    }
.end annotation


# static fields
.field public static final FLAG_BYTE_OFFSET:I = 0x9

.field public static final GENESIS_UNIT_BASE:I = 0xff0dac

.field public static final GENESIS_UNIT_COUNT:I = 0x66

.field public static final GENESIS_UNIT_STRIDE:I = 0x8c


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static candidateSlot(I)I
    .locals 3
    .param p0, "ptr"    # I

    .line 40
    const/4 v0, -0x1

    const v1, 0xff0dac

    if-lt p0, v1, :cond_2

    const v2, 0xff4574

    if-lt p0, v2, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    sub-int v1, p0, v1

    .line 43
    .local v1, "off":I
    rem-int/lit16 v2, v1, 0x8c

    if-nez v2, :cond_1

    div-int/lit16 v0, v1, 0x8c

    :cond_1
    return v0

    .line 41
    .end local v1    # "off":I
    :cond_2
    :goto_0
    return v0
.end method

.method public static checkCurrentAndroidSource(ILjava/lang/String;)Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate$Verdict;
    .locals 8
    .param p0, "genesisA2"    # I
    .param p1, "evidenceKind"    # Ljava/lang/String;

    .line 74
    invoke-static {p0}, Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate;->candidateSlot(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 75
    new-instance v1, Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate$Verdict;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const-string v2, "REJECTED_NOT_GENESIS_UNIT_BASE"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate$Verdict;-><init>(Ljava/lang/String;ZZILcom/ahsim/demulation/RazorF40ObjectFlagShadowGate-IA;)V

    return-object v1

    .line 76
    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "razor403"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    const-string v0, "razor405"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "razor411"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    new-instance v1, Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate$Verdict;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const-string v2, "BLOCKED_NO_LIVE_ANDROID_UNIT_FLAG_ABI"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate$Verdict;-><init>(Ljava/lang/String;ZZILcom/ahsim/demulation/RazorF40ObjectFlagShadowGate-IA;)V

    return-object v1

    .line 78
    :cond_2
    :goto_0
    new-instance v2, Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate$Verdict;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-string v3, "REJECTED_UNKNOWN_ANDROID_SOURCE"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate$Verdict;-><init>(Ljava/lang/String;ZZILcom/ahsim/demulation/RazorF40ObjectFlagShadowGate-IA;)V

    return-object v2
.end method

.method public static compareSynthetic(IIII[B)Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate$Verdict;
    .locals 24
    .param p0, "genesisA2"    # I
    .param p1, "bit"    # I
    .param p2, "beforeObserved"    # I
    .param p3, "afterObserved"    # I
    .param p4, "syntheticFlags"    # [B

    .line 54
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static/range {p0 .. p0}, Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate;->candidateSlot(I)I

    move-result v4

    .line 55
    .local v4, "slot":I
    if-ltz v4, :cond_3

    if-ltz v0, :cond_3

    const/4 v5, 0x7

    if-gt v0, v5, :cond_3

    if-ltz v1, :cond_3

    const/16 v5, 0xff

    if-gt v1, v5, :cond_3

    if-ltz v2, :cond_3

    if-gt v2, v5, :cond_3

    if-eqz v3, :cond_3

    array-length v6, v3

    const/16 v7, 0x66

    if-eq v6, v7, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    array-length v6, v3

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    .line 60
    .local v6, "isolated":[B
    aget-byte v7, v6, v4

    and-int/lit16 v12, v7, 0xff

    .line 61
    .local v12, "original":I
    if-eq v12, v1, :cond_1

    .line 62
    new-instance v8, Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate$Verdict;

    const/4 v11, 0x1

    const/4 v13, 0x0

    const-string v9, "REJECTED_SYNTHETIC_PRESTATE_MISMATCH"

    const/4 v10, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate$Verdict;-><init>(Ljava/lang/String;ZZILcom/ahsim/demulation/RazorF40ObjectFlagShadowGate-IA;)V

    return-object v8

    .line 63
    :cond_1
    const/4 v7, 0x1

    shl-int/2addr v7, v0

    or-int/2addr v7, v12

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    .line 64
    aget-byte v7, v6, v4

    and-int/2addr v5, v7

    .line 65
    .local v5, "result":I
    if-eq v5, v2, :cond_2

    .line 66
    new-instance v13, Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate$Verdict;

    const/16 v16, 0x1

    const/16 v18, 0x0

    const-string v14, "REJECTED_ORIGINAL_READBACK_MISMATCH"

    const/4 v15, 0x0

    move/from16 v17, v5

    .end local v5    # "result":I
    .local v17, "result":I
    invoke-direct/range {v13 .. v18}, Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate$Verdict;-><init>(Ljava/lang/String;ZZILcom/ahsim/demulation/RazorF40ObjectFlagShadowGate-IA;)V

    return-object v13

    .line 67
    .end local v17    # "result":I
    .restart local v5    # "result":I
    :cond_2
    move/from16 v17, v5

    .end local v5    # "result":I
    .restart local v17    # "result":I
    new-instance v13, Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate$Verdict;

    const/16 v16, 0x1

    const/16 v18, 0x0

    const-string v14, "SYNTHETIC_READBACK_ONLY_ANDROID_ABI_UNAVAILABLE"

    const/4 v15, 0x1

    invoke-direct/range {v13 .. v18}, Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate$Verdict;-><init>(Ljava/lang/String;ZZILcom/ahsim/demulation/RazorF40ObjectFlagShadowGate-IA;)V

    return-object v13

    .line 58
    .end local v6    # "isolated":[B
    .end local v12    # "original":I
    .end local v17    # "result":I
    :cond_3
    :goto_0
    new-instance v18, Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate$Verdict;

    const/16 v22, -0x1

    const/16 v23, 0x0

    const-string v19, "REJECTED_INVALID_OR_UNMAPPED_POINTER"

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v18 .. v23}, Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate$Verdict;-><init>(Ljava/lang/String;ZZILcom/ahsim/demulation/RazorF40ObjectFlagShadowGate-IA;)V

    return-object v18
.end method
