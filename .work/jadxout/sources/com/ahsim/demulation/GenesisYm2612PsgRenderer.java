package com.ahsim.demulation;

import com.ahsim.demulation.GenesisGemsSfxData;
import java.util.Arrays;

/* loaded from: classes2.dex */
final class GenesisYm2612PsgRenderer extends GenesisGemsHardware {
    private static final double TWO_PI = 6.283185307179586d;
    private boolean dacBusy;
    private final GenesisGemsSfxData data;
    private long frame;
    private int masterAttenuation;
    private long nextPsgTick;
    private final int rate;
    private static final int[] FM_FNUM = {644, 682, 723, 766, 811, 859, 910, 965, 1022, 1083, 1147, 1215, 1288};
    private static final int[] PSG_WAVE = {1017, 960, 906, 855, 807, 762, 719, 679, 641, 605, 571, 539, 508, 480, 453, 428, 404, 381, RazorTerrainVisualSource.DESCRIPTOR_COUNT, 339, 320, 302, 285, 269, 254, 240, 226, 214, 202, 190, 180, 170, 160, 151, 143, 135, 127, GenesisMissionSequenceArt.PANEL_HEIGHT, 113, 107, GenesisCampaignTransitionRenderer.INITIAL_MAP_HOLD_TICKS, 95, 90, 85, 80, 76, 71, 67, 64, 60, 57, 53, 50, 47, 45, 42, 40, 38, 35, 33, 32, 30, 28, 28};
    private static final int[] CARRIER_MASK = {8, 8, 8, 8, 10, 14, 14, 15};
    private static final int[] FM_PATCH_OPERATOR = {5, 17, 11, 23};
    private static final double[] LFO_HZ = {3.98d, 5.56d, 6.02d, 6.37d, 6.88d, 9.63d, 48.1d, 72.2d};
    private static final double[] PMS_CENTS = {0.0d, 3.4d, 6.7d, 10.0d, 14.0d, 20.0d, 40.0d, 80.0d};
    private static final double[] AMS_DB = {0.0d, 1.4d, 5.9d, 11.8d};
    private static final double[] DT_CENTS = {0.0d, 3.0d, 6.0d, 10.0d, 0.0d, -10.0d, -6.0d, -3.0d};

    /* renamed from: fm */
    private final FmVoice[] f22fm = new FmVoice[6];
    private final PsgVoice[] psg = new PsgVoice[4];
    private volatile double soundGain = 1.0d;
    private volatile double musicGain = 1.0d;

    GenesisYm2612PsgRenderer(GenesisGemsSfxData data, int outputRate) {
        this.data = data;
        this.rate = outputRate;
        reset();
    }

    void reset() {
        Arrays.fill(this.f22fm, (Object) null);
        Arrays.fill(this.psg, (Object) null);
        this.masterAttenuation = 0;
        this.dacBusy = false;
        this.frame = 0L;
        this.nextPsgTick = Math.max(1L, Math.round(this.rate / 60.0d));
    }

    void setDacBusy(boolean busy) {
        this.dacBusy = busy;
        if (!busy || this.f22fm[5] == null) {
            return;
        }
        this.f22fm[5].keyOff();
    }

    @Override // com.ahsim.demulation.GenesisGemsHardware
    void setMasterAttenuation(int value) {
        this.masterAttenuation = clamp(value, 0, 127);
    }

    void setStreamVolumes(int soundPercent, int musicPercent) {
        this.soundGain = clamp(soundPercent, 0, 100) / 100.0d;
        this.musicGain = clamp(musicPercent, 0, 100) / 100.0d;
    }

    int masterAttenuationForDiagnostics() {
        return this.masterAttenuation;
    }

    @Override // com.ahsim.demulation.GenesisGemsHardware
    void stopSequence(int sequence) {
        for (int i = 0; i < this.f22fm.length; i++) {
            if (this.f22fm[i] != null && this.f22fm[i].sequence == sequence) {
                this.f22fm[i].keyOff();
            }
        }
        for (int i2 = 0; i2 < this.psg.length; i2++) {
            if (this.psg[i2] != null && this.psg[i2].sequence == sequence) {
                this.psg[i2].keyOff();
            }
        }
    }

