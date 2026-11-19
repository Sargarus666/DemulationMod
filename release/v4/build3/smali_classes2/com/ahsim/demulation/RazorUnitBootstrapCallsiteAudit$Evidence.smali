.class public final Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit$Evidence;
.super Ljava/lang/Object;
.source "RazorUnitBootstrapCallsiteAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Evidence"
.end annotation


# instance fields
.field private final actionCalls:[I

.field public final factoryCreationPathVerified:Z

.field public final gameTickAuthorized:Z

.field public final initialCreationPathVerified:Z

.field public final initialUnits:I

.field public final mappedSourceTypes:I

.field public final reinforcementCreationPathVerified:Z

.field public final reinforcements:I

.field public final remappedInitialUnits:I

.field public final remappedReinforcements:I

.field public final sourceActionCallsites:I

.field public final sourceDirectScriptLoadCallsites:I

.field public final variant:I


# direct methods
.method private constructor <init>(Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;[I)V
    .locals 1
    .param p1, "source"    # Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;
    .param p2, "calls"    # [I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit$Evidence;->initialCreationPathVerified:Z

    .line 31
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit$Evidence;->factoryCreationPathVerified:Z

    .line 32
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit$Evidence;->reinforcementCreationPathVerified:Z

    .line 33
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit$Evidence;->gameTickAuthorized:Z

    .line 36
    iget v0, p1, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;->variant:I

    iput v0, p0, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit$Evidence;->variant:I

    .line 37
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit$Evidence;->actionCalls:[I

    .line 38
    array-length v0, p2

    iput v0, p0, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit$Evidence;->sourceActionCallsites:I

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit$Evidence;->sourceDirectScriptLoadCallsites:I

    .line 40
    const/16 v0, 0x20

    iput v0, p0, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit$Evidence;->mappedSourceTypes:I

    .line 41
    iget v0, p1, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;->initialUnits:I

    iput v0, p0, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit$Evidence;->initialUnits:I

    .line 42
    iget v0, p1, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;->reinforcements:I

    iput v0, p0, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit$Evidence;->reinforcements:I

    .line 43
    iget v0, p1, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;->remappedInitialUnits:I

    iput v0, p0, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit$Evidence;->remappedInitialUnits:I

    .line 44
    iget v0, p1, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;->remappedReinforcements:I

    iput v0, p0, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit$Evidence;->remappedReinforcements:I

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;[ILcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit$Evidence;-><init>(Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;[I)V

    return-void
.end method


# virtual methods
.method public copyActionCalls()[I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit$Evidence;->actionCalls:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
