.class final Lcom/ahsim/demulation/GenesisSoundEventBridge;
.super Ljava/lang/Object;
.source "GenesisSoundEventBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;,
        Lcom/ahsim/demulation/GenesisSoundEventBridge$Sink;
    }
.end annotation


# static fields
.field static final CAPACITY:I = 0x40

.field static final HEADER_WORDS:I = 0x4

.field static final KIND_DIRECT:I = 0x2

.field static final KIND_OUTPUT:I = 0x1

.field static final MAGIC:I = 0x534e4431

.field static final OP_PLAY:I = 0x1

.field static final OP_STOP:I = 0x2

.field static final ROUTE_IMMEDIATE:I = 0x1

.field static final ROUTE_QUEUED:I = 0x0

.field static final STRIDE:I = 0x5

.field static final VERSION:I = 0x40168

.field static final WORDS:I = 0x144


# instance fields
.field private haveSequence:Z

.field private lastSequence:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method consume([ILcom/ahsim/demulation/GenesisSoundEventBridge$Sink;)I
    .locals 18
    .param p1, "words"    # [I
    .param p2, "sink"    # Lcom/ahsim/demulation/GenesisSoundEventBridge$Sink;

    .line 60
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, -0x1

    if-eqz v1, :cond_7

    array-length v4, v1

    const/16 v5, 0x144

    if-lt v4, v5, :cond_7

    const/4 v4, 0x0

    aget v4, v1, v4

    const v5, 0x534e4431

    if-ne v4, v5, :cond_7

    const/4 v4, 0x1

    aget v5, v1, v4

    const v6, 0x40168

    if-eq v5, v6, :cond_0

    goto/16 :goto_3

    .line 62
    :cond_0
    const/4 v5, 0x3

    aget v5, v1, v5

    .line 63
    .local v5, "count":I
    if-ltz v5, :cond_6

    const/16 v6, 0x40

    if-le v5, v6, :cond_1

    goto :goto_2

    .line 64
    :cond_1
    const/4 v3, 0x0

    .line 65
    .local v3, "delivered":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_5

    .line 66
    mul-int/lit8 v7, v6, 0x5

    add-int/lit8 v7, v7, 0x4

    .line 67
    .local v7, "base":I
    aget v9, v1, v7

    .line 68
    .local v9, "sequence":I
    if-eqz v9, :cond_4

    iget-boolean v8, v0, Lcom/ahsim/demulation/GenesisSoundEventBridge;->haveSequence:Z

    if-eqz v8, :cond_2

    iget v8, v0, Lcom/ahsim/demulation/GenesisSoundEventBridge;->lastSequence:I

    sub-int v8, v9, v8

    if-gtz v8, :cond_2

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    add-int/lit8 v8, v7, 0x2

    aget v8, v1, v8

    .line 71
    .local v8, "meta":I
    new-instance v10, Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;

    add-int/lit8 v11, v7, 0x1

    aget v11, v1, v11

    move-object v12, v10

    move v10, v11

    and-int/lit16 v11, v8, 0xff

    ushr-int/lit8 v13, v8, 0x8

    and-int/lit16 v13, v13, 0xff

    ushr-int/lit8 v14, v8, 0x10

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v15, v7, 0x3

    aget v15, v1, v15

    const v16, 0xffff

    and-int v15, v15, v16

    add-int/lit8 v16, v7, 0x4

    aget v16, v1, v16

    move/from16 v17, v16

    move/from16 v16, v8

    move-object v8, v12

    move v12, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v17

    .end local v8    # "meta":I
    .local v16, "meta":I
    invoke-direct/range {v8 .. v15}, Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;-><init>(IIIIIII)V

    .line 79
    .local v8, "command":Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;
    if-eqz v2, :cond_3

    invoke-interface {v2, v8}, Lcom/ahsim/demulation/GenesisSoundEventBridge$Sink;->onCommand(Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;)V

    .line 80
    :cond_3
    iput v9, v0, Lcom/ahsim/demulation/GenesisSoundEventBridge;->lastSequence:I

    .line 81
    iput-boolean v4, v0, Lcom/ahsim/demulation/GenesisSoundEventBridge;->haveSequence:Z

    .line 82
    add-int/lit8 v3, v3, 0x1

    .line 65
    .end local v7    # "base":I
    .end local v8    # "command":Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;
    .end local v9    # "sequence":I
    .end local v16    # "meta":I
    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 84
    .end local v6    # "i":I
    :cond_5
    return v3

    .line 63
    .end local v3    # "delivered":I
    :cond_6
    :goto_2
    return v3

    .line 61
    .end local v5    # "count":I
    :cond_7
    :goto_3
    return v3
.end method

.method discardExisting([I)I
    .locals 4
    .param p1, "words"    # [I

    .line 91
    if-eqz p1, :cond_2

    array-length v0, p1

    const/16 v1, 0x144

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    aget v1, p1, v0

    const v2, 0x534e4431

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    aget v2, p1, v1

    const v3, 0x40168

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    const/4 v2, 0x2

    aget v2, p1, v2

    iput v2, p0, Lcom/ahsim/demulation/GenesisSoundEventBridge;->lastSequence:I

    .line 94
    iget v2, p0, Lcom/ahsim/demulation/GenesisSoundEventBridge;->lastSequence:I

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisSoundEventBridge;->haveSequence:Z

    .line 95
    const/4 v0, 0x3

    aget v0, p1, v0

    return v0

    .line 92
    :cond_2
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method reset()V
    .locals 1

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/ahsim/demulation/GenesisSoundEventBridge;->lastSequence:I

    .line 52
    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisSoundEventBridge;->haveSequence:Z

    .line 53
    return-void
.end method
