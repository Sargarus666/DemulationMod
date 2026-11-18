.class public final Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;
.super Ljava/lang/Object;
.source "RazorUnitCreateCallGraphAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Evidence"
.end annotation


# instance fields
.field public final allocationPrecedesVmContextInit:Z

.field public final completeFactorySpawnProven:Z

.field public final completeReinforcementSpawnProven:Z

.field public final completeScenarioSpawnProven:Z

.field public final contextFieldOffset:I

.field private final direct:[I

.field public final directCallsites:I

.field public final gameplayTickAuthorized:Z

.field public final pcRelativeCallsites:I

.field public final positionFieldOffset:I

.field public final queuedPathOverwritesActionField:Z

.field private final relative:[I

.field public final sourceTypeFieldOffset:I

.field public final successfulCreationInitializesVmContext:Z

.field public final unconditionalUnitScriptEntryLoaded:Z

.field public final unitCreateRomAddress:I

.field public final variant:I

.field public final wrapperCallsites:I

.field public final wrapperRomAddress:I

.field private final wrappers:[I


# direct methods
.method private constructor <init>(III)V
    .locals 2
    .param p1, "v"    # I
    .param p2, "create"    # I
    .param p3, "wrapper"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x7

    iput v0, p0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;->directCallsites:I

    .line 33
    const/4 v0, 0x6

    iput v0, p0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;->pcRelativeCallsites:I

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;->wrapperCallsites:I

    .line 35
    const/16 v0, 0x16

    iput v0, p0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;->contextFieldOffset:I

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;->sourceTypeFieldOffset:I

    .line 37
    const/16 v0, 0xa

    iput v0, p0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;->positionFieldOffset:I

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;->allocationPrecedesVmContextInit:Z

    .line 39
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;->successfulCreationInitializesVmContext:Z

    .line 40
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;->unconditionalUnitScriptEntryLoaded:Z

    .line 41
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;->queuedPathOverwritesActionField:Z

    .line 42
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;->completeScenarioSpawnProven:Z

    .line 43
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;->completeFactorySpawnProven:Z

    .line 44
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;->completeReinforcementSpawnProven:Z

    .line 45
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;->gameplayTickAuthorized:Z

    .line 50
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;->variant:I

    iput p2, p0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;->unitCreateRomAddress:I

    iput p3, p0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;->wrapperRomAddress:I

    .line 51
    invoke-static {}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->-$$Nest$sfgetDIRECT()[[I

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;->direct:[I

    invoke-static {}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->-$$Nest$sfgetRELATIVE()[[I

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;->relative:[I

    invoke-static {}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->-$$Nest$sfgetWRAPPER_CALLS()[[I

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;->wrappers:[I

    .line 52
    return-void
.end method

.method synthetic constructor <init>(IIILcom/ahsim/demulation/RazorUnitCreateCallGraphAudit-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;-><init>(III)V

    return-void
.end method


# virtual methods
.method public copyDirectCallsites()[I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;->direct:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public copyPcRelativeCallsites()[I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;->relative:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public copyWrapperCallsites()[I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;->wrappers:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
