.class final Lcom/ahsim/demulation/MissionProgression$Decision;
.super Ljava/lang/Object;
.source "MissionProgression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/MissionProgression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Decision"
.end annotation


# instance fields
.field final campaignComplete:Z

.field final campaignIdAfter:I

.field final campaignIdBefore:I

.field final currentLevel:I

.field final nextLevel:I

.field final terminal:Z

.field final unlockedLevel:I

.field final won:Z


# direct methods
.method constructor <init>(ZZZIIIII)V
    .locals 0
    .param p1, "terminal"    # Z
    .param p2, "won"    # Z
    .param p3, "campaignComplete"    # Z
    .param p4, "campaignIdBefore"    # I
    .param p5, "campaignIdAfter"    # I
    .param p6, "currentLevel"    # I
    .param p7, "nextLevel"    # I
    .param p8, "unlockedLevel"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean p1, p0, Lcom/ahsim/demulation/MissionProgression$Decision;->terminal:Z

    .line 33
    iput-boolean p2, p0, Lcom/ahsim/demulation/MissionProgression$Decision;->won:Z

    .line 34
    iput-boolean p3, p0, Lcom/ahsim/demulation/MissionProgression$Decision;->campaignComplete:Z

    .line 35
    iput p4, p0, Lcom/ahsim/demulation/MissionProgression$Decision;->campaignIdBefore:I

    .line 36
    iput p5, p0, Lcom/ahsim/demulation/MissionProgression$Decision;->campaignIdAfter:I

    .line 37
    iput p6, p0, Lcom/ahsim/demulation/MissionProgression$Decision;->currentLevel:I

    .line 38
    iput p7, p0, Lcom/ahsim/demulation/MissionProgression$Decision;->nextLevel:I

    .line 39
    iput p8, p0, Lcom/ahsim/demulation/MissionProgression$Decision;->unlockedLevel:I

    .line 40
    return-void
.end method
