.class final Lcom/ahsim/demulation/MouseDisplayEdges766;
.super Ljava/lang/Object;
.source "MouseDisplayEdges766.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static insideScreen(FFII)Z
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 9
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 10
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-ltz v1, :cond_0

    int-to-float v1, p2

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    int-to-float v0, p3

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method static velocity(FIF)F
    .locals 2
    .param p0, "rawPosition"    # F
    .param p1, "physicalLength"    # I
    .param p2, "margin"    # F

    .line 15
    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return v0

    .line 16
    :cond_0
    int-to-float v1, p1

    invoke-static {p0, v0, v1, p2}, Lcom/ahsim/demulation/MouseEdgeScroll764;->axisVelocity(FFFF)F

    move-result v0

    return v0
.end method
