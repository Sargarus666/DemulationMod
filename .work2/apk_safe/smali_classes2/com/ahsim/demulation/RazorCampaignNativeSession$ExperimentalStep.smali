.class public final Lcom/ahsim/demulation/RazorCampaignNativeSession$ExperimentalStep;
.super Ljava/lang/Object;
.source "RazorCampaignNativeSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorCampaignNativeSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExperimentalStep"
.end annotation


# instance fields
.field public final fromX:I

.field public final fromY:I

.field public final moved:Z

.field public final ordinal:I

.field public final steps:I

.field public final toX:I

.field public final toY:I


# direct methods
.method constructor <init>(ZIIIIII)V
    .locals 0
    .param p1, "moved"    # Z
    .param p2, "ordinal"    # I
    .param p3, "x0"    # I
    .param p4, "y0"    # I
    .param p5, "x1"    # I
    .param p6, "y1"    # I
    .param p7, "n"    # I

    .line 954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 955
    iput-boolean p1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$ExperimentalStep;->moved:Z

    iput p2, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$ExperimentalStep;->ordinal:I

    iput p3, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$ExperimentalStep;->fromX:I

    iput p4, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$ExperimentalStep;->fromY:I

    iput p5, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$ExperimentalStep;->toX:I

    iput p6, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$ExperimentalStep;->toY:I

    iput p7, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession$ExperimentalStep;->steps:I

    .line 956
    return-void
.end method
