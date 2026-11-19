.class abstract Lcom/ahsim/demulation/GenesisGemsHardware;
.super Ljava/lang/Object;
.source "GenesisGemsHardware.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method markDiagnosticLoopPoint()V
    .locals 0

    .line 11
    return-void
.end method

.method abstract musicSubbeat()V
.end method

.method abstract noteOnMusic(ILcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;)V
.end method

.method abstract setMasterAttenuation(I)V
.end method

.method abstract setTrackBend(III)V
.end method

.method abstract stopSequence(I)V
.end method
