.class final Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;
.super Ljava/lang/Object;
.source "RomAudioOverlayPreparation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomAudioOverlayPreparation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Domain"
.end annotation


# instance fields
.field final changed:Z

.field final differingAddresses:J

.field final end:I

.field final key:Ljava/lang/String;

.field final playbackRelevant:Z

.field final start:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIZJ)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "playbackRelevant"    # Z
    .param p5, "differingAddresses"    # J

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;->key:Ljava/lang/String;

    .line 38
    iput p2, p0, Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;->start:I

    .line 39
    iput p3, p0, Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;->end:I

    .line 40
    iput-boolean p4, p0, Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;->playbackRelevant:Z

    .line 41
    iput-wide p5, p0, Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;->differingAddresses:J

    .line 42
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;->changed:Z

    .line 43
    return-void
.end method
