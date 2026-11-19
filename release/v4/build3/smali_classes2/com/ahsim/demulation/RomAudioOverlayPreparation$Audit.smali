.class final Lcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;
.super Ljava/lang/Object;
.source "RomAudioOverlayPreparation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomAudioOverlayPreparation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Audit"
.end annotation


# instance fields
.field final changedDomains:I

.field final domains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;",
            ">;"
        }
    .end annotation
.end field

.field final metadataOnly:Z

.field final playbackDiffers:Z

.field final sourcePackBytes:I


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .locals 5
    .param p2, "sourcePackBytes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;",
            ">;I)V"
        }
    .end annotation

    .line 52
    .local p1, "domains":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;->domains:Ljava/util/List;

    .line 54
    iput p2, p0, Lcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;->sourcePackBytes:I

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "changed":I
    const/4 v1, 0x0

    .line 57
    .local v1, "playable":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;

    .line 58
    .local v3, "d":Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;
    iget-boolean v4, v3, Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;->changed:Z

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 59
    :cond_0
    iget-boolean v4, v3, Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;->changed:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v3, Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;->playbackRelevant:Z

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 60
    .end local v3    # "d":Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;
    :cond_1
    goto :goto_0

    .line 61
    :cond_2
    iput v0, p0, Lcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;->changedDomains:I

    .line 62
    iput-boolean v1, p0, Lcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;->playbackDiffers:Z

    .line 63
    if-lez v0, :cond_3

    if-nez v1, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;->metadataOnly:Z

    .line 64
    return-void
.end method
