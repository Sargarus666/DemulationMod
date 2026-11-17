package com.ahsim.demulation;

import com.ahsim.demulation.GenesisGemsSfxData;

/* loaded from: classes2.dex */
final class GenesisYm2612Core {
    static final double NATIVE_RATE = 53267.03869047619d;
    private static final int PHASE_BITS = 20;
    private static final int PHASE_MASK = 1048575;
    private static final int[] FM_FNUM = {644, 682, 723, 766, 811, 859, 910, 965, 1022, 1083, 1147, 1215, 1288};
    private static final int[] FKEY = {0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 3, 3, 3, 3, 3, 3};
    private static final int[][] DETUNE = {new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 6, 6, 7, 8, 8, 8, 8}, new int[]{1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 6, 6, 7, 8, 8, 9, 10, 11, 12, 13, 14, 16, 16, 16, 16}, new int[]{2, 2, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 6, 6, 7, 8, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 20, 22, 22, 22, 22}};
    private static final int[][] EG_INC = {new int[]{0, 1, 0, 1, 0, 1, 0, 1}, new int[]{0, 1, 0, 1, 1, 1, 0, 1}, new int[]{0, 1, 1, 1, 0, 1, 1, 1}, new int[]{0, 1, 1, 1, 1, 1, 1, 1}, new int[]{1, 1, 1, 1, 1, 1, 1, 1}, new int[]{1, 1, 1, 2, 1, 1, 1, 2}, new int[]{1, 2, 1, 2, 1, 2, 1, 2}, new int[]{1, 2, 2, 2, 1, 2, 2, 2}, new int[]{2, 2, 2, 2, 2, 2, 2, 2}, new int[]{2, 2, 2, 4, 2, 2, 2, 4}, new int[]{2, 4, 2, 4, 2, 4, 2, 4}, new int[]{2, 4, 4, 4, 2, 4, 4, 4}, new int[]{4, 4, 4, 4, 4, 4, 4, 4}, new int[]{4, 4, 4, 8, 4, 4, 4, 8}, new int[]{4, 8, 4, 8, 4, 8, 4, 8}, new int[]{4, 8, 8, 8, 4, 8, 8, 8}, new int[]{8, 8, 8, 8, 8, 8, 8, 8}};
    private static final int[] PATCH_SLOT = {5, 17, 11, 23};
    private static final int[] CARRIER_MASK = {8, 8, 8, 8, 10, 14, 14, 15};
    private static final double[] PMS_CENTS = {0.0d, 3.4d, 6.7d, 10.0d, 14.0d, 20.0d, 40.0d, 80.0d};
    private static final double[] SINE = new double[RazorTerrainAtlas.HEIGHT];
    private static final double[] ATTENUATION = new double[833];

    GenesisYm2612Core() {
    }

    static {
        for (int i = 0; i < SINE.length; i++) {
            SINE[i] = Math.sin(((i * 3.141592653589793d) * 2.0d) / 1024.0d);
        }
        for (int i2 = 0; i2 < ATTENUATION.length; i2++) {
            ATTENUATION[i2] = Math.pow(10.0d, (-(i2 * 0.09375d)) / 20.0d);
        }
    }

    static final class Voice {
        private final int algorithm;
        private final int ams;
        private final int baseNote;
        private final boolean ch3Special;
        private final int feedback;
        private int feedback1;
        private int feedback2;
        private final int keyMask;
        private final int pms;

        /* renamed from: op */
        private final Operator[] f21op = new Operator[4];
        private double bendFactor = 1.0d;

        Voice(GenesisGemsSfxData.Patch patch, int note, int channelAttenuation) {
            int fnum;
            int block;
            this.algorithm = patch.fmAlgorithm();
            this.feedback = patch.fmFeedback();
            this.keyMask = patch.fmKeyMask();
            this.baseNote = GenesisYm2612Core.clamp(note, 0, 95);
            this.ch3Special = patch.fmChannel3Special();
            int b4 = patch.m4u8(4);
            this.pms = b4 & 7;
            this.ams = (b4 >>> 4) & 3;
            int carriers = GenesisYm2612Core.CARRIER_MASK[this.algorithm];
            int i = 0;
            for (int i2 = 4; i < i2; i2 = 4) {
                int base = GenesisYm2612Core.PATCH_SLOT[i];
                int tl = patch.m4u8(base + 1) & 127;
                if (((1 << i) & carriers) != 0) {
                    tl = GenesisYm2612Core.attenuateCarrierTl(tl, channelAttenuation);
                }
                int tl2 = tl;
                if (!this.ch3Special) {
                    int fnum2 = GenesisYm2612Core.FM_FNUM[this.baseNote % 12];
                    fnum = fnum2;
                    block = this.baseNote / 12;
                } else {
                    int raw = ((patch.m4u8((i * 2) + 29) & 255) << 8) | (patch.m4u8((i * 2) + 30) & 255);
                    int fnum3 = raw & 2047;
                    int block2 = (raw >>> 11) & 7;
                    if (fnum3 == 0) {
                        fnum3 = GenesisYm2612Core.FM_FNUM[0];
                        block2 = 0;
                    }
                    fnum = fnum3;
                    block = block2;
                }
                this.f21op[i] = new Operator(patch.m4u8(base), tl2, patch.m4u8(base + 2), patch.m4u8(base + 3), patch.m4u8(base + 4), patch.m4u8(base + 5), fnum, block);
                if ((this.keyMask & (1 << i)) == 0) {
                    this.f21op[i].forceOff();
                } else {
                    this.f21op[i].keyOn();
                }
                i++;
            }
        }

        void setBendFactor(double factor) {
            this.bendFactor = factor <= 0.0d ? 1.0d : factor;
        }

        void keyOff() {
            for (Operator o : this.f21op) {
                o.keyOff();
            }
        }

        boolean dead() {
            for (Operator o : this.f21op) {
                if (!o.dead()) {
                    return false;
                }
            }
            return true;
        }

        double render(long egCounter, boolean egTick, int lfoCounter, boolean lfoEnabled) {
            int amAtt;
            int out;
            if (!lfoEnabled) {
                amAtt = 0;
            } else {
                double tri = GenesisYm2612Core.lfoSignedTriangle(lfoCounter);
                pm = this.pms != 0 ? Math.pow(2.0d, (GenesisYm2612Core.PMS_CENTS[this.pms] * tri) / 1200.0d) : 1.0d;
                if (this.ams == 0) {
                    amAtt = 0;
                } else {
                    int raw = GenesisYm2612Core.lfoAmplitude(lfoCounter);
                    if (this.ams == 1) {
                        int amAtt2 = raw >> 3;
                        amAtt = amAtt2;
                    } else if (this.ams == 2) {
                        int amAtt3 = raw >> 1;
                        amAtt = amAtt3;
                    } else {
                        amAtt = raw;
                    }
                }
            }
            double pitch = this.bendFactor * pm;
            int fb = this.feedback == 0 ? 0 : (this.feedback1 + this.feedback2) >> (10 - this.feedback);
            int s1 = this.f21op[0].sample(fb, egCounter, egTick, pitch, amAtt);
            this.feedback2 = this.feedback1;
            this.feedback1 = s1;
            switch (this.algorithm) {
                case 0:
                    int s3 = this.f21op[2].sample(s1 >> 1, egCounter, egTick, pitch, amAtt);
                    int s2 = this.f21op[1].sample(s3 >> 1, egCounter, egTick, pitch, amAtt);
                    int s4 = this.f21op[3].sample(s2 >> 1, egCounter, egTick, pitch, amAtt);
                    out = s4;
                    break;
                case 1:
                    int s32 = this.f21op[2].sample(0, egCounter, egTick, pitch, amAtt);
                    int s22 = this.f21op[1].sample((s1 + s32) >> 1, egCounter, egTick, pitch, amAtt);
                    int s42 = this.f21op[3].sample(s22 >> 1, egCounter, egTick, pitch, amAtt);
                    out = s42;
                    break;
                case 2:
                    int s33 = this.f21op[2].sample(0, egCounter, egTick, pitch, amAtt);
                    int s23 = this.f21op[1].sample(s33 >> 1, egCounter, egTick, pitch, amAtt);
                    int s43 = this.f21op[3].sample((s1 + s23) >> 1, egCounter, egTick, pitch, amAtt);
                    out = s43;
                    break;
                case 3:
                    int s34 = this.f21op[2].sample(s1 >> 1, egCounter, egTick, pitch, amAtt);
                    int s24 = this.f21op[1].sample(0, egCounter, egTick, pitch, amAtt);
                    int s44 = this.f21op[3].sample((s34 + s24) >> 1, egCounter, egTick, pitch, amAtt);
                    out = s44;
                    break;
                case 4:
                    int s25 = this.f21op[1].sample(s1 >> 1, egCounter, egTick, pitch, amAtt);
                    int s35 = this.f21op[2].sample(0, egCounter, egTick, pitch, amAtt);
                    int s45 = this.f21op[3].sample(s35 >> 1, egCounter, egTick, pitch, amAtt);
                    out = GenesisYm2612Core.clamp14(s25 + s45);
                    break;
                case 5:
                    int s26 = this.f21op[1].sample(s1 >> 1, egCounter, egTick, pitch, amAtt);
                    int s36 = this.f21op[2].sample(s1 >> 1, egCounter, egTick, pitch, amAtt);
                    int s46 = this.f21op[3].sample(s1 >> 1, egCounter, egTick, pitch, amAtt);
                    out = GenesisYm2612Core.clamp14(s26 + s36 + s46);
                    break;
                case 6:
                    int s27 = this.f21op[1].sample(s1 >> 1, egCounter, egTick, pitch, amAtt);
                    int s37 = this.f21op[2].sample(0, egCounter, egTick, pitch, amAtt);
                    int s47 = this.f21op[3].sample(0, egCounter, egTick, pitch, amAtt);
                    out = GenesisYm2612Core.clamp14(s27 + s37 + s47);
                    break;
                default:
                    int s28 = this.f21op[1].sample(0, egCounter, egTick, pitch, amAtt);
                    int s38 = this.f21op[2].sample(0, egCounter, egTick, pitch, amAtt);
                    int s48 = this.f21op[3].sample(0, egCounter, egTick, pitch, amAtt);
                    out = GenesisYm2612Core.clamp14(s1 + s28 + s38 + s48);
                    break;
            }
            return out / 8192.0d;
        }
    }

    private static final class Operator {
        private static final int ATTACK = 0;
        private static final int DECAY = 1;
        private static final int OFF = 4;
        private static final int RELEASE = 3;
        private static final int SUSTAIN = 2;
        private final boolean amEnabled;

        /* renamed from: ar */
        private final int f15ar;
        private final int baseBlock;
        private final int baseFnum;

        /* renamed from: dr */
        private final int f16dr;
        private final int dtCode;
        private final int keyCode;
        private final int mul;
        private int phase;

        /* renamed from: rr */
        private final int f17rr;

        /* renamed from: rs */
        private final int f18rs;

        /* renamed from: sr */
        private final int f19sr;
        private final int sustainLevel;

        /* renamed from: tl */
        private final int f20tl;
        private int env = 1023;
        private int state = 4;

        Operator(int dtMul, int tl, int rsAr, int amDr, int sr, int slRr, int fnum, int block) {
            this.dtCode = (dtMul >>> 4) & 7;
            this.mul = dtMul & 15;
            this.f20tl = tl & 127;
            this.f18rs = (rsAr >>> 6) & 3;
            this.f15ar = rsAr & 31;
            this.f16dr = amDr & 31;
            this.f19sr = sr & 31;
            this.f17rr = slRr & 15;
            int sl = (slRr >>> 4) & 15;
            this.sustainLevel = sl == 15 ? 992 : sl * 32;
            this.amEnabled = (amDr & 128) != 0;
            this.baseFnum = GenesisYm2612Core.clamp(fnum, 0, 2047);
            this.baseBlock = GenesisYm2612Core.clamp(block, 0, 7);
            this.keyCode = GenesisYm2612Core.FKEY[(this.baseFnum >>> 7) & 15] | (this.baseBlock << 2);
        }

        void forceOff() {
            this.state = 4;
            this.env = 1023;
            this.phase = 0;
        }

        void keyOn() {
            this.phase = 0;
            this.env = 1023;
            if (this.f15ar == 0) {
                this.state = 0;
            } else if (effectiveRate(this.f15ar) >= 62) {
                this.env = 0;
                this.state = 1;
            } else {
                this.state = 0;
            }
        }

        void keyOff() {
            if (this.state != 4) {
                this.state = 3;
            }
        }

        boolean dead() {
            return this.state == 4;
        }

        int sample(int modulation, long egCounter, boolean egTick, double pitchFactor, int channelAmAtt) {
            if (egTick) {
                advanceEnvelope(egCounter);
            }
            if (this.state == 4) {
                return 0;
            }
            int phaseIndex = ((this.phase >>> 10) + modulation) & 1023;
            int att = this.env + (this.f20tl << 3) + (this.amEnabled ? channelAmAtt : 0);
            int out = att < GenesisYm2612Core.ATTENUATION.length ? (int) Math.round(GenesisYm2612Core.SINE[phaseIndex] * 8191.0d * GenesisYm2612Core.ATTENUATION[att]) : 0;
            int inc = phaseIncrement(pitchFactor);
            this.phase = (this.phase + inc) & GenesisYm2612Core.PHASE_MASK;
            return out;
        }

        private int phaseIncrement(double pitchFactor) {
            long base = (this.baseFnum << this.baseBlock) >> 1;
            long base2 = Math.max(0L, Math.round(base * pitchFactor));
            int dt = this.dtCode;
            int delta = 0;
            if (dt != 0 && dt != 4) {
                int mag = dt < 4 ? dt : 8 - dt;
                delta = GenesisYm2612Core.DETUNE[mag][this.keyCode & 31];
                if (dt >= 5) {
                    delta = -delta;
                }
            }
            long detuned = (delta + base2) & 1048575;
            long result = this.mul == 0 ? detuned >> 1 : this.mul * detuned;
            return (int) (1048575 & result);
        }

        private int effectiveRate(int regRate) {
            if (regRate <= 0) {
                return 0;
            }
            int rks = this.keyCode >> (3 - this.f18rs);
            return Math.min(63, (regRate << 1) + rks);
        }

        private void advanceEnvelope(long counter) {
            int registerRate;
            if (this.state == 4) {
                return;
            }
            if (this.state == 0) {
                registerRate = this.f15ar;
            } else {
                int registerRate2 = this.state;
                if (registerRate2 == 1) {
                    registerRate = this.f16dr;
                } else {
                    int registerRate3 = this.state;
                    if (registerRate3 == 2) {
                        registerRate = this.f19sr;
                    } else {
                        int registerRate4 = this.f17rr;
                        registerRate = (registerRate4 << 1) | 1;
                    }
                }
            }
            if (registerRate == 0) {
                return;
            }
            int rate = effectiveRate(registerRate);
            int inc = GenesisYm2612Core.envelopeIncrement(rate, counter);
            if (inc == 0) {
                return;
            }
            if (this.state == 0) {
                this.env += ((~this.env) * inc) >> 4;
                if (this.env <= 0) {
                    this.env = 0;
                    this.state = 1;
                    return;
                }
                return;
            }
            this.env = Math.min(1023, this.env + inc);
            if (this.state == 1 && this.env >= this.sustainLevel) {
                this.state = 2;
            }
            if ((this.state == 2 || this.state == 3) && this.env >= 1023) {
                this.env = 1023;
                this.state = 4;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int envelopeIncrement(int rate, long counter) {
        int shift;
        int row;
        int rate2 = clamp(rate, 0, 63);
        if (rate2 < 48) {
            shift = Math.max(0, 11 - (rate2 >>> 2));
            row = rate2 & 3;
        } else if (rate2 < 52) {
            shift = 0;
            row = (rate2 & 3) + 4;
        } else if (rate2 < 56) {
            shift = 0;
            row = (rate2 & 3) + 8;
        } else if (rate2 < 60) {
            shift = 0;
            row = (rate2 & 3) + 12;
        } else {
            shift = 0;
            row = 16;
        }
        if (shift > 0 && (counter & ((1 << shift) - 1)) != 0) {
            return 0;
        }
        int step = (int) ((counter >>> shift) & 7);
        return EG_INC[row][step];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int attenuateCarrierTl(int tl, int attenuation) {
        int loud = 127 - (tl & 127);
        int noteAtt = ((loud << 1) * clamp(attenuation, 0, 127)) >> 8;
        return clamp(127 - (loud - noteAtt), 0, 127);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double lfoSignedTriangle(int c) {
        int x = c & 127;
        return x < 32 ? x / 31.0d : x < 64 ? (63 - x) / 31.0d : x < 96 ? (-(x - 64)) / 31.0d : (-(127 - x)) / 31.0d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int lfoAmplitude(int c) {
        int x = c & 127;
        int a = (x & 64) == 0 ? 63 - (x & 63) : x & 63;
        return a << 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int clamp14(int v) {
        if (v < -8192) {
            return -8192;
        }
        if (v > 8191) {
            return 8191;
        }
        return v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int clamp(int v, int lo, int hi) {
        return v < lo ? lo : v > hi ? hi : v;
    }
}
