.class public final Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Result;
.super Ljava/lang/Object;
.source "RazorTeam14IndirectStateTrace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final contextAddress:I

.field public final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public final gameplayTickAuthorized:Z

.field public final matchedSlot:I

.field public final proposedD0:I

.field public final proposedPosition:I

.field public final proposedTeam18:I

.field public final proposedWrites:Z

.field public final rawCounterWord:I

.field public final replacementAuthorized:Z

.field public final scanned:I

.field public final team14Before:I

.field public final team18Before:I

.field public final teamHouseWord:I

.field public final unknown:Z


# direct methods
.method private constructor <init>(IIIIILjava/util/List;IIZ)V
    .locals 2
    .param p1, "context"    # I
    .param p2, "owner"    # I
    .param p3, "ctr"    # I
    .param p4, "old14"    # I
    .param p5, "old18"    # I
    .param p7, "match"    # I
    .param p8, "proposed"    # I
    .param p9, "unknown"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Entry;",
            ">;IIZ)V"
        }
    .end annotation

    .line 38
    .local p6, "trace":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Entry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Result;->gameplayTickAuthorized:Z

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Result;->replacementAuthorized:Z

    .line 39
    iput p1, p0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Result;->contextAddress:I

    iput p2, p0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Result;->teamHouseWord:I

    iput p3, p0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Result;->rawCounterWord:I

    .line 40
    iput p4, p0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Result;->team14Before:I

    iput p5, p0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Result;->team18Before:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Result;->entries:Ljava/util/List;

    .line 41
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Result;->scanned:I

    iput p7, p0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Result;->matchedSlot:I

    iput p8, p0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Result;->proposedPosition:I

    .line 42
    iput-boolean p9, p0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Result;->unknown:Z

    if-nez p9, :cond_0

    if-ltz p7, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Result;->proposedWrites:Z

    .line 43
    iget-boolean v1, p0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Result;->proposedWrites:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    move v1, p5

    :goto_1
    iput v1, p0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Result;->proposedTeam18:I

    .line 44
    if-eqz p9, :cond_2

    const/4 v0, -0x1

    goto :goto_2

    :cond_2
    if-ltz p7, :cond_3

    const/4 v0, 0x4

    :cond_3
    :goto_2
    iput v0, p0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Result;->proposedD0:I

    .line 45
    return-void
.end method

.method synthetic constructor <init>(IIIIILjava/util/List;IIZLcom/ahsim/demulation/RazorTeam14IndirectStateTrace-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Result;-><init>(IIIIILjava/util/List;IIZ)V

    return-void
.end method
