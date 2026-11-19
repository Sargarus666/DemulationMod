.class final Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;
.super Ljava/lang/Object;
.source "GenesisGameplayMusicRuntime.java"


# static fields
.field private static final FRAMES_PER_DRIVER_TICK:I = 0x2df


# instance fields
.field private final builder:Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;

.field private volatile currentDirectSequence:I

.field private volatile currentRequest:I

.field private final directBuilder:Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;

.field private volatile directMode:Z

.field private frontendLooping:Z

.field private volatile frontendMode:Z

.field private volatile gameplayMode:Z

.field private final player:Lcom/ahsim/demulation/GenesisLibGmeMusic;

.field private remainingFrames:J

.field private volatile requestNeeded:Z

.field private final source:Lcom/ahsim/demulation/GenesisAudioSource;


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/GenesisAudioSource;Lcom/ahsim/demulation/GenesisGemsSfxData;)V
    .locals 1
    .param p1, "source"    # Lcom/ahsim/demulation/GenesisAudioSource;
    .param p2, "data"    # Lcom/ahsim/demulation/GenesisGemsSfxData;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/ahsim/demulation/GenesisLibGmeMusic;

    invoke-direct {v0}, Lcom/ahsim/demulation/GenesisLibGmeMusic;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->player:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->currentRequest:I

    .line 23
    iput v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->currentDirectSequence:I

    .line 31
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->source:Lcom/ahsim/demulation/GenesisAudioSource;

    .line 32
    new-instance v0, Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;

    invoke-direct {v0, p1, p2}, Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;-><init>(Lcom/ahsim/demulation/GenesisAudioSource;Lcom/ahsim/demulation/GenesisGemsSfxData;)V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->builder:Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;

    .line 33
    new-instance v0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;

    invoke-direct {v0, p1, p2}, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;-><init>(Lcom/ahsim/demulation/GenesisAudioSource;Lcom/ahsim/demulation/GenesisGemsSfxData;)V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->directBuilder:Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;

    .line 34
    return-void
.end method

