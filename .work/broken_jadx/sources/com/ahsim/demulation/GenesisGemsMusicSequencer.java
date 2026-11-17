package com.ahsim.demulation;

import java.util.ArrayList;

/* loaded from: classes2.dex */
final class GenesisGemsMusicSequencer {
    static final int MUSIC_REQUEST_FIRST = 8;
    static final int MUSIC_REQUEST_LAST = 12;
    static final int MUSIC_REQUEST_TABLE = 436416;
    static final int MUSIC_SEQUENCE_TAG = 4096;
    static final int ORIGINAL_REQUEST_FIRST = 0;
    static final int ORIGINAL_REQUEST_LAST = 38;
    private volatile int currentRequest;
    private final GenesisGemsSfxData data;
    private boolean diagnosticFrontendMode;
    private boolean diagnosticSawInfiniteLoop;
    private final byte[][] envelopeCache;
    private final int etbl;
    private volatile boolean gameplayMode;
    private final GenesisGemsHardware hardware;
    private int remainingDriverTicks;
    private volatile boolean requestNeeded;
    private int sequence;
    private final GenesisAudioSource source;
    private final int stbl;
    private int taggedSequence;
    private int tempoAccumulator;
    private int tempoSbpt;
    private int trackCount;
    private final Track[] tracks;

    private static final class LoopFrame {
        int count;
        final int position;

        LoopFrame(int count, int position) {
            this.count = count;
            this.position = position;
        }
    }

    private static final class Envelope {
        boolean active;
        int count;
        int delta;
        int pos;
        final byte[] raw;
        int value;

        Envelope(byte[] raw) {
            this.raw = raw;
        }

        void trigger() {
            this.value = s16(this.raw, 0);
            this.pos = 2;
            this.count = 0;
            this.delta = 0;
            this.active = true;
        }

        boolean tick() {
            if (!this.active) {
                return false;
            }
            if (this.count == 0) {
                if (this.pos >= this.raw.length) {
                    this.active = false;
                    this.value = 0;
                    return true;
                }
                int segment = this.raw[this.pos] & 255;
                if (segment == 0) {
                    this.active = false;
                    this.value = 0;
                    return true;
                }
                if (this.pos + 2 >= this.raw.length) {
                    this.active = false;
                    this.value = 0;
                    return true;
                }
                this.count = segment - 1;
                this.delta = s16(this.raw, this.pos + 1);
                this.pos += 3;
            } else {
                this.count--;
            }
            this.value = (short) (this.value + this.delta);
            return true;
        }

        private static int s16(byte[] b, int p) {
            if (p < 0 || p + 1 >= b.length) {
                return 0;
            }
            return (short) ((b[p] & 255) | ((b[p + 1] & 255) << 8));
        }
    }

    private static final class Track {
        int attenuation;
        int delay;
        int duration;
        Envelope envelope;
        int envelopeNumber;
        boolean muted;

        /* renamed from: p */
        int f9p;
        int pitchBend;
        int priority;
        boolean retrigger;
        int timer;
        final int virtualChannel;
        int pending = -1;
        int patch = -1;
        int patchType = -1;
        boolean active = true;
        final ArrayList<LoopFrame> loops = new ArrayList<>();

        Track(int virtualChannel, int p) {
            this.virtualChannel = virtualChannel;
            this.f9p = p;
        }
    }

    GenesisGemsMusicSequencer(byte[] rom, GenesisGemsSfxData data, GenesisGemsHardware hardware) {
        this(GenesisAudioSource.fromRom(rom), data, hardware);
    }

    GenesisGemsMusicSequencer(GenesisAudioSource source, GenesisGemsSfxData data, GenesisGemsHardware hardware) {
        this.tracks = new Track[16];
        this.envelopeCache = new byte[32][];
        this.sequence = -1;
        this.taggedSequence = -1;
        this.tempoSbpt = 204;
        this.currentRequest = -1;
        if (source == null) {
            throw new IllegalArgumentException("Audio source missing");
        }
        this.source = source;
        this.data = data;
        this.hardware = hardware;
        this.stbl = data.sequenceTableOffset();
        this.etbl = data.envelopeTableOffset();
    }

    void startGameplay() {
        if (!this.gameplayMode) {
            this.hardware.setMasterAttenuation(0);
        }
        this.gameplayMode = true;
        this.requestNeeded = true;
    }

    void startGameplayRequest(int request) {
        if (!this.gameplayMode) {
            this.hardware.setMasterAttenuation(0);
        }
        this.gameplayMode = true;
        startRequest(request);
    }

