.class public final Lcom/ahsim/demulation/RazorRefinery570;
.super Ljava/lang/Object;
.source "RazorRefinery570.java"


# static fields
.field public static final DELIVERED:I = 0x2

.field public static final NONE:I = 0x0

.field public static final PENDING:I = 0x1


# instance fields
.field public final commissions:I

.field public final deliveries:I

.field public final harvesterHandle:I

.field public final owner:I

.field public final phase:I

.field public final x:I

.field public final y:I


# direct methods
.method private constructor <init>([I)V
    .locals 1
    .param p1, "data"    # [I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorRefinery570;->phase:I

    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorRefinery570;->x:I

    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorRefinery570;->y:I

    const/4 v0, 0x4

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorRefinery570;->harvesterHandle:I

    .line 12
    const/4 v0, 0x5

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorRefinery570;->owner:I

    const/16 v0, 0x8

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorRefinery570;->commissions:I

    const/16 v0, 0x9

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorRefinery570;->deliveries:I

    .line 13
    return-void
.end method

.method public static parse([IIII)Lcom/ahsim/demulation/RazorRefinery570;
    .locals 9
    .param p0, "data"    # [I
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

    const/16 v1, 0xb

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    aget v0, p0, v0

    const/16 v1, 0x23a

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    aget v1, p0, v0

    if-ltz v1, :cond_5

    aget v1, p0, v0

    const/4 v2, 0x2

    if-gt v1, v2, :cond_5

    const/4 v1, 0x6

    aget v1, p0, v1

    const/16 v3, 0xc

    if-ne v1, v3, :cond_5

    const/4 v1, 0x7

    aget v1, p0, v1

    const/16 v3, 0x10

    if-ne v1, v3, :cond_5

    const/16 v1, 0x8

    aget v4, p0, v1

    if-ltz v4, :cond_5

    const/16 v4, 0x9

    aget v5, p0, v4

    if-ltz v5, :cond_5

    aget v5, p0, v4

    aget v6, p0, v1

    if-gt v5, v6, :cond_5

    const/16 v5, 0xa

    aget v5, p0, v5

    if-nez v5, :cond_5

    if-lt p1, v0, :cond_5

    const/16 v5, 0x80

    if-gt p1, v5, :cond_5

    if-lt p2, v0, :cond_5

    if-gt p2, v5, :cond_5

    if-ltz p3, :cond_5

    const/4 v5, 0x5

    if-ge p3, v5, :cond_5

    .line 23
    aget v6, p0, v0

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-nez v6, :cond_1

    .line 24
    aget v0, p0, v2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    aget v0, p0, v8

    if-ne v0, v1, :cond_0

    aget v0, p0, v7

    if-nez v0, :cond_0

    aget v0, p0, v5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Inactive test refinery has an object"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_1
    aget v6, p0, v2

    if-ltz v6, :cond_4

    aget v6, p0, v2

    if-ge v6, p1, :cond_4

    aget v6, p0, v8

    if-ltz v6, :cond_4

    aget v6, p0, v8

    if-ge v6, p2, :cond_4

    aget v5, p0, v5

    if-ne v5, p3, :cond_4

    aget v5, p0, v7

    if-lez v5, :cond_4

    aget v5, p0, v7

    ushr-int/lit8 v3, v5, 0x10

    if-eqz v3, :cond_4

    aget v3, p0, v1

    if-eqz v3, :cond_4

    aget v3, p0, v0

    if-ne v3, v0, :cond_2

    aget v3, p0, v4

    aget v1, p0, v1

    if-ge v3, v1, :cond_4

    :cond_2
    aget v0, p0, v0

    if-ne v0, v2, :cond_3

    aget v0, p0, v4

    if-eqz v0, :cond_4

    .line 33
    :cond_3
    :goto_0
    new-instance v0, Lcom/ahsim/demulation/RazorRefinery570;

    invoke-direct {v0, p0}, Lcom/ahsim/demulation/RazorRefinery570;-><init>([I)V

    return-object v0

    .line 32
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid Razor refinery event identity"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid Razor refinery event envelope"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public active()Z
    .locals 1

    .line 35
    iget v0, p0, Lcom/ahsim/demulation/RazorRefinery570;->phase:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public at(II)Z
    .locals 1
    .param p1, "tileX"    # I
    .param p2, "tileY"    # I

    .line 36
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorRefinery570;->active()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorRefinery570;->x:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorRefinery570;->y:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
