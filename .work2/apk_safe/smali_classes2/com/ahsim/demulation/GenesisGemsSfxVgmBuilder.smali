.class final Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder;
.super Ljava/lang/Object;
.source "GenesisGemsSfxVgmBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;
    }
.end annotation


# static fields
.field private static final MAX_SFX_TICKS:I = 0x2d0

.field private static final RELEASE_TAIL_TICKS:I = 0xfe


# instance fields
.field private final cache:[[Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;

.field private final data:Lcom/ahsim/demulation/GenesisGemsSfxData;


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/GenesisGemsSfxData;)V
    .locals 4
    .param p1, "data"    # Lcom/ahsim/demulation/GenesisGemsSfxData;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    .line 32
    invoke-virtual {p1}, Lcom/ahsim/demulation/GenesisGemsSfxData;->sequenceCount()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    const/16 v3, 0x80

    aput v3, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    const-class v0, Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder;->cache:[[Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;

    .line 33
    return-void
.end method


# virtual methods
.method declared-synchronized build(I)Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;
    .locals 1
    .param p1, "sequence"    # I

    monitor-enter p0

    .line 35
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder;->build(II)Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 35
    .end local p0    # "this":Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder;
    .end local p1    # "sequence":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized build(II)Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;
    .locals 19
    .param p1, "sequence"    # I
    .param p2, "initialMasterAttenuation"    # I

    move-object/from16 v1, p0

    move/from16 v3, p1

    monitor-enter p0

    .line 38
    const/4 v0, 0x0

    if-ltz v3, :cond_14

    :try_start_0
    iget-object v2, v1, Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder;->cache:[[Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;

    array-length v2, v2

    if-lt v3, v2, :cond_0

    goto/16 :goto_a

    .line 39
    :cond_0
    const/16 v2, 0x7f

    move/from16 v8, p2

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v9, v2

    .line 40
    .local v9, "initialAtten":I
    iget-object v2, v1, Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder;->cache:[[Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;

    aget-object v2, v2, v3

    aget-object v2, v2, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v10, v2

    .line 41
    .local v10, "cached":Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;
    if-eqz v10, :cond_1

    monitor-exit p0

    return-object v10

    .line 43
    :cond_1
    :try_start_1
    iget-object v2, v1, Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    invoke-virtual {v2, v3}, Lcom/ahsim/demulation/GenesisGemsSfxData;->plan(I)Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;

    move-result-object v2

    move-object v11, v2

    .line 44
    .local v11, "plan":Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;
    if-eqz v11, :cond_13

    iget-boolean v2, v11, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->hasNonSfxTimedHardware:Z

    if-nez v2, :cond_13

    iget-boolean v2, v11, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->hasUnsupportedControl:Z

    if-nez v2, :cond_13

    iget-boolean v2, v11, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->usesFm:Z

    if-nez v2, :cond_2

    iget-boolean v2, v11, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->usesPsgTone:Z

    if-nez v2, :cond_2

    iget-boolean v2, v11, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->usesPsgNoise:Z

    if-nez v2, :cond_2

    goto/16 :goto_8

    .line 47
    .end local p0    # "this":Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder;
    :cond_2
    const-wide/16 v4, 0x0

    .line 48
    .local v4, "lastTick":J
    const/4 v0, 0x0

    .line 49
    .local v0, "priority":I
    iget-object v2, v11, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->noteEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v6, v0

    .end local v0    # "priority":I
    .local v6, "priority":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v7, 0x3

    const/4 v12, 0x2

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;

    .line 50
    .local v0, "e":Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;
    iget v13, v0, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->patchType:I

    if-eqz v13, :cond_3

    iget v13, v0, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->patchType:I

    if-eq v13, v12, :cond_3

    iget v12, v0, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->patchType:I

    if-eq v12, v7, :cond_3

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    iget-wide v12, v0, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->tick:J

    iget v7, v0, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->duration:I

    const/4 v14, 0x1

    invoke-static {v14, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-long v14, v7

    add-long/2addr v12, v14

    .line 54
    .local v12, "end":J
    cmp-long v7, v12, v4

    if-lez v7, :cond_4

    move-wide v4, v12

    .line 55
    :cond_4
    iget v7, v0, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->priority:I

    if-le v7, v6, :cond_5

    iget v7, v0, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->priority:I

    move v6, v7

    .line 56
    .end local v0    # "e":Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;
    .end local v12    # "end":J
    :cond_5
    goto :goto_0

    .line 57
    :cond_6
    iget-object v0, v11, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->controlEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide v13, v4

    .end local v4    # "lastTick":J
    .local v13, "lastTick":J
    :cond_7
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;

    .line 58
    .local v2, "e":Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;
    iget-wide v4, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;->tick:J

    cmp-long v4, v4, v13

    if-lez v4, :cond_7

    iget-wide v4, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;->tick:J

    move-wide v13, v4

    .end local v13    # "lastTick":J
    .restart local v4    # "lastTick":J
    goto :goto_1

    .line 60
    .end local v2    # "e":Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;
    .end local v4    # "lastTick":J
    .restart local v13    # "lastTick":J
    :cond_8
    const-wide/16 v4, 0xfe

    add-long/2addr v4, v13

    const-wide/16 v15, 0x2

    add-long/2addr v4, v15

    .line 61
    const-wide/16 v7, 0x1

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 60
    const-wide/16 v7, 0x2d0

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    .line 62
    .local v5, "ticks":I
    new-instance v2, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;

    iget-object v4, v1, Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    invoke-direct {v2, v4}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;-><init>(Lcom/ahsim/demulation/GenesisGemsSfxData;)V

    move-object v8, v2

    .line 63
    .local v8, "hw":Lcom/ahsim/demulation/GenesisGameplayVgmHardware;
    invoke-virtual {v8, v9}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->setMasterAttenuation(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    const/4 v2, 0x0

    .line 65
    .local v2, "noteIndex":I
    const/4 v4, 0x0

    .line 67
    .local v4, "controlIndex":I
    const/4 v7, 0x0

    move v15, v2

    move/from16 v16, v4

    .end local v2    # "noteIndex":I
    .end local v4    # "controlIndex":I
    .local v7, "tick":I
    .local v15, "noteIndex":I
    .local v16, "controlIndex":I
    :goto_2
    if-ge v7, v5, :cond_12

    .line 70
    :try_start_2
    invoke-virtual {v8}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->driverTick60Hz()V

    .line 71
    invoke-virtual {v8}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->musicSubbeat()V

    move/from16 v2, v16

    .line 73
    .end local v16    # "controlIndex":I
    .local v2, "controlIndex":I
    :goto_3
    iget-object v4, v11, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->controlEvents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_b

    .line 74
    iget-object v4, v11, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->controlEvents:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;

    .line 75
    .local v4, "e":Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;
    nop

    .restart local p0    # "this":Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder;
    iget-wide v0, v4, Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;->tick:J

    move-wide/from16 v17, v13

    .end local v13    # "lastTick":J
    .local v17, "lastTick":J
    int-to-long v12, v7

    cmp-long v0, v0, v12

    if-lez v0, :cond_9

    goto :goto_4

    .line 76
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 77
    iget-wide v0, v4, Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;->tick:J

    int-to-long v12, v7

    cmp-long v0, v0, v12

    if-nez v0, :cond_a

    iget v0, v4, Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;->control:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 78
    iget v0, v4, Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;->value:I

    invoke-virtual {v8, v0}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->setMasterAttenuation(I)V

    .line 79
    .end local v4    # "e":Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;
    .end local p0    # "this":Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder;
    :cond_a
    const/4 v12, 0x2

    move-object/from16 v1, p0

    move-wide/from16 v13, v17

    goto :goto_3

    .line 73
    .end local v17    # "lastTick":J
    .restart local v13    # "lastTick":J
    :cond_b
    move-wide/from16 v17, v13

    .line 80
    .end local v13    # "lastTick":J
    .restart local v17    # "lastTick":J
    :goto_4
    iget-object v0, v11, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->noteEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_11

    .line 81
    iget-object v0, v11, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->noteEvents:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;

    .line 82
    .restart local v0    # "e":Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;
    iget-wide v12, v0, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->tick:J

    move v4, v15

    .end local v15    # "noteIndex":I
    .local v4, "noteIndex":I
    int-to-long v14, v7

    cmp-long v12, v12, v14

    if-lez v12, :cond_c

    move v14, v2

    const/4 v2, 0x2

    const/4 v12, 0x3

    goto :goto_7

    .line 83
    :cond_c
    add-int/lit8 v15, v4, 0x1

    .line 84
    .end local v4    # "noteIndex":I
    .restart local v15    # "noteIndex":I
    iget-wide v12, v0, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->tick:J

    move v14, v2

    .end local v2    # "controlIndex":I
    .local v14, "controlIndex":I
    int-to-long v1, v7

    cmp-long v1, v12, v1

    if-nez v1, :cond_f

    iget v1, v0, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->patchType:I

    if-eqz v1, :cond_d

    iget v1, v0, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->patchType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_e

    iget v1, v0, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->patchType:I

    const/4 v12, 0x3

    if-ne v1, v12, :cond_10

    goto :goto_5

    :cond_d
    const/4 v2, 0x2

    :cond_e
    const/4 v12, 0x3

    .line 87
    :goto_5
    invoke-virtual {v8, v3, v0}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->noteOn(ILcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;)V

    goto :goto_6

    .line 84
    :cond_f
    const/4 v2, 0x2

    const/4 v12, 0x3

    .line 88
    .end local v0    # "e":Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;
    :cond_10
    :goto_6
    move v2, v14

    goto :goto_4

    .line 80
    .end local v14    # "controlIndex":I
    .restart local v2    # "controlIndex":I
    :cond_11
    move v14, v2

    move v4, v15

    const/4 v2, 0x2

    const/4 v12, 0x3

    .line 89
    .end local v2    # "controlIndex":I
    .end local v15    # "noteIndex":I
    .restart local v4    # "noteIndex":I
    .restart local v14    # "controlIndex":I
    :goto_7
    invoke-virtual {v8}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->endFrame()V

    .line 67
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move v12, v2

    move v15, v4

    move/from16 v16, v14

    move-wide/from16 v13, v17

    goto/16 :goto_2

    .end local v4    # "noteIndex":I
    .end local v14    # "controlIndex":I
    .end local v17    # "lastTick":J
    .restart local v13    # "lastTick":J
    .restart local v15    # "noteIndex":I
    .restart local v16    # "controlIndex":I
    :cond_12
    move-wide/from16 v17, v13

    .line 92
    .end local v7    # "tick":I
    .end local v13    # "lastTick":J
    .restart local v17    # "lastTick":J
    new-instance v2, Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;

    invoke-virtual {v8}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->toVgmBytes()[B

    move-result-object v4

    .line 93
    invoke-virtual {v8}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->lastHardwareWriteFrameForSfxCache()I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;-><init>(I[BIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    .local v2, "built":Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;
    move-object/from16 v1, p0

    .restart local p0    # "this":Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder;
    :try_start_3
    iget-object v0, v1, Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder;->cache:[[Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;

    aget-object v0, v0, p1

    aput-object v2, v0, v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    monitor-exit p0

    return-object v2

    .line 37
    .end local v2    # "built":Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;
    .end local v5    # "ticks":I
    .end local v6    # "priority":I
    .end local v8    # "hw":Lcom/ahsim/demulation/GenesisGameplayVgmHardware;
    .end local v9    # "initialAtten":I
    .end local v10    # "cached":Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;
    .end local v11    # "plan":Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;
    .end local v15    # "noteIndex":I
    .end local v16    # "controlIndex":I
    .end local v17    # "lastTick":J
    .end local p0    # "this":Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder;
    .end local p1    # "sequence":I
    .end local p2    # "initialMasterAttenuation":I
    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_9

    .line 45
    .restart local v9    # "initialAtten":I
    .restart local v10    # "cached":Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;
    .restart local v11    # "plan":Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;
    .restart local p1    # "sequence":I
    .restart local p2    # "initialMasterAttenuation":I
    :cond_13
    :goto_8
    monitor-exit p0

    return-object v0

    .line 37
    .end local v9    # "initialAtten":I
    .end local v10    # "cached":Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;
    .end local v11    # "plan":Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;
    .end local p1    # "sequence":I
    .end local p2    # "initialMasterAttenuation":I
    :catchall_1
    move-exception v0

    :goto_9
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 38
    .restart local p1    # "sequence":I
    .restart local p2    # "initialMasterAttenuation":I
    :cond_14
    :goto_a
    monitor-exit p0

    return-object v0
.end method
