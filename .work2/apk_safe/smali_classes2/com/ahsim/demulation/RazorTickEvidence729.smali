.class final Lcom/ahsim/demulation/RazorTickEvidence729;
.super Ljava/lang/Object;
.source "RazorTickEvidence729.java"


# instance fields
.field final after:I

.field final before:I

.field final buildChanged:Z

.field final changes:I

.field final dynamic:I

.field final external:I

.field final modified:Z

.field final pass:I

.field final positionChanged:Z

.field final previousMatched:Z

.field final retained:I

.field final retired:I

.field final unitChanged:Z


# direct methods
.method private constructor <init>([I)V
    .locals 3
    .param p1, "p"    # [I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x1

    aget v1, p1, v0

    iput v1, p0, Lcom/ahsim/demulation/RazorTickEvidence729;->pass:I

    const/4 v1, 0x2

    aget v1, p1, v1

    iput v1, p0, Lcom/ahsim/demulation/RazorTickEvidence729;->before:I

    const/4 v1, 0x3

    aget v1, p1, v1

    iput v1, p0, Lcom/ahsim/demulation/RazorTickEvidence729;->after:I

    const/4 v1, 0x4

    aget v1, p1, v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorTickEvidence729;->modified:Z

    .line 14
    const/4 v1, 0x5

    aget v1, p1, v1

    if-ne v1, v0, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorTickEvidence729;->previousMatched:Z

    const/4 v1, 0x6

    aget v1, p1, v1

    if-ne v1, v0, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorTickEvidence729;->positionChanged:Z

    .line 15
    const/4 v1, 0x7

    aget v1, p1, v1

    if-ne v1, v0, :cond_3

    move v1, v0

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorTickEvidence729;->unitChanged:Z

    const/16 v1, 0x8

    aget v1, p1, v1

    if-ne v1, v0, :cond_4

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTickEvidence729;->buildChanged:Z

    .line 16
    const/16 v0, 0x9

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorTickEvidence729;->dynamic:I

    const/16 v0, 0xa

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorTickEvidence729;->retired:I

    const/16 v0, 0xb

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorTickEvidence729;->retained:I

    const/16 v0, 0xc

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorTickEvidence729;->changes:I

    const/16 v0, 0xd

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorTickEvidence729;->external:I

    .line 17
    return-void
.end method

.method static validate([IILcom/ahsim/demulation/RazorTickEvidence729;)Lcom/ahsim/demulation/RazorTickEvidence729;
    .locals 18
    .param p0, "w"    # [I
    .param p1, "expectedPass"    # I
    .param p2, "previous"    # Lcom/ahsim/demulation/RazorTickEvidence729;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v0, :cond_b

    array-length v3, v0

    const/16 v4, 0x38

    if-ne v3, v4, :cond_b

    const/4 v3, 0x1

    if-lt v1, v3, :cond_b

    const v4, 0xf4240

    if-gt v1, v4, :cond_b

    .line 22
    const/16 v4, 0x28

    .line 23
    .local v4, "i":I
    const/16 v5, 0x10

    new-array v6, v5, [I

    .line 24
    .local v6, "p":[I
    const/4 v7, 0x0

    invoke-static {v0, v4, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    aget v5, v6, v7

    const/16 v8, 0x2d9

    if-ne v5, v8, :cond_a

    aget v5, v6, v3

    if-ne v5, v1, :cond_a

    const/16 v5, 0xe

    aget v8, v6, v5

    if-nez v8, :cond_a

    const/16 v8, 0xf

    aget v8, v6, v8

    if-nez v8, :cond_a

    const/4 v8, 0x4

    aget v9, v6, v8

    if-ltz v9, :cond_a

    aget v9, v6, v8

    if-gt v9, v3, :cond_a

    const/4 v9, 0x5

    aget v10, v6, v9

    if-ltz v10, :cond_a

    aget v10, v6, v9

    if-gt v10, v3, :cond_a

    const/4 v10, 0x6

    aget v11, v6, v10

    if-ltz v11, :cond_a

    aget v11, v6, v10

    if-gt v11, v3, :cond_a

    const/4 v11, 0x7

    aget v12, v6, v11

    if-ltz v12, :cond_a

    aget v12, v6, v11

    if-gt v12, v3, :cond_a

    const/16 v12, 0x8

    aget v13, v6, v12

    if-ltz v13, :cond_a

    aget v13, v6, v12

    if-gt v13, v3, :cond_a

    aget v13, v6, v8

    if-ne v13, v3, :cond_0

    move v13, v3

    goto :goto_0

    :cond_0
    move v13, v7

    :goto_0
    const/4 v14, 0x2

    aget v15, v6, v14

    const/16 v16, 0x3

    move/from16 v17, v5

    aget v5, v6, v16

    if-eq v15, v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    if-ne v13, v5, :cond_a

    aget v5, v6, v8

    if-nez v5, :cond_2

    aget v5, v6, v10

    if-nez v5, :cond_a

    aget v5, v6, v11

    if-nez v5, :cond_a

    aget v5, v6, v12

    if-nez v5, :cond_a

    :cond_2
    aget v5, v6, v8

    if-ne v5, v3, :cond_3

    aget v5, v6, v10

    aget v10, v6, v11

    add-int/2addr v5, v10

    aget v10, v6, v12

    add-int/2addr v5, v10

    if-eqz v5, :cond_a

    :cond_3
    const/16 v5, 0x9

    aget v10, v6, v5

    if-ltz v10, :cond_a

    aget v5, v6, v5

    const/16 v10, 0x80

    if-gt v5, v10, :cond_a

    const/16 v5, 0xa

    aget v10, v6, v5

    if-ltz v10, :cond_a

    aget v5, v6, v5

    aget v10, v0, v17

    if-gt v5, v10, :cond_a

    const/16 v5, 0xb

    aget v10, v6, v5

    if-ltz v10, :cond_a

    aget v10, v6, v5

    if-gt v10, v1, :cond_a

    const/16 v10, 0xc

    aget v11, v6, v10

    if-ltz v11, :cond_a

    aget v11, v6, v10

    if-gt v11, v1, :cond_a

    const/16 v11, 0xd

    aget v12, v6, v11

    if-ltz v12, :cond_a

    aget v12, v6, v11

    if-ge v12, v1, :cond_a

    aget v12, v6, v5

    aget v13, v6, v10

    if-gt v12, v13, :cond_a

    .line 36
    if-nez v2, :cond_5

    .line 37
    aget v3, v6, v9

    if-nez v3, :cond_4

    aget v3, v6, v5

    if-nez v3, :cond_4

    aget v3, v6, v11

    if-nez v3, :cond_4

    goto :goto_3

    .line 38
    :cond_4
    new-instance v3, Ljava/io/IOException;

    const-string v5, "729 first-pass continuity mismatch"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 40
    :cond_5
    iget v12, v2, Lcom/ahsim/demulation/RazorTickEvidence729;->pass:I

    add-int/2addr v12, v3

    if-ne v12, v1, :cond_9

    aget v5, v6, v5

    iget v12, v2, Lcom/ahsim/demulation/RazorTickEvidence729;->retained:I

    .line 42
    aget v13, v6, v9

    if-ne v13, v3, :cond_6

    iget-boolean v13, v2, Lcom/ahsim/demulation/RazorTickEvidence729;->modified:Z

    if-eqz v13, :cond_6

    move v13, v3

    goto :goto_2

    :cond_6
    move v13, v7

    :goto_2
    add-int/2addr v12, v13

    if-ne v5, v12, :cond_9

    aget v5, v6, v10

    iget v10, v2, Lcom/ahsim/demulation/RazorTickEvidence729;->changes:I

    aget v8, v6, v8

    add-int/2addr v10, v8

    if-ne v5, v10, :cond_9

    aget v5, v6, v11

    iget v8, v2, Lcom/ahsim/demulation/RazorTickEvidence729;->external:I

    .line 44
    aget v10, v6, v9

    if-nez v10, :cond_7

    move v7, v3

    :cond_7
    add-int/2addr v8, v7

    if-ne v5, v8, :cond_9

    aget v5, v6, v9

    if-ne v5, v3, :cond_8

    aget v3, v6, v14

    iget v5, v2, Lcom/ahsim/demulation/RazorTickEvidence729;->after:I

    if-ne v3, v5, :cond_9

    .line 48
    :cond_8
    :goto_3
    new-instance v3, Lcom/ahsim/demulation/RazorTickEvidence729;

    invoke-direct {v3, v6}, Lcom/ahsim/demulation/RazorTickEvidence729;-><init>([I)V

    return-object v3

    .line 46
    :cond_9
    new-instance v3, Ljava/io/IOException;

    const-string v5, "729 cross-pass continuity mismatch"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 35
    :cond_a
    new-instance v3, Ljava/io/IOException;

    const-string v5, "729 evidence consistency failed"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 21
    .end local v4    # "i":I
    .end local v6    # "p":[I
    :cond_b
    new-instance v3, Ljava/io/IOException;

    const-string v4, "729 evidence missing or malformed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