.method constructor <init>([BLcom/ahsim/demulation/GenesisGemsSfxData;)V
    .locals 1
    .param p1, "rom"    # [B
    .param p2, "data"    # Lcom/ahsim/demulation/GenesisGemsSfxData;

    .line 27
    invoke-static {p1}, Lcom/ahsim/demulation/GenesisAudioSource;->fromRom([B)Lcom/ahsim/demulation/GenesisAudioSource;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;-><init>(Lcom/ahsim/demulation/GenesisAudioSource;Lcom/ahsim/demulation/GenesisGemsSfxData;)V

    .line 28
    return-void
.end method

.method private durationTicks(I)I
    .locals 3
    .param p1, "request"    # I

    .line 226
    mul-int/lit8 v0, p1, 0x4

    const v1, 0x6a8c0

    add-int/2addr v0, v1

    const/4 v1, 0x2

    add-int/2addr v0, v1

    .line 227
    .local v0, "p":I
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->source:Lcom/ahsim/demulation/GenesisAudioSource;

    invoke-virtual {v2, v0, v1}, Lcom/ahsim/demulation/GenesisAudioSource;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->source:Lcom/ahsim/demulation/GenesisAudioSource;

    invoke-virtual {v1, v0}, Lcom/ahsim/demulation/GenesisAudioSource;->be16(I)I

    move-result v1

    return v1
.end method

.method private static le32([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "p"    # I

    .line 221
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    add-int/lit8 v0, p1, 0x3

    array-length v1, p0

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0

    .line 221
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static vgmLoopOffset([B)I
    .locals 1
    .param p0, "vgm"    # [B

    .line 219
    const/16 v0, 0x1c

    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->le32([BI)I

    move-result v0

    return v0
.end method

.method private static vgmTotalSamples([B)J
    .locals 4
    .param p0, "vgm"    # [B

    .line 218
    const/16 v0, 0x18

    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->le32([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method currentRequest()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->currentRequest:I

    return v0
.end method

.method isActive()Z
    .locals 7

    .line 178
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->directMode:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->currentDirectSequence:I

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->currentRequest:I

    if-ltz v0, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 179
    .local v0, "idValid":Z
    :goto_1
    iget-boolean v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->gameplayMode:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->frontendMode:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->directMode:Z

    if-eqz v3, :cond_3

    :cond_2
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->player:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->remainingFrames:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method needsGameplayRequest()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->gameplayMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->requestNeeded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method release()V
    .locals 0

    .line 175
    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->stop()V

    return-void
.end method

.method renderStereo([SII)Z
    .locals 9
    .param p1, "out"    # [S
    .param p2, "frames"    # I
    .param p3, "volumePercent"    # I

    .line 187
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    array-length v1, p1

    mul-int/lit8 v2, p2, 0x2

    if-ge v1, v2, :cond_0

    goto/16 :goto_4

    .line 188
    :cond_0
    mul-int/lit8 v1, p2, 0x2

    invoke-static {p1, v0, v1, v0}, Ljava/util/Arrays;->fill([SIIS)V

    .line 189
    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->isActive()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    if-gtz p2, :cond_1

    goto :goto_3

    .line 190
    :cond_1
    iget-boolean v1, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->frontendLooping:Z

    if-eqz v1, :cond_2

    move v1, p2

    goto :goto_0

    :cond_2
    int-to-long v3, p2

    iget-wide v5, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->remainingFrames:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v1, v3

    .line 195
    .local v1, "activeFrames":I
    :goto_0
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->player:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    invoke-virtual {v3, p1, v1}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->renderStereo([SI)Z

    move-result v3

    if-nez v3, :cond_3

    return v0

    .line 196
    :cond_3
    const/16 v3, 0x64

    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 197
    .local v4, "vol":I
    if-eq v4, v3, :cond_4

    .line 198
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    mul-int/lit8 v6, v1, 0x2

    if-ge v5, v6, :cond_4

    aget-short v6, p1, v5

    mul-int/2addr v6, v4

    div-int/2addr v6, v3

    int-to-short v6, v6

    aput-short v6, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 200
    .end local v5    # "i":I
    :cond_4
    iget-boolean v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->frontendLooping:Z

    if-nez v3, :cond_6

    .line 201
    iget-wide v5, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->remainingFrames:J

    int-to-long v7, v1

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->remainingFrames:J

    .line 202
    iget-wide v5, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->remainingFrames:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-gtz v3, :cond_6

    .line 203
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->player:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->close()V

    .line 204
    const/4 v3, -0x1

    iput v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->currentRequest:I

    .line 205
    iput v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->currentDirectSequence:I

    .line 206
    iget-boolean v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->gameplayMode:Z

    if-eqz v3, :cond_5

    iput-boolean v2, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->requestNeeded:Z

    goto :goto_2

    .line 208
    :cond_5
    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->frontendMode:Z

    .line 209
    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->directMode:Z

    .line 213
    :cond_6
    :goto_2
    return v2

    .line 189
    .end local v1    # "activeFrames":I
    .end local v4    # "vol":I
    :cond_7
    :goto_3
    return v2

    .line 187
    :cond_8
    :goto_4
    return v0
.end method

.method restartCurrentRequestAfterAudioFault()V
    .locals 11

    .line 116
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->directMode:Z

    const-wide v1, 0x1fffffffffffffffL

    const v3, 0xac44

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_3

    .line 117
    iget v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->currentDirectSequence:I

    .line 118
    .local v0, "sequence":I
    iget-object v6, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->player:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    invoke-virtual {v6}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->tellSamples()I

    move-result v6

    .line 119
    .local v6, "samplePos":I
    iget-object v7, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->directBuilder:Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;

    invoke-virtual {v7, v0}, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;->build(I)Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;

    move-result-object v7

    .line 120
    .local v7, "built":Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;
    if-eqz v7, :cond_2

    iget-object v8, v7, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->vgm:[B

    if-eqz v8, :cond_2

    iget-object v8, v7, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->dacEvents:[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;

    array-length v8, v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->player:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    iget-object v9, v7, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->vgm:[B

    .line 121
    invoke-virtual {v8, v9, v3}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->open([BI)Z

    move-result v3

    if-eqz v3, :cond_2

    if-lez v6, :cond_0

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->player:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    .line 122
    invoke-virtual {v3, v6}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->seekSamples(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    :cond_0
    iget-boolean v3, v7, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->looping:Z

    if-eqz v3, :cond_1

    goto :goto_0

    .line 124
    :cond_1
    iget-object v1, v7, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->vgm:[B

    invoke-static {v1}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->vgmTotalSamples([B)J

    move-result-wide v1

    int-to-long v8, v6

    sub-long/2addr v1, v8

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :goto_0
    iput-wide v1, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->remainingFrames:J

    .line 125
    return-void

    .line 127
    :cond_2
    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->stop()V

    .line 128
    return-void

    .line 130
    .end local v0    # "sequence":I
    .end local v6    # "samplePos":I
    .end local v7    # "built":Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;
    :cond_3
    iget v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->currentRequest:I

    .line 131
    .local v0, "request":I
    iget-boolean v6, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->frontendMode:Z

    if-eqz v6, :cond_8

    .line 132
    iget-object v6, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->player:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    invoke-virtual {v6}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->tellSamples()I

    move-result v6

    .line 133
    .restart local v6    # "samplePos":I
    iget-object v7, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->builder:Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;

    invoke-virtual {v7, v0}, Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;->buildFrontend(I)[B

    move-result-object v7

    .line 134
    .local v7, "vgm":[B
    if-nez v7, :cond_4

    move-wide v8, v4

    goto :goto_1

    :cond_4
    invoke-static {v7}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->vgmTotalSamples([B)J

    move-result-wide v8

    .line 135
    .local v8, "total":J
    :goto_1
    if-eqz v7, :cond_7

    iget-object v10, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->player:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    invoke-virtual {v10, v7, v3}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->open([BI)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 136
    if-lez v6, :cond_5

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->player:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    invoke-virtual {v3, v6}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->seekSamples(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 137
    :cond_5
    iget-boolean v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->frontendLooping:Z

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    int-to-long v1, v6

    sub-long v1, v8, v1

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :goto_2
    iput-wide v1, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->remainingFrames:J

    .line 138
    return-void

    .line 141
    :cond_7
    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->stop()V

    .line 142
    return-void

    .line 144
    .end local v6    # "samplePos":I
    .end local v7    # "vgm":[B
    .end local v8    # "total":J
    :cond_8
    iget-boolean v1, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->gameplayMode:Z

    if-nez v1, :cond_9

    return-void

    .line 145
    :cond_9
    const/16 v1, 0x8

    const/4 v2, 0x1

    if-lt v0, v1, :cond_d

    const/16 v1, 0xc

    if-le v0, v1, :cond_a

    goto :goto_3

    .line 150
    :cond_a
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->player:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->tellSamples()I

    move-result v1

    .line 151
    .local v1, "samplePos":I
    iget-object v6, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->builder:Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;

    invoke-virtual {v6, v0}, Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;->build(I)[B

    move-result-object v6

    .line 152
    .local v6, "vgm":[B
    if-eqz v6, :cond_c

    iget-object v7, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->player:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    invoke-virtual {v7, v6, v3}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->open([BI)Z

    move-result v3

    if-eqz v3, :cond_c

    if-lez v1, :cond_b

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->player:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    .line 153
    invoke-virtual {v3, v1}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->seekSamples(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 154
    :cond_b
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->requestNeeded:Z

    .line 155
    return-void

    .line 157
    :cond_c
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->player:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->close()V

    .line 158
    const/4 v3, -0x1

    iput v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->currentRequest:I

    .line 159
    iput-wide v4, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->remainingFrames:J

    .line 160
    iput-boolean v2, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->requestNeeded:Z

    .line 161
    return-void

    .line 147
    .end local v1    # "samplePos":I
    .end local v6    # "vgm":[B
    :cond_d
    :goto_3
    iput-boolean v2, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->requestNeeded:Z

    .line 148
    return-void
.end method

.method startDirectSequence(I)V
    .locals 5
    .param p1, "sequence"    # I

    .line 98
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->directBuilder:Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;

    invoke-virtual {v0, p1}, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;->build(I)Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;

    move-result-object v0

    .line 99
    .local v0, "built":Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->vgm:[B

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->dacEvents:[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;

    array-length v1, v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->player:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    iget-object v2, v0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->vgm:[B

    .line 100
    const v3, 0xac44

    invoke-virtual {v1, v2, v3}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->open([BI)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 104
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->currentRequest:I

    .line 105
    iput p1, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->currentDirectSequence:I

    .line 106
    iget-boolean v1, v0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->looping:Z

    iput-boolean v1, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->frontendLooping:Z

    .line 107
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->vgm:[B

    invoke-static {v1}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->vgmTotalSamples([B)J

    move-result-wide v1

    .line 108
    .local v1, "total":J
    iget-boolean v3, v0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->looping:Z

    if-eqz v3, :cond_1

    const-wide v3, 0x1fffffffffffffffL

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    iput-wide v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->remainingFrames:J

    .line 109
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->gameplayMode:Z

    .line 110
    iput-boolean v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->frontendMode:Z

    .line 111
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->directMode:Z

    .line 112
    iput-boolean v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->requestNeeded:Z

    .line 113
    return-void

    .line 101
    .end local v1    # "total":J
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->stop()V

    .line 102
    return-void
.end method

.method startFrontendRequest(I)V
    .locals 8
    .param p1, "request"    # I

    .line 78
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->builder:Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;

    invoke-virtual {v0, p1}, Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;->buildFrontend(I)[B

    move-result-object v0

    .line 79
    .local v0, "vgm":[B
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->player:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    const v2, 0xac44

    invoke-virtual {v1, v0, v2}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->open([BI)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 80
    :cond_0
    iput p1, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->currentRequest:I

    .line 81
    invoke-static {v0}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->vgmTotalSamples([B)J

    move-result-wide v1

    .line 82
    .local v1, "total":J
    invoke-static {v0}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->vgmLoopOffset([B)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v3, v1, v6

    if-lez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    iput-boolean v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->frontendLooping:Z

    .line 87
    iget-boolean v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->frontendLooping:Z

    if-eqz v3, :cond_2

    const-wide v6, 0x1fffffffffffffffL

    goto :goto_1

    :cond_2
    move-wide v6, v1

    :goto_1
    iput-wide v6, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->remainingFrames:J

    .line 88
    iput-boolean v5, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->gameplayMode:Z

    .line 89
    iput-boolean v4, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->frontendMode:Z

    .line 90
    iput-boolean v5, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->directMode:Z

    .line 91
    const/4 v3, -0x1

    iput v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->currentDirectSequence:I

    .line 92
    iput-boolean v5, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->requestNeeded:Z

    .line 93
    return-void

    .line 79
    .end local v1    # "total":J
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->stop()V

    return-void
.end method

.method startGameplay()V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->player:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->close()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->currentRequest:I

    .line 39
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->remainingFrames:J

    .line 40
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->gameplayMode:Z

    .line 41
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->frontendMode:Z

    .line 42
    iput-boolean v2, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->directMode:Z

    .line 43
    iput v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->currentDirectSequence:I

    .line 44
    iput-boolean v2, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->frontendLooping:Z

    .line 45
    iput-boolean v1, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->requestNeeded:Z

    .line 46
    return-void
.end method

.method startGameplayRequest(I)V
    .locals 8
    .param p1, "request"    # I

    .line 49
    const/16 v0, 0x8

    if-lt p1, v0, :cond_3

    const/16 v0, 0xc

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->builder:Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;

    invoke-virtual {v0, p1}, Lcom/ahsim/demulation/GenesisGameplayVgmBuilder;->build(I)[B

    move-result-object v0

    .line 55
    .local v0, "vgm":[B
    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->player:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    const v5, 0xac44

    invoke-virtual {v4, v0, v5}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->open([BI)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    iput p1, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->currentRequest:I

    .line 67
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->durationTicks(I)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x2df

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->remainingFrames:J

    .line 68
    iput-boolean v1, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->gameplayMode:Z

    .line 69
    iput-boolean v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->frontendMode:Z

    .line 70
    iput-boolean v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->directMode:Z

    .line 71
    iput v2, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->currentDirectSequence:I

    .line 72
    iput-boolean v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->frontendLooping:Z

    .line 73
    iput-boolean v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->requestNeeded:Z

    .line 74
    return-void

    .line 56
    :cond_2
    :goto_0
    iput v2, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->currentRequest:I

    .line 57
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->remainingFrames:J

    .line 58
    iput-boolean v1, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->gameplayMode:Z

    .line 59
    iput-boolean v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->frontendMode:Z

    .line 60
    iput-boolean v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->directMode:Z

    .line 61
    iput v2, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->currentDirectSequence:I

    .line 62
    iput-boolean v3, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->frontendLooping:Z

    .line 63
    iput-boolean v1, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->requestNeeded:Z

    .line 64
    return-void

    .line 51
    .end local v0    # "vgm":[B
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->stop()V

    .line 52
    return-void
.end method

.method stop()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->player:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->close()V

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->gameplayMode:Z

    .line 166
    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->frontendMode:Z

    .line 167
    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->directMode:Z

    .line 168
    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->frontendLooping:Z

    .line 169
    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->requestNeeded:Z

    .line 170
    const/4 v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->currentRequest:I

    .line 171
    iput v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->currentDirectSequence:I

    .line 172
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->remainingFrames:J

    .line 173
    return-void
.end method

.method tellSamplesForDiagnostics()I
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->player:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->tellSamples()I

    move-result v0

    return v0
.end method
