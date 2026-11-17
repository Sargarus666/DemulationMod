.class final Lcom/ahsim/demulation/GenesisGemsSfxData;
.super Ljava/lang/Object;
.source "GenesisGemsSfxData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;,
        Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;,
        Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;,
        Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;,
        Lcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;,
        Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;,
        Lcom/ahsim/demulation/GenesisGemsSfxData$LoopFrame;,
        Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;
    }
.end annotation


# static fields
.field static final CONTROL_MASTER_ATTENUATION:I = 0x4

.field static final DIRECT_SOUND_TABLE:I = 0x6a87e

.field static final FEEDBACK_SOUND_TABLE:I = 0x6a95c

.field static final GAMEPLAY_DTBL:I = 0xd06bf

.field static final GAMEPLAY_ETBL:I = 0xfe185

.field static final GAMEPLAY_PTBL:I = 0xfe2b6

.field static final GAMEPLAY_STBL:I = 0xf6363

.field static final PATCH_DAC:I = 0x1

.field static final PATCH_FM:I = 0x0

.field static final PATCH_PSG_NOISE:I = 0x3

.field static final PATCH_PSG_TONE:I = 0x2

.field static final PSG_NTSC_CLOCK_HZ:D = 3579545.0

.field static final SFX_TICKS_PER_SECOND:I = 0x3c

.field static final TITLE_DTBL:I = 0xc8160

.field static final TITLE_ETBL:I = 0xd0251

.field static final TITLE_PTBL:I = 0xd02ae

.field static final TITLE_STBL:I = 0xcf970

.field static final YM2612_NTSC_CLOCK_HZ:D = 7670453.571428572


# instance fields
.field private final dtbl:I

.field private final etbl:I

.field private final gameplayBank:Z

