.class final Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;
.super Ljava/lang/Object;
.source "GenesisOriginalSfxPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;,
        Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;,
        Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Scheduled;,
        Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ScheduledControl;,
        Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ScheduledDac;
    }
.end annotation


# static fields
.field private static final ACTION_ANDROID_RESUME:I = 0x8

.field private static final ACTION_ANDROID_SUSPEND:I = 0x7

.field private static final ACTION_MUSIC_DIRECT_SEQUENCE:I = 0xe

.field private static final ACTION_MUSIC_FRONTEND_REQUEST:I = 0x9

.field private static final ACTION_MUSIC_GAMEPLAY:I = 0x4

.field private static final ACTION_MUSIC_REQUEST:I = 0x6

.field private static final ACTION_MUSIC_STOP:I = 0x5

.field private static final ACTION_OPTIONS_SOUND_TEST:I = 0xf

.field private static final ACTION_PLAY:I = 0x1

.field private static final ACTION_STOP:I = 0x2

.field private static final ACTION_STOP_ALL:I = 0x3

.field private static final ACTION_TITLE_EFFECT:I = 0xb

.field private static final ACTION_TITLE_EFFECT_STOP:I = 0xc

.field private static final ACTION_TITLE_MENU_MUSIC_START:I = 0xd

.field private static final ACTION_TITLE_MUSIC_PREPARE:I = 0x10

.field private static final ACTION_TITLE_MUSIC_START:I = 0xa

.field private static final ACTION_TUTORIAL_MUSIC_START:I = 0x11

.field private static final BLOCK_BUDGET_NS:J

.field private static final BLOCK_FRAMES:I = 0x200

.field private static final BYTES_PER_FRAME:I = 0x4

.field private static final LOOKAHEAD_BLOCKS:I = 0x8

.field private static final LOOKAHEAD_START_BLOCKS:I = 0x3

.field private static final OUTPUT_RATE:I = 0xac44

.field private static final TRACK_CAPACITY_BLOCKS:I = 0x8

.field private static final TRACK_INITIAL_BLOCKS:I = 0x4


# instance fields
.field private final actions:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;",
            ">;"
        }
    .end annotation
.end field

.field private activeDac:Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;

.field private final adaptiveAudioPreferences:Landroid/content/SharedPreferences;

.field private volatile androidSuspended:Z

.field private volatile audioActionDrainCalls:J

.field private volatile audioActionDrainMaxNs:J

.field private volatile audioActionDrainTotalNs:J

.field private volatile audioAdaptiveGrowCount:I

.field private volatile audioAdaptiveInitialFrames:I

.field private audioAdaptiveLastUnderruns:I

.field private volatile audioAdaptiveLearnedFrames:I

.field private volatile audioAdaptiveMaxFrames:I

.field private audioAdaptivePreferenceKey:Ljava/lang/String;

.field private audioAdaptiveProbeWrites:J

.field private volatile audioAdaptiveSavedFrames:I

.field private volatile audioBufferCapacityFrames:I

.field private volatile audioBufferSizeFrames:I

.field private volatile audioMinBufferBytes:I

.field private volatile audioMusicRenderMaxNs:J

.field private volatile audioMusicRenderTotalNs:J

.field private volatile audioNativeOutputRate:I

.field private volatile audioRecoveryCount:I

.field private volatile audioRenderBlocks:J

.field private volatile audioRenderCpuMaxNs:J

.field private volatile audioRenderCpuTotalNs:J

.field private volatile audioRenderMaxNs:J

.field private volatile audioRenderOverBudget:J

.field private volatile audioRenderTotalNs:J

.field private volatile audioRequestedBufferBytes:I

.field private volatile audioSfxRenderMaxNs:J

.field private volatile audioSfxRenderTotalNs:J

.field private final audioThread:Ljava/lang/Thread;

.field private volatile audioThreadPriority:I

.field private volatile audioTitleEffectRenderMaxNs:J

.field private volatile audioTitleEffectRenderTotalNs:J

.field private volatile audioTitleRenderMaxNs:J

.field private volatile audioTitleRenderTotalNs:J

.field private volatile audioTrack:Landroid/media/AudioTrack;

.field private volatile audioTrackStarted:Z

.field private volatile audioWriteCalls:J

.field private volatile audioWriteCpuMaxNs:J

.field private volatile audioWriteCpuTotalNs:J

.field private volatile audioWriteMaxNs:J

.field private volatile audioWriteTotalNs:J

.field private backgroundGeneration:J

