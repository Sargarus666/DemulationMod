.class final Lcom/ahsim/demulation/RazorWaypointVisual739;
.super Ljava/lang/Object;
.source "RazorWaypointVisual739.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static committedCentre740(IIII)I
    .locals 3
    .param p0, "tileX"    # I
    .param p1, "tileY"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 10
    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/16 v1, 0x80

    if-gt p2, v1, :cond_0

    if-lt p3, v0, :cond_0

    if-gt p3, v1, :cond_0

    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    if-ge p0, p2, :cond_0

    if-ge p1, p3, :cond_0

    .line 13
    mul-int/lit16 v0, p1, 0x100

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x10

    mul-int/lit16 v2, p0, 0x100

    add-int/2addr v2, v1

    or-int/2addr v0, v2

    return v0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid committed Razor cell"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static isCommittedCell(III)Z
    .locals 5
    .param p0, "packedRaw"    # I
    .param p1, "tileX"    # I
    .param p2, "tileY"    # I

    .line 16
    const/4 v0, 0x0

    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    const/16 v1, 0x80

    if-ge p1, v1, :cond_2

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    shl-int/lit8 v2, p1, 0x8

    add-int/2addr v2, v1

    .line 18
    .local v2, "expectedX":I
    shl-int/lit8 v3, p2, 0x8

    add-int/2addr v3, v1

    .line 19
    .local v3, "expectedY":I
    const v1, 0xffff

    and-int v4, p0, v1

    if-ne v4, v2, :cond_1

    ushr-int/lit8 v4, p0, 0x10

    and-int/2addr v1, v4

    if-ne v1, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 16
    .end local v2    # "expectedX":I
    .end local v3    # "expectedY":I
    :cond_2
    :goto_0
    return v0
.end method
