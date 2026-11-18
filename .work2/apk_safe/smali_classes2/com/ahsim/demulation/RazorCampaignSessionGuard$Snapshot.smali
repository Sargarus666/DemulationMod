.class final Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;
.super Ljava/lang/Object;
.source "RazorCampaignSessionGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorCampaignSessionGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Snapshot"
.end annotation


# instance fields
.field final blockedMask:I

.field final buildings:I

.field final gridSide:I

.field final groundMarkers:I

.field final house:I

.field final mission:I

.field final reads:I

.field final storedCells:I

.field final ticks:I

.field final uninitializedCells:I

.field final units:I


# direct methods
.method constructor <init>(IIIIIIIIIII)V
    .locals 0
    .param p1, "h"    # I
    .param p2, "m"    # I
    .param p3, "s"    # I
    .param p4, "u"    # I
    .param p5, "b"    # I
    .param p6, "g"    # I
    .param p7, "cells"    # I
    .param p8, "pending"    # I
    .param p9, "reads"    # I
    .param p10, "ticks"    # I
    .param p11, "blocked"    # I

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;->house:I

    iput p2, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;->mission:I

    iput p3, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;->gridSide:I

    iput p4, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;->units:I

    iput p5, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;->buildings:I

    .line 66
    iput p6, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;->groundMarkers:I

    iput p7, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;->storedCells:I

    iput p8, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;->uninitializedCells:I

    .line 67
    iput p9, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;->reads:I

    iput p10, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;->ticks:I

    iput p11, p0, Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;->blockedMask:I

    .line 68
    return-void
.end method
