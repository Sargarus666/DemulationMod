package com.ahsim.demulation;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes2.dex */
final class GenesisGemsSfxData {
    static final int CONTROL_MASTER_ATTENUATION = 4;
    static final int DIRECT_SOUND_TABLE = 436350;
    static final int FEEDBACK_SOUND_TABLE = 436572;
    static final int GAMEPLAY_DTBL = 853695;
    static final int GAMEPLAY_ETBL = 1040773;
    static final int GAMEPLAY_PTBL = 1041078;
    static final int GAMEPLAY_STBL = 1008483;
    static final int PATCH_DAC = 1;
    static final int PATCH_FM = 0;
    static final int PATCH_PSG_NOISE = 3;
    static final int PATCH_PSG_TONE = 2;
    static final double PSG_NTSC_CLOCK_HZ = 3579545.0d;
    static final int SFX_TICKS_PER_SECOND = 60;
    static final int TITLE_DTBL = 819552;
    static final int TITLE_ETBL = 852561;
    static final int TITLE_PTBL = 852654;
    static final int TITLE_STBL = 850288;
    static final double YM2612_NTSC_CLOCK_HZ = 7670453.571428572d;
    private final int dtbl;
    private final int etbl;
    private final boolean gameplayBank;
    private final Patch[] patchCache;
    private final int patchCount;
    private final int ptbl;
    private final Sample[] sampleCache;
    private final SequencePlan[] sequenceCache;
    private final int sequenceCount;
    private final GenesisAudioSource source;
    private final int stbl;

    static final class Patch {
        private final byte[] bytes;
        final int index;
        final int type;

        Patch(int index, int type, byte[] bytes) {
            this.index = index;
            this.type = type;
            this.bytes = bytes;
        }

        int size() {
            return this.bytes.length;
        }

        /* renamed from: u8 */
        int m4u8(int offset) {
            if (offset < 0 || offset >= this.bytes.length) {
                return 0;
            }
            return this.bytes[offset] & 255;
        }

        boolean fmChannel3Special() {
            return this.type == 0 && (m4u8(2) & 64) != 0;
        }

        int fmAlgorithm() {
            if (this.type == 0) {
                return m4u8(3) & 7;
            }
            return 0;
        }

        int fmFeedback() {
            if (this.type == 0) {
                return (m4u8(3) >>> 3) & 7;
            }
            return 0;
        }

        int fmKeyMask() {
            if (this.type == 0) {
                return m4u8(37) & 15;
            }
            return 0;
        }
    }

    static final class Sample {
        final int dataOffset;
        final int endLength;
        final int firstLength;
        final int flags;
        final int index;
        final int loopLength;
        final int skip;

        Sample(int index, int flags, int dataOffset, int skip, int firstLength, int loopLength, int endLength) {
            this.index = index;
            this.flags = flags;
            this.dataOffset = dataOffset;
            this.skip = skip;
            this.firstLength = firstLength;
            this.loopLength = loopLength;
            this.endLength = endLength;
        }

        int headerRateCode() {
            return this.flags & 15;
        }

        boolean looped() {
            return (this.flags & 16) != 0;
        }

        boolean clipAtNoteOff() {
            return (this.flags & 32) != 0;
        }

        boolean fourBit() {
            return (this.flags & 128) != 0;
        }
    }

    static final class DacEvent {
        final int patchRate;
        final int sampleIndex;
        final long tick;
        final int track;

        DacEvent(long tick, int track, int sampleIndex, int patchRate) {
            this.tick = tick;
            this.track = track;
            this.sampleIndex = sampleIndex;
            this.patchRate = patchRate;
        }
    }

    static final class NoteEvent {
        final int channelAttenuation;
        final int duration;
        final int note;
        final int patchIndex;
        final int patchType;
        final int priority;
        final long tick;
        final int track;

        NoteEvent(long tick, int track, int patchIndex, int patchType, int note, int duration, int priority, int channelAttenuation) {
            this.tick = tick;
            this.track = track;
            this.patchIndex = patchIndex;
            this.patchType = patchType;
            this.note = note;
            this.duration = duration;
            this.priority = priority;
            this.channelAttenuation = channelAttenuation;
        }
    }

