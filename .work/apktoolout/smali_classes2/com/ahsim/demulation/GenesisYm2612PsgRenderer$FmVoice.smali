.class final Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;
.super Ljava/lang/Object;
.source "GenesisYm2612PsgRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FmVoice"
.end annotation


# instance fields
.field final algorithm:I

.field final amsDb:D

.field bendFactor:D

.field fb1:D

.field fb2:D

.field final feedback:I

.field hardKillFrame:J

.field final keyMask:I

.field lfoPhase:D

.field final lfoStep:D

.field final music:Z

.field musicTicks:I

.field final note:I

.field final offFrame:J

.field final op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

.field final pmsCents:D

.field final priority:I

.field released:Z

.field final sequence:I

.field final synthetic this$0:Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;

.field final track:I


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;ILcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;IIZ)V
    .locals 29
    .param p2, "sequence"    # I
    .param p3, "e"    # Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;
    .param p4, "p"    # Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;
    .param p5, "attenuation"    # I
    .param p6, "slot"    # I
    .param p7, "music"    # Z

    .line 249
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p7

    iput-object v2, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->this$0:Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 240
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    iput-wide v3, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->bendFactor:D

    .line 241
    const/4 v14, 0x4

    new-array v1, v14, [Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    .line 246
    const-wide v3, 0x7fffffffffffffffL

    iput-wide v3, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->hardKillFrame:J

    .line 250
    move/from16 v15, p2

    iput v15, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->sequence:I

    iget v1, v11, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->track:I

    iput v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->track:I

    iget v1, v11, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->priority:I

    iput v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->priority:I

    iput-boolean v13, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->music:Z

    iget v1, v11, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->note:I

    iput v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->note:I

    .line 251
    invoke-virtual {v12}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->fmAlgorithm()I

    move-result v1

    iput v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->algorithm:I

    invoke-virtual {v12}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->fmFeedback()I

    move-result v1

    iput v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->feedback:I

    invoke-virtual {v12}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->fmKeyMask()I

    move-result v1

    iput v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->keyMask:I

    .line 252
    if-nez v13, :cond_0

    iget v1, v11, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->duration:I

    if-lez v1, :cond_0

    invoke-static {v2}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->-$$Nest$fgetframe(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;)J

    move-result-wide v3

    iget v1, v11, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->duration:I

    int-to-double v5, v1

    invoke-static {v2}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->-$$Nest$fgetrate(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;)I

    move-result v1

    int-to-double v7, v1

    const-wide/high16 v9, 0x404e000000000000L    # 60.0

    div-double/2addr v7, v9

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    add-long/2addr v3, v5

    :cond_0
    iput-wide v3, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->offFrame:J

    .line 253
    const/16 v16, 0x0

    if-eqz v13, :cond_1

    iget v1, v11, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->duration:I

    goto :goto_0

    :cond_1
    move/from16 v1, v16

    :goto_0
    iput v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->musicTicks:I

    .line 254
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v17

    .line 255
    .local v17, "lfo":I
    and-int/lit8 v3, v17, 0x8

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->-$$Nest$sfgetLFO_HZ()[D

    move-result-object v3

    and-int/lit8 v4, v17, 0x7

    aget-wide v4, v3, v4

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v4, v6

    invoke-static {v2}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->-$$Nest$fgetrate(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;)I

    move-result v3

    int-to-double v6, v3

    div-double/2addr v4, v6

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x0

    :goto_1
    iput-wide v4, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->lfoStep:D

    .line 256
    invoke-virtual {v12, v14}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v18

    .local v18, "b4":I
    invoke-static {}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->-$$Nest$sfgetPMS_CENTS()[D

    move-result-object v3

    and-int/lit8 v4, v18, 0x7

    aget-wide v4, v3, v4

    iput-wide v4, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->pmsCents:D

    invoke-static {}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->-$$Nest$sfgetAMS_DB()[D

    move-result-object v3

    ushr-int/lit8 v4, v18, 0x4

    and-int/lit8 v4, v4, 0x3

    aget-wide v4, v3, v4

    iput-wide v4, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->amsDb:D

    .line 257
    invoke-static {}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->-$$Nest$sfgetCARRIER_MASK()[I

    move-result-object v3

    iget v4, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->algorithm:I

    aget v19, v3, v4

    .line 258
    .local v19, "carriers":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v14, :cond_8

    .line 259
    invoke-static {}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->-$$Nest$sfgetFM_PATCH_OPERATOR()[I

    move-result-object v4

    aget v4, v4, v3

    .line 260
    .local v4, "base":I
    invoke-virtual {v12}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->fmChannel3Special()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v2, v12, v3}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->-$$Nest$mch3Frequency(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;I)D

    move-result-wide v5

    goto :goto_3

    :cond_3
    iget v5, v11, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->note:I

    invoke-static {v2, v5}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->-$$Nest$mnoteFrequency(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;I)D

    move-result-wide v5

    .line 261
    .local v5, "freq":D
    :goto_3
    invoke-virtual {v12, v4}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v7

    and-int/lit8 v7, v7, 0xf

    .local v7, "mul":I
    if-nez v7, :cond_4

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    goto :goto_4

    :cond_4
    int-to-double v8, v7

    :goto_4
    move-wide/from16 v20, v8

    .line 262
    .local v20, "ratio":D
    invoke-virtual {v12, v4}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v8

    ushr-int/2addr v8, v14

    and-int/lit8 v22, v8, 0x7

    .line 263
    .local v22, "dt":I
    invoke-static {}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->-$$Nest$sfgetDT_CENTS()[D

    move-result-object v8

    aget-wide v9, v8, v22

    const-wide v23, 0x4092c00000000000L    # 1200.0

    div-double v9, v9, v23

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double v8, v8, v20

    mul-double/2addr v5, v8

    .line 264
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v12, v8}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v8

    and-int/lit8 v8, v8, 0x7f

    .line 265
    .local v8, "tl":I
    shl-int v9, v1, v3

    and-int v9, v19, v9

    if-eqz v9, :cond_5

    move/from16 v14, p5

    invoke-static {v2, v8, v14}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->-$$Nest$mattenuateCarrierTl(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;II)I

    move-result v8

    goto :goto_5

    :cond_5
    move/from16 v14, p5

    .line 266
    :goto_5
    add-int/lit8 v9, v4, 0x3

    invoke-virtual {v12, v9}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v9

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_6

    move v10, v1

    goto :goto_6

    :cond_6
    move/from16 v10, v16

    .line 267
    .local v10, "am":Z
    :goto_6
    iget-object v15, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    move v9, v1

    new-instance v1, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    add-int/lit8 v9, v4, 0x2

    invoke-virtual {v12, v9}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v9

    move-object/from16 v25, v1

    add-int/lit8 v1, v4, 0x3

    invoke-virtual {v12, v1}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v1

    move/from16 v26, v1

    add-int/lit8 v1, v4, 0x4

    invoke-virtual {v12, v1}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v1

    move/from16 v27, v1

    add-int/lit8 v1, v4, 0x5

    invoke-virtual {v12, v1}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v1

    move/from16 v24, v26

    move/from16 v26, v7

    move/from16 v7, v24

    move/from16 v24, v3

    move/from16 v28, v9

    move v9, v1

    move-object/from16 v1, v25

    move/from16 v25, v4

    move-wide v3, v5

    move v5, v8

    move/from16 v6, v28

    move/from16 v8, v27

    const/16 v27, 0x1

    .end local v4    # "base":I
    .end local v7    # "mul":I
    .end local v8    # "tl":I
    .local v3, "freq":D
    .local v5, "tl":I
    .local v24, "i":I
    .local v25, "base":I
    .local v26, "mul":I
    invoke-direct/range {v1 .. v10}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;-><init>(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;DIIIIIZ)V

    aput-object v1, v15, v24

    .line 268
    iget v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->keyMask:I

    shl-int v2, v27, v24

    and-int/2addr v1, v2

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    aget-object v1, v1, v24

    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->forceOff()V

    .line 258
    .end local v3    # "freq":D
    .end local v5    # "tl":I
    .end local v10    # "am":Z
    .end local v20    # "ratio":D
    .end local v22    # "dt":I
    .end local v25    # "base":I
    .end local v26    # "mul":I
    :cond_7
    add-int/lit8 v3, v24, 0x1

    move-object/from16 v2, p1

    move/from16 v15, p2

    move/from16 v1, v27

    const/4 v14, 0x4

    .end local v24    # "i":I
    .local v3, "i":I
    goto/16 :goto_2

    .line 270
    .end local v3    # "i":I
    :cond_8
    return-void
.end method


# virtual methods
.method dead()Z
    .locals 7

    .line 274
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->this$0:Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->-$$Nest$fgetframe(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->hardKillFrame:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .local v5, "o":Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;
    invoke-virtual {v5}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->dead()Z

    move-result v6

    if-nez v6, :cond_1

    return v3

    .end local v5    # "o":Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method keyOff()V
    .locals 6

    .line 272
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->released:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->released:Z

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->this$0:Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->-$$Nest$fgetframe(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->this$0:Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;

    invoke-static {v2}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->-$$Nest$fgetrate(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x406fc00000000000L    # 254.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->hardKillFrame:J

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .local v3, "o":Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;
    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->keyOff()V

    .end local v3    # "o":Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method musicSubbeat()V
    .locals 1

    .line 273
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->released:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->musicTicks:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->musicTicks:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->musicTicks:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->keyOff()V

    :cond_0
    return-void
.end method

.method render(J)D
    .locals 30
    .param p1, "now"    # J

    .line 277
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->released:Z

    if-nez v1, :cond_0

    iget-wide v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->offFrame:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->keyOff()V

    .line 278
    :cond_0
    iget-wide v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->lfoPhase:D

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    .local v1, "lfo":D
    iget-wide v3, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->lfoPhase:D

    iget-wide v5, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->lfoStep:D

    add-double/2addr v3, v5

    iput-wide v3, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->lfoPhase:D

    iget-wide v3, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->lfoPhase:D

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    iget-wide v3, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->lfoPhase:D

    sub-double/2addr v3, v5

    iput-wide v3, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->lfoPhase:D

    .line 279
    :cond_1
    iget-wide v3, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->pmsCents:D

    mul-double/2addr v3, v1

    .line 280
    .local v3, "cents":D
    const-wide v5, 0x4092c00000000000L    # 1200.0

    div-double v5, v3, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget-wide v9, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->bendFactor:D

    mul-double/2addr v5, v9

    .line 281
    .local v5, "pitch":D
    const-wide/16 v9, 0x0

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    neg-double v11, v11

    iget-wide v13, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->amsDb:D

    mul-double/2addr v11, v13

    const-wide/high16 v13, 0x4034000000000000L    # 20.0

    div-double/2addr v11, v13

    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    .line 282
    .local v11, "amGain":D
    iget-object v13, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    array-length v14, v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    if-ge v15, v14, :cond_2

    aget-object v9, v13, v15

    .local v9, "o":Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;
    invoke-virtual {v9, v5, v6, v11, v12}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->prepare(DD)V

    .end local v9    # "o":Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;
    add-int/lit8 v15, v15, 0x1

    const-wide/16 v9, 0x0

    goto :goto_0

    .line 283
    :cond_2
    iget v9, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->feedback:I

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    move-wide/from16 v17, v11

    if-nez v9, :cond_3

    move-wide/from16 v19, v13

    const-wide/16 v7, 0x0

    const/4 v14, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x1

    .end local v11    # "amGain":D
    .local v17, "amGain":D
    iget-wide v10, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->fb1:D

    move v12, v9

    move-wide/from16 v19, v10

    iget-wide v9, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->fb2:D

    add-double v10, v19, v9

    mul-double/2addr v10, v13

    iget v9, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->feedback:I

    sub-int/2addr v9, v12

    move-wide/from16 v19, v13

    move v14, v12

    int-to-double v12, v9

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    const-wide v12, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v7, v12

    mul-double/2addr v7, v10

    .line 284
    .local v7, "feedbackIn":D
    :goto_1
    iget-object v9, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    aget-object v9, v9, v16

    invoke-virtual {v9, v7, v8}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sample(D)D

    move-result-wide v9

    .local v9, "s1":D
    iget-wide v11, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->fb1:D

    iput-wide v11, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->fb2:D

    iput-wide v9, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->fb1:D

    .line 286
    iget v11, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->algorithm:I

    const/16 v16, 0x2

    const-wide/high16 v21, 0x4014000000000000L    # 5.0

    packed-switch v11, :pswitch_data_0

    .line 304
    move-wide/from16 v25, v1

    move-wide/from16 v28, v3

    const/16 v27, 0x3

    .end local v1    # "lfo":D
    .end local v3    # "cents":D
    .local v25, "lfo":D
    .local v28, "cents":D
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    aget-object v1, v1, v14

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sample(D)D

    move-result-wide v11

    .local v11, "s2":D
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    aget-object v1, v1, v16

    invoke-virtual {v1, v2, v3}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sample(D)D

    move-result-wide v13

    .local v13, "s3":D
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    aget-object v1, v1, v27

    invoke-virtual {v1, v2, v3}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sample(D)D

    move-result-wide v1

    .local v1, "s4":D
    add-double v3, v9, v11

    add-double/2addr v3, v13

    add-double/2addr v3, v1

    const-wide/high16 v15, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v15, v3

    .local v15, "out":D
    goto/16 :goto_2

    .line 302
    .end local v11    # "s2":D
    .end local v13    # "s3":D
    .end local v15    # "out":D
    .end local v25    # "lfo":D
    .end local v28    # "cents":D
    .local v1, "lfo":D
    .restart local v3    # "cents":D
    :pswitch_0
    iget-object v11, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    aget-object v11, v11, v14

    const-wide/high16 v23, 0x4008000000000000L    # 3.0

    mul-double v12, v9, v21

    invoke-virtual {v11, v12, v13}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sample(D)D

    move-result-wide v11

    .restart local v11    # "s2":D
    iget-object v13, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    aget-object v13, v13, v16

    move-wide/from16 v25, v1

    const-wide/16 v1, 0x0

    .end local v1    # "lfo":D
    .restart local v25    # "lfo":D
    invoke-virtual {v13, v1, v2}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sample(D)D

    move-result-wide v13

    const/16 v27, 0x3

    .restart local v13    # "s3":D
    iget-object v15, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    aget-object v15, v15, v27

    invoke-virtual {v15, v1, v2}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sample(D)D

    move-result-wide v1

    .local v1, "s4":D
    add-double v15, v11, v13

    add-double/2addr v15, v1

    div-double v15, v15, v23

    move-wide/from16 v28, v3

    .restart local v15    # "out":D
    goto/16 :goto_2

    .line 300
    .end local v11    # "s2":D
    .end local v13    # "s3":D
    .end local v15    # "out":D
    .end local v25    # "lfo":D
    .local v1, "lfo":D
    :pswitch_1
    move-wide/from16 v25, v1

    const-wide/high16 v23, 0x4008000000000000L    # 3.0

    const/16 v27, 0x3

    .end local v1    # "lfo":D
    .restart local v25    # "lfo":D
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    aget-object v1, v1, v14

    mul-double v11, v9, v21

    invoke-virtual {v1, v11, v12}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sample(D)D

    move-result-wide v11

    .restart local v11    # "s2":D
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    aget-object v1, v1, v16

    mul-double v13, v9, v21

    invoke-virtual {v1, v13, v14}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sample(D)D

    move-result-wide v13

    .restart local v13    # "s3":D
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    aget-object v1, v1, v27

    move-wide/from16 v28, v3

    .end local v3    # "cents":D
    .restart local v28    # "cents":D
    mul-double v2, v9, v21

    invoke-virtual {v1, v2, v3}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sample(D)D

    move-result-wide v1

    .local v1, "s4":D
    add-double v3, v11, v13

    add-double/2addr v3, v1

    div-double v15, v3, v23

    .restart local v15    # "out":D
    goto/16 :goto_2

    .line 298
    .end local v11    # "s2":D
    .end local v13    # "s3":D
    .end local v15    # "out":D
    .end local v25    # "lfo":D
    .end local v28    # "cents":D
    .local v1, "lfo":D
    .restart local v3    # "cents":D
    :pswitch_2
    move-wide/from16 v25, v1

    move-wide/from16 v28, v3

    const/16 v27, 0x3

    .end local v1    # "lfo":D
    .end local v3    # "cents":D
    .restart local v25    # "lfo":D
    .restart local v28    # "cents":D
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    aget-object v1, v1, v14

    mul-double v2, v9, v21

    invoke-virtual {v1, v2, v3}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sample(D)D

    move-result-wide v11

    .restart local v11    # "s2":D
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    aget-object v1, v1, v16

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sample(D)D

    move-result-wide v13

    .restart local v13    # "s3":D
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    aget-object v1, v1, v27

    mul-double v2, v13, v21

    invoke-virtual {v1, v2, v3}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sample(D)D

    move-result-wide v1

    .local v1, "s4":D
    add-double v3, v11, v1

    mul-double v15, v3, v19

    .restart local v15    # "out":D
    goto/16 :goto_2

    .line 296
    .end local v11    # "s2":D
    .end local v13    # "s3":D
    .end local v15    # "out":D
    .end local v25    # "lfo":D
    .end local v28    # "cents":D
    .local v1, "lfo":D
    .restart local v3    # "cents":D
    :pswitch_3
    move-wide/from16 v25, v1

    move-wide/from16 v28, v3

    const/16 v27, 0x3

    .end local v1    # "lfo":D
    .end local v3    # "cents":D
    .restart local v25    # "lfo":D
    .restart local v28    # "cents":D
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    aget-object v1, v1, v14

    mul-double v2, v9, v21

    invoke-virtual {v1, v2, v3}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sample(D)D

    move-result-wide v11

    .restart local v11    # "s2":D
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    aget-object v1, v1, v16

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sample(D)D

    move-result-wide v13

    .restart local v13    # "s3":D
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    aget-object v1, v1, v27

    add-double v2, v11, v13

    mul-double v2, v2, v21

    invoke-virtual {v1, v2, v3}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sample(D)D

    move-result-wide v1

    .local v1, "s4":D
    move-wide v15, v1

    .restart local v15    # "out":D
    goto/16 :goto_2

    .line 294
    .end local v11    # "s2":D
    .end local v13    # "s3":D
    .end local v15    # "out":D
    .end local v25    # "lfo":D
    .end local v28    # "cents":D
    .local v1, "lfo":D
    .restart local v3    # "cents":D
    :pswitch_4
    move-wide/from16 v25, v1

    move-wide/from16 v28, v3

    const-wide/16 v2, 0x0

    const/16 v27, 0x3

    .end local v1    # "lfo":D
    .end local v3    # "cents":D
    .restart local v25    # "lfo":D
    .restart local v28    # "cents":D
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    aget-object v1, v1, v14

    invoke-virtual {v1, v2, v3}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sample(D)D

    move-result-wide v11

    .restart local v11    # "s2":D
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    aget-object v1, v1, v16

    mul-double v2, v11, v21

    invoke-virtual {v1, v2, v3}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sample(D)D

    move-result-wide v13

    .restart local v13    # "s3":D
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    aget-object v1, v1, v27

    add-double v2, v9, v13

    mul-double v2, v2, v21

    invoke-virtual {v1, v2, v3}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sample(D)D

    move-result-wide v1

    .local v1, "s4":D
    move-wide v15, v1

    .restart local v15    # "out":D
    goto :goto_2

    .line 292
    .end local v11    # "s2":D
    .end local v13    # "s3":D
    .end local v15    # "out":D
    .end local v25    # "lfo":D
    .end local v28    # "cents":D
    .local v1, "lfo":D
    .restart local v3    # "cents":D
    :pswitch_5
    move-wide/from16 v25, v1

    move-wide/from16 v28, v3

    const/16 v27, 0x3

    .end local v1    # "lfo":D
    .end local v3    # "cents":D
    .restart local v25    # "lfo":D
    .restart local v28    # "cents":D
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    aget-object v1, v1, v14

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sample(D)D

    move-result-wide v11

    .restart local v11    # "s2":D
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    aget-object v1, v1, v16

    add-double v2, v9, v11

    mul-double v2, v2, v21

    invoke-virtual {v1, v2, v3}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sample(D)D

    move-result-wide v13

    .restart local v13    # "s3":D
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    aget-object v1, v1, v27

    mul-double v2, v13, v21

    invoke-virtual {v1, v2, v3}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sample(D)D

    move-result-wide v1

    .local v1, "s4":D
    move-wide v15, v1

    .restart local v15    # "out":D
    goto :goto_2

    .line 290
    .end local v11    # "s2":D
    .end local v13    # "s3":D
    .end local v15    # "out":D
    .end local v25    # "lfo":D
    .end local v28    # "cents":D
    .local v1, "lfo":D
    .restart local v3    # "cents":D
    :pswitch_6
    move-wide/from16 v25, v1

    move-wide/from16 v28, v3

    const/16 v27, 0x3

    .end local v1    # "lfo":D
    .end local v3    # "cents":D
    .restart local v25    # "lfo":D
    .restart local v28    # "cents":D
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    aget-object v1, v1, v14

    mul-double v2, v9, v21

    invoke-virtual {v1, v2, v3}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sample(D)D

    move-result-wide v11

    .restart local v11    # "s2":D
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    aget-object v1, v1, v16

    mul-double v2, v11, v21

    invoke-virtual {v1, v2, v3}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sample(D)D

    move-result-wide v13

    .restart local v13    # "s3":D
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->op:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;

    aget-object v1, v1, v27

    mul-double v2, v13, v21

    invoke-virtual {v1, v2, v3}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sample(D)D

    move-result-wide v1

    .local v1, "s4":D
    move-wide v15, v1

    .line 306
    .restart local v15    # "out":D
    :goto_2
    return-wide v15

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