    void stopAllVoices() {
        Arrays.fill(this.f22fm, (Object) null);
        Arrays.fill(this.psg, (Object) null);
        this.dacBusy = false;
    }

    void discardNonMusicVoices() {
        for (int i = 0; i < this.f22fm.length; i++) {
            if (this.f22fm[i] != null && !this.f22fm[i].music) {
                this.f22fm[i] = null;
            }
        }
        for (int i2 = 0; i2 < this.psg.length; i2++) {
            if (this.psg[i2] != null && !this.psg[i2].music) {
                this.psg[i2] = null;
            }
        }
        this.dacBusy = false;
    }

    void noteOn(int sequence, GenesisGemsSfxData.NoteEvent event) {
        noteOn(sequence, event, false);
    }

    @Override // com.ahsim.demulation.GenesisGemsHardware
    void noteOnMusic(int sequence, GenesisGemsSfxData.NoteEvent event) {
        noteOn(sequence, event, true);
    }

    private void noteOn(int sequence, GenesisGemsSfxData.NoteEvent event, boolean music) {
        GenesisGemsSfxData.Patch patch = this.data.patch(event.patchIndex);
        if (patch != null && patch.type == event.patchType) {
            if (event.patchType != 0) {
                if (event.patchType == 2) {
                    noteOnPsg(sequence, event, patch, false, music);
                    return;
                } else {
                    if (event.patchType == 3) {
                        noteOnPsg(sequence, event, patch, true, music);
                        return;
                    }
                    return;
                }
            }
            noteOnFm(sequence, event, patch, music);
        }
    }

    @Override // com.ahsim.demulation.GenesisGemsHardware
    void musicSubbeat() {
        for (FmVoice v : this.f22fm) {
            if (v != null && v.music) {
                v.musicSubbeat();
            }
        }
        for (PsgVoice v2 : this.psg) {
            if (v2 != null && v2.music) {
                v2.musicSubbeat();
            }
        }
    }

    @Override // com.ahsim.demulation.GenesisGemsHardware
    void setTrackBend(int sequence, int track, int bend256) {
        for (FmVoice v : this.f22fm) {
            if (v != null && v.sequence == sequence && v.track == track) {
                v.bendFactor = gemsFmBendFactor(v.note, bend256);
            }
        }
        for (PsgVoice v2 : this.psg) {
            if (v2 != null && v2.sequence == sequence && v2.track == track) {
                v2.bendFactor = gemsPsgBendFactor(v2.note, bend256);
            }
        }
    }

    double render() {
        long j;
        long j2 = 1;
        if (this.frame >= this.nextPsgTick) {
            do {
                tickPsgEnvelopes();
                this.nextPsgTick += Math.max(1L, Math.round(this.rate / 60.0d));
            } while (this.frame >= this.nextPsgTick);
        }
        double musicFm = 0.0d;
        double musicPsg = 0.0d;
        double sound = 0.0d;
        int soundActive = 0;
        int i = 0;
        while (i < this.f22fm.length) {
            FmVoice v = this.f22fm[i];
            if (v != null && (i != 5 || !this.dacBusy)) {
                double s = v.render(this.frame);
                if (v.dead()) {
                    this.f22fm[i] = null;
                } else {
                    if (v.music) {
                        musicFm += s;
                        j = j2;
                    } else {
                        j = j2;
                        sound += this.soundGain * s;
                        soundActive++;
                    }
                    i++;
                    j2 = j;
                }
            }
            j = j2;
            i++;
            j2 = j;
        }
        long j3 = j2;
        for (int i2 = 0; i2 < this.psg.length; i2++) {
            PsgVoice v2 = this.psg[i2];
            if (v2 != null) {
                double s2 = v2.render();
                if (v2.dead()) {
                    this.psg[i2] = null;
                } else if (v2.music) {
                    musicPsg += s2;
                } else {
                    sound += this.soundGain * s2;
                    soundActive++;
                }
            }
        }
        this.frame += j3;
        double music = ((musicPsg * 0.7d) + musicFm) * this.musicGain;
        double musicOut = Math.tanh(0.7d * music) * 0.9d;
        if (soundActive > 1) {
            sound /= Math.sqrt(soundActive);
        }
        double soundOut = Math.tanh(2.0d * sound) * 0.9d;
        return clamp(musicOut + soundOut, -1.0d, 1.0d);
    }

