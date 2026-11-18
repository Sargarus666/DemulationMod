.class final Lcom/ahsim/demulation/GenesisGemsMusicSequencer;
.super Ljava/lang/Object;
.source "GenesisGemsMusicSequencer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;,
        Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;,
        Lcom/ahsim/demulation/GenesisGemsMusicSequencer$LoopFrame;
    }
.end annotation


# static fields
.field static final MUSIC_REQUEST_FIRST:I = 0x8

.field static final MUSIC_REQUEST_LAST:I = 0xc

.field static final MUSIC_REQUEST_TABLE:I = 0x6a8c0

.field static final MUSIC_SEQUENCE_TAG:I = 0x1000

.field static final ORIGINAL_REQUEST_FIRST:I = 0x0

.field static final ORIGINAL_REQUEST_LAST:I = 0x26


# instance fields
.field private volatile currentRequest:I

.field private final data:Lcom/ahsim/demulation/GenesisGemsSfxData;

.field private diagnosticFrontendMode:Z

.field private diagnosticSawInfiniteLoop:Z

.field private final envelopeCache:[[B

.field private final etbl:I

.field private volatile gameplayMode:Z

.field private final hardware:Lcom/ahsim/demulation/GenesisGemsHardware;

.field private remainingDriverTicks:I

.field private volatile requestNeeded:Z

.field private sequence:I

.field private final source:Lcom/ahsim/demulation/GenesisAudioSource;

.field private final stbl:I

.field private taggedSequence:I

.field private tempoAccumulator:I

.field private tempoSbpt:I

.field private trackCount:I

.field private final tracks:[Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/GenesisAudioSource;Lcom/ahsim/demulation/GenesisGemsSfxData;Lcom/ahsim/demulation/GenesisGemsHardware;)V
    .locals 2
    .param p1, "source"    # Lcom/ahsim/demulation/GenesisAudioSource;
    .param p2, "data"    # Lcom/ahsim/demulation/GenesisGemsSfxData;
    .param p3, "hardware"    # Lcom/ahsim/demulation/GenesisGemsHardware;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tracks:[Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;

    .line 91
    const/16 v0, 0x20

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->envelopeCache:[[B

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->sequence:I

    .line 95
    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->taggedSequence:I

    .line 96
    const/16 v1, 0xcc

    iput v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tempoSbpt:I

    .line 98
    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->currentRequest:I

    .line 112
    if-eqz p1, :cond_0

    .line 113
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->source:Lcom/ahsim/demulation/GenesisAudioSource;

    iput-object p2, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    iput-object p3, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->hardware:Lcom/ahsim/demulation/GenesisGemsHardware;

    .line 114
    invoke-virtual {p2}, Lcom/ahsim/demulation/GenesisGemsSfxData;->sequenceTableOffset()I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->stbl:I

    .line 115
    invoke-virtual {p2}, Lcom/ahsim/demulation/GenesisGemsSfxData;->envelopeTableOffset()I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->etbl:I

    .line 116
    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Audio source missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>([BLcom/ahsim/demulation/GenesisGemsSfxData;Lcom/ahsim/demulation/GenesisGemsHardware;)V
    .locals 1
    .param p1, "rom"    # [B
    .param p2, "data"    # Lcom/ahsim/demulation/GenesisGemsSfxData;
    .param p3, "hardware"    # Lcom/ahsim/demulation/GenesisGemsHardware;

    .line 107
    invoke-static {p1}, Lcom/ahsim/demulation/GenesisAudioSource;->fromRom([B)Lcom/ahsim/demulation/GenesisAudioSource;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;-><init>(Lcom/ahsim/demulation/GenesisAudioSource;Lcom/ahsim/demulation/GenesisGemsSfxData;Lcom/ahsim/demulation/GenesisGemsHardware;)V

    .line 108
    return-void
.end method

.method private allTracksInactive()Z
    .locals 3

    .line 175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->trackCount:I

    if-ge v0, v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tracks:[Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;

    aget-object v1, v1, v0

    .line 177
    .local v1, "t":Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->active:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return v2

    .line 175
    .end local v1    # "t":Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private applyBend(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)V
    .locals 5
    .param p1, "t"    # Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;

    .line 493
    iget-object v0, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->envelope:Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->envelope:Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;

    iget v0, v0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->value:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 494
    .local v0, "env":I
    :goto_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->hardware:Lcom/ahsim/demulation/GenesisGemsHardware;

    iget v2, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->taggedSequence:I

    iget v3, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->virtualChannel:I

    iget v4, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->pitchBend:I

    add-int/2addr v4, v0

    int-to-short v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/ahsim/demulation/GenesisGemsHardware;->setTrackBend(III)V

    .line 495
    return-void
.end method

.method private be16(I)I
    .locals 2
    .param p1, "p"    # I

    .line 516
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->u8(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->u8(I)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private consumeDelay(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)Z
    .locals 1
    .param p1, "t"    # Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;

    .line 479
    iget v0, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->delay:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 480
    :cond_0
    iget v0, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->delay:I

    iput v0, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->timer:I

    .line 481
    const/4 v0, 0x1

    return v0
.end method

.method private envelope(I)[B
    .locals 6
    .param p1, "index"    # I

    .line 498
    const/4 v0, 0x0

    if-ltz p1, :cond_4

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->envelopeCache:[[B

    array-length v1, v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 499
    :cond_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->envelopeCache:[[B

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->envelopeCache:[[B

    aget-object v0, v0, p1

    return-object v0

    .line 500
    :cond_1
    iget v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->etbl:I

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->le16(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 501
    .local v1, "count":I
    if-lt p1, v1, :cond_2

    return-object v0

    .line 502
    :cond_2
    iget v2, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->etbl:I

    iget v3, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->etbl:I

    mul-int/lit8 v4, p1, 0x2

    add-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->le16(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 503
    .local v2, "p":I
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->source:Lcom/ahsim/demulation/GenesisAudioSource;

    const/16 v4, 0x20

    invoke-virtual {v3, v2, v4}, Lcom/ahsim/demulation/GenesisAudioSource;->contains(II)Z

    move-result v3

    if-nez v3, :cond_3

    return-object v0

    .line 504
    :cond_3
    new-array v0, v4, [B

    .line 505
    .local v0, "out":[B
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->source:Lcom/ahsim/demulation/GenesisAudioSource;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v0, v5, v4}, Lcom/ahsim/demulation/GenesisAudioSource;->copyTo(I[BII)V

    .line 506
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->envelopeCache:[[B

    aput-object v0, v3, p1

    .line 507
    return-object v0

    .line 498
    .end local v0    # "out":[B
    .end local v1    # "count":I
    .end local v2    # "p":I
    :cond_4
    :goto_0
    return-object v0
.end method

.method private finishDiagnosticFrontendRequest()V
    .locals 3

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->sequence:I

    .line 187
    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->taggedSequence:I

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->remainingDriverTicks:I

    .line 189
    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->trackCount:I

    .line 190
    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tempoAccumulator:I

    .line 191
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tracks:[Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tracks:[Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->requestNeeded:Z

    .line 193
    return-void
.end method

.method private finishTimedRequest()V
    .locals 3

    .line 196
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->taggedSequence:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->hardware:Lcom/ahsim/demulation/GenesisGemsHardware;

    iget v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->taggedSequence:I

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/GenesisGemsHardware;->stopSequence(I)V

    .line 197
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->sequence:I

    .line 198
    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->taggedSequence:I

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->remainingDriverTicks:I

    .line 200
    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->trackCount:I

    .line 201
    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tempoAccumulator:I

    .line 202
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tracks:[Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tracks:[Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->requestNeeded:Z

    .line 204
    return-void
.end method

.method private le16(I)I
    .locals 2
    .param p1, "p"    # I

    .line 515
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->u8(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->u8(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private musicSubbeat()V
    .locals 3

    .line 298
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->trackCount:I

    if-ge v0, v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tracks:[Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;

    aget-object v1, v1, v0

    .line 300
    .local v1, "t":Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->active:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->envelope:Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->envelope:Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;

    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->tick()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->applyBend(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)V

    .line 298
    .end local v1    # "t":Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->hardware:Lcom/ahsim/demulation/GenesisGemsHardware;

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisGemsHardware;->musicSubbeat()V

    .line 303
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->trackCount:I

    if-ge v0, v1, :cond_5

    .line 304
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tracks:[Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;

    aget-object v1, v1, v0

    .line 305
    .restart local v1    # "t":Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;
    if-eqz v1, :cond_4

    iget-boolean v2, v1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->active:Z

    if-nez v2, :cond_2

    goto :goto_2

    .line 306
    :cond_2
    iget v2, v1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->timer:I

    if-lez v2, :cond_3

    iget v2, v1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->timer:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->timer:I

    iget v2, v1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->timer:I

    if-lez v2, :cond_3

    goto :goto_2

    .line 307
    :cond_3
    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->runTrackUntilDelay(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)V

    .line 303
    .end local v1    # "t":Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 309
    .end local v0    # "i":I
    :cond_5
    return-void
.end method

.method private read(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)I
    .locals 3
    .param p1, "t"    # Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;

    .line 511
    iget v0, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->p:I

    iget v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->stbl:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->source:Lcom/ahsim/demulation/GenesisAudioSource;

    iget v1, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->p:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ahsim/demulation/GenesisAudioSource;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->source:Lcom/ahsim/demulation/GenesisAudioSource;

    iget v1, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->p:I

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/GenesisAudioSource;->u8(I)I

    move-result v0

    return v0

    .line 511
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->active:Z

    const/16 v0, 0x60

    return v0
.end method

.method private runTrackUntilDelay(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)V
    .locals 14
    .param p1, "t"    # Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;

    .line 312
    const/4 v0, 0x0

    .local v0, "guard":I
    :goto_0
    const/16 v1, 0x1000

    const/4 v2, 0x0

    if-ge v0, v1, :cond_16

    iget-boolean v1, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->active:Z

    if-eqz v1, :cond_16

    .line 314
    iget v1, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->pending:I

    const/4 v3, -0x1

    if-ltz v1, :cond_0

    iget v1, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->pending:I

    .local v1, "cmd":I
    iput v3, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->pending:I

    move v10, v1

    goto :goto_1

    .line 315
    .end local v1    # "cmd":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->read(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)I

    move-result v1

    move v10, v1

    .line 317
    .local v10, "cmd":I
    :goto_1
    and-int/lit16 v1, v10, 0xc0

    const v4, 0xffff

    const/16 v5, 0xc0

    if-ne v1, v5, :cond_2

    .line 318
    and-int/lit8 v1, v10, 0x3f

    .line 320
    .local v1, "value":I
    :goto_2
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->read(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)I

    move-result v2

    .line 321
    .local v2, "n":I
    and-int/lit16 v3, v2, 0xc0

    if-eq v3, v5, :cond_1

    iput v2, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->pending:I

    .line 324
    .end local v2    # "n":I
    and-int v2, v1, v4

    iput v2, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->delay:I

    .line 325
    goto/16 :goto_6

    .line 322
    .restart local v2    # "n":I
    :cond_1
    shl-int/lit8 v3, v1, 0x6

    and-int/lit8 v6, v2, 0x3f

    or-int v1, v3, v6

    .line 323
    .end local v2    # "n":I
    goto :goto_2

    .line 327
    .end local v1    # "value":I
    :cond_2
    and-int/lit16 v1, v10, 0xc0

    const/16 v5, 0x80

    if-ne v1, v5, :cond_4

    .line 328
    and-int/lit8 v1, v10, 0x3f

    .line 330
    .restart local v1    # "value":I
    :goto_3
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->read(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)I

    move-result v2

    .line 331
    .restart local v2    # "n":I
    and-int/lit16 v3, v2, 0xc0

    if-eq v3, v5, :cond_3

    iput v2, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->pending:I

    .line 334
    .end local v2    # "n":I
    and-int v2, v1, v4

    iput v2, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->duration:I

    .line 335
    goto/16 :goto_6

    .line 332
    .restart local v2    # "n":I
    :cond_3
    shl-int/lit8 v3, v1, 0x6

    and-int/lit8 v6, v2, 0x3f

    or-int v1, v3, v6

    .line 333
    .end local v2    # "n":I
    goto :goto_3

    .line 337
    .end local v1    # "value":I
    :cond_4
    const/16 v1, 0x60

    if-ge v10, v1, :cond_6

    .line 338
    iget-boolean v1, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->muted:Z

    if-nez v1, :cond_5

    iget v1, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->patch:I

    if-ltz v1, :cond_5

    iget v1, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->patchType:I

    if-ltz v1, :cond_5

    iget v1, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->patchType:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_5

    .line 340
    new-instance v4, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;

    iget v7, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->virtualChannel:I

    iget v8, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->patch:I

    iget v9, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->patchType:I

    iget v11, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->duration:I

    iget v12, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->priority:I

    iget v13, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->attenuation:I

    const-wide/16 v5, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;-><init>(JIIIIIII)V

    .line 343
    .local v4, "e":Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->hardware:Lcom/ahsim/demulation/GenesisGemsHardware;

    iget v2, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->taggedSequence:I

    invoke-virtual {v1, v2, v4}, Lcom/ahsim/demulation/GenesisGemsHardware;->noteOnMusic(ILcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;)V

    .line 344
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->applyBend(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)V

    .line 345
    iget-boolean v1, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->retrigger:Z

    if-eqz v1, :cond_5

    iget v1, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->envelopeNumber:I

    invoke-direct {p0, p1, v1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->triggerEnvelope(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;I)V

    .line 347
    .end local v4    # "e":Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;
    :cond_5
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->consumeDelay(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    .line 351
    :cond_6
    const/4 v1, 0x4

    const/16 v4, 0x7f

    const/4 v5, 0x1

    packed-switch v10, :pswitch_data_0

    .line 470
    iput-boolean v2, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->active:Z

    .line 471
    return-void

    .line 462
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->read(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)I

    move-result v2

    .local v2, "code":I
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->read(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)I

    move-result v3

    .line 463
    .local v3, "value":I
    if-ne v2, v1, :cond_7

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->hardware:Lcom/ahsim/demulation/GenesisGemsHardware;

    and-int/lit8 v4, v3, 0x7f

    invoke-virtual {v1, v4}, Lcom/ahsim/demulation/GenesisGemsHardware;->setMasterAttenuation(I)V

    goto :goto_4

    .line 464
    :cond_7
    const/4 v1, 0x5

    if-ne v2, v1, :cond_8

    and-int/lit8 v1, v3, 0x7f

    iput v1, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->attenuation:I

    goto :goto_4

    .line 465
    :cond_8
    if-nez v2, :cond_9

    iget v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->sequence:I

    if-ne v3, v1, :cond_9

    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->stop()V

    return-void

    .line 466
    :cond_9
    :goto_4
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->consumeDelay(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    .line 458
    .end local v2    # "code":I
    .end local v3    # "value":I
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->read(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)I

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->read(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)I

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->read(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)I

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->read(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)I

    move-result v1

    .local v1, "skip":I
    iget v2, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->p:I

    add-int/2addr v2, v1

    iput v2, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->p:I

    .line 459
    goto/16 :goto_6

    .line 452
    .end local v1    # "skip":I
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->read(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)I

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->read(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)I

    .line 453
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->consumeDelay(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    .line 446
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->read(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->read(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    int-to-short v1, v1

    .line 447
    .local v1, "rel":I
    iget v2, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->p:I

    add-int/2addr v2, v1

    iput v2, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->p:I

    .line 448
    goto/16 :goto_6

    .line 442
    .end local v1    # "rel":I
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->read(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)I

    .line 443
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->consumeDelay(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    .line 439
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->consumeDelay(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    .line 432
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->read(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->read(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput v1, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->pitchBend:I

    .line 433
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->applyBend(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)V

    .line 434
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->consumeDelay(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    .line 428
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->read(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)I

    .line 429
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->consumeDelay(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    .line 422
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->read(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)I

    move-result v1

    iput v1, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->priority:I

    .line 423
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->consumeDelay(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    .line 415
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->read(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)I

    move-result v1

    .line 416
    .local v1, "arg":I
    and-int/lit8 v3, v1, 0xf

    .line 417
    .local v3, "ch":I
    iget v4, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->trackCount:I

    if-ge v3, v4, :cond_b

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tracks:[Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;

    aget-object v4, v4, v3

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tracks:[Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;

    aget-object v4, v4, v3

    and-int/lit8 v6, v1, 0x10

    if-nez v6, :cond_a

    move v2, v5

    :cond_a
    iput-boolean v2, v4, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->muted:Z

    .line 418
    :cond_b
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->consumeDelay(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)Z

    move-result v2

    if-eqz v2, :cond_15

    return-void

    .line 409
    .end local v1    # "arg":I
    .end local v3    # "ch":I
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->read(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)I

    move-result v1

    add-int/lit8 v1, v1, 0x28

    .line 410
    .local v1, "bpm":I
    mul-int/lit16 v2, v1, 0xda

    shr-int/lit8 v2, v2, 0x7

    iput v2, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tempoSbpt:I

    .line 411
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->consumeDelay(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)Z

    move-result v2

    if-eqz v2, :cond_15

    return-void

    .line 405
    .end local v1    # "bpm":I
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->read(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)I

    .line 406
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->consumeDelay(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    .line 399
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->read(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)I

    move-result v1

    if-eqz v1, :cond_c

    move v2, v5

    :cond_c
    iput-boolean v2, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->retrigger:Z

    .line 400
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->consumeDelay(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    .line 380
    :pswitch_d
    iget-object v1, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->loops:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    iput-boolean v2, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->active:Z

    return-void

    .line 381
    :cond_d
    iget-object v1, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->loops:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->loops:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$LoopFrame;

    .line 382
    .local v1, "f":Lcom/ahsim/demulation/GenesisGemsMusicSequencer$LoopFrame;
    iget v3, v1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$LoopFrame;->count:I

    if-ne v3, v4, :cond_f

    .line 383
    iget-boolean v3, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->diagnosticFrontendMode:Z

    if-eqz v3, :cond_e

    .line 384
    iput-boolean v5, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->diagnosticSawInfiniteLoop:Z

    .line 385
    iget-object v3, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->loops:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->loops:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 386
    iput-boolean v2, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->active:Z

    .line 387
    return-void

    .line 389
    :cond_e
    iget v2, v1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$LoopFrame;->position:I

    iput v2, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->p:I

    goto/16 :goto_6

    .line 392
    :cond_f
    iget v2, v1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$LoopFrame;->count:I

    sub-int/2addr v2, v5

    iput v2, v1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$LoopFrame;->count:I

    .line 393
    iget v2, v1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$LoopFrame;->count:I

    if-lez v2, :cond_10

    iget v2, v1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$LoopFrame;->position:I

    iput v2, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->p:I

    goto :goto_6

    .line 394
    :cond_10
    iget-object v2, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->loops:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->loops:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 396
    goto :goto_6

    .line 371
    .end local v1    # "f":Lcom/ahsim/demulation/GenesisGemsMusicSequencer$LoopFrame;
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->read(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)I

    move-result v3

    .line 372
    .local v3, "count":I
    iget-object v5, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->loops:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v1, :cond_11

    iput-boolean v2, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->active:Z

    return-void

    .line 375
    :cond_11
    iget-boolean v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->diagnosticFrontendMode:Z

    if-eqz v1, :cond_12

    if-ne v3, v4, :cond_12

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->hardware:Lcom/ahsim/demulation/GenesisGemsHardware;

    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisGemsHardware;->markDiagnosticLoopPoint()V

    .line 376
    :cond_12
    iget-object v1, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->loops:Ljava/util/ArrayList;

    new-instance v2, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$LoopFrame;

    iget v4, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->p:I

    invoke-direct {v2, v3, v4}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$LoopFrame;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    goto :goto_6

    .line 368
    .end local v3    # "count":I
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->consumeDelay(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    .line 363
    :pswitch_10
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->read(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)I

    move-result v1

    iput v1, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->envelopeNumber:I

    .line 364
    iget-boolean v1, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->retrigger:Z

    if-nez v1, :cond_13

    iget v1, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->envelopeNumber:I

    invoke-direct {p0, p1, v1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->triggerEnvelope(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;I)V

    .line 365
    :cond_13
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->consumeDelay(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    .line 356
    :pswitch_11
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->read(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)I

    move-result v1

    iput v1, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->patch:I

    .line 357
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    iget v2, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->patch:I

    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/GenesisGemsSfxData;->patch(I)Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;

    move-result-object v1

    .line 358
    .local v1, "p":Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;
    if-nez v1, :cond_14

    goto :goto_5

    :cond_14
    iget v3, v1, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->type:I

    :goto_5
    iput v3, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->patchType:I

    .line 359
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->consumeDelay(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)Z

    move-result v2

    if-eqz v2, :cond_15

    return-void

    .line 312
    .end local v1    # "p":Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;
    .end local v10    # "cmd":I
    :cond_15
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 353
    .restart local v10    # "cmd":I
    :pswitch_12
    iput-boolean v2, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->active:Z

    .line 354
    return-void

    .line 475
    .end local v0    # "guard":I
    .end local v10    # "cmd":I
    :cond_16
    iput-boolean v2, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->active:Z

    .line 476
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startRequest(I)V
    .locals 5
    .param p1, "request"    # I

    .line 269
    const/16 v0, 0x8

    if-lt p1, v0, :cond_4

    const/16 v0, 0xc

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 270
    :cond_0
    mul-int/lit8 v0, p1, 0x4

    const v1, 0x6a8c0

    add-int/2addr v0, v1

    .line 271
    .local v0, "entry":I
    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->be16(I)I

    move-result v1

    .line 272
    .local v1, "seq":I
    add-int/lit8 v2, v0, 0x2

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->be16(I)I

    move-result v2

    .line 273
    .local v2, "duration":I
    if-ltz v1, :cond_3

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisGemsSfxData;->sequenceCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    if-eqz v2, :cond_3

    const v3, 0xffff

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 274
    :cond_1
    iget v3, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->taggedSequence:I

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->hardware:Lcom/ahsim/demulation/GenesisGemsHardware;

    iget v4, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->taggedSequence:I

    invoke-virtual {v3, v4}, Lcom/ahsim/demulation/GenesisGemsHardware;->stopSequence(I)V

    .line 275
    :cond_2
    iput p1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->currentRequest:I

    .line 276
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->requestNeeded:Z

    .line 277
    iput v2, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->remainingDriverTicks:I

    .line 278
    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->startSequence(I)V

    .line 279
    return-void

    .line 273
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->stop()V

    return-void

    .line 269
    .end local v0    # "entry":I
    .end local v1    # "seq":I
    .end local v2    # "duration":I
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->stop()V

    return-void
.end method

.method private startSequence(I)V
    .locals 7
    .param p1, "seq"    # I

    .line 282
    iput p1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->sequence:I

    .line 283
    add-int/lit16 v0, p1, 0x1000

    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->taggedSequence:I

    .line 284
    const/4 v0, 0x0

    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tempoAccumulator:I

    .line 285
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->stbl:I

    iget v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->stbl:I

    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->le16(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 286
    .local v0, "header":I
    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->u8(I)I

    move-result v1

    .line 287
    .local v1, "count":I
    if-lez v1, :cond_3

    const/16 v2, 0x10

    if-le v1, v2, :cond_0

    goto :goto_2

    .line 288
    :cond_0
    iput v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->trackCount:I

    .line 289
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tracks:[Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tracks:[Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 290
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 291
    add-int/lit8 v3, v0, 0x1

    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->le16(I)I

    move-result v3

    .line 292
    .local v3, "off":I
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tracks:[Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;

    new-instance v5, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;

    iget v6, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->stbl:I

    add-int/2addr v6, v3

    invoke-direct {v5, v2, v6}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;-><init>(II)V

    aput-object v5, v4, v2

    .line 290
    .end local v3    # "off":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 294
    .end local v2    # "i":I
    :cond_2
    return-void

    .line 287
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->stop()V

    return-void
.end method

.method private triggerEnvelope(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;I)V
    .locals 2
    .param p1, "t"    # Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;
    .param p2, "index"    # I

    .line 485
    invoke-direct {p0, p2}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->envelope(I)[B

    move-result-object v0

    .line 486
    .local v0, "raw":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->envelope:Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;

    return-void

    .line 487
    :cond_0
    new-instance v1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;

    invoke-direct {v1, v0}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;-><init>([B)V

    iput-object v1, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->envelope:Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;

    .line 488
    iget-object v1, p1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->envelope:Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;

    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->trigger()V

    .line 489
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->applyBend(Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;)V

    .line 490
    return-void
.end method

.method private u8(I)I
    .locals 2
    .param p1, "p"    # I

    .line 514
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->source:Lcom/ahsim/demulation/GenesisAudioSource;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/ahsim/demulation/GenesisAudioSource;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->source:Lcom/ahsim/demulation/GenesisAudioSource;

    invoke-virtual {v0, p1}, Lcom/ahsim/demulation/GenesisAudioSource;->u8(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method currentRequestForDiagnostics()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->currentRequest:I

    return v0
.end method

.method currentSequenceForDiagnostics()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->sequence:I

    return v0
.end method

.method driverTick()V
    .locals 2

    .line 158
    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->remainingDriverTicks:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->remainingDriverTicks:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->remainingDriverTicks:I

    if-nez v0, :cond_1

    .line 160
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->finishTimedRequest()V

    .line 161
    return-void

    .line 163
    :cond_1
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tempoAccumulator:I

    iget v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tempoSbpt:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tempoAccumulator:I

    .line 164
    :cond_2
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tempoAccumulator:I

    const/16 v1, 0x100

    if-lt v0, v1, :cond_3

    .line 165
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tempoAccumulator:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tempoAccumulator:I

    .line 166
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->musicSubbeat()V

    .line 167
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->diagnosticFrontendMode:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->sequence:I

    if-ltz v0, :cond_2

    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->allTracksInactive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->finishDiagnosticFrontendRequest()V

    .line 169
    return-void

    .line 172
    :cond_3
    return-void
.end method

.method expireRequestForDiagnostics()V
    .locals 1

    .line 256
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->gameplayMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->sequence:I

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->finishTimedRequest()V

    :cond_0
    return-void
.end method

.method isActive()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->gameplayMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->sequence:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method needsGameplayRequest()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->gameplayMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->requestNeeded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method remainingDriverTicksForDiagnostics()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->remainingDriverTicks:I

    return v0
.end method

.method restartCurrentRequestAfterAudioFault()V
    .locals 2

    .line 262
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->currentRequest:I

    .line 263
    .local v0, "request":I
    iget-boolean v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->gameplayMode:Z

    if-nez v1, :cond_0

    return-void

    .line 264
    :cond_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    const/16 v1, 0xc

    if-gt v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->startRequest(I)V

    goto :goto_0

    .line 265
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->sequence:I

    iput v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->taggedSequence:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->trackCount:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->requestNeeded:Z

    .line 266
    :goto_0
    return-void
.end method

.method sawInfiniteLoopForDiagnostics()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->diagnosticSawInfiniteLoop:Z

    return v0
.end method

.method startDirectSequenceForDiagnostics(I)V
    .locals 3
    .param p1, "seq"    # I

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->diagnosticFrontendMode:Z

    .line 242
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->diagnosticSawInfiniteLoop:Z

    .line 243
    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->gameplayMode:Z

    .line 244
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisGemsSfxData;->sequenceCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->taggedSequence:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->hardware:Lcom/ahsim/demulation/GenesisGemsHardware;

    iget v2, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->taggedSequence:I

    invoke-virtual {v0, v2}, Lcom/ahsim/demulation/GenesisGemsHardware;->stopSequence(I)V

    .line 249
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->currentRequest:I

    .line 250
    iput-boolean v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->requestNeeded:Z

    .line 251
    iput v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->remainingDriverTicks:I

    .line 252
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->startSequence(I)V

    .line 253
    return-void

    .line 245
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->finishDiagnosticFrontendRequest()V

    .line 246
    return-void
.end method

.method startGameplay()V
    .locals 2

    .line 121
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->gameplayMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->hardware:Lcom/ahsim/demulation/GenesisGemsHardware;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/GenesisGemsHardware;->setMasterAttenuation(I)V

    .line 122
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->gameplayMode:Z

    .line 123
    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->requestNeeded:Z

    .line 124
    return-void
.end method

.method startGameplayRequest(I)V
    .locals 2
    .param p1, "request"    # I

    .line 131
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->gameplayMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->hardware:Lcom/ahsim/demulation/GenesisGemsHardware;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/GenesisGemsHardware;->setMasterAttenuation(I)V

    .line 132
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->gameplayMode:Z

    .line 133
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->startRequest(I)V

    .line 134
    return-void
.end method

.method startOriginalFrontendRequestForDiagnostics(I)V
    .locals 5
    .param p1, "request"    # I

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->diagnosticFrontendMode:Z

    .line 218
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->diagnosticSawInfiniteLoop:Z

    .line 219
    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->gameplayMode:Z

    .line 220
    if-ltz p1, :cond_4

    const/16 v0, 0x26

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 224
    :cond_0
    mul-int/lit8 v0, p1, 0x4

    const v2, 0x6a8c0

    add-int/2addr v0, v2

    .line 225
    .local v0, "entry":I
    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->be16(I)I

    move-result v2

    .line 226
    .local v2, "seq":I
    if-ltz v2, :cond_3

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisGemsSfxData;->sequenceCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    const v3, 0xffff

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 230
    :cond_1
    iget v3, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->taggedSequence:I

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->hardware:Lcom/ahsim/demulation/GenesisGemsHardware;

    iget v4, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->taggedSequence:I

    invoke-virtual {v3, v4}, Lcom/ahsim/demulation/GenesisGemsHardware;->stopSequence(I)V

    .line 231
    :cond_2
    iput p1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->currentRequest:I

    .line 232
    iput-boolean v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->requestNeeded:Z

    .line 233
    iput v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->remainingDriverTicks:I

    .line 234
    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->startSequence(I)V

    .line 235
    return-void

    .line 227
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->finishDiagnosticFrontendRequest()V

    .line 228
    return-void

    .line 221
    .end local v0    # "entry":I
    .end local v2    # "seq":I
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->finishDiagnosticFrontendRequest()V

    .line 222
    return-void
.end method

.method startRequestForDiagnostics(I)V
    .locals 1
    .param p1, "request"    # I

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->diagnosticFrontendMode:Z

    .line 208
    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->diagnosticSawInfiniteLoop:Z

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->gameplayMode:Z

    .line 210
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->startRequest(I)V

    .line 211
    return-void
.end method

.method stop()V
    .locals 3

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->gameplayMode:Z

    .line 138
    iget v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->taggedSequence:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->hardware:Lcom/ahsim/demulation/GenesisGemsHardware;

    iget v2, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->taggedSequence:I

    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/GenesisGemsHardware;->stopSequence(I)V

    .line 139
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->sequence:I

    iput v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->taggedSequence:I

    iput v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->currentRequest:I

    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->remainingDriverTicks:I

    .line 140
    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->requestNeeded:Z

    .line 141
    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->trackCount:I

    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tempoAccumulator:I

    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tracks:[Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tracks:[Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method tempoSbptForDiagnostics()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tempoSbpt:I

    return v0
.end method

.method trackBendForDiagnostics(I)I
    .locals 4
    .param p1, "track"    # I

    .line 152
    const/4 v0, 0x0

    if-ltz p1, :cond_2

    iget v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->trackCount:I

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tracks:[Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer;->tracks:[Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;

    aget-object v1, v1, p1

    .line 154
    .local v1, "t":Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;
    iget v2, v1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->pitchBend:I

    iget-object v3, v1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->envelope:Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;

    if-eqz v3, :cond_1

    iget-object v0, v1, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->envelope:Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;

    iget v0, v0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->value:I

    :cond_1
    add-int/2addr v2, v0

    int-to-short v0, v2

    return v0

    .line 152
    .end local v1    # "t":Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;
    :cond_2
    :goto_0
    return v0
.end method
