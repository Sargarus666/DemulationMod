.class final Lcom/ahsim/demulation/RazorCampaignSessionGuard;
.super Ljava/lang/Object;
.source "RazorCampaignSessionGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;
    }
.end annotation


# instance fields
.field private baseline:[I

.field private final gridSide:I

.field private final height:I

.field private final house:I

.field private lastRead:I

.field private final mission:I

.field private final side:I

.field private final storedCells:I

.field private final structures:I

.field private final teams:I

.field private final units:I

.field private final width:I


# direct methods
.method constructor <init>(IIIIIIIII)V
    .locals 4
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .param p3, "side"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "units"    # I
    .param p7, "structures"    # I
    .param p8, "teams"    # I
    .param p9, "cells"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    if-ltz p1, :cond_4

    const/4 v0, 0x5

    if-ge p1, v0, :cond_4

    const/4 v0, 0x1

    if-lt p2, v0, :cond_4

    const/16 v1, 0x9

    if-gt p2, v1, :cond_4

    const/16 v1, 0x20

    const/16 v2, 0x40

    const/16 v3, 0x80

    if-eq p3, v1, :cond_0

    if-eq p3, v2, :cond_0

    if-ne p3, v3, :cond_4

    :cond_0
    mul-int v1, p3, p3

    if-ne p9, v1, :cond_4

    if-lt p4, v0, :cond_4

    .line 17
    if-ne p3, v3, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-gt p4, v1, :cond_4

    if-lt p5, v0, :cond_4

    .line 18
    if-ne p3, v3, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-gt p5, v0, :cond_4

    if-ltz p6, :cond_4

    if-gt p6, v3, :cond_4

    if-ltz p7, :cond_4

    const/16 v0, 0x400

    if-gt p7, v0, :cond_4

    if-ltz p8, :cond_4

    if-gt p8, v2, :cond_4

    .line 21
    iput p1, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->house:I

    iput p2, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->mission:I

    iput p3, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->side:I

    .line 22
    iput p4, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->width:I

    iput p5, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->height:I

    .line 23
    iput p6, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->units:I

    iput p7, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->structures:I

    iput p8, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->teams:I

    .line 24
    iput p9, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->storedCells:I

    if-ne p3, v3, :cond_3

    move v2, v3

    :cond_3
    iput v2, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->gridSide:I

    .line 25
    return-void

    .line 20
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid authenticated Razor mission geometry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method declared-synchronized accept([I)Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;
    .locals 21
    .param p1, "w"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 41
    if-eqz v0, :cond_4

    :try_start_0
    array-length v2, v0

    const/16 v3, 0x20

    if-ne v2, v3, :cond_4

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    aget v3, v0, v4

    if-nez v3, :cond_4

    const/4 v3, 0x2

    aget v3, v0, v3

    iget v5, v1, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->house:I

    if-ne v3, v5, :cond_4

    const/4 v3, 0x3

    aget v5, v0, v3

    iget v6, v1, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->mission:I

    if-ne v5, v6, :cond_4

    const/4 v5, 0x4

    aget v6, v0, v5

    iget v7, v1, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->gridSide:I

    if-ne v6, v7, :cond_4

    const/4 v6, 0x5

    aget v6, v0, v6

    iget v7, v1, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->side:I

    if-ne v6, v7, :cond_4

    const/4 v6, 0x6

    aget v6, v0, v6

    iget v7, v1, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->width:I

    shl-int/lit8 v7, v7, 0x10

    iget v8, v1, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->height:I

    or-int/2addr v7, v8

    if-ne v6, v7, :cond_4

    const/4 v6, 0x7

    aget v6, v0, v6

    iget v7, v1, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->units:I

    if-ne v6, v7, :cond_4

    const/16 v6, 0x8

    aget v7, v0, v6

    if-ltz v7, :cond_4

    const/16 v7, 0x9

    aget v8, v0, v7

    if-ltz v8, :cond_4

    aget v8, v0, v6

    aget v9, v0, v7

    add-int/2addr v8, v9

    iget v9, v1, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->structures:I

    if-ne v8, v9, :cond_4

    const/16 v8, 0xa

    aget v8, v0, v8

    iget v9, v1, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->teams:I

    if-ne v8, v9, :cond_4

    const/16 v8, 0x12

    aget v8, v0, v8

    iget v9, v1, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->storedCells:I

    if-ne v8, v9, :cond_4

    const/16 v8, 0x13

    aget v9, v0, v8

    iget v10, v1, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->gridSide:I

    iget v11, v1, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->gridSide:I

    mul-int/2addr v10, v11

    iget v11, v1, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->storedCells:I

    sub-int/2addr v10, v11

    if-ne v9, v10, :cond_4

    const/16 v9, 0x1a

    aget v10, v0, v9

    if-ne v10, v4, :cond_4

    const/16 v4, 0x1b

    aget v10, v0, v4

    iget v11, v1, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->lastRead:I

    if-le v10, v11, :cond_4

    const/16 v10, 0x1c

    aget v10, v0, v10

    .line 48
    aget v11, v0, v8

    if-nez v11, :cond_0

    move v2, v5

    :cond_0
    or-int/2addr v2, v3

    if-ne v10, v2, :cond_4

    const/16 v2, 0x1d

    aget v3, v0, v2

    const/16 v5, 0x3f

    if-ne v3, v5, :cond_4

    const/16 v3, 0x1e

    aget v5, v0, v3

    if-nez v5, :cond_4

    const/16 v5, 0x1f

    aget v5, v0, v5

    if-nez v5, :cond_4

    .line 51
    iget-object v5, v1, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->baseline:[I

    if-eqz v5, :cond_3

    .line 52
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v9, :cond_2

    aget v10, v0, v5

    iget-object v11, v1, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->baseline:[I

    aget v11, v11, v5

    if-ne v10, v11, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 53
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unauthorized change of native Razor world"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    .end local v5    # "i":I
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignSessionGuard;
    :cond_2
    goto :goto_1

    .line 54
    :cond_3
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    iput-object v5, v1, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->baseline:[I

    .line 55
    :goto_1
    aget v5, v0, v4

    iput v5, v1, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->lastRead:I

    .line 56
    new-instance v9, Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;

    iget v10, v1, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->house:I

    iget v11, v1, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->mission:I

    iget v12, v1, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->gridSide:I

    iget v13, v1, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->units:I

    aget v14, v0, v6

    aget v15, v0, v7

    iget v5, v1, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->storedCells:I

    aget v17, v0, v8

    aget v18, v0, v4

    aget v19, v0, v3

    aget v20, v0, v2

    move/from16 v16, v5

    invoke-direct/range {v9 .. v20}, Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;-><init>(IIIIIIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v9

    .line 50
    :cond_4
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Razor native world state/capability gate mismatch"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 40
    .end local p1    # "w":[I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method buildingCount()I
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->baseline:[I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->baseline:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method declared-synchronized sameSourceHashes(III)Z
    .locals 2
    .param p1, "mapHash"    # I
    .param p2, "sceneHash"    # I
    .param p3, "objectHash"    # I

    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->baseline:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->baseline:[I

    const/16 v1, 0x15

    aget v0, v0, v1

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->baseline:[I

    const/16 v1, 0x16

    aget v0, v0, v1

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->baseline:[I

    const/16 v1, 0x14

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignSessionGuard;
    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 35
    .end local p1    # "mapHash":I
    .end local p2    # "sceneHash":I
    .end local p3    # "objectHash":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method sourceHashes()[I
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->baseline:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->baseline:[I

    const/16 v2, 0x15

    aget v1, v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->baseline:[I

    const/16 v2, 0x16

    aget v1, v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v1, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->baseline:[I

    const/16 v2, 0x14

    aget v1, v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 32
    :goto_0
    return-object v0
.end method

.method unitCount()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->units:I

    return v0
.end method

.method worldHeight()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->height:I

    return v0
.end method

.method worldStride()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->gridSide:I

    return v0
.end method

.method worldWidth()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->width:I

    return v0
.end method
