.class final Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;
.super Ljava/lang/Object;
.source "GenesisTitleAudioRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisTitleAudioRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActiveDac"
.end annotation


# instance fields
.field position:D

.field final sample:Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;

.field final step:D


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;D)V
    .locals 0
    .param p1, "sample"    # Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;
    .param p2, "step"    # D

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;->sample:Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;

    iput-wide p2, p0, Lcom/ahsim/demulation/GenesisTitleAudioRuntime$ActiveDac;->step:D

    .line 25
    return-void
.end method