    boolean hasActiveVoices() {
        return activeFmVoicesForDiagnostics() > 0 || activePsgVoicesForDiagnostics() > 0;
    }

    int activeFmVoicesForDiagnostics() {
        int n = 0;
        for (FmVoice v : this.f22fm) {
            if (v != null && !v.dead()) {
                n++;
            }
        }
        return n;
    }

    int activePsgVoicesForDiagnostics() {
        int n = 0;
        for (PsgVoice v : this.psg) {
            if (v != null && !v.dead()) {
                n++;
            }
        }
        return n;
    }

    private void noteOnFm(int sequence, GenesisGemsSfxData.NoteEvent e, GenesisGemsSfxData.Patch p, boolean music) {
        int slot;
        if (p.fmChannel3Special()) {
            slot = allocateSpecificFm(2, e.priority);
        } else {
            int slot2 = e.priority;
            slot = allocateFm(slot2);
        }
        if (slot < 0) {
            return;
        }
        int attenuation = this.masterAttenuation + e.channelAttenuation;
        if (attenuation >= 128) {
            attenuation = 127;
        }
        this.f22fm[slot] = new FmVoice(this, sequence, e, p, attenuation, slot, music);
    }

    private int allocateSpecificFm(int slot, int priority) {
        FmVoice old = this.f22fm[slot];
        if (old == null || old.dead() || old.priority <= priority) {
            return slot;
        }
        return -1;
    }

    private int allocateFm(int priority) {
        FmVoice v;
        int[] order = {0, 1, 3, 4, 5, 2};
        for (int slot : order) {
            if ((slot != 5 || !this.dacBusy) && (this.f22fm[slot] == null || this.f22fm[slot].dead())) {
                return slot;
            }
        }
        int best = -1;
        int bestPriority = 256;
        for (int slot2 : order) {
            if ((slot2 != 5 || !this.dacBusy) && (v = this.f22fm[slot2]) != null && v.priority < bestPriority) {
                best = slot2;
                bestPriority = v.priority;
            }
        }
        if (best < 0 || bestPriority > priority) {
            return -1;
        }
        return best;
    }

    private void noteOnPsg(int sequence, GenesisGemsSfxData.NoteEvent e, GenesisGemsSfxData.Patch p, boolean noise, boolean music) {
        int slot;
        if (noise) {
            slot = 3;
            if (this.psg[3] != null && !this.psg[3].dead() && this.psg[3].priority > e.priority) {
                return;
            }
        } else {
            slot = -1;
            for (int i = 0; i < 3; i++) {
                if (this.psg[i] == null || this.psg[i].dead()) {
                    slot = i;
                    break;
                }
            }
            if (slot < 0) {
                int bp = 256;
                for (int i2 = 0; i2 < 3; i2++) {
                    if (this.psg[i2].priority < bp) {
                        bp = this.psg[i2].priority;
                        slot = i2;
                    }
                }
                if (bp > e.priority) {
                    return;
                }
            }
        }
        int bp2 = this.masterAttenuation;
        int attenuation = bp2 + e.channelAttenuation;
        if (attenuation >= 128) {
            attenuation = 127;
        }
        this.psg[slot] = new PsgVoice(sequence, e, p, noise, attenuation, music);
        this.psg[slot].tickEnvelope();
    }

    private void tickPsgEnvelopes() {
        for (PsgVoice v : this.psg) {
            if (v != null) {
                v.tickEnvelope();
            }
        }
    }

    private final class FmVoice {
        final int algorithm;
        final double amsDb;
        double fb1;
        double fb2;
        final int feedback;
        final int keyMask;
        double lfoPhase;
        final double lfoStep;
        final boolean music;
        int musicTicks;
        final int note;
        final long offFrame;
        final double pmsCents;
        final int priority;
        boolean released;
        final int sequence;
        final /* synthetic */ GenesisYm2612PsgRenderer this$0;
        final int track;
        double bendFactor = 1.0d;

