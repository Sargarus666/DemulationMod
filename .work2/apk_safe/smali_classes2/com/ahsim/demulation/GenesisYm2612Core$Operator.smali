.class final Lcom/ahsim/demulation/GenesisYm2612Core$Operator;
.super Ljava/lang/Object;
.source "GenesisYm2612Core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisYm2612Core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Operator"
.end annotation


# static fields
.field private static final ATTACK:I = 0x0

.field private static final DECAY:I = 0x1

.field private static final OFF:I = 0x4

.field private static final RELEASE:I = 0x3

.field private static final SUSTAIN:I = 0x2


# instance fields
.field private final amEnabled:Z

.field private final ar:I

.field private final baseBlock:I

.field private final baseFnum:I

.field private final dr:I

.field private final dtCode:I

.field private env:I

.field private final keyCode:I

.field private final mul:I

.field private phase:I

.field private final rr:I

.field private final rs:I

.field private final sr:I

.field private state:I

.field private final sustainLevel:I

.field private final tl:I


# direct methods
.method constructor <init>(IIIIIIII)V
    .locals 6
    .param p1, "dtMul"    # I
    .param p2, "tl"    # I
    .param p3, "rsAr"    # I
    .param p4, "amDr"    # I
    .param p5, "sr"    # I
    .param p6, "slRr"    # I
    .param p7, "fnum"    # I
    .param p8, "block"    # I

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    const/16 v0, 0x3ff

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->env:I

    .line 205
    const/4 v0, 0x4

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->state:I

    .line 208
    ushr-int/lit8 v0, p1, 0x4

    const/4 v1, 0x7

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->dtCode:I

    .line 209
    and-int/lit8 v0, p1, 0xf

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->mul:I

    .line 210
    and-int/lit8 v0, p2, 0x7f

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->tl:I

    .line 211
    ushr-int/lit8 v0, p3, 0x6

    and-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->rs:I

    .line 212
    and-int/lit8 v0, p3, 0x1f

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->ar:I

    .line 213
    and-int/lit8 v0, p4, 0x1f

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->dr:I

    .line 214
    and-int/lit8 v0, p5, 0x1f

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->sr:I

    .line 215
    and-int/lit8 v0, p6, 0xf

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->rr:I

    .line 216
    ushr-int/lit8 v0, p6, 0x4

    const/16 v2, 0xf

    and-int/2addr v0, v2

    .line 217
    .local v0, "sl":I
    if-ne v0, v2, :cond_0

    const/16 v3, 0x3e0

    goto :goto_0

    :cond_0
    mul-int/lit8 v3, v0, 0x20

    :goto_0
    iput v3, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->sustainLevel:I

    .line 218
    and-int/lit16 v3, p4, 0x80

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->amEnabled:Z

    .line 219
    const/16 v3, 0x7ff

    invoke-static {p7, v4, v3}, Lcom/ahsim/demulation/GenesisYm2612Core;->-$$Nest$smclamp(III)I

    move-result v3

    iput v3, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->baseFnum:I

    .line 220
    invoke-static {p8, v4, v1}, Lcom/ahsim/demulation/GenesisYm2612Core;->-$$Nest$smclamp(III)I

    move-result v3

    iput v3, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->baseBlock:I

    .line 221
    iget v3, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->baseBlock:I

    shl-int/lit8 v3, v3, 0x2

    invoke-static {}, Lcom/ahsim/demulation/GenesisYm2612Core;->-$$Nest$sfgetFKEY()[I

    move-result-object v4

    iget v5, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->baseFnum:I

    ushr-int/lit8 v1, v5, 0x7

    and-int/2addr v1, v2

    aget v1, v4, v1

    or-int/2addr v1, v3

    iput v1, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->keyCode:I

    .line 222
    return-void
.end method

.method private advanceEnvelope(J)V
    .locals 8
    .param p1, "counter"    # J

    .line 271
    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    .line 273
    :cond_0
    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->state:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->ar:I

    .local v0, "registerRate":I
    goto :goto_0

    .line 274
    .end local v0    # "registerRate":I
    :cond_1
    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->state:I

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->dr:I

    .restart local v0    # "registerRate":I
    goto :goto_0

    .line 275
    .end local v0    # "registerRate":I
    :cond_2
    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->state:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->sr:I

    .restart local v0    # "registerRate":I
    goto :goto_0

    .line 276
    .end local v0    # "registerRate":I
    :cond_3
    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->rr:I

    shl-int/2addr v0, v3

    or-int/2addr v0, v3

    .line 277
    .restart local v0    # "registerRate":I
    :goto_0
    if-nez v0, :cond_4

    return-void

    .line 278
    :cond_4
    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->effectiveRate(I)I

    move-result v4

    .line 279
    .local v4, "rate":I
    invoke-static {v4, p1, p2}, Lcom/ahsim/demulation/GenesisYm2612Core;->-$$Nest$smenvelopeIncrement(IJ)I

    move-result v5

    .line 280
    .local v5, "inc":I
    if-nez v5, :cond_5

    return-void

    .line 281
    :cond_5
    iget v6, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->state:I

    if-nez v6, :cond_6

    .line 282
    iget v2, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->env:I

    iget v6, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->env:I

    not-int v6, v6

    mul-int/2addr v6, v5

    shr-int/lit8 v1, v6, 0x4

    add-int/2addr v2, v1

    iput v2, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->env:I

    .line 283
    iget v1, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->env:I

    if-gtz v1, :cond_9

    const/4 v1, 0x0

    iput v1, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->env:I

    iput v3, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->state:I

    goto :goto_1

    .line 285
    :cond_6
    iget v6, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->env:I

    add-int/2addr v6, v5

    const/16 v7, 0x3ff

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->env:I

    .line 286
    iget v6, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->state:I

    if-ne v6, v3, :cond_7

    iget v3, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->env:I

    iget v6, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->sustainLevel:I

    if-lt v3, v6, :cond_7

    iput v2, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->state:I

    .line 287
    :cond_7
    iget v3, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->state:I

    if-eq v3, v2, :cond_8

    iget v2, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->state:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    :cond_8
    iget v2, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->env:I

    if-lt v2, v7, :cond_9

    iput v7, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->env:I

    iput v1, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->state:I

    .line 289
    :cond_9
    :goto_1
    return-void
.end method

.method private effectiveRate(I)I
    .locals 3
    .param p1, "regRate"    # I

    .line 265
    if-gtz p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 266
    :cond_0
    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->keyCode:I

    iget v1, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->rs:I

    rsub-int/lit8 v1, v1, 0x3

    shr-int/2addr v0, v1

    .line 267
    .local v0, "rks":I
    shl-int/lit8 v1, p1, 0x1

    add-int/2addr v1, v0

    const/16 v2, 0x3f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method private phaseIncrement(D)I
    .locals 11
    .param p1, "pitchFactor"    # D

    .line 250
    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->baseFnum:I

    int-to-long v0, v0

    iget v2, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->baseBlock:I

    shl-long/2addr v0, v2

    const/4 v2, 0x1

    shr-long/2addr v0, v2

    .line 251
    .local v0, "base":J
    long-to-double v3, v0

    mul-double/2addr v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 252
    iget v3, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->dtCode:I

    .line 253
    .local v3, "dt":I
    const/4 v4, 0x0

    .line 254
    .local v4, "delta":I
    if-eqz v3, :cond_1

    const/4 v5, 0x4

    if-eq v3, v5, :cond_1

    .line 255
    if-ge v3, v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    rsub-int/lit8 v5, v3, 0x8

    .line 256
    .local v5, "mag":I
    :goto_0
    invoke-static {}, Lcom/ahsim/demulation/GenesisYm2612Core;->-$$Nest$sfgetDETUNE()[[I

    move-result-object v6

    aget-object v6, v6, v5

    iget v7, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->keyCode:I

    and-int/lit8 v7, v7, 0x1f

    aget v4, v6, v7

    .line 257
    const/4 v6, 0x5

    if-lt v3, v6, :cond_1

    neg-int v4, v4

    .line 259
    .end local v5    # "mag":I
    :cond_1
    int-to-long v5, v4

    add-long/2addr v5, v0

    const-wide/32 v7, 0xfffff

    and-long/2addr v5, v7

    .line 260
    .local v5, "detuned":J
    iget v9, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->mul:I

    if-nez v9, :cond_2

    shr-long v9, v5, v2

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->mul:I

    int-to-long v9, v2

    mul-long/2addr v9, v5

    .line 261
    .local v9, "result":J
    :goto_1
    and-long/2addr v7, v9

    long-to-int v2, v7

    return v2
.end method


# virtual methods
.method dead()Z
    .locals 2

    .line 233
    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->state:I

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
    .locals 1

    .line 224
    const/4 v0, 0x4

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->state:I

    const/16 v0, 0x3ff

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->env:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->phase:I

    return-void
.end method

.method keyOff()V
    .locals 2

    .line 232
    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->state:I

    :cond_0
    return-void
.end method

.method keyOn()V
    .locals 3

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->phase:I

    .line 227
    const/16 v1, 0x3ff

    iput v1, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->env:I

    .line 228
    iget v1, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->ar:I

    if-nez v1, :cond_0

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->state:I

    goto :goto_0

    .line 229
    :cond_0
    iget v1, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->ar:I

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->effectiveRate(I)I

    move-result v1

    const/16 v2, 0x3e

    if-lt v1, v2, :cond_1

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->env:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->state:I

    goto :goto_0

    .line 230
    :cond_1
    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->state:I

    .line 231
    :goto_0
    return-void
.end method

.method sample(IJZDI)I
    .locals 8
    .param p1, "modulation"    # I
    .param p2, "egCounter"    # J
    .param p4, "egTick"    # Z
    .param p5, "pitchFactor"    # D
    .param p7, "channelAmAtt"    # I

    .line 236
    if-eqz p4, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->advanceEnvelope(J)V

    .line 237
    :cond_0
    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->state:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 239
    :cond_1
    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->phase:I

    ushr-int/lit8 v0, v0, 0xa

    add-int/2addr v0, p1

    and-int/lit16 v0, v0, 0x3ff

    .line 240
    .local v0, "phaseIndex":I
    iget v1, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->env:I

    iget v3, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->tl:I

    shl-int/lit8 v3, v3, 0x3

    add-int/2addr v1, v3

    iget-boolean v3, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->amEnabled:Z

    if-eqz v3, :cond_2

    move v2, p7

    :cond_2
    add-int/2addr v1, v2

    .line 241
    .local v1, "att":I
    const/4 v2, 0x0

    .line 242
    .local v2, "out":I
    invoke-static {}, Lcom/ahsim/demulation/GenesisYm2612Core;->-$$Nest$sfgetATTENUATION()[D

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_3

    invoke-static {}, Lcom/ahsim/demulation/GenesisYm2612Core;->-$$Nest$sfgetSINE()[D

    move-result-object v3

    aget-wide v4, v3, v0

    const-wide v6, 0x40bfff0000000000L    # 8191.0

    mul-double/2addr v4, v6

    invoke-static {}, Lcom/ahsim/demulation/GenesisYm2612Core;->-$$Nest$sfgetATTENUATION()[D

    move-result-object v3

    aget-wide v6, v3, v1

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v2, v3

    .line 244
    :cond_3
    invoke-direct {p0, p5, p6}, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->phaseIncrement(D)I

    move-result v3

    .line 245
    .local v3, "inc":I
    iget v4, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->phase:I

    add-int/2addr v4, v3

    const v5, 0xfffff

    and-int/2addr v4, v5

    iput v4, p0, Lcom/ahsim/demulation/GenesisYm2612Core$Operator;->phase:I

    .line 246
    return v2
.end method
