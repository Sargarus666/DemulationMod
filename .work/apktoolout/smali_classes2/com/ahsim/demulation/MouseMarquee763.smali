.class final Lcom/ahsim/demulation/MouseMarquee763;
.super Ljava/lang/Object;
.source "MouseMarquee763.java"


# instance fields
.field private active:Z

.field private dragging:Z

.field private startX:F

.field private startY:F


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method begin(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 11
    iput p1, p0, Lcom/ahsim/demulation/MouseMarquee763;->startX:F

    iput p2, p0, Lcom/ahsim/demulation/MouseMarquee763;->startY:F

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/MouseMarquee763;->active:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/MouseMarquee763;->dragging:Z

    .line 13
    return-void
.end method

.method cancel()V
    .locals 1

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/MouseMarquee763;->active:Z

    iput-boolean v0, p0, Lcom/ahsim/demulation/MouseMarquee763;->dragging:Z

    return-void
.end method

.method isDragging()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/ahsim/demulation/MouseMarquee763;->active:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ahsim/demulation/MouseMarquee763;->dragging:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method move(FFF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "slop"    # F

    .line 16
    iget-boolean v0, p0, Lcom/ahsim/demulation/MouseMarquee763;->active:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 17
    :cond_0
    iget-boolean v0, p0, Lcom/ahsim/demulation/MouseMarquee763;->dragging:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ahsim/demulation/MouseMarquee763;->startX:F

    sub-float v0, p1, v0

    float-to-double v0, v0

    iget v2, p0, Lcom/ahsim/demulation/MouseMarquee763;->startY:F

    sub-float v2, p2, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    float-to-double v2, p3

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/MouseMarquee763;->dragging:Z

    .line 19
    :cond_1
    iget-boolean v0, p0, Lcom/ahsim/demulation/MouseMarquee763;->dragging:Z

    return v0
.end method

.method startX()F
    .locals 1

    .line 24
    iget v0, p0, Lcom/ahsim/demulation/MouseMarquee763;->startX:F

    return v0
.end method

.method startY()F
    .locals 1

    .line 25
    iget v0, p0, Lcom/ahsim/demulation/MouseMarquee763;->startY:F

    return v0
.end method