    static final class ControlEvent {
        final int control;
        final long tick;
        final int track;
        final int value;

        ControlEvent(long tick, int track, int control, int value) {
            this.tick = tick;
            this.track = track;
            this.control = control;
            this.value = value;
        }
    }

    static final class SequencePlan {
        final List<ControlEvent> controlEvents;
        final List<DacEvent> dacEvents;
        final boolean hasNonSfxTimedDac;
        final boolean hasNonSfxTimedHardware;
        final boolean hasUnsupportedControl;
        final List<NoteEvent> noteEvents;
        final int sequence;
        final int trackCount;
        final boolean usesFm;
        final boolean usesPsgNoise;
        final boolean usesPsgTone;

        SequencePlan(int sequence, int trackCount, List<DacEvent> dacEvents, List<NoteEvent> noteEvents, List<ControlEvent> controlEvents, boolean usesFm, boolean usesPsgTone, boolean usesPsgNoise, boolean hasNonSfxTimedDac, boolean hasNonSfxTimedHardware, boolean hasUnsupportedControl) {
            this.sequence = sequence;
            this.trackCount = trackCount;
            this.dacEvents = Collections.unmodifiableList(dacEvents);
            this.noteEvents = Collections.unmodifiableList(noteEvents);
            this.controlEvents = Collections.unmodifiableList(controlEvents);
            this.usesFm = usesFm;
            this.usesPsgTone = usesPsgTone;
            this.usesPsgNoise = usesPsgNoise;
            this.hasNonSfxTimedDac = hasNonSfxTimedDac;
            this.hasNonSfxTimedHardware = hasNonSfxTimedHardware;
            this.hasUnsupportedControl = hasUnsupportedControl;
        }

        boolean hasHardwareOnlyPart() {
            return this.usesFm || this.usesPsgTone || this.usesPsgNoise || this.hasUnsupportedControl || this.hasNonSfxTimedDac || this.hasNonSfxTimedHardware;
        }
    }

    private static final class TrackResult {
        final List<ControlEvent> controlEvents;
        final List<DacEvent> dacEvents;
        boolean hasNonSfxTimedDac;
        boolean hasNonSfxTimedHardware;
        final List<NoteEvent> noteEvents;
        boolean unsupported;
        boolean usesFm;
        boolean usesPsgNoise;
        boolean usesPsgTone;

        private TrackResult() {
            this.dacEvents = new ArrayList();
            this.noteEvents = new ArrayList();
            this.controlEvents = new ArrayList();
        }
    }

    private static final class LoopFrame {
        int count;
        final int position;

        LoopFrame(int count, int position) {
            this.count = count;
            this.position = position;
        }
    }

    GenesisGemsSfxData(byte[] rom) {
        this(GenesisAudioSource.fromRom(rom));
    }

    GenesisGemsSfxData(GenesisAudioSource source) {
        this(source, GAMEPLAY_PTBL, GAMEPLAY_ETBL, GAMEPLAY_STBL, GAMEPLAY_DTBL, true, 97);
    }

    static GenesisGemsSfxData createTitleBank(byte[] rom) {
        return createTitleBank(GenesisAudioSource.fromRom(rom));
    }

    static GenesisGemsSfxData createTitleBank(GenesisAudioSource source) {
        return new GenesisGemsSfxData(source, TITLE_PTBL, TITLE_ETBL, TITLE_STBL, TITLE_DTBL, false, 6);
    }

