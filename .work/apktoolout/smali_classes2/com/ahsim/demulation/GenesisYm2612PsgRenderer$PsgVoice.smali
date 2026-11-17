.class final Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;
.super Ljava/lang/Object;
.source "GenesisYm2612PsgRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PsgVoice"
.end annotation


# instance fields
.field final attack:I

.field final attackLevel:I

.field final attenuationGain:D

.field bendFactor:D

.field final decay:I

.field keyReleased:Z

.field level:I

.field lfsr:I

.field mode:I

.field final music:Z

.field musicTicks:I

.field final noise:Z

.field noisePhase:D

.field noiseStep:D

.field final note:I

.field final offFrame:J

.field phase:D

.field phaseStep:D

.field final priority:I

.field final release:I

.field final sequence:I

.field final sustain:I

.field final synthetic this$0:Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;

.field toneBaseStep:D

.field final track:I

.field final whiteNoise:Z


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;ILcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;ZIZ)V
    .locals 20
    .param p2, "sequence"    # I
    .param p3, "e"    # Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;
    .param p4, "p"    # Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;
    .param p5, "noise"    # Z
    .param p6, "attenuation"    # I
    .param p7, "music"    # Z

    .line 369
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p7

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->this$0:Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 358
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    iput-wide v5, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->bendFactor:D

    .line 363
    const/16 v5, 0xff

    iput v5, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->level:I

    const/4 v5, 0x1

    iput v5, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->mode:I

    .line 364
    const v6, 0x8000

    iput v6, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->lfsr:I

    .line 370
    move/from16 v6, p2

    iput v6, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->sequence:I

    iget v7, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->track:I

    iput v7, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->track:I

    iget v7, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->priority:I

    iput v7, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->priority:I

    iget v7, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->note:I

    iput v7, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->note:I

    move/from16 v7, p5

    iput-boolean v7, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->noise:Z

    iput-boolean v4, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->music:Z

    .line 371
    if-nez v4, :cond_0

    iget v8, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->duration:I

    if-lez v8, :cond_0

    invoke-static {v1}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->-$$Nest$fgetframe(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;)J

    move-result-wide v8

    iget v10, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->duration:I

    int-to-double v10, v10

    invoke-static {v1}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->-$$Nest$fgetrate(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;)I

    move-result v12

    int-to-double v12, v12

    const-wide/high16 v14, 0x404e000000000000L    # 60.0

    div-double/2addr v12, v14

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    add-long/2addr v8, v10

    goto :goto_0

    :cond_0
    const-wide v8, 0x7fffffffffffffffL

    :goto_0
    iput-wide v8, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->offFrame:J

    .line 372
    const/4 v8, 0x0

    if-eqz v4, :cond_1

    iget v9, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->duration:I

    goto :goto_1

    :cond_1
    move v9, v8

    :goto_1
    iput v9, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->musicTicks:I

    .line 373
    iget v9, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->note:I

    invoke-static {v1, v9}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->-$$Nest$mpsgWavelength(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;I)I

    move-result v9

    .line 374
    .local v9, "wavelength":I
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-double v10, v10

    const-wide/high16 v12, 0x4040000000000000L    # 32.0

    mul-double/2addr v10, v12

    const-wide v12, 0x414b4f4c80000000L    # 3579545.0

    div-double v10, v12, v10

    .line 375
    .local v10, "toneHz":D
    invoke-static {v1}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->-$$Nest$fgetrate(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;)I

    move-result v14

    int-to-double v14, v14

    div-double v14, v10, v14

    iput-wide v14, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->toneBaseStep:D

    iget-wide v14, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->toneBaseStep:D

    iput-wide v14, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->phaseStep:D

    .line 376
    invoke-virtual {v3, v5}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v14

    .local v14, "nd":I
    and-int/lit8 v15, v14, 0x4

    if-eqz v15, :cond_2

    move v8, v5

    :cond_2
    iput-boolean v8, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->whiteNoise:Z

    .line 377
    and-int/lit8 v8, v14, 0x3

    .line 379
    .local v8, "sel":I
    const/4 v15, 0x3

    if-ne v8, v15, :cond_3

    move-wide v12, v10

    .local v12, "nHz":D
    goto :goto_2

    .line 380
    .end local v12    # "nHz":D
    :cond_3
    shl-int/2addr v5, v8

    move-wide/from16 v16, v12

    int-to-double v12, v5

    const-wide/high16 v18, 0x4080000000000000L    # 512.0

    mul-double v12, v12, v18

    div-double v12, v16, v12

    .line 381
    .restart local v12    # "nHz":D
    :goto_2
    invoke-static {v1}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->-$$Nest$fgetrate(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;)I

    move-result v1

    int-to-double v1, v1

    div-double v1, v12, v1

    iput-wide v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->noiseStep:D

    .line 382
    const/4 v1, 0x2

    invoke-virtual {v3, v1}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v1

    iput v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->attack:I

    invoke-virtual {v3, v15}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x4

    shl-int/2addr v1, v2

    iput v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->sustain:I

    invoke-virtual {v3, v2}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    shl-int/2addr v1, v2

    iput v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->attackLevel:I

    const/4 v1, 0x5

    invoke-virtual {v3, v1}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v1

    iput v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->decay:I

    const/4 v1, 0x6

    invoke-virtual {v3, v1}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v1

    iput v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->release:I

    .line 383
    move/from16 v1, p6

    int-to-double v2, v1

    const-wide/high16 v15, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v15

    neg-double v2, v2

    const-wide/high16 v15, 0x4034000000000000L    # 20.0

    div-double/2addr v2, v15

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->attenuationGain:D

    .line 384
    return-void
.end method


