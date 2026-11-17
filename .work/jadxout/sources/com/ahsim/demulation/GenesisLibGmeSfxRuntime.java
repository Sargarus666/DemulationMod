package com.ahsim.demulation;

import com.ahsim.demulation.GenesisGemsSfxVgmBuilder;
import java.util.Arrays;

/* loaded from: classes2.dex */
final class GenesisLibGmeSfxRuntime {
    private static final int DECODE_FRAMES = 512;
    private static final int FRAMES_PER_TICK = 735;
    private static final int MAX_ACTIVE = 8;
    private static final int MAX_CACHE = 16;
    private static final int OUTPUT_RATE = 44100;
    private static final int SILENT_BLOCKS_AFTER_LAST_WRITE = 4;
    private final GenesisGemsSfxVgmBuilder builder;
    private int masterAttenuation;
    private long serialCounter;
    private final Slot[] slots = new Slot[8];
    private final Clip[] cache = new Clip[16];

    private static final class Clip {
        final int attenuation;
        final int frames;
        final int logicalFrames;
        final int priority;
        final int sequence;
        long serial;
        final short[] stereo;

        Clip(int sequence, int attenuation, int priority, short[] stereo, int frames, int logicalFrames, long serial) {
            this.sequence = sequence;
            this.attenuation = attenuation;
            this.priority = priority;
            this.stereo = stereo;
            this.frames = frames;
            this.logicalFrames = logicalFrames;
            this.serial = serial;
        }
    }

    private static final class Slot {
        Clip clip;
        int logicalRemaining;
        int position;
        long serial;

        private Slot() {
        }

        boolean active() {
            return this.clip != null && this.logicalRemaining > 0;
        }

        void stop() {
            this.clip = null;
            this.position = 0;
            this.logicalRemaining = 0;
            this.serial = 0L;
        }
    }

    GenesisLibGmeSfxRuntime(GenesisGemsSfxData data) {
        this.builder = new GenesisGemsSfxVgmBuilder(data);
        for (int i = 0; i < this.slots.length; i++) {
            this.slots[i] = new Slot();
        }
        warm(21, 0);
        warm(27, 0);
    }

