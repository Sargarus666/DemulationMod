.class final Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;
.super Ljava/lang/Object;
.source "GenesisOriginalSfxPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActiveDac"
.end annotation


# instance fields
.field position:D

.field final sample:Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;

.field final sequence:I

.field final smoothEffect:Z

.field final step:D


# direct methods
.method constructor <init>(ILcom/ahsim/demulation/GenesisGemsSfxData$Sample;D)V
    .locals 1
    .param p1, "sequence"    # I
    .param p2, "sample"    # Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;
    .param p3, "step"    # D

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;->sequence:I

    iput-object p2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;->sample:Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;

    iput-wide p3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;->step:D

    .line 90
    invoke-static {p1}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->-$$Nest$smusesDacReconstruction(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ActiveDac;->smoothEffect:Z

    .line 91
    return-void
.end method
