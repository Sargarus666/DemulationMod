.class final Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackTerrainBundle;
.super Ljava/lang/Object;
.source "DuneHackGraphicsLayoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DuneHackTerrainBundle"
.end annotation


# instance fields
.field final descriptors:[B

.field final maxPatternIndex:I

.field final patternCount:I

.field final patterns:[B


# direct methods
.method constructor <init>([B[BII)V
    .locals 0
    .param p1, "patterns"    # [B
    .param p2, "descriptors"    # [B
    .param p3, "patternCount"    # I
    .param p4, "maxPatternIndex"    # I

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackTerrainBundle;->patterns:[B

    .line 152
    iput-object p2, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackTerrainBundle;->descriptors:[B

    .line 153
    iput p3, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackTerrainBundle;->patternCount:I

    .line 154
    iput p4, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackTerrainBundle;->maxPatternIndex:I

    .line 155
    return-void
.end method
