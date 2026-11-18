.class final Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;
.super Ljava/lang/Object;
.source "GenesisCampaignTransitionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimState"
.end annotation


# static fields
.field static final PHASE_AFTER_DROP_HOLD:I = 0x2

.field static final PHASE_DONE:I = 0x6

.field static final PHASE_DROPPING:I = 0x1

.field static final PHASE_FOCUS:I = 0x4

.field static final PHASE_INITIAL_HOLD:I = 0x0

.field static final PHASE_SELECTED_WAIT:I = 0x3

.field static final PHASE_ZOOM:I = 0x5


# instance fields
.field completionTick:I

.field focusStartTick:I

.field nextPiece:I

.field phase:I

.field piece7DelayStarted:Z

.field remainingMask:I

.field final slots:[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;

.field specialDelayTicks:I

.field tick:I

.field waitTicks:I

.field zoomFrame:I


# direct methods
.method constructor <init>(I)V
    .locals 4
    .param p1, "selectedPiece"    # I

    .line 823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    const/4 v0, 0x0

    iput v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->phase:I

    .line 813
    const/16 v1, 0x65

    iput v1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->waitTicks:I

    .line 816
    const/16 v1, 0x9

    iput v1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->nextPiece:I

    .line 817
    const/16 v1, 0x3ff

    iput v1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->remainingMask:I

    .line 818
    const/4 v1, -0x1

    iput v1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->focusStartTick:I

    .line 819
    iput v1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->completionTick:I

    .line 821
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;

    new-instance v2, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;-><init>(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer-IA;)V

    aput-object v2, v1, v0

    new-instance v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;-><init>(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer-IA;)V

    const/4 v2, 0x1

    aput-object v0, v1, v2

    new-instance v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;-><init>(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer-IA;)V

    const/4 v2, 0x2

    aput-object v0, v1, v2

    new-instance v0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;-><init>(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer-IA;)V

    const/4 v2, 0x3

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$SimState;->slots:[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;

    .line 825
    return-void
.end method
