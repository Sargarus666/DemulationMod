package com.ahsim.demulation;

import com.ahsim.demulation.GenesisGemsSfxData;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes2.dex */
final class GenesisGameplayVgmHardware extends GenesisGemsHardware {
    private boolean dacBusy;
    private long dacBusyUntilFrame;
    private final GenesisGemsSfxData data;
    private long frames;
    private long lastHardwareWriteFrame;
    private int masterAttenuation;
    private static final int[] FM_IDS = {0, 1, 4, 5, 6, 2};
    private static final int[] CARRIER = {8, 8, 8, 8, 10, 14, 14, 15};
    private static final int[] FM_FNUM = {644, 682, 723, 766, 811, 859, 910, 965, 1022, 1083, 1147, 1215, 1288};
    private static final int[] PSG_WAVE = {1017, 960, 906, 855, 807, 762, 719, 679, 641, 605, 571, 539, 508, 480, 453, 428, 404, 381, RazorTerrainVisualSource.DESCRIPTOR_COUNT, 339, 320, 302, 285, 269, 254, 240, 226, 214, 202, 190, 180, 170, 160, 151, 143, 135, 127, GenesisMissionSequenceArt.PANEL_HEIGHT, 113, 107, GenesisCampaignTransitionRenderer.INITIAL_MAP_HOLD_TICKS, 95, 90, 85, 80, 76, 71, 67, 64, 60, 57, 53, 50, 47, 45, 42, 40, 38, 35, 33, 32, 30, 28, 28};

    /* renamed from: fm */
    private final Voice[] f6fm = new Voice[6];
    private final PVoice[] psg = {new PVoice(0), new PVoice(1), new PVoice(2), new PVoice(3)};
    private final int[] bends = new int[16];
    private final ByteArrayOutputStream commands = new ByteArrayOutputStream(1048576);
    private final ArrayList<CapturedDacEvent> capturedDacEvents = new ArrayList<>();
    private int markedLoopCommandOffset = -1;
    private long markedLoopFrame = -1;

    private static final class Voice {

        /* renamed from: id */
        final int f8id;
        boolean free = true;
        boolean releasing = false;
        boolean locked = false;
        int releaseTimer = 0;
        int priority = 0;
        int note = 0;
        int track = 0;
        int sequence = -1;
        int duration = 0;
        boolean special = false;

        Voice(int id) {
            this.f8id = id;
        }
    }

    static final class CapturedDacEvent {
        final long frame;
        final int patchRate;
        final int sampleIndex;

        CapturedDacEvent(long frame, int sampleIndex, int patchRate) {
            this.frame = frame;
            this.sampleIndex = sampleIndex;
            this.patchRate = patchRate;
        }
    }

    private static final class PVoice {

        /* renamed from: id */
        final int f7id;
        boolean free = true;
        boolean releasing = false;
        boolean locked = false;
        int releaseTimer = 0;
        int priority = 0;
        int note = 0;
        int track = 0;
        int sequence = -1;
        int duration = 0;

        /* renamed from: com, reason: collision with root package name */
        int f67com = 0;
        int level = 255;
        int atk = 0;
        int dec = 0;
        int slv = 0;
        int rrt = 0;
        int mode = 0;
        int dtl = 0;
        int dth = 0;
        int alv = 0;
        int tonePeriod = 1;
        boolean update = false;

        PVoice(int id) {
            this.f7id = id;
        }
    }

    GenesisGameplayVgmHardware(GenesisGemsSfxData data) {
        this.data = data;
        for (int i = 0; i < 6; i++) {
            this.f6fm[i] = new Voice(FM_IDS[i]);
        }
        reset();
    }

    void reset() {
        this.commands.reset();
        this.frames = 0L;
        this.lastHardwareWriteFrame = 0L;
        this.masterAttenuation = 0;
        this.dacBusy = false;
        this.dacBusyUntilFrame = 0L;
        Arrays.fill(this.bends, 0);
        this.capturedDacEvents.clear();
        this.markedLoopCommandOffset = -1;
        this.markedLoopFrame = -1L;
        for (Voice v : this.f6fm) {
            v.free = true;
            v.releasing = false;
            v.locked = false;
            v.releaseTimer = 0;
            v.sequence = -1;
            v.duration = 0;
        }
        for (PVoice v2 : this.psg) {
            v2.free = true;
            v2.releasing = false;
            v2.locked = false;
            v2.releaseTimer = 0;
            v2.sequence = -1;
            v2.duration = 0;
            v2.f67com = 0;
            v2.level = 255;
            v2.mode = 0;
            v2.update = false;
        }
        psgWrite(159);
        psgWrite(191);
        psgWrite(223);
        psgWrite(255);
        int[] iArr = {0, 1, 2, 4, 5, 6};
        for (int i = 0; i < 6; i++) {
            int id = iArr[i];
            ym0(40, id);
        }
    }

