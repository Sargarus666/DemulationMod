.class final Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;
.super Ljava/lang/Object;
.source "GenesisGemsMusicSequencer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisGemsMusicSequencer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Track"
.end annotation


# instance fields
.field active:Z

.field attenuation:I

.field delay:I

.field duration:I

.field envelope:Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;

.field envelopeNumber:I

.field final loops:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ahsim/demulation/GenesisGemsMusicSequencer$LoopFrame;",
            ">;"
        }
    .end annotation
.end field

.field muted:Z

.field p:I

.field patch:I

.field patchType:I

.field pending:I

.field pitchBend:I

.field priority:I

.field retrigger:Z

.field timer:I

.field final virtualChannel:I


# direct methods
.method constructor <init>(II)V
    .locals 1
    .param p1, "virtualChannel"    # I
    .param p2, "p"    # I

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->pending:I

    .line 71
    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->patch:I

    .line 72
    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->patchType:I

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->active:Z

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->loops:Ljava/util/ArrayList;

    .line 82
    iput p1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->virtualChannel:I

    iput p2, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Track;->p:I

    return-void
.end method