    void stop() {
        this.gameplayMode = false;
        if (this.taggedSequence >= 0) {
            this.hardware.stopSequence(this.taggedSequence);
        }
        this.sequence = -1;
        this.taggedSequence = -1;
        this.currentRequest = -1;
        this.remainingDriverTicks = 0;
        this.requestNeeded = false;
        this.trackCount = 0;
        this.tempoAccumulator = 0;
        for (int i = 0; i < this.tracks.length; i++) {
            this.tracks[i] = null;
        }
    }

    boolean isActive() {
        return this.gameplayMode && this.sequence >= 0;
    }

    boolean needsGameplayRequest() {
        return this.gameplayMode && this.requestNeeded;
    }

    int currentRequestForDiagnostics() {
        return this.currentRequest;
    }

    int currentSequenceForDiagnostics() {
        return this.sequence;
    }

    int remainingDriverTicksForDiagnostics() {
        return this.remainingDriverTicks;
    }

    int tempoSbptForDiagnostics() {
        return this.tempoSbpt;
    }

    int trackBendForDiagnostics(int track) {
        if (track < 0 || track >= this.trackCount || this.tracks[track] == null) {
            return 0;
        }
        Track t = this.tracks[track];
        return (short) (t.pitchBend + (t.envelope != null ? t.envelope.value : 0));
    }

    void driverTick() {
        if (isActive()) {
            if (this.remainingDriverTicks > 0) {
                int i = this.remainingDriverTicks - 1;
                this.remainingDriverTicks = i;
                if (i == 0) {
                    finishTimedRequest();
                    return;
                }
            }
            this.tempoAccumulator += this.tempoSbpt;
            while (this.tempoAccumulator >= 256) {
                this.tempoAccumulator -= 256;
                musicSubbeat();
                if (this.diagnosticFrontendMode && this.sequence >= 0 && allTracksInactive()) {
                    finishDiagnosticFrontendRequest();
                    return;
                }
            }
        }
    }

    private boolean allTracksInactive() {
        for (int i = 0; i < this.trackCount; i++) {
            Track t = this.tracks[i];
            if (t != null && t.active) {
                return false;
            }
        }
        return true;
    }

    private void finishDiagnosticFrontendRequest() {
        this.sequence = -1;
        this.taggedSequence = -1;
        this.remainingDriverTicks = 0;
        this.trackCount = 0;
        this.tempoAccumulator = 0;
        for (int i = 0; i < this.tracks.length; i++) {
            this.tracks[i] = null;
        }
        this.requestNeeded = true;
    }

    private void finishTimedRequest() {
        if (this.taggedSequence >= 0) {
            this.hardware.stopSequence(this.taggedSequence);
        }
        this.sequence = -1;
        this.taggedSequence = -1;
        this.remainingDriverTicks = 0;
        this.trackCount = 0;
        this.tempoAccumulator = 0;
        for (int i = 0; i < this.tracks.length; i++) {
            this.tracks[i] = null;
        }
        this.requestNeeded = true;
    }

    void startRequestForDiagnostics(int request) {
        this.diagnosticFrontendMode = false;
        this.diagnosticSawInfiniteLoop = false;
        this.gameplayMode = true;
        startRequest(request);
    }

    void startOriginalFrontendRequestForDiagnostics(int request) {
        this.diagnosticFrontendMode = true;
        this.diagnosticSawInfiniteLoop = false;
        this.gameplayMode = true;
        if (request < 0 || request > ORIGINAL_REQUEST_LAST) {
            finishDiagnosticFrontendRequest();
            return;
        }
        int entry = (request * 4) + MUSIC_REQUEST_TABLE;
        int seq = be16(entry);
        if (seq < 0 || seq >= this.data.sequenceCount() || seq == 65535) {
            finishDiagnosticFrontendRequest();
            return;
        }
        if (this.taggedSequence >= 0) {
            this.hardware.stopSequence(this.taggedSequence);
        }
        this.currentRequest = request;
        this.requestNeeded = false;
        this.remainingDriverTicks = 0;
        startSequence(seq);
    }

    void startDirectSequenceForDiagnostics(int seq) {
        this.diagnosticFrontendMode = true;
        this.diagnosticSawInfiniteLoop = false;
        this.gameplayMode = true;
        if (seq < 0 || seq >= this.data.sequenceCount()) {
            finishDiagnosticFrontendRequest();
            return;
        }
        if (this.taggedSequence >= 0) {
            this.hardware.stopSequence(this.taggedSequence);
        }
        this.currentRequest = -1;
        this.requestNeeded = false;
        this.remainingDriverTicks = 0;
        startSequence(seq);
    }

    boolean sawInfiniteLoopForDiagnostics() {
        return this.diagnosticSawInfiniteLoop;
    }