        /* renamed from: op */
        final Operator[] f23op = new Operator[4];
        long hardKillFrame = Long.MAX_VALUE;

        /* JADX WARN: Multi-variable type inference failed */
        FmVoice(GenesisYm2612PsgRenderer genesisYm2612PsgRenderer, int sequence, GenesisGemsSfxData.NoteEvent e, GenesisGemsSfxData.Patch p, int attenuation, int slot, boolean music) {
            GenesisYm2612PsgRenderer genesisYm2612PsgRenderer2 = genesisYm2612PsgRenderer;
            this.this$0 = genesisYm2612PsgRenderer2;
            long j = Long.MAX_VALUE;
            this.sequence = sequence;
            this.track = e.track;
            this.priority = e.priority;
            this.music = music;
            this.note = e.note;
            this.algorithm = p.fmAlgorithm();
            this.feedback = p.fmFeedback();
            this.keyMask = p.fmKeyMask();
            if (!music && e.duration > 0) {
                j = genesisYm2612PsgRenderer2.frame + Math.round(e.duration * (genesisYm2612PsgRenderer2.rate / 60.0d));
            }
            this.offFrame = j;
            this.musicTicks = music ? e.duration : 0;
            int i = 1;
            int lfo = p.m4u8(1);
            this.lfoStep = (lfo & 8) != 0 ? (GenesisYm2612PsgRenderer.LFO_HZ[lfo & 7] * GenesisYm2612PsgRenderer.TWO_PI) / genesisYm2612PsgRenderer2.rate : 0.0d;
            int b4 = p.m4u8(4);
            this.pmsCents = GenesisYm2612PsgRenderer.PMS_CENTS[b4 & 7];
            this.amsDb = GenesisYm2612PsgRenderer.AMS_DB[(b4 >>> 4) & 3];
            int carriers = GenesisYm2612PsgRenderer.CARRIER_MASK[this.algorithm];
            int i2 = 0;
            for (int i3 = 4; i2 < i3; i3 = 4) {
                int base = GenesisYm2612PsgRenderer.FM_PATCH_OPERATOR[i2];
                double freq = p.fmChannel3Special() ? genesisYm2612PsgRenderer2.ch3Frequency(p, i2) : genesisYm2612PsgRenderer2.noteFrequency(e.note);
                int mul = p.m4u8(base) & 15;
                double ratio = mul == 0 ? 0.5d : mul;
                int dt = (p.m4u8(base) >>> i3) & 7;
                double freq2 = freq * Math.pow(2.0d, GenesisYm2612PsgRenderer.DT_CENTS[dt] / 1200.0d) * ratio;
                int tl = p.m4u8(base + 1) & 127;
                if ((carriers & (i << i2)) != 0) {
                    tl = genesisYm2612PsgRenderer2.attenuateCarrierTl(tl, attenuation);
                }
                int i4 = i2;
                this.f23op[i4] = genesisYm2612PsgRenderer2.new Operator(freq2, tl, p.m4u8(base + 2), p.m4u8(base + 3), p.m4u8(base + 4), p.m4u8(base + 5), (p.m4u8(base + 3) & 128) != 0 ? i : 0);
                if ((this.keyMask & (1 << i4)) == 0) {
                    this.f23op[i4].forceOff();
                }
                i2 = i4 + 1;
                genesisYm2612PsgRenderer2 = genesisYm2612PsgRenderer;
                i = 1;
            }
        }

        void keyOff() {
            if (this.released) {
                return;
            }
            this.released = true;
            this.hardKillFrame = this.this$0.frame + Math.round((this.this$0.rate * 254.0d) / 60.0d);
            for (Operator o : this.f23op) {
                o.keyOff();
            }
        }

        void musicSubbeat() {
            if (this.released || this.musicTicks <= 0) {
                return;
            }
            int i = this.musicTicks - 1;
            this.musicTicks = i;
            if (i == 0) {
                keyOff();
            }
        }

        boolean dead() {
            if (this.this$0.frame >= this.hardKillFrame) {
                return true;
            }
            for (Operator o : this.f23op) {
                if (!o.dead()) {
                    return false;
                }
            }
            return true;
        }

