.class final Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;
.super Ljava/lang/Object;
.source "GenesisLibGmeSfxRuntime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;,
        Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;
    }
.end annotation


# static fields
.field private static final DECODE_FRAMES:I = 0x200

.field private static final FRAMES_PER_TICK:I = 0x2df

.field private static final MAX_ACTIVE:I = 0x8

.field private static final MAX_CACHE:I = 0x10

.field private static final OUTPUT_RATE:I = 0xac44

.field private static final SILENT_BLOCKS_AFTER_LAST_WRITE:I = 0x4


# instance fields
.field private final builder:Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder;

.field private final cache:[Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;

.field private masterAttenuation:I

.field private serialCounter:J

.field private final slots:[Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/GenesisGemsSfxData;)V
    .locals 4
    .param p1, "data"    # Lcom/ahsim/demulation/GenesisGemsSfxData;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->slots:[Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;

    .line 54
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->cache:[Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;

    .line 59
    new-instance v0, Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder;

    invoke-direct {v0, p1}, Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder;-><init>(Lcom/ahsim/demulation/GenesisGemsSfxData;)V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->builder:Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder;

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->slots:[Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->slots:[Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;

    new-instance v2, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;-><init>(Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime-IA;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "i":I
    :cond_0
    const/16 v0, 0x15

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->warm(II)V

    .line 67
    const/16 v0, 0x1b

    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->warm(II)V

    .line 68
    return-void
.end method

.method private decodeAndCache(II)Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;
    .locals 21
    .param p1, "sequence"    # I
    .param p2, "attenuation"    # I

    .line 113
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->builder:Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder;

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual {v0, v3, v4}, Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder;->build(II)Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;

    move-result-object v11

    .line 114
    .local v11, "built":Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;
    const/4 v0, 0x0

    if-nez v11, :cond_0

    return-object v0

    .line 116
    :cond_0
    new-instance v2, Lcom/ahsim/demulation/GenesisLibGmeMusic;

    invoke-direct {v2}, Lcom/ahsim/demulation/GenesisLibGmeMusic;-><init>()V

    move-object v12, v2

    .line 117
    .local v12, "decoder":Lcom/ahsim/demulation/GenesisLibGmeMusic;
    iget-object v2, v11, Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;->vgm:[B

    const v5, 0xac44

    invoke-virtual {v12, v2, v5}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->open([BI)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    .line 119
    :cond_1
    :try_start_0
    iget v2, v11, Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;->ticks:I

    mul-int/lit16 v2, v2, 0x2df

    const/4 v5, 0x1

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 120
    .local v8, "maxFrames":I
    iget v2, v11, Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;->lastHardwareWriteFrame:I

    add-int/2addr v2, v5

    .line 121
    const/4 v6, 0x0

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit16 v2, v2, 0x2df

    .line 120
    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v13, v2

    .line 122
    .local v13, "minFrames":I
    mul-int/lit8 v2, v8, 0x2

    const v7, 0x8000

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v2, v2, [S

    .line 123
    .local v2, "pcm":[S
    const/16 v7, 0x400

    new-array v7, v7, [S

    move-object v14, v7

    .line 124
    .local v14, "block":[S
    const/4 v7, 0x0

    .line 125
    .local v7, "decoded":I
    const/4 v9, -0x1

    .line 126
    .local v9, "lastNonZero":I
    const/4 v10, 0x0

    .line 128
    .local v10, "silentBlocks":I
    :goto_0
    if-ge v7, v8, :cond_9

    .line 129
    const/16 v15, 0x200

    move-object/from16 v16, v0

    sub-int v0, v8, v7

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 130
    .local v0, "frames":I
    invoke-virtual {v12, v14, v0}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->renderStereo([SI)Z

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v15, :cond_2

    .line 160
    invoke-virtual {v12}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->close()V

    .line 130
    return-object v16

    .line 131
    :cond_2
    add-int v15, v7, v0

    mul-int/lit8 v15, v15, 0x2

    .line 132
    .local v15, "need":I
    move/from16 v17, v5

    :try_start_1
    array-length v5, v2

    if-le v15, v5, :cond_3

    .line 133
    mul-int/lit8 v5, v8, 0x2

    array-length v6, v2

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 134
    .local v5, "grown":I
    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v6

    move-object v2, v6

    .line 136
    .end local v5    # "grown":I
    :cond_3
    mul-int/lit8 v5, v7, 0x2

    mul-int/lit8 v6, v0, 0x2

    const/4 v3, 0x0

    invoke-static {v14, v3, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    const/4 v5, 0x1

    .line 139
    .local v5, "zero":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v0, :cond_6

    .line 140
    mul-int/lit8 v18, v6, 0x2

    aget-short v18, v14, v18

    if-nez v18, :cond_4

    mul-int/lit8 v18, v6, 0x2

    add-int/lit8 v18, v18, 0x1

    aget-short v18, v14, v18

    if-eqz v18, :cond_5

    .line 141
    :cond_4
    const/4 v5, 0x0

    .line 142
    add-int v9, v7, v6

    .line 139
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 145
    .end local v6    # "i":I
    :cond_6
    add-int/2addr v7, v0

    .line 146
    if-lt v7, v13, :cond_8

    .line 147
    if-eqz v5, :cond_7

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 148
    :cond_7
    const/4 v6, 0x0

    move v10, v6

    .line 149
    :goto_2
    const/4 v6, 0x4

    if-lt v10, v6, :cond_8

    move-object v0, v2

    move v15, v7

    move/from16 v16, v9

    move/from16 v18, v10

    goto :goto_3

    .line 151
    .end local v0    # "frames":I
    .end local v5    # "zero":Z
    .end local v15    # "need":I
    :cond_8
    move v6, v3

    move-object/from16 v0, v16

    move/from16 v5, v17

    move/from16 v3, p1

    goto :goto_0

    .line 128
    :cond_9
    move/from16 v17, v5

    move-object v0, v2

    move v15, v7

    move/from16 v16, v9

    move/from16 v18, v10

    .line 153
    .end local v2    # "pcm":[S
    .end local v7    # "decoded":I
    .end local v9    # "lastNonZero":I
    .end local v10    # "silentBlocks":I
    .local v0, "pcm":[S
    .local v15, "decoded":I
    .local v16, "lastNonZero":I
    .local v18, "silentBlocks":I
    :goto_3
    if-ltz v16, :cond_a

    add-int/lit8 v2, v16, 0x1

    goto :goto_4

    :cond_a
    move/from16 v2, v17

    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_4
    move v7, v2

    .line 154
    .local v7, "frames":I
    mul-int/lit8 v2, v7, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v6

    .line 155
    .local v6, "exact":[S
    new-instance v2, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;

    iget v5, v11, Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;->priority:I

    iget-wide v9, v1, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->serialCounter:J

    const-wide/16 v19, 0x1

    add-long v9, v9, v19

    iput-wide v9, v1, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->serialCounter:J

    move/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;-><init>(III[SIIJ)V

    .line 157
    .local v2, "clip":Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;
    invoke-direct {v1, v2}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->putCache(Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    nop

    .line 160
    invoke-virtual {v12}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->close()V

    .line 158
    return-object v2

    .line 160
    .end local v0    # "pcm":[S
    .end local v2    # "clip":Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;
    .end local v6    # "exact":[S
    .end local v7    # "frames":I
    .end local v8    # "maxFrames":I
    .end local v13    # "minFrames":I
    .end local v14    # "block":[S
    .end local v15    # "decoded":I
    .end local v16    # "lastNonZero":I
    .end local v18    # "silentBlocks":I
    :catchall_0
    move-exception v0

    invoke-virtual {v12}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->close()V

    .line 161
    throw v0
.end method

.method private findClip(II)Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;
    .locals 6
    .param p1, "sequence"    # I
    .param p2, "attenuation"    # I

    .line 103
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->cache:[Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 104
    .local v3, "clip":Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;->sequence:I

    if-ne v4, p1, :cond_0

    iget v4, v3, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;->attenuation:I

    if-ne v4, p2, :cond_0

    .line 105
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->serialCounter:J

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->serialCounter:J

    iput-wide v0, v3, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;->serial:J

    .line 106
    return-object v3

    .line 103
    .end local v3    # "clip":Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private putCache(Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;)V
    .locals 6
    .param p1, "clip"    # Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;

    .line 165
    const/4 v0, -0x1

    .line 166
    .local v0, "target":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->cache:[Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 167
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->cache:[Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_1

    .line 166
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    .end local v1    # "i":I
    :cond_1
    :goto_1
    if-gez v0, :cond_3

    .line 170
    const-wide v1, 0x7fffffffffffffffL

    .line 171
    .local v1, "oldest":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->cache:[Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 172
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->cache:[Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;

    aget-object v4, v4, v3

    iget-wide v4, v4, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;->serial:J

    cmp-long v4, v4, v1

    if-gez v4, :cond_2

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->cache:[Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;

    aget-object v4, v4, v3

    iget-wide v1, v4, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;->serial:J

    move v0, v3

    .line 171
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 175
    .end local v1    # "oldest":J
    .end local v3    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->cache:[Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;

    aput-object p1, v1, v0

    .line 176
    return-void
.end method

.method private warm(II)V
    .locals 1
    .param p1, "sequence"    # I
    .param p2, "attenuation"    # I

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->findClip(II)Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->decodeAndCache(II)Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method isActive()Z
    .locals 6

    .line 190
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->slots:[Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .local v4, "slot":Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;
    invoke-virtual {v4}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->active()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    return v0

    .end local v4    # "slot":Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    :cond_1
    return v2
.end method

.method masterAttenuationForDiagnostics()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->masterAttenuation:I

    return v0
.end method

.method play(I)Z
    .locals 12
    .param p1, "sequence"    # I

    .line 71
    iget v0, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->masterAttenuation:I

    .line 72
    .local v0, "attenuation":I
    invoke-direct {p0, p1, v0}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->findClip(II)Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;

    move-result-object v1

    .line 73
    .local v1, "clip":Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;
    if-nez v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->decodeAndCache(II)Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;

    move-result-object v1

    .line 74
    :cond_0
    const/4 v2, 0x0

    if-eqz v1, :cond_b

    iget v3, v1, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;->frames:I

    if-gtz v3, :cond_1

    goto/16 :goto_4

    .line 77
    :cond_1
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->slots:[Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 78
    .local v6, "slot":Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;
    invoke-virtual {v6}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->active()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v6, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->clip:Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;

    iget v7, v7, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;->sequence:I

    if-ne v7, p1, :cond_2

    invoke-virtual {v6}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->stop()V

    .line 77
    .end local v6    # "slot":Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 80
    :cond_3
    const/4 v3, 0x0

    .line 81
    .local v3, "target":Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->slots:[Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .local v7, "slot":Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;
    invoke-virtual {v7}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->active()Z

    move-result v8

    if-nez v8, :cond_4

    move-object v3, v7

    goto :goto_2

    .end local v7    # "slot":Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 82
    :cond_5
    :goto_2
    if-nez v3, :cond_9

    .line 83
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->slots:[Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;

    array-length v5, v4

    move v6, v2

    :goto_3
    if-ge v6, v5, :cond_8

    aget-object v7, v4, v6

    .line 84
    .restart local v7    # "slot":Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;
    if-eqz v3, :cond_6

    iget-object v8, v7, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->clip:Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;

    iget v8, v8, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;->priority:I

    iget-object v9, v3, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->clip:Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;

    iget v9, v9, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;->priority:I

    if-lt v8, v9, :cond_6

    iget-object v8, v7, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->clip:Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;

    iget v8, v8, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;->priority:I

    iget-object v9, v3, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->clip:Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;

    iget v9, v9, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;->priority:I

    if-ne v8, v9, :cond_7

    iget-wide v8, v7, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->serial:J

    iget-wide v10, v3, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->serial:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_7

    .line 85
    :cond_6
    move-object v3, v7

    .line 83
    .end local v7    # "slot":Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 87
    :cond_8
    if-eqz v3, :cond_9

    iget-object v4, v3, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->clip:Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;

    iget v4, v4, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;->priority:I

    iget v5, v1, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;->priority:I

    if-le v4, v5, :cond_9

    return v2

    .line 89
    :cond_9
    if-nez v3, :cond_a

    return v2

    .line 90
    :cond_a
    iput-object v1, v3, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->clip:Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;

    .line 91
    iput v2, v3, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->position:I

    .line 92
    iget v2, v1, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;->logicalFrames:I

    iput v2, v3, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->logicalRemaining:I

    .line 93
    iget-wide v4, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->serialCounter:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->serialCounter:J

    iput-wide v4, v3, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->serial:J

    .line 94
    iget-wide v4, v3, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->serial:J

    iput-wide v4, v1, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;->serial:J

    .line 95
    const/4 v2, 0x1

    return v2

    .line 74
    .end local v3    # "target":Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;
    :cond_b
    :goto_4
    return v2
.end method

.method release()V
    .locals 2

    .line 187
    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->stopAll()V

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->cache:[Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method renderStereo([SII)Z
    .locals 22
    .param p1, "out"    # [S
    .param p2, "frames"    # I
    .param p3, "volumePercent"    # I

    .line 195
    move-object/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    if-ltz v1, :cond_8

    array-length v3, v0

    mul-int/lit8 v4, v1, 0x2

    if-ge v3, v4, :cond_0

    move-object/from16 v7, p0

    move/from16 v5, p3

    move/from16 v16, v2

    goto/16 :goto_4

    .line 196
    :cond_0
    mul-int/lit8 v3, v1, 0x2

    invoke-static {v0, v2, v3, v2}, Ljava/util/Arrays;->fill([SIIS)V

    .line 197
    if-lez v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->isActive()Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v7, p0

    move/from16 v5, p3

    const/16 v18, 0x1

    goto/16 :goto_3

    .line 198
    :cond_1
    const/16 v4, 0x64

    move/from16 v5, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 200
    .local v6, "vol":I
    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->slots:[Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;

    array-length v9, v8

    move v10, v2

    :goto_0
    if-ge v10, v9, :cond_6

    aget-object v11, v8, v10

    .line 201
    .local v11, "slot":Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;
    invoke-virtual {v11}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->active()Z

    move-result v12

    if-nez v12, :cond_2

    move/from16 v16, v2

    const/16 v18, 0x1

    goto/16 :goto_2

    .line 202
    :cond_2
    iget-object v12, v11, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->clip:Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;

    .line 203
    .local v12, "clip":Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;
    iget v13, v12, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;->frames:I

    iget v14, v11, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->position:I

    sub-int/2addr v13, v14

    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 204
    .local v13, "audibleLeft":I
    invoke-static {v1, v13}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 205
    .local v14, "count":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    if-ge v15, v14, :cond_4

    .line 206
    move/from16 v16, v2

    iget v2, v11, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->position:I

    add-int/2addr v2, v15

    mul-int/lit8 v2, v2, 0x2

    .line 207
    .local v2, "src":I
    mul-int/lit8 v17, v15, 0x2

    .line 208
    .local v17, "dst":I
    const/16 v18, 0x1

    iget-object v3, v12, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;->stereo:[S

    aget-short v3, v3, v2

    .line 209
    .local v3, "left":I
    iget-object v4, v12, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;->stereo:[S

    add-int/lit8 v20, v2, 0x1

    aget-short v4, v4, v20

    .line 210
    .local v4, "right":I
    const/16 v0, 0x64

    if-eq v6, v0, :cond_3

    mul-int v19, v3, v6

    div-int/lit8 v3, v19, 0x64

    mul-int v19, v4, v6

    div-int/lit8 v4, v19, 0x64

    .line 211
    :cond_3
    aget-short v19, p1, v17

    add-int v3, v3, v19

    .line 212
    add-int/lit8 v19, v17, 0x1

    aget-short v19, p1, v19

    add-int v4, v4, v19

    .line 213
    const/16 v0, 0x7fff

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v0, -0x8000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-short v1, v1

    aput-short v1, p1, v17

    .line 214
    add-int/lit8 v1, v17, 0x1

    move/from16 v21, v1

    const/16 v1, 0x7fff

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, p1, v21

    .line 205
    .end local v2    # "src":I
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v17    # "dst":I
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v16

    const/16 v4, 0x64

    goto :goto_1

    :cond_4
    move/from16 v16, v2

    const/16 v18, 0x1

    .line 216
    .end local v15    # "i":I
    iget v0, v11, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->position:I

    add-int/2addr v0, v14

    iput v0, v11, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->position:I

    .line 217
    iget v0, v11, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->logicalRemaining:I

    sub-int v0, v0, p2

    iput v0, v11, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->logicalRemaining:I

    .line 218
    iget v0, v11, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->logicalRemaining:I

    if-gtz v0, :cond_5

    invoke-virtual {v11}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->stop()V

    .line 200
    .end local v11    # "slot":Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;
    .end local v12    # "clip":Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;
    .end local v13    # "audibleLeft":I
    .end local v14    # "count":I
    :cond_5
    :goto_2
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v16

    const/16 v4, 0x64

    goto/16 :goto_0

    .line 220
    :cond_6
    const/16 v18, 0x1

    return v18

    .line 197
    .end local v6    # "vol":I
    :cond_7
    move-object/from16 v7, p0

    move/from16 v5, p3

    const/16 v18, 0x1

    :goto_3
    return v18

    .line 195
    :cond_8
    move-object/from16 v7, p0

    move/from16 v5, p3

    move/from16 v16, v2

    :goto_4
    return v16
.end method

.method setMasterAttenuation(I)V
    .locals 2
    .param p1, "value"    # I

    .line 178
    const/16 v0, 0x7f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->masterAttenuation:I

    return-void
.end method

.method stop(I)V
    .locals 5
    .param p1, "sequence"    # I

    .line 182
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->slots:[Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 183
    .local v3, "slot":Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;
    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->active()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->clip:Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;

    iget v4, v4, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;->sequence:I

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->stop()V

    .line 182
    .end local v3    # "slot":Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    :cond_1
    return-void
.end method

.method stopAll()V
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->slots:[Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .local v3, "slot":Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;
    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->stop()V

    .end local v3    # "slot":Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
