package com.ahsim.demulation;

import com.ahsim.demulation.GenesisDirectSequenceVgmBuilder;
import java.util.Arrays;

/* loaded from: classes2.dex */
final class GenesisGameplayMusicRuntime {
    private static final int FRAMES_PER_DRIVER_TICK = 735;
    private final GenesisGameplayVgmBuilder builder;
    private volatile int currentDirectSequence;
    private volatile int currentRequest;
    private final GenesisDirectSequenceVgmBuilder directBuilder;
    private volatile boolean directMode;
    private boolean frontendLooping;
    private volatile boolean frontendMode;
    private volatile boolean gameplayMode;
    private final GenesisLibGmeMusic player;
    private long remainingFrames;
    private volatile boolean requestNeeded;
    private final GenesisAudioSource source;

    GenesisGameplayMusicRuntime(byte[] rom, GenesisGemsSfxData data) {
        this(GenesisAudioSource.fromRom(rom), data);
    }

    GenesisGameplayMusicRuntime(GenesisAudioSource source, GenesisGemsSfxData data) {
        this.player = new GenesisLibGmeMusic();
        this.currentRequest = -1;
        this.currentDirectSequence = -1;
        this.source = source;
        this.builder = new GenesisGameplayVgmBuilder(source, data);
        this.directBuilder = new GenesisDirectSequenceVgmBuilder(source, data);
    }

    void startGameplay() {
        this.player.close();
        this.currentRequest = -1;
        this.remainingFrames = 0L;
        this.gameplayMode = true;
        this.frontendMode = false;
        this.directMode = false;
        this.currentDirectSequence = -1;
        this.frontendLooping = false;
        this.requestNeeded = true;
    }

    void startGameplayRequest(int request) {
        if (request < 8 || request > 12) {
            stop();
            return;
        }
        byte[] vgm = this.builder.build(request);
        if (vgm == null || !this.player.open(vgm, 44100)) {
            this.currentRequest = -1;
            this.remainingFrames = 0L;
            this.gameplayMode = true;
            this.frontendMode = false;
            this.directMode = false;
            this.currentDirectSequence = -1;
            this.frontendLooping = false;
            this.requestNeeded = true;
            return;
        }
        this.currentRequest = request;
        this.remainingFrames = durationTicks(request) * 735;
        this.gameplayMode = true;
        this.frontendMode = false;
        this.directMode = false;
        this.currentDirectSequence = -1;
        this.frontendLooping = false;
        this.requestNeeded = false;
    }

    void startFrontendRequest(int request) {
        byte[] vgm = this.builder.buildFrontend(request);
        if (vgm == null || !this.player.open(vgm, 44100)) {
            stop();
            return;
        }
        this.currentRequest = request;
        long total = vgmTotalSamples(vgm);
        this.frontendLooping = vgmLoopOffset(vgm) != 0 && total > 0;
        this.remainingFrames = this.frontendLooping ? 2305843009213693951L : total;
        this.gameplayMode = false;
        this.frontendMode = true;
        this.directMode = false;
        this.currentDirectSequence = -1;
        this.requestNeeded = false;
    }

    void startDirectSequence(int sequence) {
        GenesisDirectSequenceVgmBuilder.BuiltSequence built = this.directBuilder.build(sequence);
        if (built == null || built.vgm == null || built.dacEvents.length != 0 || !this.player.open(built.vgm, 44100)) {
            stop();
            return;
        }
        this.currentRequest = -1;
        this.currentDirectSequence = sequence;
        this.frontendLooping = built.looping;
        long total = vgmTotalSamples(built.vgm);
        this.remainingFrames = built.looping ? 2305843009213693951L : total;
        this.gameplayMode = false;
        this.frontendMode = false;
        this.directMode = true;
        this.requestNeeded = false;
    }

