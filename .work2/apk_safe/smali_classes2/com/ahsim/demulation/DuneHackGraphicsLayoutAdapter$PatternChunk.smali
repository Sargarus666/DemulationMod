.class final Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;
.super Ljava/lang/Object;
.source "DuneHackGraphicsLayoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PatternChunk"
.end annotation


# instance fields
.field final count:I

.field final firstPattern:I

.field final raw:Z

.field final source:I


# direct methods
.method constructor <init>(IIIZ)V
    .locals 0
    .param p1, "firstPattern"    # I
    .param p2, "count"    # I
    .param p3, "source"    # I
    .param p4, "raw"    # Z

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput p1, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;->firstPattern:I

    .line 165
    iput p2, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;->count:I

    .line 166
    iput p3, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;->source:I

    .line 167
    iput-boolean p4, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;->raw:Z

    .line 168
    return-void
.end method