        double render(long now) {
            double d;
            char c;
            double feedbackIn;
            if (!this.released && now >= this.offFrame) {
                keyOff();
            }
            double lfo = Math.sin(this.lfoPhase);
            this.lfoPhase += this.lfoStep;
            if (this.lfoPhase > GenesisYm2612PsgRenderer.TWO_PI) {
                this.lfoPhase -= GenesisYm2612PsgRenderer.TWO_PI;
            }
            double cents = this.pmsCents * lfo;
            double pitch = Math.pow(2.0d, cents / 1200.0d) * this.bendFactor;
            double amGain = Math.pow(10.0d, ((-Math.max(0.0d, lfo)) * this.amsDb) / 20.0d);
            for (Operator o : this.f23op) {
                o.prepare(pitch, amGain);
            }
            if (this.feedback == 0) {
                d = 0.5d;
                feedbackIn = 0.0d;
                c = 1;
            } else {
                d = 0.5d;
                c = 1;
                feedbackIn = Math.pow(2.0d, this.feedback - 1) * 0.1d * (this.fb1 + this.fb2) * 0.5d;
            }
            double s1 = this.f23op[0].sample(feedbackIn);
            this.fb2 = this.fb1;
            this.fb1 = s1;
            switch (this.algorithm) {
                case 0:
                    double s2 = this.f23op[c].sample(s1 * 5.0d);
                    double s3 = this.f23op[2].sample(s2 * 5.0d);
                    double s4 = this.f23op[3].sample(s3 * 5.0d);
                    return s4;
                case 1:
                    double s22 = this.f23op[c].sample(0.0d);
                    double s32 = this.f23op[2].sample((s1 + s22) * 5.0d);
                    double s42 = this.f23op[3].sample(s32 * 5.0d);
                    return s42;
                case 2:
                    double s23 = this.f23op[c].sample(0.0d);
                    double s33 = this.f23op[2].sample(s23 * 5.0d);
                    double s43 = this.f23op[3].sample((s1 + s33) * 5.0d);
                    return s43;
                case 3:
                    double s24 = this.f23op[c].sample(s1 * 5.0d);
                    double s34 = this.f23op[2].sample(0.0d);
                    double s44 = this.f23op[3].sample((s24 + s34) * 5.0d);
                    return s44;
                case 4:
                    double s25 = this.f23op[c].sample(s1 * 5.0d);
                    double s35 = this.f23op[2].sample(0.0d);
                    double s45 = this.f23op[3].sample(s35 * 5.0d);
                    double out = (s25 + s45) * d;
                    return out;
                case 5:
                    double s26 = this.f23op[c].sample(s1 * 5.0d);
                    double s36 = this.f23op[2].sample(s1 * 5.0d);
                    double s46 = this.f23op[3].sample(s1 * 5.0d);
                    double out2 = ((s26 + s36) + s46) / 3.0d;
                    return out2;
                case 6:
                    double s27 = this.f23op[c].sample(s1 * 5.0d);
                    double s37 = this.f23op[2].sample(0.0d);
                    double s47 = this.f23op[3].sample(0.0d);
                    double out3 = ((s27 + s37) + s47) / 3.0d;
                    return out3;
                default:
                    double s28 = this.f23op[c].sample(0.0d);
                    double s38 = this.f23op[2].sample(0.0d);
                    double s48 = this.f23op[3].sample(0.0d);
                    double out4 = 0.25d * (s1 + s28 + s38 + s48);
                    return out4;
            }
        }
    }

    private final class Operator {
        final boolean amEnabled;
        final double attackCoef;
        final double baseStep;
        final double decayCoef;
        double env;
        double phase;
        final double releaseCoef;
        int state;
        final double sustainCoef;
        final double sustainGain;
        final double tlGain;
        double pitch = 1.0d;
        double amGain = 1.0d;

