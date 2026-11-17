.class final Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;
.super Ljava/lang/Object;
.source "GenesisDirectSequenceVgmBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BuiltSequence"
.end annotation


# instance fields
.field final dacEvents:[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;

.field final loopStartFrame:J

.field final looping:Z

.field final ticks:I

.field final vgm:[B


# direct methods
.method constructor <init>([BIZJ[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;)V
    .locals 1
    .param p1, "vgm"    # [B
    .param p2, "ticks"    # I
    .param p3, "looping"    # Z
    .param p4, "loopStartFrame"    # J
    .param p6, "dacEvents"    # [Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->vgm:[B

    .line 24
    iput p2, p0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->ticks:I

    .line 25
    iput-boolean p3, p0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->looping:Z

    .line 26
    iput-wide p4, p0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->loopStartFrame:J

    .line 27
    if-nez p6, :cond_0

    .line 28
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;

    goto :goto_0

    :cond_0
    move-object v0, p6

    :goto_0
    iput-object v0, p0, Lcom/ahsim/demulation/GenesisDirectSequenceVgmBuilder$BuiltSequence;->dacEvents:[Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;

    .line 29
    return-void
.end method
