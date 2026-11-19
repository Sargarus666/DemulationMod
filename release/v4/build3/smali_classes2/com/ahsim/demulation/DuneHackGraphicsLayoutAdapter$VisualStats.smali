.class final Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$VisualStats;
.super Ljava/lang/Object;
.source "DuneHackGraphicsLayoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VisualStats"
.end annotation


# instance fields
.field final dynamic:I

.field final valid:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "valid"    # I
    .param p2, "dynamic"    # I

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$VisualStats;->valid:I

    iput p2, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$VisualStats;->dynamic:I

    return-void
.end method