    boolean play(int sequence) {
        int attenuation = this.masterAttenuation;
        Clip clip = findClip(sequence, attenuation);
        if (clip == null) {
            clip = decodeAndCache(sequence, attenuation);
        }
        if (clip == null || clip.frames <= 0) {
            return false;
        }
        for (Slot slot : this.slots) {
            if (slot.active() && slot.clip.sequence == sequence) {
                slot.stop();
            }
        }
        Slot target = null;
        Slot[] slotArr = this.slots;
        int length = slotArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            Slot slot2 = slotArr[i];
            if (!slot2.active()) {
                target = slot2;
                break;
            }
            i++;
        }
        if (target == null) {
            for (Slot slot3 : this.slots) {
                if (target == null || slot3.clip.priority < target.clip.priority || (slot3.clip.priority == target.clip.priority && slot3.serial < target.serial)) {
                    target = slot3;
                }
            }
            if (target != null && target.clip.priority > clip.priority) {
                return false;
            }
        }
        if (target == null) {
            return false;
        }
        target.clip = clip;
        target.position = 0;
        target.logicalRemaining = clip.logicalFrames;
        long j = this.serialCounter + 1;
        this.serialCounter = j;
        target.serial = j;
        clip.serial = target.serial;
        return true;
    }

    private void warm(int sequence, int attenuation) {
        if (findClip(sequence, attenuation) == null) {
            decodeAndCache(sequence, attenuation);
        }
    }

    private Clip findClip(int sequence, int attenuation) {
        for (Clip clip : this.cache) {
            if (clip != null && clip.sequence == sequence && clip.attenuation == attenuation) {
                long j = this.serialCounter + 1;
                this.serialCounter = j;
                clip.serial = j;
                return clip;
            }
        }
        return null;
    }

    private Clip decodeAndCache(int sequence, int attenuation) {
        int i;
        short[] pcm;
        int need;
        int lastNonZero;
        GenesisGemsSfxVgmBuilder.BuiltSfx built = this.builder.build(sequence, attenuation);
        Clip clip = null;
        if (built == null) {
            return null;
        }
        GenesisLibGmeMusic decoder = new GenesisLibGmeMusic();
        if (!decoder.open(built.vgm, OUTPUT_RATE)) {
            return null;
        }
        try {
            int i2 = 1;
            int maxFrames = Math.max(1, built.ticks * FRAMES_PER_TICK);
            int minFrames = Math.min(maxFrames, Math.max(0, built.lastHardwareWriteFrame + 1) * FRAMES_PER_TICK);
            short[] pcm2 = new short[Math.min(maxFrames * 2, 32768)];
            short[] block = new short[RazorTerrainAtlas.HEIGHT];
            int decoded = 0;
            int lastNonZero2 = -1;
            int silentBlocks = 0;
            while (true) {
                if (decoded >= maxFrames) {
                    i = i2;
                    pcm = pcm2;
                    need = decoded;
                    lastNonZero = lastNonZero2;
                    break;
                }
                Clip clip2 = clip;
                int frames = Math.min(512, maxFrames - decoded);
                if (!decoder.renderStereo(block, frames)) {
                    return clip2;
                }
                int need2 = (decoded + frames) * 2;
                i = i2;
                if (need2 > pcm2.length) {
                    int grown = Math.max(need2, Math.min(maxFrames * 2, pcm2.length * 2));
                    pcm2 = Arrays.copyOf(pcm2, grown);
                }
                int grown2 = decoded * 2;
                System.arraycopy(block, 0, pcm2, grown2, frames * 2);
                boolean zero = true;
                for (int i3 = 0; i3 < frames; i3++) {
                    if (block[i3 * 2] != 0 || block[(i3 * 2) + 1] != 0) {
                        zero = false;
                        lastNonZero2 = decoded + i3;
                    }
                }
                decoded += frames;
                if (decoded >= minFrames) {
                    silentBlocks = zero ? silentBlocks + 1 : 0;
                    if (silentBlocks >= 4) {
                        pcm = pcm2;
                        need = decoded;
                        lastNonZero = lastNonZero2;
                        break;
                    }
                }
                clip = clip2;
                i2 = i;
            }
            int frames2 = lastNonZero >= 0 ? lastNonZero + 1 : Math.min(need, i);
            short[] exact = Arrays.copyOf(pcm, frames2 * 2);
            int i4 = built.priority;
            long j = this.serialCounter + 1;
            this.serialCounter = j;
            Clip clip3 = new Clip(sequence, attenuation, i4, exact, frames2, maxFrames, j);
            putCache(clip3);
            return clip3;
        } finally {
            decoder.close();
        }
    }

    private void putCache(Clip clip) {
        int target = -1;
        int i = 0;
        while (true) {
            if (i >= this.cache.length) {
                break;
            }
            if (this.cache[i] == null) {
                target = i;
                break;
            }
            i++;
        }
        if (target < 0) {
            long oldest = Long.MAX_VALUE;
            for (int i2 = 0; i2 < this.cache.length; i2++) {
                if (this.cache[i2].serial < oldest) {
                    oldest = this.cache[i2].serial;
                    target = i2;
                }
            }
        }
        this.cache[target] = clip;
    }

    void setMasterAttenuation(int value) {
        this.masterAttenuation = Math.max(0, Math.min(127, value));
    }

    int masterAttenuationForDiagnostics() {
        return this.masterAttenuation;
    }

    void stop(int sequence) {
        for (Slot slot : this.slots) {
            if (slot.active() && slot.clip.sequence == sequence) {
                slot.stop();
            }
        }
    }

    void stopAll() {
        for (Slot slot : this.slots) {
            slot.stop();
        }
    }

    void release() {
        stopAll();
        Arrays.fill(this.cache, (Object) null);
    }

    boolean isActive() {
        for (Slot slot : this.slots) {
            if (slot.active()) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    boolean renderStereo(short[] out, int frames, int volumePercent) {
        int i;
        int i2 = frames;
        int i3 = 0;
        if (out == null || i2 < 0) {
            return false;
        }
        if (out.length < i2 * 2) {
            return false;
        }
        Arrays.fill(out, 0, i2 * 2, (short) 0);
        if (i2 > 0 && isActive()) {
            int vol = Math.max(0, Math.min(100, volumePercent));
            Slot[] slotArr = this.slots;
            int length = slotArr.length;
            int i4 = 0;
            while (i4 < length) {
                Slot slot = slotArr[i4];
                if (slot.active()) {
                    Clip clip = slot.clip;
                    int audibleLeft = Math.max(i3, clip.frames - slot.position);
                    int count = Math.min(i2, audibleLeft);
                    int i5 = 0;
                    while (i5 < count) {
                        int i6 = i3;
                        int src = (slot.position + i5) * 2;
                        int dst = i5 * 2;
                        short s = clip.stereo[src];
                        short s2 = clip.stereo[src + 1];
                        if (vol != 100) {
                            s = (s * vol) / 100;
                            s2 = (s2 * vol) / 100;
                        }
                        int left = s + out[dst];
                        int right = s2 + out[dst + 1];
                        out[dst] = (short) Math.max(-32768, Math.min(32767, left));
                        out[dst + 1] = (short) Math.max(-32768, Math.min(32767, right));
                        i5++;
                        i3 = i6;
                    }
                    i = i3;
                    slot.position += count;
                    slot.logicalRemaining -= frames;
                    if (slot.logicalRemaining <= 0) {
                        slot.stop();
                    }
                } else {
                    i = i3;
                }
                i4++;
                i2 = frames;
                i3 = i;
            }
            return true;
        }
        return true;
    }
}
