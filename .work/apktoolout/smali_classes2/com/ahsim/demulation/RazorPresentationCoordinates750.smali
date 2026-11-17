.class public final Lcom/ahsim/demulation/RazorPresentationCoordinates750;
.super Ljava/lang/Object;
.source "RazorPresentationCoordinates750.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static boundedRawOrCentre(IIIII)I
    .locals 7
    .param p0, "raw"    # I
    .param p1, "tileX"    # I
    .param p2, "tileY"    # I
    .param p3, "mapWidth"    # I
    .param p4, "mapHeight"    # I

    .line 16
    const/4 v0, 0x1

    if-lt p3, v0, :cond_2

    if-lt p4, v0, :cond_2

    const/16 v0, 0x80

    if-gt p3, v0, :cond_2

    if-gt p4, v0, :cond_2

    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    if-ge p1, p3, :cond_2

    if-ge p2, p4, :cond_2

    .line 19
    shl-int/lit8 v1, p1, 0x8

    add-int/2addr v1, v0

    .local v1, "cx":I
    shl-int/lit8 v2, p2, 0x8

    add-int/2addr v2, v0

    .line 20
    .local v2, "cy":I
    shl-int/lit8 v0, v2, 0x10

    or-int/2addr v0, v1

    .line 21
    .local v0, "centre":I
    const v3, 0xffff

    and-int v4, p0, v3

    .local v4, "fx":I
    ushr-int/lit8 v5, p0, 0x10

    and-int/2addr v3, v5

    .line 22
    .local v3, "fy":I
    mul-int/lit16 v5, p3, 0x100

    if-ge v4, v5, :cond_1

    mul-int/lit16 v5, p4, 0x100

    if-ge v3, v5, :cond_1

    sub-int v5, v4, v1

    .line 23
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/16 v6, 0x100

    if-gt v5, v6, :cond_1

    sub-int v5, v3, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v5, v6, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    return p0

    .line 24
    :cond_1
    :goto_0
    return v0

    .line 18
    .end local v0    # "centre":I
    .end local v1    # "cx":I
    .end local v2    # "cy":I
    .end local v3    # "fy":I
    .end local v4    # "fx":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid committed map cell"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
