package com.ahsim.demulation;

import com.ahsim.demulation.GenesisDirectSequenceVgmBuilder;
import com.ahsim.demulation.GenesisGameplayVgmHardware;
import com.ahsim.demulation.GenesisGemsSfxData;
import java.util.Arrays;

/* loaded from: classes2.dex */
final class GenesisTitleAudioRuntime {
    private static final int MAX_BLOCK_FRAMES = 512;
    private static final int OUTPUT_RATE = 44100;
    private static final int SAMPLES_PER_GENESIS_FRAME = 735;
    private ActiveDac activeDac;
    private final GenesisDirectSequenceVgmBuilder builder;
    private final GenesisGemsSfxData data;
    private final GenesisLibGmeMusic effect;
    private final short[] effectMix;
    private long effectRemaining;
    private int effectSequence;
    private final GenesisLibGmeMusic music;
    private boolean musicActive;
    private GenesisDirectSequenceVgmBuilder.BuiltSequence musicBuilt;
    private long musicCursorSamples;
    private final short[] musicMix;
    private int nextDacEvent;

    private static final class ActiveDac {
        double position;
        final GenesisGemsSfxData.Sample sample;
        final double step;

        ActiveDac(GenesisGemsSfxData.Sample sample, double step) {
            this.sample = sample;
            this.step = step;
        }
    }

    GenesisTitleAudioRuntime(byte[] rom, GenesisGemsSfxData titleData) {
        this(GenesisAudioSource.fromRom(rom), titleData);
    }

    GenesisTitleAudioRuntime(GenesisAudioSource source, GenesisGemsSfxData titleData) {
        this.music = new GenesisLibGmeMusic();
        this.effect = new GenesisLibGmeMusic();
        this.musicMix = new short[RazorTerrainAtlas.HEIGHT];
        this.effectMix = new short[RazorTerrainAtlas.HEIGHT];
        this.effectSequence = -1;
        this.data = titleData;
        this.builder = new GenesisDirectSequenceVgmBuilder(source, titleData);
    }

    boolean prepareTitleMusic() {
        if (this.musicBuilt != null && this.music.isOpen() && this.musicCursorSamples == 0) {
            this.musicActive = false;
            this.activeDac = null;
            this.nextDacEvent = 0;
            return true;
        }
        GenesisDirectSequenceVgmBuilder.BuiltSequence built = this.builder.build(0);
        if (built == null || !this.music.open(built.vgm, OUTPUT_RATE)) {
            discardMusic();
            return false;
        }
        this.musicBuilt = built;
        this.musicActive = false;
        this.musicCursorSamples = 0L;
        this.nextDacEvent = 0;
        this.activeDac = null;
        return true;
    }

    boolean startTitleMusic() {
        if ((this.musicBuilt == null || !this.music.isOpen() || this.musicCursorSamples != 0) && !prepareTitleMusic()) {
            return false;
        }
        this.musicActive = true;
        this.musicCursorSamples = 0L;
        this.nextDacEvent = 0;
        this.activeDac = null;
        return true;
    }

    boolean startTitleMenuMusic() {
        if (this.musicBuilt != null && this.music.isOpen()) {
            this.musicActive = true;
            this.activeDac = null;
            this.nextDacEvent = firstDacEventAtOrAfter(this.musicBuilt, this.musicCursorSamples);
            return true;
        }
        GenesisDirectSequenceVgmBuilder.BuiltSequence built = this.builder.build(0);
        if (built == null || !this.music.open(built.vgm, OUTPUT_RATE)) {
            discardMusic();
            return false;
        }
        long start = (!built.looping || built.loopStartFrame < 0) ? 0L : built.loopStartFrame * 735;
        if (start > 0 && !this.music.seekSamples((int) Math.min(2147483647L, start))) {
            discardMusic();
            return false;
        }
        this.musicBuilt = built;
        this.musicActive = true;
        this.musicCursorSamples = start;
        this.nextDacEvent = firstDacEventAtOrAfter(built, start);
        this.activeDac = null;
        return true;
    }

