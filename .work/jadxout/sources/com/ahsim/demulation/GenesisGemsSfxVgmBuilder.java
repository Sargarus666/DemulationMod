package com.ahsim.demulation;

import com.ahsim.demulation.GenesisGemsSfxData;
import java.lang.reflect.Array;

/* loaded from: classes2.dex */
final class GenesisGemsSfxVgmBuilder {
    private static final int MAX_SFX_TICKS = 720;
    private static final int RELEASE_TAIL_TICKS = 254;
    private final BuiltSfx[][] cache;
    private final GenesisGemsSfxData data;

    static final class BuiltSfx {
        final int lastHardwareWriteFrame;
        final int priority;
        final int sequence;
        final int ticks;
        final byte[] vgm;

        BuiltSfx(int sequence, byte[] vgm, int ticks, int priority, int lastHardwareWriteFrame) {
            this.sequence = sequence;
            this.vgm = vgm;
            this.ticks = ticks;
            this.priority = priority;
            this.lastHardwareWriteFrame = lastHardwareWriteFrame;
        }
    }

    GenesisGemsSfxVgmBuilder(GenesisGemsSfxData data) {
        this.data = data;
        this.cache = (BuiltSfx[][]) Array.newInstance((Class<?>) BuiltSfx.class, data.sequenceCount(), 128);
    }

    synchronized BuiltSfx build(int sequence) {
        return build(sequence, 0);
    }

    synchronized BuiltSfx build(int sequence, int initialMasterAttenuation) {
        long lastTick;
        int controlIndex;
        int noteIndex;
        int controlIndex2;
        if (sequence >= 0) {
            try {
                if (sequence < this.cache.length) {
                    int initialAtten = Math.max(0, Math.min(127, initialMasterAttenuation));
                    BuiltSfx cached = this.cache[sequence][initialAtten];
                    if (cached != null) {
                        return cached;
                    }
                    GenesisGemsSfxData.SequencePlan plan = this.data.plan(sequence);
                    if (plan != null && !plan.hasNonSfxTimedHardware && !plan.hasUnsupportedControl && (plan.usesFm || plan.usesPsgTone || plan.usesPsgNoise)) {
                        long lastTick2 = 0;
                        int priority = 0;
                        for (GenesisGemsSfxData.NoteEvent e : plan.noteEvents) {
                            if (e.patchType == 0 || e.patchType == 2 || e.patchType == 3) {
                                long end = e.tick + Math.max(1, e.duration);
                                if (end > lastTick2) {
                                    lastTick2 = end;
                                }
                                if (e.priority > priority) {
                                    priority = e.priority;
                                }
                            }
                        }
                        long lastTick3 = lastTick2;
                        for (GenesisGemsSfxData.ControlEvent e2 : plan.controlEvents) {
                            if (e2.tick > lastTick3) {
                                lastTick3 = e2.tick;
                            }
                        }
                        int ticks = (int) Math.min(720L, Math.max(1L, 254 + lastTick3 + 2));
                        GenesisGameplayVgmHardware hw = new GenesisGameplayVgmHardware(this.data);
                        hw.setMasterAttenuation(initialAtten);
                        int tick = 0;
                        int noteIndex2 = 0;
                        int controlIndex3 = 0;
                        while (tick < ticks) {
                            try {
                                hw.driverTick60Hz();
                                hw.musicSubbeat();
                                int controlIndex4 = controlIndex3;
                                while (true) {
                                    if (controlIndex4 >= plan.controlEvents.size()) {
                                        lastTick = lastTick3;
                                        break;
                                    }
                                    GenesisGemsSfxData.ControlEvent e3 = plan.controlEvents.get(controlIndex4);
                                    lastTick = lastTick3;
                                    if (e3.tick > tick) {
                                        break;
                                    }
                                    controlIndex4++;
                                    if (e3.tick == tick && e3.control == 4) {
                                        hw.setMasterAttenuation(e3.value);
                                    }
                                    lastTick3 = lastTick;
                                }
                                while (true) {
                                    if (noteIndex2 >= plan.noteEvents.size()) {
                                        controlIndex = controlIndex4;
                                        noteIndex = noteIndex2;
                                        controlIndex2 = 2;
                                        break;
                                    }
                                    GenesisGemsSfxData.NoteEvent e4 = plan.noteEvents.get(noteIndex2);
                                    noteIndex = noteIndex2;
                                    if (e4.tick > tick) {
                                        controlIndex = controlIndex4;
                                        controlIndex2 = 2;
                                        break;
                                    }
                                    noteIndex2 = noteIndex + 1;
                                    int controlIndex5 = controlIndex4;
                                    if (e4.tick == tick) {
                                        if (e4.patchType != 0 && e4.patchType != 2) {
                                            if (e4.patchType == 3) {
                                                hw.noteOn(sequence, e4);
                                            }
                                        }
                                        hw.noteOn(sequence, e4);
                                    }
                                    controlIndex4 = controlIndex5;
                                }
                                hw.endFrame();
                                tick++;
                                noteIndex2 = noteIndex;
                                controlIndex3 = controlIndex;
                                lastTick3 = lastTick;
                            } catch (Throwable th) {
                                th = th;
                                throw th;
                            }
                        }
                        BuiltSfx built = new BuiltSfx(sequence, hw.toVgmBytes(), ticks, priority, hw.lastHardwareWriteFrameForSfxCache());
                        this.cache[sequence][initialAtten] = built;
                        return built;
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return null;
    }
}