.field private final patchCache:[Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;

.field private final patchCount:I

.field private final ptbl:I

.field private final sampleCache:[Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;

.field private final sequenceCache:[Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;

.field private final sequenceCount:I

.field private final source:Lcom/ahsim/demulation/GenesisAudioSource;

.field private final stbl:I


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/GenesisAudioSource;)V
    .locals 8
    .param p1, "source"    # Lcom/ahsim/demulation/GenesisAudioSource;

    .line 204
    const/4 v6, 0x1

    const/16 v7, 0x61

    const v2, 0xfe2b6

    const v3, 0xfe185

    const v4, 0xf6363

    const v5, 0xd06bf

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "source":Lcom/ahsim/demulation/GenesisAudioSource;
    .local v1, "source":Lcom/ahsim/demulation/GenesisAudioSource;
    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/GenesisGemsSfxData;-><init>(Lcom/ahsim/demulation/GenesisAudioSource;IIIIZI)V

    .line 205
    return-void
.end method

.method private constructor <init>(Lcom/ahsim/demulation/GenesisAudioSource;IIIIZI)V
    .locals 3
    .param p1, "source"    # Lcom/ahsim/demulation/GenesisAudioSource;
    .param p2, "ptbl"    # I
    .param p3, "etbl"    # I
    .param p4, "stbl"    # I
    .param p5, "dtbl"    # I
    .param p6, "gameplayBank"    # Z
    .param p7, "sampleCount"    # I

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    if-eqz p1, :cond_5

    .line 218
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->source:Lcom/ahsim/demulation/GenesisAudioSource;

    .line 219
    iput p2, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->ptbl:I

    .line 220
    iput p3, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->etbl:I

    .line 221
    iput p4, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->stbl:I

    .line 222
    iput p5, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->dtbl:I

    .line 223
    iput-boolean p6, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->gameplayBank:Z

    .line 224
    invoke-direct {p0, p4}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u16(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->sequenceCount:I

    .line 225
    invoke-direct {p0, p2}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u16(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->patchCount:I

    .line 226
    if-eqz p6, :cond_2

    .line 227
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->sequenceCount:I

    const/16 v1, 0x54

    if-ne v0, v1, :cond_1

    .line 229
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->patchCount:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->patchCount:I

    const/16 v1, 0x80

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected gameplay GEMS patch count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->patchCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected gameplay GEMS sequence count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->sequenceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_2
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->sequenceCount:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 234
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->patchCount:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_3

    .line 237
    :goto_0
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->sequenceCount:I

    new-array v0, v0, [Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->sequenceCache:[Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;

    .line 238
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->patchCount:I

    new-array v0, v0, [Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->patchCache:[Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;

    .line 239
    const/4 v0, 0x0

    invoke-static {v0, p7}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->sampleCache:[Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;

    .line 240
    return-void

    .line 235
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected title GEMS patch count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->patchCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected title GEMS sequence count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->sequenceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Audio source is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>([B)V
    .locals 1
    .param p1, "rom"    # [B

    .line 200
    invoke-static {p1}, Lcom/ahsim/demulation/GenesisAudioSource;->fromRom([B)Lcom/ahsim/demulation/GenesisAudioSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisGemsSfxData;-><init>(Lcom/ahsim/demulation/GenesisAudioSource;)V

    .line 201
    return-void
.end method

.method static createTitleBank(Lcom/ahsim/demulation/GenesisAudioSource;)Lcom/ahsim/demulation/GenesisGemsSfxData;
    .locals 8
    .param p0, "source"    # Lcom/ahsim/demulation/GenesisAudioSource;

    .line 212
    new-instance v0, Lcom/ahsim/demulation/GenesisGemsSfxData;

    const/4 v6, 0x0

    const/4 v7, 0x6

    const v2, 0xd02ae

    const v3, 0xd0251

    const v4, 0xcf970

    const v5, 0xc8160

    move-object v1, p0

    .end local p0    # "source":Lcom/ahsim/demulation/GenesisAudioSource;
    .local v1, "source":Lcom/ahsim/demulation/GenesisAudioSource;
    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/GenesisGemsSfxData;-><init>(Lcom/ahsim/demulation/GenesisAudioSource;IIIIZI)V

    return-object v0
.end method

.method static createTitleBank([B)Lcom/ahsim/demulation/GenesisGemsSfxData;
    .locals 1
    .param p0, "rom"    # [B

    .line 208
    invoke-static {p0}, Lcom/ahsim/demulation/GenesisAudioSource;->fromRom([B)Lcom/ahsim/demulation/GenesisAudioSource;

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisGemsSfxData;->createTitleBank(Lcom/ahsim/demulation/GenesisAudioSource;)Lcom/ahsim/demulation/GenesisGemsSfxData;

    move-result-object v0

    return-object v0
.end method

.method private parseTrack(II)Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;
    .locals 28
    .param p1, "track"    # I
    .param p2, "start"    # I

    .line 380
    move-object/from16 v1, p0

    new-instance v0, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;-><init>(Lcom/ahsim/demulation/GenesisGemsSfxData-IA;)V

    move-object v2, v0

    .line 381
    .local v2, "out":Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;
    move/from16 v0, p2

    .line 382
    .local v0, "p":I
    const/4 v3, 0x0

    .line 383
    .local v3, "delay":I
    const/4 v4, 0x0

    .line 384
    .local v4, "duration":I
    const-wide/16 v5, 0x0

    .line 385
    .local v5, "tick":J
    const/4 v7, -0x1

    .line 386
    .local v7, "patchIndex":I
    const/4 v8, -0x1

    .line 387
    .local v8, "patchType":I
    const/4 v9, 0x4

    .line 388
    .local v9, "patchRate":I
    const/4 v10, 0x0

    .line 389
    .local v10, "priority":I
    const/4 v11, 0x0

    .line 390
    .local v11, "channelAttenuation":I
    const/4 v12, 0x0

    .line 391
    .local v12, "sfxTimebase":Z
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v13, "loops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/GenesisGemsSfxData$LoopFrame;>;"
    const/16 v14, 0x20

    new-array v14, v14, [I

    .line 393
    .local v14, "mailboxes":[I
    const/4 v15, -0x1

    .line 395
    .local v15, "pending":I
    const/16 v16, 0x0

    move/from16 v22, v4

    move/from16 v19, v7

    move/from16 v23, v10

    move/from16 v24, v11

    move/from16 v11, v16

    move v10, v8

    .end local v4    # "duration":I
    .end local v7    # "patchIndex":I
    .end local v8    # "patchType":I
    .local v10, "patchType":I
    .local v11, "steps":I
    .local v19, "patchIndex":I
    .local v22, "duration":I
    .local v23, "priority":I
    .local v24, "channelAttenuation":I
    :goto_0
    const/16 v4, 0x4000

    const/4 v7, 0x1

    if-ge v11, v4, :cond_27

    .line 396
    invoke-direct {v1, v0, v7}, Lcom/ahsim/demulation/GenesisGemsSfxData;->require(II)V

    .line 398
    if-ltz v15, :cond_0

    move v4, v15

    .local v4, "cmd":I
    const/4 v15, -0x1

    move/from16 v25, v15

    move v15, v0

    goto :goto_1

    .line 399
    .end local v4    # "cmd":I
    :cond_0
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "p":I
    .local v4, "p":I
    invoke-direct {v1, v0}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u8(I)I

    move-result v0

    move/from16 v25, v15

    move v15, v4

    move v4, v0

    .line 401
    .local v4, "cmd":I
    .local v15, "p":I
    .local v25, "pending":I
    :goto_1
    and-int/lit16 v0, v4, 0xc0

    const v16, 0xffff

    const/16 v8, 0xc0

    if-ne v0, v8, :cond_2

    .line 402
    and-int/lit8 v0, v4, 0x3f

    .line 404
    .local v0, "value":I
    :goto_2
    invoke-direct {v1, v15, v7}, Lcom/ahsim/demulation/GenesisGemsSfxData;->require(II)V

    .line 405
    add-int/lit8 v17, v15, 0x1

    .end local v15    # "p":I
    .local v17, "p":I
    invoke-direct {v1, v15}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u8(I)I

    move-result v15

    .line 406
    .local v15, "n":I
    and-int/lit16 v7, v15, 0xc0

    if-eq v7, v8, :cond_1

    move v7, v15

    .line 409
    .end local v15    # "n":I
    .end local v25    # "pending":I
    .local v7, "pending":I
    and-int v3, v0, v16

    .line 410
    move v15, v7

    move/from16 v26, v11

    move/from16 v0, v17

    goto/16 :goto_12

    .line 407
    .end local v7    # "pending":I
    .restart local v15    # "n":I
    .restart local v25    # "pending":I
    :cond_1
    shl-int/lit8 v7, v0, 0x6

    and-int/lit8 v20, v15, 0x3f

    or-int v0, v7, v20

    .line 408
    .end local v15    # "n":I
    move/from16 v15, v17

    const/4 v7, 0x1

    goto :goto_2

    .line 412
    .end local v0    # "value":I
    .end local v17    # "p":I
    .local v15, "p":I
    :cond_2
    and-int/lit16 v0, v4, 0xc0

    const/16 v7, 0x80

    if-ne v0, v7, :cond_4

    .line 413
    and-int/lit8 v0, v4, 0x3f

    .line 415
    .restart local v0    # "value":I
    :goto_3
    const/4 v8, 0x1

    invoke-direct {v1, v15, v8}, Lcom/ahsim/demulation/GenesisGemsSfxData;->require(II)V

    .line 416
    add-int/lit8 v8, v15, 0x1

    .end local v15    # "p":I
    .local v8, "p":I
    invoke-direct {v1, v15}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u8(I)I

    move-result v15

    .line 417
    .local v15, "n":I
    move/from16 v17, v0

    .end local v0    # "value":I
    .local v17, "value":I
    and-int/lit16 v0, v15, 0xc0

    if-eq v0, v7, :cond_3

    move v0, v15

    .line 420
    .end local v15    # "n":I
    .end local v25    # "pending":I
    .local v0, "pending":I
    and-int v7, v17, v16

    .line 421
    .end local v22    # "duration":I
    .local v7, "duration":I
    move v15, v0

    move/from16 v22, v7

    move v0, v8

    move/from16 v26, v11

    goto/16 :goto_12

    .line 418
    .end local v0    # "pending":I
    .end local v7    # "duration":I
    .restart local v15    # "n":I
    .restart local v22    # "duration":I
    .restart local v25    # "pending":I
    :cond_3
    shl-int/lit8 v0, v17, 0x6

    and-int/lit8 v20, v15, 0x3f

    or-int v0, v0, v20

    .line 419
    .end local v15    # "n":I
    .end local v17    # "value":I
    .local v0, "value":I
    move v15, v8

    goto :goto_3

    .line 424
    .end local v0    # "value":I
    .end local v8    # "p":I
    .local v15, "p":I
    :cond_4
    const/16 v0, 0x60

    const/4 v7, 0x3

    if-ge v4, v0, :cond_f

    .line 425
    const/4 v8, 0x1

    if-ne v10, v8, :cond_9

    .line 426
    const/16 v0, 0x30

    if-ge v4, v0, :cond_5

    add-int/lit8 v0, v4, 0x30

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v4, -0x30

    :goto_4
    move v7, v0

    .line 428
    .local v7, "sampleIndex":I
    :try_start_0
    invoke-virtual {v1, v7}, Lcom/ahsim/demulation/GenesisGemsSfxData;->sample(I)Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    .local v0, "sample":Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;
    goto :goto_5

    .end local v0    # "sample":Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/RuntimeException;
    const/16 v16, 0x0

    move-object/from16 v0, v16

    .line 430
    .local v0, "sample":Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;
    :goto_5
    if-eqz v0, :cond_7

    iget v8, v0, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->firstLength:I

    if-gtz v8, :cond_6

    move/from16 v21, v4

    move v8, v7

    move/from16 v27, v9

    move/from16 v26, v11

    const/4 v4, 0x1

    goto :goto_6

    .line 432
    :cond_6
    iget-object v8, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->dacEvents:Ljava/util/List;

    move/from16 v21, v4

    .end local v4    # "cmd":I
    .local v21, "cmd":I
    new-instance v4, Lcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;

    move/from16 v26, v11

    move-object v11, v8

    move v8, v7

    move/from16 v7, p1

    .end local v7    # "sampleIndex":I
    .end local v11    # "steps":I
    .local v8, "sampleIndex":I
    .local v26, "steps":I
    invoke-direct/range {v4 .. v9}, Lcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;-><init>(JIII)V

    move/from16 v27, v9

    .end local v9    # "patchRate":I
    .local v27, "patchRate":I
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    if-nez v12, :cond_8

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->hasNonSfxTimedDac:Z

    goto :goto_7

    .line 430
    .end local v8    # "sampleIndex":I
    .end local v21    # "cmd":I
    .end local v26    # "steps":I
    .end local v27    # "patchRate":I
    .restart local v4    # "cmd":I
    .restart local v7    # "sampleIndex":I
    .restart local v9    # "patchRate":I
    .restart local v11    # "steps":I
    :cond_7
    move/from16 v21, v4

    move v4, v8

    move/from16 v27, v9

    move/from16 v26, v11

    move v8, v7

    .end local v4    # "cmd":I
    .end local v7    # "sampleIndex":I
    .end local v9    # "patchRate":I
    .end local v11    # "steps":I
    .restart local v8    # "sampleIndex":I
    .restart local v21    # "cmd":I
    .restart local v26    # "steps":I
    .restart local v27    # "patchRate":I
    :goto_6
    iput-boolean v4, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->unsupported:Z

    .line 435
    .end local v0    # "sample":Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;
    .end local v8    # "sampleIndex":I
    :cond_8
    :goto_7
    move v8, v15

    goto :goto_9

    .end local v21    # "cmd":I
    .end local v26    # "steps":I
    .end local v27    # "patchRate":I
    .restart local v4    # "cmd":I
    .restart local v9    # "patchRate":I
    .restart local v11    # "steps":I
    :cond_9
    move/from16 v21, v4

    move/from16 v27, v9

    move/from16 v26, v11

    .end local v4    # "cmd":I
    .end local v9    # "patchRate":I
    .end local v11    # "steps":I
    .restart local v21    # "cmd":I
    .restart local v26    # "steps":I
    .restart local v27    # "patchRate":I
    if-ltz v10, :cond_d

    if-gt v10, v7, :cond_d

    .line 436
    iget-object v4, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->noteEvents:Ljava/util/List;

    move v8, v15

    .end local v15    # "p":I
    .local v8, "p":I
    new-instance v15, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;

    move/from16 v18, p1

    move-wide/from16 v16, v5

    move/from16 v20, v10

    .end local v5    # "tick":J
    .end local v10    # "patchType":I
    .local v16, "tick":J
    .local v20, "patchType":I
    invoke-direct/range {v15 .. v24}, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;-><init>(JIIIIIII)V

    .end local v16    # "tick":J
    .end local v20    # "patchType":I
    .restart local v5    # "tick":J
    .restart local v10    # "patchType":I
    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    if-nez v10, :cond_a

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->usesFm:Z

    goto :goto_8

    .line 439
    :cond_a
    const/4 v4, 0x1

    const/4 v0, 0x2

    if-ne v10, v0, :cond_b

    iput-boolean v4, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->usesPsgTone:Z

    goto :goto_8

    .line 440
    :cond_b
    if-ne v10, v7, :cond_c

    iput-boolean v4, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->usesPsgNoise:Z

    .line 441
    :cond_c
    :goto_8
    if-nez v12, :cond_e

    iput-boolean v4, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->hasNonSfxTimedHardware:Z

    goto :goto_9

    .line 435
    .end local v8    # "p":I
    .restart local v15    # "p":I
    :cond_d
    move v8, v15

    const/4 v4, 0x1

    .line 442
    .end local v15    # "p":I
    .restart local v8    # "p":I
    iput-boolean v4, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->unsupported:Z

    .line 443
    :cond_e
    :goto_9
    move-wide/from16 v16, v5

    .end local v5    # "tick":J
    .restart local v16    # "tick":J
    int-to-long v4, v3

    add-long v5, v16, v4

    .line 444
    .end local v16    # "tick":J
    .restart local v5    # "tick":J
    move v0, v8

    move/from16 v15, v25

    move/from16 v9, v27

    goto/16 :goto_12

    .line 447
    .end local v8    # "p":I
    .end local v21    # "cmd":I
    .end local v26    # "steps":I
    .end local v27    # "patchRate":I
    .restart local v4    # "cmd":I
    .restart local v9    # "patchRate":I
    .restart local v11    # "steps":I
    .restart local v15    # "p":I
    :cond_f
    move/from16 v21, v4

    move-wide/from16 v16, v5

    move/from16 v27, v9

    move/from16 v26, v11

    move v8, v15

    .end local v4    # "cmd":I
    .end local v5    # "tick":J
    .end local v9    # "patchRate":I
    .end local v11    # "steps":I
    .end local v15    # "p":I
    .restart local v8    # "p":I
    .restart local v16    # "tick":J
    .restart local v21    # "cmd":I
    .restart local v26    # "steps":I
    .restart local v27    # "patchRate":I
    const/4 v4, 0x4

    packed-switch v21, :pswitch_data_0

    .line 540
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->unsupported:Z

    .line 541
    return-object v2

    .line 527
    :pswitch_0
    add-int/lit8 v15, v8, 0x1

    .end local v8    # "p":I
    .restart local v15    # "p":I
    invoke-direct {v1, v8}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u8(I)I

    move-result v8

    .local v8, "code":I
    add-int/lit8 v0, v15, 0x1

    .end local v15    # "p":I
    .local v0, "p":I
    invoke-direct {v1, v15}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u8(I)I

    move-result v11

    .line 528
    .local v11, "value":I
    if-ne v8, v4, :cond_10

    .line 529
    iget-object v15, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->controlEvents:Ljava/util/List;

    new-instance v4, Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;

    and-int/lit8 v9, v11, 0x7f

    move/from16 v7, p1

    move-wide/from16 v5, v16

    .end local v16    # "tick":J
    .restart local v5    # "tick":J
    invoke-direct/range {v4 .. v9}, Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;-><init>(JIII)V

    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 530
    .end local v5    # "tick":J
    .restart local v16    # "tick":J
    :cond_10
    move-wide/from16 v5, v16

    .end local v16    # "tick":J
    .restart local v5    # "tick":J
    const/4 v4, 0x5

    if-ne v8, v4, :cond_11

    .line 531
    and-int/lit8 v24, v11, 0x7f

    goto :goto_a

    .line 534
    :cond_11
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->unsupported:Z

    .line 536
    :goto_a
    move-wide/from16 v16, v5

    .end local v5    # "tick":J
    .restart local v16    # "tick":J
    int-to-long v4, v3

    add-long v5, v16, v4

    .line 537
    .end local v16    # "tick":J
    .restart local v5    # "tick":J
    move v15, v0

    move/from16 v9, v27

    goto/16 :goto_11

    .line 512
    .end local v0    # "p":I
    .end local v5    # "tick":J
    .end local v11    # "value":I
    .local v8, "p":I
    .restart local v16    # "tick":J
    :pswitch_1
    add-int/lit8 v15, v8, 0x1

    .end local v8    # "p":I
    .restart local v15    # "p":I
    invoke-direct {v1, v8}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u8(I)I

    move-result v0

    .local v0, "box":I
    add-int/lit8 v4, v15, 0x1

    .end local v15    # "p":I
    .local v4, "p":I
    invoke-direct {v1, v15}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u8(I)I

    move-result v5

    .local v5, "relation":I
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "p":I
    .local v6, "p":I
    invoke-direct {v1, v4}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u8(I)I

    move-result v4

    .local v4, "value":I
    add-int/lit8 v15, v6, 0x1

    .end local v6    # "p":I
    .restart local v15    # "p":I
    invoke-direct {v1, v6}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u8(I)I

    move-result v6

    .line 513
    .local v6, "jump":I
    array-length v7, v14

    const/4 v8, 0x0

    if-ge v0, v7, :cond_12

    aget v7, v14, v0

    goto :goto_b

    :cond_12
    move v7, v8

    .line 515
    .local v7, "left":I
    :goto_b
    packed-switch v5, :pswitch_data_1

    .line 521
    if-ne v7, v4, :cond_18

    const/4 v8, 0x1

    goto :goto_c

    .line 520
    :pswitch_2
    if-gt v4, v7, :cond_13

    const/4 v8, 0x1

    .local v8, "yes":Z
    :cond_13
    goto :goto_c

    .line 519
    .end local v8    # "yes":Z
    :pswitch_3
    if-ge v4, v7, :cond_14

    const/4 v8, 0x1

    .restart local v8    # "yes":Z
    :cond_14
    goto :goto_c

    .line 518
    .end local v8    # "yes":Z
    :pswitch_4
    if-lt v4, v7, :cond_15

    const/4 v8, 0x1

    .restart local v8    # "yes":Z
    :cond_15
    goto :goto_c

    .line 517
    .end local v8    # "yes":Z
    :pswitch_5
    if-le v4, v7, :cond_16

    const/4 v8, 0x1

    .restart local v8    # "yes":Z
    :cond_16
    goto :goto_c

    .line 516
    .end local v8    # "yes":Z
    :pswitch_6
    if-eq v7, v4, :cond_17

    const/4 v8, 0x1

    .restart local v8    # "yes":Z
    :cond_17
    nop

    .line 523
    :cond_18
    :goto_c
    if-nez v8, :cond_19

    add-int/2addr v15, v6

    :cond_19
    move-wide/from16 v5, v16

    move/from16 v9, v27

    goto/16 :goto_11

    .line 505
    .end local v0    # "box":I
    .end local v4    # "value":I
    .end local v5    # "relation":I
    .end local v6    # "jump":I
    .end local v7    # "left":I
    .end local v15    # "p":I
    .local v8, "p":I
    :pswitch_7
    add-int/lit8 v15, v8, 0x1

    .end local v8    # "p":I
    .restart local v15    # "p":I
    invoke-direct {v1, v8}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u8(I)I

    move-result v0

    .restart local v0    # "box":I
    add-int/lit8 v4, v15, 0x1

    .end local v15    # "p":I
    .local v4, "p":I
    invoke-direct {v1, v15}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u8(I)I

    move-result v5

    .line 506
    .local v5, "value":I
    array-length v6, v14

    if-ge v0, v6, :cond_1a

    aput v5, v14, v0

    goto :goto_d

    .line 507
    :cond_1a
    const/4 v8, 0x1

    iput-boolean v8, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->unsupported:Z

    .line 508
    :goto_d
    int-to-long v6, v3

    add-long v6, v16, v6

    .line 509
    .end local v16    # "tick":J
    .local v6, "tick":J
    move v15, v4

    move-wide v5, v6

    move/from16 v9, v27

    goto/16 :goto_11

    .line 498
    .end local v0    # "box":I
    .end local v4    # "p":I
    .end local v5    # "value":I
    .end local v6    # "tick":J
    .restart local v8    # "p":I
    .restart local v16    # "tick":J
    :pswitch_8
    invoke-direct {v1, v8}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u16(I)I

    move-result v0

    int-to-short v0, v0

    .local v0, "rel":I
    add-int/lit8 v15, v8, 0x2

    .line 499
    .end local v8    # "p":I
    .restart local v15    # "p":I
    add-int v4, v15, v0

    .line 500
    .local v4, "np":I
    iget v5, v1, Lcom/ahsim/demulation/GenesisGemsSfxData;->stbl:I

    if-lt v4, v5, :cond_1c

    iget-object v5, v1, Lcom/ahsim/demulation/GenesisGemsSfxData;->source:Lcom/ahsim/demulation/GenesisAudioSource;

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Lcom/ahsim/demulation/GenesisAudioSource;->contains(II)Z

    move-result v5

    if-nez v5, :cond_1b

    goto :goto_e

    .line 501
    :cond_1b
    move v15, v4

    .line 502
    move-wide/from16 v5, v16

    move/from16 v9, v27

    goto/16 :goto_11

    .line 500
    :cond_1c
    const/4 v6, 0x1

    :goto_e
    iput-boolean v6, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->unsupported:Z

    return-object v2

    .line 492
    .end local v0    # "rel":I
    .end local v4    # "np":I
    .end local v15    # "p":I
    .restart local v8    # "p":I
    :pswitch_9
    const/4 v6, 0x1

    add-int/lit8 v15, v8, 0x1

    .end local v8    # "p":I
    .restart local v15    # "p":I
    invoke-direct {v1, v8}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u8(I)I

    move-result v0

    .line 493
    .local v0, "rate":I
    if-ne v10, v6, :cond_1d

    move v9, v0

    .end local v27    # "patchRate":I
    .restart local v9    # "patchRate":I
    goto :goto_f

    .end local v9    # "patchRate":I
    .restart local v27    # "patchRate":I
    :cond_1d
    move/from16 v9, v27

    .line 494
    .end local v27    # "patchRate":I
    .restart local v9    # "patchRate":I
    :goto_f
    int-to-long v4, v3

    add-long v5, v16, v4

    .line 495
    .end local v16    # "tick":J
    .local v5, "tick":J
    goto/16 :goto_11

    .line 490
    .end local v0    # "rate":I
    .end local v5    # "tick":J
    .end local v9    # "patchRate":I
    .end local v15    # "p":I
    .restart local v8    # "p":I
    .restart local v16    # "tick":J
    .restart local v27    # "patchRate":I
    :pswitch_a
    const/4 v12, 0x1

    int-to-long v4, v3

    add-long v5, v16, v4

    move v15, v8

    move/from16 v9, v27

    .end local v16    # "tick":J
    .restart local v5    # "tick":J
    goto/16 :goto_11

    .line 489
    .end local v5    # "tick":J
    .restart local v16    # "tick":J
    :pswitch_b
    const/4 v0, 0x2

    invoke-direct {v1, v8, v0}, Lcom/ahsim/demulation/GenesisGemsSfxData;->require(II)V

    add-int/lit8 v15, v8, 0x2

    const/4 v4, 0x1

    .end local v8    # "p":I
    .restart local v15    # "p":I
    iput-boolean v4, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->unsupported:Z

    int-to-long v4, v3

    add-long v5, v16, v4

    move/from16 v9, v27

    .end local v16    # "tick":J
    .restart local v5    # "tick":J
    goto/16 :goto_11

    .line 487
    .end local v5    # "tick":J
    .end local v15    # "p":I
    .restart local v8    # "p":I
    .restart local v16    # "tick":J
    :pswitch_c
    add-int/lit8 v15, v8, 0x1

    .end local v8    # "p":I
    .restart local v15    # "p":I
    invoke-direct {v1, v8}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u8(I)I

    move-result v23

    int-to-long v4, v3

    add-long v5, v16, v4

    move/from16 v9, v27

    .end local v16    # "tick":J
    .restart local v5    # "tick":J
    goto/16 :goto_11

    .line 486
    .end local v5    # "tick":J
    .end local v15    # "p":I
    .restart local v8    # "p":I
    .restart local v16    # "tick":J
    :pswitch_d
    const/4 v4, 0x1

    invoke-direct {v1, v8, v4}, Lcom/ahsim/demulation/GenesisGemsSfxData;->require(II)V

    add-int/lit8 v15, v8, 0x1

    .end local v8    # "p":I
    .restart local v15    # "p":I
    iput-boolean v4, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->unsupported:Z

    int-to-long v5, v3

    add-long v5, v16, v5

    move/from16 v9, v27

    .end local v16    # "tick":J
    .restart local v5    # "tick":J
    goto/16 :goto_11

    .line 483
    .end local v5    # "tick":J
    .end local v15    # "p":I
    .restart local v8    # "p":I
    .restart local v16    # "tick":J
    :pswitch_e
    const/4 v4, 0x1

    invoke-direct {v1, v8, v4}, Lcom/ahsim/demulation/GenesisGemsSfxData;->require(II)V

    add-int/lit8 v15, v8, 0x1

    .end local v8    # "p":I
    .restart local v15    # "p":I
    iput-boolean v4, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->unsupported:Z

    int-to-long v5, v3

    add-long v5, v16, v5

    move/from16 v9, v27

    .end local v16    # "tick":J
    .restart local v5    # "tick":J
    goto/16 :goto_11

    .line 472
    .end local v5    # "tick":J
    .end local v15    # "p":I
    .restart local v8    # "p":I
    .restart local v16    # "tick":J
    :pswitch_f
    const/4 v4, 0x1

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    iput-boolean v4, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->unsupported:Z

    return-object v2

    .line 473
    :cond_1e
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/GenesisGemsSfxData$LoopFrame;

    .line 474
    .local v0, "f":Lcom/ahsim/demulation/GenesisGemsSfxData$LoopFrame;
    iget v5, v0, Lcom/ahsim/demulation/GenesisGemsSfxData$LoopFrame;->count:I

    const/16 v6, 0x7f

    if-ne v5, v6, :cond_1f

    iput-boolean v4, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->unsupported:Z

    return-object v2

    .line 475
    :cond_1f
    iget v5, v0, Lcom/ahsim/demulation/GenesisGemsSfxData$LoopFrame;->count:I

    sub-int/2addr v5, v4

    iput v5, v0, Lcom/ahsim/demulation/GenesisGemsSfxData$LoopFrame;->count:I

    .line 476
    iget v5, v0, Lcom/ahsim/demulation/GenesisGemsSfxData$LoopFrame;->count:I

    if-lez v5, :cond_20

    iget v15, v0, Lcom/ahsim/demulation/GenesisGemsSfxData$LoopFrame;->position:I

    move-wide/from16 v5, v16

    move/from16 v9, v27

    .end local v8    # "p":I
    .restart local v15    # "p":I
    goto/16 :goto_11

    .line 477
    .end local v15    # "p":I
    .restart local v8    # "p":I
    :cond_20
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 478
    move v15, v8

    move-wide/from16 v5, v16

    move/from16 v9, v27

    goto :goto_11

    .line 466
    .end local v0    # "f":Lcom/ahsim/demulation/GenesisGemsSfxData$LoopFrame;
    :pswitch_10
    add-int/lit8 v15, v8, 0x1

    .end local v8    # "p":I
    .restart local v15    # "p":I
    invoke-direct {v1, v8}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u8(I)I

    move-result v0

    .line 467
    .local v0, "count":I
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v4, :cond_21

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->unsupported:Z

    return-object v2

    .line 468
    :cond_21
    new-instance v4, Lcom/ahsim/demulation/GenesisGemsSfxData$LoopFrame;

    invoke-direct {v4, v0, v15}, Lcom/ahsim/demulation/GenesisGemsSfxData$LoopFrame;-><init>(II)V

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    move-wide/from16 v5, v16

    move/from16 v9, v27

    goto :goto_11

    .line 464
    .end local v0    # "count":I
    .end local v15    # "p":I
    .restart local v8    # "p":I
    :pswitch_11
    int-to-long v4, v3

    add-long v5, v16, v4

    move v15, v8

    move/from16 v9, v27

    .end local v16    # "tick":J
    .restart local v5    # "tick":J
    goto :goto_11

    .line 463
    .end local v5    # "tick":J
    .restart local v16    # "tick":J
    :pswitch_12
    const/4 v4, 0x1

    invoke-direct {v1, v8, v4}, Lcom/ahsim/demulation/GenesisGemsSfxData;->require(II)V

    add-int/lit8 v15, v8, 0x1

    .end local v8    # "p":I
    .restart local v15    # "p":I
    iput-boolean v4, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->unsupported:Z

    int-to-long v4, v3

    add-long v5, v16, v4

    move/from16 v9, v27

    .end local v16    # "tick":J
    .restart local v5    # "tick":J
    goto :goto_11

    .line 450
    .end local v5    # "tick":J
    .end local v15    # "p":I
    .restart local v8    # "p":I
    .restart local v16    # "tick":J
    :pswitch_13
    add-int/lit8 v15, v8, 0x1

    .end local v8    # "p":I
    .restart local v15    # "p":I
    invoke-direct {v1, v8}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u8(I)I

    move-result v0

    .line 451
    .local v0, "program":I
    move/from16 v19, v0

    .line 452
    invoke-virtual {v1, v0}, Lcom/ahsim/demulation/GenesisGemsSfxData;->patch(I)Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;

    move-result-object v5

    .line 453
    .local v5, "pat":Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;
    if-nez v5, :cond_22

    const/4 v4, -0x1

    const/4 v8, 0x1

    .end local v10    # "patchType":I
    .local v4, "patchType":I
    iput-boolean v8, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->unsupported:Z

    move v10, v4

    move/from16 v9, v27

    goto :goto_10

    .line 455
    .end local v4    # "patchType":I
    .restart local v10    # "patchType":I
    :cond_22
    const/4 v8, 0x1

    iget v6, v5, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->type:I

    .line 456
    .end local v10    # "patchType":I
    .local v6, "patchType":I
    if-ne v6, v8, :cond_23

    invoke-virtual {v5, v8}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v4

    :cond_23
    move v9, v4

    .line 457
    .end local v27    # "patchRate":I
    .restart local v9    # "patchRate":I
    if-ltz v6, :cond_24

    if-le v6, v7, :cond_25

    :cond_24
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->unsupported:Z

    .line 459
    :cond_25
    move v10, v6

    .end local v6    # "patchType":I
    .restart local v10    # "patchType":I
    :goto_10
    int-to-long v6, v3

    add-long v6, v16, v6

    .line 460
    .end local v16    # "tick":J
    .local v6, "tick":J
    move-wide v5, v6

    .line 543
    .end local v0    # "program":I
    .end local v6    # "tick":J
    .local v5, "tick":J
    :goto_11
    const-wide/32 v7, 0x8ca0

    cmp-long v0, v5, v7

    if-lez v0, :cond_26

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->unsupported:Z

    return-object v2

    :cond_26
    move v0, v15

    move/from16 v15, v25

    .line 395
    .end local v21    # "cmd":I
    .end local v25    # "pending":I
    .local v0, "p":I
    .local v15, "pending":I
    :goto_12
    add-int/lit8 v11, v26, 0x1

    .end local v26    # "steps":I
    .local v11, "steps":I
    goto/16 :goto_0

    .line 448
    .end local v0    # "p":I
    .end local v5    # "tick":J
    .end local v9    # "patchRate":I
    .end local v11    # "steps":I
    .end local v15    # "pending":I
    .restart local v8    # "p":I
    .restart local v16    # "tick":J
    .restart local v21    # "cmd":I
    .restart local v25    # "pending":I
    .restart local v26    # "steps":I
    .restart local v27    # "patchRate":I
    :pswitch_14
    return-object v2

    .line 395
    .end local v8    # "p":I
    .end local v16    # "tick":J
    .end local v21    # "cmd":I
    .end local v25    # "pending":I
    .end local v26    # "steps":I
    .end local v27    # "patchRate":I
    .restart local v0    # "p":I
    .restart local v5    # "tick":J
    .restart local v9    # "patchRate":I
    .restart local v11    # "steps":I
    .restart local v15    # "pending":I
    :cond_27
    move v4, v7

    .line 545
    .end local v11    # "steps":I
    iput-boolean v4, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->unsupported:Z

    .line 546
    return-object v2

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_d
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private patchOffset(I)I
    .locals 3
    .param p1, "patch"    # I

    .line 550
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->ptbl:I

    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v0, v1

    .line 551
    .local v0, "table":I
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/GenesisGemsSfxData;->require(II)V

    .line 552
    iget v1, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->ptbl:I

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u16(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 553
    .local v1, "p":I
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/ahsim/demulation/GenesisGemsSfxData;->require(II)V

    .line 554
    return v1
.end method

.method private require(II)V
    .locals 3
    .param p1, "p"    # I
    .param p2, "n"    # I

    .line 561
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->source:Lcom/ahsim/demulation/GenesisAudioSource;

    invoke-virtual {v0, p1, p2}, Lcom/ahsim/demulation/GenesisAudioSource;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    return-void

    .line 562
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GEMS audio read outside READY source @0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static sampleRateHz(I)D
    .locals 5
    .param p0, "rateCode"    # I

    .line 374
    and-int/lit8 v0, p0, 0xf

    .line 375
    .local v0, "code":I
    if-gtz v0, :cond_0

    const-wide/16 v1, 0x0

    return-wide v1

    .line 376
    :cond_0
    const-wide/high16 v1, 0x4062000000000000L    # 144.0

    int-to-double v3, v0

    mul-double/2addr v3, v1

    const-wide v1, 0x415d42ad64924925L    # 7670453.571428572

    div-double/2addr v1, v3

    return-wide v1
.end method

.method private u16(I)I
    .locals 1
    .param p1, "p"    # I

    .line 558
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/ahsim/demulation/GenesisGemsSfxData;->require(II)V

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->source:Lcom/ahsim/demulation/GenesisAudioSource;

    invoke-virtual {v0, p1}, Lcom/ahsim/demulation/GenesisAudioSource;->le16(I)I

    move-result v0

    return v0
.end method

.method private u24(I)I
    .locals 1
    .param p1, "p"    # I

    .line 559
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/ahsim/demulation/GenesisGemsSfxData;->require(II)V

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->source:Lcom/ahsim/demulation/GenesisAudioSource;

    invoke-virtual {v0, p1}, Lcom/ahsim/demulation/GenesisAudioSource;->u24le(I)I

    move-result v0

    return v0
.end method

.method private u8(I)I
    .locals 1
    .param p1, "p"    # I

    .line 557
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ahsim/demulation/GenesisGemsSfxData;->require(II)V

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->source:Lcom/ahsim/demulation/GenesisAudioSource;

    invoke-virtual {v0, p1}, Lcom/ahsim/demulation/GenesisAudioSource;->u8(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method directSequenceForEvent(I)I
    .locals 3
    .param p1, "event"    # I

    .line 250
    const/4 v0, -0x1

    if-ltz p1, :cond_2

    const/16 v1, 0x40

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 251
    :cond_0
    const v1, 0x6a87e

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u8(I)I

    move-result v1

    .line 252
    .local v1, "v":I
    const/16 v2, 0x80

    if-lt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    .line 250
    .end local v1    # "v":I
    :cond_2
    :goto_1
    return v0
.end method

.method effectiveRateCode(Lcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;)I
    .locals 2
    .param p1, "event"    # Lcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;
    .param p2, "sample"    # Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;

    .line 369
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 370
    :cond_0
    iget v0, p1, Lcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;->patchRate:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->headerRateCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;->patchRate:I

    and-int/lit8 v0, v0, 0xf

    :goto_0
    return v0

    .line 369
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method envelopeTableOffset()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->etbl:I

    return v0
.end method

.method feedbackSequenceForEvent(I)I
    .locals 3
    .param p1, "event"    # I

    .line 256
    const/4 v0, -0x1

    if-ltz p1, :cond_2

    const/16 v1, 0x5e

    if-lt p1, v1, :cond_0

    goto :goto_1

    .line 257
    :cond_0
    const v1, 0x6a95c

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u8(I)I

    move-result v1

    .line 258
    .local v1, "v":I
    const/16 v2, 0x80

    if-lt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    .line 256
    .end local v1    # "v":I
    :cond_2
    :goto_1
    return v0
.end method

.method isGameplayBank()Z
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->gameplayBank:Z

    return v0
.end method

.method patch(I)Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;
    .locals 7
    .param p1, "index"    # I

    .line 262
    if-ltz p1, :cond_2

    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->patchCount:I

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->patchCache:[Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;

    aget-object v0, v0, p1

    .line 264
    .local v0, "cached":Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;
    if-eqz v0, :cond_1

    return-object v0

    .line 265
    :cond_1
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisGemsSfxData;->patchOffset(I)I

    move-result v1

    .line 266
    .local v1, "p":I
    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u8(I)I

    move-result v2

    .line 268
    .local v2, "type":I
    packed-switch v2, :pswitch_data_0

    .line 273
    const/4 v3, 0x1

    .local v3, "size":I
    goto :goto_0

    .line 272
    .end local v3    # "size":I
    :pswitch_0
    const/4 v3, 0x7

    .restart local v3    # "size":I
    goto :goto_0

    .line 270
    .end local v3    # "size":I
    :pswitch_1
    const/4 v3, 0x2

    .restart local v3    # "size":I
    goto :goto_0

    .line 269
    .end local v3    # "size":I
    :pswitch_2
    const/16 v3, 0x27

    .line 275
    .restart local v3    # "size":I
    :goto_0
    invoke-direct {p0, v1, v3}, Lcom/ahsim/demulation/GenesisGemsSfxData;->require(II)V

    .line 276
    new-array v4, v3, [B

    .line 277
    .local v4, "raw":[B
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->source:Lcom/ahsim/demulation/GenesisAudioSource;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v4, v6, v3}, Lcom/ahsim/demulation/GenesisAudioSource;->copyTo(I[BII)V

    .line 278
    new-instance v5, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;

    invoke-direct {v5, p1, v2, v4}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;-><init>(II[B)V

    .line 279
    .end local v0    # "cached":Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;
    .local v5, "cached":Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->patchCache:[Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;

    aput-object v5, v0, p1

    .line 280
    return-object v5

    .line 262
    .end local v1    # "p":I
    .end local v2    # "type":I
    .end local v3    # "size":I
    .end local v4    # "raw":[B
    .end local v5    # "cached":Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method patchCount()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->patchCount:I

    return v0
.end method

.method plan(I)Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;
    .locals 19
    .param p1, "sequence"    # I

    .line 284
    move-object/from16 v0, p0

    move/from16 v2, p1

    if-ltz v2, :cond_5

    iget v1, v0, Lcom/ahsim/demulation/GenesisGemsSfxData;->sequenceCount:I

    if-lt v2, v1, :cond_0

    goto/16 :goto_2

    .line 285
    :cond_0
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisGemsSfxData;->sequenceCache:[Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;

    aget-object v13, v1, v2

    .line 286
    .local v13, "cached":Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;
    if-eqz v13, :cond_1

    return-object v13

    .line 288
    :cond_1
    iget v1, v0, Lcom/ahsim/demulation/GenesisGemsSfxData;->stbl:I

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v1, v3

    invoke-direct {v0, v1}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u16(I)I

    move-result v14

    .line 289
    .local v14, "seqOffset":I
    iget v1, v0, Lcom/ahsim/demulation/GenesisGemsSfxData;->stbl:I

    add-int v15, v1, v14

    .line 290
    .local v15, "header":I
    const/4 v1, 0x1

    invoke-direct {v0, v15, v1}, Lcom/ahsim/demulation/GenesisGemsSfxData;->require(II)V

    .line 291
    invoke-direct {v0, v15}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u8(I)I

    move-result v3

    .line 292
    .local v3, "tracks":I
    if-lez v3, :cond_4

    const/16 v1, 0x10

    if-le v3, v1, :cond_2

    move v1, v3

    goto/16 :goto_1

    .line 299
    :cond_2
    add-int/lit8 v1, v15, 0x1

    mul-int/lit8 v4, v3, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ahsim/demulation/GenesisGemsSfxData;->require(II)V

    .line 301
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v4, "dac":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v5, "notes":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v6, "controls":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;>;"
    const/4 v1, 0x0

    .local v1, "fm":Z
    const/4 v7, 0x0

    .local v7, "psgTone":Z
    const/4 v8, 0x0

    .line 305
    .local v8, "psgNoise":Z
    const/4 v9, 0x0

    .local v9, "nonSfxDac":Z
    const/4 v10, 0x0

    .local v10, "nonSfxHardware":Z
    const/4 v11, 0x0

    .line 306
    .local v11, "unsupported":Z
    const/4 v12, 0x0

    move/from16 v18, v7

    move v7, v1

    move v1, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move/from16 v8, v18

    .local v1, "track":I
    .local v7, "fm":Z
    .local v8, "psgTone":Z
    .local v9, "psgNoise":Z
    .local v10, "nonSfxDac":Z
    .local v11, "nonSfxHardware":Z
    .local v12, "unsupported":Z
    :goto_0
    if-ge v1, v3, :cond_3

    .line 307
    add-int/lit8 v16, v15, 0x1

    mul-int/lit8 v17, v1, 0x2

    add-int v2, v16, v17

    invoke-direct {v0, v2}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u16(I)I

    move-result v2

    .line 308
    .local v2, "trackOffset":I
    move/from16 v16, v2

    .end local v2    # "trackOffset":I
    .local v16, "trackOffset":I
    iget v2, v0, Lcom/ahsim/demulation/GenesisGemsSfxData;->stbl:I

    add-int v2, v2, v16

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/GenesisGemsSfxData;->parseTrack(II)Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;

    move-result-object v2

    .line 309
    .local v2, "r":Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;
    move/from16 v17, v1

    .end local v1    # "track":I
    .local v17, "track":I
    iget-object v1, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->dacEvents:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 310
    iget-object v1, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->noteEvents:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 311
    iget-object v1, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->controlEvents:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 312
    iget-boolean v1, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->usesFm:Z

    or-int/2addr v7, v1

    .line 313
    iget-boolean v1, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->usesPsgTone:Z

    or-int/2addr v8, v1

    .line 314
    iget-boolean v1, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->usesPsgNoise:Z

    or-int/2addr v9, v1

    .line 315
    iget-boolean v1, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->hasNonSfxTimedDac:Z

    or-int/2addr v10, v1

    .line 316
    iget-boolean v1, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->hasNonSfxTimedHardware:Z

    or-int/2addr v11, v1

    .line 317
    iget-boolean v1, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->unsupported:Z

    or-int/2addr v12, v1

    .line 306
    .end local v2    # "r":Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;
    .end local v16    # "trackOffset":I
    add-int/lit8 v1, v17, 0x1

    move/from16 v2, p1

    .end local v17    # "track":I
    .restart local v1    # "track":I
    goto :goto_0

    :cond_3
    move/from16 v17, v1

    .line 319
    .end local v1    # "track":I
    new-instance v1, Lcom/ahsim/demulation/GenesisGemsSfxData$1;

    invoke-direct {v1, v0}, Lcom/ahsim/demulation/GenesisGemsSfxData$1;-><init>(Lcom/ahsim/demulation/GenesisGemsSfxData;)V

    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 325
    new-instance v1, Lcom/ahsim/demulation/GenesisGemsSfxData$2;

    invoke-direct {v1, v0}, Lcom/ahsim/demulation/GenesisGemsSfxData$2;-><init>(Lcom/ahsim/demulation/GenesisGemsSfxData;)V

    invoke-static {v5, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 331
    new-instance v1, Lcom/ahsim/demulation/GenesisGemsSfxData$3;

    invoke-direct {v1, v0}, Lcom/ahsim/demulation/GenesisGemsSfxData$3;-><init>(Lcom/ahsim/demulation/GenesisGemsSfxData;)V

    invoke-static {v6, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 337
    new-instance v1, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;

    move/from16 v2, p1

    invoke-direct/range {v1 .. v12}, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;ZZZZZZ)V

    move-object v2, v1

    move v1, v3

    .line 339
    .end local v3    # "tracks":I
    .end local v13    # "cached":Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;
    .local v1, "tracks":I
    .local v2, "cached":Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;
    iget-object v3, v0, Lcom/ahsim/demulation/GenesisGemsSfxData;->sequenceCache:[Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;

    aput-object v2, v3, p1

    .line 340
    return-object v2

    .line 292
    .end local v1    # "tracks":I
    .end local v2    # "cached":Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;
    .end local v4    # "dac":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;>;"
    .end local v5    # "notes":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;>;"
    .end local v6    # "controls":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;>;"
    .end local v7    # "fm":Z
    .end local v8    # "psgTone":Z
    .end local v9    # "psgNoise":Z
    .end local v10    # "nonSfxDac":Z
    .end local v11    # "nonSfxHardware":Z
    .end local v12    # "unsupported":Z
    .restart local v3    # "tracks":I
    .restart local v13    # "cached":Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;
    :cond_4
    move v1, v3

    .line 293
    .end local v3    # "tracks":I
    .restart local v1    # "tracks":I
    :goto_1
    new-instance v2, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v16, v1

    move-object v1, v2

    move/from16 v2, p1

    .end local v1    # "tracks":I
    .local v16, "tracks":I
    invoke-direct/range {v1 .. v12}, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;ZZZZZZ)V

    .line 296
    .end local v13    # "cached":Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;
    .local v1, "cached":Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;
    iget-object v2, v0, Lcom/ahsim/demulation/GenesisGemsSfxData;->sequenceCache:[Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;

    aput-object v1, v2, p1

    .line 297
    return-object v1

    .line 284
    .end local v1    # "cached":Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;
    .end local v14    # "seqOffset":I
    .end local v15    # "header":I
    .end local v16    # "tracks":I
    :cond_5
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method sample(I)Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;
    .locals 12
    .param p1, "index"    # I

    .line 344
    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->sampleCache:[Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    move v4, p1

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->sampleCache:[Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;

    aget-object v0, v0, p1

    .line 346
    .local v0, "s":Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;
    if-eqz v0, :cond_1

    return-object v0

    .line 347
    :cond_1
    iget v1, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->dtbl:I

    mul-int/lit8 v2, p1, 0xc

    add-int/2addr v1, v2

    .line 348
    .local v1, "h":I
    const/16 v2, 0xc

    invoke-direct {p0, v1, v2}, Lcom/ahsim/demulation/GenesisGemsSfxData;->require(II)V

    .line 349
    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u8(I)I

    move-result v5

    .line 350
    .local v5, "flags":I
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u24(I)I

    move-result v2

    .line 351
    .local v2, "ptr":I
    add-int/lit8 v3, v1, 0x4

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u16(I)I

    move-result v7

    .line 352
    .local v7, "skip":I
    add-int/lit8 v3, v1, 0x6

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u16(I)I

    move-result v8

    .line 353
    .local v8, "first":I
    add-int/lit8 v3, v1, 0x8

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u16(I)I

    move-result v9

    .line 354
    .local v9, "loop":I
    add-int/lit8 v3, v1, 0xa

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u16(I)I

    move-result v10

    .line 355
    .local v10, "end":I
    iget v3, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->dtbl:I

    add-int/2addr v3, v2

    add-int v6, v3, v7

    .line 356
    .local v6, "data":I
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->source:Lcom/ahsim/demulation/GenesisAudioSource;

    invoke-virtual {v3, v6, v8}, Lcom/ahsim/demulation/GenesisAudioSource;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 358
    new-instance v3, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;

    move v4, p1

    .end local p1    # "index":I
    .local v4, "index":I
    invoke-direct/range {v3 .. v10}, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;-><init>(IIIIIII)V

    .line 359
    .end local v0    # "s":Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;
    .local v3, "s":Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;
    iget-object p1, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->sampleCache:[Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;

    aput-object v3, p1, v4

    .line 360
    return-object v3

    .line 357
    .end local v3    # "s":Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;
    .end local v4    # "index":I
    .restart local v0    # "s":Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;
    .restart local p1    # "index":I
    :cond_2
    move v4, p1

    .end local p1    # "index":I
    .restart local v4    # "index":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GEMS sample "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " is outside audio source"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 344
    .end local v0    # "s":Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;
    .end local v1    # "h":I
    .end local v2    # "ptr":I
    .end local v4    # "index":I
    .end local v5    # "flags":I
    .end local v6    # "data":I
    .end local v7    # "skip":I
    .end local v8    # "first":I
    .end local v9    # "loop":I
    .end local v10    # "end":I
    .restart local p1    # "index":I
    :cond_3
    move v4, p1

    .end local p1    # "index":I
    .restart local v4    # "index":I
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method sampleByte(Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;I)I
    .locals 1
    .param p1, "sample"    # Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;
    .param p2, "position"    # I

    .line 364
    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    iget v0, p1, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->firstLength:I

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    iget v0, p1, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->dataOffset:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisGemsSfxData;->u8(I)I

    move-result v0

    return v0

    .line 364
    :cond_1
    :goto_0
    const/16 v0, 0x80

    return v0
.end method

.method sequenceCount()I
    .locals 1

    .line 242
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->sequenceCount:I

    return v0
.end method

.method sequenceTableOffset()I
    .locals 1

    .line 244
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData;->stbl:I

    return v0
.end method