    private GenesisGemsSfxData(GenesisAudioSource source, int ptbl, int etbl, int stbl, int dtbl, boolean gameplayBank, int sampleCount) {
        if (source == null) {
            throw new IllegalArgumentException("Audio source is missing");
        }
        this.source = source;
        this.ptbl = ptbl;
        this.etbl = etbl;
        this.stbl = stbl;
        this.dtbl = dtbl;
        this.gameplayBank = gameplayBank;
        this.sequenceCount = u16(stbl) / 2;
        this.patchCount = u16(ptbl) / 2;
        if (gameplayBank) {
            if (this.sequenceCount != 84) {
                throw new IllegalArgumentException("Unexpected gameplay GEMS sequence count: " + this.sequenceCount);
            }
            if (this.patchCount < 100 || this.patchCount > 128) {
                throw new IllegalArgumentException("Unexpected gameplay GEMS patch count: " + this.patchCount);
            }
        } else {
            if (this.sequenceCount != 13) {
                throw new IllegalArgumentException("Unexpected title GEMS sequence count: " + this.sequenceCount);
            }
            if (this.patchCount != 46) {
                throw new IllegalArgumentException("Unexpected title GEMS patch count: " + this.patchCount);
            }
        }
        this.sequenceCache = new SequencePlan[this.sequenceCount];
        this.patchCache = new Patch[this.patchCount];
        this.sampleCache = new Sample[Math.max(0, sampleCount)];
    }

    int sequenceCount() {
        return this.sequenceCount;
    }

    int patchCount() {
        return this.patchCount;
    }

    int sequenceTableOffset() {
        return this.stbl;
    }

    int envelopeTableOffset() {
        return this.etbl;
    }

    boolean isGameplayBank() {
        return this.gameplayBank;
    }

    int directSequenceForEvent(int event) {
        int v;
        if (event < 0 || event > 64 || (v = m3u8(DIRECT_SOUND_TABLE + event)) >= 128) {
            return -1;
        }
        return v;
    }

    int feedbackSequenceForEvent(int event) {
        int v;
        if (event < 0 || event >= 94 || (v = m3u8(FEEDBACK_SOUND_TABLE + event)) >= 128) {
            return -1;
        }
        return v;
    }

    Patch patch(int index) {
        int size;
        if (index < 0 || index >= this.patchCount) {
            return null;
        }
        Patch cached = this.patchCache[index];
        if (cached != null) {
            return cached;
        }
        int p = patchOffset(index);
        int type = m3u8(p);
        switch (type) {
            case 0:
                size = 39;
                break;
            case 1:
                size = 2;
                break;
            case 2:
            case 3:
                size = 7;
                break;
            default:
                size = 1;
                break;
        }
        require(p, size);
        byte[] raw = new byte[size];
        this.source.copyTo(p, raw, 0, size);
        Patch cached2 = new Patch(index, type, raw);
        this.patchCache[index] = cached2;
        return cached2;
    }

    SequencePlan plan(int sequence) {
        int tracks;
        if (sequence < 0 || sequence >= this.sequenceCount) {
            return null;
        }
        SequencePlan cached = this.sequenceCache[sequence];
        if (cached != null) {
            return cached;
        }
        int seqOffset = u16(this.stbl + (sequence * 2));
        int header = this.stbl + seqOffset;
        require(header, 1);
        int tracks2 = m3u8(header);
        if (tracks2 <= 0) {
            tracks = tracks2;
        } else {
            if (tracks2 <= 16) {
                require(header + 1, tracks2 * 2);
                List<DacEvent> dac = new ArrayList<>();
                List<NoteEvent> notes = new ArrayList<>();
                List<ControlEvent> controls = new ArrayList<>();
                boolean psgTone = false;
                boolean unsupported = false;
                boolean unsupported2 = false;
                boolean nonSfxHardware = false;
                boolean nonSfxDac = false;
                boolean psgNoise = false;
                for (int track = 0; track < tracks2; track++) {
                    int trackOffset = u16(header + 1 + (track * 2));
                    int trackOffset2 = this.stbl;
                    TrackResult r = parseTrack(track, trackOffset2 + trackOffset);
                    dac.addAll(r.dacEvents);
                    notes.addAll(r.noteEvents);
                    controls.addAll(r.controlEvents);
                    psgTone |= r.usesFm;
                    psgNoise |= r.usesPsgTone;
                    nonSfxDac |= r.usesPsgNoise;
                    nonSfxHardware |= r.hasNonSfxTimedDac;
                    unsupported2 |= r.hasNonSfxTimedHardware;
                    unsupported |= r.unsupported;
                }
                Collections.sort(dac, new Comparator<DacEvent>() { // from class: com.ahsim.demulation.GenesisGemsSfxData.1
                    @Override // java.util.Comparator
                    public int compare(DacEvent a, DacEvent b) {
                        int t = Long.compare(a.tick, b.tick);
                        return t != 0 ? t : Integer.compare(a.track, b.track);
                    }
                });
                Collections.sort(notes, new Comparator<NoteEvent>() { // from class: com.ahsim.demulation.GenesisGemsSfxData.2
                    @Override // java.util.Comparator
                    public int compare(NoteEvent a, NoteEvent b) {
                        int t = Long.compare(a.tick, b.tick);
                        return t != 0 ? t : Integer.compare(a.track, b.track);
                    }
                });
                Collections.sort(controls, new Comparator<ControlEvent>() { // from class: com.ahsim.demulation.GenesisGemsSfxData.3
                    @Override // java.util.Comparator
                    public int compare(ControlEvent a, ControlEvent b) {
                        int t = Long.compare(a.tick, b.tick);
                        return t != 0 ? t : Integer.compare(a.track, b.track);
                    }
                });
                SequencePlan cached2 = new SequencePlan(sequence, tracks2, dac, notes, controls, psgTone, psgNoise, nonSfxDac, nonSfxHardware, unsupported2, unsupported);
                this.sequenceCache[sequence] = cached2;
                return cached2;
            }
            tracks = tracks2;
        }
        SequencePlan sequencePlan = new SequencePlan(sequence, Math.max(0, tracks), new ArrayList(), new ArrayList(), new ArrayList(), false, false, false, false, false, true);
        this.sequenceCache[sequence] = sequencePlan;
        return sequencePlan;
    }

