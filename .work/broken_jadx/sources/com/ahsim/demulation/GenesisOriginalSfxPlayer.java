package com.ahsim.demulation;

import android.content.SharedPreferences;
import android.media.AudioTrack;
import android.os.Debug;
import android.os.Process;
import com.ahsim.demulation.GenesisGemsSfxData;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;
import java.util.concurrent.ConcurrentLinkedQueue;

/* loaded from: classes2.dex */
final class GenesisOriginalSfxPlayer {
    private static final int ACTION_ANDROID_RESUME = 8;
    private static final int ACTION_ANDROID_SUSPEND = 7;
    private static final int ACTION_MUSIC_DIRECT_SEQUENCE = 14;
    private static final int ACTION_MUSIC_FRONTEND_REQUEST = 9;
    private static final int ACTION_MUSIC_GAMEPLAY = 4;
    private static final int ACTION_MUSIC_REQUEST = 6;
    private static final int ACTION_MUSIC_STOP = 5;
    private static final int ACTION_OPTIONS_SOUND_TEST = 15;
    private static final int ACTION_PLAY = 1;
    private static final int ACTION_STOP = 2;
    private static final int ACTION_STOP_ALL = 3;
    private static final int ACTION_TITLE_EFFECT = 11;
    private static final int ACTION_TITLE_EFFECT_STOP = 12;
    private static final int ACTION_TITLE_MENU_MUSIC_START = 13;
    private static final int ACTION_TITLE_MUSIC_PREPARE = 16;
    private static final int ACTION_TITLE_MUSIC_START = 10;
    private static final int ACTION_TUTORIAL_MUSIC_START = 17;
    private static final long BLOCK_BUDGET_NS = Math.round(1.1609977324263038E7d);
    private static final int BLOCK_FRAMES = 512;
    private static final int BYTES_PER_FRAME = 4;
    private static final int LOOKAHEAD_BLOCKS = 8;
    private static final int LOOKAHEAD_START_BLOCKS = 3;
    private static final int OUTPUT_RATE = 44100;
    private static final int TRACK_CAPACITY_BLOCKS = 8;
    private static final int TRACK_INITIAL_BLOCKS = 4;
    private final ConcurrentLinkedQueue<Action> actions;
    private ActiveDac activeDac;
    private final SharedPreferences adaptiveAudioPreferences;
    private volatile boolean androidSuspended;
    private volatile long audioActionDrainCalls;
    private volatile long audioActionDrainMaxNs;
    private volatile long audioActionDrainTotalNs;
    private volatile int audioAdaptiveGrowCount;
    private volatile int audioAdaptiveInitialFrames;
    private int audioAdaptiveLastUnderruns;
    private volatile int audioAdaptiveLearnedFrames;
    private volatile int audioAdaptiveMaxFrames;
    private String audioAdaptivePreferenceKey;
    private long audioAdaptiveProbeWrites;
    private volatile int audioAdaptiveSavedFrames;
    private volatile int audioBufferCapacityFrames;
    private volatile int audioBufferSizeFrames;
    private volatile int audioMinBufferBytes;
    private volatile long audioMusicRenderMaxNs;
    private volatile long audioMusicRenderTotalNs;
    private volatile int audioNativeOutputRate;
    private volatile int audioRecoveryCount;
    private volatile long audioRenderBlocks;
    private volatile long audioRenderCpuMaxNs;
    private volatile long audioRenderCpuTotalNs;
    private volatile long audioRenderMaxNs;
    private volatile long audioRenderOverBudget;
    private volatile long audioRenderTotalNs;
    private volatile int audioRequestedBufferBytes;
    private volatile long audioSfxRenderMaxNs;
    private volatile long audioSfxRenderTotalNs;
    private final Thread audioThread;
    private volatile int audioThreadPriority;
    private volatile long audioTitleEffectRenderMaxNs;
    private volatile long audioTitleEffectRenderTotalNs;
    private volatile long audioTitleRenderMaxNs;
    private volatile long audioTitleRenderTotalNs;
    private volatile AudioTrack audioTrack;
    private volatile boolean audioTrackStarted;
    private volatile long audioWriteCalls;
    private volatile long audioWriteCpuMaxNs;
    private volatile long audioWriteCpuTotalNs;
    private volatile long audioWriteMaxNs;
    private volatile long audioWriteTotalNs;
    private long backgroundGeneration;
    private final short[] backgroundMix;
    private volatile boolean backgroundMusicActive;
    private volatile long backgroundPrefillSilenceBlocks;
    private volatile long backgroundProducerBlocks;
    private volatile long backgroundProducerCpuMaxNs;
    private volatile long backgroundProducerCpuTotalNs;
    private volatile boolean backgroundProducerFault;
    private final Thread backgroundProducerThread;
    private volatile long backgroundProducerWallMaxNs;
    private volatile long backgroundProducerWallTotalNs;
    private volatile int backgroundQueuedBlocks;
    private final short[][] backgroundRing;
    private int backgroundRingCount;
    private volatile long backgroundRingFlushes;
    private volatile int backgroundRingHighWater;
    private final Object backgroundRingLock;
    private int backgroundRingRead;
    private volatile long backgroundRingStarvations;
    private int backgroundRingWrite;
    private final Object backgroundRuntimeLock;
    private volatile boolean backgroundTransitionPrefill;
    private volatile long backgroundTransitionPrefills;
    private volatile long closedTrackUnderruns;
    private final GenesisGemsSfxData data;
    private long eventSerial;
    private long mixFrame;
    private final GenesisGameplayMusicRuntime music;
    private volatile int musicVolumePercent;
    private volatile boolean originalTitleMusicReady;
    private final short[] producerMusicMix;
    private final short[] producerTitleMix;
    private volatile boolean released;
    private final PriorityQueue<Scheduled> scheduled;
    private final GenesisLibGmeSfxRuntime sfx;
    private final short[] sfxMix;
    private final GenesisTitleAudioRuntime titleAudio;
    private final GenesisGemsSfxData titleData;
    private final short[] titleEffectMix;
    private volatile int volumePercent;
    private final Object wakeLock;

