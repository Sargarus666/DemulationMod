.class final Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ScheduledControl;
.super Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Scheduled;
.source "GenesisOriginalSfxPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScheduledControl"
.end annotation


# instance fields
.field final event:Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;


# direct methods
.method constructor <init>(JJILcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;)V
    .locals 1
    .param p1, "f"    # J
    .param p3, "s"    # J
    .param p5, "seq"    # I
    .param p6, "e"    # Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;

    .line 75
    invoke-direct/range {p0 .. p5}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Scheduled;-><init>(JJI)V

    move v0, p5

    move-wide p4, p3

    move-wide p2, p1

    move-object p1, p0

    .end local p1    # "f":J
    .end local p3    # "s":J
    .end local p5    # "seq":I
    .local v0, "seq":I
    .local p2, "f":J
    .local p4, "s":J
    iput-object p6, p1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ScheduledControl;->event:Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;

    return-void
.end method


# virtual methods
.method fire(Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;)V
    .locals 2
    .param p1, "p"    # Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;

    .line 77
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ScheduledControl;->event:Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;

    iget v0, v0, Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;->control:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->-$$Nest$fgetsfx(Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;)Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;

    move-result-object v0

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ScheduledControl;->event:Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;

    iget v1, v1, Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;->value:I

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;->setMasterAttenuation(I)V

    .line 78
    :cond_0
    return-void
.end method
