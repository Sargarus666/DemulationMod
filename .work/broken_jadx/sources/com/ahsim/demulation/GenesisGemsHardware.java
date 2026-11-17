package com.ahsim.demulation;

import com.ahsim.demulation.GenesisGemsSfxData;

/* loaded from: classes2.dex */
abstract class GenesisGemsHardware {
    abstract void musicSubbeat();

    abstract void noteOnMusic(int i, GenesisGemsSfxData.NoteEvent noteEvent);

    abstract void setMasterAttenuation(int i);

    abstract void setTrackBend(int i, int i2, int i3);

    abstract void stopSequence(int i);

    GenesisGemsHardware() {
    }

    void markDiagnosticLoopPoint() {
    }
}
