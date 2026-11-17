.class final Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
.super Ljava/lang/Object;
.source "DuneHackGraphicsLayoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RawTerrainBlock"
.end annotation


# instance fields
.field final descriptorOffset:I

.field final externalPatternWords:I

.field final maxPatternIndex:I

.field final patternOffset:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0
    .param p1, "descriptorOffset"    # I
    .param p2, "patternOffset"    # I
    .param p3, "externalPatternWords"    # I
    .param p4, "maxPatternIndex"    # I

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput p1, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;->descriptorOffset:I

    .line 138
    iput p2, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;->patternOffset:I

    .line 139
    iput p3, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;->externalPatternWords:I

    .line 140
    iput p4, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;->maxPatternIndex:I

    .line 141
    return-void
.end method
