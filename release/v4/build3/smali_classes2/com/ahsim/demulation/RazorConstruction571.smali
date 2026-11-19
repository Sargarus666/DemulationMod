.class public final Lcom/ahsim/demulation/RazorConstruction571;
.super Ljava/lang/Object;
.source "RazorConstruction571.java"


# static fields
.field public static final DELIVERED:I = 0x4

.field public static final IDLE:I = 0x0

.field public static final ORDERED:I = 0x1

.field public static final PENDING:I = 0x3

.field public static final RESERVED:I = 0x2


# instance fields
.field public final completions:I

.field public final deliveries:I

.field public final harvesterHandle:I

.field public final orders:I

.field public final owner:I

.field public final phase:I

.field public final reservations:I

.field public final x:I

.field public final y:I


# direct methods
.method private constructor <init>([I)V
    .locals 1
    .param p1, "w"    # [I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorConstruction571;->phase:I

    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorConstruction571;->x:I

    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorConstruction571;->y:I

    const/4 v0, 0x4

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorConstruction571;->owner:I

    const/4 v0, 0x5

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorConstruction571;->harvesterHandle:I

    .line 12
    const/4 v0, 0x6

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorConstruction571;->orders:I

    const/4 v0, 0x7

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorConstruction571;->reservations:I

    const/16 v0, 0x8

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorConstruction571;->completions:I

    const/16 v0, 0x9

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorConstruction571;->deliveries:I

    .line 13
    return-void
.end method

.method public static parse([IIII)Lcom/ahsim/demulation/RazorConstruction571;
    .locals 8
    .param p0, "w"    # [I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "house"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    if-eqz p0, :cond_5

    array-length v0, p0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    aget v0, p0, v0

    const/16 v1, 0x23b

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    aget v1, p0, v0

    if-ltz v1, :cond_5

    aget v1, p0, v0

    const/4 v2, 0x4

    if-gt v1, v2, :cond_5

    const/4 v1, 0x6

    aget v3, p0, v1

    if-ltz v3, :cond_5

    const/4 v3, 0x7

    aget v4, p0, v3

    if-ltz v4, :cond_5

    const/16 v4, 0x8

    aget v5, p0, v4

    if-ltz v5, :cond_5

    const/16 v5, 0x9

    aget v6, p0, v5

    if-ltz v6, :cond_5

    aget v1, p0, v1

    aget v6, p0, v3

    if-lt v1, v6, :cond_5

    aget v1, p0, v3

    aget v3, p0, v4

    if-lt v1, v3, :cond_5

    aget v1, p0, v4

    aget v3, p0, v5

    if-lt v1, v3, :cond_5

    const/16 v1, 0xa

    aget v1, p0, v1

    if-nez v1, :cond_5

    const/16 v1, 0xb

    aget v1, p0, v1

    const/16 v3, 0xc

    if-ne v1, v3, :cond_5

    aget v1, p0, v3

    const/16 v3, 0x10

    if-ne v1, v3, :cond_5

    const/16 v1, 0xd

    aget v1, p0, v1

    if-nez v1, :cond_5

    const/16 v1, 0xe

    aget v1, p0, v1

    if-nez v1, :cond_5

    if-lt p1, v0, :cond_5

    const/16 v1, 0x80

    if-gt p1, v1, :cond_5

    if-lt p2, v0, :cond_5

    if-gt p2, v1, :cond_5

    if-ltz p3, :cond_5

    const/4 v1, 0x5

    if-ge p3, v1, :cond_5

    .line 22
    aget v4, p0, v0

    const/4 v5, 0x3

    const/4 v6, -0x1

    const/4 v7, 0x2

    if-nez v4, :cond_0

    aget v4, p0, v7

    if-ne v4, v6, :cond_3

    aget v4, p0, v5

    if-ne v4, v6, :cond_3

    aget v4, p0, v2

    if-ne v4, v6, :cond_3

    aget v4, p0, v1

    if-nez v4, :cond_3

    :cond_0
    aget v4, p0, v0

    if-ne v4, v0, :cond_1

    aget v4, p0, v7

    if-ne v4, v6, :cond_3

    aget v4, p0, v5

    if-ne v4, v6, :cond_3

    aget v4, p0, v2

    if-ne v4, p3, :cond_3

    aget v4, p0, v1

    if-nez v4, :cond_3

    :cond_1
    aget v4, p0, v0

    if-lt v4, v7, :cond_4

    aget v4, p0, v7

    if-ltz v4, :cond_3

    aget v4, p0, v7

    if-ge v4, p1, :cond_3

    aget v4, p0, v5

    if-ltz v4, :cond_3

    aget v4, p0, v5

    if-ge v4, p2, :cond_3

    aget v2, p0, v2

    if-ne v2, p3, :cond_3

    aget v2, p0, v0

    if-ne v2, v7, :cond_2

    aget v2, p0, v1

    if-nez v2, :cond_3

    :cond_2
    aget v0, p0, v0

    if-lt v0, v5, :cond_4

    aget v0, p0, v1

    if-lez v0, :cond_3

    aget v0, p0, v1

    ushr-int/2addr v0, v3

    if-eqz v0, :cond_3

    goto :goto_0

    .line 28
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Inconsistent Razor construction lifecycle"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_4
    :goto_0
    new-instance v0, Lcom/ahsim/demulation/RazorConstruction571;

    invoke-direct {v0, p0}, Lcom/ahsim/demulation/RazorConstruction571;-><init>([I)V

    return-object v0

    .line 21
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid Razor construction protocol"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public at(II)Z
    .locals 2
    .param p1, "tileX"    # I
    .param p2, "tileY"    # I

    .line 32
    iget v0, p0, Lcom/ahsim/demulation/RazorConstruction571;->phase:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorConstruction571;->x:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorConstruction571;->y:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public busy()Z
    .locals 1

    .line 31
    iget v0, p0, Lcom/ahsim/demulation/RazorConstruction571;->phase:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
