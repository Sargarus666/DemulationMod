.class final Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;
.super Ljava/lang/Object;
.source "GenesisCampaignTransitionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GeometryModel"
.end annotation


# instance fields
.field final slots:[[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;


# direct methods
.method constructor <init>([[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;)V
    .locals 0
    .param p1, "slots"    # [[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;

    .line 762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;->slots:[[Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;

    return-void
.end method
