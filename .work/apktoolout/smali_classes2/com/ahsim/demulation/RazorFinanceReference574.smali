.class public final Lcom/ahsim/demulation/RazorFinanceReference574;
.super Ljava/lang/Object;
.source "RazorFinanceReference574.java"


# static fields
.field public static final CANCELLED:I = 0x4

.field public static final HELD:I = 0x2

.field public static final IDLE:I = 0x0

.field public static final READY:I = 0x3

.field public static final RUNNING:I = 0x1


# instance fields
.field public final cost:I

.field public final openingCredits:I

.field public final paid:I

.field public final phase:I

.field public final referenceSteps:I

.field public final refunded:I

.field public final remainder:I

.field public final shadowCredits:I

.field public final sourceSection:I

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

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceReference574;->phase:I

    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceReference574;->sourceSection:I

    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceReference574;->cost:I

    const/4 v0, 0x4

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceReference574;->time:I

    const/4 v0, 0x5

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceReference574;->timer:I

    .line 12
    const/4 v0, 0x6

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceReference574;->remainder:I

    const/4 v0, 0x7

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceReference574;->paid:I

    const/16 v0, 0x8

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceReference574;->shadowCredits:I

    const/16 v0, 0x9

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceReference574;->openingCredits:I

    .line 13
    const/16 v0, 0xa

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceReference574;->referenceSteps:I

    const/16 v0, 0xb

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceReference574;->refunded:I

    .line 14
    return-void
.end method

.method public static parse([III)Lcom/ahsim/demulation/RazorFinanceReference574;
    .locals 18
    .param p0, "w"    # [I
    .param p1, "verifiedCost"    # I
    .param p2, "verifiedTime"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    move-object/from16 v0, p0

    if-eqz v0, :cond_8

    array-length v1, v0

    const/16 v2, 0x11

    if-ne v1, v2, :cond_8

    const/4 v1, 0x0

    aget v2, v0, v1

    const/16 v3, 0x23e

    if-ne v2, v3, :cond_8

    const/4 v2, 0x1

    aget v3, v0, v2

    if-ltz v3, :cond_8

    aget v3, v0, v2

    const/4 v4, 0x4

    if-gt v3, v4, :cond_8

    const/16 v3, 0xc

    aget v5, v0, v3

    if-nez v5, :cond_8

    const/16 v5, 0xd

    aget v5, v0, v5

    if-nez v5, :cond_8

    const/16 v5, 0xe

    aget v5, v0, v5

    const/16 v6, 0x100

    if-ne v5, v6, :cond_8

    const/16 v5, 0x10

    aget v5, v0, v5

    if-nez v5, :cond_8

    const/4 v5, 0x2

    aget v6, v0, v5

    if-ltz v6, :cond_8

    const/4 v6, 0x3

    aget v7, v0, v6

    if-ltz v7, :cond_8

    aget v7, v0, v4

    if-ltz v7, :cond_8

    const/4 v7, 0x5

    aget v8, v0, v7

    if-ltz v8, :cond_8

    const/4 v8, 0x6

    aget v9, v0, v8

    if-ltz v9, :cond_8

    const/4 v9, 0x7

    aget v10, v0, v9

    if-ltz v10, :cond_8

    const/16 v10, 0x8

    aget v11, v0, v10

    if-ltz v11, :cond_8

    const/16 v11, 0x9

    aget v12, v0, v11

    if-ltz v12, :cond_8

    const/16 v12, 0xa

    aget v12, v0, v12

    if-ltz v12, :cond_8

    const/16 v12, 0xb

    aget v13, v0, v12

    if-ltz v13, :cond_8

    const/16 v13, 0xf

    aget v14, v0, v13

    if-ltz v14, :cond_8

    aget v14, v0, v9

    const v15, 0xffff

    if-gt v14, v15, :cond_8

    aget v14, v0, v10

    if-gt v14, v15, :cond_8

    aget v14, v0, v11

    if-gt v14, v15, :cond_8

    aget v8, v0, v8

    const/16 v14, 0xff

    if-gt v8, v14, :cond_8

    .line 23
    aget v8, v0, v2

    if-nez v8, :cond_2

    .line 24
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Nonempty idle finance"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move/from16 v14, p2

    .end local v1    # "i":I
    goto :goto_1

    .line 26
    :cond_2
    aget v3, v0, v6

    move/from16 v8, p1

    if-ne v3, v8, :cond_6

    aget v3, v0, v4

    move/from16 v14, p2

    if-ne v3, v14, :cond_7

    aget v3, v0, v5

    if-eq v3, v5, :cond_3

    aget v3, v0, v5

    if-eq v3, v6, :cond_3

    aget v3, v0, v5

    if-eq v3, v4, :cond_3

    aget v3, v0, v5

    if-eq v3, v7, :cond_3

    aget v3, v0, v5

    if-ne v3, v12, :cond_7

    :cond_3
    aget v3, v0, v7

    move v5, v2

    int-to-long v2, v3

    aget v12, v0, v4

    move v15, v7

    int-to-long v7, v12

    const-wide/16 v16, 0x100

    mul-long v7, v7, v16

    cmp-long v2, v2, v7

    if-gtz v2, :cond_7

    aget v2, v0, v9

    int-to-long v2, v2

    aget v7, v0, v10

    int-to-long v7, v7

    add-long/2addr v2, v7

    aget v7, v0, v11

    int-to-long v7, v7

    cmp-long v2, v2, v7

    if-nez v2, :cond_7

    aget v2, v0, v13

    aget v3, v0, v6

    aget v7, v0, v9

    sub-int/2addr v3, v7

    .line 29
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v2, v1, :cond_7

    aget v1, v0, v5

    if-ne v1, v6, :cond_4

    aget v1, v0, v15

    if-nez v1, :cond_7

    :cond_4
    aget v1, v0, v5

    if-ne v1, v4, :cond_5

    aget v1, v0, v9

    if-nez v1, :cond_7

    aget v1, v0, v10

    aget v2, v0, v11

    if-ne v1, v2, :cond_7

    aget v1, v0, v15

    if-nez v1, :cond_7

    .line 34
    :cond_5
    :goto_1
    new-instance v1, Lcom/ahsim/demulation/RazorFinanceReference574;

    invoke-direct {v1, v0}, Lcom/ahsim/demulation/RazorFinanceReference574;-><init>([I)V

    return-object v1

    .line 26
    :cond_6
    move/from16 v14, p2

    .line 32
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unverified finance shadow state"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_8
    move/from16 v14, p2

    .line 22
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid Razor reference-finance protocol"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
