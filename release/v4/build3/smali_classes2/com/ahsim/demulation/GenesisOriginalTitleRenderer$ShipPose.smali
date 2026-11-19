.class final Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;
.super Ljava/lang/Object;
.source "GenesisOriginalTitleRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ShipPose"
.end annotation


# instance fields
.field final frame:I

.field final x:I

.field final y:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .param p1, "frame"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput p1, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;->frame:I

    .line 195
    iput p2, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;->x:I

    .line 196
    iput p3, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;->y:I

    .line 197
    return-void
.end method
