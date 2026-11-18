.class final Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;
.super Ljava/lang/Object;
.source "GenesisCampaignTransitionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GeometryComponent"
.end annotation


# instance fields
.field final firstTile:I

.field final tileCount:I

.field final tilesHigh:I

.field final tilesWide:I

.field final x:I

.field final y:I


# direct methods
.method constructor <init>(IIIIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "firstTile"    # I
    .param p4, "tilesWide"    # I
    .param p5, "tilesHigh"    # I
    .param p6, "tileCount"    # I

    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 767
    iput p1, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;->x:I

    iput p2, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;->y:I

    iput p3, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;->firstTile:I

    iput p4, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;->tilesWide:I

    iput p5, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;->tilesHigh:I

    iput p6, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryComponent;->tileCount:I

    .line 768
    return-void
.end method