    Sample sample(int index) {
        if (index >= 0 && index < this.sampleCache.length) {
            Sample s = this.sampleCache[index];
            if (s != null) {
                return s;
            }
            int h = this.dtbl + (index * 12);
            require(h, 12);
            int flags = m3u8(h);
            int ptr = u24(h + 1);
            int skip = u16(h + 4);
            int first = u16(h + 6);
            int loop = u16(h + 8);
            int end = u16(h + 10);
            int data = this.dtbl + ptr + skip;
            if (!this.source.contains(data, first)) {
                throw new IllegalArgumentException("GEMS sample " + index + " is outside audio source");
            }
            Sample s2 = new Sample(index, flags, data, skip, first, loop, end);
            this.sampleCache[index] = s2;
            return s2;
        }
        return null;
    }

    int sampleByte(Sample sample, int position) {
        if (sample == null || position < 0 || position >= sample.firstLength) {
            return 128;
        }
        return m3u8(sample.dataOffset + position);
    }

    int effectiveRateCode(DacEvent event, Sample sample) {
        if (event == null || sample == null) {
            return 0;
        }
        return event.patchRate == 4 ? sample.headerRateCode() : event.patchRate & 15;
    }

    static double sampleRateHz(int rateCode) {
        int code = rateCode & 15;
        if (code <= 0) {
            return 0.0d;
        }
        return YM2612_NTSC_CLOCK_HZ / (code * 144.0d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:115:0x01f5, code lost:
    
        r0.unsupported = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01f7, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.ahsim.demulation.GenesisGemsSfxData.TrackResult parseTrack(int r29, int r30) {
        /*
            Method dump skipped, instructions count: 824
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisGemsSfxData.parseTrack(int, int):com.ahsim.demulation.GenesisGemsSfxData$TrackResult");
    }

    private int patchOffset(int patch) {
        int table = this.ptbl + (patch * 2);
        require(table, 2);
        int p = this.ptbl + u16(table);
        require(p, 1);
        return p;
    }

    /* renamed from: u8 */
    private int m3u8(int p) {
        require(p, 1);
        return this.source.m1u8(p);
    }

    private int u16(int p) {
        require(p, 2);
        return this.source.le16(p);
    }

    private int u24(int p) {
        require(p, 3);
        return this.source.u24le(p);
    }

    private void require(int p, int n) {
        if (!this.source.contains(p, n)) {
            throw new IllegalArgumentException("GEMS audio read outside READY source @0x" + Integer.toHexString(p));
        }
    }
}
