.class public final Lcom/ahsim/demulation/RazorCampaignNativeSession$IntegratedStep694;
.super Ljava/lang/Object;
.source "RazorCampaignNativeSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorCampaignNativeSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntegratedStep694"
.end annotation


# instance fields
.field public final emc:[I

.field public final proof:Lcom/ahsim/demulation/RazorTickEvidence729;

.field public final tick:Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;[I)V
    .locals 1
    .param p1, "tick"    # Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    .param p2, "emc"    # [I

    .line 526
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ahsim/demulation/RazorCampaignNativeSession$IntegratedStep694;-><init>(Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;[ILcom/ahsim/demulation/RazorTickEvidence729;)V

    .line 527
    return-void
.end method

.method constructor <init>(Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;[ILcom/ahsim/demulation/RazorTickEvidence729;)V
    .locals 0
    .param p1, "tick"    # Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    .param p2, "emc"    # [I
    .param p3, "proof"    # Lcom/ahsim/demulation/RazorTickEvidence729;

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput-object p1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$IntegratedStep694;->tick:Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;

    iput-object p2, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$IntegratedStep694;->emc:[I

    iput-object p3, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$IntegratedStep694;->proof:Lcom/ahsim/demulation/RazorTickEvidence729;

    .line 530
    return-void
.end method
