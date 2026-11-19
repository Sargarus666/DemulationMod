.class public final Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
.super Ljava/lang/Object;
.source "RazorCampaignMapSnapshot559.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Building"
.end annotation


# instance fields
.field public final ordinal:I

.field public final owner:I

.field public final type:I

.field public final x:I

.field public final y:I


# direct methods
.method constructor <init>([II)V
    .locals 1
    .param p1, "w"    # [I
    .param p2, "at"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    aget v0, p1, p2

    iput v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->ordinal:I

    add-int/lit8 v0, p2, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->owner:I

    add-int/lit8 v0, p2, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->type:I

    .line 28
    add-int/lit8 v0, p2, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->x:I

    add-int/lit8 v0, p2, 0x4

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->y:I

    .line 29
    return-void
.end method