        Operator(double frequency, int tl, int rsAr, int amDr, int sr, int slRr, boolean amEnabled) {
            int i;
            this.baseStep = (GenesisYm2612PsgRenderer.TWO_PI * frequency) / GenesisYm2612PsgRenderer.this.rate;
            this.tlGain = Math.pow(2.0d, (-tl) / 8.0d);
            int ar = rsAr & 31;
            int dr = amDr & 31;
            int sustainRate = sr & 31;
            int sl = (slRr >>> 4) & 15;
            int rr = slRr & 15;
            this.sustainGain = Math.pow(10.0d, sl >= 15 ? -4.65d : (-(sl * 3.0d)) / 20.0d);
            this.attackCoef = GenesisYm2612PsgRenderer.this.rateCoef(ar, 31, 0.0025d, 4.0d);
            this.decayCoef = GenesisYm2612PsgRenderer.this.releaseMultiplier(dr, 31, 0.018d, 4.0d);
            this.sustainCoef = GenesisYm2612PsgRenderer.this.releaseMultiplier(sustainRate, 31, 0.03d, 4.0d);
            this.releaseCoef = GenesisYm2612PsgRenderer.this.releaseMultiplier((rr * 2) + 1, 31, 0.02d, 4.0d);
            this.amEnabled = amEnabled;
            if (ar == 0) {
                this.env = 1.0d;
                i = 1;
            } else {
                this.env = 0.0d;
                i = 0;
            }
            this.state = i;
        }

        void prepare(double p, double am) {
            this.pitch = p;
            this.amGain = am;
        }

        void forceOff() {
            this.state = 4;
            this.env = 0.0d;
        }

        void keyOff() {
            if (this.state != 4) {
                this.state = 3;
            }
        }

        boolean dead() {
            return this.state == 4;
        }

        double sample(double modulation) {
            advanceEnvelope();
            if (this.state == 4) {
                return 0.0d;
            }
            this.phase += this.baseStep * this.pitch;
            if (this.phase > GenesisYm2612PsgRenderer.TWO_PI) {
                this.phase -= Math.floor(this.phase / GenesisYm2612PsgRenderer.TWO_PI) * GenesisYm2612PsgRenderer.TWO_PI;
            }
            return Math.sin(this.phase + modulation) * this.env * this.tlGain * (this.amEnabled ? this.amGain : 1.0d);
        }

        void advanceEnvelope() {
            switch (this.state) {
                case 0:
                    this.env += (1.0d - this.env) * this.attackCoef;
                    if (this.env >= 0.999d) {
                        this.env = 1.0d;
                        this.state = 1;
                        break;
                    }
                    break;
                case 1:
                    this.env *= this.decayCoef;
                    if (this.env <= this.sustainGain) {
                        this.env = this.sustainGain;
                        this.state = 2;
                        break;
                    }
                    break;
                case 2:
                    if (this.sustainCoef < 1.0d) {
                        this.env *= this.sustainCoef;
                        if (this.env < 1.0E-5d) {
                            this.env = 0.0d;
                            this.state = 4;
                            break;
                        }
                    }
                    break;
                case 3:
                    this.env *= this.releaseCoef;
                    if (this.env < 1.0E-5d) {
                        this.env = 0.0d;
                        this.state = 4;
                        break;
                    }
                    break;
            }
        }
    }

    private final class PsgVoice {
        final int attack;
        final int attackLevel;
        final double attenuationGain;
        final int decay;
        boolean keyReleased;
        final boolean music;
        int musicTicks;
        final boolean noise;
        double noisePhase;
        double noiseStep;
        final int note;
        final long offFrame;
        double phase;
        double phaseStep;
        final int priority;
        final int release;
        final int sequence;
        final int sustain;
        double toneBaseStep;
        final int track;
        final boolean whiteNoise;
        double bendFactor = 1.0d;
        int level = 255;
        int mode = 1;
        int lfsr = 32768;

