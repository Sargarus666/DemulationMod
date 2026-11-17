.class final Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;
.super Ljava/lang/Object;
.source "GenesisGemsSfxData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisGemsSfxData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ControlEvent"
.end annotation


# instance fields
.field final control:I

.field final tick:J

.field final track:I

.field final value:I


# direct methods
.method constructor <init>(JIII)V
    .locals 0
    .param p1, "tick"    # J
    .param p3, "track"    # I
    .param p4, "control"    # I
    .param p5, "value"    # I

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-wide p1, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;->tick:J

    .line 126
    iput p3, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;->track:I

    .line 127
    iput p4, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;->control:I

    .line 128
    iput p5, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;->value:I

    .line 129
    return-void
.end method
