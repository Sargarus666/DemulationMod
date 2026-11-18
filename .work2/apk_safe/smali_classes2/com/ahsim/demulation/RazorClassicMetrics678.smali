.class public final Lcom/ahsim/demulation/RazorClassicMetrics678;
.super Ljava/lang/Object;
.source "RazorClassicMetrics678.java"


# static fields
.field public static final GENESIS_VIEW_H:I = 0xf0

.field public static final GENESIS_WORLD_W:I = 0xf0

.field public static final METATILE_PX:I = 0x20


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cellPixels(II)I
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 15
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorClassicMetrics678;->scale(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x20

    return v0
.end method

.method public static columns(II)I
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 18
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorClassicMetrics678;->cellPixels(II)I

    move-result v0

    add-int/2addr v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorClassicMetrics678;->cellPixels(II)I

    move-result v2

    div-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static rows(II)I
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 21
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorClassicMetrics678;->cellPixels(II)I

    move-result v0

    add-int/2addr v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorClassicMetrics678;->cellPixels(II)I

    move-result v2

    div-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static scale(II)I
    .locals 4
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 10
    div-int/lit16 v0, p1, 0xf0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 11
    .local v0, "scale":I
    :goto_0
    if-le v0, v1, :cond_0

    div-int v2, p0, v0

    const/16 v3, 0xf0

    if-ge v2, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 12
    :cond_0
    return v0
.end method
