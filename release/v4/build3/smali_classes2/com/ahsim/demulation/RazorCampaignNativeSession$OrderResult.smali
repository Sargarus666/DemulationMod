.class public final Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;
.super Ljava/lang/Object;
.source "RazorCampaignNativeSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorCampaignNativeSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OrderResult"
.end annotation


# instance fields
.field public final action:I

.field public final active:Z

.field public final fromX:I

.field public final fromY:I

.field public final ordinal:I

.field public final status:I

.field public final steps:I

.field public final targetX:I

.field public final targetY:I

.field public final toX:I

.field public final toY:I


# direct methods
.method constructor <init>(IIIIIIIIIIZ)V
    .locals 0
    .param p1, "a"    # I
    .param p2, "s"    # I
    .param p3, "id"    # I
    .param p4, "fx"    # I
    .param p5, "fy"    # I
    .param p6, "tx"    # I
    .param p7, "ty"    # I
    .param p8, "gx"    # I
    .param p9, "gy"    # I
    .param p10, "count"    # I
    .param p11, "active"    # Z

    .line 946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 947
    iput p1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->action:I

    iput p2, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->status:I

    iput p3, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->ordinal:I

    iput p4, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->fromX:I

    iput p5, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->fromY:I

    .line 948
    iput p6, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->toX:I

    iput p7, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->toY:I

    iput p8, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->targetX:I

    iput p9, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->targetY:I

    iput p10, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->steps:I

    iput-boolean p11, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->active:Z

    .line 949
    return-void
.end method
