.class public final Lcom/ahsim/demulation/RazorTeam14RamAbiAudit$ReadOnlyResult;
.super Ljava/lang/Object;
.source "RazorTeam14RamAbiAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorTeam14RamAbiAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReadOnlyResult"
.end annotation


# instance fields
.field public final gameplayTickAuthorized:Z

.field public final matchedRaw:I

.field public final proposedWrites:Z

.field public final rawLoopWord:I

.field public final referencedAddress:I

.field public final returnD0:I

.field public final runtimeCallbackAuthorized:Z

.field public final scanned:I

.field public final teamAddress:I

.field public final teamHouseWord:I

.field public final valueAtTeam14:I

.field public final valueAtTeam18:I

.field public final writeAddress14:I

.field public final writeAddress18:I


# direct methods
.method private constructor <init>(IIIIIIIIII)V
    .locals 2
    .param p1, "teamAddress"    # I
    .param p2, "house"    # I
    .param p3, "loop"    # I
    .param p4, "count"    # I
    .param p5, "match"    # I
    .param p6, "ret"    # I
    .param p7, "pos"    # I
    .param p8, "a14"    # I
    .param p9, "a18"    # I
    .param p10, "ref"    # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit$ReadOnlyResult;->runtimeCallbackAuthorized:Z

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit$ReadOnlyResult;->gameplayTickAuthorized:Z

    .line 28
    iput p1, p0, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit$ReadOnlyResult;->teamAddress:I

    iput p2, p0, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit$ReadOnlyResult;->teamHouseWord:I

    iput p3, p0, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit$ReadOnlyResult;->rawLoopWord:I

    .line 29
    iput p4, p0, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit$ReadOnlyResult;->scanned:I

    iput p5, p0, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit$ReadOnlyResult;->matchedRaw:I

    iput p6, p0, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit$ReadOnlyResult;->returnD0:I

    .line 30
    if-ltz p5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit$ReadOnlyResult;->proposedWrites:Z

    iput p7, p0, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit$ReadOnlyResult;->valueAtTeam14:I

    if-ltz p5, :cond_1

    const/4 v0, 0x2

    :cond_1
    iput v0, p0, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit$ReadOnlyResult;->valueAtTeam18:I

    .line 31
    iput p8, p0, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit$ReadOnlyResult;->writeAddress14:I

    iput p9, p0, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit$ReadOnlyResult;->writeAddress18:I

    iput p10, p0, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit$ReadOnlyResult;->referencedAddress:I

    .line 32
    return-void
.end method

.method synthetic constructor <init>(IIIIIIIIIILcom/ahsim/demulation/RazorTeam14RamAbiAudit-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit$ReadOnlyResult;-><init>(IIIIIIIIII)V

    return-void
.end method