    void setDacBusy(boolean busy) {
        this.dacBusy = busy;
        for (Voice v : this.f6fm) {
            if (v.f8id == 6) {
                if (busy && !v.free) {
                    releaseFm(v);
                }
                v.locked = busy;
            }
        }
    }

    @Override // com.ahsim.demulation.GenesisGemsHardware
    void setMasterAttenuation(int value) {
        this.masterAttenuation = clamp(value, 0, 127);
    }

    void setStreamVolumes(int s, int m) {
    }

    int masterAttenuationForDiagnostics() {
        return this.masterAttenuation;
    }

    @Override // com.ahsim.demulation.GenesisGemsHardware
    void stopSequence(int sequence) {
        for (Voice v : this.f6fm) {
            if (!v.free && v.sequence == sequence) {
                releaseFm(v);
            }
        }
        for (PVoice v2 : this.psg) {
            if (!v2.free && v2.sequence == sequence) {
                releasePsg(v2);
            }
        }
    }

    void stopAllVoices() {
        for (Voice v : this.f6fm) {
            if (!v.free) {
                releaseFm(v);
            }
        }
        for (PVoice v2 : this.psg) {
            if (!v2.free) {
                releasePsg(v2);
            }
        }
    }

    void discardNonMusicVoices() {
    }

    void noteOn(int sequence, GenesisGemsSfxData.NoteEvent event) {
        noteOnImpl(sequence, event);
    }

    @Override // com.ahsim.demulation.GenesisGemsHardware
    void noteOnMusic(int sequence, GenesisGemsSfxData.NoteEvent event) {
        noteOnImpl(sequence, event);
    }

    private void noteOnImpl(int sequence, GenesisGemsSfxData.NoteEvent e) {
        GenesisGemsSfxData.Patch p = this.data.patch(e.patchIndex);
        if (p == null) {
            return;
        }
        if (p.type != 0) {
            if (p.type != 1 || this.data.isGameplayBank()) {
                if (p.type == 2 || p.type == 3) {
                    notePsg(sequence, e, p);
                    return;
                }
                return;
            }
            noteDac(e, p);
            return;
        }
        noteFm(sequence, e, p);
    }

