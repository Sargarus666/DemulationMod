.class final Lcom/ahsim/demulation/MouseReachableEdges767;
.super Ljava/lang/Object;
.source "MouseReachableEdges767.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static velocity(FFFFFF)F
    .locals 7
    .param p0, "local"    # F
    .param p1, "viewLength"    # F
    .param p2, "screenOrigin"    # F
    .param p3, "displayLength"    # F
    .param p4, "normalMargin"    # F
    .param p5, "insetMargin"    # F

    .line 12
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_7

    cmpg-float v1, p3, v0

    if-lez v1, :cond_7

    cmpg-float v1, p4, v0

    if-lez v1, :cond_7

    .line 13
    invoke-static {p0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p2}, Ljava/lang/Float;->isFinite(F)Z

    move-result v1

    if-eqz v1, :cond_7

    cmpg-float v1, p0, v0

    if-ltz v1, :cond_7

    cmpl-float v1, p0, p1

    if-lez v1, :cond_0

    goto :goto_4

    .line 17
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v2, p2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 18
    .local v2, "insetAtStart":Z
    :goto_0
    add-float v5, p2, p1

    sub-float v1, p3, v1

    cmpg-float v1, v5, v1

    if-gez v1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    .line 21
    .local v3, "insetAtEnd":Z
    :goto_1
    if-eqz v2, :cond_3

    invoke-static {p4, p5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_2

    :cond_3
    move v1, p4

    .line 22
    .local v1, "leftMargin":F
    :goto_2
    if-eqz v3, :cond_4

    invoke-static {p4, p5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_3

    :cond_4
    move v4, p4

    .line 23
    .local v4, "rightMargin":F
    :goto_3
    const v5, 0x3ee66666    # 0.45f

    mul-float v6, p1, v5

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 24
    mul-float/2addr v5, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 25
    cmpg-float v5, p0, v1

    if-gez v5, :cond_5

    .line 26
    invoke-static {p0, v0, p1, v1}, Lcom/ahsim/demulation/MouseEdgeScroll764;->axisVelocity(FFFF)F

    move-result v0

    return v0

    .line 28
    :cond_5
    sub-float v5, p1, v4

    cmpl-float v5, p0, v5

    if-lez v5, :cond_6

    .line 29
    invoke-static {p0, v0, p1, v4}, Lcom/ahsim/demulation/MouseEdgeScroll764;->axisVelocity(FFFF)F

    move-result v0

    return v0

    .line 31
    :cond_6
    return v0

    .line 14
    .end local v1    # "leftMargin":F
    .end local v2    # "insetAtStart":Z
    .end local v3    # "insetAtEnd":Z
    .end local v4    # "rightMargin":F
    :cond_7
    :goto_4
    return v0
.end method