    boolean playEffect(int sequence) {
        GenesisDirectSequenceVgmBuilder.BuiltSequence built;
        if (sequence < 10 || sequence > 12 || (built = this.builder.build(sequence)) == null || !this.effect.open(built.vgm, OUTPUT_RATE)) {
            return false;
        }
        this.effectSequence = sequence;
        this.effectRemaining = built.ticks * 735;
        return true;
    }

    boolean isMusicActive() {
        return this.musicActive && this.music.isOpen();
    }

    boolean isEffectActive() {
        return this.effectSequence >= 0 && this.effect.isOpen() && this.effectRemaining > 0;
    }

    boolean isActive() {
        return isMusicActive() || isEffectActive();
    }

    void stopMusic() {
        this.musicActive = false;
        this.activeDac = null;
    }

    private void discardMusic() {
        this.music.close();
        this.musicBuilt = null;
        this.musicActive = false;
        this.musicCursorSamples = 0L;
        this.nextDacEvent = 0;
        this.activeDac = null;
    }

    void stopEffect() {
        this.effect.close();
        this.effectSequence = -1;
        this.effectRemaining = 0L;
    }

    void stopEffect(int sequence) {
        if (this.effectSequence == sequence) {
            stopEffect();
        }
    }

    void stopAll() {
        stopMusic();
        stopEffect();
    }

    void release() {
        discardMusic();
        stopEffect();
    }

    void restartAfterAudioFault() {
        int absolute = this.music.tellSamples();
        GenesisDirectSequenceVgmBuilder.BuiltSequence built = this.musicBuilt;
        stopEffect();
        if (!this.musicActive || built == null) {
            return;
        }
        this.music.close();
        if (!this.music.open(built.vgm, OUTPUT_RATE)) {
            discardMusic();
            return;
        }
        if (absolute > 0 && !this.music.seekSamples(absolute)) {
            long normalized = normalizeCursor(built, absolute);
            if (!this.music.seekSamples((int) Math.min(2147483647L, normalized))) {
                discardMusic();
                return;
            }
        }
        this.musicBuilt = built;
        this.musicActive = true;
        this.musicCursorSamples = normalizeCursor(built, absolute);
        this.nextDacEvent = firstDacEventAtOrAfter(built, this.musicCursorSamples);
        this.activeDac = null;
    }

