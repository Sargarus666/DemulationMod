.class final Lcom/ahsim/demulation/GenesisLibGmeMusic;
.super Ljava/lang/Object;
.source "GenesisLibGmeMusic.java"


# static fields
.field private static volatile timingCalls:J

.field private static volatile timingCpuMaxNs:J

.field private static volatile timingCpuOverBudget:J

.field private static volatile timingCpuTotalNs:J

.field private static volatile timingFrames:J

.field private static volatile timingWallMaxNs:J

.field private static volatile timingWallOverBudget:J

.field private static volatile timingWallTotalNs:J


# instance fields
.field private handle:J

.field private sampleRate:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static formatMs(J)Ljava/lang/String;
    .locals 5
    .param p0, "nanos"    # J

    .line 74
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    long-to-double v1, p0

    const-wide v3, 0x412e848000000000L    # 1000000.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.3f"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeOpenVgm([BI)J
.end method

.method private static native nativePlay(J[SI)J
.end method

.method private static native nativeSeekSamples(JI)I
.end method

.method private static native nativeTellSamples(J)I
.end method

.method private static recordTiming(IJJI)V
    .locals 8
    .param p0, "frames"    # I
    .param p1, "wallNs"    # J
    .param p3, "cpuNs"    # J
    .param p5, "sampleRate"    # I

    .line 45
    sget-wide v0, Lcom/ahsim/demulation/GenesisLibGmeMusic;->timingCalls:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/ahsim/demulation/GenesisLibGmeMusic;->timingCalls:J

    .line 46
    sget-wide v0, Lcom/ahsim/demulation/GenesisLibGmeMusic;->timingFrames:J

    const/4 v4, 0x0

    invoke-static {v4, p0}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    sput-wide v0, Lcom/ahsim/demulation/GenesisLibGmeMusic;->timingFrames:J

    .line 47
    sget-wide v0, Lcom/ahsim/demulation/GenesisLibGmeMusic;->timingWallTotalNs:J

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    add-long/2addr v0, v6

    sput-wide v0, Lcom/ahsim/demulation/GenesisLibGmeMusic;->timingWallTotalNs:J

    .line 48
    sget-wide v0, Lcom/ahsim/demulation/GenesisLibGmeMusic;->timingCpuTotalNs:J

    invoke-static {v4, v5, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-long/2addr v0, v4

    sput-wide v0, Lcom/ahsim/demulation/GenesisLibGmeMusic;->timingCpuTotalNs:J

    .line 49
    sget-wide v0, Lcom/ahsim/demulation/GenesisLibGmeMusic;->timingWallMaxNs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    sput-wide p1, Lcom/ahsim/demulation/GenesisLibGmeMusic;->timingWallMaxNs:J

    .line 50
    :cond_0
    sget-wide v0, Lcom/ahsim/demulation/GenesisLibGmeMusic;->timingCpuMaxNs:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    sput-wide p3, Lcom/ahsim/demulation/GenesisLibGmeMusic;->timingCpuMaxNs:J

    .line 51
    :cond_1
    if-lez p5, :cond_3

    if-lez p0, :cond_3

    .line 52
    int-to-double v0, p0

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    int-to-double v6, p5

    div-double/2addr v4, v6

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 53
    .local v0, "budgetNs":J
    cmp-long v4, p1, v0

    if-lez v4, :cond_2

    sget-wide v4, Lcom/ahsim/demulation/GenesisLibGmeMusic;->timingWallOverBudget:J

    add-long/2addr v4, v2

    sput-wide v4, Lcom/ahsim/demulation/GenesisLibGmeMusic;->timingWallOverBudget:J

    .line 54
    :cond_2
    cmp-long v4, p3, v0

    if-lez v4, :cond_3

    sget-wide v4, Lcom/ahsim/demulation/GenesisLibGmeMusic;->timingCpuOverBudget:J

    add-long/2addr v4, v2

    sput-wide v4, Lcom/ahsim/demulation/GenesisLibGmeMusic;->timingCpuOverBudget:J

    .line 56
    .end local v0    # "budgetNs":J
    :cond_3
    return-void
.end method

.method static timingSummaryForDiagnostics()Ljava/lang/String;
    .locals 14

    .line 59
    sget-wide v0, Lcom/ahsim/demulation/GenesisLibGmeMusic;->timingCalls:J

    .line 60
    .local v0, "calls":J
    sget-wide v2, Lcom/ahsim/demulation/GenesisLibGmeMusic;->timingWallTotalNs:J

    .line 61
    .local v2, "wallTotal":J
    sget-wide v4, Lcom/ahsim/demulation/GenesisLibGmeMusic;->timingCpuTotalNs:J

    .line 62
    .local v4, "cpuTotal":J
    sub-long v6, v2, v4

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 63
    .local v6, "gapTotal":J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cpp_opt=O2 gme_calls="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " gme_frames="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-wide v11, Lcom/ahsim/demulation/GenesisLibGmeMusic;->timingFrames:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " gme_wall_avg/max_ms="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 66
    cmp-long v11, v0, v8

    if-lez v11, :cond_0

    div-long v11, v2, v0

    goto :goto_0

    :cond_0
    move-wide v11, v8

    :goto_0
    invoke-static {v11, v12}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->formatMs(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-wide v12, Lcom/ahsim/demulation/GenesisLibGmeMusic;->timingWallMaxNs:J

    invoke-static {v12, v13}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->formatMs(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " gme_cpu_avg/max_ms="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 67
    cmp-long v12, v0, v8

    if-lez v12, :cond_1

    div-long v12, v4, v0

    goto :goto_1

    :cond_1
    move-wide v12, v8

    :goto_1
    invoke-static {v12, v13}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->formatMs(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-wide v11, Lcom/ahsim/demulation/GenesisLibGmeMusic;->timingCpuMaxNs:J

    invoke-static {v11, v12}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->formatMs(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " gme_sched_gap_avg_ms="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 68
    cmp-long v11, v0, v8

    if-lez v11, :cond_2

    div-long v8, v6, v0

    :cond_2
    invoke-static {v8, v9}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->formatMs(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " gme_wall_over_budget="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-wide v9, Lcom/ahsim/demulation/GenesisLibGmeMusic;->timingWallOverBudget:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " gme_cpu_over_budget="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-wide v9, Lcom/ahsim/demulation/GenesisLibGmeMusic;->timingCpuOverBudget:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 63
    return-object v8
.end method


# virtual methods
.method close()V
    .locals 5

    .line 84
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisLibGmeMusic;->handle:J

    .line 85
    .local v0, "h":J
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/ahsim/demulation/GenesisLibGmeMusic;->handle:J

    .line 86
    const/4 v4, 0x0

    iput v4, p0, Lcom/ahsim/demulation/GenesisLibGmeMusic;->sampleRate:I

    .line 87
    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->nativeClose(J)V

    .line 88
    :cond_0
    return-void
.end method

.method isOpen()Z
    .locals 4

    .line 32
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisLibGmeMusic;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method open([BI)Z
    .locals 5
    .param p1, "vgm"    # [B
    .param p2, "sampleRate"    # I

    .line 25
    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->close()V

    .line 26
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    array-length v1, p1

    const/16 v2, 0x41

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {p1, p2}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->nativeOpenVgm([BI)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ahsim/demulation/GenesisLibGmeMusic;->handle:J

    .line 28
    iget-wide v1, p0, Lcom/ahsim/demulation/GenesisLibGmeMusic;->handle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iput p2, p0, Lcom/ahsim/demulation/GenesisLibGmeMusic;->sampleRate:I

    .line 29
    :cond_1
    iget-wide v1, p0, Lcom/ahsim/demulation/GenesisLibGmeMusic;->handle:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 26
    :cond_3
    :goto_0
    return v0
.end method

.method renderStereo([SI)Z
    .locals 12
    .param p1, "out"    # [S
    .param p2, "frames"    # I

    .line 35
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisLibGmeMusic;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-lez p2, :cond_2

    array-length v0, p1

    mul-int/lit8 v4, p2, 0x2

    if-ge v0, v4, :cond_0

    move v6, p2

    goto :goto_0

    .line 36
    :cond_0
    iget-wide v4, p0, Lcom/ahsim/demulation/GenesisLibGmeMusic;->handle:J

    mul-int/lit8 v0, p2, 0x2

    invoke-static {v4, v5, p1, v0}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->nativePlay(J[SI)J

    move-result-wide v4

    .line 37
    .local v4, "packed":J
    cmp-long v0, v4, v2

    if-gez v0, :cond_1

    return v1

    .line 38
    :cond_1
    const-wide v0, 0xffffffffL

    and-long v7, v4, v0

    .line 39
    .local v7, "wallNs":J
    const/16 v2, 0x20

    ushr-long v2, v4, v2

    and-long v9, v2, v0

    .line 40
    .local v9, "cpuNs":J
    iget v11, p0, Lcom/ahsim/demulation/GenesisLibGmeMusic;->sampleRate:I

    move v6, p2

    .end local p2    # "frames":I
    .local v6, "frames":I
    invoke-static/range {v6 .. v11}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->recordTiming(IJJI)V

    .line 41
    const/4 p2, 0x1

    return p2

    .line 35
    .end local v4    # "packed":J
    .end local v6    # "frames":I
    .end local v7    # "wallNs":J
    .end local v9    # "cpuNs":J
    .restart local p2    # "frames":I
    :cond_2
    move v6, p2

    .end local p2    # "frames":I
    .restart local v6    # "frames":I
    :goto_0
    return v1
.end method

.method seekSamples(I)Z
    .locals 4
    .param p1, "sampleCount"    # I

    .line 80
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisLibGmeMusic;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisLibGmeMusic;->handle:J

    invoke-static {v0, v1, p1}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->nativeSeekSamples(JI)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method tellSamples()I
    .locals 4

    .line 77
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisLibGmeMusic;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisLibGmeMusic;->handle:J

    invoke-static {v0, v1}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->nativeTellSamples(J)I

    move-result v0

    :goto_0
    return v0
.end method
