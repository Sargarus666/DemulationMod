.class public final Lcom/ahsim/demulation/RazorFinanceLive576;
.super Ljava/lang/Object;
.source "RazorFinanceLive576.java"


# static fields
.field public static final CANCELLED:I = 0x4

.field public static final HELD:I = 0x2

.field public static final IDLE:I = 0x0

.field public static final READY:I = 0x3

.field public static final RUNNING:I = 0x1


# instance fields
.field public final cost:I

.field public final credits:I

.field public final ledgerRefunded:I

.field public final ledgerSpent:I

.field public final manualFrameEquivalents:I

.field public final openingCredits:I

.field public final paid:I

.field public final payments:I

.field public final phase:I

.field public final refunded:I

.field public final remaining:I

.field public final sourceSection:I

.field public final time:I

.field public final timer:I


# direct methods
.method private constructor <init>([I)V
    .locals 1
    .param p1, "w"    # [I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceLive576;->phase:I

    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceLive576;->sourceSection:I

    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceLive576;->cost:I

    const/4 v0, 0x4

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceLive576;->time:I

    const/4 v0, 0x5

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceLive576;->timer:I

    .line 13
    const/4 v0, 0x6

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceLive576;->paid:I

    const/4 v0, 0x7

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceLive576;->credits:I

    const/16 v0, 0x8

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceLive576;->openingCredits:I

    const/16 v0, 0x9

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceLive576;->payments:I

    .line 14
    const/16 v0, 0xa

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceLive576;->manualFrameEquivalents:I

    const/16 v0, 0xb

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceLive576;->refunded:I

    const/16 v0, 0xd

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceLive576;->remaining:I

    .line 15
    const/16 v0, 0xe

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceLive576;->ledgerSpent:I

    const/16 v0, 0xf

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceLive576;->ledgerRefunded:I

    .line 16
    return-void
.end method

.method public static parse([III)Lcom/ahsim/demulation/RazorFinanceLive576;
    .locals 17
    .param p0, "w"    # [I
    .param p1, "verifiedCost"    # I
    .param p2, "verifiedTime"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    move-object/from16 v0, p0

    if-eqz v0, :cond_b

    array-length v1, v0

    const/16 v2, 0x16

    if-ne v1, v2, :cond_b

    const/4 v1, 0x0

    aget v3, v0, v1

    const/16 v4, 0x240

    if-ne v3, v4, :cond_b

    const/4 v3, 0x1

    aget v4, v0, v3

    if-ltz v4, :cond_b

    aget v4, v0, v3

    const/4 v5, 0x4

    if-gt v4, v5, :cond_b

    .line 21
    aget v4, v0, v3

    if-nez v4, :cond_2

    .line 22
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Dirty idle Razor finance ledger"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 22
    :cond_1
    move/from16 v4, p1

    move/from16 v9, p2

    .end local v1    # "i":I
    goto/16 :goto_4

    .line 25
    :cond_2
    const/4 v2, 0x2

    aget v4, v0, v2

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/16 v8, 0xb

    if-eq v4, v2, :cond_4

    aget v4, v0, v2

    if-eq v4, v7, :cond_4

    aget v4, v0, v2

    if-eq v4, v5, :cond_4

    aget v4, v0, v2

    if-eq v4, v6, :cond_4

    aget v2, v0, v2

    if-ne v2, v8, :cond_3

    goto :goto_1

    :cond_3
    move/from16 v4, p1

    move/from16 v9, p2

    goto/16 :goto_5

    :cond_4
    :goto_1
    aget v2, v0, v7

    move/from16 v4, p1

    if-ne v2, v4, :cond_9

    aget v2, v0, v5

    move/from16 v9, p2

    if-ne v2, v9, :cond_a

    aget v2, v0, v7

    const/16 v10, 0x3e8

    if-ne v2, v10, :cond_a

    aget v2, v0, v5

    const/16 v11, 0x14

    if-ne v2, v11, :cond_a

    const/16 v2, 0x9

    aget v12, v0, v2

    if-ltz v12, :cond_a

    aget v12, v0, v2

    if-gt v12, v11, :cond_a

    const/4 v12, 0x6

    aget v13, v0, v12

    if-ltz v13, :cond_a

    aget v13, v0, v12

    if-gt v13, v10, :cond_a

    aget v13, v0, v12

    const/16 v14, 0x32

    rem-int/2addr v13, v14

    if-nez v13, :cond_a

    const/4 v13, 0x7

    aget v15, v0, v13

    if-ltz v15, :cond_a

    aget v15, v0, v13

    const v1, 0xffff

    if-gt v15, v1, :cond_a

    const/16 v15, 0x8

    aget v16, v0, v15

    if-ltz v16, :cond_a

    move/from16 v16, v2

    aget v2, v0, v15

    if-gt v2, v1, :cond_a

    aget v1, v0, v6

    aget v2, v0, v16

    rsub-int/lit8 v2, v2, 0x14

    mul-int/lit16 v2, v2, 0x100

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    aget v1, v0, v1

    aget v2, v0, v16

    const/16 v6, 0x1e

    mul-int/2addr v2, v6

    if-ne v1, v2, :cond_a

    const/16 v1, 0xc

    aget v1, v0, v1

    if-ne v1, v14, :cond_a

    const/16 v1, 0xd

    aget v1, v0, v1

    aget v2, v0, v16

    mul-int/2addr v2, v14

    rsub-int v2, v2, 0x3e8

    if-ne v1, v2, :cond_a

    const/16 v1, 0xe

    aget v1, v0, v1

    if-ltz v1, :cond_a

    const/16 v1, 0xf

    aget v1, v0, v1

    if-ltz v1, :cond_a

    const/16 v1, 0x10

    aget v1, v0, v1

    if-ne v1, v6, :cond_a

    const/16 v1, 0x11

    aget v1, v0, v1

    if-ne v1, v3, :cond_a

    const/16 v1, 0x12

    aget v1, v0, v1

    if-nez v1, :cond_a

    const/16 v1, 0x13

    aget v1, v0, v1

    if-nez v1, :cond_a

    aget v1, v0, v11

    if-nez v1, :cond_a

    const/16 v1, 0x15

    aget v1, v0, v1

    .line 34
    aget v2, v0, v3

    if-ne v2, v7, :cond_5

    move v2, v3

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-ne v1, v2, :cond_a

    aget v1, v0, v8

    if-ltz v1, :cond_a

    aget v1, v0, v8

    if-gt v1, v10, :cond_a

    aget v1, v0, v8

    rem-int/2addr v1, v14

    if-nez v1, :cond_a

    aget v1, v0, v3

    if-ne v1, v5, :cond_6

    aget v1, v0, v12

    if-nez v1, :cond_a

    aget v1, v0, v8

    aget v2, v0, v16

    mul-int/2addr v2, v14

    if-ne v1, v2, :cond_a

    aget v1, v0, v13

    aget v2, v0, v15

    if-ne v1, v2, :cond_a

    goto :goto_3

    :cond_6
    aget v1, v0, v12

    aget v2, v0, v16

    mul-int/2addr v2, v14

    if-ne v1, v2, :cond_a

    aget v1, v0, v13

    aget v2, v0, v12

    add-int/2addr v1, v2

    aget v2, v0, v15

    if-ne v1, v2, :cond_a

    aget v1, v0, v8

    if-nez v1, :cond_a

    :goto_3
    aget v1, v0, v3

    if-ne v1, v7, :cond_7

    aget v1, v0, v16

    if-ne v1, v11, :cond_a

    goto :goto_4

    :cond_7
    aget v1, v0, v3

    if-eq v1, v5, :cond_8

    aget v1, v0, v16

    if-ge v1, v11, :cond_a

    .line 42
    :cond_8
    :goto_4
    new-instance v1, Lcom/ahsim/demulation/RazorFinanceLive576;

    invoke-direct {v1, v0}, Lcom/ahsim/demulation/RazorFinanceLive576;-><init>([I)V

    return-object v1

    .line 25
    :cond_9
    move/from16 v9, p2

    .line 40
    :cond_a
    :goto_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid Razor 576 payment/refund accounting"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_b
    move/from16 v4, p1

    move/from16 v9, p2

    .line 20
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid Razor live finance 576 header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