# virtual methods
.method dead()Z
    .locals 1

    .line 387
    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->mode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method keyOff()V
    .locals 1

    .line 385
    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->mode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->mode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->keyReleased:Z

    :cond_0
    return-void
.end method

.method musicSubbeat()V
    .locals 1

    .line 386
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->keyReleased:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->musicTicks:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->musicTicks:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->musicTicks:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->keyOff()V

    :cond_0
    return-void
.end method

.method render()D
    .locals 11

    .line 401
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->keyReleased:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->this$0:Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->-$$Nest$fgetframe(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->offFrame:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->keyOff()V

    .line 402
    :cond_0
    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->mode:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    return-wide v1

    .line 404
    :cond_1
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->noise:Z

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-eqz v0, :cond_5

    .line 405
    iget-wide v7, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->noisePhase:D

    iget-wide v9, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->noiseStep:D

    add-double/2addr v7, v9

    iput-wide v7, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->noisePhase:D

    .line 406
    :goto_0
    iget-wide v7, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->noisePhase:D

    cmpl-double v0, v7, v5

    if-ltz v0, :cond_3

    iget-wide v7, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->noisePhase:D

    sub-double/2addr v7, v5

    iput-wide v7, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->noisePhase:D

    .line 407
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->whiteNoise:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->lfsr:I

    iget v7, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->lfsr:I

    shr-int/lit8 v7, v7, 0x3

    xor-int/2addr v0, v7

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->lfsr:I

    :goto_1
    and-int/lit8 v0, v0, 0x1

    .line 408
    .local v0, "bit":I
    iget v7, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->lfsr:I

    shr-int/lit8 v7, v7, 0x1

    shl-int/lit8 v8, v0, 0xf

    or-int/2addr v7, v8

    iput v7, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->lfsr:I

    .end local v0    # "bit":I
    goto :goto_0

    .line 409
    :cond_3
    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->lfsr:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_4

    move-wide v3, v5

    .local v3, "wave":D
    :cond_4
    goto :goto_2

    .line 411
    .end local v3    # "wave":D
    :cond_5
    iget-wide v7, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->toneBaseStep:D

    iget-wide v9, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->bendFactor:D

    mul-double/2addr v7, v9

    iput-wide v7, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->phaseStep:D

    .line 412
    iget-wide v7, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->phase:D

    iget-wide v9, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->phaseStep:D

    add-double/2addr v7, v9

    iput-wide v7, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->phase:D

    iget-wide v7, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->phase:D

    cmpl-double v0, v7, v5

    if-ltz v0, :cond_6

    iget-wide v7, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->phase:D

    iget-wide v9, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->phase:D

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    sub-double/2addr v7, v9

    iput-wide v7, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->phase:D

    :cond_6
    iget-wide v7, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->phase:D

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v7, v9

    if-gez v0, :cond_7

    move-wide v3, v5

    .line 414
    .restart local v3    # "wave":D
    :cond_7
    :goto_2
    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->level:I

    ushr-int/lit8 v0, v0, 0x4

    const/4 v5, 0x0

    const/16 v6, 0xf

    invoke-static {v0, v5, v6}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->-$$Nest$smclamp(III)I

    move-result v0

    .line 415
    .local v0, "att":I
    if-lt v0, v6, :cond_8

    goto :goto_3

    :cond_8
    int-to-double v1, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v5

    neg-double v1, v1

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    div-double/2addr v1, v5

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    .line 416
    .local v1, "amp":D
    :goto_3
    mul-double v5, v3, v1

    iget-wide v7, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->attenuationGain:D

    mul-double/2addr v5, v7

    const-wide v7, 0x3fe199999999999aL    # 0.55

    mul-double/2addr v5, v7

    return-wide v5
.end method

.method tickEnvelope()V
    .locals 4

    .line 389
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->keyReleased:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->this$0:Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->-$$Nest$fgetframe(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->offFrame:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->keyOff()V

    .line 390
    :cond_0
    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->mode:I

    const/16 v1, 0x100

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 396
    :pswitch_1
    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->level:I

    iget v2, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->release:I

    add-int/2addr v0, v2

    .local v0, "n":I
    if-ge v0, v1, :cond_1

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->level:I

    goto :goto_0

    :cond_1
    const/16 v1, 0xff

    iput v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->level:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->mode:I

    goto :goto_0

    .line 393
    .end local v0    # "n":I
    :pswitch_2
    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->level:I

    iget v2, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->sustain:I

    const/4 v3, 0x3

    if-ge v0, v2, :cond_3

    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->level:I

    iget v2, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->decay:I

    add-int/2addr v0, v2

    .restart local v0    # "n":I
    if-ge v0, v1, :cond_2

    iget v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->sustain:I

    if-ge v0, v1, :cond_2

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->level:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->sustain:I

    iput v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->level:I

    iput v3, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->mode:I

    goto :goto_0

    .line 394
    .end local v0    # "n":I
    :cond_3
    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->level:I

    iget v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->sustain:I

    if-le v0, v1, :cond_5

    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->level:I

    iget v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->decay:I

    sub-int/2addr v0, v1

    .restart local v0    # "n":I
    if-ltz v0, :cond_4

    iget v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->sustain:I

    if-lt v0, v1, :cond_4

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->level:I

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->sustain:I

    iput v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->level:I

    iput v3, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->mode:I

    goto :goto_0

    .line 395
    .end local v0    # "n":I
    :cond_5
    iput v3, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->mode:I

    goto :goto_0

    .line 391
    :pswitch_3
    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->level:I

    iget v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->attack:I

    sub-int/2addr v0, v1

    .restart local v0    # "n":I
    if-lez v0, :cond_6

    iget v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->attackLevel:I

    if-le v0, v1, :cond_6

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->level:I

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->attackLevel:I

    iput v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->level:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->mode:I

    .line 399
    .end local v0    # "n":I
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
