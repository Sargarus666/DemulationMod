.class final Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;
.super Ljava/lang/Object;
.source "GenesisGameplayVgmBuilder.java"


# static fields
.field private static final MAX_DRIVER_TICKS:I = 0x3840


# instance fields
.field private final cache:[[B

.field private final data:Lcom/ahsim/demulation/GenesisGemsSfxData;

.field private final frontendCache:[[B

.field private final source:Lcom/ahsim/demulation/GenesisAudioSource;


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/GenesisAudioSource;Lcom/ahsim/demulation/GenesisGemsSfxData;)V
    .locals 1
    .param p1, "source"    # Lcom/ahsim/demulation/GenesisAudioSource;
    .param p2, "data"    # Lcom/ahsim/demulation/GenesisGemsSfxData;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0xd

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;->cache:[[B

    .line 12
    const/16 v0, 0x27

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;->frontendCache:[[B

    .line 19
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;->source:Lcom/ahsim/demulation/GenesisAudioSource;

    .line 20
    iput-object p2, p0, Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    .line 21
    return-void
.end method

.method constructor <init>([BLcom/ahsim/demulation/GenesisGemsSfxData;)V
    .locals 1
    .param p1, "rom"    # [B
    .param p2, "data"    # Lcom/ahsim/demulation/GenesisGemsSfxData;

    .line 15
    invoke-static {p1}, Lcom/ahsim/demulation/GenesisAudioSource;->fromRom([B)Lcom/ahsim/demulation/GenesisAudioSource;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;-><init>(Lcom/ahsim/demulation/GenesisAudioSource;Lcom/ahsim/demulation/GenesisGemsSfxData;)V

    .line 16
    return-void
.end method


# virtual methods
.method declared-synchronized build(I)[B
    .locals 6
    .param p1, "request"    # I

    monitor-enter p0

    .line 46
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-lt p1, v0, :cond_5

    const/16 v0, 0xc

    if-le p1, v0, :cond_0

    goto :goto_2

    .line 48
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;->cache:[[B

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .local v0, "cached":[B
    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    .line 51
    :cond_1
    :try_start_1
    new-instance v2, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    invoke-direct {v2, v3}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;-><init>(Lcom/ahsim/demulation/GenesisGemsSfxData;)V

    .line 52
    .local v2, "hw":Lcom/ahsim/demulation/GenesisGameplayVgmHardware;
    new-instance v3, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;->source:Lcom/ahsim/demulation/GenesisAudioSource;

    iget-object v5, p0, Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    invoke-direct {v3, v4, v5, v2}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;-><init>(Lcom/ahsim/demulation/GenesisAudioSource;Lcom/ahsim/demulation/GenesisGemsSfxData;Lcom/ahsim/demulation/GenesisGemsHardware;)V

    .line 53
    .local v3, "seq":Lcom/ahsim/demulation/GenesisGemsMusicSequencer;
    invoke-virtual {v3, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->startRequestForDiagnostics(I)V

    .line 54
    const/4 v4, 0x0

    .line 55
    .local v4, "ticks":I
    :goto_0
    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->needsGameplayRequest()Z

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0x3840

    if-ge v4, v5, :cond_2

    .line 58
    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->driverTick60Hz()V

    .line 59
    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->driverTick()V

    .line 60
    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->endFrame()V

    .line 61
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 63
    .end local p0    # "this":Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;
    :cond_2
    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->needsGameplayRequest()Z

    move-result v5

    if-eqz v5, :cond_4

    if-gtz v4, :cond_3

    goto :goto_1

    .line 64
    :cond_3
    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->toVgmBytes()[B

    move-result-object v1

    .line 65
    .local v1, "built":[B
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;->cache:[[B

    aput-object v1, v5, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    monitor-exit p0

    return-object v1

    .line 63
    .end local v1    # "built":[B
    :cond_4
    :goto_1
    monitor-exit p0

    return-object v1

    .line 45
    .end local v0    # "cached":[B
    .end local v2    # "hw":Lcom/ahsim/demulation/GenesisGameplayVgmHardware;
    .end local v3    # "seq":Lcom/ahsim/demulation/GenesisGemsMusicSequencer;
    .end local v4    # "ticks":I
    .end local p1    # "request":I
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 47
    .restart local p1    # "request":I
    :cond_5
    :goto_2
    monitor-exit p0

    return-object v1
.end method

.method declared-synchronized buildFrontend(I)[B
    .locals 6
    .param p1, "request"    # I

    monitor-enter p0

    .line 24
    const/4 v0, 0x0

    if-ltz p1, :cond_5

    const/16 v1, 0x26

    if-le p1, v1, :cond_0

    goto :goto_2

    .line 26
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;->frontendCache:[[B

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .local v1, "cached":[B
    if-eqz v1, :cond_1

    monitor-exit p0

    return-object v1

    .line 29
    :cond_1
    :try_start_1
    new-instance v2, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    invoke-direct {v2, v3}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;-><init>(Lcom/ahsim/demulation/GenesisGemsSfxData;)V

    .line 30
    .local v2, "hw":Lcom/ahsim/demulation/GenesisGameplayVgmHardware;
    new-instance v3, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;->source:Lcom/ahsim/demulation/GenesisAudioSource;

    iget-object v5, p0, Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    invoke-direct {v3, v4, v5, v2}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;-><init>(Lcom/ahsim/demulation/GenesisAudioSource;Lcom/ahsim/demulation/GenesisGemsSfxData;Lcom/ahsim/demulation/GenesisGemsHardware;)V

    .line 31
    .local v3, "seq":Lcom/ahsim/demulation/GenesisGemsMusicSequencer;
    invoke-virtual {v3, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->startOriginalFrontendRequestForDiagnostics(I)V

    .line 32
    const/4 v4, 0x0

    .line 33
    .local v4, "ticks":I
    :goto_0
    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->needsGameplayRequest()Z

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0x3840

    if-ge v4, v5, :cond_2

    .line 34
    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->driverTick60Hz()V

    .line 35
    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->driverTick()V

    .line 36
    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->endFrame()V

    .line 37
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 39
    .end local p0    # "this":Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;
    :cond_2
    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->needsGameplayRequest()Z

    move-result v5

    if-eqz v5, :cond_4

    if-gtz v4, :cond_3

    goto :goto_1

    .line 40
    :cond_3
    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->sawInfiniteLoopForDiagnostics()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->toVgmBytes(Z)[B

    move-result-object v0

    .line 41
    .local v0, "built":[B
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;->frontendCache:[[B

    aput-object v0, v5, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    monitor-exit p0

    return-object v0

    .line 39
    .end local v0    # "built":[B
    :cond_4
    :goto_1
    monitor-exit p0

    return-object v0

    .line 23
    .end local v1    # "cached":[B
    .end local v2    # "hw":Lcom/ahsim/demulation/GenesisGameplayVgmHardware;
    .end local v3    # "seq":Lcom/ahsim/demulation/GenesisGemsMusicSequencer;
    .end local v4    # "ticks":I
    .end local p1    # "request":I
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 25
    .restart local p1    # "request":I
    :cond_5
    :goto_2
    monitor-exit p0

    return-object v0
.end method
