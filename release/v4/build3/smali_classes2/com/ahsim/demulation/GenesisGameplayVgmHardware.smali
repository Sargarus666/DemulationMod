.class final Lcom/ahsim/demulation/GenesisGameplayVgmHardware;
.super Lcom/ahsim/demulation/GenesisGemsHardware;
.source "GenesisGameplayVgmHardware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;,
        Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;,
        Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;
    }
.end annotation


# static fields
.field private static final CARRIER:[I

.field private static final FM_FNUM:[I

.field private static final FM_IDS:[I

.field private static final PSG_WAVE:[I


# instance fields
.field private final bends:[I

.field private final capturedDacEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final commands:Ljava/io/ByteArrayOutputStream;

.field private dacBusy:Z

.field private dacBusyUntilFrame:J

.field private final data:Lcom/ahsim/demulation/GenesisGemsSfxData;

.field private final fm:[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;

.field private frames:J

.field private lastHardwareWriteFrame:J

.field private markedLoopCommandOffset:I

.field private markedLoopFrame:J

.field private masterAttenuation:I

.field private final psg:[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->FM_IDS:[I

    .line 12
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->CARRIER:[I

    .line 13
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->FM_FNUM:[I

    .line 14
    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->PSG_WAVE:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x4
        0x5
        0x6
        0x2
    .end array-data

    :array_1
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

    :array_2
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

    :array_3
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
.end method

.method constructor <init>(Lcom/ahsim/demulation/GenesisGemsSfxData;)V
    .locals 5
    .param p1, "data"    # Lcom/ahsim/demulation/GenesisGemsSfxData;

    .line 65
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisGemsHardware;-><init>()V

    .line 52
    const/4 v0, 0x6

    new-array v1, v0, [Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->fm:[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;

    .line 53
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;

    new-instance v2, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;-><init>(I)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;-><init>(I)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;-><init>(I)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;-><init>(I)V

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->psg:[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;

    .line 54
    const/16 v1, 0x10

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->bends:[I

    .line 55
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/high16 v2, 0x100000

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->commands:Ljava/io/ByteArrayOutputStream;

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->capturedDacEvents:Ljava/util/ArrayList;

    .line 62
    const/4 v1, -0x1

    iput v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->markedLoopCommandOffset:I

    .line 63
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->markedLoopFrame:J

    .line 66
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    .line 67
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->fm:[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;

    new-instance v3, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;

    sget-object v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->FM_IDS:[I

    aget v4, v4, v1

    invoke-direct {v3, v4}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;-><init>(I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->reset()V

    .line 69
    return-void
.end method

.method private allocFm(IIZ)Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    .locals 12
    .param p1, "track"    # I
    .param p2, "prio"    # I
    .param p3, "special"    # Z

    .line 111
    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 112
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->findFmId(I)Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;

    move-result-object v1

    .local v1, "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->locked:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget-boolean v2, v1, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->free:Z

    if-nez v2, :cond_1

    iget v2, v1, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->priority:I

    if-le v2, p2, :cond_1

    return-object v0

    .line 114
    :cond_1
    return-object v1

    .line 112
    :cond_2
    :goto_0
    return-object v0

    .line 116
    .end local v1    # "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    :cond_3
    const/4 v1, 0x0

    .local v1, "same":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    const/4 v2, 0x0

    .local v2, "freest":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    const/4 v3, 0x0

    .line 117
    .local v3, "lowest":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    const/16 v4, 0x100

    .local v4, "freeScore":I
    const/16 v5, 0x100

    .line 118
    .local v5, "lowPrio":I
    iget-object v6, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->fm:[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_8

    aget-object v9, v6, v8

    .line 119
    .local v9, "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    iget-boolean v10, v9, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->locked:Z

    if-nez v10, :cond_7

    iget v10, v9, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->id:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_4

    iget-boolean v10, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->dacBusy:Z

    if-eqz v10, :cond_4

    goto :goto_2

    .line 120
    :cond_4
    iget-boolean v10, v9, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->free:Z

    if-eqz v10, :cond_6

    .line 121
    iget v10, v9, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->track:I

    if-ne v10, p1, :cond_5

    move-object v1, v9

    goto :goto_3

    .line 122
    :cond_5
    iget v10, v9, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->releaseTimer:I

    if-ge v10, v4, :cond_7

    iget v4, v9, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->releaseTimer:I

    move-object v2, v9

    goto :goto_2

    .line 123
    :cond_6
    iget v10, v9, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->priority:I

    if-ge v10, v5, :cond_7

    iget v5, v9, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->priority:I

    move-object v3, v9

    .line 118
    .end local v9    # "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    :cond_7
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 125
    :cond_8
    :goto_3
    if-eqz v1, :cond_9

    return-object v1

    .line 126
    :cond_9
    if-eqz v2, :cond_a

    return-object v2

    .line 127
    :cond_a
    if-eqz v3, :cond_b

    iget v6, v3, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->priority:I

    if-gt v6, p2, :cond_b

    return-object v3

    .line 128
    :cond_b
    return-object v0
.end method

.method private allocPsg(IIZ)Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;
    .locals 10
    .param p1, "track"    # I
    .param p2, "prio"    # I
    .param p3, "noise"    # Z

    .line 184
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->psg:[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;

    aget-object v1, v2, v1

    .local v1, "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;
    iget-boolean v2, v1, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->free:Z

    if-nez v2, :cond_0

    iget v2, v1, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->priority:I

    if-le v2, p2, :cond_0

    return-object v0

    :cond_0
    return-object v1

    .line 185
    .end local v1    # "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;
    :cond_1
    const/4 v2, 0x0

    .local v2, "same":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;
    const/4 v3, 0x0

    .local v3, "freest":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;
    const/4 v4, 0x0

    .local v4, "lowest":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;
    const/16 v5, 0x100

    .local v5, "fs":I
    const/16 v6, 0x100

    .line 186
    .local v6, "lp":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_6

    iget-object v8, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->psg:[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;

    aget-object v8, v8, v7

    .local v8, "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;
    iget-boolean v9, v8, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->locked:Z

    if-eqz v9, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    iget-boolean v9, v8, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->free:Z

    if-eqz v9, :cond_5

    iget v9, v8, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->track:I

    if-ne v9, p1, :cond_4

    move-object v2, v8

    goto :goto_2

    :cond_4
    iget v9, v8, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->releaseTimer:I

    if-ge v9, v5, :cond_2

    iget v5, v8, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->releaseTimer:I

    move-object v3, v8

    goto :goto_1

    :cond_5
    iget v9, v8, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->priority:I

    if-ge v9, v6, :cond_2

    iget v6, v8, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->priority:I

    move-object v4, v8

    .end local v8    # "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 187
    .end local v7    # "i":I
    :cond_6
    :goto_2
    if-eqz v2, :cond_7

    return-object v2

    :cond_7
    if-eqz v3, :cond_8

    return-object v3

    :cond_8
    if-eqz v4, :cond_9

    iget v1, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->priority:I

    if-gt v1, p2, :cond_9

    return-object v4

    :cond_9
    return-object v0
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "v"    # I
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .line 326
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

.method private findFmId(I)Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    .locals 5
    .param p1, "id"    # I

    .line 314
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->fm:[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .local v3, "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    iget v4, v3, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->id:I

    if-ne v4, p1, :cond_0

    return-object v3

    .end local v3    # "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private finishVgm(IJ)[B
    .locals 20
    .param p1, "loopCommandOffset"    # I
    .param p2, "loopFrame"    # J

    .line 290
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->commands:Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 291
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->commands:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 292
    .local v1, "cmd":[B
    array-length v2, v1

    const/16 v3, 0x40

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 293
    .local v2, "out":[B
    const/16 v4, 0x56

    const/4 v5, 0x0

    aput-byte v4, v2, v5

    const/4 v4, 0x1

    const/16 v6, 0x67

    aput-byte v6, v2, v4

    const/4 v4, 0x2

    const/16 v6, 0x6d

    aput-byte v6, v2, v4

    const/4 v4, 0x3

    const/16 v6, 0x20

    aput-byte v6, v2, v4

    .line 294
    const/16 v4, 0x8

    const/16 v7, 0x150

    invoke-static {v2, v4, v7}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->put32([BII)V

    .line 295
    const v4, 0x369e99

    const/16 v7, 0xc

    invoke-static {v2, v7, v4}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->put32([BII)V

    .line 296
    iget-wide v8, v0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->frames:J

    const-wide/16 v10, 0x2df

    mul-long/2addr v8, v10

    const-wide v12, 0xffffffffL

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v4, v8

    .line 297
    .local v4, "totalSamples":I
    const/16 v8, 0x18

    invoke-static {v2, v8, v4}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->put32([BII)V

    .line 298
    if-ltz p1, :cond_0

    .line 299
    add-int/lit8 v8, p1, 0x40

    const/16 v9, 0x1c

    sub-int/2addr v8, v9

    invoke-static {v2, v9, v8}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->put32([BII)V

    .line 300
    iget-wide v8, v0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->frames:J

    const-wide/16 v14, 0x0

    move-wide/from16 v16, v10

    move-wide/from16 v10, p2

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    sub-long v8, v8, v18

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    mul-long v8, v8, v16

    .line 301
    .local v8, "loopSamples":J
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v2, v6, v12}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->put32([BII)V

    goto :goto_0

    .line 298
    .end local v8    # "loopSamples":J
    :cond_0
    move-wide/from16 v10, p2

    .line 303
    :goto_0
    const/16 v6, 0x24

    const/16 v8, 0x3c

    invoke-static {v2, v6, v8}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->put32([BII)V

    .line 304
    const/16 v6, 0x28

    const/16 v8, 0x9

    aput-byte v8, v2, v6

    const/16 v6, 0x29

    aput-byte v5, v2, v6

    const/16 v6, 0x2a

    const/16 v8, 0x10

    aput-byte v8, v2, v6

    const/16 v6, 0x2b

    aput-byte v5, v2, v6

    .line 305
    const/16 v6, 0x2c

    const v8, 0x750ab6

    invoke-static {v2, v6, v8}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->put32([BII)V

    .line 306
    const/16 v6, 0x34

    invoke-static {v2, v6, v7}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->put32([BII)V

    .line 307
    array-length v6, v2

    const/4 v7, 0x4

    sub-int/2addr v6, v7

    invoke-static {v2, v7, v6}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->put32([BII)V

    .line 308
    array-length v6, v1

    invoke-static {v1, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    return-object v2
.end method

.method private getFreq(ZII)I
    .locals 14
    .param p1, "isPsg"    # Z
    .param p2, "note"    # I
    .param p3, "bend"    # I

    .line 321
    move/from16 v0, p3

    int-to-short v1, v0

    .local v1, "b":I
    shr-int/lit8 v2, v1, 0x8

    .local v2, "whole":I
    and-int/lit16 v3, v1, 0xff

    .local v3, "frac":I
    add-int v4, p2, v2

    .line 322
    .local v4, "n":I
    if-gez v4, :cond_0

    const/4 v4, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v5, 0x5f

    if-le v4, v5, :cond_1

    const/16 v4, 0x5f

    const/16 v3, 0xff

    .line 323
    :cond_1
    :goto_0
    if-nez p1, :cond_3

    div-int/lit8 v5, v4, 0xc

    .local v5, "oct":I
    rem-int/lit8 v6, v4, 0xc

    .local v6, "semi":I
    sget-object v7, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->FM_FNUM:[I

    aget v7, v7, v6

    .local v7, "f0":I
    sget-object v8, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->FM_FNUM:[I

    add-int/lit8 v9, v6, 0x1

    aget v8, v8, v9

    .local v8, "f1":I
    sub-int v9, v8, v7

    .local v9, "d":I
    mul-int v10, v9, v3

    shr-int/lit8 v10, v10, 0x8

    .local v10, "interp":I
    and-int/lit16 v11, v10, 0x80

    if-eqz v11, :cond_2

    or-int/lit16 v10, v10, -0x100

    :cond_2
    add-int v11, v7, v10

    .local v11, "f":I
    and-int/lit16 v12, v11, 0x7ff

    and-int/lit8 v13, v5, 0x7

    shl-int/lit8 v13, v13, 0xb

    or-int/2addr v12, v13

    return v12

    .line 324
    .end local v5    # "oct":I
    .end local v6    # "semi":I
    .end local v7    # "f0":I
    .end local v8    # "f1":I
    .end local v9    # "d":I
    .end local v10    # "interp":I
    .end local v11    # "f":I
    :cond_3
    const/16 v5, 0x21

    if-ge v4, v5, :cond_4

    const/16 v4, 0x21

    const/4 v3, 0x0

    :cond_4
    add-int/lit8 v5, v4, -0x21

    const/16 v6, 0x3e

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .local v5, "idx":I
    sget-object v6, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->PSG_WAVE:[I

    aget v6, v6, v5

    .local v6, "w0":I
    sget-object v7, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->PSG_WAVE:[I

    add-int/lit8 v8, v5, 0x1

    aget v7, v7, v8

    .local v7, "w1":I
    sub-int v8, v7, v6

    .local v8, "d":I
    mul-int v9, v8, v3

    shr-int/lit8 v9, v9, 0x8

    .local v9, "interp":I
    and-int/lit16 v10, v9, 0x80

    if-eqz v10, :cond_5

    or-int/lit16 v9, v9, -0x100

    :cond_5
    add-int v10, v6, v9

    const/16 v11, 0x3ff

    const/4 v12, 0x1

    invoke-static {v10, v12, v11}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->clamp(III)I

    move-result v10

    return v10
.end method

.method private noteDac(Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;)V
    .locals 16
    .param p1, "e"    # Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;
    .param p2, "p"    # Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;

    .line 169
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->note:I

    const/16 v3, 0x30

    if-ge v2, v3, :cond_0

    iget v2, v1, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->note:I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    iget v2, v1, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->note:I

    sub-int/2addr v2, v3

    .line 170
    .local v2, "sampleIndex":I
    :goto_0
    iget-object v3, v0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    invoke-virtual {v3, v2}, Lcom/ahsim/demulation/GenesisGemsSfxData;->sample(I)Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;

    move-result-object v3

    .line 171
    .local v3, "sample":Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;
    if-eqz v3, :cond_4

    iget v4, v3, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->firstLength:I

    if-lez v4, :cond_4

    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->looped()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->fourBit()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v5, p2

    move v4, v2

    goto :goto_3

    .line 172
    :cond_1
    const/4 v4, 0x1

    move-object/from16 v5, p2

    invoke-virtual {v5, v4}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v6

    .line 173
    .local v6, "patchRate":I
    iget-object v7, v0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->capturedDacEvents:Ljava/util/ArrayList;

    new-instance v8, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;

    iget-wide v9, v0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->frames:J

    invoke-direct {v8, v9, v10, v2, v6}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;-><init>(JII)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->headerRateCode()I

    move-result v7

    goto :goto_1

    :cond_2
    and-int/lit8 v7, v6, 0xf

    .line 175
    .local v7, "rateCode":I
    :goto_1
    invoke-static {v7}, Lcom/ahsim/demulation/GenesisGemsSfxData;->sampleRateHz(I)D

    move-result-wide v8

    .line 176
    .local v8, "hz":D
    const-wide/16 v10, 0x0

    cmpl-double v10, v8, v10

    if-lez v10, :cond_3

    .line 177
    iget v10, v3, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->firstLength:I

    int-to-double v10, v10

    const-wide/high16 v12, 0x404e000000000000L    # 60.0

    mul-double/2addr v10, v12

    div-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-long v10, v10

    .line 178
    .local v10, "busyFrames":J
    invoke-virtual {v0, v4}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->setDacBusy(Z)V

    .line 179
    iget-wide v12, v0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->frames:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    move v4, v2

    .end local v2    # "sampleIndex":I
    .local v4, "sampleIndex":I
    iget-wide v1, v0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->frames:J

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    add-long/2addr v1, v14

    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->dacBusyUntilFrame:J

    goto :goto_2

    .line 176
    .end local v4    # "sampleIndex":I
    .end local v10    # "busyFrames":J
    .restart local v2    # "sampleIndex":I
    :cond_3
    move v4, v2

    .line 181
    .end local v2    # "sampleIndex":I
    .restart local v4    # "sampleIndex":I
    :goto_2
    return-void

    .line 171
    .end local v4    # "sampleIndex":I
    .end local v6    # "patchRate":I
    .end local v7    # "rateCode":I
    .end local v8    # "hz":D
    .restart local v2    # "sampleIndex":I
    :cond_4
    move-object/from16 v5, p2

    move v4, v2

    .end local v2    # "sampleIndex":I
    .restart local v4    # "sampleIndex":I
    :goto_3
    return-void
.end method

.method private noteFm(ILcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;)V
    .locals 23
    .param p1, "sequence"    # I
    .param p2, "e"    # Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;
    .param p3, "p"    # Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;

    .line 132
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->fmChannel3Special()Z

    move-result v3

    .line 133
    .local v3, "special":Z
    iget v4, v1, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->track:I

    iget v5, v1, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->priority:I

    invoke-direct {v0, v4, v5, v3}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->allocFm(IIZ)Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;

    move-result-object v4

    .local v4, "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    if-nez v4, :cond_0

    return-void

    .line 134
    :cond_0
    iget-boolean v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->free:Z

    const/16 v6, 0x28

    if-nez v5, :cond_1

    iget v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->id:I

    invoke-direct {v0, v6, v5}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->ym0(II)V

    .line 135
    :cond_1
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->free:Z

    iput-boolean v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->releasing:Z

    const/16 v7, 0xfe

    iput v7, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->releaseTimer:I

    iget v7, v1, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->priority:I

    iput v7, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->priority:I

    iget v7, v1, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->note:I

    iput v7, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->note:I

    iget v7, v1, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->track:I

    iput v7, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->track:I

    move/from16 v7, p1

    iput v7, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->sequence:I

    iget v8, v1, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->duration:I

    iput v8, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->duration:I

    iput-boolean v3, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->special:Z

    .line 136
    iget v8, v0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->masterAttenuation:I

    iget v9, v1, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->channelAttenuation:I

    add-int/2addr v8, v9

    const/16 v9, 0x7f

    invoke-static {v8, v5, v9}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->clamp(III)I

    move-result v8

    .line 137
    .local v8, "atten":I
    iget v10, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->id:I

    .local v10, "phys":I
    const/4 v11, 0x3

    const/4 v12, 0x1

    if-le v10, v11, :cond_2

    move v13, v12

    goto :goto_0

    :cond_2
    move v13, v5

    .local v13, "bank":I
    :goto_0
    if-le v10, v11, :cond_3

    add-int/lit8 v14, v10, -0x4

    goto :goto_1

    :cond_3
    move v14, v10

    .line 138
    .local v14, "ch":I
    :goto_1
    const/4 v15, 0x5

    move/from16 v16, v9

    const/4 v9, 0x2

    if-ne v10, v9, :cond_4

    invoke-virtual {v2, v9}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v9

    or-int/2addr v9, v15

    and-int/lit16 v9, v9, 0xff

    const/16 v6, 0x27

    invoke-direct {v0, v6, v9}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->ym0(II)V

    .line 139
    :cond_4
    invoke-virtual {v2, v12}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v6

    and-int/lit8 v6, v6, 0x8

    const/16 v9, 0x22

    if-eqz v6, :cond_5

    invoke-virtual {v2, v12}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v6

    invoke-direct {v0, v9, v6}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->ym0(II)V

    .line 140
    :cond_5
    invoke-virtual {v2, v11}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v6

    and-int/lit8 v6, v6, 0x7

    .local v6, "alg":I
    sget-object v17, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->CARRIER:[I

    aget v17, v17, v6

    .line 141
    .local v17, "carriers":I
    move/from16 v18, v12

    const/16 v12, 0xb0

    invoke-virtual {v2, v11}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v11

    invoke-direct {v0, v13, v14, v12, v11}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->writeFmReg(IIII)V

    .line 142
    const/16 v11, 0xb4

    const/4 v12, 0x4

    invoke-virtual {v2, v12}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v9

    invoke-direct {v0, v13, v14, v11, v9}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->writeFmReg(IIII)V

    .line 143
    const/16 v9, 0x34

    const/16 v11, 0x3c

    const/16 v5, 0x30

    const/16 v12, 0x38

    filled-new-array {v5, v12, v9, v11}, [I

    move-result-object v5

    .line 144
    .local v5, "regBase":[I
    const/16 v9, 0xb

    const/16 v11, 0x17

    const/16 v12, 0x11

    filled-new-array {v15, v12, v9, v11}, [I

    move-result-object v9

    .line 145
    .local v9, "rawBase":[I
    const/4 v11, 0x0

    .local v11, "op":I
    :goto_2
    const/4 v12, 0x4

    if-ge v11, v12, :cond_7

    .line 146
    aget v12, v5, v11

    .local v12, "r":I
    aget v15, v9, v11

    .line 147
    .local v15, "b":I
    move/from16 v20, v3

    .end local v3    # "special":Z
    .local v20, "special":Z
    invoke-virtual {v2, v15}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v3

    invoke-direct {v0, v13, v14, v12, v3}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->writeFmReg(IIII)V

    .line 148
    add-int/lit8 v3, v15, 0x1

    invoke-virtual {v2, v3}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v3

    and-int/lit8 v3, v3, 0x7f

    .line 149
    .local v3, "tl":I
    shl-int v21, v18, v11

    and-int v21, v17, v21

    if-eqz v21, :cond_6

    rsub-int/lit8 v21, v3, 0x7f

    .local v21, "loud":I
    shl-int/lit8 v22, v21, 0x1

    mul-int v22, v22, v8

    shr-int/lit8 v22, v22, 0x8

    .local v22, "na":I
    sub-int v21, v21, v22

    rsub-int/lit8 v3, v21, 0x7f

    .line 150
    .end local v21    # "loud":I
    .end local v22    # "na":I
    :cond_6
    move-object/from16 v21, v4

    .end local v4    # "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    .local v21, "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    add-int/lit8 v4, v12, 0x10

    invoke-direct {v0, v13, v14, v4, v3}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->writeFmReg(IIII)V

    .line 151
    add-int/lit8 v4, v12, 0x20

    move/from16 v22, v3

    .end local v3    # "tl":I
    .local v22, "tl":I
    add-int/lit8 v3, v15, 0x2

    invoke-virtual {v2, v3}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v3

    invoke-direct {v0, v13, v14, v4, v3}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->writeFmReg(IIII)V

    .line 152
    add-int/lit8 v3, v12, 0x30

    add-int/lit8 v4, v15, 0x3

    invoke-virtual {v2, v4}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v4

    invoke-direct {v0, v13, v14, v3, v4}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->writeFmReg(IIII)V

    .line 153
    add-int/lit8 v3, v12, 0x40

    add-int/lit8 v4, v15, 0x4

    invoke-virtual {v2, v4}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v4

    invoke-direct {v0, v13, v14, v3, v4}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->writeFmReg(IIII)V

    .line 154
    add-int/lit8 v3, v12, 0x50

    add-int/lit8 v4, v15, 0x5

    invoke-virtual {v2, v4}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v4

    invoke-direct {v0, v13, v14, v3, v4}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->writeFmReg(IIII)V

    .line 155
    add-int/lit8 v3, v12, 0x60

    const/4 v4, 0x0

    invoke-direct {v0, v13, v14, v3, v4}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->writeFmReg(IIII)V

    .line 145
    .end local v12    # "r":I
    .end local v15    # "b":I
    .end local v22    # "tl":I
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v20

    move-object/from16 v4, v21

    goto :goto_2

    .end local v20    # "special":Z
    .end local v21    # "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    .local v3, "special":Z
    .restart local v4    # "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    :cond_7
    move/from16 v20, v3

    move-object/from16 v21, v4

    .line 157
    .end local v3    # "special":Z
    .end local v4    # "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    .end local v11    # "op":I
    .restart local v20    # "special":Z
    .restart local v21    # "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    if-nez v20, :cond_8

    .line 158
    iget v3, v1, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->note:I

    iget-object v4, v0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->bends:[I

    iget v11, v1, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->track:I

    aget v4, v4, v11

    const/4 v11, 0x0

    invoke-direct {v0, v11, v3, v4}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->getFreq(ZII)I

    move-result v3

    .local v3, "f":I
    ushr-int/lit8 v4, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    const/16 v11, 0xa4

    invoke-direct {v0, v13, v14, v11, v4}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->writeFmReg(IIII)V

    and-int/lit16 v4, v3, 0xff

    const/16 v11, 0xa0

    invoke-direct {v0, v13, v14, v11, v4}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->writeFmReg(IIII)V

    .line 159
    .end local v3    # "f":I
    goto :goto_3

    .line 160
    :cond_8
    const/16 v3, 0x1d

    invoke-virtual {v2, v3}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v3

    const/16 v4, 0xa6

    invoke-direct {v0, v4, v3}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->ym0(II)V

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v3

    const/16 v4, 0xa2

    invoke-direct {v0, v4, v3}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->ym0(II)V

    .line 161
    const/16 v3, 0x1f

    invoke-virtual {v2, v3}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v3

    const/16 v4, 0xac

    invoke-direct {v0, v4, v3}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->ym0(II)V

    const/16 v3, 0xa8

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v4

    invoke-direct {v0, v3, v4}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->ym0(II)V

    .line 162
    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v3

    const/16 v4, 0xad

    invoke-direct {v0, v4, v3}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->ym0(II)V

    const/16 v3, 0xa9

    const/16 v4, 0x22

    invoke-virtual {v2, v4}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v4

    invoke-direct {v0, v3, v4}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->ym0(II)V

    .line 163
    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v3

    const/16 v4, 0xae

    invoke-direct {v0, v4, v3}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->ym0(II)V

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v3

    const/16 v4, 0xaa

    invoke-direct {v0, v4, v3}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->ym0(II)V

    .line 165
    :goto_3
    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v3

    and-int/lit8 v3, v3, 0xf

    const/16 v19, 0x4

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v3, v10

    const/16 v4, 0x28

    invoke-direct {v0, v4, v3}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->ym0(II)V

    .line 166
    return-void
.end method

.method private noteOnImpl(ILcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;)V
    .locals 3
    .param p1, "sequence"    # I
    .param p2, "e"    # Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;

    .line 103
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    iget v1, p2, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->patchIndex:I

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/GenesisGemsSfxData;->patch(I)Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;

    move-result-object v0

    .line 104
    .local v0, "p":Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;
    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    iget v1, v0, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->type:I

    if-nez v1, :cond_1

    invoke-direct {p0, p1, p2, v0}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->noteFm(ILcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;)V

    goto :goto_0

    .line 106
    :cond_1
    iget v1, v0, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisGemsSfxData;->isGameplayBank()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p2, v0}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->noteDac(Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;)V

    goto :goto_0

    .line 107
    :cond_2
    iget v1, v0, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget v1, v0, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    :cond_3
    invoke-direct {p0, p1, p2, v0}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->notePsg(ILcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;)V

    .line 108
    :cond_4
    :goto_0
    return-void
.end method

.method private notePsg(ILcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;)V
    .locals 8
    .param p1, "sequence"    # I
    .param p2, "e"    # Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;
    .param p3, "p"    # Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;

    .line 190
    iget v0, p3, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .local v0, "noise":Z
    :goto_0
    iget v4, p2, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->track:I

    iget v5, p2, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->priority:I

    invoke-direct {p0, v4, v5, v0}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->allocPsg(IIZ)Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;

    move-result-object v4

    .local v4, "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;
    if-nez v4, :cond_1

    return-void

    .line 191
    :cond_1
    iget-boolean v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->free:Z

    const/4 v6, 0x2

    if-nez v5, :cond_2

    iget v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->com:I

    or-int/2addr v5, v6

    iput v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->com:I

    .line 192
    :cond_2
    iput-boolean v1, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->free:Z

    iput-boolean v1, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->releasing:Z

    const/16 v1, 0xfe

    iput v1, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->releaseTimer:I

    iget v1, p2, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->priority:I

    iput v1, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->priority:I

    iget v1, p2, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->note:I

    iput v1, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->note:I

    iget v1, p2, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->track:I

    iput v1, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->track:I

    iput p1, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->sequence:I

    iget v1, p2, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->duration:I

    iput v1, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->duration:I

    .line 193
    iget v1, p2, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->note:I

    iget-object v5, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->bends:[I

    iget v7, p2, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->track:I

    aget v5, v5, v7

    invoke-direct {p0, v2, v1, v5}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->getFreq(ZII)I

    move-result v1

    .line 194
    .local v1, "w":I
    iput v1, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->tonePeriod:I

    .line 195
    and-int/lit8 v5, v1, 0xf

    iput v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->dtl:I

    ushr-int/lit8 v5, v1, 0x4

    and-int/lit8 v5, v5, 0x3f

    iput v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->dth:I

    .line 196
    if-eqz v0, :cond_3

    invoke-virtual {p3, v2}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v5

    iput v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->dtl:I

    .line 197
    :cond_3
    invoke-virtual {p3, v6}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v5

    iput v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->atk:I

    invoke-virtual {p3, v3}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v3

    const/4 v5, 0x4

    shl-int/2addr v3, v5

    and-int/lit16 v3, v3, 0xff

    iput v3, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->slv:I

    invoke-virtual {p3, v5}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v3

    shl-int/2addr v3, v5

    and-int/lit16 v3, v3, 0xff

    iput v3, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->alv:I

    const/4 v3, 0x5

    invoke-virtual {p3, v3}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v3

    iput v3, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->dec:I

    const/4 v3, 0x6

    invoke-virtual {p3, v3}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v3

    iput v3, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->rrt:I

    iget v3, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->com:I

    or-int/2addr v2, v3

    iput v2, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->com:I

    .line 198
    return-void
.end method

.method private psgWrite(I)V
    .locals 2
    .param p1, "val"    # I

    .line 318
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->frames:J

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->lastHardwareWriteFrame:J

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->commands:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->commands:Ljava/io/ByteArrayOutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method private static put32([BII)V
    .locals 2
    .param p0, "b"    # [B
    .param p1, "o"    # I
    .param p2, "v"    # I

    .line 327
    int-to-byte v0, p2

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    ushr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method

.method private releaseFm(Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;)V
    .locals 2
    .param p1, "v"    # Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;

    .line 312
    const/16 v0, 0x28

    iget v1, p1, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->id:I

    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->ym0(II)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->free:Z

    iput-boolean v0, p1, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->releasing:Z

    const/16 v0, 0xfe

    iput v0, p1, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->releaseTimer:I

    return-void
.end method

.method private releasePsg(Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;)V
    .locals 1
    .param p1, "v"    # Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;

    .line 313
    iget v0, p1, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->com:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->com:I

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->free:Z

    iput-boolean v0, p1, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->releasing:Z

    const/16 v0, 0xfe

    iput v0, p1, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->releaseTimer:I

    return-void
.end method

.method private writeFmReg(IIII)V
    .locals 1
    .param p1, "bank"    # I
    .param p2, "ch"    # I
    .param p3, "reg"    # I
    .param p4, "val"    # I

    .line 315
    or-int v0, p3, p2

    if-nez p1, :cond_0

    invoke-direct {p0, v0, p4}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->ym0(II)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, p4}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->ym1(II)V

    :goto_0
    return-void
.end method

.method private ym0(II)V
    .locals 2
    .param p1, "reg"    # I
    .param p2, "val"    # I

    .line 316
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->frames:J

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->lastHardwareWriteFrame:J

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->commands:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->commands:Ljava/io/ByteArrayOutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->commands:Ljava/io/ByteArrayOutputStream;

    and-int/lit16 v1, p2, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method private ym1(II)V
    .locals 2
    .param p1, "reg"    # I
    .param p2, "val"    # I

    .line 317
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->frames:J

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->lastHardwareWriteFrame:J

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->commands:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->commands:Ljava/io/ByteArrayOutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->commands:Ljava/io/ByteArrayOutputStream;

    and-int/lit16 v1, p2, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method activeFmVoicesForDiagnostics()I
    .locals 1

    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method activePsgVoicesForDiagnostics()I
    .locals 1

    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method capturedDacEventsForDiagnostics()[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->capturedDacEvents:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->capturedDacEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;

    return-object v0
.end method

.method discardNonMusicVoices()V
    .locals 0

    .line 98
    return-void
.end method

.method driverTick60Hz()V
    .locals 11

    .line 232
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->dacBusy:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->frames:J

    iget-wide v4, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->dacBusyUntilFrame:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->setDacBusy(Z)V

    .line 233
    :cond_0
    const/16 v0, 0x80

    .line 234
    .local v0, "mask":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_c

    .line 235
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->psg:[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;

    aget-object v4, v4, v2

    .local v4, "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;
    iget v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->com:I

    .local v5, "cmd":I
    iput v1, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->com:I

    .line 236
    and-int/lit8 v6, v5, 0x4

    const/16 v7, 0xff

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    iput v7, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->level:I

    iput-boolean v8, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->update:Z

    iput v1, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->mode:I

    .line 237
    :cond_1
    and-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_2

    iget v6, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->mode:I

    if-eqz v6, :cond_2

    iput-boolean v8, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->update:Z

    iput v3, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->mode:I

    .line 238
    :cond_2
    and-int/lit8 v6, v5, 0x1

    const/4 v9, 0x3

    if-eqz v6, :cond_5

    .line 239
    iput v7, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->level:I

    .line 240
    if-ne v2, v9, :cond_3

    iget v6, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->dtl:I

    and-int/2addr v6, v9

    if-ne v6, v9, :cond_3

    .line 241
    const/16 v6, 0x3ff

    iget v10, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->tonePeriod:I

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 245
    .local v6, "w":I
    and-int/lit8 v10, v6, 0xf

    or-int/lit16 v10, v10, 0xc0

    invoke-direct {p0, v10}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->psgWrite(I)V

    .line 246
    ushr-int/lit8 v10, v6, 0x4

    and-int/lit8 v10, v10, 0x3f

    invoke-direct {p0, v10}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->psgWrite(I)V

    .line 248
    .end local v6    # "w":I
    :cond_3
    iget v6, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->dtl:I

    and-int/2addr v6, v7

    or-int/2addr v6, v0

    invoke-direct {p0, v6}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->psgWrite(I)V

    if-eq v2, v9, :cond_4

    iget v6, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->dth:I

    and-int/lit8 v6, v6, 0x3f

    invoke-direct {p0, v6}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->psgWrite(I)V

    :cond_4
    iput-boolean v8, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->update:Z

    iput v8, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->mode:I

    .line 250
    :cond_5
    iget v6, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->mode:I

    const/16 v10, 0x100

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 253
    :pswitch_1
    iput-boolean v8, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->update:Z

    iget v6, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->level:I

    iget v8, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->rrt:I

    add-int/2addr v6, v8

    .local v6, "cv":I
    if-ge v6, v10, :cond_6

    iput v6, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->level:I

    goto :goto_2

    :cond_6
    iput v7, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->level:I

    iput v1, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->mode:I

    goto :goto_2

    .line 252
    .end local v6    # "cv":I
    :pswitch_2
    iput-boolean v8, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->update:Z

    iget v6, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->level:I

    iget v7, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->slv:I

    if-ge v6, v7, :cond_8

    iget v6, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->level:I

    iget v7, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->dec:I

    add-int/2addr v6, v7

    .restart local v6    # "cv":I
    if-ge v6, v10, :cond_7

    iget v7, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->slv:I

    if-ge v6, v7, :cond_7

    :goto_1
    iput v6, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->level:I

    goto :goto_2

    :cond_7
    iget v7, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->slv:I

    iput v7, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->level:I

    iput v9, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->mode:I

    goto :goto_2

    .end local v6    # "cv":I
    :cond_8
    iget v6, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->level:I

    iget v7, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->slv:I

    if-ne v6, v7, :cond_9

    iput v9, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->mode:I

    goto :goto_2

    :cond_9
    iget v6, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->level:I

    iget v7, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->dec:I

    sub-int/2addr v6, v7

    .restart local v6    # "cv":I
    if-ltz v6, :cond_7

    iget v7, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->slv:I

    if-lt v6, v7, :cond_7

    goto :goto_1

    .line 251
    .end local v6    # "cv":I
    :pswitch_3
    iput-boolean v8, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->update:Z

    iget v6, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->level:I

    iget v7, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->atk:I

    sub-int/2addr v6, v7

    .restart local v6    # "cv":I
    if-lez v6, :cond_a

    iget v7, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->alv:I

    if-le v6, v7, :cond_a

    and-int/lit16 v7, v6, 0xff

    iput v7, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->level:I

    goto :goto_2

    :cond_a
    iget v7, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->alv:I

    iput v7, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->level:I

    const/4 v7, 0x2

    iput v7, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->mode:I

    .line 256
    .end local v6    # "cv":I
    :goto_2
    iget-boolean v6, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->update:Z

    if-eqz v6, :cond_b

    iput-boolean v1, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->update:Z

    shl-int/lit8 v6, v2, 0x5

    add-int/lit16 v6, v6, 0x90

    iget v7, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->level:I

    ushr-int/lit8 v3, v7, 0x4

    and-int/lit8 v3, v3, 0xf

    add-int/2addr v6, v3

    invoke-direct {p0, v6}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->psgWrite(I)V

    .line 234
    .end local v4    # "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;
    .end local v5    # "cmd":I
    :cond_b
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x20

    goto/16 :goto_0

    .line 258
    .end local v2    # "i":I
    :cond_c
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method endFrame()V
    .locals 4

    .line 260
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->commands:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x62

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->frames:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->frames:J

    return-void
.end method

.method hasActiveVoices()Z
    .locals 1

    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method lastHardwareWriteFrameForSfxCache()I
    .locals 4

    .line 266
    const-wide/32 v0, 0x7fffffff

    iget-wide v2, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->lastHardwareWriteFrame:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method markDiagnosticLoopPoint()V
    .locals 2

    .line 262
    iget v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->markedLoopCommandOffset:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->commands:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->markedLoopCommandOffset:I

    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->frames:J

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->markedLoopFrame:J

    .line 263
    :cond_0
    return-void
.end method

.method markedLoopFrameForDiagnostics()J
    .locals 2

    .line 264
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->markedLoopFrame:J

    return-wide v0
.end method

.method masterAttenuationForDiagnostics()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->masterAttenuation:I

    return v0
.end method

.method musicSubbeat()V
    .locals 6

    .line 201
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->fm:[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 202
    .local v4, "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    iget-boolean v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->free:Z

    if-eqz v5, :cond_1

    iget-boolean v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->releasing:Z

    if-eqz v5, :cond_1

    iget v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->releaseTimer:I

    if-lez v5, :cond_0

    iget v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->releaseTimer:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->releaseTimer:I

    :cond_0
    iget v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->releaseTimer:I

    if-nez v5, :cond_2

    iput-boolean v2, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->releasing:Z

    goto :goto_1

    .line 203
    :cond_1
    iget-boolean v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->free:Z

    if-nez v5, :cond_2

    iget v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->duration:I

    if-lez v5, :cond_2

    iget v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->duration:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->duration:I

    if-nez v5, :cond_2

    invoke-direct {p0, v4}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->releaseFm(Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;)V

    .line 201
    .end local v4    # "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->psg:[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;

    array-length v1, v0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_7

    aget-object v4, v0, v3

    .line 206
    .local v4, "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;
    iget-boolean v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->free:Z

    if-eqz v5, :cond_5

    iget-boolean v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->releasing:Z

    if-eqz v5, :cond_5

    iget v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->releaseTimer:I

    if-lez v5, :cond_4

    iget v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->releaseTimer:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->releaseTimer:I

    :cond_4
    iget v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->releaseTimer:I

    if-nez v5, :cond_6

    iput-boolean v2, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->releasing:Z

    goto :goto_3

    .line 207
    :cond_5
    iget-boolean v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->free:Z

    if-nez v5, :cond_6

    iget v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->duration:I

    if-lez v5, :cond_6

    iget v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->duration:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->duration:I

    if-nez v5, :cond_6

    invoke-direct {p0, v4}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->releasePsg(Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;)V

    .line 205
    .end local v4    # "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 209
    :cond_7
    return-void
.end method

.method noteOn(ILcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;)V
    .locals 0
    .param p1, "sequence"    # I
    .param p2, "event"    # Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->noteOnImpl(ILcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;)V

    return-void
.end method

.method noteOnMusic(ILcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;)V
    .locals 0
    .param p1, "sequence"    # I
    .param p2, "event"    # Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->noteOnImpl(ILcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;)V

    return-void
.end method

.method render()D
    .locals 2

    .line 267
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method reset()V
    .locals 8

    .line 72
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->commands:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->frames:J

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->lastHardwareWriteFrame:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->masterAttenuation:I

    iput-boolean v2, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->dacBusy:Z

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->dacBusyUntilFrame:J

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->bends:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 73
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->capturedDacEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->markedLoopCommandOffset:I

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->markedLoopFrame:J

    .line 74
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->fm:[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;

    array-length v3, v1

    move v4, v2

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_0

    aget-object v6, v1, v4

    .local v6, "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    iput-boolean v5, v6, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->free:Z

    iput-boolean v2, v6, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->releasing:Z

    iput-boolean v2, v6, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->locked:Z

    iput v2, v6, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->releaseTimer:I

    iput v0, v6, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->sequence:I

    iput v2, v6, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->duration:I

    .end local v6    # "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->psg:[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;

    array-length v3, v1

    move v4, v2

    :goto_1
    const/16 v6, 0xff

    if-ge v4, v3, :cond_1

    aget-object v7, v1, v4

    .local v7, "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;
    iput-boolean v5, v7, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->free:Z

    iput-boolean v2, v7, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->releasing:Z

    iput-boolean v2, v7, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->locked:Z

    iput v2, v7, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->releaseTimer:I

    iput v0, v7, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->sequence:I

    iput v2, v7, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->duration:I

    iput v2, v7, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->com:I

    iput v6, v7, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->level:I

    iput v2, v7, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->mode:I

    iput-boolean v2, v7, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->update:Z

    .end local v7    # "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 77
    :cond_1
    const/16 v0, 0x9f

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->psgWrite(I)V

    const/16 v0, 0xbf

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->psgWrite(I)V

    const/16 v0, 0xdf

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->psgWrite(I)V

    invoke-direct {p0, v6}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->psgWrite(I)V

    .line 79
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    :goto_2
    if-ge v2, v0, :cond_2

    aget v3, v1, v2

    .local v3, "id":I
    const/16 v4, 0x28

    invoke-direct {p0, v4, v3}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->ym0(II)V

    .end local v3    # "id":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 80
    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x5
        0x6
    .end array-data
.end method

.method setDacBusy(Z)V
    .locals 6
    .param p1, "busy"    # Z

    .line 83
    iput-boolean p1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->dacBusy:Z

    .line 84
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->fm:[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .local v3, "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    iget v4, v3, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->id:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    .line 85
    if-eqz p1, :cond_0

    iget-boolean v4, v3, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->free:Z

    if-nez v4, :cond_0

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->releaseFm(Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;)V

    .line 86
    :cond_0
    iput-boolean p1, v3, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->locked:Z

    .line 84
    .end local v3    # "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_2
    return-void
.end method

.method setMasterAttenuation(I)V
    .locals 2
    .param p1, "value"    # I

    .line 89
    const/4 v0, 0x0

    const/16 v1, 0x7f

    invoke-static {p1, v0, v1}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->masterAttenuation:I

    return-void
.end method

.method setStreamVolumes(II)V
    .locals 0
    .param p1, "s"    # I
    .param p2, "m"    # I

    .line 90
    return-void
.end method

.method setTrackBend(III)V
    .locals 11
    .param p1, "sequence"    # I
    .param p2, "track"    # I
    .param p3, "bend256"    # I

    .line 212
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->bends:[I

    array-length v0, v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->bends:[I

    int-to-short v1, p3

    aput v1, v0, p2

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->fm:[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x3

    if-ge v3, v1, :cond_4

    aget-object v6, v0, v3

    .local v6, "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    iget v7, v6, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->sequence:I

    if-ne v7, p1, :cond_3

    iget v7, v6, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->track:I

    if-ne v7, p2, :cond_3

    iget-boolean v7, v6, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->free:Z

    if-nez v7, :cond_3

    .line 214
    iget v7, v6, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->id:I

    .local v7, "phys":I
    if-le v7, v5, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    .local v4, "bank":I
    :goto_1
    if-le v7, v5, :cond_2

    add-int/lit8 v5, v7, -0x4

    goto :goto_2

    :cond_2
    move v5, v7

    .local v5, "ch":I
    :goto_2
    iget v8, v6, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->note:I

    invoke-direct {p0, v2, v8, p3}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->getFreq(ZII)I

    move-result v8

    .local v8, "f":I
    ushr-int/lit8 v9, v8, 0x8

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0xa4

    invoke-direct {p0, v4, v5, v10, v9}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->writeFmReg(IIII)V

    and-int/lit16 v9, v8, 0xff

    const/16 v10, 0xa0

    invoke-direct {p0, v4, v5, v10, v9}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->writeFmReg(IIII)V

    .line 213
    .end local v4    # "bank":I
    .end local v5    # "ch":I
    .end local v6    # "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    .end local v7    # "phys":I
    .end local v8    # "f":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    :cond_4
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->psg:[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;

    array-length v1, v0

    :goto_3
    if-ge v2, v1, :cond_7

    aget-object v3, v0, v2

    .local v3, "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;
    iget v6, v3, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->sequence:I

    if-ne v6, p1, :cond_6

    iget v6, v3, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->track:I

    if-ne v6, p2, :cond_6

    iget-boolean v6, v3, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->free:Z

    if-nez v6, :cond_6

    .line 217
    iget v6, v3, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->note:I

    invoke-direct {p0, v4, v6, p3}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->getFreq(ZII)I

    move-result v6

    .local v6, "w":I
    iput v6, v3, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->tonePeriod:I

    .line 218
    iget v7, v3, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->id:I

    if-ge v7, v5, :cond_5

    .line 219
    and-int/lit8 v7, v6, 0xf

    iput v7, v3, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->dtl:I

    ushr-int/lit8 v7, v6, 0x4

    and-int/lit8 v7, v7, 0x3f

    iput v7, v3, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->dth:I

    .line 220
    iget v7, v3, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->id:I

    shl-int/lit8 v7, v7, 0x5

    or-int/lit16 v7, v7, 0x80

    iget v8, v3, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->dtl:I

    or-int/2addr v7, v8

    invoke-direct {p0, v7}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->psgWrite(I)V

    iget v7, v3, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->dth:I

    invoke-direct {p0, v7}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->psgWrite(I)V

    goto :goto_4

    .line 221
    :cond_5
    iget v7, v3, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->dtl:I

    and-int/2addr v7, v5

    if-ne v7, v5, :cond_6

    .line 225
    and-int/lit8 v7, v6, 0xf

    or-int/lit16 v7, v7, 0xc0

    invoke-direct {p0, v7}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->psgWrite(I)V

    ushr-int/lit8 v7, v6, 0x4

    and-int/lit8 v7, v7, 0x3f

    invoke-direct {p0, v7}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->psgWrite(I)V

    .line 216
    .end local v3    # "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;
    .end local v6    # "w":I
    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 228
    :cond_7
    return-void
.end method

.method stopAllVoices()V
    .locals 6

    .line 97
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->fm:[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .local v4, "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    iget-boolean v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->free:Z

    if-nez v5, :cond_0

    invoke-direct {p0, v4}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->releaseFm(Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;)V

    .end local v4    # "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->psg:[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .local v3, "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;
    iget-boolean v4, v3, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->free:Z

    if-nez v4, :cond_2

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->releasePsg(Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;)V

    .end local v3    # "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method stopSequence(I)V
    .locals 6
    .param p1, "sequence"    # I

    .line 94
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->fm:[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .local v4, "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    iget-boolean v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->free:Z

    if-nez v5, :cond_0

    iget v5, v4, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->sequence:I

    if-ne v5, p1, :cond_0

    invoke-direct {p0, v4}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->releaseFm(Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;)V

    .end local v4    # "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->psg:[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .local v3, "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;
    iget-boolean v4, v3, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->free:Z

    if-nez v4, :cond_2

    iget v4, v3, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->sequence:I

    if-ne v4, p1, :cond_2

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->releasePsg(Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;)V

    .end local v3    # "v":Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 96
    :cond_3
    return-void
.end method

.method toVgmBytes()[B
    .locals 1

    .line 272
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->toVgmBytes(Z)[B

    move-result-object v0

    return-object v0
.end method

.method toVgmBytes(Z)[B
    .locals 3
    .param p1, "loopFromStart"    # Z

    .line 277
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eqz p1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_1

    :cond_1
    const-wide/16 v1, -0x1

    :goto_1
    invoke-direct {p0, v0, v1, v2}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->finishVgm(IJ)[B

    move-result-object v0

    return-object v0
.end method

.method toVgmBytesMarkedLoop(Z)[B
    .locals 5
    .param p1, "looping"    # Z

    .line 284
    if-nez p1, :cond_0

    const/4 v0, -0x1

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->finishVgm(IJ)[B

    move-result-object v0

    return-object v0

    .line 285
    :cond_0
    iget v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->markedLoopCommandOffset:I

    const-wide/16 v1, 0x0

    if-ltz v0, :cond_2

    iget-wide v3, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->markedLoopFrame:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    goto :goto_0

    .line 286
    :cond_1
    iget v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->markedLoopCommandOffset:I

    iget-wide v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->markedLoopFrame:J

    invoke-direct {p0, v0, v1, v2}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->finishVgm(IJ)[B

    move-result-object v0

    return-object v0

    .line 285
    :cond_2
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ahsim/demulation/GenesisGameplayVgmHardware;->finishVgm(IJ)[B

    move-result-object v0

    return-object v0
.end method
