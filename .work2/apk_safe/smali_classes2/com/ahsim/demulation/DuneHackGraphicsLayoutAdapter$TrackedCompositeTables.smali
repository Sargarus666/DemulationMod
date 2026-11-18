.class final Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
.super Ljava/lang/Object;
.source "DuneHackGraphicsLayoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackedCompositeTables"
.end annotation


# instance fields
.field final siege:I

.field final tank:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "tank"    # I
    .param p2, "siege"    # I

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;->tank:I

    iput p2, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;->siege:I

    return-void
.end method
