.class final Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;
.super Ljava/lang/Object;
.source "GenesisGameplayVgmHardware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisGameplayVgmHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PVoice"
.end annotation


# instance fields
.field alv:I

.field atk:I

.field com:I

.field dec:I

.field dth:I

.field dtl:I

.field duration:I

.field free:Z

.field final id:I

.field level:I

.field locked:Z

.field mode:I

.field note:I

.field priority:I

.field releaseTimer:I

.field releasing:Z

.field rrt:I

.field sequence:I

.field slv:I

.field tonePeriod:I

.field track:I

.field update:Z


# direct methods
.method constructor <init>(I)V
    .locals 3
    .param p1, "id"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->free:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->releasing:Z

    iput-boolean v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->locked:Z

    .line 44
    iput v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->releaseTimer:I

    iput v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->priority:I

    iput v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->note:I

    iput v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->track:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->sequence:I

    iput v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->duration:I

    .line 45
    iput v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->com:I

    const/16 v2, 0xff

    iput v2, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->level:I

    iput v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->atk:I

    iput v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->dec:I

    iput v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->slv:I

    iput v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->rrt:I

    iput v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->mode:I

    iput v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->dtl:I

    iput v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->dth:I

    iput v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->alv:I

    .line 46
    iput v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->tonePeriod:I

    .line 47
    iput-boolean v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->update:Z

    .line 48
    iput p1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$PVoice;->id:I

    return-void
.end method
