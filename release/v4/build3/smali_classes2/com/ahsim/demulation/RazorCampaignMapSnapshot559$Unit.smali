.class public final Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
.super Ljava/lang/Object;
.source "RazorCampaignMapSnapshot559.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Unit"
.end annotation


# instance fields
.field public final ordinal:I

.field public final owner:I

.field public final retired:Z

.field public final sourceTag:I

.field public final type:I

.field public final x:I

.field public final y:I


# direct methods
.method constructor <init>([II)V
    .locals 1
    .param p1, "w"    # [I
    .param p2, "at"    # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    aget v0, p1, p2

    iput v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->ordinal:I

    add-int/lit8 v0, p2, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->owner:I

    add-int/lit8 v0, p2, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    .line 20
    add-int/lit8 v0, p2, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->x:I

    add-int/lit8 v0, p2, 0x4

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->y:I

    .line 21
    add-int/lit8 v0, p2, 0x5

    aget v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->sourceTag:I

    add-int/lit8 v0, p2, 0x5

    aget v0, p1, v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->retired:Z

    .line 22
    return-void
.end method
