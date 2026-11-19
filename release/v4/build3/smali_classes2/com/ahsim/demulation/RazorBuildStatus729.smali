.class final Lcom/ahsim/demulation/RazorBuildStatus729;
.super Ljava/lang/Object;
.source "RazorBuildStatus729.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static accept([II)Z
    .locals 6
    .param p0, "r"    # [I
    .param p1, "committedDynamicBuilds"    # I

    .line 11
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    if-ltz p1, :cond_1

    aget v1, p0, v0

    const/16 v2, 0x2cb

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    aget v2, p0, v1

    if-ne v2, v1, :cond_1

    const/4 v2, 0x2

    aget v3, p0, v2

    if-ltz v3, :cond_1

    aget v3, p0, v2

    const/16 v4, 0x49

    if-gt v3, v4, :cond_1

    aget v3, p0, v2

    rsub-int v3, v3, 0x80

    if-gt p1, v3, :cond_1

    const/4 v3, 0x3

    aget v4, p0, v3

    if-ltz v4, :cond_1

    aget v4, p0, v3

    aget v5, p0, v2

    if-gt v4, v5, :cond_1

    const/4 v4, 0x5

    aget v5, p0, v4

    aget v3, p0, v3

    if-lt v5, v3, :cond_1

    aget v3, p0, v4

    aget v2, p0, v2

    add-int/2addr v2, p1

    if-gt v3, v2, :cond_1

    const/4 v2, 0x7

    aget v2, p0, v2

    if-ltz v2, :cond_1

    const/16 v2, 0xb

    aget v2, p0, v2

    if-nez v2, :cond_1

    const/16 v2, 0xc

    aget v2, p0, v2

    if-nez v2, :cond_1

    const/16 v2, 0xa

    aget v2, p0, v2

    const v3, 0x15cd40e

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    return v1

    .line 17
    :cond_1
    :goto_0
    return v0
.end method
