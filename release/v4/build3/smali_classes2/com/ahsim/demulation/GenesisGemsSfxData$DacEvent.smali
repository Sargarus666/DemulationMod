.class final Lcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;
.super Ljava/lang/Object;
.source "GenesisGemsSfxData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisGemsSfxData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DacEvent"
.end annotation


# instance fields
.field final patchRate:I

.field final sampleIndex:I

.field final tick:J

.field final track:I


# direct methods
.method constructor <init>(JIII)V
    .locals 0
    .param p1, "tick"    # J
    .param p3, "track"    # I
    .param p4, "sampleIndex"    # I
    .param p5, "patchRate"    # I

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-wide p1, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;->tick:J

    .line 89
    iput p3, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;->track:I

    .line 90
    iput p4, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;->sampleIndex:I

    .line 91
    iput p5, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;->patchRate:I

    .line 92
    return-void
.end method
