.class final Lcom/ahsim/demulation/GenesisYm2612Core$Voice;
.super Ljava/lang/Object;
.source "GenesisYm2612Core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisYm2612Core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Voice"
.end annotation


# instance fields
.field private final algorithm:I

.field private final ams:I

.field private final baseNote:I

.field private bendFactor:D

.field private final ch3Special:Z

.field private final feedback:I

.field private feedback1:I

.field private feedback2:I

.field private final keyMask:I

.field private final op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

.field private final pms:I


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;II)V
    .locals 21
    .param p1, "patch"    # Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;
    .param p2, "note"    # I
    .param p3, "channelAttenuation"    # I

    .line 71
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v2, 0x4

    new-array v3, v2, [Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    iput-object v3, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    .line 67
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    iput-wide v3, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->bendFactor:D

    .line 72
    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->fmAlgorithm()I

    move-result v3

    iput v3, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->algorithm:I

    .line 73
    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->fmFeedback()I

    move-result v3

    iput v3, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->feedback:I

    .line 74
    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->fmKeyMask()I

    move-result v3

    iput v3, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->keyMask:I

    .line 75
    const/16 v3, 0x5f

    const/4 v4, 0x0

    move/from16 v5, p2

    invoke-static {v5, v4, v3}, Lcom/ahsim/demulation/GenesisYm2612Core;->-$$Nest$smclamp(III)I

    move-result v3

    iput v3, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->baseNote:I

    .line 76
    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->fmChannel3Special()Z

    move-result v3

    iput-boolean v3, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->ch3Special:Z

    .line 77
    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v3

    .line 78
    .local v3, "b4":I
    and-int/lit8 v6, v3, 0x7

    iput v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->pms:I

    .line 79
    ushr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0x3

    iput v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->ams:I

    .line 80
    invoke-static {}, Lcom/ahsim/demulation/GenesisYm2612Core;->-$$Nest$sfgetCARRIER_MASK()[I

    move-result-object v6

    iget v7, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->algorithm:I

    aget v6, v6, v7

    .line 81
    .local v6, "carriers":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_4

    .line 82
    invoke-static {}, Lcom/ahsim/demulation/GenesisYm2612Core;->-$$Nest$sfgetPATCH_SLOT()[I

    move-result-object v8

    aget v8, v8, v7

    .line 83
    .local v8, "base":I
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v1, v9}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v9

    and-int/lit8 v9, v9, 0x7f

    .line 84
    .local v9, "tl":I
    const/4 v10, 0x1

    shl-int v11, v10, v7

    and-int/2addr v11, v6

    if-eqz v11, :cond_0

    move/from16 v11, p3

    invoke-static {v9, v11}, Lcom/ahsim/demulation/GenesisYm2612Core;->-$$Nest$smattenuateCarrierTl(II)I

    move-result v9

    goto :goto_1

    :cond_0
    move/from16 v11, p3

    :goto_1
    move v14, v9

    .line 87
    .end local v9    # "tl":I
    .local v14, "tl":I
    iget-boolean v9, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->ch3Special:Z

    if-eqz v9, :cond_2

    .line 88
    mul-int/lit8 v9, v7, 0x2

    add-int/lit8 v9, v9, 0x1d

    invoke-virtual {v1, v9}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    mul-int/lit8 v12, v7, 0x2

    add-int/lit8 v12, v12, 0x1e

    invoke-virtual {v1, v12}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v9, v12

    .line 89
    .local v9, "raw":I
    and-int/lit16 v12, v9, 0x7ff

    .line 90
    .local v12, "fnum":I
    ushr-int/lit8 v13, v9, 0xb

    and-int/lit8 v13, v13, 0x7

    .line 91
    .local v13, "block":I
    if-nez v12, :cond_1

    invoke-static {}, Lcom/ahsim/demulation/GenesisYm2612Core;->-$$Nest$sfgetFM_FNUM()[I

    move-result-object v15

    aget v12, v15, v4

    const/4 v13, 0x0

    .line 92
    .end local v9    # "raw":I
    :cond_1
    move/from16 v19, v12

    move/from16 v20, v13

    goto :goto_2

    .line 93
    .end local v12    # "fnum":I
    .end local v13    # "block":I
    :cond_2
    invoke-static {}, Lcom/ahsim/demulation/GenesisYm2612Core;->-$$Nest$sfgetFM_FNUM()[I

    move-result-object v9

    iget v12, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->baseNote:I

    rem-int/lit8 v12, v12, 0xc

    aget v12, v9, v12

    .line 94
    .restart local v12    # "fnum":I
    iget v9, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->baseNote:I

    div-int/lit8 v13, v9, 0xc

    move/from16 v19, v12

    move/from16 v20, v13

    .line 96
    .end local v12    # "fnum":I
    .local v19, "fnum":I
    .local v20, "block":I
    :goto_2
    iget-object v9, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    new-instance v12, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    invoke-virtual {v1, v8}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v13

    add-int/lit8 v15, v8, 0x2

    invoke-virtual {v1, v15}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v15

    add-int/lit8 v2, v8, 0x3

    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v16

    add-int/lit8 v2, v8, 0x4

    .line 97
    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v17

    add-int/lit8 v2, v8, 0x5

    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v18

    invoke-direct/range {v12 .. v20}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;-><init>(IIIIIIII)V

    aput-object v12, v9, v7

    .line 98
    iget v2, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->keyMask:I

    shl-int v9, v10, v7

    and-int/2addr v2, v9

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->forceOff()V

    goto :goto_3

    .line 99
    :cond_3
    iget-object v2, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->keyOn()V

    .line 81
    .end local v8    # "base":I
    .end local v14    # "tl":I
    .end local v19    # "fnum":I
    .end local v20    # "block":I
    :goto_3
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x4

    goto/16 :goto_0

    :cond_4
    move/from16 v11, p3

    .line 101
    .end local v7    # "i":I
    return-void
.end method


# virtual methods
.method dead()Z
    .locals 6

    .line 106
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .local v4, "o":Lcom/ahsim/demulation/GenesisYm2612Core$Operator;
    invoke-virtual {v4}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->dead()Z

    move-result v5

    if-nez v5, :cond_0

    return v2

    .end local v4    # "o":Lcom/ahsim/demulation/GenesisYm2612Core$Operator;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method keyOff()V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .local v3, "o":Lcom/ahsim/demulation/GenesisYm2612Core$Operator;
    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->keyOff()V

    .end local v3    # "o":Lcom/ahsim/demulation/GenesisYm2612Core$Operator;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method render(JZIZ)D
    .locals 17
    .param p1, "egCounter"    # J
    .param p3, "egTick"    # Z
    .param p4, "lfoCounter"    # I
    .param p5, "lfoEnabled"    # Z

    .line 112
    move-object/from16 v0, p0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 113
    .local v1, "pm":D
    const/4 v3, 0x0

    .line 114
    .local v3, "amAtt":I
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz p5, :cond_4

    .line 115
    invoke-static/range {p4 .. p4}, Lcom/ahsim/demulation/GenesisYm2612Core;->-$$Nest$smlfoSignedTriangle(I)D

    move-result-wide v6

    .line 116
    .local v6, "tri":D
    iget v8, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->pms:I

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/ahsim/demulation/GenesisYm2612Core;->-$$Nest$sfgetPMS_CENTS()[D

    move-result-object v8

    iget v9, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->pms:I

    aget-wide v9, v8, v9

    mul-double/2addr v9, v6

    const-wide v11, 0x4092c00000000000L    # 1200.0

    div-double/2addr v9, v11

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    .line 117
    :cond_0
    iget v8, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->ams:I

    if-eqz v8, :cond_3

    .line 118
    invoke-static/range {p4 .. p4}, Lcom/ahsim/demulation/GenesisYm2612Core;->-$$Nest$smlfoAmplitude(I)I

    move-result v8

    .line 119
    .local v8, "raw":I
    iget v9, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->ams:I

    if-ne v9, v5, :cond_1

    shr-int/lit8 v3, v8, 0x3

    move v13, v3

    goto :goto_0

    .line 120
    :cond_1
    iget v9, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->ams:I

    if-ne v9, v4, :cond_2

    shr-int/lit8 v3, v8, 0x1

    move v13, v3

    goto :goto_0

    .line 121
    :cond_2
    move v3, v8

    move v13, v3

    goto :goto_0

    .line 117
    .end local v8    # "raw":I
    :cond_3
    move v13, v3

    goto :goto_0

    .line 114
    .end local v6    # "tri":D
    :cond_4
    move v13, v3

    .line 124
    .end local v3    # "amAtt":I
    .local v13, "amAtt":I
    :goto_0
    iget-wide v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->bendFactor:D

    mul-double v11, v6, v1

    .line 126
    .local v11, "pitch":D
    iget v3, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->feedback:I

    const/4 v6, 0x0

    if-nez v3, :cond_5

    move v7, v6

    goto :goto_1

    :cond_5
    iget v3, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->feedback1:I

    iget v7, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->feedback2:I

    add-int/2addr v3, v7

    iget v7, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->feedback:I

    rsub-int/lit8 v7, v7, 0xa

    shr-int/2addr v3, v7

    move v7, v3

    .line 127
    .local v7, "fb":I
    :goto_1
    iget-object v3, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    aget-object v6, v3, v6

    move-wide/from16 v8, p1

    move/from16 v10, p3

    invoke-virtual/range {v6 .. v13}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->sample(IJZDI)I

    move-result v3

    .line 128
    move v14, v7

    .end local v7    # "fb":I
    .local v3, "s1":I
    .local v14, "fb":I
    iget v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->feedback1:I

    iput v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->feedback2:I

    .line 129
    iput v3, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->feedback1:I

    .line 134
    iget v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->algorithm:I

    const/4 v15, 0x3

    packed-switch v6, :pswitch_data_0

    .line 178
    iget-object v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    aget-object v6, v6, v5

    const/4 v7, 0x0

    move-wide/from16 v8, p1

    move/from16 v10, p3

    invoke-virtual/range {v6 .. v13}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->sample(IJZDI)I

    move-result v5

    .line 179
    .local v5, "s2":I
    iget-object v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    aget-object v6, v6, v4

    invoke-virtual/range {v6 .. v13}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->sample(IJZDI)I

    move-result v4

    .line 180
    .local v4, "s3":I
    iget-object v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    aget-object v6, v6, v15

    invoke-virtual/range {v6 .. v13}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->sample(IJZDI)I

    move-result v6

    .line 181
    .local v6, "s4":I
    add-int v7, v3, v5

    add-int/2addr v7, v4

    add-int/2addr v7, v6

    invoke-static {v7}, Lcom/ahsim/demulation/GenesisYm2612Core;->-$$Nest$smclamp14(I)I

    move-result v7

    .local v7, "out":I
    goto/16 :goto_2

    .line 172
    .end local v4    # "s3":I
    .end local v5    # "s2":I
    .end local v6    # "s4":I
    .end local v7    # "out":I
    :pswitch_0
    iget-object v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    aget-object v6, v6, v5

    shr-int/lit8 v7, v3, 0x1

    move-wide/from16 v8, p1

    move/from16 v10, p3

    invoke-virtual/range {v6 .. v13}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->sample(IJZDI)I

    move-result v5

    .line 173
    .restart local v5    # "s2":I
    iget-object v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    aget-object v6, v6, v4

    const/4 v7, 0x0

    invoke-virtual/range {v6 .. v13}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->sample(IJZDI)I

    move-result v4

    .line 174
    .restart local v4    # "s3":I
    iget-object v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    aget-object v6, v6, v15

    invoke-virtual/range {v6 .. v13}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->sample(IJZDI)I

    move-result v6

    .line 175
    .restart local v6    # "s4":I
    add-int v7, v5, v4

    add-int/2addr v7, v6

    invoke-static {v7}, Lcom/ahsim/demulation/GenesisYm2612Core;->-$$Nest$smclamp14(I)I

    move-result v7

    .line 176
    .restart local v7    # "out":I
    goto/16 :goto_2

    .line 166
    .end local v4    # "s3":I
    .end local v5    # "s2":I
    .end local v6    # "s4":I
    .end local v7    # "out":I
    :pswitch_1
    iget-object v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    aget-object v6, v6, v5

    shr-int/lit8 v7, v3, 0x1

    move-wide/from16 v8, p1

    move/from16 v10, p3

    invoke-virtual/range {v6 .. v13}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->sample(IJZDI)I

    move-result v5

    .line 167
    .restart local v5    # "s2":I
    iget-object v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    aget-object v6, v6, v4

    shr-int/lit8 v7, v3, 0x1

    invoke-virtual/range {v6 .. v13}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->sample(IJZDI)I

    move-result v4

    .line 168
    .restart local v4    # "s3":I
    iget-object v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    aget-object v6, v6, v15

    shr-int/lit8 v7, v3, 0x1

    invoke-virtual/range {v6 .. v13}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->sample(IJZDI)I

    move-result v6

    .line 169
    .restart local v6    # "s4":I
    add-int v7, v5, v4

    add-int/2addr v7, v6

    invoke-static {v7}, Lcom/ahsim/demulation/GenesisYm2612Core;->-$$Nest$smclamp14(I)I

    move-result v7

    .line 170
    .restart local v7    # "out":I
    goto/16 :goto_2

    .line 160
    .end local v4    # "s3":I
    .end local v5    # "s2":I
    .end local v6    # "s4":I
    .end local v7    # "out":I
    :pswitch_2
    iget-object v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    aget-object v6, v6, v5

    shr-int/lit8 v7, v3, 0x1

    move-wide/from16 v8, p1

    move/from16 v10, p3

    invoke-virtual/range {v6 .. v13}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->sample(IJZDI)I

    move-result v5

    .line 161
    .restart local v5    # "s2":I
    iget-object v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    aget-object v6, v6, v4

    const/4 v7, 0x0

    invoke-virtual/range {v6 .. v13}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->sample(IJZDI)I

    move-result v4

    .line 162
    .restart local v4    # "s3":I
    iget-object v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    aget-object v6, v6, v15

    shr-int/lit8 v7, v4, 0x1

    invoke-virtual/range {v6 .. v13}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->sample(IJZDI)I

    move-result v6

    .line 163
    .restart local v6    # "s4":I
    add-int v7, v5, v6

    invoke-static {v7}, Lcom/ahsim/demulation/GenesisYm2612Core;->-$$Nest$smclamp14(I)I

    move-result v7

    .line 164
    .restart local v7    # "out":I
    goto/16 :goto_2

    .line 154
    .end local v4    # "s3":I
    .end local v5    # "s2":I
    .end local v6    # "s4":I
    .end local v7    # "out":I
    :pswitch_3
    iget-object v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    aget-object v6, v6, v4

    shr-int/lit8 v7, v3, 0x1

    move-wide/from16 v8, p1

    move/from16 v10, p3

    invoke-virtual/range {v6 .. v13}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->sample(IJZDI)I

    move-result v4

    .line 155
    .restart local v4    # "s3":I
    iget-object v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    aget-object v6, v6, v5

    const/4 v7, 0x0

    invoke-virtual/range {v6 .. v13}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->sample(IJZDI)I

    move-result v16

    .line 156
    .local v16, "s2":I
    iget-object v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    aget-object v6, v6, v15

    add-int v7, v4, v16

    shr-int/2addr v7, v5

    invoke-virtual/range {v6 .. v13}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->sample(IJZDI)I

    move-result v6

    .line 157
    .restart local v6    # "s4":I
    move v7, v6

    .line 158
    .restart local v7    # "out":I
    move/from16 v5, v16

    goto/16 :goto_2

    .line 148
    .end local v4    # "s3":I
    .end local v6    # "s4":I
    .end local v7    # "out":I
    .end local v16    # "s2":I
    :pswitch_4
    iget-object v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    aget-object v6, v6, v4

    const/4 v7, 0x0

    move-wide/from16 v8, p1

    move/from16 v10, p3

    invoke-virtual/range {v6 .. v13}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->sample(IJZDI)I

    move-result v4

    .line 149
    .restart local v4    # "s3":I
    iget-object v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    aget-object v6, v6, v5

    shr-int/lit8 v7, v4, 0x1

    invoke-virtual/range {v6 .. v13}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->sample(IJZDI)I

    move-result v16

    .line 150
    .restart local v16    # "s2":I
    iget-object v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    aget-object v6, v6, v15

    add-int v7, v3, v16

    shr-int/2addr v7, v5

    invoke-virtual/range {v6 .. v13}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->sample(IJZDI)I

    move-result v6

    .line 151
    .restart local v6    # "s4":I
    move v7, v6

    .line 152
    .restart local v7    # "out":I
    move/from16 v5, v16

    goto :goto_2

    .line 142
    .end local v4    # "s3":I
    .end local v6    # "s4":I
    .end local v7    # "out":I
    .end local v16    # "s2":I
    :pswitch_5
    iget-object v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    aget-object v6, v6, v4

    const/4 v7, 0x0

    move-wide/from16 v8, p1

    move/from16 v10, p3

    invoke-virtual/range {v6 .. v13}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->sample(IJZDI)I

    move-result v4

    .line 143
    .restart local v4    # "s3":I
    iget-object v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    aget-object v6, v6, v5

    add-int v7, v3, v4

    shr-int/2addr v7, v5

    invoke-virtual/range {v6 .. v13}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->sample(IJZDI)I

    move-result v5

    .line 144
    .restart local v5    # "s2":I
    iget-object v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    aget-object v6, v6, v15

    shr-int/lit8 v7, v5, 0x1

    invoke-virtual/range {v6 .. v13}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->sample(IJZDI)I

    move-result v6

    .line 145
    .restart local v6    # "s4":I
    move v7, v6

    .line 146
    .restart local v7    # "out":I
    goto :goto_2

    .line 136
    .end local v4    # "s3":I
    .end local v5    # "s2":I
    .end local v6    # "s4":I
    .end local v7    # "out":I
    :pswitch_6
    iget-object v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    aget-object v6, v6, v4

    shr-int/lit8 v7, v3, 0x1

    move-wide/from16 v8, p1

    move/from16 v10, p3

    invoke-virtual/range {v6 .. v13}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->sample(IJZDI)I

    move-result v4

    .line 137
    .restart local v4    # "s3":I
    iget-object v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    aget-object v6, v6, v5

    shr-int/lit8 v7, v4, 0x1

    invoke-virtual/range {v6 .. v13}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->sample(IJZDI)I

    move-result v5

    .line 138
    .restart local v5    # "s2":I
    iget-object v6, v0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->op:[Lcom/ahsim/demulation/GenesisYm2612Core$Operator;

    aget-object v6, v6, v15

    shr-int/lit8 v7, v5, 0x1

    invoke-virtual/range {v6 .. v13}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->sample(IJZDI)I

    move-result v6

    .line 139
    .restart local v6    # "s4":I
    move v7, v6

    .line 140
    .restart local v7    # "out":I
    nop

    .line 184
    :goto_2
    int-to-double v8, v7

    const-wide/high16 v15, 0x40c0000000000000L    # 8192.0

    div-double/2addr v8, v15

    return-wide v8

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

.method setBendFactor(D)V
    .locals 2
    .param p1, "factor"    # D

    .line 103
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Voice;->bendFactor:D

    return-void
.end method
