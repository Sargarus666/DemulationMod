.class final Lcom/ahsim/demulation/GenesisGemsSfxData$LoopFrame;
.super Ljava/lang/Object;
.source "GenesisGemsSfxData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisGemsSfxData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoopFrame"
.end annotation


# instance fields
.field count:I

.field final position:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "position"    # I

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$LoopFrame;->count:I

    iput p2, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$LoopFrame;->position:I

    return-void
.end method
