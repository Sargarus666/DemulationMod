.class public final Lcom/ahsim/demulation/RazorPrototypeView663;
.super Ljava/lang/Object;
.source "RazorPrototypeView663.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorPrototypeView663$Overlay;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildingAt(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;II)Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    .locals 4
    .param p0, "frame"    # Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 19
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->buildings:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 21
    iget-object v2, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->buildings:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;

    aget-object v2, v2, v1

    .line 22
    .local v2, "b":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    iget v3, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->x:I

    if-ne v3, p1, :cond_1

    iget v3, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->y:I

    if-ne v3, p2, :cond_1

    return-object v2

    .line 20
    .end local v2    # "b":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 24
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static inSafeWindow(IIIIII)Z
    .locals 3
    .param p0, "left"    # I
    .param p1, "top"    # I
    .param p2, "tiles"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "margin"    # I

    .line 11
    const/4 v0, 0x0

    if-gtz p2, :cond_0

    return v0

    .line 12
    :cond_0
    add-int/lit8 v1, p2, -0x1

    div-int/lit8 v1, v1, 0x2

    invoke-static {p5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 13
    .local v1, "safe":I
    add-int v2, p0, v1

    if-lt p3, v2, :cond_1

    add-int v2, p0, p2

    sub-int/2addr v2, v1

    if-ge p3, v2, :cond_1

    add-int v2, p1, v1

    if-lt p4, v2, :cond_1

    add-int v2, p1, p2

    sub-int/2addr v2, v1

    if-ge p4, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static orderOverlay(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;IIII)Lcom/ahsim/demulation/RazorPrototypeView663$Overlay;
    .locals 3
    .param p0, "frame"    # Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .param p1, "unit"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "tiles"    # I

    .line 29
    if-eqz p0, :cond_1

    iget v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->activeUnit:I

    if-ne v0, p1, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    if-lez p4, :cond_1

    iget v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->targetX:I

    if-lt v0, p2, :cond_1

    iget v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->targetY:I

    if-lt v0, p3, :cond_1

    iget v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->targetX:I

    add-int v1, p2, p4

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->targetY:I

    add-int v1, p3, p4

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Lcom/ahsim/demulation/RazorPrototypeView663$Overlay;

    iget v1, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->targetX:I

    iget v2, p0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->targetY:I

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RazorPrototypeView663$Overlay;-><init>(II)V

    return-object v0

    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