        PsgVoice(int sequence, GenesisGemsSfxData.NoteEvent e, GenesisGemsSfxData.Patch p, boolean noise, int attenuation, boolean music) {
            this.sequence = sequence;
            this.track = e.track;
            this.priority = e.priority;
            this.note = e.note;
            this.noise = noise;
            this.music = music;
            this.offFrame = (music || e.duration <= 0) ? Long.MAX_VALUE : GenesisYm2612PsgRenderer.this.frame + Math.round(e.duration * (GenesisYm2612PsgRenderer.this.rate / 60.0d));
            this.musicTicks = music ? e.duration : 0;
            int wavelength = GenesisYm2612PsgRenderer.this.psgWavelength(e.note);
            double toneHz = 3579545.0d / (Math.max(1, wavelength) * 32.0d);
            this.toneBaseStep = toneHz / GenesisYm2612PsgRenderer.this.rate;
            this.phaseStep = this.toneBaseStep;
            int nd = p.m4u8(1);
            this.whiteNoise = (nd & 4) != 0;
            int sel = nd & 3;
            double nHz = sel == 3 ? toneHz : 3579545.0d / ((1 << sel) * 512.0d);
            this.noiseStep = nHz / GenesisYm2612PsgRenderer.this.rate;
            this.attack = p.m4u8(2);
            this.sustain = (p.m4u8(3) & 15) << 4;
            this.attackLevel = (p.m4u8(4) & 15) << 4;
            this.decay = p.m4u8(5);
            this.release = p.m4u8(6);
            this.attenuationGain = Math.pow(10.0d, (-(attenuation * 0.75d)) / 20.0d);
        }

        void keyOff() {
            if (this.mode != 0) {
                this.mode = 4;
                this.keyReleased = true;
            }
        }

        void musicSubbeat() {
            if (this.keyReleased || this.musicTicks <= 0) {
                return;
            }
            int i = this.musicTicks - 1;
            this.musicTicks = i;
            if (i == 0) {
                keyOff();
            }
        }

        boolean dead() {
            return this.mode == 0;
        }

        void tickEnvelope() {
            if (!this.keyReleased && GenesisYm2612PsgRenderer.this.frame >= this.offFrame) {
                keyOff();
            }
            switch (this.mode) {
                case 1:
                    int n = this.level - this.attack;
                    if (n > 0 && n > this.attackLevel) {
                        this.level = n;
                        break;
                    } else {
                        this.level = this.attackLevel;
                        this.mode = 2;
                        break;
                    }
                case 2:
                    if (this.level >= this.sustain) {
                        if (this.level <= this.sustain) {
                            this.mode = 3;
                            break;
                        } else {
                            int n2 = this.level - this.decay;
                            if (n2 >= 0 && n2 >= this.sustain) {
                                this.level = n2;
                                break;
                            } else {
                                this.level = this.sustain;
                                this.mode = 3;
                                break;
                            }
                        }
                    } else {
                        int n3 = this.level + this.decay;
                        if (n3 < 256 && n3 < this.sustain) {
                            this.level = n3;
                            break;
                        } else {
                            this.level = this.sustain;
                            this.mode = 3;
                            break;
                        }
                    }
                    break;
                case 4:
                    int n4 = this.level + this.release;
                    if (n4 >= 256) {
                        this.level = 255;
                        this.mode = 0;
                        break;
                    } else {
                        this.level = n4;
                        break;
                    }
            }
        }

