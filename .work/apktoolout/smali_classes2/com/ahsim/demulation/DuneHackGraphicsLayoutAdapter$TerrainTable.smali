.class final Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
.super Ljava/lang/Object;
.source "DuneHackGraphicsLayoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TerrainTable"
.end annotation


# instance fields
.field final chunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;",
            ">;"
        }
    .end annotation
.end field

.field final offset:I

.field final paletteOffset:I


# direct methods
.method constructor <init>(IILjava/util/List;)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "paletteOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;",
            ">;)V"
        }
    .end annotation

    .line 123
    .local p3, "chunks":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p1, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;->offset:I

    .line 125
    iput p2, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;->paletteOffset:I

    .line 126
    iput-object p3, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;->chunks:Ljava/util/List;

    .line 127
    return-void
.end method
