.class public final Lcom/ahsim/demulation/RazorCoreRoute664;
.super Ljava/lang/Object;
.source "RazorCoreRoute664.java"


# static fields
.field public static final BLOCKED:I = 0x3

.field public static final CLASSIC:I = 0x1

.field public static final FALLBACK:I = 0x2

.field public static final FULL:I = 0x1

.field public static final MAX:I = 0x28

.field public static final PARTIAL:I = 0x2

.field public static final SCHEMA:I = 0x298

.field public static final STABLE732:I = 0x3


# instance fields
.field public final fromX:I

.field public final fromY:I

.field public final goalX:I

.field public final goalY:I

.field public final mode:I

.field public final status:I

.field public final steps:I

.field public final unit:I

.field public final xs:[I

.field public final ys:[I


# direct methods
.method private constructor <init>([I)V
    .locals 3
    .param p1, "w"    # [I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCoreRoute664;->mode:I

    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCoreRoute664;->status:I

    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCoreRoute664;->unit:I

    const/4 v0, 0x4

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCoreRoute664;->fromX:I

    const/4 v0, 0x5

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCoreRoute664;->fromY:I

    .line 16
    const/4 v0, 0x6

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCoreRoute664;->goalX:I

    const/4 v0, 0x7

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCoreRoute664;->goalY:I

    const/16 v0, 0xa

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCoreRoute664;->steps:I

    .line 17
    const/16 v0, 0x8

    aget v1, p1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/ahsim/demulation/RazorCoreRoute664;->xs:[I

    aget v0, p1, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/RazorCoreRoute664;->ys:[I

    .line 18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ahsim/demulation/RazorCoreRoute664;->xs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/RazorCoreRoute664;->xs:[I

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0xc

    aget v2, p1, v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/ahsim/demulation/RazorCoreRoute664;->ys:[I

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0xd

    aget v2, p1, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static parse([ILcom/ahsim/demulation/RazorCampaignMapSnapshot559;III)Lcom/ahsim/demulation/RazorCoreRoute664;
    .locals 10
    .param p0, "w"    # [I
    .param p1, "frame"    # Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .param p2, "unit"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    array-length v0, p0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    aget v0, p0, v0

    const/16 v1, 0x298

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    aget v1, p0, v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v1, v0, :cond_0

    aget v1, p0, v0

    if-eq v1, v3, :cond_0

    aget v1, p0, v0

    if-ne v1, v2, :cond_a

    :cond_0
    aget v1, p0, v3

    if-eq v1, v0, :cond_1

    aget v1, p0, v3

    if-eq v1, v3, :cond_1

    aget v1, p0, v3

    if-ne v1, v2, :cond_a

    :cond_1
    aget v1, p0, v2

    if-ne v1, p2, :cond_a

    if-ltz p2, :cond_a

    iget-object v1, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v1, v1

    if-ge p2, v1, :cond_a

    const/4 v1, 0x4

    aget v4, p0, v1

    iget-object v5, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    aget-object v5, v5, p2

    iget v5, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->x:I

    if-ne v4, v5, :cond_a

    const/4 v4, 0x5

    aget v5, p0, v4

    iget-object v6, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    aget-object v6, v6, p2

    iget v6, v6, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->y:I

    if-ne v5, v6, :cond_a

    const/4 v5, 0x6

    aget v5, p0, v5

    if-ne v5, p3, :cond_a

    const/4 v5, 0x7

    aget v5, p0, v5

    if-ne v5, p4, :cond_a

    const/16 v5, 0x8

    aget v6, p0, v5

    if-ltz v6, :cond_a

    aget v6, p0, v5

    const/16 v7, 0x28

    if-gt v6, v7, :cond_a

    const/16 v6, 0xa

    aget v6, p0, v6

    iget v7, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->steps:I

    if-ne v6, v7, :cond_a

    const/16 v6, 0xb

    aget v6, p0, v6

    if-nez v6, :cond_a

    iget v6, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->gameTicks:I

    if-nez v6, :cond_a

    iget v6, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->stride:I

    const/16 v7, 0x80

    if-ne v6, v7, :cond_2

    aget v6, p0, v0

    if-ne v6, v3, :cond_a

    :cond_2
    aget v6, p0, v3

    if-ne v6, v2, :cond_3

    aget v2, p0, v5

    if-nez v2, :cond_a

    :cond_3
    aget v2, p0, v3

    if-ne v2, v0, :cond_4

    aget v2, p0, v1

    if-ne p3, v2, :cond_4

    aget v2, p0, v4

    if-ne p4, v2, :cond_4

    aget v2, p0, v5

    if-nez v2, :cond_a

    .line 33
    :cond_4
    aget v1, p0, v1

    .local v1, "px":I
    aget v2, p0, v4

    .line 34
    .local v2, "py":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    aget v6, p0, v5

    if-ge v4, v6, :cond_7

    .line 35
    mul-int/lit8 v6, v4, 0x2

    add-int/lit8 v6, v6, 0xc

    aget v6, p0, v6

    .local v6, "nx":I
    mul-int/lit8 v7, v4, 0x2

    add-int/lit8 v7, v7, 0xd

    aget v7, p0, v7

    .line 36
    .local v7, "ny":I
    if-ltz v6, :cond_6

    iget v8, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->width:I

    if-ge v6, v8, :cond_6

    if-ltz v7, :cond_6

    iget v8, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->height:I

    if-ge v7, v8, :cond_6

    sub-int v8, v1, v6

    .line 37
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sub-int v9, v2, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-ne v8, v0, :cond_6

    aget v8, p0, v0

    if-ne v8, v3, :cond_5

    sub-int v8, v1, v6

    .line 38
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sub-int v9, v2, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v8, v9

    if-ne v8, v0, :cond_6

    .line 40
    :cond_5
    move v1, v6

    move v2, v7

    .line 34
    .end local v6    # "nx":I
    .end local v7    # "ny":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 39
    .restart local v6    # "nx":I
    .restart local v7    # "ny":I
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Razor 664 route contains invalid cell"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    .end local v4    # "i":I
    .end local v6    # "nx":I
    .end local v7    # "ny":I
    :cond_7
    aget v3, p0, v3

    if-ne v3, v0, :cond_9

    if-ne v1, p3, :cond_8

    if-ne v2, p4, :cond_8

    goto :goto_1

    .line 43
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Razor 664 full route does not end at target"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_9
    :goto_1
    new-instance v0, Lcom/ahsim/demulation/RazorCoreRoute664;

    invoke-direct {v0, p0}, Lcom/ahsim/demulation/RazorCoreRoute664;-><init>([I)V

    return-object v0

    .line 32
    .end local v1    # "px":I
    .end local v2    # "py":I
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 664 route witness mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describe()Ljava/lang/String;
    .locals 4

    .line 47
    iget v0, p0, Lcom/ahsim/demulation/RazorCoreRoute664;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Genesis 64"

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/ahsim/demulation/RazorCoreRoute664;->mode:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const-string v0, "Razor 64 (\u0443\u0441\u0442\u043e\u0439\u0447\u0438\u0432\u044b\u0439 \u043c\u0430\u0440\u0448\u0440\u0443\u0442)"

    goto :goto_0

    :cond_1
    const-string v0, "Razor sandbox"

    .line 48
    .local v0, "name":Ljava/lang/String;
    :goto_0
    iget v2, p0, Lcom/ahsim/demulation/RazorCoreRoute664;->status:I

    if-ne v2, v1, :cond_2

    const-string v1, "\u0446\u0435\u043b\u044c"

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/ahsim/demulation/RazorCoreRoute664;->status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const-string v1, "\u0447\u0430\u0441\u0442\u0438\u0447\u043d\u043e"

    goto :goto_1

    :cond_3
    const-string v1, "\u043d\u0435\u0442 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0430"

    .line 49
    .local v1, "state":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u0448\u0430\u0433\u043e\u0432 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ahsim/demulation/RazorCoreRoute664;->xs:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
