.class final Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;
.super Ljava/lang/Object;
.source "DuneHackGraphicsLayoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SpriteLoader"
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


# direct methods
.method constructor <init>(ILjava/util/List;)V
    .locals 0
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;",
            ">;)V"
        }
    .end annotation

    .line 174
    .local p2, "chunks":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput p1, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;->offset:I

    .line 176
    iput-object p2, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;->chunks:Ljava/util/List;

    .line 177
    return-void
.end method
