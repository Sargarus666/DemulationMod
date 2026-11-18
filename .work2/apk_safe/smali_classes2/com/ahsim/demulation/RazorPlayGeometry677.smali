.class public final Lcom/ahsim/demulation/RazorPlayGeometry677;
.super Ljava/lang/Object;
.source "RazorPlayGeometry677.java"


# static fields
.field public static final GENESIS_PIXELS_PER_MAP_CELL:I = 0x20


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static screenToCell(FFFI)I
    .locals 2
    .param p0, "screen"    # F
    .param p1, "displayStart"    # F
    .param p2, "displayCell"    # F
    .param p3, "mapStart"    # I

    .line 37
    invoke-static {p2}, Lcom/ahsim/demulation/RazorPlayGeometry677;->sourcePixelScale(F)F

    .line 38
    sub-float v0, p0, p1

    div-float/2addr v0, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr v0, p3

    return v0
.end method

.method public static sourcePixelScale(F)F
    .locals 2
    .param p0, "displayCell"    # F

    .line 16
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    const/high16 v0, 0x42000000    # 32.0f

    div-float v0, p0, v0

    return v0

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid map cell size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static spriteBounds(FFFIIII[F)V
    .locals 4
    .param p0, "cx"    # F
    .param p1, "cy"    # F
    .param p2, "cell"    # F
    .param p3, "minX"    # I
    .param p4, "minY"    # I
    .param p5, "spriteWidth"    # I
    .param p6, "spriteHeight"    # I
    .param p7, "out"    # [F

    .line 25
    if-eqz p7, :cond_0

    array-length v0, p7

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    if-lez p5, :cond_0

    if-lez p6, :cond_0

    .line 27
    invoke-static {p2}, Lcom/ahsim/demulation/RazorPlayGeometry677;->sourcePixelScale(F)F

    move-result v0

    .line 28
    .local v0, "s":F
    int-to-float v1, p3

    mul-float/2addr v1, v0

    add-float/2addr v1, p0

    const/4 v2, 0x0

    aput v1, p7, v2

    .line 29
    int-to-float v1, p4

    mul-float/2addr v1, v0

    add-float/2addr v1, p1

    const/4 v3, 0x1

    aput v1, p7, v3

    .line 30
    aget v1, p7, v2

    int-to-float v2, p5

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    const/4 v2, 0x2

    aput v1, p7, v2

    .line 31
    aget v1, p7, v3

    int-to-float v2, p6

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    const/4 v2, 0x3

    aput v1, p7, v2

    .line 32
    return-void

    .line 26
    .end local v0    # "s":F
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid source sprite size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
