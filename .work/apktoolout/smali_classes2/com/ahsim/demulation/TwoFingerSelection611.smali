.class public final Lcom/ahsim/demulation/TwoFingerSelection611;
.super Ljava/lang/Object;
.source "TwoFingerSelection611.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eligibleGroundCombatType(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 10
    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 v0, 0x5

    if-le p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x7

    if-lt p0, v0, :cond_2

    const/16 v0, 0xf

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static inside(FFFFFF)Z
    .locals 1
    .param p0, "left"    # F
    .param p1, "top"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 15
    cmpl-float v0, p2, p0

    if-lez v0, :cond_0

    cmpl-float v0, p3, p1

    if-lez v0, :cond_0

    cmpl-float v0, p4, p0

    if-ltz v0, :cond_0

    cmpg-float v0, p4, p2

    if-gtz v0, :cond_0

    cmpl-float v0, p5, p1

    if-ltz v0, :cond_0

    cmpg-float v0, p5, p3

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
