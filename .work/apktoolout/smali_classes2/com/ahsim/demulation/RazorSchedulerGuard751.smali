.class final Lcom/ahsim/demulation/RazorSchedulerGuard751;
.super Ljava/lang/Object;
.source "RazorSchedulerGuard751.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static diagnostic([IIIII)Ljava/lang/String;
    .locals 6
    .param p0, "row"    # [I
    .param p1, "oldOrder"    # I
    .param p2, "oldExperimental"    # I
    .param p3, "oldTick"    # I
    .param p4, "oldMovedFrames"    # I

    .line 31
    const-string v0, ")"

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (null packet; previousTick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 32
    :cond_0
    array-length v1, p0

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (packetLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; previousTick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 34
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (tick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", previousTick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", movedFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", orderDelta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x7

    aget v2, p0, v2

    int-to-long v2, v2

    int-to-long v4, p1

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", experimentalDelta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    aget v2, p0, v2

    int-to-long v2, v2

    int-to-long v4, p2

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", movedFrames="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xf

    aget v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", previousMovedFrames="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", unitCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xe

    aget v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static validMovementDelta([IIIII)Z
    .locals 20
    .param p0, "row"    # [I
    .param p1, "previousOrderSteps"    # I
    .param p2, "previousExperimentalSteps"    # I
    .param p3, "previousMovedFrames"    # I
    .param p4, "unitCount"    # I

    .line 12
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x0

    if-eqz v0, :cond_9

    array-length v6, v0

    const/16 v7, 0x10

    if-ne v6, v7, :cond_9

    const/4 v6, 0x1

    if-lt v4, v6, :cond_9

    if-ltz v1, :cond_9

    if-ltz v2, :cond_9

    if-gez v3, :cond_0

    move v15, v5

    goto/16 :goto_4

    .line 15
    :cond_0
    const/4 v7, 0x2

    aget v7, v0, v7

    .line 16
    .local v7, "moved":I
    if-eqz v7, :cond_1

    if-eq v7, v6, :cond_1

    return v5

    .line 17
    :cond_1
    const/4 v8, 0x7

    aget v9, v0, v8

    int-to-long v9, v9

    int-to-long v11, v1

    sub-long/2addr v9, v11

    .line 18
    .local v9, "orderDelta":J
    const/16 v11, 0x8

    aget v11, v0, v11

    int-to-long v11, v11

    int-to-long v13, v2

    sub-long/2addr v11, v13

    .line 20
    .local v11, "experimentalDelta":J
    const-wide/16 v13, 0x0

    cmp-long v15, v9, v13

    if-ltz v15, :cond_7

    move v15, v5

    int-to-long v5, v4

    cmp-long v5, v9, v5

    if-gtz v5, :cond_8

    cmp-long v5, v11, v9

    if-eqz v5, :cond_2

    move-wide/from16 v18, v9

    goto :goto_3

    .line 22
    :cond_2
    if-nez v7, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    move v5, v15

    :goto_0
    cmp-long v6, v9, v13

    if-nez v6, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    move v6, v15

    :goto_1
    if-eq v5, v6, :cond_5

    return v15

    .line 24
    :cond_5
    const/16 v5, 0xf

    aget v6, v0, v5

    int-to-long v13, v6

    move/from16 v16, v5

    int-to-long v5, v3

    move/from16 v17, v8

    move-wide/from16 v18, v9

    .end local v9    # "orderDelta":J
    .local v18, "orderDelta":J
    int-to-long v8, v7

    add-long/2addr v5, v8

    cmp-long v5, v13, v5

    if-nez v5, :cond_6

    aget v5, v0, v16

    if-ltz v5, :cond_6

    aget v5, v0, v16

    aget v6, v0, v17

    if-gt v5, v6, :cond_6

    const/4 v5, 0x1

    goto :goto_2

    :cond_6
    move v5, v15

    :goto_2
    return v5

    .line 20
    .end local v18    # "orderDelta":J
    .restart local v9    # "orderDelta":J
    :cond_7
    move v15, v5

    :cond_8
    move-wide/from16 v18, v9

    .line 21
    .end local v9    # "orderDelta":J
    .restart local v18    # "orderDelta":J
    :goto_3
    return v15

    .line 12
    .end local v7    # "moved":I
    .end local v11    # "experimentalDelta":J
    .end local v18    # "orderDelta":J
    :cond_9
    move v15, v5

    .line 14
    :goto_4
    return v15
.end method
