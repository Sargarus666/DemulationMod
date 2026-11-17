.class final Lcom/ahsim/demulation/MousePhysicalEdges768;
.super Ljava/lang/Object;
.source "MousePhysicalEdges768.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static velocity(FIFII)F
    .locals 5
    .param p0, "raw"    # F
    .param p1, "physicalSize"    # I
    .param p2, "normalMargin"    # F
    .param p3, "safeInsetAtStart"    # I
    .param p4, "safeInsetAtEnd"    # I

    .line 11
    const/4 v0, 0x0

    if-lez p1, :cond_5

    cmpg-float v1, p2, v0

    if-lez v1, :cond_5

    .line 12
    invoke-static {p0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v1

    if-eqz v1, :cond_5

    cmpg-float v1, p0, v0

    if-ltz v1, :cond_5

    int-to-float v1, p1

    cmpl-float v1, p0, v1

    if-lez v1, :cond_0

    goto :goto_2

    .line 15
    :cond_0
    const v1, 0x3f266666    # 0.65f

    const/4 v2, 0x2

    if-le p3, v2, :cond_1

    .line 16
    int-to-float v3, p3

    mul-float/2addr v3, v1

    invoke-static {p2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_0

    :cond_1
    move v3, p2

    .line 17
    .local v3, "near":F
    :goto_0
    if-le p4, v2, :cond_2

    .line 18
    int-to-float v2, p4

    mul-float/2addr v2, v1

    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_1

    :cond_2
    move v1, p2

    .line 19
    .local v1, "far":F
    :goto_1
    int-to-float v2, p1

    const v4, 0x3ee66666    # 0.45f

    mul-float/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 20
    .end local v3    # "near":F
    .local v2, "near":F
    int-to-float v3, p1

    mul-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 21
    cmpg-float v3, p0, v2

    if-gez v3, :cond_3

    int-to-float v3, p1

    invoke-static {p0, v0, v3, v2}, Lcom/ahsim/demulation/MouseEdgeScroll764;->axisVelocity(FFFF)F

    move-result v0

    return v0

    .line 22
    :cond_3
    int-to-float v3, p1

    sub-float/2addr v3, v1

    cmpl-float v3, p0, v3

    if-lez v3, :cond_4

    .line 23
    int-to-float v3, p1

    invoke-static {p0, v0, v3, v1}, Lcom/ahsim/demulation/MouseEdgeScroll764;->axisVelocity(FFFF)F

    move-result v0

    return v0

    .line 24
    :cond_4
    return v0

    .line 12
    .end local v1    # "far":F
    .end local v2    # "near":F
    :cond_5
    :goto_2
    return v0
.end method