    void restartCurrentRequestAfterAudioFault() {
        if (this.directMode) {
            int sequence = this.currentDirectSequence;
            int samplePos = this.player.tellSamples();
            GenesisDirectSequenceVgmBuilder.BuiltSequence built = this.directBuilder.build(sequence);
            if (built != null && built.vgm != null && built.dacEvents.length == 0 && this.player.open(built.vgm, 44100) && (samplePos <= 0 || this.player.seekSamples(samplePos))) {
                this.remainingFrames = built.looping ? 2305843009213693951L : Math.max(0L, vgmTotalSamples(built.vgm) - samplePos);
                return;
            } else {
                stop();
                return;
            }
        }
        int sequence2 = this.currentRequest;
        if (this.frontendMode) {
            int samplePos2 = this.player.tellSamples();
            byte[] vgm = this.builder.buildFrontend(sequence2);
            long total = vgm == null ? 0L : vgmTotalSamples(vgm);
            if (vgm != null && this.player.open(vgm, 44100) && (samplePos2 <= 0 || this.player.seekSamples(samplePos2))) {
                this.remainingFrames = this.frontendLooping ? 2305843009213693951L : Math.max(0L, total - samplePos2);
                return;
            } else {
                stop();
                return;
            }
        }
        if (this.gameplayMode) {
            if (sequence2 < 8 || sequence2 > 12) {
                this.requestNeeded = true;
                return;
            }
            int samplePos3 = this.player.tellSamples();
            byte[] vgm2 = this.builder.build(sequence2);
            if (vgm2 != null && this.player.open(vgm2, 44100) && (samplePos3 <= 0 || this.player.seekSamples(samplePos3))) {
                this.requestNeeded = false;
                return;
            }
            this.player.close();
            this.currentRequest = -1;
            this.remainingFrames = 0L;
            this.requestNeeded = true;
        }
    }

    void stop() {
        this.player.close();
        this.gameplayMode = false;
        this.frontendMode = false;
        this.directMode = false;
        this.frontendLooping = false;
        this.requestNeeded = false;
        this.currentRequest = -1;
        this.currentDirectSequence = -1;
        this.remainingFrames = 0L;
    }

    void release() {
        stop();
    }

    boolean isActive() {
        boolean idValid = !this.directMode ? this.currentRequest < 0 : this.currentDirectSequence < 0;
        return (this.gameplayMode || this.frontendMode || this.directMode) && idValid && this.player.isOpen() && this.remainingFrames > 0;
    }

    boolean needsGameplayRequest() {
        return this.gameplayMode && this.requestNeeded;
    }

    int currentRequest() {
        return this.currentRequest;
    }

    boolean renderStereo(short[] out, int frames, int volumePercent) {
        if (out == null || out.length < frames * 2) {
            return false;
        }
        Arrays.fill(out, 0, frames * 2, (short) 0);
        if (!isActive() || frames <= 0) {
            return true;
        }
        int activeFrames = this.frontendLooping ? frames : (int) Math.min(frames, this.remainingFrames);
        if (!this.player.renderStereo(out, activeFrames)) {
            return false;
        }
        int vol = Math.max(0, Math.min(100, volumePercent));
        if (vol != 100) {
            for (int i = 0; i < activeFrames * 2; i++) {
                out[i] = (short) ((out[i] * vol) / 100);
            }
        }
        if (!this.frontendLooping) {
            this.remainingFrames -= activeFrames;
            if (this.remainingFrames <= 0) {
                this.player.close();
                this.currentRequest = -1;
                this.currentDirectSequence = -1;
                if (this.gameplayMode) {
                    this.requestNeeded = true;
                } else {
                    this.frontendMode = false;
                    this.directMode = false;
                }
            }
        }
        return true;
    }

    int tellSamplesForDiagnostics() {
        return this.player.tellSamples();
    }

    private static long vgmTotalSamples(byte[] vgm) {
        return le32(vgm, 24) & 4294967295L;
    }

    private static int vgmLoopOffset(byte[] vgm) {
        return le32(vgm, 28);
    }

    private static int le32(byte[] b, int p) {
        if (b == null || p < 0 || p + 3 >= b.length) {
            return 0;
        }
        return (b[p] & 255) | ((b[p + 1] & 255) << 8) | ((b[p + 2] & 255) << 16) | (b[p + 3] << 24);
    }

    private int durationTicks(int request) {
        int p = (request * 4) + 436416 + 2;
        if (this.source.contains(p, 2)) {
            return this.source.be16(p);
        }
        return 0;
    }
}