    boolean renderMusicStereo(short[] out, int frames, int musicVolumePercent) {
        if (out == null || frames < 0 || out.length < frames * 2 || frames > 512) {
            return false;
        }
        Arrays.fill(out, 0, frames * 2, (short) 0);
        if (frames == 0) {
            return true;
        }
        boolean haveMusic = isMusicActive();
        if (!haveMusic) {
            return true;
        }
        if (!this.music.renderStereo(this.musicMix, frames)) {
            return false;
        }
        int mvol = clampVolume(musicVolumePercent);
        for (int i = 0; i < frames; i++) {
            int dac = nextMusicDacSample();
            int ml = this.musicMix[i * 2] + dac;
            int mr = this.musicMix[(i * 2) + 1] + dac;
            if (mvol != 100) {
                ml = (ml * mvol) / 100;
                mr = (mr * mvol) / 100;
            }
            out[i * 2] = clamp16(ml);
            out[(i * 2) + 1] = clamp16(mr);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    boolean renderEffectStereo(short[] out, int frames, int sfxVolumePercent) {
        if (out == null || frames < 0 || out.length < frames * 2 || frames > 512) {
            return false;
        }
        Arrays.fill(out, 0, frames * 2, (short) 0);
        if (frames == 0 || !isEffectActive()) {
            return true;
        }
        int effectFrames = (int) Math.min(frames, this.effectRemaining);
        if (!this.effect.renderStereo(this.effectMix, effectFrames)) {
            return false;
        }
        this.effectRemaining -= effectFrames;
        if (this.effectRemaining <= 0) {
            stopEffect();
        }
        int evol = clampVolume(sfxVolumePercent);
        for (int i = 0; i < effectFrames; i++) {
            short s = this.effectMix[i * 2];
            short s2 = this.effectMix[(i * 2) + 1];
            if (evol != 100) {
                s = (s * evol) / 100;
                s2 = (s2 * evol) / 100;
            }
            out[i * 2] = (short) s;
            out[(i * 2) + 1] = (short) s2;
        }
        return true;
    }

    boolean renderStereo(short[] out, int frames, int musicVolumePercent, int sfxVolumePercent) {
        if (out == null || frames < 0 || out.length < frames * 2 || frames > 512 || !renderMusicStereo(this.musicMix, frames, musicVolumePercent) || !renderEffectStereo(this.effectMix, frames, sfxVolumePercent)) {
            return false;
        }
        for (int i = 0; i < frames * 2; i++) {
            out[i] = clamp16(this.musicMix[i] + this.effectMix[i]);
        }
        return true;
    }

    private int nextMusicDacSample() {
        GenesisDirectSequenceVgmBuilder.BuiltSequence built = this.musicBuilt;
        if (built == null) {
            return 0;
        }
        GenesisGameplayVgmHardware.CapturedDacEvent[] events = built.dacEvents;
        while (this.nextDacEvent < events.length) {
            GenesisGameplayVgmHardware.CapturedDacEvent e = events[this.nextDacEvent];
            long eventSample = e.frame * 735;
            if (eventSample > this.musicCursorSamples) {
                break;
            }
            if (eventSample == this.musicCursorSamples) {
                startDac(e);
            }
            this.nextDacEvent++;
        }
        int value = 0;
        ActiveDac dac = this.activeDac;
        if (dac != null) {
            int pos = (int) dac.position;
            if (pos >= dac.sample.firstLength) {
                this.activeDac = null;
            } else {
                value = (this.data.sampleByte(dac.sample, pos) - 128) << 8;
                dac.position += dac.step;
                if (((int) dac.position) >= dac.sample.firstLength) {
                    this.activeDac = null;
                }
            }
        }
        advanceMusicCursor(built);
        return value;
    }

    private void startDac(GenesisGameplayVgmHardware.CapturedDacEvent event) {
        GenesisGemsSfxData.Sample sample = this.data.sample(event.sampleIndex);
        if (sample == null || sample.firstLength <= 0 || sample.looped() || sample.fourBit()) {
            this.activeDac = null;
            return;
        }
        int rateCode = event.patchRate == 4 ? sample.headerRateCode() : event.patchRate & 15;
        double sourceRate = GenesisGemsSfxData.sampleRateHz(rateCode);
        if (sourceRate <= 0.0d) {
            this.activeDac = null;
        } else {
            this.activeDac = new ActiveDac(sample, sourceRate / 44100.0d);
        }
    }

    private void advanceMusicCursor(GenesisDirectSequenceVgmBuilder.BuiltSequence built) {
        this.musicCursorSamples++;
        long total = built.ticks * 735;
        if (this.musicCursorSamples < total) {
            return;
        }
        if (built.looping && built.loopStartFrame >= 0 && built.loopStartFrame < built.ticks) {
            this.musicCursorSamples = built.loopStartFrame * 735;
            this.nextDacEvent = firstDacEventAtOrAfter(built, this.musicCursorSamples);
            this.activeDac = null;
        } else {
            this.musicActive = false;
            this.activeDac = null;
            this.music.close();
        }
    }

    private static long normalizeCursor(GenesisDirectSequenceVgmBuilder.BuiltSequence built, long absolute) {
        long total = built.ticks * 735;
        if (absolute <= 0) {
            return 0L;
        }
        if (absolute < total) {
            return absolute;
        }
        if (!built.looping || built.loopStartFrame < 0) {
            return total;
        }
        long start = built.loopStartFrame * 735;
        long span = total - start;
        return span <= 0 ? start : Math.floorMod(absolute - start, span) + start;
    }

    private static int firstDacEventAtOrAfter(GenesisDirectSequenceVgmBuilder.BuiltSequence built, long sample) {
        GenesisGameplayVgmHardware.CapturedDacEvent[] events = built.dacEvents;
        int lo = 0;
        int hi = events.length;
        while (lo < hi) {
            int mid = (lo + hi) >>> 1;
            long s = events[mid].frame * 735;
            if (s < sample) {
                lo = mid + 1;
            } else {
                hi = mid;
            }
        }
        return lo;
    }

    private static short clamp16(int v) {
        return (short) Math.max(-32768, Math.min(32767, v));
    }

    private static int clampVolume(int v) {
        return Math.max(0, Math.min(100, v));
    }
}
