.class final Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;
.super Ljava/lang/Object;
.source "GenesisOriginalSfxPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Action"
.end annotation


# instance fields
.field final sequence:I

.field final type:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sequence"    # I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->type:I

    iput p2, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Action;->sequence:I

    return-void
.end method
