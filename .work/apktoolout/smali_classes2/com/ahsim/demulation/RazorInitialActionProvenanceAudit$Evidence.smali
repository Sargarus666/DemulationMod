.class public final Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit$Evidence;
.super Ljava/lang/Object;
.source "RazorInitialActionProvenanceAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Evidence"
.end annotation


# instance fields
.field public final actionFieldOffsetInSetAction:I

.field public final completeFactoryProvenance:Z

.field public final completeReinforcementProvenance:Z

.field public final conditionalActionCall:I

.field public final constructor:I

.field public final constructorInitializesVmContext:Z

.field public final gameTicksAuthorized:Z

.field public final initialUnit03:I

.field public final initialUnit54:I

.field public final queueDirectWriter:I

.field public final queueFieldOffset:I

.field public final queueWriterCallsSetAction:Z

.field public final scriptLoadCall:I

.field public final setAction:I

.field public final setActionLoadsScriptOnReachedPath:Z

.field public final unconditionalExecutableEntryOnCreate:Z

.field public final variant:I


# direct methods
.method private constructor <init>(I)V
    .locals 2
    .param p1, "v"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0xff

    iput v0, p0, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit$Evidence;->initialUnit03:I

    .line 30
    const/4 v0, 0x3

    iput v0, p0, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit$Evidence;->initialUnit54:I

    .line 31
    const/16 v1, 0x54

    iput v1, p0, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit$Evidence;->actionFieldOffsetInSetAction:I

    .line 32
    iput v0, p0, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit$Evidence;->queueFieldOffset:I

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit$Evidence;->constructorInitializesVmContext:Z

    .line 34
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit$Evidence;->unconditionalExecutableEntryOnCreate:Z

    .line 35
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit$Evidence;->setActionLoadsScriptOnReachedPath:Z

    .line 36
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit$Evidence;->queueWriterCallsSetAction:Z

    .line 37
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit$Evidence;->completeFactoryProvenance:Z

    .line 38
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit$Evidence;->completeReinforcementProvenance:Z

    .line 39
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit$Evidence;->gameTicksAuthorized:Z

    .line 41
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit$Evidence;->variant:I

    invoke-static {}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->-$$Nest$sfgetCREATE()[I

    move-result-object v0

    aget v0, v0, p1

    iput v0, p0, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit$Evidence;->constructor:I

    invoke-static {}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->-$$Nest$sfgetCREATE()[I

    move-result-object v0

    aget v0, v0, p1

    add-int/lit16 v0, v0, 0x212

    iput v0, p0, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit$Evidence;->conditionalActionCall:I

    .line 42
    invoke-static {}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->-$$Nest$sfgetSET_ACTION()[I

    move-result-object v0

    aget v0, v0, p1

    iput v0, p0, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit$Evidence;->setAction:I

    invoke-static {}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->-$$Nest$sfgetSET_ACTION()[I

    move-result-object v0

    aget v0, v0, p1

    add-int/lit16 v0, v0, 0xda

    iput v0, p0, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit$Evidence;->scriptLoadCall:I

    .line 43
    invoke-static {}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->-$$Nest$sfgetQUEUE_WRITER()[I

    move-result-object v0

    aget v0, v0, p1

    iput v0, p0, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit$Evidence;->queueDirectWriter:I

    .line 44
    return-void
.end method

.method synthetic constructor <init>(ILcom/ahsim/demulation/RazorInitialActionProvenanceAudit-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit$Evidence;-><init>(I)V

    return-void
.end method
