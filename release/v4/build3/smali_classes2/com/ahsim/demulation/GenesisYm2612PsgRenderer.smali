.class final Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;
.super Lcom/ahsim/demulation/GenesisGemsHardware;
.source "GenesisYm2612PsgRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;,
        Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;,
        Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$Operator;
    }
.end annotation


# static fields
.field private static final AMS_DB:[D

.field private static final CARRIER_MASK:[I

.field private static final DT_CENTS:[D

.field private static final FM_FNUM:[I

.field private static final FM_PATCH_OPERATOR:[I

.field private static final LFO_HZ:[D

.field private static final PMS_CENTS:[D

.field private static final PSG_WAVE:[I

.field private static final TWO_PI:D = 6.283185307179586


# instance fields
.field private dacBusy:Z

.field private final data:Lcom/ahsim/demulation/GenesisGemsSfxData;

.field private final fm:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;

.field private frame:J

.field private masterAttenuation:I

.field private volatile musicGain:D

.field private nextPsgTick:J

.field private final psg:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

.field private final rate:I

.field private volatile soundGain:D


# direct methods
.method static bridge synthetic -$$Nest$fgetframe(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;)J
    .locals 2

    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->frame:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetrate(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;)I
    .locals 0

    iget p0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->rate:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mattenuateCarrierTl(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->attenuateCarrierTl(II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mch3Frequency(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;I)D
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->ch3Frequency(Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;I)D

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$mnoteFrequency(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;I)D
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->noteFrequency(I)D

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$mpsgWavelength(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psgWavelength(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mrateCoef(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;IIDD)D
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->rateCoef(IIDD)D

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$mreleaseMultiplier(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;IIDD)D
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->releaseMultiplier(IIDD)D

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$sfgetAMS_DB()[D
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->AMS_DB:[D

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetCARRIER_MASK()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->CARRIER_MASK:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetDT_CENTS()[D
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->DT_CENTS:[D

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetFM_PATCH_OPERATOR()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->FM_PATCH_OPERATOR:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetLFO_HZ()[D
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->LFO_HZ:[D

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetPMS_CENTS()[D
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->PMS_CENTS:[D

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smclamp(III)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->clamp(III)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 15
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->FM_FNUM:[I

    .line 16
    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->PSG_WAVE:[I

    .line 23
    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->CARRIER_MASK:[I

    .line 28
    const/16 v1, 0xb

    const/16 v2, 0x17

    const/4 v3, 0x5

    const/16 v4, 0x11

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    sput-object v1, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->FM_PATCH_OPERATOR:[I

    .line 29
    new-array v1, v0, [D

    fill-array-data v1, :array_3

    sput-object v1, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->LFO_HZ:[D

    .line 30
    new-array v1, v0, [D

    fill-array-data v1, :array_4

    sput-object v1, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->PMS_CENTS:[D

    .line 31
    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_5

    sput-object v1, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->AMS_DB:[D

    .line 32
    new-array v0, v0, [D

    fill-array-data v0, :array_6

    sput-object v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->DT_CENTS:[D

    return-void

    :array_0
    .array-data 4
        0x284
        0x2aa
        0x2d3
        0x2fe
        0x32b
        0x35b
        0x38e
        0x3c5
        0x3fe
        0x43b
        0x47b
        0x4bf
        0x508
    .end array-data

    :array_1
    .array-data 4
        0x3f9
        0x3c0
        0x38a
        0x357
        0x327
        0x2fa
        0x2cf
        0x2a7
        0x281
        0x25d
        0x23b
        0x21b
        0x1fc
        0x1e0
        0x1c5
        0x1ac
        0x194
        0x17d
        0x168
        0x153
        0x140
        0x12e
        0x11d
        0x10d
        0xfe
        0xf0
        0xe2
        0xd6
        0xca
        0xbe
        0xb4
        0xaa
        0xa0
        0x97
        0x8f
        0x87
        0x7f
        0x78
        0x71
        0x6b
        0x65
        0x5f
        0x5a
        0x55
        0x50
        0x4c
        0x47
        0x43
        0x40
        0x3c
        0x39
        0x35
        0x32
        0x2f
        0x2d
        0x2a
        0x28
        0x26
        0x23
        0x21
        0x20
        0x1e
        0x1c
        0x1c
    .end array-data

    :array_2
    .array-data 4
        0x8
        0x8
        0x8
        0x8
        0xa
        0xe
        0xe
        0xf
    .end array-data

    :array_3
    .array-data 8
        0x400fd70a3d70a3d7L    # 3.98
        0x40163d70a3d70a3dL    # 5.56
        0x4018147ae147ae14L    # 6.02
        0x40197ae147ae147bL    # 6.37
        0x401b851eb851eb85L    # 6.88
        0x4023428f5c28f5c3L    # 9.63
        0x40480ccccccccccdL    # 48.1
        0x40520ccccccccccdL    # 72.2
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x400b333333333333L    # 3.4
        0x401acccccccccccdL    # 6.7
        0x4024000000000000L    # 10.0
        0x402c000000000000L    # 14.0
        0x4034000000000000L    # 20.0
        0x4044000000000000L    # 40.0
        0x4054000000000000L    # 80.0
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x3ff6666666666666L    # 1.4
        0x401799999999999aL    # 5.9
        0x402799999999999aL    # 11.8
    .end array-data

    :array_6
    .array-data 8
        0x0
        0x4008000000000000L    # 3.0
        0x4018000000000000L    # 6.0
        0x4024000000000000L    # 10.0
        0x0
        -0x3fdc000000000000L    # -10.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
    .end array-data
.end method

.method constructor <init>(Lcom/ahsim/demulation/GenesisGemsSfxData;I)V
    .locals 2
    .param p1, "data"    # Lcom/ahsim/demulation/GenesisGemsSfxData;
    .param p2, "outputRate"    # I

    .line 45
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisGemsHardware;-><init>()V

    .line 36
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->fm:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psg:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

    .line 42
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->soundGain:D

    .line 43
    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->musicGain:D

    .line 46
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    .line 47
    iput p2, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->rate:I

    .line 48
    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->reset()V

    .line 49
    return-void
.end method

.method private allocateFm(I)I
    .locals 9
    .param p1, "priority"    # I

    .line 194
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 195
    .local v0, "order":[I
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v1, :cond_3

    aget v5, v0, v3

    .line 196
    .local v5, "slot":I
    if-ne v5, v4, :cond_0

    iget-boolean v4, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->dacBusy:Z

    if-eqz v4, :cond_0

    goto :goto_1

    .line 197
    :cond_0
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->fm:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;

    aget-object v4, v4, v5

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->fm:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->dead()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 195
    .end local v5    # "slot":I
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    .restart local v5    # "slot":I
    :cond_2
    :goto_2
    return v5

    .line 199
    .end local v5    # "slot":I
    :cond_3
    const/4 v1, -0x1

    .local v1, "best":I
    const/16 v3, 0x100

    .line 200
    .local v3, "bestPriority":I
    array-length v5, v0

    :goto_3
    if-ge v2, v5, :cond_6

    aget v6, v0, v2

    .line 201
    .local v6, "slot":I
    if-ne v6, v4, :cond_4

    iget-boolean v7, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->dacBusy:Z

    if-eqz v7, :cond_4

    goto :goto_4

    .line 202
    :cond_4
    iget-object v7, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->fm:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;

    aget-object v7, v7, v6

    .line 203
    .local v7, "v":Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;
    if-eqz v7, :cond_5

    iget v8, v7, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->priority:I

    if-ge v8, v3, :cond_5

    move v1, v6

    iget v3, v7, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->priority:I

    .line 200
    .end local v6    # "slot":I
    .end local v7    # "v":Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;
    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 205
    :cond_6
    if-ltz v1, :cond_7

    if-gt v3, p1, :cond_7

    move v2, v1

    goto :goto_5

    :cond_7
    const/4 v2, -0x1

    :goto_5
    return v2

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x4
        0x5
        0x2
    .end array-data
.end method

.method private allocateSpecificFm(II)I
    .locals 2
    .param p1, "slot"    # I
    .param p2, "priority"    # I

    .line 187
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->fm:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;

    aget-object v0, v0, p1

    .line 188
    .local v0, "old":Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->dead()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->priority:I

    if-le v1, p2, :cond_0

    const/4 v1, -0x1

    return v1

    .line 189
    :cond_0
    return p1
.end method

.method private attenuateCarrierTl(II)I
    .locals 5
    .param p1, "tl"    # I
    .param p2, "attenuation"    # I

    .line 421
    and-int/lit8 v0, p1, 0x7f

    const/16 v1, 0x7f

    rsub-int/lit8 v0, v0, 0x7f

    .line 422
    .local v0, "loud":I
    shl-int/lit8 v2, v0, 0x1

    mul-int/2addr v2, p2

    shr-int/lit8 v2, v2, 0x8

    .line 423
    .local v2, "noteAtt":I
    sub-int v3, v0, v2

    rsub-int/lit8 v3, v3, 0x7f

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->clamp(III)I

    move-result v1

    return v1
.end method

.method private ch3Frequency(Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;I)D
    .locals 12
    .param p1, "p"    # Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;
    .param p2, "opIndex"    # I

    .line 463
    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1d

    .local v0, "base":I
    invoke-virtual {p1, v0}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v1

    .local v1, "hi":I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v2

    .line 464
    .local v2, "lo":I
    shl-int/lit8 v3, v1, 0x8

    or-int/2addr v3, v2

    .local v3, "raw":I
    and-int/lit16 v4, v3, 0x7ff

    .local v4, "fnum":I
    ushr-int/lit8 v5, v3, 0xb

    and-int/lit8 v5, v5, 0x7

    .line 465
    .local v5, "block":I
    if-nez v4, :cond_0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    return-wide v6

    .line 466
    :cond_0
    int-to-double v6, v4

    const-wide v8, 0x415d42ad64924925L    # 7670453.571428572

    mul-double/2addr v6, v8

    add-int/lit8 v8, v5, -0x1

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x41a2000000000000L    # 1.50994944E8

    div-double/2addr v6, v8

    return-wide v6
.end method

.method private static clamp(DDD)D
    .locals 2
    .param p0, "v"    # D
    .param p2, "lo"    # D
    .param p4, "hi"    # D

    .line 491
    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    move-wide v0, p2

    goto :goto_0

    :cond_0
    cmpl-double v0, p0, p4

    if-lez v0, :cond_1

    move-wide v0, p4

    goto :goto_0

    :cond_1
    move-wide v0, p0

    :goto_0
    return-wide v0
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "v"    # I
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .line 490
    if-ge p0, p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method private gemsFmBendFactor(II)D
    .locals 18
    .param p1, "note"    # I
    .param p2, "bend256"    # I

    .line 428
    move/from16 v0, p2

    const/4 v1, 0x0

    const/16 v2, 0x5f

    move/from16 v3, p1

    invoke-static {v3, v1, v2}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->clamp(III)I

    move-result v1

    .line 429
    .local v1, "base":I
    move-object/from16 v4, p0

    invoke-direct {v4, v1}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->noteFrequency(I)D

    move-result-wide v5

    .line 430
    .local v5, "baseHz":D
    int-to-short v7, v0

    const/16 v8, 0x100

    invoke-static {v7, v8}, Ljava/lang/Math;->floorDiv(II)I

    move-result v7

    .line 431
    .local v7, "whole":I
    int-to-short v8, v0

    and-int/lit16 v8, v8, 0xff

    .line 432
    .local v8, "frac":I
    add-int v9, v1, v7

    .line 433
    .local v9, "bent":I
    if-gez v9, :cond_0

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 434
    :cond_0
    if-lt v9, v2, :cond_1

    const/16 v9, 0x5f

    const/4 v8, 0x0

    .line 435
    :cond_1
    div-int/lit8 v2, v9, 0xc

    .local v2, "block":I
    rem-int/lit8 v10, v9, 0xc

    .line 436
    .local v10, "pc":I
    sget-object v11, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->FM_FNUM:[I

    aget v11, v11, v10

    .local v11, "f0":I
    sget-object v12, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->FM_FNUM:[I

    add-int/lit8 v13, v10, 0x1

    aget v12, v12, v13

    .line 437
    .local v12, "f1":I
    sub-int v13, v12, v11

    mul-int/2addr v13, v8

    shr-int/lit8 v13, v13, 0x8

    add-int/2addr v13, v11

    .line 438
    .local v13, "fnum":I
    int-to-double v14, v13

    const-wide v16, 0x415d42ad64924925L    # 7670453.571428572

    mul-double v14, v14, v16

    add-int/lit8 v0, v2, -0x1

    move/from16 v16, v1

    .end local v1    # "base":I
    .local v16, "base":I
    int-to-double v0, v0

    move/from16 v17, v2

    .end local v2    # "block":I
    .local v17, "block":I
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v14, v0

    const-wide/high16 v0, 0x41a2000000000000L    # 1.50994944E8

    div-double/2addr v14, v0

    .line 439
    .local v14, "hz":D
    const-wide/16 v0, 0x0

    cmpl-double v0, v5, v0

    if-lez v0, :cond_2

    div-double v0, v14, v5

    goto :goto_0

    :cond_2
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide v0
.end method

.method private gemsPsgBendFactor(II)D
    .locals 12
    .param p1, "note"    # I
    .param p2, "bend256"    # I

    .line 443
    const/4 v0, 0x0

    const/16 v1, 0x5f

    invoke-static {p1, v0, v1}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->clamp(III)I

    move-result v0

    .line 444
    .local v0, "base":I
    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psgWavelength(I)I

    move-result v2

    .line 445
    .local v2, "baseWave":I
    int-to-short v3, p2

    const/16 v4, 0x100

    invoke-static {v3, v4}, Ljava/lang/Math;->floorDiv(II)I

    move-result v3

    .line 446
    .local v3, "whole":I
    int-to-short v4, p2

    and-int/lit16 v4, v4, 0xff

    .line 447
    .local v4, "frac":I
    add-int v5, v0, v3

    .line 448
    .local v5, "bent":I
    const/16 v6, 0x21

    if-ge v5, v6, :cond_0

    const/16 v5, 0x21

    const/4 v4, 0x0

    .line 449
    :cond_0
    if-lt v5, v1, :cond_1

    const/16 v5, 0x5f

    const/4 v4, 0x0

    .line 450
    :cond_1
    invoke-direct {p0, v5}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psgWavelength(I)I

    move-result v6

    .line 451
    .local v6, "w0":I
    add-int/lit8 v7, v5, 0x1

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psgWavelength(I)I

    move-result v1

    .line 452
    .local v1, "w1":I
    sub-int v7, v1, v6

    mul-int/2addr v7, v4

    shr-int/lit8 v7, v7, 0x8

    add-int/2addr v7, v6

    .line 453
    .local v7, "wave":I
    if-lez v7, :cond_2

    int-to-double v8, v2

    int-to-double v10, v7

    div-double/2addr v8, v10

    goto :goto_0

    :cond_2
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide v8
.end method

.method private noteFrequency(I)D
    .locals 9
    .param p1, "note"    # I

    .line 457
    const/4 v0, 0x0

    const/16 v1, 0x5f

    invoke-static {p1, v0, v1}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->clamp(III)I

    move-result v0

    .local v0, "n":I
    div-int/lit8 v1, v0, 0xc

    .local v1, "block":I
    sget-object v2, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->FM_FNUM:[I

    rem-int/lit8 v3, v0, 0xc

    aget v2, v2, v3

    .line 458
    .local v2, "fnum":I
    int-to-double v3, v2

    const-wide v5, 0x415d42ad64924925L    # 7670453.571428572

    mul-double/2addr v3, v5

    add-int/lit8 v5, v1, -0x1

    int-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x41a2000000000000L    # 1.50994944E8

    div-double/2addr v3, v5

    return-wide v3
.end method

.method private noteOn(ILcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;Z)V
    .locals 8
    .param p1, "sequence"    # I
    .param p2, "event"    # Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;
    .param p3, "music"    # Z

    .line 97
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    iget v1, p2, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->patchIndex:I

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/GenesisGemsSfxData;->patch(I)Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;

    move-result-object v5

    .line 98
    .local v5, "patch":Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;
    if-eqz v5, :cond_4

    iget v0, v5, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->type:I

    iget v1, p2, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->patchType:I

    if-eq v0, v1, :cond_0

    move v3, p1

    move-object v4, p2

    move v7, p3

    goto :goto_1

    .line 99
    :cond_0
    iget v0, p2, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->patchType:I

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2, v5, p3}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->noteOnFm(ILcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;Z)V

    move v3, p1

    move-object v4, p2

    move v7, p3

    goto :goto_0

    .line 100
    :cond_1
    iget v0, p2, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->patchType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v7, p3

    .end local p1    # "sequence":I
    .end local p2    # "event":Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;
    .end local p3    # "music":Z
    .local v3, "sequence":I
    .local v4, "event":Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;
    .local v7, "music":Z
    invoke-direct/range {v2 .. v7}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->noteOnPsg(ILcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;ZZ)V

    goto :goto_0

    .line 101
    .end local v3    # "sequence":I
    .end local v4    # "event":Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;
    .end local v7    # "music":Z
    .restart local p1    # "sequence":I
    .restart local p2    # "event":Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;
    .restart local p3    # "music":Z
    :cond_2
    move v3, p1

    move-object v4, p2

    move v7, p3

    .end local p1    # "sequence":I
    .end local p2    # "event":Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;
    .end local p3    # "music":Z
    .restart local v3    # "sequence":I
    .restart local v4    # "event":Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;
    .restart local v7    # "music":Z
    iget p1, v4, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->patchType:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    const/4 v6, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->noteOnPsg(ILcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;ZZ)V

    .line 102
    :cond_3
    :goto_0
    return-void

    .line 98
    .end local v3    # "sequence":I
    .end local v4    # "event":Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;
    .end local v7    # "music":Z
    .restart local p1    # "sequence":I
    .restart local p2    # "event":Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;
    .restart local p3    # "music":Z
    :cond_4
    move v3, p1

    move-object v4, p2

    move v7, p3

    .end local p1    # "sequence":I
    .end local p2    # "event":Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;
    .end local p3    # "music":Z
    .restart local v3    # "sequence":I
    .restart local v4    # "event":Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;
    .restart local v7    # "music":Z
    :goto_1
    return-void
.end method

.method private noteOnFm(ILcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;Z)V
    .locals 9
    .param p1, "sequence"    # I
    .param p2, "e"    # Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;
    .param p3, "p"    # Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;
    .param p4, "music"    # Z

    .line 178
    invoke-virtual {p3}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->fmChannel3Special()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget v1, p2, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->priority:I

    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->allocateSpecificFm(II)I

    move-result v0

    move v7, v0

    .local v0, "slot":I
    goto :goto_0

    .line 179
    .end local v0    # "slot":I
    :cond_0
    iget v0, p2, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->priority:I

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->allocateFm(I)I

    move-result v0

    move v7, v0

    .line 180
    .local v7, "slot":I
    :goto_0
    if-gez v7, :cond_1

    return-void

    .line 181
    :cond_1
    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->masterAttenuation:I

    iget v1, p2, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->channelAttenuation:I

    add-int/2addr v0, v1

    .line 182
    .local v0, "attenuation":I
    const/16 v1, 0x80

    if-lt v0, v1, :cond_2

    const/16 v0, 0x7f

    :cond_2
    move v6, v0

    .line 183
    .end local v0    # "attenuation":I
    .local v6, "attenuation":I
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->fm:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;

    new-instance v1, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v8, p4

    .end local p1    # "sequence":I
    .end local p2    # "e":Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;
    .end local p3    # "p":Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;
    .end local p4    # "music":Z
    .local v3, "sequence":I
    .local v4, "e":Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;
    .local v5, "p":Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;
    .local v8, "music":Z
    invoke-direct/range {v1 .. v8}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;-><init>(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;ILcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;IIZ)V

    aput-object v1, v0, v7

    .line 184
    return-void
.end method

.method private noteOnPsg(ILcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;ZZ)V
    .locals 10
    .param p1, "sequence"    # I
    .param p2, "e"    # Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;
    .param p3, "p"    # Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;
    .param p4, "noise"    # Z
    .param p5, "music"    # Z

    .line 211
    if-eqz p4, :cond_0

    .line 212
    const/4 v0, 0x3

    .line 213
    .local v0, "slot":I
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psg:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

    aget-object v1, v1, v0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psg:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->dead()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psg:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->priority:I

    iget v2, p2, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->priority:I

    if-le v1, v2, :cond_6

    return-void

    .line 215
    .end local v0    # "slot":I
    :cond_0
    const/4 v0, -0x1

    .line 216
    .restart local v0    # "slot":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psg:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psg:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->dead()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v0, v1

    .line 217
    .end local v1    # "i":I
    :cond_3
    if-gez v0, :cond_6

    .line 218
    const/16 v1, 0x100

    .line 219
    .local v1, "bp":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_5

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psg:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->priority:I

    if-ge v4, v1, :cond_4

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psg:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

    aget-object v4, v4, v3

    iget v1, v4, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->priority:I

    move v0, v3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 220
    .end local v3    # "i":I
    :cond_5
    iget v2, p2, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->priority:I

    if-le v1, v2, :cond_6

    return-void

    .line 223
    .end local v1    # "bp":I
    :cond_6
    iget v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->masterAttenuation:I

    iget v2, p2, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->channelAttenuation:I

    add-int/2addr v1, v2

    .line 224
    .local v1, "attenuation":I
    const/16 v2, 0x80

    if-lt v1, v2, :cond_7

    const/16 v1, 0x7f

    :cond_7
    move v8, v1

    .line 225
    .end local v1    # "attenuation":I
    .local v8, "attenuation":I
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psg:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

    new-instance v2, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v9, p5

    .end local p1    # "sequence":I
    .end local p2    # "e":Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;
    .end local p3    # "p":Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;
    .end local p4    # "noise":Z
    .end local p5    # "music":Z
    .local v4, "sequence":I
    .local v5, "e":Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;
    .local v6, "p":Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;
    .local v7, "noise":Z
    .local v9, "music":Z
    invoke-direct/range {v2 .. v9}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;-><init>(Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;ILcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;ZIZ)V

    aput-object v2, v1, v0

    .line 228
    iget-object p1, v3, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psg:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->tickEnvelope()V

    .line 229
    return-void
.end method

.method private psgWavelength(I)I
    .locals 4
    .param p1, "note"    # I

    .line 470
    const/16 v0, 0x5f

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->clamp(III)I

    move-result v0

    .local v0, "n":I
    const/16 v2, 0x21

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->PSG_WAVE:[I

    aget v1, v2, v1

    return v1

    :cond_0
    sget-object v1, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->PSG_WAVE:[I

    add-int/lit8 v2, v0, -0x21

    const/16 v3, 0x3e

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v1, v1, v2

    return v1
.end method

.method private rateCoef(IIDD)D
    .locals 8
    .param p1, "value"    # I
    .param p2, "max"    # I
    .param p3, "fastest"    # D
    .param p5, "stepsPerDoubling"    # D

    .line 474
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    if-gtz p1, :cond_0

    return-wide v0

    .line 475
    :cond_0
    sub-int v2, p2, p1

    int-to-double v2, v2

    div-double/2addr v2, p5

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, p3

    .line 476
    .local v2, "seconds":D
    iget v4, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->rate:I

    int-to-double v4, v4

    mul-double/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    sub-double/2addr v0, v4

    return-wide v0
.end method

.method private rateCoef(IIDDZ)D
    .locals 2
    .param p1, "value"    # I
    .param p2, "max"    # I
    .param p3, "fastest"    # D
    .param p5, "stepsPerDoubling"    # D
    .param p7, "multiplier"    # Z

    .line 487
    if-eqz p7, :cond_0

    invoke-direct/range {p0 .. p6}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->releaseMultiplier(IIDD)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->rateCoef(IIDD)D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private releaseMultiplier(IIDD)D
    .locals 6
    .param p1, "value"    # I
    .param p2, "max"    # I
    .param p3, "fastest"    # D
    .param p5, "stepsPerDoubling"    # D

    .line 480
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    if-gtz p1, :cond_0

    return-wide v0

    .line 481
    :cond_0
    sub-int v2, p2, p1

    int-to-double v2, v2

    div-double/2addr v2, p5

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, p3

    .line 482
    .local v2, "seconds":D
    iget v4, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->rate:I

    int-to-double v4, v4

    mul-double/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private tickPsgEnvelopes()V
    .locals 4

    .line 232
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psg:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .local v3, "v":Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->tickEnvelope()V

    .end local v3    # "v":Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    :cond_1
    return-void
.end method


# virtual methods
.method activeFmVoicesForDiagnostics()I
    .locals 6

    .line 170
    const/4 v0, 0x0

    .local v0, "n":I
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->fm:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .local v4, "v":Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->dead()Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    .end local v4    # "v":Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method activePsgVoicesForDiagnostics()I
    .locals 6

    .line 173
    const/4 v0, 0x0

    .local v0, "n":I
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psg:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .local v4, "v":Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->dead()Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    .end local v4    # "v":Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method discardNonMusicVoices()V
    .locals 3

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->fm:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->fm:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->fm:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->music:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->fm:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psg:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psg:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psg:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->music:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psg:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

    aput-object v2, v1, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->dacBusy:Z

    .line 90
    return-void
.end method

.method hasActiveVoices()Z
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->activeFmVoicesForDiagnostics()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->activePsgVoicesForDiagnostics()I

    move-result v0

    if-lez v0, :cond_0

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

.method masterAttenuationForDiagnostics()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->masterAttenuation:I

    return v0
.end method

.method musicSubbeat()V
    .locals 6

    .line 105
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->fm:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .local v4, "v":Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;
    if-eqz v4, :cond_0

    iget-boolean v5, v4, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->music:Z

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->musicSubbeat()V

    .end local v4    # "v":Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psg:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .local v3, "v":Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;
    if-eqz v3, :cond_2

    iget-boolean v4, v3, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->music:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->musicSubbeat()V

    .end local v3    # "v":Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 107
    :cond_3
    return-void
.end method

.method noteOn(ILcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;)V
    .locals 1
    .param p1, "sequence"    # I
    .param p2, "event"    # Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->noteOn(ILcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;Z)V

    return-void
.end method

.method noteOnMusic(ILcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;)V
    .locals 1
    .param p1, "sequence"    # I
    .param p2, "event"    # Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;

    .line 94
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->noteOn(ILcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;Z)V

    return-void
.end method

.method render()D
    .locals 22

    .line 122
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->frame:J

    iget-wide v3, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->nextPsgTick:J

    cmp-long v1, v1, v3

    const-wide/16 v2, 0x1

    if-ltz v1, :cond_1

    .line 124
    :cond_0
    invoke-direct {v0}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->tickPsgEnvelopes()V

    .line 125
    iget-wide v4, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->nextPsgTick:J

    iget v1, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->rate:I

    int-to-double v6, v1

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->nextPsgTick:J

    .line 126
    iget-wide v4, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->frame:J

    iget-wide v6, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->nextPsgTick:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 128
    :cond_1
    const-wide/16 v4, 0x0

    .line 129
    .local v4, "musicFm":D
    const-wide/16 v6, 0x0

    .line 130
    .local v6, "musicPsg":D
    const-wide/16 v8, 0x0

    .line 131
    .local v8, "sound":D
    const/4 v1, 0x0

    .line 132
    .local v1, "soundActive":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v11, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->fm:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;

    array-length v11, v11

    const/4 v12, 0x0

    if-ge v10, v11, :cond_6

    .line 133
    iget-object v11, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->fm:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;

    aget-object v11, v11, v10

    .line 134
    .local v11, "v":Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;
    if-nez v11, :cond_2

    goto :goto_1

    .line 135
    :cond_2
    const/4 v13, 0x5

    if-ne v10, v13, :cond_3

    iget-boolean v13, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->dacBusy:Z

    if-eqz v13, :cond_3

    goto :goto_1

    .line 136
    :cond_3
    iget-wide v13, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->frame:J

    invoke-virtual {v11, v13, v14}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->render(J)D

    move-result-wide v13

    .line 137
    .local v13, "s":D
    invoke-virtual {v11}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->dead()Z

    move-result v15

    if-eqz v15, :cond_4

    iget-object v15, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->fm:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;

    aput-object v12, v15, v10

    .line 132
    .end local v11    # "v":Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;
    .end local v13    # "s":D
    :goto_1
    move-wide v15, v2

    goto :goto_2

    .line 138
    .restart local v11    # "v":Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;
    .restart local v13    # "s":D
    :cond_4
    iget-boolean v12, v11, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->music:Z

    if-eqz v12, :cond_5

    add-double/2addr v4, v13

    move-wide v15, v2

    goto :goto_2

    .line 139
    :cond_5
    move-wide v15, v2

    iget-wide v2, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->soundGain:D

    mul-double/2addr v2, v13

    add-double/2addr v8, v2

    add-int/lit8 v1, v1, 0x1

    .line 132
    .end local v11    # "v":Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;
    .end local v13    # "s":D
    :goto_2
    add-int/lit8 v10, v10, 0x1

    move-wide v2, v15

    goto :goto_0

    :cond_6
    move-wide v15, v2

    .line 141
    .end local v10    # "i":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v3, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psg:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

    array-length v3, v3

    if-ge v2, v3, :cond_a

    .line 142
    iget-object v3, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psg:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

    aget-object v3, v3, v2

    .line 143
    .local v3, "v":Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;
    if-nez v3, :cond_7

    goto :goto_4

    .line 144
    :cond_7
    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->render()D

    move-result-wide v10

    .line 145
    .local v10, "s":D
    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->dead()Z

    move-result v13

    if-eqz v13, :cond_8

    iget-object v13, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psg:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

    aput-object v12, v13, v2

    goto :goto_4

    .line 146
    :cond_8
    iget-boolean v13, v3, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->music:Z

    if-eqz v13, :cond_9

    add-double/2addr v6, v10

    goto :goto_4

    .line 147
    :cond_9
    iget-wide v13, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->soundGain:D

    mul-double/2addr v13, v10

    add-double/2addr v8, v13

    add-int/lit8 v1, v1, 0x1

    .line 141
    .end local v3    # "v":Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;
    .end local v10    # "s":D
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 149
    .end local v2    # "i":I
    :cond_a
    iget-wide v2, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->frame:J

    add-long/2addr v2, v15

    iput-wide v2, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->frame:J

    .line 159
    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double v10, v6, v2

    add-double/2addr v10, v4

    iget-wide v12, v0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->musicGain:D

    mul-double/2addr v10, v12

    .line 160
    .local v10, "music":D
    mul-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->tanh(D)D

    move-result-wide v2

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v12

    .line 162
    .local v2, "musicOut":D
    const/4 v14, 0x1

    if-le v1, v14, :cond_b

    int-to-double v14, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    div-double/2addr v8, v14

    .line 163
    :cond_b
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->tanh(D)D

    move-result-wide v14

    mul-double/2addr v14, v12

    .line 164
    .local v14, "soundOut":D
    add-double v16, v2, v14

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v16 .. v21}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->clamp(DDD)D

    move-result-wide v12

    return-wide v12
.end method

.method reset()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->fm:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psg:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->masterAttenuation:I

    .line 55
    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->dacBusy:Z

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->frame:J

    .line 57
    iget v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->rate:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->nextPsgTick:J

    .line 58
    return-void
.end method

.method setDacBusy(Z)V
    .locals 2
    .param p1, "busy"    # Z

    .line 61
    iput-boolean p1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->dacBusy:Z

    .line 62
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->fm:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->fm:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->keyOff()V

    .line 63
    :cond_0
    return-void
.end method

.method setMasterAttenuation(I)V
    .locals 2
    .param p1, "value"    # I

    .line 65
    const/4 v0, 0x0

    const/16 v1, 0x7f

    invoke-static {p1, v0, v1}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->masterAttenuation:I

    return-void
.end method

.method setStreamVolumes(II)V
    .locals 6
    .param p1, "soundPercent"    # I
    .param p2, "musicPercent"    # I

    .line 67
    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->clamp(III)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->soundGain:D

    .line 68
    invoke-static {p2, v0, v1}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->clamp(III)I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v4

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->musicGain:D

    .line 69
    return-void
.end method

.method setTrackBend(III)V
    .locals 7
    .param p1, "sequence"    # I
    .param p2, "track"    # I
    .param p3, "bend256"    # I

    .line 114
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->fm:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .local v4, "v":Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->sequence:I

    if-ne v5, p1, :cond_0

    iget v5, v4, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->track:I

    if-ne v5, p2, :cond_0

    .line 115
    iget v5, v4, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->note:I

    invoke-direct {p0, v5, p3}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->gemsFmBendFactor(II)D

    move-result-wide v5

    iput-wide v5, v4, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->bendFactor:D

    .line 114
    .end local v4    # "v":Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psg:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .local v3, "v":Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;
    if-eqz v3, :cond_2

    iget v4, v3, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->sequence:I

    if-ne v4, p1, :cond_2

    iget v4, v3, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->track:I

    if-ne v4, p2, :cond_2

    .line 117
    iget v4, v3, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->note:I

    invoke-direct {p0, v4, p3}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->gemsPsgBendFactor(II)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->bendFactor:D

    .line 116
    .end local v3    # "v":Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 118
    :cond_3
    return-void
.end method

.method stopAllVoices()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->fm:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psg:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->dacBusy:Z

    .line 81
    return-void
.end method

.method stopSequence(I)V
    .locals 2
    .param p1, "sequence"    # I

    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->fm:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->fm:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->fm:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->sequence:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->fm:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$FmVoice;->keyOff()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psg:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psg:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psg:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->sequence:I

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer;->psg:[Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisYm2612PsgRenderer$PsgVoice;->keyOff()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    .end local v0    # "i":I
    :cond_3
    return-void
.end method
