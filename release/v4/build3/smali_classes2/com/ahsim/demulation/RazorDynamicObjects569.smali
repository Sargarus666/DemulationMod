.class public final Lcom/ahsim/demulation/RazorDynamicObjects569;
.super Ljava/lang/Object;
.source "RazorDynamicObjects569.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;
    }
.end annotation


# static fields
.field public static final HEADER:I = 0x7

.field public static final PENDING:I = 0x1

.field public static final PLACED:I = 0x2

.field public static final STRIDE:I = 0x8


# instance fields
.field public final entries:[Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;

.field public final pending:I

.field public final placed:I


# direct methods
.method private constructor <init>([I)V
    .locals 4
    .param p1, "data"    # [I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorDynamicObjects569;->pending:I

    const/4 v0, 0x4

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorDynamicObjects569;->placed:I

    const/4 v0, 0x2

    aget v0, p1, v0

    new-array v0, v0, [Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;

    iput-object v0, p0, Lcom/ahsim/demulation/RazorDynamicObjects569;->entries:[Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;

    .line 21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ahsim/demulation/RazorDynamicObjects569;->entries:[Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/RazorDynamicObjects569;->entries:[Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;

    new-instance v2, Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x7

    invoke-direct {v2, p1, v3}, Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;-><init>([II)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static parse([ILcom/ahsim/demulation/RazorCampaignMapSnapshot559;)Lcom/ahsim/demulation/RazorDynamicObjects569;
    .locals 22
    .param p0, "data"    # [I
    .param p1, "frame"    # Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_f

    if-eqz v1, :cond_f

    array-length v2, v0

    const/4 v3, 0x7

    if-lt v2, v3, :cond_f

    const/4 v2, 0x0

    aget v4, v0, v2

    const/16 v5, 0x239

    if-ne v4, v5, :cond_f

    const/4 v4, 0x1

    aget v5, v0, v4

    iget-object v6, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v6, v6

    if-ne v5, v6, :cond_f

    const/4 v5, 0x2

    aget v6, v0, v5

    if-ltz v6, :cond_f

    aget v6, v0, v5

    aget v7, v0, v4

    const/16 v8, 0x100

    rsub-int v7, v7, 0x100

    if-gt v6, v7, :cond_f

    const/4 v6, 0x3

    aget v7, v0, v6

    if-ltz v7, :cond_f

    const/4 v7, 0x4

    aget v9, v0, v7

    if-ltz v9, :cond_f

    aget v9, v0, v6

    aget v10, v0, v7

    add-int/2addr v9, v10

    aget v10, v0, v5

    if-ne v9, v10, :cond_f

    const/4 v9, 0x5

    aget v10, v0, v9

    if-nez v10, :cond_f

    const/4 v10, 0x6

    aget v10, v0, v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_f

    array-length v10, v0

    aget v12, v0, v5

    mul-int/2addr v12, v11

    add-int/2addr v12, v3

    if-ne v10, v12, :cond_f

    .line 32
    aget v10, v0, v4

    sub-int/2addr v10, v4

    .local v10, "previousSlot":I
    const/4 v11, 0x0

    .local v11, "countPending":I
    const/4 v12, 0x0

    .line 33
    .local v12, "countPlaced":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    aget v14, v0, v5

    if-ge v13, v14, :cond_d

    .line 34
    mul-int/lit8 v14, v13, 0x8

    add-int/2addr v14, v3

    .line 35
    .local v14, "at":I
    aget v15, v0, v14

    .local v15, "handle":I
    add-int/lit8 v16, v14, 0x1

    aget v2, v0, v16

    .local v2, "slot":I
    add-int/lit8 v16, v14, 0x2

    move/from16 v17, v3

    aget v3, v0, v16

    .line 36
    .local v3, "owner":I
    add-int/lit8 v16, v14, 0x3

    move/from16 v18, v7

    aget v7, v0, v16

    .local v7, "type":I
    add-int/lit8 v16, v14, 0x4

    aget v4, v0, v16

    .local v4, "x":I
    add-int/lit8 v16, v14, 0x5

    aget v6, v0, v16

    .line 37
    .local v6, "y":I
    add-int/lit8 v16, v14, 0x6

    aget v5, v0, v16

    .local v5, "phase":I
    add-int/lit8 v16, v14, 0x7

    aget v9, v0, v16

    .line 38
    .local v9, "provenance":I
    if-lez v15, :cond_c

    if-le v2, v10, :cond_c

    if-ge v2, v8, :cond_c

    const v16, 0xffff

    and-int v8, v15, v16

    if-ne v8, v2, :cond_c

    ushr-int/lit8 v8, v15, 0x10

    if-eqz v8, :cond_c

    if-ltz v3, :cond_c

    const/4 v8, 0x5

    if-ge v3, v8, :cond_c

    if-ltz v7, :cond_c

    const/16 v8, 0x20

    if-ge v7, v8, :cond_c

    const/4 v8, 0x2

    if-eq v9, v8, :cond_1

    const/4 v8, 0x3

    if-ne v9, v8, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v16, v2

    goto/16 :goto_7

    .line 43
    :cond_1
    :goto_1
    move v10, v2

    .line 44
    const/4 v8, 0x1

    if-ne v5, v8, :cond_3

    .line 45
    const/4 v8, -0x1

    if-ne v4, v8, :cond_2

    if-ne v6, v8, :cond_2

    .line 46
    add-int/lit8 v11, v11, 0x1

    const/4 v1, 0x2

    goto/16 :goto_6

    .line 45
    :cond_2
    new-instance v8, Ljava/io/IOException;

    move/from16 v16, v2

    .end local v2    # "slot":I
    .local v16, "slot":I
    const-string v2, "Pending object has map coordinates"

    invoke-direct {v8, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 47
    .end local v16    # "slot":I
    .restart local v2    # "slot":I
    :cond_3
    move/from16 v16, v2

    .end local v2    # "slot":I
    .restart local v16    # "slot":I
    const/4 v8, 0x2

    if-ne v5, v8, :cond_b

    .line 48
    if-ltz v4, :cond_a

    iget v2, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->width:I

    if-ge v4, v2, :cond_a

    if-ltz v6, :cond_a

    iget v2, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->height:I

    if-ge v6, v2, :cond_a

    .line 49
    invoke-virtual {v1, v4, v6}, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->unitAt(II)Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    move-result-object v2

    if-nez v2, :cond_a

    .line 51
    iget-object v2, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->buildings:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;

    array-length v8, v2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v8, :cond_6

    move/from16 v20, v1

    aget-object v1, v2, v20

    .line 52
    .local v1, "b":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    move-object/from16 v21, v2

    iget v2, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->x:I

    if-ne v2, v4, :cond_5

    iget v2, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->y:I

    if-eq v2, v6, :cond_4

    goto :goto_3

    .line 53
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v8, "Dynamic object overlaps a building"

    invoke-direct {v2, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    .end local v1    # "b":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    :cond_5
    :goto_3
    add-int/lit8 v1, v20, 0x1

    move-object/from16 v2, v21

    goto :goto_2

    .line 54
    :cond_6
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_4
    if-ge v1, v13, :cond_9

    .line 55
    mul-int/lit8 v2, v1, 0x8

    add-int/lit8 v2, v2, 0x7

    .line 56
    .local v2, "p":I
    add-int/lit8 v8, v2, 0x6

    aget v8, v0, v8

    move/from16 v20, v1

    const/4 v1, 0x2

    .end local v1    # "j":I
    .local v20, "j":I
    if-ne v8, v1, :cond_8

    add-int/lit8 v8, v2, 0x4

    aget v8, v0, v8

    if-ne v8, v4, :cond_8

    add-int/lit8 v8, v2, 0x5

    aget v8, v0, v8

    if-eq v8, v6, :cond_7

    goto :goto_5

    .line 57
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v8, "Two native units occupy the same cell"

    invoke-direct {v1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    .end local v2    # "p":I
    :cond_8
    :goto_5
    add-int/lit8 v2, v20, 0x1

    move v1, v2

    .end local v20    # "j":I
    .local v2, "j":I
    goto :goto_4

    .end local v2    # "j":I
    .restart local v1    # "j":I
    :cond_9
    move/from16 v20, v1

    const/4 v1, 0x2

    .line 59
    .end local v1    # "j":I
    add-int/lit8 v12, v12, 0x1

    .line 33
    .end local v3    # "owner":I
    .end local v4    # "x":I
    .end local v5    # "phase":I
    .end local v6    # "y":I
    .end local v7    # "type":I
    .end local v9    # "provenance":I
    .end local v14    # "at":I
    .end local v15    # "handle":I
    .end local v16    # "slot":I
    :goto_6
    add-int/lit8 v13, v13, 0x1

    move v5, v1

    move/from16 v3, v17

    move/from16 v7, v18

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x3

    const/16 v8, 0x100

    const/4 v9, 0x5

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 50
    .restart local v3    # "owner":I
    .restart local v4    # "x":I
    .restart local v5    # "phase":I
    .restart local v6    # "y":I
    .restart local v7    # "type":I
    .restart local v9    # "provenance":I
    .restart local v14    # "at":I
    .restart local v15    # "handle":I
    .restart local v16    # "slot":I
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Dynamic object overlaps a source unit"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_b
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unknown Razor lifecycle phase"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    .end local v16    # "slot":I
    .local v2, "slot":I
    :cond_c
    move/from16 v16, v2

    .line 42
    .end local v2    # "slot":I
    .restart local v16    # "slot":I
    :goto_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid Razor dynamic object identity"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    .end local v3    # "owner":I
    .end local v4    # "x":I
    .end local v5    # "phase":I
    .end local v6    # "y":I
    .end local v7    # "type":I
    .end local v9    # "provenance":I
    .end local v14    # "at":I
    .end local v15    # "handle":I
    .end local v16    # "slot":I
    :cond_d
    move/from16 v18, v7

    .line 62
    .end local v13    # "i":I
    const/16 v19, 0x3

    aget v1, v0, v19

    if-ne v11, v1, :cond_e

    aget v1, v0, v18

    if-ne v12, v1, :cond_e

    .line 64
    new-instance v1, Lcom/ahsim/demulation/RazorDynamicObjects569;

    invoke-direct {v1, v0}, Lcom/ahsim/demulation/RazorDynamicObjects569;-><init>([I)V

    return-object v1

    .line 63
    :cond_e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor lifecycle phase counts disagree"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    .end local v10    # "previousSlot":I
    .end local v11    # "countPending":I
    .end local v12    # "countPlaced":I
    :cond_f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid Razor dynamic roster metadata"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public at(II)Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 67
    iget-object v0, p0, Lcom/ahsim/demulation/RazorDynamicObjects569;->entries:[Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 68
    iget-object v1, p0, Lcom/ahsim/demulation/RazorDynamicObjects569;->entries:[Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;->phase:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/RazorDynamicObjects569;->entries:[Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;->x:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/RazorDynamicObjects569;->entries:[Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;->y:I

    if-ne v1, p2, :cond_0

    .line 69
    iget-object v1, p0, Lcom/ahsim/demulation/RazorDynamicObjects569;->entries:[Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;

    aget-object v1, v1, v0

    return-object v1

    .line 67
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 70
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