.field private final backgroundMix:[S

.field private volatile backgroundMusicActive:Z

.field private volatile backgroundPrefillSilenceBlocks:J

.field private volatile backgroundProducerBlocks:J

.field private volatile backgroundProducerCpuMaxNs:J

.field private volatile backgroundProducerCpuTotalNs:J

.field private volatile backgroundProducerFault:Z

.field private final backgroundProducerThread:Ljava/lang/Thread;

.field private volatile backgroundProducerWallMaxNs:J

.field private volatile backgroundProducerWallTotalNs:J

.field private volatile backgroundQueuedBlocks:I

.field private final backgroundRing:[[S

.field private backgroundRingCount:I

.field private volatile backgroundRingFlushes:J

.field private volatile backgroundRingHighWater:I

.field private final backgroundRingLock:Ljava/lang/Object;

.field private backgroundRingRead:I

.field private volatile backgroundRingStarvations:J

.field private backgroundRingWrite:I

.field private final backgroundRuntimeLock:Ljava/lang/Object;

.field private volatile backgroundTransitionPrefill:Z

.field private volatile backgroundTransitionPrefills:J

.field private volatile closedTrackUnderruns:J

.field private final data:Lcom/ahsim/demulation/GenesisGemsSfxData;

.field private eventSerial:J

.field private mixFrame:J

.field private final music:Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;

.field private volatile musicVolumePercent:I

.field private volatile originalTitleMusicReady:Z

.field private final producerMusicMix:[S

.field private final producerTitleMix:[S

.field private volatile released:Z

.field private final scheduled:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Scheduled;",
            ">;"
        }
    .end annotation
.end field

.field private final sfx:Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;

.field private final sfxMix:[S

.field private final titleAudio:Lcom/ahsim/demulation/GenesisTitleAudioRuntime;

.field private final titleData:Lcom/ahsim/demulation/GenesisGemsSfxData;

.field private final titleEffectMix:[S

.field private volatile volumePercent:I

.field private final wakeLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgetsfx(Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;)Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;
    .locals 0

    iget-object p0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->sfx:Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maudioLoop(Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioLoop()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbackgroundProducerLoop(Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerLoop()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartDac(Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ScheduledDac;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->startDac(Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ScheduledDac;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smusesDacReconstruction(I)Z
    .locals 0

    invoke-static {p0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->usesDacReconstruction(I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 33
    const-wide v0, 0x416624ef2a605ce1L    # 1.1609977324263038E7

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    sput-wide v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->BLOCK_BUDGET_NS:J

    return-void
.end method

.method constructor <init>(Lcom/ahsim/demulation/GenesisAudioSource;)V
    .locals 1
    .param p1, "source"    # Lcom/ahsim/demulation/GenesisAudioSource;

    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;-><init>(Lcom/ahsim/demulation/GenesisAudioSource;Landroid/content/SharedPreferences;)V

    .line 221
    return-void
.end method

.method constructor <init>(Lcom/ahsim/demulation/GenesisAudioSource;Landroid/content/SharedPreferences;)V
    .locals 4
    .param p1, "source"    # Lcom/ahsim/demulation/GenesisAudioSource;
    .param p2, "adaptiveAudioPreferences"    # Landroid/content/SharedPreferences;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->actions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->wakeLock:Ljava/lang/Object;

    .line 128
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->scheduled:Ljava/util/PriorityQueue;

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRuntimeLock:Ljava/lang/Object;

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingLock:Ljava/lang/Object;

    .line 135
    const/16 v0, 0x64

    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->volumePercent:I

    .line 136
    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->musicVolumePercent:I

    .line 143
    const/16 v0, 0x400

    new-array v1, v0, [S

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundMix:[S

    .line 144
    new-array v1, v0, [S

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->sfxMix:[S

    .line 145
    new-array v1, v0, [S

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleEffectMix:[S

    .line 146
    new-array v1, v0, [S

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->producerMusicMix:[S

    .line 147
    new-array v1, v0, [S

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->producerTitleMix:[S

    .line 148
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v0, 0x0

    const/16 v3, 0x8

    aput v3, v1, v0

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRing:[[S

    .line 161
    const v0, 0x7fffffff

    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioThreadPriority:I

    .line 196
    const-string v0, ""

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioAdaptivePreferenceKey:Ljava/lang/String;

    .line 224
    iput-object p2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->adaptiveAudioPreferences:Landroid/content/SharedPreferences;

    .line 225
    new-instance v0, Lcom/ahsim/demulation/GenesisGemsSfxData;

    invoke-direct {v0, p1}, Lcom/ahsim/demulation/GenesisGemsSfxData;-><init>(Lcom/ahsim/demulation/GenesisAudioSource;)V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    .line 226
    invoke-static {p1}, Lcom/ahsim/demulation/GenesisGemsSfxData;->createTitleBank(Lcom/ahsim/demulation/GenesisAudioSource;)Lcom/ahsim/demulation/GenesisGemsSfxData;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleData:Lcom/ahsim/demulation/GenesisGemsSfxData;

    .line 227
    new-instance v0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    invoke-direct {v0, v1}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;-><init>(Lcom/ahsim/demulation/GenesisGemsSfxData;)V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->sfx:Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;

    .line 228
    new-instance v0, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    invoke-direct {v0, p1, v1}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;-><init>(Lcom/ahsim/demulation/GenesisAudioSource;Lcom/ahsim/demulation/GenesisGemsSfxData;)V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->music:Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;

    .line 229
    new-instance v0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleData:Lcom/ahsim/demulation/GenesisGemsSfxData;

    invoke-direct {v0, p1, v1}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;-><init>(Lcom/ahsim/demulation/GenesisAudioSource;Lcom/ahsim/demulation/GenesisGemsSfxData;)V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleAudio:Lcom/ahsim/demulation/GenesisTitleAudioRuntime;

    .line 230
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$1;

    invoke-direct {v1, p0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$1;-><init>(Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;)V

    const-string v3, "Dune-GEMS-LookAhead"

    invoke-direct {v0, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerThread:Ljava/lang/Thread;

    .line 233
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerThread:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 234
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$2;

    invoke-direct {v1, p0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$2;-><init>(Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;)V

    const-string v3, "Dune-GEMS-SFX"

    invoke-direct {v0, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioThread:Ljava/lang/Thread;

    .line 237
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioThread:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 238
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 239
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 240
    return-void
.end method

.method constructor <init>([B)V
    .locals 2
    .param p1, "rom"    # [B

    .line 216
    invoke-static {p1}, Lcom/ahsim/demulation/GenesisAudioSource;->fromRom([B)Lcom/ahsim/demulation/GenesisAudioSource;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;-><init>(Lcom/ahsim/demulation/GenesisAudioSource;Landroid/content/SharedPreferences;)V

    .line 217
    return-void
.end method

.method private accumulateClosedTrackUnderruns(Landroid/media/AudioTrack;)V
    .locals 4
    .param p1, "track"    # Landroid/media/AudioTrack;

    .line 1002
    if-eqz p1, :cond_0

    .line 1003
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->closedTrackUnderruns:J

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getUnderrunCount()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->closedTrackUnderruns:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1004
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 1005
    return-void

    .line 1002
    :cond_0
    return-void
.end method

.method private adaptTrackBufferAfterWrite(Landroid/media/AudioTrack;)V
    .locals 4
    .param p1, "track"    # Landroid/media/AudioTrack;

    .line 563
    if-eqz p1, :cond_2

    .line 564
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioAdaptiveProbeWrites:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioAdaptiveProbeWrites:J

    const-wide/16 v2, 0x1f

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    .line 566
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getUnderrunCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 567
    .local v0, "underruns":I
    iget v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioAdaptiveLastUnderruns:I

    if-le v0, v1, :cond_1

    iget v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioBufferSizeFrames:I

    iget v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioAdaptiveMaxFrames:I

    if-ge v1, v2, :cond_1

    .line 568
    iget v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioAdaptiveMaxFrames:I

    iget v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioBufferSizeFrames:I

    add-int/lit16 v2, v2, 0x200

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 569
    .local v1, "target":I
    invoke-virtual {p1, v1}, Landroid/media/AudioTrack;->setBufferSizeInFrames(I)I

    move-result v2

    .line 570
    .local v2, "actual":I
    if-lez v2, :cond_1

    .line 571
    iput v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioBufferSizeFrames:I

    .line 572
    iget v3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioAdaptiveGrowCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioAdaptiveGrowCount:I

    .line 573
    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->persistLearnedBufferFrames(I)V

    .line 576
    .end local v1    # "target":I
    .end local v2    # "actual":I
    :cond_1
    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioAdaptiveLastUnderruns:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "underruns":I
    goto :goto_0

    .line 577
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 578
    return-void

    .line 563
    :cond_2
    return-void
.end method

.method private adaptiveBufferPreferenceKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "minFrames"    # I

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "learned_frames_44100_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private audioLoop()V
    .locals 15

    .line 584
    const/16 v0, -0x10

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 586
    :goto_1
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioThreadPriority:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 587
    goto :goto_2

    :catchall_1
    move-exception v0

    .local v0, "ignored":Ljava/lang/Throwable;
    const v1, 0x7fffffff

    iput v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioThreadPriority:I

    .line 588
    .end local v0    # "ignored":Ljava/lang/Throwable;
    :goto_2
    const/16 v0, 0x400

    new-array v0, v0, [S

    .line 591
    .local v0, "block":[S
    :goto_3
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_2
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->actions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->androidSuspended:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->hasAnyAudioWork()Z

    move-result v3

    if-nez v3, :cond_3

    .line 592
    :cond_0
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->wakeLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 593
    :goto_4
    :try_start_3
    iget-boolean v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->released:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->actions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->androidSuspended:Z

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->hasAnyAudioWork()Z

    move-result v4

    if-nez v4, :cond_2

    .line 594
    :cond_1
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->wakeLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    goto :goto_4

    .line 595
    :cond_2
    monitor-exit v3

    goto :goto_5

    :catchall_2
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v0    # "block":[S
    :try_start_4
    throw v4

    .line 597
    .restart local v0    # "block":[S
    :cond_3
    :goto_5
    iget-boolean v3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->released:Z

    if-eqz v3, :cond_4

    goto/16 :goto_8

    .line 598
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 599
    .local v3, "actionStartNs":J
    iget-wide v5, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->mixFrame:J

    invoke-direct {p0, v5, v6}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->drainActions(J)V

    .line 600
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-direct {p0, v5, v6}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->recordActionDrain(J)V

    .line 602
    iget-boolean v5, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->androidSuspended:Z

    if-eqz v5, :cond_5

    .line 603
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->pauseTrackWithoutFlush()V

    .line 604
    goto :goto_3

    .line 607
    :cond_5
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->hasAnyAudioWork()Z

    move-result v5

    if-nez v5, :cond_6

    .line 608
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->pauseAndFlushTrack()V

    .line 609
    goto :goto_3

    .line 611
    :cond_6
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->ensureTrack()V

    .line 612
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-nez v5, :cond_7

    .line 615
    iget v5, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioRecoveryCount:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioRecoveryCount:I

    .line 616
    const-wide/16 v5, 0x14

    invoke-static {v5, v6}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->sleepQuietly(J)V

    .line 617
    goto :goto_3

    .line 620
    :cond_7
    iget-boolean v5, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTrackStarted:Z

    if-nez v5, :cond_8

    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->waitForBackgroundStartupPrefill()V

    .line 621
    :cond_8
    iget-boolean v5, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerFault:Z

    if-nez v5, :cond_b

    .line 622
    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->render([S)V

    .line 623
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTrack:Landroid/media/AudioTrack;

    .line 624
    .local v5, "track":Landroid/media/AudioTrack;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 625
    .local v6, "writeStartNs":J
    invoke-static {}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->currentThreadCpuTimeNs()J

    move-result-wide v8

    .line 626
    .local v8, "writeStartCpuNs":J
    array-length v10, v0

    invoke-virtual {v5, v0, v2, v10, v2}, Landroid/media/AudioTrack;->write([SIII)I

    move-result v10

    .line 627
    .local v10, "wrote":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long/2addr v11, v6

    invoke-static {v8, v9}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->elapsedThreadCpuNs(J)J

    move-result-wide v13

    invoke-direct {p0, v11, v12, v13, v14}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->recordWrite(JJ)V

    .line 628
    if-lez v10, :cond_9

    .line 629
    invoke-direct {p0, v5}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->adaptTrackBufferAfterWrite(Landroid/media/AudioTrack;)V

    .line 630
    iget-wide v11, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->mixFrame:J

    div-int/lit8 v13, v10, 0x2

    int-to-long v13, v13

    add-long/2addr v11, v13

    iput-wide v11, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->mixFrame:J

    .line 633
    iget-boolean v11, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTrackStarted:Z

    if-nez v11, :cond_d

    .line 634
    invoke-virtual {v5}, Landroid/media/AudioTrack;->play()V

    .line 635
    iput-boolean v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTrackStarted:Z

    goto :goto_7

    .line 637
    :cond_9
    if-ltz v10, :cond_a

    .line 638
    const-wide/16 v11, 0x5

    invoke-static {v11, v12}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->sleepQuietly(J)V

    goto :goto_7

    .line 637
    :cond_a
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AudioTrack.write="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "block":[S
    throw v11

    .line 621
    .end local v5    # "track":Landroid/media/AudioTrack;
    .end local v6    # "writeStartNs":J
    .end local v8    # "writeStartCpuNs":J
    .end local v10    # "wrote":I
    .restart local v0    # "block":[S
    :cond_b
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "background GME producer fault"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "block":[S
    throw v5
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 642
    .end local v3    # "actionStartNs":J
    .restart local v0    # "block":[S
    :catch_0
    move-exception v3

    .line 648
    .local v3, "ignored":Ljava/lang/RuntimeException;
    iget v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioRecoveryCount:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioRecoveryCount:I

    .line 649
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->pauseAndFlushTrack()V

    .line 653
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->scheduled:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V

    .line 654
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->activeDac:Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;

    .line 655
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->sfx:Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;

    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->stopAll()V

    .line 656
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRuntimeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 657
    :try_start_5
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleAudio:Lcom/ahsim/demulation/GenesisTitleAudioRuntime;

    invoke-virtual {v4}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->isMusicActive()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleAudio:Lcom/ahsim/demulation/GenesisTitleAudioRuntime;

    invoke-virtual {v4}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->restartAfterAudioFault()V

    goto :goto_6

    .line 658
    :cond_c
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->music:Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;

    invoke-virtual {v4}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->restartCurrentRequestAfterAudioFault()V

    .line 659
    :goto_6
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->clearBackgroundLookAheadForRecovery()V

    .line 660
    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->updateBackgroundStateLocked(Z)V

    .line 661
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 662
    iput-boolean v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerFault:Z

    .line 663
    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->sleepQuietly(J)V

    .line 664
    .end local v3    # "ignored":Ljava/lang/RuntimeException;
    :cond_d
    :goto_7
    goto/16 :goto_3

    .line 661
    .restart local v3    # "ignored":Ljava/lang/RuntimeException;
    :catchall_3
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v2

    .line 639
    .end local v3    # "ignored":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 640
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 641
    nop

    .line 666
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_8
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->pauseAndFlushTrack()V

    .line 667
    return-void
.end method

.method private backgroundProducerLoop()V
    .locals 27

    .line 424
    move-object/from16 v1, p0

    const/16 v0, -0xf

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 426
    :goto_1
    iget-boolean v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->released:Z

    if-nez v0, :cond_12

    .line 429
    iget-object v2, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingLock:Ljava/lang/Object;

    monitor-enter v2

    .line 430
    :goto_2
    :try_start_1
    iget-boolean v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->released:Z

    const/16 v3, 0x8

    if-nez v0, :cond_1

    iget-boolean v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->androidSuspended:Z

    if-nez v0, :cond_0

    iget-boolean v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerFault:Z

    if-nez v0, :cond_0

    iget-boolean v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundMusicActive:Z

    if-eqz v0, :cond_0

    iget v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    if-lt v0, v3, :cond_1

    .line 432
    :cond_0
    :try_start_2
    iget-object v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 433
    goto :goto_2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    monitor-exit v2

    return-void

    .line 435
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget-boolean v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->released:Z

    if-eqz v0, :cond_2

    monitor-exit v2

    return-void

    .line 436
    :cond_2
    iget v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingWrite:I

    move v4, v0

    .line 437
    .local v4, "slot":I
    iget-wide v5, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundGeneration:J

    .line 438
    .local v5, "generation":J
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 440
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 441
    .local v7, "wallStart":J
    invoke-static {}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->currentThreadCpuTimeNs()J

    move-result-wide v9

    .line 446
    .local v9, "cpuStart":J
    iget-object v11, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRuntimeLock:Ljava/lang/Object;

    monitor-enter v11

    .line 447
    :try_start_4
    iget-boolean v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->released:Z

    if-nez v0, :cond_11

    iget-boolean v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->androidSuspended:Z

    if-eqz v0, :cond_3

    move/from16 v18, v4

    move-wide/from16 v16, v5

    move-wide/from16 v23, v7

    goto/16 :goto_8

    .line 448
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 449
    .local v12, "lane":J
    iget-object v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->music:Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;

    iget-object v2, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->producerMusicMix:[S

    const/16 v14, 0x64

    const/16 v15, 0x200

    invoke-virtual {v0, v2, v15, v14}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->renderStereo([SII)Z

    move-result v0

    .line 450
    .local v0, "ok":Z
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move/from16 v18, v4

    .end local v4    # "slot":I
    .local v18, "slot":I
    sub-long v3, v16, v12

    .line 451
    .local v3, "musicNs":J
    :try_start_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 452
    .end local v12    # "lane":J
    .local v16, "lane":J
    if-eqz v0, :cond_4

    :try_start_6
    iget-object v13, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleAudio:Lcom/ahsim/demulation/GenesisTitleAudioRuntime;

    iget-object v2, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->producerTitleMix:[S

    invoke-virtual {v13, v2, v15, v14}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->renderMusicStereo([SII)Z

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    .line 455
    .end local v0    # "ok":Z
    .end local v3    # "musicNs":J
    .end local v16    # "lane":J
    :catchall_1
    move-exception v0

    move-wide/from16 v16, v5

    move-wide/from16 v23, v7

    goto/16 :goto_9

    .line 452
    .restart local v0    # "ok":Z
    .restart local v3    # "musicNs":J
    .restart local v16    # "lane":J
    :cond_4
    const/4 v2, 0x0

    .line 453
    .end local v0    # "ok":Z
    .local v2, "ok":Z
    :goto_3
    :try_start_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long v13, v13, v16

    .line 454
    .local v13, "titleNs":J
    iget-object v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->music:Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->isActive()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-nez v0, :cond_6

    :try_start_8
    iget-object v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleAudio:Lcom/ahsim/demulation/GenesisTitleAudioRuntime;

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->isMusicActive()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v0, 0x1

    :goto_5
    move v15, v0

    .line 455
    .end local v16    # "lane":J
    .local v15, "activeAfter":Z
    :try_start_9
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 456
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    move-wide/from16 v19, v13

    .end local v13    # "titleNs":J
    .local v19, "titleNs":J
    sub-long v12, v16, v7

    .line 457
    .local v12, "wallNs":J
    move-wide/from16 v16, v5

    .end local v5    # "generation":J
    .local v16, "generation":J
    invoke-static {v9, v10}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->elapsedThreadCpuNs(J)J

    move-result-wide v5

    .line 458
    .local v5, "cpuNs":J
    if-nez v2, :cond_7

    .line 459
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerFault:Z

    .line 460
    iget-object v11, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->wakeLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_a
    iget-object v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->wakeLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 461
    iget-object v14, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_b
    iget-object v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 462
    const-wide/16 v21, 0x5

    invoke-static/range {v21 .. v22}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->sleepQuietly(J)V

    .line 463
    goto/16 :goto_1

    .line 461
    :catchall_2
    move-exception v0

    :try_start_c
    monitor-exit v14
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v0

    .line 460
    :catchall_3
    move-exception v0

    :try_start_d
    monitor-exit v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v0

    .line 466
    :cond_7
    iget-object v11, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRing:[[S

    aget-object v14, v11, v18

    .line 467
    .local v14, "dst":[S
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_6
    array-length v0, v14

    if-ge v11, v0, :cond_8

    .line 468
    iget-object v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->producerMusicMix:[S

    aget-short v0, v0, v11

    move/from16 v22, v0

    iget-object v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->producerTitleMix:[S

    aget-short v0, v0, v11

    add-int v0, v22, v0

    .line 469
    .local v0, "mixed":I
    move/from16 v22, v2

    .end local v2    # "ok":Z
    .local v22, "ok":Z
    const/16 v2, 0x7fff

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    move/from16 v23, v0

    .end local v0    # "mixed":I
    .local v23, "mixed":I
    const/16 v0, -0x8000

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, v14, v11

    .line 467
    .end local v23    # "mixed":I
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v22

    goto :goto_6

    .end local v22    # "ok":Z
    .restart local v2    # "ok":Z
    :cond_8
    move/from16 v22, v2

    .line 472
    .end local v2    # "ok":Z
    .end local v11    # "i":I
    .restart local v22    # "ok":Z
    move-wide/from16 v23, v7

    .end local v7    # "wallStart":J
    .local v23, "wallStart":J
    iget-wide v7, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioMusicRenderTotalNs:J

    add-long/2addr v7, v3

    iput-wide v7, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioMusicRenderTotalNs:J

    .line 473
    iget-wide v7, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioMusicRenderMaxNs:J

    cmp-long v0, v3, v7

    if-lez v0, :cond_9

    iput-wide v3, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioMusicRenderMaxNs:J

    .line 474
    :cond_9
    iget-wide v7, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTitleRenderTotalNs:J

    add-long v7, v7, v19

    iput-wide v7, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTitleRenderTotalNs:J

    .line 475
    iget-wide v7, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTitleRenderMaxNs:J

    cmp-long v0, v19, v7

    if-lez v0, :cond_a

    move-wide/from16 v7, v19

    .end local v19    # "titleNs":J
    .local v7, "titleNs":J
    iput-wide v7, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTitleRenderMaxNs:J

    goto :goto_7

    .end local v7    # "titleNs":J
    .restart local v19    # "titleNs":J
    :cond_a
    move-wide/from16 v7, v19

    .line 476
    .end local v19    # "titleNs":J
    .restart local v7    # "titleNs":J
    :goto_7
    move-wide/from16 v19, v3

    .end local v3    # "musicNs":J
    .local v19, "musicNs":J
    iget-wide v2, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerBlocks:J

    const-wide/16 v25, 0x1

    add-long v2, v2, v25

    iput-wide v2, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerBlocks:J

    .line 477
    iget-wide v2, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerWallTotalNs:J

    add-long/2addr v2, v12

    iput-wide v2, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerWallTotalNs:J

    .line 478
    iget-wide v2, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerWallMaxNs:J

    cmp-long v0, v12, v2

    if-lez v0, :cond_b

    iput-wide v12, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerWallMaxNs:J

    .line 479
    :cond_b
    const-wide/16 v2, 0x0

    cmp-long v0, v5, v2

    if-ltz v0, :cond_c

    .line 480
    iget-wide v2, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerCpuTotalNs:J

    add-long/2addr v2, v5

    iput-wide v2, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerCpuTotalNs:J

    .line 481
    iget-wide v2, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerCpuMaxNs:J

    cmp-long v0, v5, v2

    if-lez v0, :cond_c

    iput-wide v5, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerCpuMaxNs:J

    .line 484
    :cond_c
    iget-object v2, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingLock:Ljava/lang/Object;

    monitor-enter v2

    .line 485
    :try_start_e
    iget-wide v3, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundGeneration:J

    cmp-long v0, v16, v3

    if-nez v0, :cond_10

    iget-boolean v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->androidSuspended:Z

    if-nez v0, :cond_10

    iget v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingCount:I

    const/16 v3, 0x8

    if-ge v0, v3, :cond_10

    .line 487
    iget v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingWrite:I

    const/16 v21, 0x1

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v3

    iput v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingWrite:I

    .line 488
    iget v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingCount:I

    .line 489
    iget v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingCount:I

    iput v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundQueuedBlocks:I

    .line 490
    iget v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingCount:I

    iget v3, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingHighWater:I

    if-le v0, v3, :cond_d

    .line 491
    iget v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingCount:I

    iput v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingHighWater:I

    .line 492
    :cond_d
    iput-boolean v15, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundMusicActive:Z

    .line 493
    if-eqz v15, :cond_e

    iget v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingCount:I

    const/4 v3, 0x3

    if-lt v0, v3, :cond_f

    .line 494
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundTransitionPrefill:Z

    .line 495
    :cond_f
    iget-object v0, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 497
    :cond_10
    monitor-exit v2

    .line 498
    .end local v5    # "cpuNs":J
    .end local v7    # "titleNs":J
    .end local v9    # "cpuStart":J
    .end local v12    # "wallNs":J
    .end local v14    # "dst":[S
    .end local v15    # "activeAfter":Z
    .end local v16    # "generation":J
    .end local v18    # "slot":I
    .end local v19    # "musicNs":J
    .end local v22    # "ok":Z
    .end local v23    # "wallStart":J
    goto/16 :goto_1

    .line 497
    .restart local v5    # "cpuNs":J
    .restart local v7    # "titleNs":J
    .restart local v9    # "cpuStart":J
    .restart local v12    # "wallNs":J
    .restart local v14    # "dst":[S
    .restart local v15    # "activeAfter":Z
    .restart local v16    # "generation":J
    .restart local v18    # "slot":I
    .restart local v19    # "musicNs":J
    .restart local v22    # "ok":Z
    .restart local v23    # "wallStart":J
    :catchall_4
    move-exception v0

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v0

    .line 455
    .end local v12    # "wallNs":J
    .end local v14    # "dst":[S
    .end local v15    # "activeAfter":Z
    .end local v16    # "generation":J
    .end local v19    # "musicNs":J
    .end local v22    # "ok":Z
    .end local v23    # "wallStart":J
    .local v5, "generation":J
    .local v7, "wallStart":J
    :catchall_5
    move-exception v0

    move-wide/from16 v16, v5

    move-wide/from16 v23, v7

    .end local v5    # "generation":J
    .end local v7    # "wallStart":J
    .restart local v16    # "generation":J
    .restart local v23    # "wallStart":J
    goto :goto_9

    .line 447
    .end local v16    # "generation":J
    .end local v18    # "slot":I
    .end local v23    # "wallStart":J
    .restart local v4    # "slot":I
    .restart local v5    # "generation":J
    .restart local v7    # "wallStart":J
    :cond_11
    move/from16 v18, v4

    move-wide/from16 v16, v5

    move-wide/from16 v23, v7

    .end local v4    # "slot":I
    .end local v5    # "generation":J
    .end local v7    # "wallStart":J
    .restart local v16    # "generation":J
    .restart local v18    # "slot":I
    .restart local v23    # "wallStart":J
    :goto_8
    :try_start_f
    monitor-exit v11

    goto/16 :goto_1

    .line 455
    .end local v16    # "generation":J
    .end local v18    # "slot":I
    .end local v23    # "wallStart":J
    .restart local v4    # "slot":I
    .restart local v5    # "generation":J
    .restart local v7    # "wallStart":J
    :catchall_6
    move-exception v0

    move/from16 v18, v4

    move-wide/from16 v16, v5

    move-wide/from16 v23, v7

    .end local v4    # "slot":I
    .end local v5    # "generation":J
    .end local v7    # "wallStart":J
    .restart local v16    # "generation":J
    .restart local v18    # "slot":I
    .restart local v23    # "wallStart":J
    :goto_9
    monitor-exit v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_9

    .line 438
    .end local v9    # "cpuStart":J
    .end local v16    # "generation":J
    .end local v18    # "slot":I
    .end local v23    # "wallStart":J
    :catchall_8
    move-exception v0

    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    throw v0

    .line 499
    :cond_12
    return-void
.end method

.method private clearBackgroundLookAheadForRecovery()V
    .locals 5

    .line 410
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 411
    :try_start_0
    iget-wide v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundGeneration:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundGeneration:J

    .line 412
    const/4 v1, 0x0

    iput v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingRead:I

    .line 413
    iput v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingWrite:I

    .line 414
    iput v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingCount:I

    .line 415
    iput v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundQueuedBlocks:I

    .line 416
    iget-wide v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingFlushes:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingFlushes:J

    .line 417
    iget-boolean v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundMusicActive:Z

    iput-boolean v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundTransitionPrefill:Z

    .line 418
    iget-boolean v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundTransitionPrefill:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundTransitionPrefills:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundTransitionPrefills:J

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 420
    monitor-exit v0

    .line 421
    return-void

    .line 420
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static currentThreadCpuTimeNs()J
    .locals 3

    .line 1024
    :try_start_0
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 1025
    :catchall_0
    move-exception v0

    .local v0, "ignored":Ljava/lang/Throwable;
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method private drainActions(J)V
    .locals 7
    .param p1, "nowFrame"    # J

    .line 671
    nop

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->actions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;

    .line 672
    .local v0, "a":Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;
    if-nez v0, :cond_1

    .line 831
    .end local v0    # "a":Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;
    return-void

    .line 673
    .restart local v0    # "a":Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;
    :cond_1
    iget v1, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->type:I

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2

    .line 676
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->scheduled:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V

    .line 677
    iput-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->activeDac:Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;

    .line 678
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->sfx:Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;

    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->stopAll()V

    .line 679
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleAudio:Lcom/ahsim/demulation/GenesisTitleAudioRuntime;

    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->stopEffect()V

    .line 680
    iput-boolean v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->androidSuspended:Z

    .line 681
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    .line 682
    goto :goto_0

    .line 681
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 684
    :cond_2
    iget v1, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->type:I

    const/16 v2, 0x8

    const/4 v5, 0x0

    if-ne v1, v2, :cond_3

    .line 685
    iput-boolean v5, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->androidSuspended:Z

    .line 686
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 687
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTrack:Landroid/media/AudioTrack;

    .line 688
    .local v1, "track":Landroid/media/AudioTrack;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    iput-boolean v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTrackStarted:Z

    goto :goto_0

    .line 686
    .end local v1    # "track":Landroid/media/AudioTrack;
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 691
    :cond_3
    iget v1, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 692
    iput-boolean v5, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->androidSuspended:Z

    .line 693
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->scheduled:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V

    .line 694
    iput-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->activeDac:Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;

    .line 695
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->sfx:Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;

    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->stopAll()V

    .line 696
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleAudio:Lcom/ahsim/demulation/GenesisTitleAudioRuntime;

    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->stopEffect()V

    .line 697
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRuntimeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 698
    :try_start_3
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->music:Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;

    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->stop()V

    .line 699
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleAudio:Lcom/ahsim/demulation/GenesisTitleAudioRuntime;

    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->stopMusic()V

    .line 700
    invoke-direct {p0, v4}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->updateBackgroundStateLocked(Z)V

    .line 701
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 702
    iput-boolean v5, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->originalTitleMusicReady:Z

    .line 703
    goto :goto_0

    .line 701
    :catchall_2
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    .line 705
    :cond_4
    iget v1, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 706
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleAudio:Lcom/ahsim/demulation/GenesisTitleAudioRuntime;

    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->stopEffect()V

    .line 707
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRuntimeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 708
    :try_start_5
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleAudio:Lcom/ahsim/demulation/GenesisTitleAudioRuntime;

    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->stopMusic()V

    .line 709
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->music:Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;

    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->startGameplay()V

    .line 710
    invoke-direct {p0, v4}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->updateBackgroundStateLocked(Z)V

    .line 711
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 712
    iput-boolean v5, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->originalTitleMusicReady:Z

    .line 713
    goto/16 :goto_0

    .line 711
    :catchall_3
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v2

    .line 715
    :cond_5
    iget v1, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    .line 716
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRuntimeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 717
    :try_start_7
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->music:Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;

    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->stop()V

    .line 718
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleAudio:Lcom/ahsim/demulation/GenesisTitleAudioRuntime;

    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->stopMusic()V

    .line 719
    invoke-direct {p0, v4}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->updateBackgroundStateLocked(Z)V

    .line 720
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 721
    iput-boolean v5, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->originalTitleMusicReady:Z

    .line 722
    goto/16 :goto_0

    .line 720
    :catchall_4
    move-exception v2

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v2

    .line 724
    :cond_6
    iget v1, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    .line 725
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleAudio:Lcom/ahsim/demulation/GenesisTitleAudioRuntime;

    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->stopEffect()V

    .line 726
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRuntimeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 727
    :try_start_9
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleAudio:Lcom/ahsim/demulation/GenesisTitleAudioRuntime;

    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->stopMusic()V

    .line 728
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->music:Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;

    iget v3, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->sequence:I

    invoke-virtual {v2, v3}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->startGameplayRequest(I)V

    .line 729
    invoke-direct {p0, v4}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->updateBackgroundStateLocked(Z)V

    .line 730
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 731
    iput-boolean v5, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->originalTitleMusicReady:Z

    .line 732
    goto/16 :goto_0

    .line 730
    :catchall_5
    move-exception v2

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v2

    .line 734
    :cond_7
    iget v1, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->type:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_8

    .line 735
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleAudio:Lcom/ahsim/demulation/GenesisTitleAudioRuntime;

    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->stopEffect()V

    .line 736
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRuntimeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 737
    :try_start_b
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleAudio:Lcom/ahsim/demulation/GenesisTitleAudioRuntime;

    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->stopMusic()V

    .line 738
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->music:Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;

    iget v3, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->sequence:I

    invoke-virtual {v2, v3}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->startFrontendRequest(I)V

    .line 739
    invoke-direct {p0, v4}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->updateBackgroundStateLocked(Z)V

    .line 740
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 741
    iput-boolean v5, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->originalTitleMusicReady:Z

    .line 742
    goto/16 :goto_0

    .line 740
    :catchall_6
    move-exception v2

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v2

    .line 744
    :cond_8
    iget v1, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->type:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_9

    .line 746
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->scheduled:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V

    .line 747
    iput-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->activeDac:Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;

    .line 748
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->sfx:Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;

    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->stopAll()V

    .line 749
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleAudio:Lcom/ahsim/demulation/GenesisTitleAudioRuntime;

    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->stopEffect()V

    .line 750
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRuntimeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 751
    :try_start_d
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->music:Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;

    iget v3, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->sequence:I

    invoke-virtual {v2, v3}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->startDirectSequence(I)V

    .line 752
    invoke-direct {p0, v4}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->updateBackgroundStateLocked(Z)V

    .line 753
    monitor-exit v1

    .line 754
    goto/16 :goto_0

    .line 753
    :catchall_7
    move-exception v2

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    throw v2

    .line 756
    :cond_9
    iget v1, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->type:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_a

    .line 760
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRuntimeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 761
    :try_start_e
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->music:Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;

    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->isActive()Z

    move-result v2

    .line 762
    .local v2, "hadMusic":Z
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->music:Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;

    invoke-virtual {v4}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->stop()V

    .line 763
    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->updateBackgroundStateLocked(Z)V

    .line 764
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 765
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleAudio:Lcom/ahsim/demulation/GenesisTitleAudioRuntime;

    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->stopEffect()V

    .line 766
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->scheduled:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V

    .line 767
    iput-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->activeDac:Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;

    .line 768
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->sfx:Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;

    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->stopAll()V

    .line 769
    iget v1, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->sequence:I

    invoke-direct {p0, v1, p1, p2}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->startSfxSequenceLocked(IJ)V

    .line 770
    goto/16 :goto_0

    .line 764
    .end local v2    # "hadMusic":Z
    :catchall_8
    move-exception v2

    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    throw v2

    .line 772
    :cond_a
    iget v1, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->type:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_b

    .line 773
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRuntimeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 774
    :try_start_10
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleAudio:Lcom/ahsim/demulation/GenesisTitleAudioRuntime;

    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->prepareTitleMusic()Z

    .line 775
    invoke-direct {p0, v5}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->updateBackgroundStateLocked(Z)V

    .line 776
    monitor-exit v1

    .line 777
    goto/16 :goto_0

    .line 776
    :catchall_9
    move-exception v2

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    throw v2

    .line 779
    :cond_b
    iget v1, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->type:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_c

    .line 780
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRuntimeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 781
    :try_start_11
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->music:Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;

    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->stop()V

    .line 782
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleAudio:Lcom/ahsim/demulation/GenesisTitleAudioRuntime;

    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->startTitleMusic()Z

    move-result v2

    iput-boolean v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->originalTitleMusicReady:Z

    .line 783
    invoke-direct {p0, v4}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->updateBackgroundStateLocked(Z)V

    .line 784
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    .line 785
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->scheduled:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V

    .line 786
    iput-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->activeDac:Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;

    .line 787
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->sfx:Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;

    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->stopAll()V

    .line 788
    goto/16 :goto_0

    .line 784
    :catchall_a
    move-exception v2

    :try_start_12
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    throw v2

    .line 790
    :cond_c
    iget v1, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->type:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_d

    .line 791
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRuntimeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 792
    :try_start_13
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->music:Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;

    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->stop()V

    .line 793
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleAudio:Lcom/ahsim/demulation/GenesisTitleAudioRuntime;

    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->startTitleMenuMusic()Z

    move-result v2

    iput-boolean v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->originalTitleMusicReady:Z

    .line 794
    invoke-direct {p0, v4}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->updateBackgroundStateLocked(Z)V

    .line 795
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .line 796
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->scheduled:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V

    .line 797
    iput-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->activeDac:Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;

    .line 798
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->sfx:Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;

    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->stopAll()V

    .line 799
    goto/16 :goto_0

    .line 795
    :catchall_b
    move-exception v2

    :try_start_14
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    throw v2

    .line 801
    :cond_d
    iget v1, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->type:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_e

    .line 802
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRuntimeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 803
    :try_start_15
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleAudio:Lcom/ahsim/demulation/GenesisTitleAudioRuntime;

    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->stopMusic()V

    .line 804
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->music:Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;

    iget v6, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->sequence:I

    invoke-virtual {v2, v6}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->startDirectSequence(I)V

    .line 805
    invoke-direct {p0, v4}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->updateBackgroundStateLocked(Z)V

    .line 806
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    .line 807
    iput-boolean v5, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->originalTitleMusicReady:Z

    .line 808
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->scheduled:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V

    .line 809
    iput-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->activeDac:Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;

    .line 810
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->sfx:Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;

    invoke-virtual {v1}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->stopAll()V

    .line 811
    goto/16 :goto_0

    .line 806
    :catchall_c
    move-exception v2

    :try_start_16
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    throw v2

    .line 813
    :cond_e
    iget v1, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->type:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_f

    .line 814
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleAudio:Lcom/ahsim/demulation/GenesisTitleAudioRuntime;

    iget v2, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->sequence:I

    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->playEffect(I)Z

    .line 815
    goto/16 :goto_0

    .line 817
    :cond_f
    iget v1, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->type:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_10

    .line 818
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleAudio:Lcom/ahsim/demulation/GenesisTitleAudioRuntime;

    iget v2, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->sequence:I

    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->stopEffect(I)V

    .line 819
    goto/16 :goto_0

    .line 821
    :cond_10
    iget v1, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_14

    .line 822
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->scheduled:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Scheduled;>;"
    :cond_11
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 823
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Scheduled;

    iget v2, v2, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Scheduled;->sequence:I

    iget v4, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->sequence:I

    if-ne v2, v4, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 825
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Scheduled;>;"
    :cond_12
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->activeDac:Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->activeDac:Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;

    iget v1, v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;->sequence:I

    iget v2, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->sequence:I

    if-ne v1, v2, :cond_13

    iput-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->activeDac:Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;

    .line 826
    :cond_13
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->sfx:Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;

    iget v2, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->sequence:I

    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->stop(I)V

    .line 827
    goto/16 :goto_0

    .line 829
    :cond_14
    iget v1, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->type:I

    if-ne v1, v4, :cond_15

    iget v1, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->sequence:I

    invoke-direct {p0, v1, p1, p2}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->startSfxSequenceLocked(IJ)V

    .line 830
    .end local v0    # "a":Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;
    :cond_15
    goto/16 :goto_0
.end method

.method private static elapsedThreadCpuNs(J)J
    .locals 5
    .param p0, "startNs"    # J

    .line 1029
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const-wide/16 v1, -0x1

    if-gez v0, :cond_0

    return-wide v1

    .line 1030
    :cond_0
    invoke-static {}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->currentThreadCpuTimeNs()J

    move-result-wide v3

    .line 1031
    .local v3, "endNs":J
    cmp-long v0, v3, p0

    if-ltz v0, :cond_1

    sub-long v1, v3, p0

    :cond_1
    return-wide v1
.end method

.method private enqueue(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "sequence"    # I

    .line 369
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->released:Z

    if-eqz v0, :cond_0

    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->actions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;

    invoke-direct {v1, p1, p2}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->wakeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->wakeLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    .line 375
    return-void

    .line 374
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private ensureTrack()V
    .locals 15

    .line 941
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    return-void

    .line 942
    :cond_0
    const/16 v0, 0xc

    const/4 v1, 0x2

    const v2, 0xac44

    invoke-static {v2, v0, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    .line 944
    .local v0, "min":I
    if-gtz v0, :cond_1

    const/16 v0, 0x1000

    :cond_1
    move v1, v0

    .line 945
    .end local v0    # "min":I
    .local v1, "min":I
    add-int/lit8 v0, v1, 0x4

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    div-int/lit8 v3, v0, 0x4

    .line 946
    .local v3, "minFrames":I
    const/16 v0, 0x1000

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 947
    .local v4, "capacityFrames":I
    invoke-direct {p0, v3, v4}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->loadLearnedBufferFrames(II)I

    move-result v5

    .line 948
    .local v5, "learnedFrames":I
    nop

    .line 949
    const/16 v0, 0x800

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 948
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 950
    .local v6, "initialFrames":I
    mul-int/lit8 v12, v4, 0x4

    .line 951
    .local v12, "buffer":I
    iput v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioMinBufferBytes:I

    .line 952
    iput v12, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioRequestedBufferBytes:I

    .line 953
    iput v6, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioAdaptiveInitialFrames:I

    .line 954
    iput v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioAdaptiveMaxFrames:I

    .line 955
    const/4 v14, 0x0

    iput v14, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioAdaptiveLastUnderruns:I

    .line 956
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioAdaptiveProbeWrites:J

    .line 958
    :try_start_0
    new-instance v7, Landroid/media/AudioTrack;

    const/4 v11, 0x2

    const/4 v13, 0x1

    const/4 v8, 0x3

    const v9, 0xac44

    const/16 v10, 0xc

    invoke-direct/range {v7 .. v13}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 961
    .local v7, "track":Landroid/media/AudioTrack;
    invoke-virtual {v7}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-virtual {v7}, Landroid/media/AudioTrack;->release()V

    return-void

    .line 962
    :cond_2
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/media/AudioTrack;->getNativeOutputSampleRate(I)I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioNativeOutputRate:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 964
    :try_start_1
    invoke-virtual {v7, v6}, Landroid/media/AudioTrack;->setBufferSizeInFrames(I)I

    move-result v0

    .line 965
    .local v0, "actual":I
    if-lez v0, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result v2

    :goto_0
    iput v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioBufferSizeFrames:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 969
    .end local v0    # "actual":I
    goto :goto_1

    .line 966
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 967
    .local v2, "ignored":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-virtual {v7}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioBufferSizeFrames:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 968
    goto :goto_1

    :catch_1
    move-exception v0

    .local v0, "ignored2":Ljava/lang/RuntimeException;
    :try_start_3
    iput v6, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioBufferSizeFrames:I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 970
    .end local v0    # "ignored2":Ljava/lang/RuntimeException;
    .end local v2    # "ignored":Ljava/lang/RuntimeException;
    :goto_1
    :try_start_4
    invoke-virtual {v7}, Landroid/media/AudioTrack;->getBufferCapacityInFrames()I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioBufferCapacityFrames:I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 971
    goto :goto_2

    :catch_2
    move-exception v0

    .local v0, "ignored":Ljava/lang/RuntimeException;
    :try_start_5
    iput v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioBufferCapacityFrames:I

    .line 972
    .end local v0    # "ignored":Ljava/lang/RuntimeException;
    :goto_2
    iget v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioBufferSizeFrames:I

    iget v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioBufferCapacityFrames:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioAdaptiveMaxFrames:I

    .line 973
    iput-boolean v14, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTrackStarted:Z

    .line 977
    iput-object v7, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTrack:Landroid/media/AudioTrack;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    .line 981
    .end local v7    # "track":Landroid/media/AudioTrack;
    goto :goto_3

    .line 978
    :catch_3
    move-exception v0

    .line 979
    .restart local v0    # "ignored":Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTrack:Landroid/media/AudioTrack;

    .line 980
    iput-boolean v14, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTrackStarted:Z

    .line 982
    .end local v0    # "ignored":Ljava/lang/RuntimeException;
    :goto_3
    return-void
.end method

.method private finishDac()V
    .locals 1

    .line 928
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->activeDac:Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;

    return-void
.end method

.method private static formatDiagnosticMs(J)Ljava/lang/String;
    .locals 5
    .param p0, "nanos"    # J

    .line 333
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

.method private static frameAt(JJ)J
    .locals 4
    .param p0, "start"    # J
    .param p2, "tick"    # J

    .line 850
    long-to-double v0, p2

    const-wide v2, 0x4086f80000000000L    # 735.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private hasAnyAudioWork()Z
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->scheduled:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->activeDac:Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->sfx:Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleAudio:Lcom/ahsim/demulation/GenesisTitleAudioRuntime;

    .line 379
    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->isEffectActive()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundQueuedBlocks:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundMusicActive:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 378
    :goto_1
    return v0
.end method

.method private loadLearnedBufferFrames(II)I
    .locals 4
    .param p1, "minFrames"    # I
    .param p2, "capacityFrames"    # I

    .line 542
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->adaptiveBufferPreferenceKey(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioAdaptivePreferenceKey:Ljava/lang/String;

    .line 543
    const/4 v0, 0x0

    .line 544
    .local v0, "learned":I
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->adaptiveAudioPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 545
    :try_start_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->adaptiveAudioPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioAdaptivePreferenceKey:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 546
    goto :goto_0

    :catchall_0
    move-exception v1

    .local v1, "ignored":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 548
    .end local v1    # "ignored":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 549
    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioAdaptiveLearnedFrames:I

    .line 550
    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioAdaptiveSavedFrames:I

    .line 551
    return v0
.end method

.method private pauseAndFlushTrack()V
    .locals 3

    .line 991
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTrack:Landroid/media/AudioTrack;

    .local v0, "track":Landroid/media/AudioTrack;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTrack:Landroid/media/AudioTrack;

    .line 992
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTrackStarted:Z

    .line 993
    if-nez v0, :cond_0

    return-void

    .line 994
    :cond_0
    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->accumulateClosedTrackUnderruns(Landroid/media/AudioTrack;)V

    .line 995
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 996
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 997
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 998
    :goto_2
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->mixFrame:J

    .line 999
    return-void
.end method

.method private pauseTrackWithoutFlush()V
    .locals 2

    .line 985
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTrack:Landroid/media/AudioTrack;

    .line 986
    .local v0, "track":Landroid/media/AudioTrack;
    if-nez v0, :cond_0

    return-void

    .line 987
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 988
    :goto_0
    return-void
.end method

.method private persistLearnedBufferFrames(I)V
    .locals 3
    .param p1, "frames"    # I

    .line 555
    iget v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioAdaptiveMaxFrames:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 556
    .local v0, "safe":I
    iget v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioAdaptiveSavedFrames:I

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->adaptiveAudioPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioAdaptivePreferenceKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 557
    :cond_0
    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioAdaptiveSavedFrames:I

    .line 558
    :try_start_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->adaptiveAudioPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioAdaptivePreferenceKey:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 559
    :catchall_0
    move-exception v1

    :goto_0
    nop

    .line 560
    return-void

    .line 556
    :cond_1
    :goto_1
    return-void
.end method

.method private recordActionDrain(J)V
    .locals 4
    .param p1, "nanos"    # J

    .line 1008
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioActionDrainCalls:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioActionDrainCalls:J

    .line 1009
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioActionDrainTotalNs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioActionDrainTotalNs:J

    .line 1010
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioActionDrainMaxNs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iput-wide p1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioActionDrainMaxNs:J

    .line 1011
    :cond_0
    return-void
.end method

.method private recordWrite(JJ)V
    .locals 4
    .param p1, "nanos"    # J
    .param p3, "cpuNanos"    # J

    .line 1014
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioWriteCalls:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioWriteCalls:J

    .line 1015
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioWriteTotalNs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioWriteTotalNs:J

    .line 1016
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioWriteMaxNs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iput-wide p1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioWriteMaxNs:J

    .line 1017
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_1

    .line 1018
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioWriteCpuTotalNs:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioWriteCpuTotalNs:J

    .line 1019
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioWriteCpuMaxNs:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    iput-wide p3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioWriteCpuMaxNs:J

    .line 1021
    :cond_1
    return-void
.end method

.method private render([S)V
    .locals 27
    .param p1, "out"    # [S

    .line 854
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 855
    .local v2, "renderStartNs":J
    invoke-static {}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->currentThreadCpuTimeNs()J

    move-result-wide v4

    .line 856
    .local v4, "renderStartCpuNs":J
    array-length v6, v1

    div-int/lit8 v6, v6, 0x2

    .line 858
    .local v6, "frames":I
    iget-wide v7, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->mixFrame:J

    invoke-direct {v0, v7, v8}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->drainActions(J)V

    .line 859
    iget-boolean v7, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerFault:Z

    if-nez v7, :cond_11

    .line 860
    iget-object v7, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundMix:[S

    invoke-direct {v0, v7}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->takeBackgroundBlock([S)V

    .line 862
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 863
    .local v7, "laneStartNs":J
    iget-object v9, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->sfx:Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;

    iget-object v10, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->sfxMix:[S

    iget v11, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->volumePercent:I

    invoke-virtual {v9, v10, v6, v11}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->renderStereo([SII)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 865
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v7

    .line 866
    .local v9, "laneNs":J
    iget-wide v11, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioSfxRenderTotalNs:J

    add-long/2addr v11, v9

    iput-wide v11, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioSfxRenderTotalNs:J

    .line 867
    iget-wide v11, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioSfxRenderMaxNs:J

    cmp-long v11, v9, v11

    if-lez v11, :cond_0

    iput-wide v9, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioSfxRenderMaxNs:J

    .line 869
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 870
    iget-object v11, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleAudio:Lcom/ahsim/demulation/GenesisTitleAudioRuntime;

    iget-object v12, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleEffectMix:[S

    iget v13, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->volumePercent:I

    invoke-virtual {v11, v12, v6, v13}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->renderEffectStereo([SII)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 872
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long/2addr v11, v7

    .line 873
    .end local v9    # "laneNs":J
    .local v11, "laneNs":J
    iget-wide v9, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTitleEffectRenderTotalNs:J

    add-long/2addr v9, v11

    iput-wide v9, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTitleEffectRenderTotalNs:J

    .line 874
    iget-wide v9, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTitleEffectRenderMaxNs:J

    cmp-long v9, v11, v9

    if-lez v9, :cond_1

    iput-wide v11, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTitleEffectRenderMaxNs:J

    .line 879
    :cond_1
    iget v9, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->musicVolumePercent:I

    const/16 v10, 0x64

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v13, 0x0

    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 880
    .local v9, "mvol":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v6, :cond_b

    .line 881
    iget-wide v14, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->mixFrame:J

    move-wide/from16 v16, v11

    .end local v11    # "laneNs":J
    .local v16, "laneNs":J
    int-to-long v10, v13

    add-long/2addr v14, v10

    .line 882
    .local v14, "f":J
    :goto_1
    iget-object v10, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->scheduled:Ljava/util/PriorityQueue;

    invoke-virtual {v10}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->scheduled:Ljava/util/PriorityQueue;

    invoke-virtual {v10}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Scheduled;

    iget-wide v10, v10, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Scheduled;->frame:J

    cmp-long v10, v10, v14

    if-gtz v10, :cond_2

    .line 883
    iget-object v10, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->scheduled:Ljava/util/PriorityQueue;

    invoke-virtual {v10}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Scheduled;

    invoke-virtual {v10, v0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Scheduled;->fire(Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;)V

    goto :goto_1

    .line 885
    :cond_2
    const/4 v10, 0x0

    .line 886
    .local v10, "dacMix":I
    iget-object v11, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->activeDac:Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;

    .line 887
    .local v11, "dac":Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;
    if-eqz v11, :cond_8

    .line 888
    move/from16 v18, v13

    .end local v13    # "i":I
    .local v18, "i":I
    iget-wide v12, v11, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;->position:D

    double-to-int v13, v12

    .line 889
    .local v13, "pos":I
    iget-object v12, v11, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;->sample:Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;

    iget v12, v12, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->firstLength:I

    if-lt v13, v12, :cond_3

    invoke-direct {v0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->finishDac()V

    move-wide/from16 v20, v2

    goto/16 :goto_5

    .line 891
    :cond_3
    iget-object v12, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    iget-object v1, v11, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;->sample:Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;

    invoke-virtual {v12, v1, v13}, Lcom/ahsim/demulation/GenesisGemsSfxData;->sampleByte(Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;I)I

    move-result v1

    add-int/lit8 v1, v1, -0x80

    .line 893
    .local v1, "sample0":I
    iget-boolean v12, v11, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;->smoothEffect:Z

    if-eqz v12, :cond_5

    add-int/lit8 v12, v13, 0x1

    move-wide/from16 v20, v2

    .end local v2    # "renderStartNs":J
    .local v20, "renderStartNs":J
    iget-object v2, v11, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;->sample:Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;

    iget v2, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->firstLength:I

    if-ge v12, v2, :cond_4

    .line 894
    iget-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    iget-object v3, v11, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;->sample:Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;

    add-int/lit8 v12, v13, 0x1

    invoke-virtual {v2, v3, v12}, Lcom/ahsim/demulation/GenesisGemsSfxData;->sampleByte(Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;I)I

    move-result v2

    add-int/lit8 v2, v2, -0x80

    .line 895
    .local v2, "sample1":I
    move v12, v2

    .end local v2    # "sample1":I
    .local v12, "sample1":I
    iget-wide v2, v11, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;->position:D

    move-wide/from16 v22, v2

    int-to-double v2, v13

    sub-double v2, v22, v2

    .line 896
    .local v2, "frac":D
    move-wide/from16 v22, v2

    .end local v2    # "frac":D
    .local v22, "frac":D
    int-to-double v2, v1

    move/from16 v24, v1

    .end local v1    # "sample0":I
    .local v24, "sample0":I
    sub-int v1, v12, v24

    move-wide/from16 v25, v2

    int-to-double v1, v1

    mul-double v1, v1, v22

    add-double v2, v25, v1

    const-wide/high16 v25, 0x4070000000000000L    # 256.0

    mul-double v2, v2, v25

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    .line 897
    .end local v12    # "sample1":I
    .end local v22    # "frac":D
    .local v1, "dacSample":I
    goto :goto_3

    .line 893
    .end local v24    # "sample0":I
    .local v1, "sample0":I
    :cond_4
    move/from16 v24, v1

    .end local v1    # "sample0":I
    .restart local v24    # "sample0":I
    goto :goto_2

    .end local v20    # "renderStartNs":J
    .end local v24    # "sample0":I
    .restart local v1    # "sample0":I
    .local v2, "renderStartNs":J
    :cond_5
    move/from16 v24, v1

    move-wide/from16 v20, v2

    .line 898
    .end local v1    # "sample0":I
    .end local v2    # "renderStartNs":J
    .restart local v20    # "renderStartNs":J
    .restart local v24    # "sample0":I
    :goto_2
    shl-int/lit8 v1, v24, 0x8

    .line 900
    .local v1, "dacSample":I
    :goto_3
    iget v2, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->volumePercent:I

    .line 901
    .local v2, "vol":I
    if-gtz v2, :cond_6

    const/4 v1, 0x0

    goto :goto_4

    .line 902
    :cond_6
    const/16 v12, 0x64

    if-ge v2, v12, :cond_7

    mul-int v3, v1, v2

    div-int/lit8 v1, v3, 0x64

    .line 903
    :cond_7
    :goto_4
    add-int/2addr v10, v1

    .line 904
    move v3, v13

    .end local v13    # "pos":I
    .local v3, "pos":I
    iget-wide v12, v11, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;->position:D

    move/from16 v23, v1

    move/from16 v22, v2

    .end local v1    # "dacSample":I
    .end local v2    # "vol":I
    .local v22, "vol":I
    .local v23, "dacSample":I
    iget-wide v1, v11, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;->step:D

    add-double/2addr v12, v1

    iput-wide v12, v11, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;->position:D

    .line 905
    iget-wide v1, v11, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;->position:D

    double-to-int v1, v1

    iget-object v2, v11, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;->sample:Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;

    iget v2, v2, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->firstLength:I

    if-lt v1, v2, :cond_9

    invoke-direct {v0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->finishDac()V

    goto :goto_5

    .line 887
    .end local v3    # "pos":I
    .end local v18    # "i":I
    .end local v20    # "renderStartNs":J
    .end local v22    # "vol":I
    .end local v23    # "dacSample":I
    .end local v24    # "sample0":I
    .local v2, "renderStartNs":J
    .local v13, "i":I
    :cond_8
    move-wide/from16 v20, v2

    move/from16 v18, v13

    .line 908
    .end local v2    # "renderStartNs":J
    .end local v13    # "i":I
    .restart local v18    # "i":I
    .restart local v20    # "renderStartNs":J
    :cond_9
    :goto_5
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundMix:[S

    mul-int/lit8 v13, v18, 0x2

    aget-short v1, v1, v13

    .line 909
    .local v1, "bgLeft":I
    iget-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundMix:[S

    mul-int/lit8 v13, v18, 0x2

    add-int/lit8 v13, v13, 0x1

    aget-short v2, v2, v13

    .line 910
    .local v2, "bgRight":I
    const/16 v12, 0x64

    if-eq v9, v12, :cond_a

    mul-int v3, v1, v9

    div-int/lit8 v1, v3, 0x64

    mul-int v3, v2, v9

    div-int/lit8 v2, v3, 0x64

    .line 911
    :cond_a
    iget-object v3, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->sfxMix:[S

    mul-int/lit8 v13, v18, 0x2

    aget-short v3, v3, v13

    add-int/2addr v3, v1

    iget-object v13, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleEffectMix:[S

    mul-int/lit8 v19, v18, 0x2

    aget-short v13, v13, v19

    add-int/2addr v3, v13

    add-int/2addr v3, v10

    .line 912
    .local v3, "left":I
    iget-object v13, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->sfxMix:[S

    mul-int/lit8 v19, v18, 0x2

    add-int/lit8 v19, v19, 0x1

    aget-short v13, v13, v19

    add-int/2addr v13, v2

    iget-object v12, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleEffectMix:[S

    mul-int/lit8 v22, v18, 0x2

    add-int/lit8 v22, v22, 0x1

    aget-short v12, v12, v22

    add-int/2addr v13, v12

    add-int/2addr v13, v10

    .line 913
    .local v13, "right":I
    mul-int/lit8 v12, v18, 0x2

    move/from16 v22, v1

    .end local v1    # "bgLeft":I
    .local v22, "bgLeft":I
    const/16 v1, 0x7fff

    move/from16 v23, v2

    .end local v2    # "bgRight":I
    .local v23, "bgRight":I
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/16 v1, -0x8000

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, p1, v12

    .line 914
    mul-int/lit8 v2, v18, 0x2

    add-int/lit8 v2, v2, 0x1

    const/16 v12, 0x7fff

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-short v1, v1

    aput-short v1, p1, v2

    .line 880
    .end local v3    # "left":I
    .end local v10    # "dacMix":I
    .end local v11    # "dac":Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;
    .end local v13    # "right":I
    .end local v14    # "f":J
    .end local v22    # "bgLeft":I
    .end local v23    # "bgRight":I
    add-int/lit8 v13, v18, 0x1

    move-object/from16 v1, p1

    move-wide/from16 v11, v16

    move-wide/from16 v2, v20

    const/16 v10, 0x64

    .end local v18    # "i":I
    .local v13, "i":I
    goto/16 :goto_0

    .end local v16    # "laneNs":J
    .end local v20    # "renderStartNs":J
    .local v2, "renderStartNs":J
    .local v11, "laneNs":J
    :cond_b
    move-wide/from16 v20, v2

    move-wide/from16 v16, v11

    move/from16 v18, v13

    .line 916
    .end local v2    # "renderStartNs":J
    .end local v11    # "laneNs":J
    .end local v13    # "i":I
    .restart local v16    # "laneNs":J
    .restart local v20    # "renderStartNs":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long v1, v1, v20

    .line 917
    .local v1, "renderNs":J
    invoke-static {v4, v5}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->elapsedThreadCpuNs(J)J

    move-result-wide v10

    .line 918
    .local v10, "renderCpuNs":J
    iget-wide v12, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioRenderBlocks:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    iput-wide v12, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioRenderBlocks:J

    .line 919
    iget-wide v12, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioRenderTotalNs:J

    add-long/2addr v12, v1

    iput-wide v12, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioRenderTotalNs:J

    .line 920
    iget-wide v12, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioRenderMaxNs:J

    cmp-long v3, v1, v12

    if-lez v3, :cond_c

    iput-wide v1, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioRenderMaxNs:J

    .line 921
    :cond_c
    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-ltz v3, :cond_d

    .line 922
    iget-wide v12, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioRenderCpuTotalNs:J

    add-long/2addr v12, v10

    iput-wide v12, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioRenderCpuTotalNs:J

    .line 923
    iget-wide v12, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioRenderCpuMaxNs:J

    cmp-long v3, v10, v12

    if-lez v3, :cond_d

    iput-wide v10, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioRenderCpuMaxNs:J

    .line 925
    :cond_d
    sget-wide v12, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->BLOCK_BUDGET_NS:J

    cmp-long v3, v1, v12

    if-lez v3, :cond_e

    iget-wide v12, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioRenderOverBudget:J

    add-long/2addr v12, v14

    iput-wide v12, v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioRenderOverBudget:J

    .line 926
    :cond_e
    return-void

    .line 871
    .end local v1    # "renderNs":J
    .end local v10    # "renderCpuNs":J
    .end local v16    # "laneNs":J
    .end local v20    # "renderStartNs":J
    .restart local v2    # "renderStartNs":J
    .local v9, "laneNs":J
    :cond_f
    move-wide/from16 v20, v2

    .end local v2    # "renderStartNs":J
    .restart local v20    # "renderStartNs":J
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "libgme title effect render failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 864
    .end local v9    # "laneNs":J
    .end local v20    # "renderStartNs":J
    .restart local v2    # "renderStartNs":J
    :cond_10
    move-wide/from16 v20, v2

    .end local v2    # "renderStartNs":J
    .restart local v20    # "renderStartNs":J
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "libgme gameplay SFX render failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 859
    .end local v7    # "laneStartNs":J
    .end local v20    # "renderStartNs":J
    .restart local v2    # "renderStartNs":J
    :cond_11
    move-wide/from16 v20, v2

    .end local v2    # "renderStartNs":J
    .restart local v20    # "renderStartNs":J
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "background GME producer fault"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static sleepQuietly(J)V
    .locals 2
    .param p0, "millis"    # J

    .line 1035
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1037
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method private startDac(Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ScheduledDac;)V
    .locals 8
    .param p1, "next"    # Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ScheduledDac;

    .line 931
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    iget-object v1, p1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ScheduledDac;->event:Lcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;

    iget v1, v1, Lcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;->sampleIndex:I

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/GenesisGemsSfxData;->sample(I)Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;

    move-result-object v0

    .line 932
    .local v0, "sample":Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;
    if-eqz v0, :cond_2

    iget v1, v0, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->firstLength:I

    if-lez v1, :cond_2

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->looped()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->fourBit()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 933
    :cond_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    iget-object v2, p1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ScheduledDac;->event:Lcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;

    invoke-virtual {v1, v2, v0}, Lcom/ahsim/demulation/GenesisGemsSfxData;->effectiveRateCode(Lcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;)I

    move-result v1

    .line 934
    .local v1, "rateCode":I
    invoke-static {v1}, Lcom/ahsim/demulation/GenesisGemsSfxData;->sampleRateHz(I)D

    move-result-wide v2

    .line 935
    .local v2, "sourceRate":D
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_1

    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->finishDac()V

    return-void

    .line 936
    :cond_1
    new-instance v4, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;

    iget v5, p1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ScheduledDac;->sequence:I

    const-wide v6, 0x40e5888000000000L    # 44100.0

    div-double v6, v2, v6

    invoke-direct {v4, v5, v0, v6, v7}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;-><init>(ILcom/ahsim/demulation/GenesisGemsSfxData$Sample;D)V

    iput-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->activeDac:Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;

    .line 937
    return-void

    .line 932
    .end local v1    # "rateCode":I
    .end local v2    # "sourceRate":D
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->finishDac()V

    return-void
.end method

.method private startSfxSequenceLocked(IJ)V
    .locals 14
    .param p1, "sequence"    # I
    .param p2, "nowFrame"    # J

    .line 834
    move v5, p1

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    invoke-virtual {v0, p1}, Lcom/ahsim/demulation/GenesisGemsSfxData;->plan(I)Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;

    move-result-object v7

    .line 835
    .local v7, "plan":Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;
    if-eqz v7, :cond_5

    iget-boolean v0, v7, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->hasNonSfxTimedDac:Z

    if-nez v0, :cond_5

    iget-boolean v0, v7, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->hasNonSfxTimedHardware:Z

    if-nez v0, :cond_5

    iget-boolean v0, v7, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->hasUnsupportedControl:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 836
    :cond_0
    move-wide/from16 v8, p2

    .line 837
    .local v8, "start":J
    iget-boolean v0, v7, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->usesFm:Z

    if-nez v0, :cond_1

    iget-boolean v0, v7, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->usesPsgTone:Z

    if-nez v0, :cond_1

    iget-boolean v0, v7, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->usesPsgNoise:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->sfx:Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;

    invoke-virtual {v0, p1}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->play(I)Z

    .line 841
    :cond_2
    iget-object v0, v7, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->controlEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-wide/16 v11, 0x1

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;

    .line 842
    .local v6, "event":Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;
    iget-object v13, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->scheduled:Ljava/util/PriorityQueue;

    new-instance v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ScheduledControl;

    iget-wide v1, v6, Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;->tick:J

    invoke-static {v8, v9, v1, v2}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->frameAt(JJ)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->eventSerial:J

    add-long/2addr v3, v11

    iput-wide v3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->eventSerial:J

    invoke-direct/range {v0 .. v6}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ScheduledControl;-><init>(JJILcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;)V

    invoke-virtual {v13, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    move v5, p1

    goto :goto_0

    .line 845
    .end local v6    # "event":Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;
    :cond_3
    iget-object v0, v7, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->dacEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;

    .line 846
    .local v6, "event":Lcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;
    iget-object v13, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->scheduled:Ljava/util/PriorityQueue;

    new-instance v0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ScheduledDac;

    iget-wide v1, v6, Lcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;->tick:J

    invoke-static {v8, v9, v1, v2}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->frameAt(JJ)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->eventSerial:J

    add-long/2addr v3, v11

    iput-wide v3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->eventSerial:J

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ScheduledDac;-><init>(JJILcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;)V

    invoke-virtual {v13, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 847
    .end local v6    # "event":Lcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;
    :cond_4
    return-void

    .line 835
    .end local v8    # "start":J
    :cond_5
    :goto_2
    return-void
.end method

.method private takeBackgroundBlock([S)V
    .locals 9
    .param p1, "out"    # [S

    .line 514
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([SS)V

    .line 515
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/32 v3, 0x2625a00

    add-long/2addr v1, v3

    .line 516
    .local v1, "deadline":J
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingLock:Ljava/lang/Object;

    monitor-enter v3

    .line 517
    :try_start_0
    iget-boolean v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->released:Z

    const-wide/16 v5, 0x1

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerFault:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundMusicActive:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundTransitionPrefill:Z

    if-eqz v4, :cond_0

    .line 518
    iget-wide v7, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundPrefillSilenceBlocks:J

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundPrefillSilenceBlocks:J

    .line 519
    monitor-exit v3

    return-void

    .line 521
    :cond_0
    iget-boolean v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->released:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerFault:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundMusicActive:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingCount:I

    if-nez v4, :cond_1

    .line 522
    iget-wide v7, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingStarvations:J

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingStarvations:J

    .line 523
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->released:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerFault:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundMusicActive:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingCount:I

    if-nez v4, :cond_2

    .line 524
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v4, v1

    if-gez v4, :cond_2

    .line 525
    :try_start_1
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingLock:Ljava/lang/Object;

    const-wide/16 v5, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 526
    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    monitor-exit v3

    return-void

    .line 528
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingCount:I

    if-gtz v4, :cond_3

    monitor-exit v3

    return-void

    .line 529
    :cond_3
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRing:[[S

    iget v5, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingRead:I

    aget-object v4, v4, v5

    array-length v5, p1

    invoke-static {v4, v0, p1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 530
    iget v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingRead:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingRead:I

    .line 531
    iget v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingCount:I

    .line 532
    iget v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingCount:I

    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundQueuedBlocks:I

    .line 533
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 534
    monitor-exit v3

    .line 535
    return-void

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private updateBackgroundStateLocked(Z)V
    .locals 7
    .param p1, "discardQueued"    # Z

    .line 386
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->music:Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleAudio:Lcom/ahsim/demulation/GenesisTitleAudioRuntime;

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->isMusicActive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 387
    .local v0, "active":Z
    :goto_1
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingLock:Ljava/lang/Object;

    monitor-enter v2

    .line 388
    if-eqz p1, :cond_2

    .line 389
    :try_start_0
    iget-wide v3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundGeneration:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundGeneration:J

    .line 390
    iput v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingRead:I

    .line 391
    iput v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingWrite:I

    .line 392
    iput v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingCount:I

    .line 393
    iput v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundQueuedBlocks:I

    .line 394
    iget-wide v3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingFlushes:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingFlushes:J

    .line 399
    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundTransitionPrefill:Z

    .line 400
    if-eqz v0, :cond_3

    iget-wide v3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundTransitionPrefills:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundTransitionPrefills:J

    goto :goto_2

    .line 406
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 401
    :cond_2
    if-nez v0, :cond_3

    .line 402
    iput-boolean v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundTransitionPrefill:Z

    .line 404
    :cond_3
    :goto_2
    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundMusicActive:Z

    .line 405
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 406
    monitor-exit v2

    .line 407
    return-void

    .line 406
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static usesDacReconstruction(I)Z
    .locals 1
    .param p0, "sequence"    # I

    .line 100
    packed-switch p0, :pswitch_data_0

    .line 112
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 110
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private waitForBackgroundStartupPrefill()V
    .locals 7

    .line 502
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundMusicActive:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundQueuedBlocks:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 503
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xee6b280

    add-long/2addr v2, v4

    .line 504
    .local v2, "deadline":J
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 505
    :goto_0
    :try_start_0
    iget-boolean v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->released:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerFault:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundMusicActive:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingCount:I

    if-ge v4, v1, :cond_1

    .line 506
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v4, v2

    if-gez v4, :cond_1

    .line 507
    :try_start_1
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingLock:Ljava/lang/Object;

    const-wide/16 v5, 0x4

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    monitor-exit v0

    return-void

    .line 510
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    monitor-exit v0

    .line 511
    return-void

    .line 510
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 502
    .end local v2    # "deadline":J
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method audioCurrentTrackUnderrunsForDiagnostics()I
    .locals 3

    .line 287
    nop

    .line 288
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTrack:Landroid/media/AudioTrack;

    .line 289
    .local v0, "track":Landroid/media/AudioTrack;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 290
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getUnderrunCount()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 291
    :catch_0
    move-exception v1

    .local v1, "ignored":Ljava/lang/RuntimeException;
    const/4 v2, -0x1

    return v2
.end method

.method audioPerformanceSummaryForDiagnostics()Ljava/lang/String;
    .locals 14

    .line 294
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioRenderBlocks:J

    .line 295
    .local v0, "blocks":J
    iget-wide v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioWriteCalls:J

    .line 296
    .local v2, "writes":J
    iget-wide v4, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioActionDrainCalls:J

    .line 297
    .local v4, "drains":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "thread_priority="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioThreadPriority:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " native_rate="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioNativeOutputRate:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " min_buffer_bytes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioMinBufferBytes:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " requested_buffer_bytes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioRequestedBufferBytes:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " buffer_size_frames="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioBufferSizeFrames:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " buffer_capacity_frames="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioBufferCapacityFrames:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " track_started="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTrackStarted:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " underruns_lifetime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 304
    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioUnderrunCountForDiagnostics()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " underruns_current_track="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 305
    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioCurrentTrackUnderrunsForDiagnostics()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " render_blocks="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " render_avg/max_ms="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 307
    const-wide/16 v7, 0x0

    cmp-long v9, v0, v7

    if-lez v9, :cond_0

    iget-wide v9, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioRenderTotalNs:J

    div-long/2addr v9, v0

    goto :goto_0

    :cond_0
    move-wide v9, v7

    :goto_0
    invoke-static {v9, v10}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->formatDiagnosticMs(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioRenderMaxNs:J

    invoke-static {v10, v11}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->formatDiagnosticMs(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " render_cpu_avg/max_ms="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 308
    cmp-long v10, v0, v7

    if-lez v10, :cond_1

    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioRenderCpuTotalNs:J

    div-long/2addr v10, v0

    goto :goto_1

    :cond_1
    move-wide v10, v7

    :goto_1
    invoke-static {v10, v11}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->formatDiagnosticMs(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioRenderCpuMaxNs:J

    invoke-static {v10, v11}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->formatDiagnosticMs(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " render_sched_gap_avg_ms="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 309
    cmp-long v10, v0, v7

    if-lez v10, :cond_2

    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioRenderTotalNs:J

    iget-wide v12, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioRenderCpuTotalNs:J

    sub-long/2addr v10, v12

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    div-long/2addr v10, v0

    goto :goto_2

    :cond_2
    move-wide v10, v7

    :goto_2
    invoke-static {v10, v11}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->formatDiagnosticMs(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " render_over_11_61ms="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioRenderOverBudget:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " music_bg_avg/max_ms="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 311
    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerBlocks:J

    cmp-long v10, v10, v7

    if-lez v10, :cond_3

    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioMusicRenderTotalNs:J

    iget-wide v12, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerBlocks:J

    div-long/2addr v10, v12

    goto :goto_3

    :cond_3
    move-wide v10, v7

    :goto_3
    invoke-static {v10, v11}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->formatDiagnosticMs(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioMusicRenderMaxNs:J

    invoke-static {v10, v11}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->formatDiagnosticMs(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " title_bg_avg/max_ms="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 312
    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerBlocks:J

    cmp-long v10, v10, v7

    if-lez v10, :cond_4

    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTitleRenderTotalNs:J

    iget-wide v12, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerBlocks:J

    div-long/2addr v10, v12

    goto :goto_4

    :cond_4
    move-wide v10, v7

    :goto_4
    invoke-static {v10, v11}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->formatDiagnosticMs(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTitleRenderMaxNs:J

    invoke-static {v10, v11}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->formatDiagnosticMs(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " sfx_avg/max_ms="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 313
    cmp-long v10, v0, v7

    if-lez v10, :cond_5

    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioSfxRenderTotalNs:J

    div-long/2addr v10, v0

    goto :goto_5

    :cond_5
    move-wide v10, v7

    :goto_5
    invoke-static {v10, v11}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->formatDiagnosticMs(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioSfxRenderMaxNs:J

    invoke-static {v10, v11}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->formatDiagnosticMs(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " title_effect_avg/max_ms="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 314
    cmp-long v10, v0, v7

    if-lez v10, :cond_6

    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTitleEffectRenderTotalNs:J

    div-long/2addr v10, v0

    goto :goto_6

    :cond_6
    move-wide v10, v7

    :goto_6
    invoke-static {v10, v11}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->formatDiagnosticMs(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTitleEffectRenderMaxNs:J

    invoke-static {v10, v11}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->formatDiagnosticMs(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " action_drain_avg/max_ms="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 315
    cmp-long v10, v4, v7

    if-lez v10, :cond_7

    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioActionDrainTotalNs:J

    div-long/2addr v10, v4

    goto :goto_7

    :cond_7
    move-wide v10, v7

    :goto_7
    invoke-static {v10, v11}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->formatDiagnosticMs(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioActionDrainMaxNs:J

    invoke-static {v10, v11}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->formatDiagnosticMs(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " write_avg/max_ms="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 316
    cmp-long v10, v2, v7

    if-lez v10, :cond_8

    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioWriteTotalNs:J

    div-long/2addr v10, v2

    goto :goto_8

    :cond_8
    move-wide v10, v7

    :goto_8
    invoke-static {v10, v11}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->formatDiagnosticMs(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioWriteMaxNs:J

    invoke-static {v10, v11}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->formatDiagnosticMs(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " write_cpu_avg/max_ms="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 317
    cmp-long v10, v2, v7

    if-lez v10, :cond_9

    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioWriteCpuTotalNs:J

    div-long/2addr v10, v2

    goto :goto_9

    :cond_9
    move-wide v10, v7

    :goto_9
    invoke-static {v10, v11}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->formatDiagnosticMs(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioWriteCpuMaxNs:J

    invoke-static {v10, v11}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->formatDiagnosticMs(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " adaptive_initial/max_frames="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioAdaptiveInitialFrames:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioAdaptiveMaxFrames:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " adaptive_grows="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioAdaptiveGrowCount:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " adaptive_learned/saved_frames="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioAdaptiveLearnedFrames:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioAdaptiveSavedFrames:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " lookahead_blocks="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundQueuedBlocks:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " lookahead_high_water="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingHighWater:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " lookahead_starvations="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingStarvations:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " lookahead_flushes="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingFlushes:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " transition_prefills="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundTransitionPrefills:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " transition_prefill_silence_blocks="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundPrefillSilenceBlocks:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " producer_blocks="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerBlocks:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " producer_wall_avg/max_ms="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 328
    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerBlocks:J

    cmp-long v10, v10, v7

    if-lez v10, :cond_a

    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerWallTotalNs:J

    iget-wide v12, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerBlocks:J

    div-long/2addr v10, v12

    goto :goto_a

    :cond_a
    move-wide v10, v7

    :goto_a
    invoke-static {v10, v11}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->formatDiagnosticMs(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerWallMaxNs:J

    invoke-static {v10, v11}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->formatDiagnosticMs(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " producer_cpu_avg/max_ms="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 329
    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerBlocks:J

    cmp-long v10, v10, v7

    if-lez v10, :cond_b

    iget-wide v7, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerCpuTotalNs:J

    iget-wide v10, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerBlocks:J

    div-long/2addr v7, v10

    :cond_b
    invoke-static {v7, v8}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->formatDiagnosticMs(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerCpuMaxNs:J

    invoke-static {v7, v8}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->formatDiagnosticMs(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 330
    invoke-static {}, Lcom/ahsim/demulation/GenesisLibGmeMusic;->timingSummaryForDiagnostics()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 297
    return-object v6
.end method

.method audioRecoveryCountForDiagnostics()I
    .locals 1

    .line 277
    iget v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioRecoveryCount:I

    return v0
.end method

.method audioUnderrunCountForDiagnostics()J
    .locals 5

    .line 279
    nop

    .line 280
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->closedTrackUnderruns:J

    .line 281
    .local v0, "closed":J
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTrack:Landroid/media/AudioTrack;

    .line 282
    .local v2, "track":Landroid/media/AudioTrack;
    if-nez v2, :cond_0

    return-wide v0

    .line 283
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getUnderrunCount()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v3, v3

    add-long/2addr v3, v0

    return-wide v3

    .line 284
    :catch_0
    move-exception v3

    .local v3, "ignored":Ljava/lang/RuntimeException;
    return-wide v0
.end method

.method currentGameplayMusicRequest()I
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->music:Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->currentRequest()I

    move-result v0

    return v0
.end method

.method dataForDiagnostics()Lcom/ahsim/demulation/GenesisGemsSfxData;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    return-object v0
.end method

.method directSequenceForEvent(I)I
    .locals 1
    .param p1, "event"    # I

    .line 265
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->data:Lcom/ahsim/demulation/GenesisGemsSfxData;

    invoke-virtual {v0, p1}, Lcom/ahsim/demulation/GenesisGemsSfxData;->directSequenceForEvent(I)I

    move-result v0

    return v0
.end method

.method isOriginalTitleMusicReady()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->originalTitleMusicReady:Z

    return v0
.end method

.method needsGameplayMusicRequest()Z
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->music:Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->needsGameplayRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundQueuedBlocks:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method play(I)V
    .locals 1
    .param p1, "sequence"    # I

    .line 338
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->enqueue(II)V

    return-void
.end method

.method playDirectEvent(I)V
    .locals 1
    .param p1, "event"    # I

    .line 267
    invoke-virtual {p0, p1}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->directSequenceForEvent(I)I

    move-result v0

    .line 268
    .local v0, "sequence":I
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->play(I)V

    .line 269
    :cond_0
    return-void
.end method

.method playOptionsSoundTestSequence(I)V
    .locals 1
    .param p1, "sequence"    # I

    .line 262
    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->enqueue(II)V

    return-void
.end method

.method playOriginalTitleSequence(I)V
    .locals 1
    .param p1, "sequence"    # I

    .line 263
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->enqueue(II)V

    return-void
.end method

.method prepareOriginalTitleMusic()V
    .locals 2

    .line 253
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->enqueue(II)V

    return-void
.end method

.method release()V
    .locals 5

    .line 343
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->released:Z

    if-eqz v0, :cond_0

    return-void

    .line 344
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->released:Z

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->originalTitleMusicReady:Z

    .line 346
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->wakeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->wakeLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 347
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRingLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 348
    const-wide/16 v1, 0x1f4

    :try_start_2
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioThread:Ljava/lang/Thread;

    invoke-virtual {v3, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 349
    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 350
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_0
    :try_start_3
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundProducerThread:Ljava/lang/Thread;

    invoke-virtual {v3, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 351
    goto :goto_1

    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 352
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_1
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTrack:Landroid/media/AudioTrack;

    .line 353
    .local v1, "track":Landroid/media/AudioTrack;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTrack:Landroid/media/AudioTrack;

    .line 354
    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->audioTrackStarted:Z

    .line 355
    if-eqz v1, :cond_1

    .line 356
    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->accumulateClosedTrackUnderruns(Landroid/media/AudioTrack;)V

    .line 357
    :try_start_4
    invoke-virtual {v1}, Landroid/media/AudioTrack;->pause()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 358
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Landroid/media/AudioTrack;->flush()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 359
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 361
    :cond_1
    :goto_4
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->sfx:Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->release()V

    .line 362
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->backgroundRuntimeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_7
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->music:Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;

    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisGameplayMusicRuntime;->release()V

    .line 364
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->titleAudio:Lcom/ahsim/demulation/GenesisTitleAudioRuntime;

    invoke-virtual {v2}, Lcom/ahsim/demulation/GenesisTitleAudioRuntime;->release()V

    .line 365
    monitor-exit v0

    .line 366
    return-void

    .line 365
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v2

    .line 347
    .end local v1    # "track":Landroid/media/AudioTrack;
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    .line 346
    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0
.end method

.method resumeAfterAndroidPause()V
    .locals 2

    .line 337
    const/16 v0, 0x8

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->enqueue(II)V

    return-void
.end method

.method setMusicVolumePercent(I)V
    .locals 2
    .param p1, "volume"    # I

    .line 248
    const/16 v0, 0x64

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->musicVolumePercent:I

    .line 249
    return-void
.end method

.method setVolumePercent(I)V
    .locals 2
    .param p1, "volume"    # I

    .line 245
    const/16 v0, 0x64

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->volumePercent:I

    .line 246
    return-void
.end method

.method startFrontendMusicRequest(I)V
    .locals 1
    .param p1, "request"    # I

    .line 252
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->enqueue(II)V

    return-void
.end method

.method startGameplayMusic()V
    .locals 2

    .line 250
    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->enqueue(II)V

    return-void
.end method

.method startGameplayMusicRequest(I)V
    .locals 1
    .param p1, "request"    # I

    .line 251
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->enqueue(II)V

    return-void
.end method

.method startMusicTestSequence(I)V
    .locals 1
    .param p1, "sequence"    # I

    .line 261
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->enqueue(II)V

    return-void
.end method

.method startOriginalTitleMenuMusic()V
    .locals 2

    .line 259
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->enqueue(II)V

    return-void
.end method

.method startOriginalTitleMusic()V
    .locals 2

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->originalTitleMusicReady:Z

    .line 256
    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->enqueue(II)V

    .line 257
    return-void
.end method

.method startTutorialMusicSequence(I)V
    .locals 1
    .param p1, "sequence"    # I

    .line 260
    const/16 v0, 0x11

    invoke-direct {p0, v0, p1}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->enqueue(II)V

    return-void
.end method

.method stop(I)V
    .locals 1
    .param p1, "sequence"    # I

    .line 339
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->enqueue(II)V

    return-void
.end method

.method stopAll()V
    .locals 2

    .line 340
    const/4 v0, 0x3

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->enqueue(II)V

    return-void
.end method

.method stopMusic()V
    .locals 2

    .line 335
    const/4 v0, 0x5

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->enqueue(II)V

    return-void
.end method

.method stopOriginalTitleSequence(I)V
    .locals 1
    .param p1, "sequence"    # I

    .line 264
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->enqueue(II)V

    return-void
.end method

.method suspendForAndroidPause()V
    .locals 2

    .line 336
    const/4 v0, 0x7

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->enqueue(II)V

    return-void
.end method
