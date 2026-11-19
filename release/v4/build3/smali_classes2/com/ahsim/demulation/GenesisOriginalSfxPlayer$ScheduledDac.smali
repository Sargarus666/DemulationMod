.class final Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ScheduledDac;
.super Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Scheduled;
.source "GenesisOriginalSfxPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScheduledDac"
.end annotation


# instance fields
.field final event:Lcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;


# direct methods
.method constructor <init>(JJILcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;)V
    .locals 1
    .param p1, "f"    # J
    .param p3, "s"    # J
    .param p5, "seq"    # I
    .param p6, "e"    # Lcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;

    .line 70
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
    iput-object p6, p1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ScheduledDac;->event:Lcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;

    return-void
.end method


# virtual methods
.method fire(Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;)V
    .locals 0
    .param p1, "p"    # Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;

    .line 71
    invoke-static {p1, p0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->-$$Nest$mstartDac(Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$ScheduledDac;)V

    return-void
.end method
