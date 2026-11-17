package com.ahsim.demulation;

import com.ahsim.demulation.GenesisGameplayVgmHardware;

/* loaded from: classes2.dex */
final class GenesisDirectSequenceVgmBuilder {
    private static final int MAX_DRIVER_TICKS = 18000;
    private final BuiltSequence[] cache;
    private final GenesisGemsSfxData data;
    private final GenesisAudioSource source;

    static final class BuiltSequence {
        final GenesisGameplayVgmHardware.CapturedDacEvent[] dacEvents;
        final long loopStartFrame;
        final boolean looping;
        final int ticks;
        final byte[] vgm;

        BuiltSequence(byte[] vgm, int ticks, boolean looping, long loopStartFrame, GenesisGameplayVgmHardware.CapturedDacEvent[] dacEvents) {
            this.vgm = vgm;
            this.ticks = ticks;
            this.looping = looping;
            this.loopStartFrame = loopStartFrame;
            this.dacEvents = dacEvents == null ? new GenesisGameplayVgmHardware.CapturedDacEvent[0] : dacEvents;
        }
    }

    GenesisDirectSequenceVgmBuilder(byte[] rom, GenesisGemsSfxData data) {
        this(GenesisAudioSource.fromRom(rom), data);
    }

    GenesisDirectSequenceVgmBuilder(GenesisAudioSource source, GenesisGemsSfxData data) {
        this.source = source;
        this.data = data;
        this.cache = new BuiltSequence[data.sequenceCount()];
    }

    synchronized BuiltSequence build(int sequence) {
        if (sequence >= 0) {
            if (sequence < this.cache.length) {
                BuiltSequence cached = this.cache[sequence];
                if (cached != null) {
                    return cached;
                }
                GenesisGameplayVgmHardware hw = new GenesisGameplayVgmHardware(this.data);
                GenesisGemsMusicSequencer seq = new GenesisGemsMusicSequencer(this.source, this.data, hw);
                seq.startDirectSequenceForDiagnostics(sequence);
                int ticks = 0;
                while (!seq.needsGameplayRequest() && ticks < MAX_DRIVER_TICKS) {
                    hw.driverTick60Hz();
                    seq.driverTick();
                    hw.endFrame();
                    ticks++;
                }
                if (seq.needsGameplayRequest() && ticks > 0) {
                    boolean loop = seq.sawInfiniteLoopForDiagnostics();
                    long loopFrame = loop ? hw.markedLoopFrameForDiagnostics() : -1L;
                    byte[] vgm = hw.toVgmBytesMarkedLoop(loop);
                    BuiltSequence built = new BuiltSequence(vgm, ticks, loop, loopFrame, hw.capturedDacEventsForDiagnostics());
                    this.cache[sequence] = built;
                    return built;
                }
                return null;
            }
        }
        return null;
    }
}
