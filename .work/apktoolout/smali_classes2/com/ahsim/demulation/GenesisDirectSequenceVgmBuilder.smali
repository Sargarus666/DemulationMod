.class final Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;
.super Ljava/lang/Object;
.source "GenesisDirectSequenceVgmBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;
    }
.end annotation


# static fields
.field private static final MAX_DRIVER_TICKS:I = 0x4650


# instance fields
.field private final cache:[Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;

.field private final data:Lcom/ahsim/demulation/GenesisGemsSfxData;

.field private final source:Lcom/ahsim/demulation/GenesisAudioSource;


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/GenesisAudioSource;Lcom/ahsim/demulation/GenesisGemsSfxData;)V
    .locals 1
    .param p1, "source"    # Lcom/ahsim/demulation/GenesisAudioSource;
    .param p2, "data"    # Lcom/ahsim/demulation/GenesisGemsSfxData;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;->source:Lcom/ahsim/demulation/GenesisAudioSource;

    .line 42
    iput-object p2, p0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    .line 43
    invoke-virtual {p2}, Lcom/ahsim/demulation/GenesisGemsSfxData;->sequenceCount()I

    move-result v0

    new-array v0, v0, [Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;->cache:[Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;

    .line 44
    return-void
.end method

.method constructor <init>([BLcom/ahsim/demulation/GenesisGemsSfxData;)V
    .locals 1
    .param p1, "rom"    # [B
    .param p2, "data"    # Lcom/ahsim/demulation/GenesisGemsSfxData;

    .line 37
    invoke-static {p1}, Lcom/ahsim/demulation/GenesisAudioSource;->fromRom([B)Lcom/ahsim/demulation/GenesisAudioSource;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;-><init>(Lcom/ahsim/demulation/GenesisAudioSource;Lcom/ahsim/demulation/GenesisGemsSfxData;)V

    .line 38
    return-void
.end method


# virtual methods
.method declared-synchronized build(I)Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;
    .locals 12
    .param p1, "sequence"    # I

    monitor-enter p0

    .line 47
    const/4 v0, 0x0

    if-ltz p1, :cond_6

    :try_start_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;->cache:[Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;

    array-length v1, v1

    if-lt p1, v1, :cond_0

    goto :goto_3

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;->cache:[Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .local v1, "cached":Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;
    if-eqz v1, :cond_1

    monitor-exit p0

    return-object v1

    .line 50
    :cond_1
    :try_start_1
    new-instance v2, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    invoke-direct {v2, v3}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;-><init>(Lcom/ahsim/demulation/GenesisGemsSfxData;)V

    .line 51
    .local v2, "hw":Lcom/ahsim/demulation/GenesisGameplayVgmHardware;
    new-instance v3, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;->source:Lcom/ahsim/demulation/GenesisAudioSource;

    iget-object v5, p0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    invoke-direct {v3, v4, v5, v2}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;-><init>(Lcom/ahsim/demulation/GenesisAudioSource;Lcom/ahsim/demulation/GenesisGemsSfxData;Lcom/ahsim/demulation/GenesisGemsHardware;)V

    .line 52
    .local v3, "seq":Lcom/ahsim/demulation/GenesisGemsMusicSequencer;
    invoke-virtual {v3, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->startDirectSequenceForDiagnostics(I)V

    .line 53
    const/4 v4, 0x0

    move v7, v4

    .line 54
    .local v7, "ticks":I
    :goto_0
    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->needsGameplayRequest()Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x4650

    if-ge v7, v4, :cond_2

    .line 55
    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->driverTick60Hz()V

    .line 56
    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->driverTick()V

    .line 57
    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->endFrame()V

    .line 58
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 60
    .end local p0    # "this":Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;
    :cond_2
    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->needsGameplayRequest()Z

    move-result v4

    if-eqz v4, :cond_5

    if-gtz v7, :cond_3

    goto :goto_2

    .line 61
    :cond_3
    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->sawInfiniteLoopForDiagnostics()Z

    move-result v8

    .line 62
    .local v8, "loop":Z
    if-eqz v8, :cond_4

    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->markedLoopFrameForDiagnostics()J

    move-result-wide v4

    goto :goto_1

    :cond_4
    const-wide/16 v4, -0x1

    :goto_1
    move-wide v9, v4

    .line 63
    .local v9, "loopFrame":J
    invoke-virtual {v2, v8}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->toVgmBytesMarkedLoop(Z)[B

    move-result-object v6

    .line 64
    .local v6, "vgm":[B
    new-instance v5, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;

    .line 65
    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->capturedDacEventsForDiagnostics()[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;

    move-result-object v11

    invoke-direct/range {v5 .. v11}, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;-><init>([BIZJ[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;)V

    .line 66
    .local v5, "built":Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;->cache:[Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;

    aput-object v5, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    monitor-exit p0

    return-object v5

    .line 60
    .end local v5    # "built":Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;
    .end local v6    # "vgm":[B
    .end local v8    # "loop":Z
    .end local v9    # "loopFrame":J
    :cond_5
    :goto_2
    monitor-exit p0

    return-object v0

    .line 46
    .end local v1    # "cached":Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;
    .end local v2    # "hw":Lcom/ahsim/demulation/GenesisGameplayVgmHardware;
    .end local v3    # "seq":Lcom/ahsim/demulation/GenesisGemsMusicSequencer;
    .end local v7    # "ticks":I
    .end local p1    # "sequence":I
    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 47
    .restart local p1    # "sequence":I
    :cond_6
    :goto_3
    monitor-exit p0

    return-object v0
.end method
