.class final Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
.super Ljava/lang/Object;
.source "DuneHackGraphicsLayoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DuneHackResidentLoader"
.end annotation


# instance fields
.field final codeOffset:I

.field final prePointerCell:I

.field final preSource:I

.field final streamSource:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0
    .param p1, "codeOffset"    # I
    .param p2, "prePointerCell"    # I
    .param p3, "preSource"    # I
    .param p4, "streamSource"    # I

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput p1, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;->codeOffset:I

    .line 187
    iput p2, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;->prePointerCell:I

    .line 188
    iput p3, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;->preSource:I

    .line 189
    iput p4, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;->streamSource:I

    .line 190
    return-void
.end method