    void expireRequestForDiagnostics() {
        if (!this.gameplayMode || this.sequence < 0) {
            return;
        }
        finishTimedRequest();
    }

    void restartCurrentRequestAfterAudioFault() {
        int request = this.currentRequest;
        if (this.gameplayMode) {
            if (request < 8 || request > 12) {
                this.sequence = -1;
                this.taggedSequence = -1;
                this.trackCount = 0;
                this.requestNeeded = true;
                return;
            }
            startRequest(request);
        }
    }

    private void startRequest(int request) {
        if (request < 8 || request > 12) {
            stop();
            return;
        }
        int entry = (request * 4) + MUSIC_REQUEST_TABLE;
        int seq = be16(entry);
        int duration = be16(entry + 2);
        if (seq < 0 || seq >= this.data.sequenceCount() || duration == 0 || duration == 65535) {
            stop();
            return;
        }
        if (this.taggedSequence >= 0) {
            this.hardware.stopSequence(this.taggedSequence);
        }
        this.currentRequest = request;
        this.requestNeeded = false;
        this.remainingDriverTicks = duration;
        startSequence(seq);
    }

    private void startSequence(int seq) {
        this.sequence = seq;
        this.taggedSequence = seq + 4096;
        this.tempoAccumulator = 0;
        int header = this.stbl + le16(this.stbl + (seq * 2));
        int count = m2u8(header);
        if (count <= 0 || count > 16) {
            stop();
            return;
        }
        this.trackCount = count;
        for (int i = 0; i < this.tracks.length; i++) {
            this.tracks[i] = null;
        }
        for (int i2 = 0; i2 < count; i2++) {
            int off = le16(header + 1 + (i2 * 2));
            this.tracks[i2] = new Track(i2, this.stbl + off);
        }
    }

    private void musicSubbeat() {
        for (int i = 0; i < this.trackCount; i++) {
            Track t = this.tracks[i];
            if (t != null && t.active && t.envelope != null && t.envelope.tick()) {
                applyBend(t);
            }
        }
        this.hardware.musicSubbeat();
        for (int i2 = 0; i2 < this.trackCount; i2++) {
            Track t2 = this.tracks[i2];
            if (t2 != null && t2.active) {
                if (t2.timer > 0) {
                    t2.timer--;
                    if (t2.timer > 0) {
                    }
                }
                runTrackUntilDelay(t2);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:191:0x0250, code lost:
    
        r15.active = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x0252, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void runTrackUntilDelay(com.ahsim.demulation.GenesisGemsMusicSequencer.Track r15) {
        /*
            Method dump skipped, instructions count: 638
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisGemsMusicSequencer.runTrackUntilDelay(com.ahsim.demulation.GenesisGemsMusicSequencer$Track):void");
    }

    private boolean consumeDelay(Track t) {
        if (t.delay <= 0) {
            return false;
        }
        t.timer = t.delay;
        return true;
    }

    private void triggerEnvelope(Track t, int index) {
        byte[] raw = envelope(index);
        if (raw == null) {
            t.envelope = null;
            return;
        }
        t.envelope = new Envelope(raw);
        t.envelope.trigger();
        applyBend(t);
    }

    private void applyBend(Track t) {
        int env = t.envelope != null ? t.envelope.value : 0;
        this.hardware.setTrackBend(this.taggedSequence, t.virtualChannel, (short) (t.pitchBend + env));
    }

    private byte[] envelope(int index) {
        if (index < 0 || index >= this.envelopeCache.length) {
            return null;
        }
        if (this.envelopeCache[index] != null) {
            return this.envelopeCache[index];
        }
        int count = le16(this.etbl) / 2;
        if (index >= count) {
            return null;
        }
        int p = this.etbl + le16(this.etbl + (index * 2));
        if (!this.source.contains(p, 32)) {
            return null;
        }
        byte[] out = new byte[32];
        this.source.copyTo(p, out, 0, 32);
        this.envelopeCache[index] = out;
        return out;
    }

    private int read(Track t) {
        if (t.f9p < this.stbl || !this.source.contains(t.f9p, 1)) {
            t.active = false;
            return 96;
        }
        GenesisAudioSource genesisAudioSource = this.source;
        int i = t.f9p;
        t.f9p = i + 1;
        return genesisAudioSource.m1u8(i);
    }

    /* renamed from: u8 */
    private int m2u8(int p) {
        if (this.source.contains(p, 1)) {
            return this.source.m1u8(p);
        }
        return 0;
    }

    private int le16(int p) {
        return m2u8(p) | (m2u8(p + 1) << 8);
    }

    private int be16(int p) {
        return (m2u8(p) << 8) | m2u8(p + 1);
    }
}
