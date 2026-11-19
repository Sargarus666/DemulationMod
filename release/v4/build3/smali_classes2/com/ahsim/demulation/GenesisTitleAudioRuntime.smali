.class final Lcom/ahsim/demulation/GenesisTitleAudioRuntime;
.super Ljava/lang/Object;
.source "GenesisTitleAudioRuntime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;
    }
.end annotation


# static fields
.field private static final MAX_BLOCK_FRAMES:I = 0x200

.field private static final OUTPUT_RATE:I = 0xac44

.field private static final SAMPLES_PER_GENESIS_FRAME:I = 0x2df


# instance fields
.field private activeDac:Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;

.field private final builder:Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;

.field private final data:Lcom/ahsim/demulation/GenesisGemsSfxData;

.field private final effect:Lcom/ahsim/demulation/GenesisLibGmeMusic;

.field private final effectMix:[S

.field private effectRemaining:J

.field private effectSequence:I

.field private final music:Lcom/ahsim/demulation/GenesisLibGmeMusic;

.field private musicActive:Z

.field private musicBuilt:Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;

.field private musicCursorSamples:J

.field private final musicMix:[S

.field private nextDacEvent:I


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/GenesisAudioSource;Lcom/ahsim/demulation/GenesisGemsSfxData;)V
    .locals 2
    .param p1, "source"    # Lcom/ahsim/demulation/GenesisAudioSource;
    .param p2, "titleData"    # Lcom/ahsim/demulation/GenesisGemsSfxData;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/ahsim/demulation/GenesisLibGmeMusic;

    invoke-direct {v0}, Lcom/ahsim/demulation/GenesisLibGmeMusic;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->music:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    .line 31
    new-instance v0, Lcom/ahsim/demulation/GenesisLibGmeMusic;

    invoke-direct {v0}, Lcom/ahsim/demulation/GenesisLibGmeMusic;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->effect:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    .line 32
    const/16 v0, 0x400

    new-array v1, v0, [S

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicMix:[S

    .line 33
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->effectMix:[S

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->effectSequence:I

    .line 48
    iput-object p2, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    .line 49
    new-instance v0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;

    invoke-direct {v0, p1, p2}, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;-><init>(Lcom/ahsim/demulation/GenesisAudioSource;Lcom/ahsim/demulation/GenesisGemsSfxData;)V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->builder:Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;

    .line 50
    return-void
.end method

.method constructor <init>([BLcom/ahsim/demulation/GenesisGemsSfxData;)V
    .locals 1
    .param p1, "rom"    # [B
    .param p2, "titleData"    # Lcom/ahsim/demulation/GenesisGemsSfxData;

    .line 44
    invoke-static {p1}, Lcom/ahsim/demulation/GenesisAudioSource;->fromRom([B)Lcom/ahsim/demulation/GenesisAudioSource;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;-><init>(Lcom/ahsim/demulation/GenesisAudioSource;Lcom/ahsim/demulation/GenesisGemsSfxData;)V

    .line 45
    return-void
.end method

.method private advanceMusicCursor(Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;)V
    .locals 10
    .param p1, "built"    # Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;

    .line 271
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicCursorSamples:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicCursorSamples:J

    .line 272
    iget v0, p1, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->ticks:I

    int-to-long v0, v0

    const-wide/16 v2, 0x2df

    mul-long/2addr v0, v2

    .line 273
    .local v0, "total":J
    iget-wide v4, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicCursorSamples:J

    cmp-long v4, v4, v0

    if-gez v4, :cond_0

    return-void

    .line 274
    :cond_0
    iget-boolean v4, p1, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->looping:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget-wide v6, p1, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->loopStartFrame:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-ltz v4, :cond_1

    iget-wide v6, p1, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->loopStartFrame:J

    iget v4, p1, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->ticks:I

    int-to-long v8, v4

    cmp-long v4, v6, v8

    if-gez v4, :cond_1

    .line 275
    iget-wide v6, p1, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->loopStartFrame:J

    mul-long/2addr v6, v2

    iput-wide v6, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicCursorSamples:J

    .line 276
    iget-wide v2, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicCursorSamples:J

    invoke-static {p1, v2, v3}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->firstDacEventAtOrAfter(Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;J)I

    move-result v2

    iput v2, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->nextDacEvent:I

    .line 277
    iput-object v5, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->activeDac:Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;

    goto :goto_0

    .line 279
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicActive:Z

    .line 280
    iput-object v5, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->activeDac:Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;

    .line 281
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->music:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->close()V

    .line 283
    :goto_0
    return-void
.end method

.method private static clamp16(I)S
    .locals 2
    .param p0, "v"    # I

    .line 304
    const/16 v0, 0x7fff

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, -0x8000

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method private static clampVolume(I)I
    .locals 2
    .param p0, "v"    # I

    .line 306
    const/16 v0, 0x64

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private discardMusic()V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->music:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->close()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicBuilt:Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;

    .line 146
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicActive:Z

    .line 147
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicCursorSamples:J

    .line 148
    iput v1, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->nextDacEvent:I

    .line 149
    iput-object v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->activeDac:Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;

    .line 150
    return-void
.end method

.method private static firstDacEventAtOrAfter(Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;J)I
    .locals 8
    .param p0, "built"    # Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;
    .param p1, "sample"    # J

    .line 297
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->dacEvents:[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;

    .line 298
    .local v0, "events":[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;
    const/4 v1, 0x0

    .local v1, "lo":I
    array-length v2, v0

    .line 299
    .local v2, "hi":I
    :goto_0
    if-ge v1, v2, :cond_1

    add-int v3, v1, v2

    ushr-int/lit8 v3, v3, 0x1

    .local v3, "mid":I
    aget-object v4, v0, v3

    iget-wide v4, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;->frame:J

    const-wide/16 v6, 0x2df

    mul-long/2addr v4, v6

    .local v4, "s":J
    cmp-long v6, v4, p1

    if-gez v6, :cond_0

    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_0

    .line 300
    .end local v3    # "mid":I
    .end local v4    # "s":J
    :cond_1
    return v1
.end method

.method private nextMusicDacSample()I
    .locals 11

    .line 233
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicBuilt:Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;

    .line 234
    .local v0, "built":Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 235
    :cond_0
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->dacEvents:[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;

    .line 236
    .local v1, "events":[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;
    :goto_0
    iget v2, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->nextDacEvent:I

    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 237
    iget v2, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->nextDacEvent:I

    aget-object v2, v1, v2

    .line 238
    .local v2, "e":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;
    iget-wide v3, v2, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;->frame:J

    const-wide/16 v5, 0x2df

    mul-long/2addr v3, v5

    .line 239
    .local v3, "eventSample":J
    iget-wide v5, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicCursorSamples:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    goto :goto_1

    .line 240
    :cond_1
    iget-wide v5, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicCursorSamples:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_2

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->startDac(Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;)V

    .line 241
    :cond_2
    iget v5, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->nextDacEvent:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->nextDacEvent:I

    .line 242
    .end local v2    # "e":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;
    .end local v3    # "eventSample":J
    goto :goto_0

    .line 244
    :cond_3
    :goto_1
    const/4 v2, 0x0

    .line 245
    .local v2, "value":I
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->activeDac:Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;

    .line 246
    .local v3, "dac":Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;
    if-eqz v3, :cond_5

    .line 247
    iget-wide v4, v3, Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;->position:D

    double-to-int v4, v4

    .line 248
    .local v4, "pos":I
    iget-object v5, v3, Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;->sample:Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;

    iget v5, v5, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->firstLength:I

    const/4 v6, 0x0

    if-lt v4, v5, :cond_4

    iput-object v6, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->activeDac:Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;

    goto :goto_2

    .line 250
    :cond_4
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    iget-object v7, v3, Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;->sample:Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;

    invoke-virtual {v5, v7, v4}, Lcom/ahsim/demulation/GenesisGemsSfxData;->sampleByte(Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;I)I

    move-result v5

    add-int/lit8 v5, v5, -0x80

    shl-int/lit8 v2, v5, 0x8

    .line 251
    iget-wide v7, v3, Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;->position:D

    iget-wide v9, v3, Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;->step:D

    add-double/2addr v7, v9

    iput-wide v7, v3, Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;->position:D

    .line 252
    iget-wide v7, v3, Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;->position:D

    double-to-int v5, v7

    iget-object v7, v3, Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;->sample:Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;

    iget v7, v7, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->firstLength:I

    if-lt v5, v7, :cond_5

    iput-object v6, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->activeDac:Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;

    .line 255
    .end local v4    # "pos":I
    :cond_5
    :goto_2
    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->advanceMusicCursor(Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;)V

    .line 256
    return v2
.end method

.method private static normalizeCursor(Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;J)J
    .locals 8
    .param p0, "built"    # Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;
    .param p1, "absolute"    # J

    .line 286
    iget v0, p0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->ticks:I

    int-to-long v0, v0

    const-wide/16 v2, 0x2df

    mul-long/2addr v0, v2

    .line 287
    .local v0, "total":J
    const-wide/16 v4, 0x0

    cmp-long v6, p1, v4

    if-gtz v6, :cond_0

    return-wide v4

    .line 288
    :cond_0
    cmp-long v6, p1, v0

    if-gez v6, :cond_1

    return-wide p1

    .line 289
    :cond_1
    iget-boolean v6, p0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->looping:Z

    if-eqz v6, :cond_4

    iget-wide v6, p0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->loopStartFrame:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_2

    goto :goto_0

    .line 290
    :cond_2
    iget-wide v6, p0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->loopStartFrame:J

    mul-long/2addr v6, v2

    .line 291
    .local v6, "start":J
    sub-long v2, v0, v6

    .line 292
    .local v2, "span":J
    cmp-long v4, v2, v4

    if-gtz v4, :cond_3

    return-wide v6

    .line 293
    :cond_3
    sub-long v4, p1, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v4

    add-long/2addr v4, v6

    return-wide v4

    .line 289
    .end local v2    # "span":J
    .end local v6    # "start":J
    :cond_4
    :goto_0
    return-wide v0
.end method

.method private startDac(Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;

    .line 260
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    iget v1, p1, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;->sampleIndex:I

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/GenesisGemsSfxData;->sample(I)Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;

    move-result-object v0

    .line 261
    .local v0, "sample":Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v2, v0, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->firstLength:I

    if-lez v2, :cond_3

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->looped()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->fourBit()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 264
    :cond_0
    iget v2, p1, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;->patchRate:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->headerRateCode()I

    move-result v2

    goto :goto_0

    :cond_1
    iget v2, p1, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;->patchRate:I

    and-int/lit8 v2, v2, 0xf

    .line 265
    .local v2, "rateCode":I
    :goto_0
    invoke-static {v2}, Lcom/ahsim/demulation/GenesisGemsSfxData;->sampleRateHz(I)D

    move-result-wide v3

    .line 266
    .local v3, "sourceRate":D
    const-wide/16 v5, 0x0

    cmpg-double v5, v3, v5

    if-gtz v5, :cond_2

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->activeDac:Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;

    return-void

    .line 267
    :cond_2
    new-instance v1, Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;

    const-wide v5, 0x40e5888000000000L    # 44100.0

    div-double v5, v3, v5

    invoke-direct {v1, v0, v5, v6}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;-><init>(Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;D)V

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->activeDac:Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;

    .line 268
    return-void

    .line 262
    .end local v2    # "rateCode":I
    .end local v3    # "sourceRate":D
    :cond_3
    :goto_1
    iput-object v1, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->activeDac:Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;

    return-void
.end method


# virtual methods
.method isActive()Z
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->isEffectActive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isEffectActive()Z
    .locals 4

    .line 132
    iget v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->effectSequence:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->effect:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->effectRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isMusicActive()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->music:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method playEffect(I)Z
    .locals 5
    .param p1, "sequence"    # I

    .line 123
    const/16 v0, 0xa

    const/4 v1, 0x0

    if-lt p1, v0, :cond_3

    const/16 v0, 0xc

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->builder:Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;

    invoke-virtual {v0, p1}, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;->build(I)Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;

    move-result-object v0

    .line 125
    .local v0, "built":Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->effect:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    iget-object v3, v0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->vgm:[B

    const v4, 0xac44

    invoke-virtual {v2, v3, v4}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->open([BI)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 126
    :cond_1
    iput p1, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->effectSequence:I

    .line 127
    iget v1, v0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->ticks:I

    int-to-long v1, v1

    const-wide/16 v3, 0x2df

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->effectRemaining:J

    .line 128
    const/4 v1, 0x1

    return v1

    .line 125
    :cond_2
    :goto_0
    return v1

    .line 123
    .end local v0    # "built":Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;
    :cond_3
    :goto_1
    return v1
.end method

.method prepareTitleMusic()Z
    .locals 9

    .line 56
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicBuilt:Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->music:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v6, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicCursorSamples:J

    cmp-long v0, v6, v3

    if-nez v0, :cond_0

    .line 57
    iput-boolean v5, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicActive:Z

    .line 58
    iput-object v2, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->activeDac:Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;

    .line 59
    iput v5, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->nextDacEvent:I

    .line 60
    return v1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->builder:Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;

    invoke-virtual {v0, v5}, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;->build(I)Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;

    move-result-object v0

    .line 63
    .local v0, "built":Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;
    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->music:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    iget-object v7, v0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->vgm:[B

    const v8, 0xac44

    invoke-virtual {v6, v7, v8}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->open([BI)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 67
    :cond_1
    iput-object v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicBuilt:Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;

    .line 68
    iput-boolean v5, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicActive:Z

    .line 69
    iput-wide v3, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicCursorSamples:J

    .line 70
    iput v5, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->nextDacEvent:I

    .line 71
    iput-object v2, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->activeDac:Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;

    .line 72
    return v1

    .line 64
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->discardMusic()V

    .line 65
    return v5
.end method

.method release()V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->discardMusic()V

    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->stopEffect()V

    return-void
.end method

.method renderEffectStereo([SII)Z
    .locals 8
    .param p1, "out"    # [S
    .param p2, "frames"    # I
    .param p3, "sfxVolumePercent"    # I

    .line 205
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-ltz p2, :cond_7

    array-length v1, p1

    mul-int/lit8 v2, p2, 0x2

    if-lt v1, v2, :cond_7

    const/16 v1, 0x200

    if-le p2, v1, :cond_0

    goto :goto_2

    .line 206
    :cond_0
    mul-int/lit8 v1, p2, 0x2

    invoke-static {p1, v0, v1, v0}, Ljava/util/Arrays;->fill([SIIS)V

    .line 207
    const/4 v1, 0x1

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->isEffectActive()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 208
    :cond_1
    int-to-long v2, p2

    iget-wide v4, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->effectRemaining:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 209
    .local v2, "effectFrames":I
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->effect:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->effectMix:[S

    invoke-virtual {v3, v4, v2}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->renderStereo([SI)Z

    move-result v3

    if-nez v3, :cond_2

    return v0

    .line 210
    :cond_2
    iget-wide v3, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->effectRemaining:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->effectRemaining:J

    .line 211
    iget-wide v3, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->effectRemaining:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_3

    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->stopEffect()V

    .line 212
    :cond_3
    invoke-static {p3}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->clampVolume(I)I

    move-result v0

    .line 213
    .local v0, "evol":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_5

    .line 214
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->effectMix:[S

    mul-int/lit8 v5, v3, 0x2

    aget-short v4, v4, v5

    .line 215
    .local v4, "el":I
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->effectMix:[S

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v1

    aget-short v5, v5, v6

    .line 216
    .local v5, "er":I
    const/16 v6, 0x64

    if-eq v0, v6, :cond_4

    mul-int v7, v4, v0

    div-int/lit8 v4, v7, 0x64

    mul-int v7, v5, v0

    div-int/lit8 v5, v7, 0x64

    .line 217
    :cond_4
    mul-int/lit8 v6, v3, 0x2

    int-to-short v7, v4

    aput-short v7, p1, v6

    .line 218
    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v1

    int-to-short v7, v5

    aput-short v7, p1, v6

    .line 213
    .end local v4    # "el":I
    .end local v5    # "er":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 220
    .end local v3    # "i":I
    :cond_5
    return v1

    .line 207
    .end local v0    # "evol":I
    .end local v2    # "effectFrames":I
    :cond_6
    :goto_1
    return v1

    .line 205
    :cond_7
    :goto_2
    return v0
.end method

.method renderMusicStereo([SII)Z
    .locals 9
    .param p1, "out"    # [S
    .param p2, "frames"    # I
    .param p3, "musicVolumePercent"    # I

    .line 184
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-ltz p2, :cond_6

    array-length v1, p1

    mul-int/lit8 v2, p2, 0x2

    if-lt v1, v2, :cond_6

    const/16 v1, 0x200

    if-le p2, v1, :cond_0

    goto :goto_1

    .line 185
    :cond_0
    mul-int/lit8 v1, p2, 0x2

    invoke-static {p1, v0, v1, v0}, Ljava/util/Arrays;->fill([SIIS)V

    .line 186
    const/4 v1, 0x1

    if-nez p2, :cond_1

    return v1

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->isMusicActive()Z

    move-result v2

    .line 188
    .local v2, "haveMusic":Z
    if-nez v2, :cond_2

    return v1

    .line 189
    :cond_2
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->music:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicMix:[S

    invoke-virtual {v3, v4, p2}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->renderStereo([SI)Z

    move-result v3

    if-nez v3, :cond_3

    return v0

    .line 190
    :cond_3
    invoke-static {p3}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->clampVolume(I)I

    move-result v0

    .line 191
    .local v0, "mvol":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_5

    .line 192
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->nextMusicDacSample()I

    move-result v4

    .line 193
    .local v4, "dac":I
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicMix:[S

    mul-int/lit8 v6, v3, 0x2

    aget-short v5, v5, v6

    add-int/2addr v5, v4

    .line 194
    .local v5, "ml":I
    iget-object v6, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicMix:[S

    mul-int/lit8 v7, v3, 0x2

    add-int/2addr v7, v1

    aget-short v6, v6, v7

    add-int/2addr v6, v4

    .line 195
    .local v6, "mr":I
    const/16 v7, 0x64

    if-eq v0, v7, :cond_4

    mul-int v8, v5, v0

    div-int/lit8 v5, v8, 0x64

    mul-int v8, v6, v0

    div-int/lit8 v6, v8, 0x64

    .line 196
    :cond_4
    mul-int/lit8 v7, v3, 0x2

    invoke-static {v5}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->clamp16(I)S

    move-result v8

    aput-short v8, p1, v7

    .line 197
    mul-int/lit8 v7, v3, 0x2

    add-int/2addr v7, v1

    invoke-static {v6}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->clamp16(I)S

    move-result v8

    aput-short v8, p1, v7

    .line 191
    .end local v4    # "dac":I
    .end local v5    # "ml":I
    .end local v6    # "mr":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 199
    .end local v3    # "i":I
    :cond_5
    return v1

    .line 184
    .end local v0    # "mvol":I
    .end local v2    # "haveMusic":Z
    :cond_6
    :goto_1
    return v0
.end method

.method renderStereo([SIII)Z
    .locals 3
    .param p1, "out"    # [S
    .param p2, "frames"    # I
    .param p3, "musicVolumePercent"    # I
    .param p4, "sfxVolumePercent"    # I

    .line 225
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-ltz p2, :cond_4

    array-length v1, p1

    mul-int/lit8 v2, p2, 0x2

    if-lt v1, v2, :cond_4

    const/16 v1, 0x200

    if-le p2, v1, :cond_0

    goto :goto_1

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicMix:[S

    invoke-virtual {p0, v1, p2, p3}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->renderMusicStereo([SII)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->effectMix:[S

    invoke-virtual {p0, v1, p2, p4}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->renderEffectStereo([SII)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 228
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    mul-int/lit8 v1, p2, 0x2

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicMix:[S

    aget-short v1, v1, v0

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->effectMix:[S

    aget-short v2, v2, v0

    add-int/2addr v1, v2

    invoke-static {v1}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->clamp16(I)S

    move-result v1

    aput-short v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 225
    :cond_4
    :goto_1
    return v0
.end method

.method restartAfterAudioFault()V
    .locals 7

    .line 161
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->music:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->tellSamples()I

    move-result v0

    .line 162
    .local v0, "absolute":I
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicBuilt:Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;

    .line 163
    .local v1, "built":Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;
    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->stopEffect()V

    .line 164
    iget-boolean v2, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicActive:Z

    if-eqz v2, :cond_3

    if-nez v1, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->music:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->close()V

    .line 166
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->music:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    iget-object v3, v1, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->vgm:[B

    const v4, 0xac44

    invoke-virtual {v2, v3, v4}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->open([BI)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->discardMusic()V

    return-void

    .line 167
    :cond_1
    if-lez v0, :cond_2

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->music:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    invoke-virtual {v2, v0}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->seekSamples(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 168
    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->normalizeCursor(Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;J)J

    move-result-wide v2

    .line 169
    .local v2, "normalized":J
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->music:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    const-wide/32 v5, 0x7fffffff

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->seekSamples(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 170
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->discardMusic()V

    return-void

    .line 173
    .end local v2    # "normalized":J
    :cond_2
    iput-object v1, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicBuilt:Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;

    .line 174
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicActive:Z

    .line 175
    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->normalizeCursor(Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicCursorSamples:J

    .line 176
    iget-wide v2, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicCursorSamples:J

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->firstDacEventAtOrAfter(Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;J)I

    move-result v2

    iput v2, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->nextDacEvent:I

    .line 177
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->activeDac:Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;

    .line 178
    return-void

    .line 164
    :cond_3
    :goto_0
    return-void
.end method

.method startTitleMenuMusic()Z
    .locals 11

    .line 97
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicBuilt:Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->music:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iput-boolean v2, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicActive:Z

    .line 99
    iput-object v1, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->activeDac:Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;

    .line 100
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicBuilt:Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;

    iget-wide v3, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicCursorSamples:J

    invoke-static {v0, v3, v4}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->firstDacEventAtOrAfter(Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;J)I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->nextDacEvent:I

    .line 101
    return v2

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->builder:Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;->build(I)Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;

    move-result-object v0

    .line 104
    .local v0, "built":Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->music:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    iget-object v5, v0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->vgm:[B

    const v6, 0xac44

    invoke-virtual {v4, v5, v6}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->open([BI)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 108
    :cond_1
    iget-boolean v4, v0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->looping:Z

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_2

    iget-wide v7, v0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->loopStartFrame:J

    cmp-long v4, v7, v5

    if-ltz v4, :cond_2

    .line 109
    iget-wide v7, v0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->loopStartFrame:J

    const-wide/16 v9, 0x2df

    mul-long/2addr v7, v9

    goto :goto_0

    :cond_2
    move-wide v7, v5

    .line 110
    .local v7, "start":J
    :goto_0
    cmp-long v4, v7, v5

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->music:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    const-wide/32 v5, 0x7fffffff

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->seekSamples(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 111
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->discardMusic()V

    .line 112
    return v3

    .line 114
    :cond_3
    iput-object v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicBuilt:Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;

    .line 115
    iput-boolean v2, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicActive:Z

    .line 116
    iput-wide v7, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicCursorSamples:J

    .line 117
    invoke-static {v0, v7, v8}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->firstDacEventAtOrAfter(Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;J)I

    move-result v3

    iput v3, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->nextDacEvent:I

    .line 118
    iput-object v1, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->activeDac:Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;

    .line 119
    return v2

    .line 105
    .end local v7    # "start":J
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->discardMusic()V

    .line 106
    return v3
.end method

.method startTitleMusic()Z
    .locals 6

    .line 78
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicBuilt:Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->music:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicCursorSamples:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->prepareTitleMusic()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 81
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicActive:Z

    .line 82
    iput-wide v2, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicCursorSamples:J

    .line 83
    iput v1, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->nextDacEvent:I

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->activeDac:Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;

    .line 85
    return v0
.end method

.method stopAll()V
    .locals 0

    .line 157
    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->stopMusic()V

    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->stopEffect()V

    return-void
.end method

.method stopEffect()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->effect:Lcom/ahsim/demulation/GenesisLibGmeMusic;

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->close()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->effectSequence:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->effectRemaining:J

    .line 153
    return-void
.end method

.method stopEffect(I)V
    .locals 1
    .param p1, "sequence"    # I

    .line 155
    iget v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->effectSequence:I

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->stopEffect()V

    .line 156
    :cond_0
    return-void
.end method

.method stopMusic()V
    .locals 1

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->musicActive:Z

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->activeDac:Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;

    .line 141
    return-void
.end method