    private static final class Action {
        final int sequence;
        final int type;

        Action(int type, int sequence) {
            this.type = type;
            this.sequence = sequence;
        }
    }

    private static abstract class Scheduled implements Comparable<Scheduled> {
        final long frame;
        final int sequence;
        final long serial;

        abstract void fire(GenesisOriginalSfxPlayer genesisOriginalSfxPlayer);

        Scheduled(long frame, long serial, int sequence) {
            this.frame = frame;
            this.serial = serial;
            this.sequence = sequence;
        }

        @Override // java.lang.Comparable
        public int compareTo(Scheduled other) {
            int c = Long.compare(this.frame, other.frame);
            return c != 0 ? c : Long.compare(this.serial, other.serial);
        }
    }

    private static final class ScheduledDac extends Scheduled {
        final GenesisGemsSfxData.DacEvent event;

        ScheduledDac(long f, long s, int seq, GenesisGemsSfxData.DacEvent e) {
            super(f, s, seq);
            this.event = e;
        }

        @Override // com.ahsim.demulation.GenesisOriginalSfxPlayer.Scheduled
        void fire(GenesisOriginalSfxPlayer p) {
            p.startDac(this);
        }
    }

    private static final class ScheduledControl extends Scheduled {
        final GenesisGemsSfxData.ControlEvent event;

        ScheduledControl(long f, long s, int seq, GenesisGemsSfxData.ControlEvent e) {
            super(f, s, seq);
            this.event = e;
        }

        @Override // com.ahsim.demulation.GenesisOriginalSfxPlayer.Scheduled
        void fire(GenesisOriginalSfxPlayer p) {
            if (this.event.control == 4) {
                p.sfx.setMasterAttenuation(this.event.value);
            }
        }
    }

    private static final class ActiveDac {
        double position;
        final GenesisGemsSfxData.Sample sample;
        final int sequence;
        final boolean smoothEffect;
        final double step;

