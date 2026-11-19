.class final Lcom/ahsim/demulation/MouseEdgeScroll764;
.super Ljava/lang/Object;
.source "MouseEdgeScroll764.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static axisVelocity(FFFF)F
    .locals 5
    .param p0, "position"    # F
    .param p1, "begin"    # F
    .param p2, "end"    # F
    .param p3, "margin"    # F

    .line 8
    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-lez v1, :cond_3

    cmpg-float v1, p2, p1

    if-lez v1, :cond_3

    cmpg-float v1, p0, p1

    if-ltz v1, :cond_3

    cmpl-float v1, p0, p2

    if-lez v1, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    add-float v1, p1, p3

    cmpg-float v1, p0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_1

    .line 13
    sub-float v0, p0, p1

    div-float/2addr v0, p3

    sub-float/2addr v2, v0

    .line 14
    .local v2, "normalized":F
    const/high16 v0, -0x40800000    # -1.0f

    .local v0, "sign":F
    goto :goto_0

    .line 15
    .end local v0    # "sign":F
    .end local v2    # "normalized":F
    :cond_1
    sub-float v1, p2, p3

    cmpl-float v1, p0, v1

    if-lez v1, :cond_2

    .line 16
    sub-float v0, p2, p0

    div-float/2addr v0, p3

    sub-float/2addr v2, v0

    .line 17
    .restart local v2    # "normalized":F
    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    .restart local v0    # "sign":F
    :goto_0
    mul-float v1, v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    const/high16 v4, 0x40400000    # 3.0f

    sub-float/2addr v4, v3

    mul-float/2addr v1, v4

    .line 21
    .local v1, "smooth":F
    const/high16 v3, 0x43910000    # 290.0f

    mul-float/2addr v3, v0

    mul-float/2addr v3, v1

    return v3

    .line 18
    .end local v0    # "sign":F
    .end local v1    # "smooth":F
    .end local v2    # "normalized":F
    :cond_2
    return v0

    .line 9
    :cond_3
    :goto_1
    return v0
.end method
