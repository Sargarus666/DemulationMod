.class final Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;
.super Ljava/lang/Object;
.source "GenesisGameplayVgmHardware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisGameplayVgmHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Voice"
.end annotation


# instance fields
.field duration:I

.field free:Z

.field final id:I

.field locked:Z

.field note:I

.field priority:I

.field releaseTimer:I

.field releasing:Z

.field sequence:I

.field special:Z

.field track:I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "id"    # I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->free:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->releasing:Z

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->locked:Z

    .line 28
    iput v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->releaseTimer:I

    iput v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->priority:I

    iput v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->note:I

    iput v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->track:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->sequence:I

    iput v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->duration:I

    .line 29
    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->special:Z

    .line 30
    iput p1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$Voice;->id:I

    return-void
.end method
