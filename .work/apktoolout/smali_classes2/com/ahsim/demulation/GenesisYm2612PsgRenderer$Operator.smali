.class final Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;
.super Ljava/lang/Object;
.source "GenesisYm2612PsgRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Operator"
.end annotation


# instance fields
.field final amEnabled:Z

.field amGain:D

.field final attackCoef:D

.field final baseStep:D

.field final decayCoef:D

.field env:D

.field phase:D

.field pitch:D

.field final releaseCoef:D

.field state:I

.field final sustainCoef:D

.field final sustainGain:D

.field final synthetic this$0:Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;

.field final tlGain:D


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;DIIIIIZ)V
    .locals 17
    .param p2, "frequency"    # D
    .param p4, "tl"    # I
    .param p5, "rsAr"    # I
    .param p6, "amDr"    # I
    .param p7, "sr"    # I
    .param p8, "slRr"    # I
    .param p9, "amEnabled"    # Z

    .line 318
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->this$0:Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 315
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iput-wide v8, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->pitch:D

    iput-wide v8, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->amGain:D

    .line 319
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v2, v2, p2

    invoke-static {v1}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->-$$Nest$fgetrate(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;)I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->baseStep:D

    .line 320
    move/from16 v10, p4

    neg-int v2, v10

    int-to-double v2, v2

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->tlGain:D

    .line 321
    and-int/lit8 v2, p5, 0x1f

    .local v2, "ar":I
    and-int/lit8 v11, p6, 0x1f

    .local v11, "dr":I
    and-int/lit8 v12, p7, 0x1f

    .local v12, "sustainRate":I
    ushr-int/lit8 v3, p8, 0x4

    const/16 v4, 0xf

    and-int/lit8 v13, v3, 0xf

    .local v13, "sl":I
    and-int/lit8 v14, p8, 0xf

    .line 322
    .local v14, "rr":I
    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    if-lt v13, v4, :cond_0

    const-wide v3, -0x3fed666666666666L    # -4.65

    goto :goto_0

    :cond_0
    int-to-double v3, v13

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    mul-double/2addr v3, v15

    neg-double v3, v3

    const-wide/high16 v15, 0x4034000000000000L    # 20.0

    div-double/2addr v3, v15

    :goto_0
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sustainGain:D

    .line 323
    const-wide v4, 0x3f647ae147ae147bL    # 0.0025

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    const/16 v3, 0x1f

    invoke-static/range {v1 .. v7}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->-$$Nest$mrateCoef(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;IIDD)D

    move-result-wide v3

    move v15, v2

    .end local v2    # "ar":I
    .local v15, "ar":I
    iput-wide v3, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->attackCoef:D

    .line 324
    const-wide v4, 0x3f926e978d4fdf3bL    # 0.018

    const/16 v3, 0x1f

    move-object/from16 v1, p1

    move v2, v11

    .end local v11    # "dr":I
    .local v2, "dr":I
    invoke-static/range {v1 .. v7}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->-$$Nest$mreleaseMultiplier(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;IIDD)D

    move-result-wide v3

    .end local v2    # "dr":I
    .restart local v11    # "dr":I
    iput-wide v3, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->decayCoef:D

    .line 325
    const-wide v4, 0x3f9eb851eb851eb8L    # 0.03

    const/16 v3, 0x1f

    move v2, v12

    .end local v12    # "sustainRate":I
    .local v2, "sustainRate":I
    invoke-static/range {v1 .. v7}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->-$$Nest$mreleaseMultiplier(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;IIDD)D

    move-result-wide v3

    .end local v2    # "sustainRate":I
    .restart local v12    # "sustainRate":I
    iput-wide v3, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sustainCoef:D

    .line 326
    mul-int/lit8 v1, v14, 0x2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    const/16 v3, 0x1f

    move v2, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->-$$Nest$mreleaseMultiplier(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;IIDD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->releaseCoef:D

    .line 327
    move/from16 v1, p9

    iput-boolean v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->amEnabled:Z

    .line 331
    if-nez v15, :cond_1

    iput-wide v8, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->env:D

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->env:D

    const/4 v2, 0x0

    :goto_1
    iput v2, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->state:I

    .line 332
    return-void
.end method


# virtual methods
.method advanceEnvelope()V
    .locals 10

    .line 343
    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->state:I

    const/4 v1, 0x4

    const-wide/16 v2, 0x0

    const-wide v4, 0x3ee4f8b588e368f1L    # 1.0E-5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 347
    :pswitch_0
    iget-wide v6, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->env:D

    iget-wide v8, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->releaseCoef:D

    mul-double/2addr v6, v8

    iput-wide v6, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->env:D

    iget-wide v6, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->env:D

    cmpg-double v0, v6, v4

    if-gez v0, :cond_0

    iput-wide v2, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->env:D

    iput v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->state:I

    goto :goto_0

    .line 346
    :pswitch_1
    iget-wide v8, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sustainCoef:D

    cmpg-double v0, v8, v6

    if-gez v0, :cond_0

    iget-wide v6, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->env:D

    iget-wide v8, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sustainCoef:D

    mul-double/2addr v6, v8

    iput-wide v6, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->env:D

    iget-wide v6, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->env:D

    cmpg-double v0, v6, v4

    if-gez v0, :cond_0

    iput-wide v2, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->env:D

    iput v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->state:I

    goto :goto_0

    .line 345
    :pswitch_2
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->env:D

    iget-wide v2, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->decayCoef:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->env:D

    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->env:D

    iget-wide v2, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sustainGain:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->sustainGain:D

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->env:D

    const/4 v0, 0x2

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->state:I

    goto :goto_0

    .line 344
    :pswitch_3
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->env:D

    iget-wide v2, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->env:D

    sub-double v2, v6, v2

    iget-wide v4, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->attackCoef:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->env:D

    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->env:D

    const-wide v2, 0x3feff7ced916872bL    # 0.999

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iput-wide v6, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->env:D

    const/4 v0, 0x1

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->state:I

    .line 350
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method dead()Z
    .locals 2

    .line 336
    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method forceOff()V
    .locals 2

    .line 334
    const/4 v0, 0x4

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->state:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->env:D

    return-void
.end method

.method keyOff()V
    .locals 2

    .line 335
    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->state:I

    :cond_0
    return-void
.end method

.method prepare(DD)V
    .locals 0
    .param p1, "p"    # D
    .param p3, "am"    # D

    .line 333
    iput-wide p1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->pitch:D

    iput-wide p3, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->amGain:D

    return-void
.end method

.method sample(D)D
    .locals 6
    .param p1, "modulation"    # D

    .line 338
    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->advanceEnvelope()V

    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 339
    :cond_0
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->phase:D

    iget-wide v2, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->baseStep:D

    iget-wide v4, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->pitch:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->phase:D

    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->phase:D

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->phase:D

    iget-wide v4, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->phase:D

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    sub-double/2addr v0, v4

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->phase:D

    .line 340
    :cond_1
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->phase:D

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->env:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->tlGain:D

    mul-double/2addr v0, v2

    iget-boolean v2, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->amEnabled:Z

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;->amGain:D

    goto :goto_0

    :cond_2
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    mul-double/2addr v0, v2

    return-wide v0
.end method
