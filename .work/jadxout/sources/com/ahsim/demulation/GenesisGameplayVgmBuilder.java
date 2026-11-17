package com.ahsim.demulation;

/* loaded from: classes2.dex */
final class GenesisGameplayVgmBuilder {
    private static final int MAX_DRIVER_TICKS = 14400;
    private final byte[][] cache;
    private final GenesisGemsSfxData data;
    private final byte[][] frontendCache;
    private final GenesisAudioSource source;

    GenesisGameplayVgmBuilder(byte[] rom, GenesisGemsSfxData data) {
        this(GenesisAudioSource.fromRom(rom), data);
    }

    GenesisGameplayVgmBuilder(GenesisAudioSource source, GenesisGemsSfxData data) {
        this.cache = new byte[13][];
        this.frontendCache = new byte[39][];
        this.source = source;
        this.data = data;
    }

    synchronized byte[] buildFrontend(int request) {
        if (request < 0 || request > 38) {
            return null;
        }
        byte[] cached = this.frontendCache[request];
        if (cached != null) {
            return cached;
        }
        GenesisGameplayVgmHardware hw = new GenesisGameplayVgmHardware(this.data);
        GenesisGemsMusicSequencer seq = new GenesisGemsMusicSequencer(this.source, this.data, hw);
        seq.startOriginalFrontendRequestForDiagnostics(request);
        int ticks = 0;
        while (!seq.needsGameplayRequest() && ticks < MAX_DRIVER_TICKS) {
            hw.driverTick60Hz();
            seq.driverTick();
            hw.endFrame();
            ticks++;
        }
        if (seq.needsGameplayRequest() && ticks > 0) {
            byte[] built = hw.toVgmBytes(seq.sawInfiniteLoopForDiagnostics());
            this.frontendCache[request] = built;
            return built;
        }
        return null;
    }

    synchronized byte[] build(int request) {
        if (request < 8 || request > 12) {
            return null;
        }
        byte[] cached = this.cache[request];
        if (cached != null) {
            return cached;
        }
        GenesisGameplayVgmHardware hw = new GenesisGameplayVgmHardware(this.data);
        GenesisGemsMusicSequencer seq = new GenesisGemsMusicSequencer(this.source, this.data, hw);
        seq.startRequestForDiagnostics(request);
        int ticks = 0;
        while (!seq.needsGameplayRequest() && ticks < MAX_DRIVER_TICKS) {
            hw.driverTick60Hz();
            seq.driverTick();
            hw.endFrame();
            ticks++;
        }
        if (seq.needsGameplayRequest() && ticks > 0) {
            byte[] built = hw.toVgmBytes();
            this.cache[request] = built;
            return built;
        }
        return null;
    }
}
