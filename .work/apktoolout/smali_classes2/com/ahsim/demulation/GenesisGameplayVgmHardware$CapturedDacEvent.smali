.class final Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;
.super Ljava/lang/Object;
.source "GenesisGameplayVgmHardware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisGameplayVgmHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CapturedDacEvent"
.end annotation


# instance fields
.field final frame:J

.field final patchRate:I

.field final sampleIndex:I


# direct methods
.method constructor <init>(JII)V
    .locals 0
    .param p1, "frame"    # J
    .param p3, "sampleIndex"    # I
    .param p4, "patchRate"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;->frame:J

    iput p3, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;->sampleIndex:I

    iput p4, p0, Lcom/ahsim/demulation/GenesisGameplayVgmHardware$CapturedDacEvent;->patchRate:I

    .line 38
    return-void
.end method