        ActiveDac(int sequence, GenesisGemsSfxData.Sample sample, double step) {
            this.sequence = sequence;
            this.sample = sample;
            this.step = step;
            this.smoothEffect = GenesisOriginalSfxPlayer.usesDacReconstruction(sequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean usesDacReconstruction(int sequence) {
        switch (sequence) {
            case 69:
            case 71:
            case 72:
            case RazorSpriteBankAudit.VERIFIED_BLOCK_COUNT /* 73 */:
            case 74:
            case 75:
            case 76:
            case 77:
            case 78:
                return true;
            case 70:
            default:
                return false;
        }
    }

    GenesisOriginalSfxPlayer(byte[] rom) {
        this(GenesisAudioSource.fromRom(rom), null);
    }

    GenesisOriginalSfxPlayer(GenesisAudioSource source) {
        this(source, null);
    }

    GenesisOriginalSfxPlayer(GenesisAudioSource source, SharedPreferences adaptiveAudioPreferences) {
        this.actions = new ConcurrentLinkedQueue<>();
        this.wakeLock = new Object();
        this.scheduled = new PriorityQueue<>();
        this.backgroundRuntimeLock = new Object();
        this.backgroundRingLock = new Object();
        this.volumePercent = 100;
        this.musicVolumePercent = 100;
        this.backgroundMix = new short[RazorTerrainAtlas.HEIGHT];
        this.sfxMix = new short[RazorTerrainAtlas.HEIGHT];
        this.titleEffectMix = new short[RazorTerrainAtlas.HEIGHT];
        this.producerMusicMix = new short[RazorTerrainAtlas.HEIGHT];
        this.producerTitleMix = new short[RazorTerrainAtlas.HEIGHT];
        this.backgroundRing = (short[][]) Array.newInstance((Class<?>) Short.TYPE, 8, RazorTerrainAtlas.HEIGHT);
        this.audioThreadPriority = Integer.MAX_VALUE;
        this.audioAdaptivePreferenceKey = "";
        this.adaptiveAudioPreferences = adaptiveAudioPreferences;
        this.data = new GenesisGemsSfxData(source);
        this.titleData = GenesisGemsSfxData.createTitleBank(source);
        this.sfx = new GenesisLibGmeSfxRuntime(this.data);
        this.music = new GenesisGameplayMusicRuntime(source, this.data);
        this.titleAudio = new GenesisTitleAudioRuntime(source, this.titleData);
        this.backgroundProducerThread = new Thread(new Runnable() { // from class: com.ahsim.demulation.GenesisOriginalSfxPlayer.1
            @Override // java.lang.Runnable
            public void run() {
                GenesisOriginalSfxPlayer.this.backgroundProducerLoop();
            }
        }, "Dune-GEMS-LookAhead");
        this.backgroundProducerThread.setDaemon(true);
        this.audioThread = new Thread(new Runnable() { // from class: com.ahsim.demulation.GenesisOriginalSfxPlayer.2
            @Override // java.lang.Runnable
            public void run() {
                GenesisOriginalSfxPlayer.this.audioLoop();
            }
        }, "Dune-GEMS-SFX");
        this.audioThread.setDaemon(true);
        this.backgroundProducerThread.start();
        this.audioThread.start();
    }

    GenesisGemsSfxData dataForDiagnostics() {
        return this.data;
    }

    void setVolumePercent(int volume) {
        this.volumePercent = Math.max(0, Math.min(100, volume));
    }

    void setMusicVolumePercent(int volume) {
        this.musicVolumePercent = Math.max(0, Math.min(100, volume));
    }

    void startGameplayMusic() {
        enqueue(4, -1);
    }

    void startGameplayMusicRequest(int request) {
        enqueue(6, request);
    }

    void startFrontendMusicRequest(int request) {
        enqueue(9, request);
    }

    void prepareOriginalTitleMusic() {
        enqueue(16, 0);
    }

    void startOriginalTitleMusic() {
        this.originalTitleMusicReady = false;
        enqueue(10, 0);
    }

    boolean isOriginalTitleMusicReady() {
        return this.originalTitleMusicReady;
    }

    void startOriginalTitleMenuMusic() {
        enqueue(13, 0);
    }

    void startTutorialMusicSequence(int sequence) {
        enqueue(17, sequence);
    }

    void startMusicTestSequence(int sequence) {
        enqueue(14, sequence);
    }

    void playOptionsSoundTestSequence(int sequence) {
        enqueue(15, sequence);
    }

    void playOriginalTitleSequence(int sequence) {
        enqueue(11, sequence);
    }

    void stopOriginalTitleSequence(int sequence) {
        enqueue(12, sequence);
    }

    int directSequenceForEvent(int event) {
        return this.data.directSequenceForEvent(event);
    }

    void playDirectEvent(int event) {
        int sequence = directSequenceForEvent(event);
        if (sequence >= 0) {
            play(sequence);
        }
    }

    boolean needsGameplayMusicRequest() {
        return this.music.needsGameplayRequest() && this.backgroundQueuedBlocks == 0;
    }

    int currentGameplayMusicRequest() {
        return this.music.currentRequest();
    }

    int audioRecoveryCountForDiagnostics() {
        return this.audioRecoveryCount;
    }

    long audioUnderrunCountForDiagnostics() {
        long closed = this.closedTrackUnderruns;
        AudioTrack track = this.audioTrack;
        if (track == null) {
            return closed;
        }
        try {
            return Math.max(0, track.getUnderrunCount()) + closed;
        } catch (RuntimeException e) {
            return closed;
        }
    }

    int audioCurrentTrackUnderrunsForDiagnostics() {
        AudioTrack track = this.audioTrack;
        if (track == null) {
            return 0;
        }
        try {
            return Math.max(0, track.getUnderrunCount());
        } catch (RuntimeException e) {
            return -1;
        }
    }

    String audioPerformanceSummaryForDiagnostics() {
        long blocks = this.audioRenderBlocks;
        long writes = this.audioWriteCalls;
        long drains = this.audioActionDrainCalls;
        StringBuilder append = new StringBuilder().append("thread_priority=").append(this.audioThreadPriority).append(" native_rate=").append(this.audioNativeOutputRate).append(" min_buffer_bytes=").append(this.audioMinBufferBytes).append(" requested_buffer_bytes=").append(this.audioRequestedBufferBytes).append(" buffer_size_frames=").append(this.audioBufferSizeFrames).append(" buffer_capacity_frames=").append(this.audioBufferCapacityFrames).append(" track_started=").append(this.audioTrackStarted).append(" underruns_lifetime=").append(audioUnderrunCountForDiagnostics()).append(" underruns_current_track=").append(audioCurrentTrackUnderrunsForDiagnostics()).append(" render_blocks=").append(blocks).append(" render_avg/max_ms=");
        long j = BLOCK_BUDGET_NS;
        StringBuilder append2 = append.append(formatDiagnosticMs(blocks > BLOCK_BUDGET_NS ? this.audioRenderTotalNs / blocks : 0L)).append("/").append(formatDiagnosticMs(this.audioRenderMaxNs)).append(" render_cpu_avg/max_ms=").append(formatDiagnosticMs(blocks > BLOCK_BUDGET_NS ? this.audioRenderCpuTotalNs / blocks : 0L)).append("/").append(formatDiagnosticMs(this.audioRenderCpuMaxNs)).append(" render_sched_gap_avg_ms=").append(formatDiagnosticMs(blocks > BLOCK_BUDGET_NS ? Math.max(BLOCK_BUDGET_NS, this.audioRenderTotalNs - this.audioRenderCpuTotalNs) / blocks : 0L)).append(" render_over_11_61ms=").append(this.audioRenderOverBudget).append(" music_bg_avg/max_ms=").append(formatDiagnosticMs(this.backgroundProducerBlocks > BLOCK_BUDGET_NS ? this.audioMusicRenderTotalNs / this.backgroundProducerBlocks : 0L)).append("/").append(formatDiagnosticMs(this.audioMusicRenderMaxNs)).append(" title_bg_avg/max_ms=").append(formatDiagnosticMs(this.backgroundProducerBlocks > BLOCK_BUDGET_NS ? this.audioTitleRenderTotalNs / this.backgroundProducerBlocks : 0L)).append("/").append(formatDiagnosticMs(this.audioTitleRenderMaxNs)).append(" sfx_avg/max_ms=").append(formatDiagnosticMs(blocks > BLOCK_BUDGET_NS ? this.audioSfxRenderTotalNs / blocks : 0L)).append("/").append(formatDiagnosticMs(this.audioSfxRenderMaxNs)).append(" title_effect_avg/max_ms=").append(formatDiagnosticMs(blocks > BLOCK_BUDGET_NS ? this.audioTitleEffectRenderTotalNs / blocks : 0L)).append("/").append(formatDiagnosticMs(this.audioTitleEffectRenderMaxNs)).append(" action_drain_avg/max_ms=").append(formatDiagnosticMs(drains > BLOCK_BUDGET_NS ? this.audioActionDrainTotalNs / drains : 0L)).append("/").append(formatDiagnosticMs(this.audioActionDrainMaxNs)).append(" write_avg/max_ms=").append(formatDiagnosticMs(writes > BLOCK_BUDGET_NS ? this.audioWriteTotalNs / writes : 0L)).append("/").append(formatDiagnosticMs(this.audioWriteMaxNs)).append(" write_cpu_avg/max_ms=").append(formatDiagnosticMs(writes > BLOCK_BUDGET_NS ? this.audioWriteCpuTotalNs / writes : 0L)).append("/").append(formatDiagnosticMs(this.audioWriteCpuMaxNs)).append(" adaptive_initial/max_frames=").append(this.audioAdaptiveInitialFrames).append("/").append(this.audioAdaptiveMaxFrames).append(" adaptive_grows=").append(this.audioAdaptiveGrowCount).append(" adaptive_learned/saved_frames=").append(this.audioAdaptiveLearnedFrames).append("/").append(this.audioAdaptiveSavedFrames).append(" lookahead_blocks=").append(this.backgroundQueuedBlocks).append("/").append(8).append(" lookahead_high_water=").append(this.backgroundRingHighWater).append(" lookahead_starvations=").append(this.backgroundRingStarvations).append(" lookahead_flushes=").append(this.backgroundRingFlushes).append(" transition_prefills=").append(this.backgroundTransitionPrefills).append(" transition_prefill_silence_blocks=").append(this.backgroundPrefillSilenceBlocks).append(" producer_blocks=").append(this.backgroundProducerBlocks).append(" producer_wall_avg/max_ms=").append(formatDiagnosticMs(this.backgroundProducerBlocks > BLOCK_BUDGET_NS ? this.backgroundProducerWallTotalNs / this.backgroundProducerBlocks : 0L)).append("/").append(formatDiagnosticMs(this.backgroundProducerWallMaxNs)).append(" producer_cpu_avg/max_ms=");
        if (this.backgroundProducerBlocks > BLOCK_BUDGET_NS) {
            j = this.backgroundProducerCpuTotalNs / this.backgroundProducerBlocks;
        }
        return append2.append(formatDiagnosticMs(j)).append("/").append(formatDiagnosticMs(this.backgroundProducerCpuMaxNs)).append(" ").append(GenesisLibGmeMusic.timingSummaryForDiagnostics()).toString();
    }

    private static String formatDiagnosticMs(long nanos) {
        return String.format(Locale.US, "%.3f", Double.valueOf(nanos / 1000000.0d));
    }

    void stopMusic() {
        enqueue(5, -1);
    }

    void suspendForAndroidPause() {
        enqueue(7, -1);
    }

    void resumeAfterAndroidPause() {
        enqueue(8, -1);
    }

    void play(int sequence) {
        enqueue(1, sequence);
    }

    void stop(int sequence) {
        enqueue(2, sequence);
    }

    void stopAll() {
        enqueue(3, -1);
    }

    void release() {
        if (this.released) {
            return;
        }
        this.released = true;
        this.originalTitleMusicReady = false;
        synchronized (this.wakeLock) {
            this.wakeLock.notifyAll();
        }
        synchronized (this.backgroundRingLock) {
            this.backgroundRingLock.notifyAll();
        }
        try {
            this.audioThread.join(500L);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
        try {
            this.backgroundProducerThread.join(500L);
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
        }
        AudioTrack track = this.audioTrack;
        this.audioTrack = null;
        this.audioTrackStarted = false;
        if (track != null) {
            accumulateClosedTrackUnderruns(track);
            try {
                track.pause();
            } catch (RuntimeException e3) {
            }
            try {
                track.flush();
            } catch (RuntimeException e4) {
            }
            try {
                track.release();
            } catch (RuntimeException e5) {
            }
        }
        this.sfx.release();
        synchronized (this.backgroundRuntimeLock) {
            this.music.release();
            this.titleAudio.release();
        }
    }

    private void enqueue(int type, int sequence) {
        if (this.released) {
            return;
        }
        this.actions.add(new Action(type, sequence));
        synchronized (this.wakeLock) {
            this.wakeLock.notifyAll();
        }
    }

    private boolean hasAnyAudioWork() {
        return !this.scheduled.isEmpty() || this.activeDac != null || this.sfx.isActive() || this.titleAudio.isEffectActive() || this.backgroundQueuedBlocks > 0 || this.backgroundMusicActive;
    }

    private void updateBackgroundStateLocked(boolean discardQueued) {
        boolean active = this.music.isActive() || this.titleAudio.isMusicActive();
        synchronized (this.backgroundRingLock) {
            try {
                if (discardQueued) {
                    this.backgroundGeneration++;
                    this.backgroundRingRead = 0;
                    this.backgroundRingWrite = 0;
                    this.backgroundRingCount = 0;
                    this.backgroundQueuedBlocks = 0;
                    this.backgroundRingFlushes++;
                    this.backgroundTransitionPrefill = active;
                    if (active) {
                        this.backgroundTransitionPrefills++;
                    }
                } else if (!active) {
                    this.backgroundTransitionPrefill = false;
                }
                this.backgroundMusicActive = active;
                this.backgroundRingLock.notifyAll();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void clearBackgroundLookAheadForRecovery() {
        synchronized (this.backgroundRingLock) {
            this.backgroundGeneration++;
            this.backgroundRingRead = 0;
            this.backgroundRingWrite = 0;
            this.backgroundRingCount = 0;
            this.backgroundQueuedBlocks = 0;
            this.backgroundRingFlushes++;
            this.backgroundTransitionPrefill = this.backgroundMusicActive;
            if (this.backgroundTransitionPrefill) {
                this.backgroundTransitionPrefills++;
            }
            this.backgroundRingLock.notifyAll();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x00c2, code lost:
    
        r27.wakeLock.notifyAll();
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x00c7, code lost:
    
        monitor-exit(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x00c8, code lost:
    
        r14 = r27.backgroundRingLock;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x00ca, code lost:
    
        monitor-enter(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x00cb, code lost:
    
        r27.backgroundRingLock.notifyAll();
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x00d0, code lost:
    
        monitor-exit(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x00d1, code lost:
    
        sleepQuietly(5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00ac, code lost:
    
        r12 = java.lang.System.nanoTime() - r7;
        r5 = elapsedThreadCpuNs(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00ba, code lost:
    
        if (r2 != false) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00de, code lost:
    
        r14 = r27.backgroundRing[r0];
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00e4, code lost:
    
        if (r11 >= r14.length) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00e6, code lost:
    
        r0 = r27.producerMusicMix[r11] + r27.producerTitleMix[r11];
        r14[r11] = (short) java.lang.Math.max(-32768, java.lang.Math.min(32767, r0));
        r11 = r11 + 1;
        r2 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x010a, code lost:
    
        r7 = r27.audioMusicRenderTotalNs;
        r27.audioMusicRenderTotalNs = r7 + r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0117, code lost:
    
        if (r3 <= r27.audioMusicRenderMaxNs) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0119, code lost:
    
        r27.audioMusicRenderMaxNs = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x011b, code lost:
    
        r27.audioTitleRenderTotalNs += r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0125, code lost:
    
        if (r13 <= r27.audioTitleRenderMaxNs) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0127, code lost:
    
        r27.audioTitleRenderMaxNs = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x012e, code lost:
    
        r27.backgroundProducerBlocks++;
        r27.backgroundProducerWallTotalNs += r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0141, code lost:
    
        if (r12 <= r27.backgroundProducerWallMaxNs) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0143, code lost:
    
        r27.backgroundProducerWallMaxNs = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0149, code lost:
    
        if (r5 < com.ahsim.demulation.GenesisOriginalSfxPlayer.BLOCK_BUDGET_NS) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x014b, code lost:
    
        r27.backgroundProducerCpuTotalNs += r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0154, code lost:
    
        if (r5 <= r27.backgroundProducerCpuMaxNs) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0156, code lost:
    
        r27.backgroundProducerCpuMaxNs = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0158, code lost:
    
        r2 = r27.backgroundRingLock;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x015a, code lost:
    
        monitor-enter(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x015f, code lost:
    
        if (r5 != r27.backgroundGeneration) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0163, code lost:
    
        if (r27.androidSuspended != false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0169, code lost:
    
        if (r27.backgroundRingCount >= 8) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x016b, code lost:
    
        r27.backgroundRingWrite = (r27.backgroundRingWrite + 1) % 8;
        r27.backgroundRingCount++;
        r27.backgroundQueuedBlocks = r27.backgroundRingCount;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0182, code lost:
    
        if (r27.backgroundRingCount <= r27.backgroundRingHighWater) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0184, code lost:
    
        r27.backgroundRingHighWater = r27.backgroundRingCount;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0188, code lost:
    
        r27.backgroundMusicActive = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x018a, code lost:
    
        if (r15 == false) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x018f, code lost:
    
        if (r27.backgroundRingCount < 3) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0194, code lost:
    
        r27.backgroundRingLock.notifyAll();
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0191, code lost:
    
        r27.backgroundTransitionPrefill = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0199, code lost:
    
        monitor-exit(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x00bc, code lost:
    
        r27.backgroundProducerFault = true;
        r11 = r27.wakeLock;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x00c1, code lost:
    
        monitor-enter(r11);
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:? -> B:44:0x01b7). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void backgroundProducerLoop() {
        /*
            Method dump skipped, instructions count: 445
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisOriginalSfxPlayer.backgroundProducerLoop():void");
    }

    private void waitForBackgroundStartupPrefill() {
        if (!this.backgroundMusicActive || this.backgroundQueuedBlocks >= 3) {
            return;
        }
        long deadline = System.nanoTime() + 250000000;
        synchronized (this.backgroundRingLock) {
            while (!this.released && !this.backgroundProducerFault && this.backgroundMusicActive && this.backgroundRingCount < 3 && System.nanoTime() < deadline) {
                try {
                    this.backgroundRingLock.wait(4L);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    return;
                }
            }
        }
    }

    private void takeBackgroundBlock(short[] out) {
        Arrays.fill(out, (short) 0);
        long deadline = System.nanoTime() + 40000000;
        synchronized (this.backgroundRingLock) {
            if (!this.released && !this.backgroundProducerFault && this.backgroundMusicActive && this.backgroundTransitionPrefill) {
                this.backgroundPrefillSilenceBlocks++;
                return;
            }
            if (!this.released && !this.backgroundProducerFault && this.backgroundMusicActive && this.backgroundRingCount == 0) {
                this.backgroundRingStarvations++;
            }
            while (!this.released && !this.backgroundProducerFault && this.backgroundMusicActive && this.backgroundRingCount == 0 && System.nanoTime() < deadline) {
                try {
                    this.backgroundRingLock.wait(2L);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    return;
                }
            }
            if (this.backgroundRingCount <= 0) {
                return;
            }
            System.arraycopy(this.backgroundRing[this.backgroundRingRead], 0, out, 0, out.length);
            this.backgroundRingRead = (this.backgroundRingRead + 1) % 8;
            this.backgroundRingCount--;
            this.backgroundQueuedBlocks = this.backgroundRingCount;
            this.backgroundRingLock.notifyAll();
        }
    }

    private String adaptiveBufferPreferenceKey(int minFrames) {
        return "learned_frames_44100_" + Math.max(0, minFrames);
    }

    private int loadLearnedBufferFrames(int minFrames, int capacityFrames) {
        this.audioAdaptivePreferenceKey = adaptiveBufferPreferenceKey(minFrames);
        int learned = 0;
        if (this.adaptiveAudioPreferences != null) {
            try {
                learned = this.adaptiveAudioPreferences.getInt(this.audioAdaptivePreferenceKey, 0);
            } catch (Throwable th) {
                learned = 0;
            }
        }
        int learned2 = Math.max(0, Math.min(capacityFrames, learned));
        this.audioAdaptiveLearnedFrames = learned2;
        this.audioAdaptiveSavedFrames = learned2;
        return learned2;
    }

    private void persistLearnedBufferFrames(int frames) {
        int safe = Math.max(0, Math.min(this.audioAdaptiveMaxFrames, frames));
        if (safe <= this.audioAdaptiveSavedFrames || this.adaptiveAudioPreferences == null || this.audioAdaptivePreferenceKey.isEmpty()) {
            return;
        }
        this.audioAdaptiveSavedFrames = safe;
        try {
            this.adaptiveAudioPreferences.edit().putInt(this.audioAdaptivePreferenceKey, safe).apply();
        } catch (Throwable th) {
        }
    }

    private void adaptTrackBufferAfterWrite(AudioTrack track) {
        if (track == null) {
            return;
        }
        long j = this.audioAdaptiveProbeWrites + 1;
        this.audioAdaptiveProbeWrites = j;
        if ((j & 31) != BLOCK_BUDGET_NS) {
            return;
        }
        try {
            int underruns = Math.max(0, track.getUnderrunCount());
            if (underruns > this.audioAdaptiveLastUnderruns && this.audioBufferSizeFrames < this.audioAdaptiveMaxFrames) {
                int target = Math.min(this.audioAdaptiveMaxFrames, this.audioBufferSizeFrames + 512);
                int actual = track.setBufferSizeInFrames(target);
                if (actual > 0) {
                    this.audioBufferSizeFrames = actual;
                    this.audioAdaptiveGrowCount++;
                    persistLearnedBufferFrames(actual);
                }
            }
            this.audioAdaptiveLastUnderruns = underruns;
        } catch (RuntimeException e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void audioLoop() {
        try {
            Process.setThreadPriority(-16);
        } catch (Throwable th) {
        }
        try {
            this.audioThreadPriority = Process.getThreadPriority(Process.myTid());
        } catch (Throwable th2) {
            this.audioThreadPriority = Integer.MAX_VALUE;
        }
        short[] block = new short[RazorTerrainAtlas.HEIGHT];
        while (true) {
            try {
                if (this.actions.isEmpty() && (this.androidSuspended || !hasAnyAudioWork())) {
                    synchronized (this.wakeLock) {
                        while (!this.released && this.actions.isEmpty() && (this.androidSuspended || !hasAnyAudioWork())) {
                            this.wakeLock.wait();
                        }
                    }
                }
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            } catch (RuntimeException e2) {
                this.audioRecoveryCount++;
                pauseAndFlushTrack();
                this.scheduled.clear();
                this.activeDac = null;
                this.sfx.stopAll();
                synchronized (this.backgroundRuntimeLock) {
                    if (this.titleAudio.isMusicActive()) {
                        this.titleAudio.restartAfterAudioFault();
                    } else {
                        this.music.restartCurrentRequestAfterAudioFault();
                    }
                    clearBackgroundLookAheadForRecovery();
                    updateBackgroundStateLocked(false);
                    this.backgroundProducerFault = false;
                    sleepQuietly(10L);
                }
            }
            if (this.released) {
                break;
            }
            long actionStartNs = System.nanoTime();
            drainActions(this.mixFrame);
            recordActionDrain(System.nanoTime() - actionStartNs);
            if (this.androidSuspended) {
                pauseTrackWithoutFlush();
            } else if (!hasAnyAudioWork()) {
                pauseAndFlushTrack();
            } else {
                ensureTrack();
                if (this.audioTrack == null) {
                    this.audioRecoveryCount++;
                    sleepQuietly(20L);
                } else {
                    if (!this.audioTrackStarted) {
                        waitForBackgroundStartupPrefill();
                    }
                    if (this.backgroundProducerFault) {
                        throw new IllegalStateException("background GME producer fault");
                    }
                    render(block);
                    AudioTrack track = this.audioTrack;
                    long writeStartNs = System.nanoTime();
                    long writeStartCpuNs = currentThreadCpuTimeNs();
                    int wrote = track.write(block, 0, block.length, 0);
                    recordWrite(System.nanoTime() - writeStartNs, elapsedThreadCpuNs(writeStartCpuNs));
                    if (wrote > 0) {
                        adaptTrackBufferAfterWrite(track);
                        this.mixFrame += wrote / 2;
                        if (!this.audioTrackStarted) {
                            track.play();
                            this.audioTrackStarted = true;
                        }
                    } else {
                        if (wrote < 0) {
                            throw new IllegalStateException("AudioTrack.write=" + wrote);
                        }
                        sleepQuietly(5L);
                    }
                }
            }
        }
        pauseAndFlushTrack();
    }

    private void drainActions(long nowFrame) {
        while (true) {
            Action a = this.actions.poll();
            if (a != null) {
                if (a.type == 7) {
                    this.scheduled.clear();
                    this.activeDac = null;
                    this.sfx.stopAll();
                    this.titleAudio.stopEffect();
                    this.androidSuspended = true;
                    synchronized (this.backgroundRingLock) {
                        this.backgroundRingLock.notifyAll();
                    }
                } else if (a.type == 8) {
                    this.androidSuspended = false;
                    synchronized (this.backgroundRingLock) {
                        this.backgroundRingLock.notifyAll();
                    }
                    AudioTrack track = this.audioTrack;
                    if (track != null) {
                        track.play();
                        this.audioTrackStarted = true;
                    }
                } else if (a.type == 3) {
                    this.androidSuspended = false;
                    this.scheduled.clear();
                    this.activeDac = null;
                    this.sfx.stopAll();
                    this.titleAudio.stopEffect();
                    synchronized (this.backgroundRuntimeLock) {
                        this.music.stop();
                        this.titleAudio.stopMusic();
                        updateBackgroundStateLocked(true);
                    }
                    this.originalTitleMusicReady = false;
                } else if (a.type == 4) {
                    this.titleAudio.stopEffect();
                    synchronized (this.backgroundRuntimeLock) {
                        this.titleAudio.stopMusic();
                        this.music.startGameplay();
                        updateBackgroundStateLocked(true);
                    }
                    this.originalTitleMusicReady = false;
                } else if (a.type == 5) {
                    synchronized (this.backgroundRuntimeLock) {
                        this.music.stop();
                        this.titleAudio.stopMusic();
                        updateBackgroundStateLocked(true);
                    }
                    this.originalTitleMusicReady = false;
                } else if (a.type == 6) {
                    this.titleAudio.stopEffect();
                    synchronized (this.backgroundRuntimeLock) {
                        this.titleAudio.stopMusic();
                        this.music.startGameplayRequest(a.sequence);
                        updateBackgroundStateLocked(true);
                    }
                    this.originalTitleMusicReady = false;
                } else if (a.type == 9) {
                    this.titleAudio.stopEffect();
                    synchronized (this.backgroundRuntimeLock) {
                        this.titleAudio.stopMusic();
                        this.music.startFrontendRequest(a.sequence);
                        updateBackgroundStateLocked(true);
                    }
                    this.originalTitleMusicReady = false;
                } else if (a.type == 14) {
                    this.scheduled.clear();
                    this.activeDac = null;
                    this.sfx.stopAll();
                    this.titleAudio.stopEffect();
                    synchronized (this.backgroundRuntimeLock) {
                        this.music.startDirectSequence(a.sequence);
                        updateBackgroundStateLocked(true);
                    }
                } else if (a.type == 15) {
                    synchronized (this.backgroundRuntimeLock) {
                        boolean hadMusic = this.music.isActive();
                        this.music.stop();
                        updateBackgroundStateLocked(hadMusic);
                    }
                    this.titleAudio.stopEffect();
                    this.scheduled.clear();
                    this.activeDac = null;
                    this.sfx.stopAll();
                    startSfxSequenceLocked(a.sequence, nowFrame);
                } else if (a.type == 16) {
                    synchronized (this.backgroundRuntimeLock) {
                        this.titleAudio.prepareTitleMusic();
                        updateBackgroundStateLocked(false);
                    }
                } else if (a.type == 10) {
                    synchronized (this.backgroundRuntimeLock) {
                        this.music.stop();
                        this.originalTitleMusicReady = this.titleAudio.startTitleMusic();
                        updateBackgroundStateLocked(true);
                    }
                    this.scheduled.clear();
                    this.activeDac = null;
                    this.sfx.stopAll();
                } else if (a.type == 13) {
                    synchronized (this.backgroundRuntimeLock) {
                        this.music.stop();
                        this.originalTitleMusicReady = this.titleAudio.startTitleMenuMusic();
                        updateBackgroundStateLocked(true);
                    }
                    this.scheduled.clear();
                    this.activeDac = null;
                    this.sfx.stopAll();
                } else if (a.type == 17) {
                    synchronized (this.backgroundRuntimeLock) {
                        this.titleAudio.stopMusic();
                        this.music.startDirectSequence(a.sequence);
                        updateBackgroundStateLocked(true);
                    }
                    this.originalTitleMusicReady = false;
                    this.scheduled.clear();
                    this.activeDac = null;
                    this.sfx.stopAll();
                } else if (a.type == 11) {
                    this.titleAudio.playEffect(a.sequence);
                } else if (a.type == 12) {
                    this.titleAudio.stopEffect(a.sequence);
                } else if (a.type == 2) {
                    Iterator<Scheduled> it = this.scheduled.iterator();
                    while (it.hasNext()) {
                        if (it.next().sequence == a.sequence) {
                            it.remove();
                        }
                    }
                    if (this.activeDac != null && this.activeDac.sequence == a.sequence) {
                        this.activeDac = null;
                    }
                    this.sfx.stop(a.sequence);
                } else if (a.type == 1) {
                    startSfxSequenceLocked(a.sequence, nowFrame);
                }
            } else {
                return;
            }
        }
    }

    private void startSfxSequenceLocked(int sequence, long nowFrame) {
        int i = sequence;
        GenesisGemsSfxData.SequencePlan plan = this.data.plan(sequence);
        if (plan == null || plan.hasNonSfxTimedDac || plan.hasNonSfxTimedHardware || plan.hasUnsupportedControl) {
            return;
        }
        if (plan.usesFm || plan.usesPsgTone || plan.usesPsgNoise) {
            this.sfx.play(sequence);
        }
        for (GenesisGemsSfxData.ControlEvent event : plan.controlEvents) {
            PriorityQueue<Scheduled> priorityQueue = this.scheduled;
            long frameAt = frameAt(nowFrame, event.tick);
            long j = this.eventSerial + 1;
            this.eventSerial = j;
            priorityQueue.add(new ScheduledControl(frameAt, j, i, event));
            i = sequence;
        }
        for (GenesisGemsSfxData.DacEvent event2 : plan.dacEvents) {
            PriorityQueue<Scheduled> priorityQueue2 = this.scheduled;
            long frameAt2 = frameAt(nowFrame, event2.tick);
            long j2 = this.eventSerial + 1;
            this.eventSerial = j2;
            priorityQueue2.add(new ScheduledDac(frameAt2, j2, sequence, event2));
        }
    }

    private static long frameAt(long start, long tick) {
        return Math.round(tick * 735.0d) + start;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0103  */
    /* JADX WARN: Type inference failed for: r1v14, types: [int] */
    /* JADX WARN: Type inference failed for: r1v7, types: [int, short] */
    /* JADX WARN: Type inference failed for: r1v8, types: [int] */
    /* JADX WARN: Type inference failed for: r2v14, types: [int] */
    /* JADX WARN: Type inference failed for: r2v6, types: [int, short] */
    /* JADX WARN: Type inference failed for: r2v7, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void render(short[] r28) {
        /*
            Method dump skipped, instructions count: 504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisOriginalSfxPlayer.render(short[]):void");
    }

    private void finishDac() {
        this.activeDac = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startDac(ScheduledDac next) {
        GenesisGemsSfxData.Sample sample = this.data.sample(next.event.sampleIndex);
        if (sample == null || sample.firstLength <= 0 || sample.looped() || sample.fourBit()) {
            finishDac();
            return;
        }
        int rateCode = this.data.effectiveRateCode(next.event, sample);
        double sourceRate = GenesisGemsSfxData.sampleRateHz(rateCode);
        if (sourceRate <= 0.0d) {
            finishDac();
        } else {
            this.activeDac = new ActiveDac(next.sequence, sample, sourceRate / 44100.0d);
        }
    }

    private void ensureTrack() {
        if (this.audioTrack != null) {
            return;
        }
        int min = AudioTrack.getMinBufferSize(OUTPUT_RATE, 12, 2);
        if (min <= 0) {
            min = DuneHackR82ScenarioRecordDecoder.MAX_RECORDS;
        }
        int min2 = min;
        int minFrames = ((min2 + 4) - 1) / 4;
        int capacityFrames = Math.max(minFrames, DuneHackR82ScenarioRecordDecoder.MAX_RECORDS);
        int learnedFrames = loadLearnedBufferFrames(minFrames, capacityFrames);
        int initialFrames = Math.min(capacityFrames, Math.max(Math.max(minFrames, GenesisObjectArt.VRAM_PATTERN_COUNT), learnedFrames));
        int buffer = capacityFrames * 4;
        this.audioMinBufferBytes = min2;
        this.audioRequestedBufferBytes = buffer;
        this.audioAdaptiveInitialFrames = initialFrames;
        this.audioAdaptiveMaxFrames = capacityFrames;
        this.audioAdaptiveLastUnderruns = 0;
        this.audioAdaptiveProbeWrites = BLOCK_BUDGET_NS;
        try {
            AudioTrack track = new AudioTrack(3, OUTPUT_RATE, 12, 2, buffer, 1);
            if (track.getState() != 1) {
                track.release();
                return;
            }
            this.audioNativeOutputRate = AudioTrack.getNativeOutputSampleRate(3);
            try {
                int actual = track.setBufferSizeInFrames(initialFrames);
                this.audioBufferSizeFrames = actual > 0 ? actual : track.getBufferSizeInFrames();
            } catch (RuntimeException e) {
                try {
                    this.audioBufferSizeFrames = track.getBufferSizeInFrames();
                } catch (RuntimeException e2) {
                    this.audioBufferSizeFrames = initialFrames;
                }
            }
            try {
                this.audioBufferCapacityFrames = track.getBufferCapacityInFrames();
            } catch (RuntimeException e3) {
                this.audioBufferCapacityFrames = capacityFrames;
            }
            this.audioAdaptiveMaxFrames = Math.max(this.audioBufferSizeFrames, this.audioBufferCapacityFrames);
            this.audioTrackStarted = false;
            this.audioTrack = track;
        } catch (RuntimeException e4) {
            this.audioTrack = null;
            this.audioTrackStarted = false;
        }
    }

    private void pauseTrackWithoutFlush() {
        AudioTrack track = this.audioTrack;
        if (track == null) {
            return;
        }
        try {
            track.pause();
        } catch (RuntimeException e) {
        }
    }

    private void pauseAndFlushTrack() {
        AudioTrack track = this.audioTrack;
        this.audioTrack = null;
        this.audioTrackStarted = false;
        if (track == null) {
            return;
        }
        accumulateClosedTrackUnderruns(track);
        try {
            track.pause();
        } catch (RuntimeException e) {
        }
        try {
            track.flush();
        } catch (RuntimeException e2) {
        }
        try {
            track.release();
        } catch (RuntimeException e3) {
        }
        this.mixFrame = BLOCK_BUDGET_NS;
    }

    private void accumulateClosedTrackUnderruns(AudioTrack track) {
        if (track == null) {
            return;
        }
        try {
            this.closedTrackUnderruns += Math.max(0, track.getUnderrunCount());
        } catch (RuntimeException e) {
        }
    }

    private void recordActionDrain(long nanos) {
        this.audioActionDrainCalls++;
        this.audioActionDrainTotalNs += nanos;
        if (nanos > this.audioActionDrainMaxNs) {
            this.audioActionDrainMaxNs = nanos;
        }
    }

    private void recordWrite(long nanos, long cpuNanos) {
        this.audioWriteCalls++;
        this.audioWriteTotalNs += nanos;
        if (nanos > this.audioWriteMaxNs) {
            this.audioWriteMaxNs = nanos;
        }
        if (cpuNanos >= BLOCK_BUDGET_NS) {
            this.audioWriteCpuTotalNs += cpuNanos;
            if (cpuNanos > this.audioWriteCpuMaxNs) {
                this.audioWriteCpuMaxNs = cpuNanos;
            }
        }
    }

    private static long currentThreadCpuTimeNs() {
        try {
            return Debug.threadCpuTimeNanos();
        } catch (Throwable th) {
            return -1L;
        }
    }

    private static long elapsedThreadCpuNs(long startNs) {
        if (startNs < BLOCK_BUDGET_NS) {
            return -1L;
        }
        long endNs = currentThreadCpuTimeNs();
        if (endNs >= startNs) {
            return endNs - startNs;
        }
        return -1L;
    }

    private static void sleepQuietly(long millis) {
        try {
            Thread.sleep(millis);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }
}
