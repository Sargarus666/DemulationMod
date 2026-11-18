.class public final Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
.super Ljava/lang/Object;
.source "RazorCampaignMapSnapshot559.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;,
        Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    }
.end annotation


# static fields
.field public static final FIELDS:I = 0x6

.field public static final HEADER:I = 0x14


# instance fields
.field public final activeUnit:I

.field public final buildings:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;

.field public final gameTicks:I

.field public final groundRecords:I

.field public final height:I

.field public final house:I

.field public final mission:I

.field public final orderSteps:I

.field public final steps:I

.field public final stride:I

.field public final targetX:I

.field public final targetY:I

.field public final units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

.field public final width:I


# direct methods
.method private constructor <init>([III)V
    .locals 4
    .param p1, "w"    # [I
    .param p2, "unitCount"    # I
    .param p3, "buildingCount"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->house:I

    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->mission:I

    const/4 v0, 0x4

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->width:I

    const/4 v0, 0x5

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->height:I

    const/4 v0, 0x6

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->stride:I

    .line 33
    const/16 v0, 0x9

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->groundRecords:I

    const/16 v0, 0xa

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->steps:I

    const/16 v0, 0xb

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->orderSteps:I

    .line 34
    const/16 v0, 0xc

    aget v0, p1, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->activeUnit:I

    const/16 v0, 0xd

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->targetX:I

    const/16 v0, 0xe

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->targetY:I

    const/16 v0, 0xf

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->gameTicks:I

    .line 35
    new-array v0, p2, [Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    iput-object v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    new-array v0, p3, [Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;

    iput-object v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->buildings:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;

    .line 36
    const/16 v0, 0x14

    .line 37
    .local v0, "at":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    new-instance v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    invoke-direct {v3, p1, v0}, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;-><init>([II)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x6

    goto :goto_0

    .line 38
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, p3, :cond_1

    iget-object v2, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->buildings:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;

    new-instance v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;

    invoke-direct {v3, p1, v0}, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;-><init>([II)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x6

    goto :goto_1

    .line 39
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method static parse([IIIIIIIIIIILcom/ahsim/demulation/RazorCampaignMapSnapshot559;)Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .locals 21
    .param p0, "w"    # [I
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .param p3, "unitCount"    # I
    .param p4, "buildingCount"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "stride"    # I
    .param p8, "mapHash"    # I
    .param p9, "sceneHash"    # I
    .param p10, "objectHash"    # I
    .param p11, "previous"    # Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v4, p11

    if-eqz v0, :cond_e

    array-length v5, v0

    const/16 v6, 0x14

    if-lt v5, v6, :cond_e

    const/16 v5, 0x8

    aget v7, v0, v5

    move/from16 v8, p4

    if-lt v7, v8, :cond_c

    aget v7, v0, v5

    const/16 v9, 0x80

    if-gt v7, v9, :cond_c

    array-length v7, v0

    aget v9, v0, v5

    add-int/2addr v9, v1

    const/4 v10, 0x6

    mul-int/2addr v9, v10

    add-int/2addr v9, v6

    if-ne v7, v9, :cond_c

    const/4 v7, 0x0

    aget v7, v0, v7

    const/16 v9, 0x22f

    if-ne v7, v9, :cond_c

    const/4 v7, 0x1

    aget v9, v0, v7

    if-ne v9, v7, :cond_c

    const/4 v7, 0x2

    aget v7, v0, v7

    move/from16 v9, p1

    if-ne v7, v9, :cond_d

    const/4 v7, 0x3

    aget v7, v0, v7

    move/from16 v11, p2

    if-ne v7, v11, :cond_f

    const/4 v7, 0x4

    aget v7, v0, v7

    if-ne v7, v2, :cond_f

    const/4 v7, 0x5

    aget v12, v0, v7

    if-ne v12, v3, :cond_f

    aget v12, v0, v10

    move/from16 v13, p7

    if-ne v12, v13, :cond_10

    const/4 v12, 0x7

    aget v12, v0, v12

    if-ne v12, v1, :cond_10

    const/16 v12, 0x9

    aget v12, v0, v12

    if-ltz v12, :cond_10

    const/16 v12, 0xa

    aget v14, v0, v12

    if-ltz v14, :cond_10

    aget v14, v0, v12

    const v15, 0xf4240

    if-gt v14, v15, :cond_10

    const/16 v14, 0xb

    aget v16, v0, v14

    if-ltz v16, :cond_10

    move/from16 v16, v5

    aget v5, v0, v14

    move/from16 v17, v6

    aget v6, v0, v12

    if-gt v5, v6, :cond_10

    const/16 v5, 0xc

    aget v6, v0, v5

    if-ltz v6, :cond_10

    aget v6, v0, v5

    if-gt v6, v1, :cond_10

    aget v6, v0, v5

    const/16 v18, 0xe

    const/16 v19, 0xd

    if-eqz v6, :cond_1

    aget v6, v0, v19

    if-ltz v6, :cond_0

    aget v6, v0, v19

    if-ge v6, v2, :cond_0

    aget v6, v0, v18

    if-ltz v6, :cond_0

    aget v6, v0, v18

    if-ge v6, v3, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v5, p8

    move/from16 v12, p9

    move/from16 v14, p10

    goto/16 :goto_5

    :cond_1
    :goto_0
    aget v5, v0, v5

    if-nez v5, :cond_2

    aget v5, v0, v19

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    aget v5, v0, v18

    if-ne v5, v6, :cond_0

    :cond_2
    const/16 v5, 0xf

    aget v6, v0, v5

    if-nez v6, :cond_10

    const/16 v6, 0x10

    aget v6, v0, v6

    move/from16 v18, v5

    move/from16 v5, p8

    if-ne v6, v5, :cond_11

    const/16 v6, 0x11

    aget v6, v0, v6

    move/from16 v19, v12

    move/from16 v12, p9

    if-ne v6, v12, :cond_12

    const/16 v6, 0x12

    aget v6, v0, v6

    move/from16 v20, v14

    move/from16 v14, p10

    if-ne v6, v14, :cond_13

    const/16 v6, 0x13

    aget v15, v0, v6

    if-ne v15, v10, :cond_13

    .line 57
    const/16 v10, 0x14

    .line 58
    .local v10, "at":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    if-ge v15, v1, :cond_4

    .line 59
    aget v6, v0, v10

    if-ne v6, v15, :cond_3

    add-int/lit8 v6, v10, 0x1

    aget v6, v0, v6

    if-ltz v6, :cond_3

    add-int/lit8 v6, v10, 0x1

    aget v6, v0, v6

    if-ge v6, v7, :cond_3

    add-int/lit8 v6, v10, 0x2

    aget v6, v0, v6

    if-ltz v6, :cond_3

    add-int/lit8 v6, v10, 0x2

    aget v6, v0, v6

    const/16 v7, 0x20

    if-ge v6, v7, :cond_3

    add-int/lit8 v6, v10, 0x3

    aget v6, v0, v6

    if-ltz v6, :cond_3

    add-int/lit8 v6, v10, 0x3

    aget v6, v0, v6

    if-ge v6, v2, :cond_3

    add-int/lit8 v6, v10, 0x4

    aget v6, v0, v6

    if-ltz v6, :cond_3

    add-int/lit8 v6, v10, 0x4

    aget v6, v0, v6

    if-ge v6, v3, :cond_3

    add-int/lit8 v6, v10, 0x5

    aget v6, v0, v6

    if-ltz v6, :cond_3

    add-int/lit8 v6, v10, 0x5

    aget v6, v0, v6

    const/16 v7, 0x1ff

    if-gt v6, v7, :cond_3

    add-int/lit8 v6, v10, 0x5

    aget v6, v0, v6

    and-int/lit16 v6, v6, -0x200

    if-nez v6, :cond_3

    .line 58
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v10, v10, 0x6

    const/16 v6, 0x13

    const/4 v7, 0x5

    goto :goto_1

    .line 64
    :cond_3
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Razor map unit record out of bounds"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 66
    .end local v15    # "i":I
    :cond_4
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    aget v7, v0, v16

    if-ge v6, v7, :cond_6

    .line 67
    aget v7, v0, v10

    if-ne v7, v6, :cond_5

    add-int/lit8 v7, v10, 0x1

    aget v7, v0, v7

    if-ltz v7, :cond_5

    add-int/lit8 v7, v10, 0x1

    aget v7, v0, v7

    const/4 v15, 0x5

    if-ge v7, v15, :cond_5

    add-int/lit8 v7, v10, 0x2

    aget v7, v0, v7

    if-ltz v7, :cond_5

    add-int/lit8 v7, v10, 0x2

    aget v7, v0, v7

    const/16 v15, 0x13

    if-ge v7, v15, :cond_5

    add-int/lit8 v7, v10, 0x3

    aget v7, v0, v7

    if-ltz v7, :cond_5

    add-int/lit8 v7, v10, 0x3

    aget v7, v0, v7

    if-ge v7, v2, :cond_5

    add-int/lit8 v7, v10, 0x4

    aget v7, v0, v7

    if-ltz v7, :cond_5

    add-int/lit8 v7, v10, 0x4

    aget v7, v0, v7

    if-ge v7, v3, :cond_5

    add-int/lit8 v7, v10, 0x5

    aget v7, v0, v7

    if-nez v7, :cond_5

    .line 66
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v10, v10, 0x6

    goto :goto_2

    .line 70
    :cond_5
    new-instance v7, Ljava/io/IOException;

    const-string v15, "Razor map building record out of bounds"

    invoke-direct {v7, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 72
    .end local v6    # "i":I
    :cond_6
    if-eqz v4, :cond_b

    .line 73
    aget v6, v0, v19

    iget v7, v4, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->steps:I

    if-lt v6, v7, :cond_a

    aget v6, v0, v20

    iget v7, v4, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->orderSteps:I

    if-lt v6, v7, :cond_a

    aget v6, v0, v18

    iget v7, v4, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->gameTicks:I

    if-ne v6, v7, :cond_a

    aget v6, v0, v19

    iget v7, v4, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->steps:I

    sub-int/2addr v6, v7

    const v7, 0xf4240

    if-gt v6, v7, :cond_a

    .line 77
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    if-ge v6, v1, :cond_b

    .line 78
    mul-int/lit8 v7, v6, 0x6

    add-int/lit8 v7, v7, 0x14

    .line 79
    .local v7, "p":I
    iget-object v15, v4, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    aget-object v15, v15, v6

    .line 80
    .local v15, "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    add-int/lit8 v18, v7, 0x1

    aget v2, v0, v18

    iget v3, v15, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->owner:I

    if-ne v2, v3, :cond_9

    add-int/lit8 v2, v7, 0x2

    aget v2, v0, v2

    iget v3, v15, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    if-ne v2, v3, :cond_9

    add-int/lit8 v2, v7, 0x5

    aget v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    iget v3, v15, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->sourceTag:I

    if-ne v2, v3, :cond_9

    iget-boolean v2, v15, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->retired:Z

    if-eqz v2, :cond_7

    add-int/lit8 v2, v7, 0x5

    aget v2, v0, v2

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_9

    :cond_7
    aget v2, v0, v19

    iget v3, v4, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->steps:I

    if-ne v2, v3, :cond_8

    add-int/lit8 v2, v7, 0x3

    aget v2, v0, v2

    iget v3, v15, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->x:I

    if-ne v2, v3, :cond_9

    add-int/lit8 v2, v7, 0x4

    aget v2, v0, v2

    iget v3, v15, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->y:I

    if-ne v2, v3, :cond_9

    .line 77
    .end local v7    # "p":I
    .end local v15    # "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    :cond_8
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, p5

    move/from16 v3, p6

    goto :goto_3

    .line 84
    .restart local v7    # "p":I
    .restart local v15    # "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    :cond_9
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Razor map immutable identity or position changed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    .end local v6    # "i":I
    .end local v7    # "p":I
    .end local v15    # "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    :cond_a
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Razor map snapshot counter regressed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_b
    new-instance v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    aget v3, v0, v16

    invoke-direct {v2, v0, v1, v3}, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;-><init>([III)V

    return-object v2

    .line 44
    .end local v10    # "at":I
    :cond_c
    move/from16 v9, p1

    :cond_d
    move/from16 v11, p2

    goto :goto_4

    :cond_e
    move/from16 v9, p1

    move/from16 v11, p2

    move/from16 v8, p4

    :cond_f
    :goto_4
    move/from16 v13, p7

    :cond_10
    move/from16 v5, p8

    :cond_11
    move/from16 v12, p9

    :cond_12
    move/from16 v14, p10

    .line 56
    :cond_13
    :goto_5
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid or unrelated native Razor map frame"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public unitAt(II)Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 90
    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 91
    iget-object v1, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->retired:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->x:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->y:I

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    aget-object v1, v1, v0

    return-object v1

    .line 90
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 92
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