    private Voice allocFm(int track, int prio, boolean special) {
        if (special) {
            Voice v = findFmId(2);
            if (v == null || v.locked) {
                return null;
            }
            if (!v.free && v.priority > prio) {
                return null;
            }
            return v;
        }
        Voice same = null;
        Voice freest = null;
        Voice lowest = null;
        int freeScore = 256;
        int lowPrio = 256;
        Voice[] voiceArr = this.f6fm;
        int length = voiceArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            Voice v2 = voiceArr[i];
            if (!v2.locked && (v2.f8id != 6 || !this.dacBusy)) {
                if (v2.free) {
                    if (v2.track == track) {
                        same = v2;
                        break;
                    }
                    if (v2.releaseTimer < freeScore) {
                        freeScore = v2.releaseTimer;
                        freest = v2;
                    }
                } else if (v2.priority < lowPrio) {
                    lowPrio = v2.priority;
                    lowest = v2;
                }
            }
            i++;
        }
        if (same != null) {
            return same;
        }
        if (freest != null) {
            return freest;
        }
        if (lowest == null || lowest.priority > prio) {
            return null;
        }
        return lowest;
    }

    private void noteFm(int sequence, GenesisGemsSfxData.NoteEvent e, GenesisGemsSfxData.Patch p) {
        boolean special = p.fmChannel3Special();
        Voice v = allocFm(e.track, e.priority, special);
        if (v == null) {
            return;
        }
        if (!v.free) {
            ym0(40, v.f8id);
        }
        v.free = false;
        v.releasing = false;
        v.releaseTimer = 254;
        v.priority = e.priority;
        v.note = e.note;
        v.track = e.track;
        v.sequence = sequence;
        v.duration = e.duration;
        v.special = special;
        int atten = clamp(this.masterAttenuation + e.channelAttenuation, 0, 127);
        int phys = v.f8id;
        int bank = phys > 3 ? 1 : 0;
        int ch = phys > 3 ? phys - 4 : phys;
        if (phys == 2) {
            ym0(39, (p.m4u8(2) | 5) & 255);
        }
        if ((p.m4u8(1) & 8) != 0) {
            ym0(34, p.m4u8(1));
        }
        int alg = p.m4u8(3) & 7;
        int carriers = CARRIER[alg];
        writeFmReg(bank, ch, GenesisMissionSequenceArt.BANNER_STOP_Y, p.m4u8(3));
        writeFmReg(bank, ch, 180, p.m4u8(4));
        int[] regBase = {48, 56, 52, 60};
        int[] rawBase = {5, 17, 11, 23};
        int op = 0;
        while (op < 4) {
            int r = regBase[op];
            int b = rawBase[op];
            boolean special2 = special;
            writeFmReg(bank, ch, r, p.m4u8(b));
            int tl = p.m4u8(b + 1) & 127;
            if ((carriers & (1 << op)) != 0) {
                int loud = 127 - tl;
                int na = ((loud << 1) * atten) >> 8;
                tl = 127 - (loud - na);
            }
            writeFmReg(bank, ch, r + 16, tl);
            writeFmReg(bank, ch, r + 32, p.m4u8(b + 2));
            writeFmReg(bank, ch, r + 48, p.m4u8(b + 3));
            writeFmReg(bank, ch, r + 64, p.m4u8(b + 4));
            writeFmReg(bank, ch, r + 80, p.m4u8(b + 5));
            writeFmReg(bank, ch, r + 96, 0);
            op++;
            special = special2;
            v = v;
        }
        if (!special) {
            int f = getFreq(false, e.note, this.bends[e.track]);
            writeFmReg(bank, ch, 164, (f >>> 8) & 255);
            writeFmReg(bank, ch, 160, f & 255);
        } else {
            ym0(166, p.m4u8(29));
            ym0(162, p.m4u8(30));
            ym0(172, p.m4u8(31));
            ym0(168, p.m4u8(32));
            ym0(173, p.m4u8(33));
            ym0(169, p.m4u8(34));
            ym0(174, p.m4u8(35));
            ym0(170, p.m4u8(36));
        }
        ym0(40, ((p.m4u8(37) & 15) << 4) | phys);
    }

    private void noteDac(GenesisGemsSfxData.NoteEvent e, GenesisGemsSfxData.Patch p) {
        int sampleIndex = e.note < 48 ? e.note + 48 : e.note - 48;
        GenesisGemsSfxData.Sample sample = this.data.sample(sampleIndex);
        if (sample == null || sample.firstLength <= 0 || sample.looped()) {
            return;
        }
        if (sample.fourBit()) {
            return;
        }
        int patchRate = p.m4u8(1);
        this.capturedDacEvents.add(new CapturedDacEvent(this.frames, sampleIndex, patchRate));
        int rateCode = patchRate == 4 ? sample.headerRateCode() : patchRate & 15;
        double hz = GenesisGemsSfxData.sampleRateHz(rateCode);
        if (hz > 0.0d) {
            long busyFrames = (long) Math.ceil((sample.firstLength * 60.0d) / hz);
            setDacBusy(true);
            this.dacBusyUntilFrame = Math.max(this.frames + 1, this.frames + Math.max(1L, busyFrames));
        }
    }

    private PVoice allocPsg(int track, int prio, boolean noise) {
        if (noise) {
            PVoice v = this.psg[3];
            if (v.free || v.priority <= prio) {
                return v;
            }
            return null;
        }
        PVoice same = null;
        PVoice freest = null;
        PVoice lowest = null;
        int fs = 256;
        int lp = 256;
        int i = 0;
        while (true) {
            if (i >= 3) {
                break;
            }
            PVoice v2 = this.psg[i];
            if (!v2.locked) {
                if (v2.free) {
                    if (v2.track == track) {
                        same = v2;
                        break;
                    }
                    if (v2.releaseTimer < fs) {
                        fs = v2.releaseTimer;
                        freest = v2;
                    }
                } else if (v2.priority < lp) {
                    lp = v2.priority;
                    lowest = v2;
                }
            }
            i++;
        }
        if (same != null) {
            return same;
        }
        if (freest != null) {
            return freest;
        }
        if (lowest == null || lowest.priority > prio) {
            return null;
        }
        return lowest;
    }

    private void notePsg(int sequence, GenesisGemsSfxData.NoteEvent e, GenesisGemsSfxData.Patch p) {
        boolean noise = p.type == 3;
        PVoice v = allocPsg(e.track, e.priority, noise);
        if (v == null) {
            return;
        }
        if (!v.free) {
            v.f67com |= 2;
        }
        v.free = false;
        v.releasing = false;
        v.releaseTimer = 254;
        v.priority = e.priority;
        v.note = e.note;
        v.track = e.track;
        v.sequence = sequence;
        v.duration = e.duration;
        int w = getFreq(true, e.note, this.bends[e.track]);
        v.tonePeriod = w;
        v.dtl = w & 15;
        v.dth = (w >>> 4) & 63;
        if (noise) {
            v.dtl = p.m4u8(1);
        }
        v.atk = p.m4u8(2);
        v.slv = (p.m4u8(3) << 4) & 255;
        v.alv = (p.m4u8(4) << 4) & 255;
        v.dec = p.m4u8(5);
        v.rrt = p.m4u8(6);
        v.f67com = 1 | v.f67com;
    }

    @Override // com.ahsim.demulation.GenesisGemsHardware
    void musicSubbeat() {
        for (Voice v : this.f6fm) {
            if (v.free && v.releasing) {
                if (v.releaseTimer > 0) {
                    v.releaseTimer--;
                }
                if (v.releaseTimer == 0) {
                    v.releasing = false;
                }
            } else if (!v.free && v.duration > 0) {
                int i = v.duration - 1;
                v.duration = i;
                if (i == 0) {
                    releaseFm(v);
                }
            }
        }
        for (PVoice v2 : this.psg) {
            if (v2.free && v2.releasing) {
                if (v2.releaseTimer > 0) {
                    v2.releaseTimer--;
                }
                if (v2.releaseTimer == 0) {
                    v2.releasing = false;
                }
            } else if (!v2.free && v2.duration > 0) {
                int i2 = v2.duration - 1;
                v2.duration = i2;
                if (i2 == 0) {
                    releasePsg(v2);
                }
            }
        }
    }

    @Override // com.ahsim.demulation.GenesisGemsHardware
    void setTrackBend(int sequence, int track, int bend256) {
        if (track >= 0 && track < this.bends.length) {
            this.bends[track] = (short) bend256;
        }
        Voice[] voiceArr = this.f6fm;
        int length = voiceArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            Voice v = voiceArr[i];
            if (v.sequence == sequence && v.track == track && !v.free) {
                int phys = v.f8id;
                int bank = phys <= 3 ? 0 : 1;
                int ch = phys > 3 ? phys - 4 : phys;
                int f = getFreq(false, v.note, bend256);
                writeFmReg(bank, ch, 164, (f >>> 8) & 255);
                writeFmReg(bank, ch, 160, f & 255);
            }
            i++;
        }
        for (PVoice v2 : this.psg) {
            if (v2.sequence == sequence && v2.track == track && !v2.free) {
                int w = getFreq(true, v2.note, bend256);
                v2.tonePeriod = w;
                if (v2.f7id < 3) {
                    v2.dtl = w & 15;
                    v2.dth = (w >>> 4) & 63;
                    psgWrite((v2.f7id << 5) | 128 | v2.dtl);
                    psgWrite(v2.dth);
                } else if ((v2.dtl & 3) == 3) {
                    psgWrite((w & 15) | RomRuntimeNativeDataAssets.VISUAL_STREAMS_OFFSET);
                    psgWrite((w >>> 4) & 63);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x009d, code lost:
    
        if (r6 < r4.slv) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x009f, code lost:
    
        r4.level = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00bb, code lost:
    
        if (r6 >= r4.slv) goto L42;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void driverTick60Hz() {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisGameplayVgmHardware.driverTick60Hz():void");
    }

    void endFrame() {
        this.commands.write(98);
        this.frames++;
    }

    @Override // com.ahsim.demulation.GenesisGemsHardware
    void markDiagnosticLoopPoint() {
        if (this.markedLoopCommandOffset < 0) {
            this.markedLoopCommandOffset = this.commands.size();
            this.markedLoopFrame = this.frames;
        }
    }

    long markedLoopFrameForDiagnostics() {
        return this.markedLoopFrame;
    }

    CapturedDacEvent[] capturedDacEventsForDiagnostics() {
        return (CapturedDacEvent[]) this.capturedDacEvents.toArray(new CapturedDacEvent[this.capturedDacEvents.size()]);
    }

    int lastHardwareWriteFrameForSfxCache() {
        return (int) Math.min(2147483647L, this.lastHardwareWriteFrame);
    }

    double render() {
        return 0.0d;
    }

    boolean hasActiveVoices() {
        return true;
    }

    int activeFmVoicesForDiagnostics() {
        return 0;
    }

    int activePsgVoicesForDiagnostics() {
        return 0;
    }

    byte[] toVgmBytes() {
        return toVgmBytes(false);
    }

    byte[] toVgmBytes(boolean loopFromStart) {
        return finishVgm(loopFromStart ? 0 : -1, loopFromStart ? 0L : -1L);
    }

    byte[] toVgmBytesMarkedLoop(boolean looping) {
        if (!looping) {
            return finishVgm(-1, -1L);
        }
        if (this.markedLoopCommandOffset < 0 || this.markedLoopFrame < 0) {
            return finishVgm(0, 0L);
        }
        return finishVgm(this.markedLoopCommandOffset, this.markedLoopFrame);
    }

    private byte[] finishVgm(int loopCommandOffset, long loopFrame) {
        this.commands.write(102);
        byte[] cmd = this.commands.toByteArray();
        byte[] out = new byte[cmd.length + 64];
        out[0] = 86;
        out[1] = 103;
        out[2] = 109;
        out[3] = 32;
        put32(out, 8, 336);
        put32(out, 12, 3579545);
        int totalSamples = (int) Math.min(4294967295L, this.frames * 735);
        put32(out, 24, totalSamples);
        if (loopCommandOffset >= 0) {
            put32(out, 28, (loopCommandOffset + 64) - 28);
            long loopSamples = Math.max(0L, this.frames - Math.max(0L, loopFrame)) * 735;
            put32(out, 32, (int) Math.min(4294967295L, loopSamples));
        }
        put32(out, 36, 60);
        out[40] = 9;
        out[41] = 0;
        out[42] = 16;
        out[43] = 0;
        put32(out, 44, 7670454);
        put32(out, 52, 12);
        put32(out, 4, out.length - 4);
        System.arraycopy(cmd, 0, out, 64, cmd.length);
        return out;
    }

    private void releaseFm(Voice v) {
        ym0(40, v.f8id);
        v.free = true;
        v.releasing = true;
        v.releaseTimer = 254;
    }

    private void releasePsg(PVoice v) {
        v.f67com |= 2;
        v.free = true;
        v.releasing = true;
        v.releaseTimer = 254;
    }

    private Voice findFmId(int id) {
        for (Voice v : this.f6fm) {
            if (v.f8id == id) {
                return v;
            }
        }
        return null;
    }

    private void writeFmReg(int bank, int ch, int reg, int val) {
        int i = reg | ch;
        if (bank == 0) {
            ym0(i, val);
        } else {
            ym1(i, val);
        }
    }

    private void ym0(int reg, int val) {
        this.lastHardwareWriteFrame = this.frames;
        this.commands.write(82);
        this.commands.write(reg & 255);
        this.commands.write(val & 255);
    }

    private void ym1(int reg, int val) {
        this.lastHardwareWriteFrame = this.frames;
        this.commands.write(83);
        this.commands.write(reg & 255);
        this.commands.write(val & 255);
    }

    private void psgWrite(int val) {
        this.lastHardwareWriteFrame = this.frames;
        this.commands.write(80);
        this.commands.write(val & 255);
    }

    private int getFreq(boolean isPsg, int note, int bend) {
        int b = (short) bend;
        int whole = b >> 8;
        int frac = b & 255;
        int n = note + whole;
        if (n < 0) {
            n = 0;
            frac = 0;
        } else if (n > 95) {
            n = 95;
            frac = 255;
        }
        if (!isPsg) {
            int oct = n / 12;
            int semi = n % 12;
            int f0 = FM_FNUM[semi];
            int f1 = FM_FNUM[semi + 1];
            int d = f1 - f0;
            int interp = (d * frac) >> 8;
            if ((interp & 128) != 0) {
                interp |= -256;
            }
            int f = f0 + interp;
            return (f & 2047) | ((oct & 7) << 11);
        }
        if (n < 33) {
            n = 33;
            frac = 0;
        }
        int idx = Math.min(62, n - 33);
        int w0 = PSG_WAVE[idx];
        int w1 = PSG_WAVE[idx + 1];
        int d2 = w1 - w0;
        int interp2 = (d2 * frac) >> 8;
        if ((interp2 & 128) != 0) {
            interp2 |= -256;
        }
        return clamp(w0 + interp2, 1, 1023);
    }

    private static int clamp(int v, int lo, int hi) {
        return v < lo ? lo : v > hi ? hi : v;
    }

    private static void put32(byte[] b, int o, int v) {
        b[o] = (byte) v;
        b[o + 1] = (byte) (v >>> 8);
        b[o + 2] = (byte) (v >>> 16);
        b[o + 3] = (byte) (v >>> 24);
    }
}
