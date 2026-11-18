.class final Lcom/ahsim/demulation/GenesisYm2612Core;
.super Ljava/lang/Object;
.source "GenesisYm2612Core.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisYm2612Core$Operator;,
        Lcom/ahsim/demulation/GenesisYm2612Core$Voice;
    }
.end annotation


# static fields
.field private static final ATTENUATION:[D

.field private static final CARRIER_MASK:[I

.field private static final DETUNE:[[I

.field private static final EG_INC:[[I

.field private static final FKEY:[I

.field private static final FM_FNUM:[I

.field static final NATIVE_RATE:D = 53267.03869047619

.field private static final PATCH_SLOT:[I

.field private static final PHASE_BITS:I = 0x14

.field private static final PHASE_MASK:I = 0xfffff

.field private static final PMS_CENTS:[D

.field private static final SINE:[D


# direct methods
.method static bridge synthetic -$$Nest$sfgetATTENUATION()[D
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/GenesisYm2612Core;->ATTENUATION:[D

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetCARRIER_MASK()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/GenesisYm2612Core;->CARRIER_MASK:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetDETUNE()[[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/GenesisYm2612Core;->DETUNE:[[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetFKEY()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/GenesisYm2612Core;->FKEY:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetFM_FNUM()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/GenesisYm2612Core;->FM_FNUM:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetPATCH_SLOT()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/GenesisYm2612Core;->PATCH_SLOT:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetPMS_CENTS()[D
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/GenesisYm2612Core;->PMS_CENTS:[D

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetSINE()[D
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/GenesisYm2612Core;->SINE:[D

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smattenuateCarrierTl(II)I
    .locals 0

    invoke-static {p0, p1}, Lcom/ahsim/demulation/GenesisYm2612Core;->attenuateCarrierTl(II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smclamp(III)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/GenesisYm2612Core;->clamp(III)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smclamp14(I)I
    .locals 0

    invoke-static {p0}, Lcom/ahsim/demulation/GenesisYm2612Core;->clamp14(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smenvelopeIncrement(IJ)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/GenesisYm2612Core;->envelopeIncrement(IJ)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smlfoAmplitude(I)I
    .locals 0

    invoke-static {p0}, Lcom/ahsim/demulation/GenesisYm2612Core;->lfoAmplitude(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smlfoSignedTriangle(I)D
    .locals 2

    invoke-static {p0}, Lcom/ahsim/demulation/GenesisYm2612Core;->lfoSignedTriangle(I)D

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 19

    .line 17
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ahsim/demulation/GenesisYm2612Core;->FM_FNUM:[I

    .line 18
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ahsim/demulation/GenesisYm2612Core;->FKEY:[I

    .line 19
    const/16 v0, 0x20

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    new-array v2, v0, [I

    fill-array-data v2, :array_3

    new-array v3, v0, [I

    fill-array-data v3, :array_4

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    filled-new-array {v1, v2, v3, v0}, [[I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/GenesisYm2612Core;->DETUNE:[[I

    .line 29
    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_6

    new-array v2, v0, [I

    fill-array-data v2, :array_7

    new-array v3, v0, [I

    fill-array-data v3, :array_8

    new-array v4, v0, [I

    fill-array-data v4, :array_9

    new-array v5, v0, [I

    fill-array-data v5, :array_a

    new-array v6, v0, [I

    fill-array-data v6, :array_b

    new-array v7, v0, [I

    fill-array-data v7, :array_c

    new-array v8, v0, [I

    fill-array-data v8, :array_d

    new-array v9, v0, [I

    fill-array-data v9, :array_e

    new-array v10, v0, [I

    fill-array-data v10, :array_f

    new-array v11, v0, [I

    fill-array-data v11, :array_10

    new-array v12, v0, [I

    fill-array-data v12, :array_11

    new-array v13, v0, [I

    fill-array-data v13, :array_12

    new-array v14, v0, [I

    fill-array-data v14, :array_13

    new-array v15, v0, [I

    fill-array-data v15, :array_14

    move-object/from16 v16, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_15

    move-object/from16 v17, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_16

    move-object/from16 v18, v17

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v18

    filled-new-array/range {v1 .. v17}, [[I

    move-result-object v1

    sput-object v1, Lcom/ahsim/demulation/GenesisYm2612Core;->EG_INC:[[I

    .line 45
    const/16 v1, 0x17

    const/4 v2, 0x5

    const/16 v3, 0x11

    const/16 v4, 0xb

    filled-new-array {v2, v3, v4, v1}, [I

    move-result-object v1

    sput-object v1, Lcom/ahsim/demulation/GenesisYm2612Core;->PATCH_SLOT:[I

    .line 46
    new-array v1, v0, [I

    fill-array-data v1, :array_17

    sput-object v1, Lcom/ahsim/demulation/GenesisYm2612Core;->CARRIER_MASK:[I

    .line 47
    new-array v0, v0, [D

    fill-array-data v0, :array_18

    sput-object v0, Lcom/ahsim/demulation/GenesisYm2612Core;->PMS_CENTS:[D

    .line 48
    const/16 v0, 0x400

    new-array v0, v0, [D

    sput-object v0, Lcom/ahsim/demulation/GenesisYm2612Core;->SINE:[D

    .line 49
    const/16 v0, 0x341

    new-array v0, v0, [D

    sput-object v0, Lcom/ahsim/demulation/GenesisYm2612Core;->ATTENUATION:[D

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/ahsim/demulation/GenesisYm2612Core;->SINE:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/ahsim/demulation/GenesisYm2612Core;->SINE:[D

    int-to-double v2, v0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    sget-object v1, Lcom/ahsim/demulation/GenesisYm2612Core;->ATTENUATION:[D

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 55
    sget-object v1, Lcom/ahsim/demulation/GenesisYm2612Core;->ATTENUATION:[D

    int-to-double v2, v0

    const-wide/high16 v4, 0x3fb8000000000000L    # 0.09375

    mul-double/2addr v2, v4

    neg-double v2, v2

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    .end local v0    # "i":I
    :cond_1
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x2
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x5
        0x5
        0x6
        0x6
        0x7
        0x8
        0x8
        0x8
        0x8
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x5
        0x5
        0x6
        0x6
        0x7
        0x8
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
        0x10
        0x10
        0x10
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x5
        0x5
        0x6
        0x6
        0x7
        0x8
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
        0x11
        0x13
        0x14
        0x16
        0x16
        0x16
        0x16
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_c
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_e
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_f
    .array-data 4
        0x2
        0x2
        0x2
        0x4
        0x2
        0x2
        0x2
        0x4
    .end array-data

    :array_10
    .array-data 4
        0x2
        0x4
        0x2
        0x4
        0x2
        0x4
        0x2
        0x4
    .end array-data

    :array_11
    .array-data 4
        0x2
        0x4
        0x4
        0x4
        0x2
        0x4
        0x4
        0x4
    .end array-data

    :array_12
    .array-data 4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_13
    .array-data 4
        0x4
        0x4
        0x4
        0x8
        0x4
        0x4
        0x4
        0x8
    .end array-data

    :array_14
    .array-data 4
        0x4
        0x8
        0x4
        0x8
        0x4
        0x8
        0x4
        0x8
    .end array-data

    :array_15
    .array-data 4
        0x4
        0x8
        0x8
        0x8
        0x4
        0x8
        0x8
        0x8
    .end array-data

    :array_16
    .array-data 4
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
    .end array-data

    :array_17
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

    :array_18
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
.end method

.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static attenuateCarrierTl(II)I
    .locals 5
    .param p0, "tl"    # I
    .param p1, "attenuation"    # I

    .line 307
    and-int/lit8 v0, p0, 0x7f

    const/16 v1, 0x7f

    rsub-int/lit8 v0, v0, 0x7f

    .line 308
    .local v0, "loud":I
    shl-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1}, Lcom/ahsim/demulation/GenesisYm2612Core;->clamp(III)I

    move-result v4

    mul-int/2addr v2, v4

    shr-int/lit8 v2, v2, 0x8

    .line 309
    .local v2, "noteAtt":I
    sub-int v4, v0, v2

    rsub-int/lit8 v4, v4, 0x7f

    invoke-static {v4, v3, v1}, Lcom/ahsim/demulation/GenesisYm2612Core;->clamp(III)I

    move-result v1

    return v1
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "v"    # I
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .line 325
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

.method private static clamp14(I)I
    .locals 1
    .param p0, "v"    # I

    .line 324
    const/16 v0, -0x2000

    if-ge p0, v0, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    const/16 v0, 0x1fff

    if-le p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_1
    return v0
.end method

.method private static envelopeIncrement(IJ)I
    .locals 7
    .param p0, "rate"    # I
    .param p1, "counter"    # J

    .line 293
    const/16 v0, 0x3f

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/ahsim/demulation/GenesisYm2612Core;->clamp(III)I

    move-result p0

    .line 296
    const/16 v0, 0x30

    if-ge p0, v0, :cond_0

    ushr-int/lit8 v0, p0, 0x2

    rsub-int/lit8 v0, v0, 0xb

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .local v0, "shift":I
    and-int/lit8 v2, p0, 0x3

    .local v2, "row":I
    goto :goto_0

    .line 297
    .end local v0    # "shift":I
    .end local v2    # "row":I
    :cond_0
    const/16 v0, 0x34

    if-ge p0, v0, :cond_1

    const/4 v0, 0x0

    .restart local v0    # "shift":I
    and-int/lit8 v2, p0, 0x3

    add-int/lit8 v2, v2, 0x4

    .restart local v2    # "row":I
    goto :goto_0

    .line 298
    .end local v0    # "shift":I
    .end local v2    # "row":I
    :cond_1
    const/16 v0, 0x38

    if-ge p0, v0, :cond_2

    const/4 v0, 0x0

    .restart local v0    # "shift":I
    and-int/lit8 v2, p0, 0x3

    add-int/lit8 v2, v2, 0x8

    .restart local v2    # "row":I
    goto :goto_0

    .line 299
    .end local v0    # "shift":I
    .end local v2    # "row":I
    :cond_2
    const/16 v0, 0x3c

    if-ge p0, v0, :cond_3

    const/4 v0, 0x0

    .restart local v0    # "shift":I
    and-int/lit8 v2, p0, 0x3

    add-int/lit8 v2, v2, 0xc

    .restart local v2    # "row":I
    goto :goto_0

    .line 300
    .end local v0    # "shift":I
    .end local v2    # "row":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "shift":I
    const/16 v2, 0x10

    .line 301
    .restart local v2    # "row":I
    :goto_0
    if-lez v0, :cond_4

    const-wide/16 v3, 0x1

    shl-long v5, v3, v0

    sub-long/2addr v5, v3

    and-long v3, p1, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    return v1

    .line 302
    :cond_4
    ushr-long v3, p1, v0

    const-wide/16 v5, 0x7

    and-long/2addr v3, v5

    long-to-int v1, v3

    .line 303
    .local v1, "step":I
    sget-object v3, Lcom/ahsim/demulation/GenesisYm2612Core;->EG_INC:[[I

    aget-object v3, v3, v2

    aget v3, v3, v1

    return v3
.end method

.method private static lfoAmplitude(I)I
    .locals 3
    .param p0, "c"    # I

    .line 320
    and-int/lit8 v0, p0, 0x7f

    .line 321
    .local v0, "x":I
    and-int/lit8 v1, v0, 0x40

    if-nez v1, :cond_0

    and-int/lit8 v1, v0, 0x3f

    rsub-int/lit8 v1, v1, 0x3f

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x3f

    .line 322
    .local v1, "a":I
    :goto_0
    shl-int/lit8 v2, v1, 0x1

    return v2
.end method

.method private static lfoSignedTriangle(I)D
    .locals 6
    .param p0, "c"    # I

    .line 313
    and-int/lit8 v0, p0, 0x7f

    .line 314
    .local v0, "x":I
    const/16 v1, 0x20

    const-wide/high16 v2, 0x403f000000000000L    # 31.0

    if-ge v0, v1, :cond_0

    int-to-double v4, v0

    div-double/2addr v4, v2

    return-wide v4

    .line 315
    :cond_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_1

    rsub-int/lit8 v1, v0, 0x3f

    int-to-double v4, v1

    div-double/2addr v4, v2

    return-wide v4

    .line 316
    :cond_1
    const/16 v1, 0x60

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, -0x40

    neg-int v1, v1

    int-to-double v4, v1

    div-double/2addr v4, v2

    return-wide v4

    .line 317
    :cond_2
    rsub-int/lit8 v1, v0, 0x7f

    neg-int v1, v1

    int-to-double v4, v1

    div-double/2addr v4, v2

    return-wide v4
.end method