        double render() {
            if (!this.keyReleased && GenesisYm2612PsgRenderer.this.frame >= this.offFrame) {
                keyOff();
            }
            if (this.mode == 0) {
                return 0.0d;
            }
            double wave = -1.0d;
            if (this.noise) {
                this.noisePhase += this.noiseStep;
                while (this.noisePhase >= 1.0d) {
                    this.noisePhase -= 1.0d;
                    int bit = (this.whiteNoise ? this.lfsr ^ (this.lfsr >> 3) : this.lfsr) & 1;
                    this.lfsr = (this.lfsr >> 1) | (bit << 15);
                }
                if ((this.lfsr & 1) == 0) {
                    wave = 1.0d;
                }
            } else {
                this.phaseStep = this.toneBaseStep * this.bendFactor;
                this.phase += this.phaseStep;
                if (this.phase >= 1.0d) {
                    this.phase -= Math.floor(this.phase);
                }
                if (this.phase < 0.5d) {
                    wave = 1.0d;
                }
            }
            int att = GenesisYm2612PsgRenderer.clamp(this.level >>> 4, 0, 15);
            double amp = att < 15 ? Math.pow(10.0d, (-(att * 2.0d)) / 20.0d) : 0.0d;
            return wave * amp * this.attenuationGain * 0.55d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int attenuateCarrierTl(int tl, int attenuation) {
        int loud = 127 - (tl & 127);
        int noteAtt = ((loud << 1) * attenuation) >> 8;
        return clamp(127 - (loud - noteAtt), 0, 127);
    }

    private double gemsFmBendFactor(int note, int bend256) {
        int base = clamp(note, 0, 95);
        double baseHz = noteFrequency(base);
        int whole = Math.floorDiv((int) ((short) bend256), 256);
        int frac = ((short) bend256) & 255;
        int bent = base + whole;
        if (bent < 0) {
            bent = 0;
            frac = 0;
        }
        if (bent >= 95) {
            bent = 95;
            frac = 0;
        }
        int block = bent / 12;
        int pc = bent % 12;
        int f0 = FM_FNUM[pc];
        int f1 = FM_FNUM[pc + 1];
        int fnum = (((f1 - f0) * frac) >> 8) + f0;
        double hz = ((fnum * 7670453.571428572d) * Math.pow(2.0d, block - 1)) / 1.50994944E8d;
        if (baseHz > 0.0d) {
            return hz / baseHz;
        }
        return 1.0d;
    }

    private double gemsPsgBendFactor(int note, int bend256) {
        int base = clamp(note, 0, 95);
        int baseWave = psgWavelength(base);
        int whole = Math.floorDiv((int) ((short) bend256), 256);
        int frac = ((short) bend256) & 255;
        int bent = base + whole;
        if (bent < 33) {
            bent = 33;
            frac = 0;
        }
        if (bent >= 95) {
            bent = 95;
            frac = 0;
        }
        int w0 = psgWavelength(bent);
        int w1 = psgWavelength(Math.min(95, bent + 1));
        int wave = (((w1 - w0) * frac) >> 8) + w0;
        if (wave > 0) {
            return baseWave / wave;
        }
        return 1.0d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double noteFrequency(int note) {
        int n = clamp(note, 0, 95);
        int block = n / 12;
        int fnum = FM_FNUM[n % 12];
        return ((fnum * 7670453.571428572d) * Math.pow(2.0d, block - 1)) / 1.50994944E8d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double ch3Frequency(GenesisGemsSfxData.Patch p, int opIndex) {
        int base = (opIndex * 2) + 29;
        int hi = p.m4u8(base);
        int lo = p.m4u8(base + 1);
        int raw = (hi << 8) | lo;
        int fnum = raw & 2047;
        int block = (raw >>> 11) & 7;
        if (fnum == 0) {
            return 1.0d;
        }
        return ((fnum * 7670453.571428572d) * Math.pow(2.0d, block - 1)) / 1.50994944E8d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int psgWavelength(int note) {
        int n = clamp(note, 0, 95);
        return n < 33 ? PSG_WAVE[0] : PSG_WAVE[Math.min(62, n - 33)];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double rateCoef(int value, int max, double fastest, double stepsPerDoubling) {
        if (value <= 0) {
            return 1.0d;
        }
        double seconds = Math.pow(2.0d, (max - value) / stepsPerDoubling) * fastest;
        return 1.0d - Math.exp((-1.0d) / Math.max(1.0d, this.rate * seconds));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double releaseMultiplier(int value, int max, double fastest, double stepsPerDoubling) {
        if (value <= 0) {
            return 1.0d;
        }
        double seconds = Math.pow(2.0d, (max - value) / stepsPerDoubling) * fastest;
        return Math.exp((-1.0d) / Math.max(1.0d, this.rate * seconds));
    }

    private double rateCoef(int value, int max, double fastest, double stepsPerDoubling, boolean multiplier) {
        return multiplier ? releaseMultiplier(value, max, fastest, stepsPerDoubling) : rateCoef(value, max, fastest, stepsPerDoubling);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int clamp(int v, int lo, int hi) {
        return v < lo ? lo : v > hi ? hi : v;
    }

    private static double clamp(double v, double lo, double hi) {
        return v < lo ? lo : v > hi ? hi : v;
    }
}
