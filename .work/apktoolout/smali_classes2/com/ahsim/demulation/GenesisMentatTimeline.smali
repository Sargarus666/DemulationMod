.class public final Lcom/ahsim/demulation/GenesisMentatTimeline;
.super Ljava/lang/Object;
.source "GenesisMentatTimeline.java"


# static fields
.field private static final FRONTEND_TO_ROM_HOUSE:[I

.field private static final PHASE_COMPLETE:I = 0x3

.field private static final PHASE_INITIAL:I = 0x0

.field private static final PHASE_PAUSE:I = 0x2

.field private static final PHASE_SPEAKING:I = 0x1


# instance fields
.field private deadlineTick:J

.field private eyeFrame:I

.field private frontendHouse:I

.field private mouthFrame:I

.field private nextEyeTick:J

.field private nextMouthTick:J

.field private pageIndex:I

.field private pages:[Ljava/lang/String;

.field private pendingEyeFrame:I

.field private phase:I

.field private randomState:I

.field private speakingTicks:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/GenesisMentatTimeline;->FRONTEND_TO_ROM_HOUSE:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pages:[Ljava/lang/String;

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pageIndex:I

    .line 25
    const/4 v1, 0x3

    iput v1, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->phase:I

    .line 30
    iput v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pendingEyeFrame:I

    .line 35
    const v0, 0x4d454e54    # 2.068903E8f

    iput v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->randomState:I

    return-void
.end method

.method private randomRange(II)I
    .locals 5
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 221
    iget v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->randomState:I

    iget v1, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->randomState:I

    shl-int/lit8 v1, v1, 0xd

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->randomState:I

    .line 222
    iget v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->randomState:I

    iget v1, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->randomState:I

    ushr-int/lit8 v1, v1, 0x11

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->randomState:I

    .line 223
    iget v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->randomState:I

    iget v1, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->randomState:I

    shl-int/lit8 v1, v1, 0x5

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->randomState:I

    .line 224
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    .line 225
    .local v0, "span":I
    iget v1, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->randomState:I

    int-to-long v1, v1

    const-wide/32 v3, 0x7fffffff

    and-long/2addr v1, v3

    int-to-long v3, v0

    rem-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v1, p1

    return v1
.end method

.method private startPage(IJ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "nowTick"    # J

    .line 147
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pages:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pageIndex:I

    .line 148
    iput v1, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->phase:I

    .line 149
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pages:[Ljava/lang/String;

    iget v1, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pageIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x4

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->speakingTicks:J

    .line 150
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->speakingTicks:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->speakingTicks:J

    .line 151
    :cond_0
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->speakingTicks:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->deadlineTick:J

    .line 152
    iput-wide p2, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->nextMouthTick:J

    .line 153
    invoke-direct {p0, p2, p3}, Lcom/ahsim/demulation/GenesisMentatTimeline;->updateMouth(J)V

    .line 154
    return-void
.end method

.method private updateEyes(J)V
    .locals 10
    .param p1, "nowTick"    # J

    .line 177
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->nextEyeTick:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    return-void

    .line 179
    :cond_0
    iget v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pendingEyeFrame:I

    const/16 v1, 0xb4

    const/4 v2, 0x4

    if-ltz v0, :cond_2

    .line 180
    iget v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pendingEyeFrame:I

    iput v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->eyeFrame:I

    .line 181
    const/4 v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pendingEyeFrame:I

    .line 182
    iget v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->eyeFrame:I

    if-ne v0, v2, :cond_1

    const/16 v0, 0xc

    const/16 v1, 0x1e

    goto :goto_0

    :cond_1
    const/16 v0, 0x14

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/GenesisMentatTimeline;->randomRange(II)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->nextEyeTick:J

    .line 183
    return-void

    .line 186
    :cond_2
    sget-object v0, Lcom/ahsim/demulation/GenesisMentatTimeline;->FRONTEND_TO_ROM_HOUSE:[I

    iget v3, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->frontendHouse:I

    aget v0, v0, v3

    .line 188
    .local v0, "romHouse":I
    const/16 v3, 0xf

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-nez v0, :cond_5

    .line 189
    const/4 v7, 0x7

    invoke-direct {p0, v6, v7}, Lcom/ahsim/demulation/GenesisMentatTimeline;->randomRange(II)I

    move-result v7

    .line 190
    .local v7, "r":I
    if-le v7, v5, :cond_3

    const/4 v8, 0x1

    .local v8, "candidate":I
    goto :goto_1

    .line 191
    .end local v8    # "candidate":I
    :cond_3
    if-ne v7, v5, :cond_4

    const/4 v8, 0x4

    .restart local v8    # "candidate":I
    goto :goto_1

    .line 192
    .end local v8    # "candidate":I
    :cond_4
    move v8, v7

    .line 193
    .end local v7    # "r":I
    .restart local v8    # "candidate":I
    :goto_1
    goto :goto_3

    .end local v8    # "candidate":I
    :cond_5
    if-ne v0, v4, :cond_9

    .line 194
    iget v7, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->eyeFrame:I

    if-eqz v7, :cond_6

    const/4 v8, 0x0

    .restart local v8    # "candidate":I
    goto :goto_3

    .line 196
    .end local v8    # "candidate":I
    :cond_6
    const/16 v7, 0x11

    invoke-direct {p0, v6, v7}, Lcom/ahsim/demulation/GenesisMentatTimeline;->randomRange(II)I

    move-result v7

    .line 197
    .restart local v7    # "r":I
    const/16 v8, 0x9

    if-le v7, v8, :cond_7

    const/4 v8, 0x0

    .restart local v8    # "candidate":I
    goto :goto_2

    .line 198
    .end local v8    # "candidate":I
    :cond_7
    if-lt v7, v5, :cond_8

    const/4 v8, 0x4

    .restart local v8    # "candidate":I
    goto :goto_2

    .line 199
    .end local v8    # "candidate":I
    :cond_8
    move v8, v7

    .line 200
    .end local v7    # "r":I
    .restart local v8    # "candidate":I
    :goto_2
    goto :goto_3

    .line 202
    .end local v8    # "candidate":I
    :cond_9
    invoke-direct {p0, v6, v3}, Lcom/ahsim/demulation/GenesisMentatTimeline;->randomRange(II)I

    move-result v7

    .line 203
    .restart local v7    # "r":I
    const/16 v8, 0xa

    if-le v7, v8, :cond_a

    const/4 v8, 0x2

    .restart local v8    # "candidate":I
    goto :goto_3

    .line 204
    .end local v8    # "candidate":I
    :cond_a
    if-lt v7, v5, :cond_b

    const/4 v8, 0x4

    .restart local v8    # "candidate":I
    goto :goto_3

    .line 205
    .end local v8    # "candidate":I
    :cond_b
    move v8, v7

    .line 208
    .end local v7    # "r":I
    .restart local v8    # "candidate":I
    :goto_3
    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 209
    .end local v8    # "candidate":I
    .local v7, "candidate":I
    iget v8, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->eyeFrame:I

    const/4 v9, 0x2

    if-ne v8, v4, :cond_c

    if-eq v7, v9, :cond_d

    :cond_c
    iget v8, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->eyeFrame:I

    if-ne v8, v9, :cond_e

    if-ne v7, v4, :cond_e

    .line 210
    :cond_d
    iput v7, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pendingEyeFrame:I

    .line 211
    iput v6, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->eyeFrame:I

    .line 212
    invoke-direct {p0, v4, v5}, Lcom/ahsim/demulation/GenesisMentatTimeline;->randomRange(II)I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->nextEyeTick:J

    .line 213
    return-void

    .line 216
    :cond_e
    iput v7, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->eyeFrame:I

    .line 217
    if-ne v7, v2, :cond_f

    const/4 v1, 0x6

    const/16 v2, 0x3c

    invoke-direct {p0, v1, v2}, Lcom/ahsim/demulation/GenesisMentatTimeline;->randomRange(II)I

    move-result v1

    goto :goto_4

    :cond_f
    invoke-direct {p0, v3, v1}, Lcom/ahsim/demulation/GenesisMentatTimeline;->randomRange(II)I

    move-result v1

    :goto_4
    int-to-long v1, v1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->nextEyeTick:J

    .line 218
    return-void
.end method

.method private updateMouth(J)V
    .locals 3
    .param p1, "nowTick"    # J

    .line 158
    iget v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->phase:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 159
    iput v2, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->mouthFrame:I

    .line 160
    return-void

    .line 162
    :cond_0
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->nextMouthTick:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    return-void

    .line 163
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v2, v0}, Lcom/ahsim/demulation/GenesisMentatTimeline;->randomRange(II)I

    move-result v1

    iput v1, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->mouthFrame:I

    .line 165
    iget v1, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->mouthFrame:I

    if-nez v1, :cond_2

    const/4 v0, 0x7

    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/GenesisMentatTimeline;->randomRange(II)I

    move-result v0

    .local v0, "wait":I
    goto :goto_0

    .line 166
    .end local v0    # "wait":I
    :cond_2
    iget v1, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->mouthFrame:I

    const/4 v2, 0x6

    if-ne v1, v0, :cond_3

    const/4 v0, 0x5

    invoke-direct {p0, v0, v2}, Lcom/ahsim/demulation/GenesisMentatTimeline;->randomRange(II)I

    move-result v0

    .restart local v0    # "wait":I
    goto :goto_0

    .line 167
    .end local v0    # "wait":I
    :cond_3
    const/16 v0, 0xa

    invoke-direct {p0, v2, v0}, Lcom/ahsim/demulation/GenesisMentatTimeline;->randomRange(II)I

    move-result v0

    .line 168
    .restart local v0    # "wait":I
    :goto_0
    int-to-long v1, v0

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->nextMouthTick:J

    .line 169
    return-void
.end method


# virtual methods
.method public currentPage()Ljava/lang/String;
    .locals 3

    .line 123
    iget v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pageIndex:I

    if-gez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pages:[Ljava/lang/String;

    iget v1, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pageIndex:I

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pages:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method public eyeFrame()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->eyeFrame:I

    return v0
.end method

.method public isComplete()Z
    .locals 2

    .line 115
    iget v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->phase:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSpeaking()Z
    .locals 2

    .line 119
    iget v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->phase:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public mouthFrame()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->mouthFrame:I

    return v0
.end method

.method public pageCount()I
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pages:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public pageIndex()I
    .locals 2

    .line 127
    const/4 v0, 0x0

    iget v1, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pageIndex:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public reset(I[Ljava/lang/String;J)V
    .locals 9
    .param p1, "house"    # I
    .param p2, "sourcePages"    # [Ljava/lang/String;
    .param p3, "nowTick"    # J

    .line 38
    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->frontendHouse:I

    .line 39
    const-string v0, ""

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    array-length v3, p2

    if-nez v3, :cond_0

    goto :goto_2

    .line 42
    :cond_0
    array-length v3, p2

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pages:[Ljava/lang/String;

    .line 43
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_3

    .line 44
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pages:[Ljava/lang/String;

    aget-object v5, p2, v3

    if-nez v5, :cond_1

    move-object v5, v0

    goto :goto_1

    :cond_1
    aget-object v5, p2, v3

    :goto_1
    aput-object v5, v4, v3

    .line 43
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 40
    .end local v3    # "i":I
    :cond_2
    :goto_2
    new-array v3, v2, [Ljava/lang/String;

    aput-object v0, v3, v1

    iput-object v3, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pages:[Ljava/lang/String;

    .line 46
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pageIndex:I

    .line 47
    iput v1, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->phase:I

    .line 48
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->speakingTicks:J

    .line 51
    const-wide/16 v3, 0x1e

    add-long/2addr v3, p3

    iget-object v5, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pages:[Ljava/lang/String;

    array-length v5, v5

    sub-int/2addr v5, v2

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v5, v2

    const-wide/16 v7, 0xf

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->deadlineTick:J

    .line 53
    iput v1, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->eyeFrame:I

    .line 54
    iput v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pendingEyeFrame:I

    .line 55
    iput v1, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->mouthFrame:I

    .line 56
    iput-wide p3, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->nextMouthTick:J

    .line 57
    iget v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->frontendHouse:I

    const v1, 0x13579b

    mul-int/2addr v0, v1

    const v1, 0x4d454e54    # 2.068903E8f

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pages:[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit16 v1, v1, 0x1021

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->randomState:I

    .line 58
    const/16 v0, 0xf

    const/16 v1, 0xb4

    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/GenesisMentatTimeline;->randomRange(II)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->nextEyeTick:J

    .line 59
    return-void
.end method

.method public skip(J)V
    .locals 4
    .param p1, "nowTick"    # J

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/GenesisMentatTimeline;->updateEyes(J)V

    .line 101
    iget v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->phase:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 102
    invoke-direct {p0, v1, p1, p2}, Lcom/ahsim/demulation/GenesisMentatTimeline;->startPage(IJ)V

    goto :goto_0

    .line 103
    :cond_0
    iget v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->phase:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->phase:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 104
    :cond_1
    iget v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pageIndex:I

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pages:[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-lt v0, v3, :cond_2

    .line 105
    const/4 v0, 0x3

    iput v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->phase:I

    .line 106
    iput v1, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->mouthFrame:I

    .line 107
    iput-wide p1, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->nextMouthTick:J

    goto :goto_0

    .line 109
    :cond_2
    iget v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pageIndex:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0, p1, p2}, Lcom/ahsim/demulation/GenesisMentatTimeline;->startPage(IJ)V

    .line 112
    :cond_3
    :goto_0
    return-void
.end method

.method public speakingTicksForCurrentPage()J
    .locals 2

    .line 143
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->speakingTicks:J

    return-wide v0
.end method

.method public update(J)V
    .locals 7
    .param p1, "nowTick"    # J

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/GenesisMentatTimeline;->updateEyes(J)V

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "guard":I
    :goto_0
    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ge v0, v2, :cond_7

    .line 66
    iget v2, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->phase:I

    if-nez v2, :cond_1

    .line 67
    iget-wide v4, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->deadlineTick:J

    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    invoke-direct {p0, v3, p1, p2}, Lcom/ahsim/demulation/GenesisMentatTimeline;->startPage(IJ)V

    .line 69
    goto :goto_0

    .line 71
    :cond_1
    iget v2, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->phase:I

    const/4 v4, 0x2

    if-ne v2, v1, :cond_4

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/GenesisMentatTimeline;->updateMouth(J)V

    .line 73
    iget-wide v5, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->deadlineTick:J

    cmp-long v2, p1, v5

    if-gez v2, :cond_2

    goto :goto_1

    .line 74
    :cond_2
    iput v3, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->mouthFrame:I

    .line 75
    iput-wide p1, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->nextMouthTick:J

    .line 76
    iget v2, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pageIndex:I

    iget-object v5, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pages:[Ljava/lang/String;

    array-length v5, v5

    sub-int/2addr v5, v1

    if-lt v2, v5, :cond_3

    .line 77
    const/4 v2, 0x3

    iput v2, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->phase:I

    .line 78
    goto :goto_1

    .line 80
    :cond_3
    iput v4, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->phase:I

    .line 82
    iget-wide v1, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->deadlineTick:J

    iget-wide v3, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->speakingTicks:J

    const-wide/16 v5, 0x3

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x2

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->deadlineTick:J

    .line 83
    goto :goto_0

    .line 85
    :cond_4
    iget v2, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->phase:I

    if-ne v2, v4, :cond_6

    .line 86
    iput v3, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->mouthFrame:I

    .line 87
    iget-wide v4, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->deadlineTick:J

    cmp-long v2, p1, v4

    if-gez v2, :cond_5

    goto :goto_1

    .line 88
    :cond_5
    iget v2, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->pageIndex:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2, p1, p2}, Lcom/ahsim/demulation/GenesisMentatTimeline;->startPage(IJ)V

    .line 89
    goto :goto_0

    .line 91
    :cond_6
    iput v3, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->mouthFrame:I

    .line 92
    nop

    .line 95
    :cond_7
    :goto_1
    iget v2, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->phase:I

    if-eq v2, v1, :cond_8

    iput v3, p0, Lcom/ahsim/demulation/GenesisMentatTimeline;->mouthFrame:I

    .line 96
    :cond_8
    return-void
.end method
