.class public final Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
.super Ljava/lang/Object;
.source "RazorCampaignNativeSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorCampaignNativeSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SandboxTick560"
.end annotation


# instance fields
.field public final active:Z

.field public final moved:Z

.field public final moves:I

.field public final orderSteps:I

.field public final status:I

.field public final steps:I

.field public final ticks:I

.field public final unit:I

.field public final x:I

.field public final y:I


# direct methods
.method constructor <init>([I)V
    .locals 3
    .param p1, "w"    # [I

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    const/4 v0, 0x1

    aget v1, p1, v0

    iput v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;->ticks:I

    const/4 v1, 0x2

    aget v1, p1, v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;->moved:Z

    const/4 v1, 0x3

    aget v1, p1, v1

    iput v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;->status:I

    const/4 v1, 0x4

    aget v1, p1, v1

    iput v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;->unit:I

    .line 628
    const/4 v1, 0x5

    aget v1, p1, v1

    iput v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;->x:I

    const/4 v1, 0x6

    aget v1, p1, v1

    iput v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;->y:I

    const/4 v1, 0x7

    aget v1, p1, v1

    iput v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;->orderSteps:I

    const/16 v1, 0x8

    aget v1, p1, v1

    iput v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;->steps:I

    .line 629
    const/16 v1, 0x9

    aget v1, p1, v1

    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;->active:Z

    const/16 v0, 0xf

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;->moves:I

    .line 630
    return-void
.end method
