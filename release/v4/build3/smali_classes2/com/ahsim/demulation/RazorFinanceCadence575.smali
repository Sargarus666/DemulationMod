.class public final Lcom/ahsim/demulation/RazorFinanceCadence575;
.super Ljava/lang/Object;
.source "RazorFinanceCadence575.java"


# instance fields
.field public final cost:I

.field public final observedPaymentEvents:I

.field public final openingCredits:I

.field public final paid:I

.field public final phase:I

.field public final phaseFrames:I

.field public final referenceSteps:I

.field public final refunded:I

.field public final remainder:I

.field public final remainingCost:I

.field public final shadowCredits:I

.field public final sourceSection:I

.field public final submittedFrames:I

.field public final time:I

.field public final timer:I


# direct methods
.method private constructor <init>([I)V
    .locals 1
    .param p1, "w"    # [I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceCadence575;->phase:I

    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceCadence575;->sourceSection:I

    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceCadence575;->cost:I

    const/4 v0, 0x4

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceCadence575;->time:I

    const/4 v0, 0x5

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceCadence575;->timer:I

    .line 12
    const/4 v0, 0x6

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceCadence575;->paid:I

    const/4 v0, 0x7

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceCadence575;->shadowCredits:I

    const/16 v0, 0x8

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceCadence575;->openingCredits:I

    const/16 v0, 0x9

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceCadence575;->referenceSteps:I

    .line 13
    const/16 v0, 0xa

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceCadence575;->submittedFrames:I

    const/16 v0, 0xb

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceCadence575;->phaseFrames:I

    const/16 v0, 0xc

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceCadence575;->observedPaymentEvents:I

    .line 14
    const/16 v0, 0x11

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceCadence575;->refunded:I

    const/16 v0, 0x12

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceCadence575;->remainder:I

    const/16 v0, 0x13

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceCadence575;->remainingCost:I

    .line 15
    return-void
.end method

.method public static parse([III)Lcom/ahsim/demulation/RazorFinanceCadence575;
    .locals 19
    .param p0, "w"    # [I
    .param p1, "verifiedCost"    # I
    .param p2, "verifiedTime"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    move-object/from16 v0, p0

    if-eqz v0, :cond_8

    array-length v1, v0

    const/16 v2, 0x14

    if-ne v1, v2, :cond_8

    const/4 v1, 0x0

    aget v2, v0, v1

    const/16 v3, 0x23f

    if-ne v2, v3, :cond_8

    const/4 v2, 0x1

    aget v3, v0, v2

    if-ltz v3, :cond_8

    aget v3, v0, v2

    const/4 v4, 0x4

    if-gt v3, v4, :cond_8

    const/16 v3, 0xd

    aget v3, v0, v3

    const/16 v5, 0x1e

    if-ne v3, v5, :cond_8

    const/16 v3, 0xe

    aget v3, v0, v3

    if-nez v3, :cond_8

    const/16 v3, 0xf

    aget v3, v0, v3

    if-nez v3, :cond_8

    const/16 v3, 0x10

    aget v3, v0, v3

    if-nez v3, :cond_8

    const/16 v3, 0xa

    aget v6, v0, v3

    if-ltz v6, :cond_8

    const/16 v6, 0xb

    aget v7, v0, v6

    if-ltz v7, :cond_8

    aget v7, v0, v6

    if-ge v7, v5, :cond_8

    const/16 v7, 0x9

    aget v8, v0, v7

    if-ltz v8, :cond_8

    const/16 v8, 0xc

    aget v9, v0, v8

    if-ltz v9, :cond_8

    aget v9, v0, v8

    aget v7, v0, v7

    if-gt v9, v7, :cond_8

    aget v7, v0, v8

    aget v3, v0, v3

    div-int/2addr v3, v5

    if-gt v7, v3, :cond_8

    const/16 v3, 0x11

    aget v3, v0, v3

    if-ltz v3, :cond_8

    const/16 v3, 0x12

    aget v5, v0, v3

    if-ltz v5, :cond_8

    aget v3, v0, v3

    const/16 v5, 0xff

    if-gt v3, v5, :cond_8

    const/16 v3, 0x13

    aget v5, v0, v3

    if-ltz v5, :cond_8

    const/4 v5, 0x3

    aget v7, v0, v5

    if-ltz v7, :cond_8

    aget v7, v0, v4

    if-ltz v7, :cond_8

    const/4 v7, 0x5

    aget v9, v0, v7

    if-ltz v9, :cond_8

    const/4 v9, 0x6

    aget v10, v0, v9

    if-ltz v10, :cond_8

    const/4 v10, 0x7

    aget v11, v0, v10

    if-ltz v11, :cond_8

    const/16 v11, 0x8

    aget v12, v0, v11

    if-ltz v12, :cond_8

    aget v12, v0, v9

    const v13, 0xffff

    if-gt v12, v13, :cond_8

    aget v12, v0, v10

    if-gt v12, v13, :cond_8

    aget v12, v0, v11

    if-gt v12, v13, :cond_8

    aget v12, v0, v9

    aget v13, v0, v10

    add-int/2addr v12, v13

    aget v13, v0, v11

    if-ne v12, v13, :cond_8

    .line 25
    aget v12, v0, v2

    if-nez v12, :cond_2

    .line 26
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    if-gt v1, v8, :cond_1

    aget v2, v0, v1

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Nonempty idle cadence reference"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 26
    :cond_1
    move/from16 v12, p1

    move/from16 v13, p2

    .end local v1    # "i":I
    goto :goto_1

    .line 28
    :cond_2
    aget v8, v0, v5

    move/from16 v12, p1

    if-ne v8, v12, :cond_6

    aget v8, v0, v4

    move/from16 v13, p2

    if-ne v8, v13, :cond_7

    const/4 v8, 0x2

    aget v14, v0, v8

    if-eq v14, v8, :cond_3

    aget v14, v0, v8

    if-eq v14, v5, :cond_3

    aget v14, v0, v8

    if-eq v14, v4, :cond_3

    aget v14, v0, v8

    if-eq v14, v7, :cond_3

    aget v8, v0, v8

    if-ne v8, v6, :cond_7

    :cond_3
    aget v6, v0, v7

    int-to-long v14, v6

    aget v6, v0, v4

    move v8, v2

    move/from16 v16, v3

    int-to-long v2, v6

    const-wide/16 v17, 0x100

    mul-long v2, v2, v17

    cmp-long v2, v14, v2

    if-gtz v2, :cond_7

    aget v2, v0, v16

    aget v3, v0, v5

    aget v6, v0, v9

    sub-int/2addr v3, v6

    .line 30
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v2, v1, :cond_7

    aget v1, v0, v8

    if-ne v1, v5, :cond_4

    aget v1, v0, v7

    if-nez v1, :cond_7

    :cond_4
    aget v1, v0, v8

    if-ne v1, v4, :cond_5

    aget v1, v0, v9

    if-nez v1, :cond_7

    aget v1, v0, v10

    aget v2, v0, v11

    if-ne v1, v2, :cond_7

    aget v1, v0, v7

    if-nez v1, :cond_7

    .line 35
    :cond_5
    :goto_1
    new-instance v1, Lcom/ahsim/demulation/RazorFinanceCadence575;

    invoke-direct {v1, v0}, Lcom/ahsim/demulation/RazorFinanceCadence575;-><init>([I)V

    return-object v1

    .line 28
    :cond_6
    move/from16 v13, p2

    .line 34
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unverified Razor 575 finance cadence"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_8
    move/from16 v12, p1

    move/from16 v13, p2

    .line 24
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid Razor 575 cadence source state"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
