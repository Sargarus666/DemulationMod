.class public final Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$CommitRequest;
.super Ljava/lang/Object;
.source "RomGraphicsMediaOverlayStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommitRequest"
.end annotation


# instance fields
.field public final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public final layoutFamily:Ljava/lang/String;

.field public final profileId:Ljava/lang/String;

.field public final sourceSha256:Ljava/lang/String;

.field public final tacticalSpritesState:Ljava/lang/String;

.field public final terrainRadarState:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "sourceSha256"    # Ljava/lang/String;
    .param p2, "profileId"    # Ljava/lang/String;
    .param p3, "layoutFamily"    # Ljava/lang/String;
    .param p4, "terrainRadarState"    # Ljava/lang/String;
    .param p5, "tacticalSpritesState"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p6, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {p1}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->-$$Nest$smclean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$CommitRequest;->sourceSha256:Ljava/lang/String;

    .line 93
    invoke-static {p2}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->-$$Nest$smclean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$CommitRequest;->profileId:Ljava/lang/String;

    .line 94
    invoke-static {p3}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->-$$Nest$smclean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$CommitRequest;->layoutFamily:Ljava/lang/String;

    .line 95
    invoke-static {p4}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->-$$Nest$smclean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$CommitRequest;->terrainRadarState:Ljava/lang/String;

    .line 96
    invoke-static {p5}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->-$$Nest$smclean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$CommitRequest;->tacticalSpritesState:Ljava/lang/String;

    .line 97
    if-nez p6, :cond_0

    .line 98
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p6}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object v0, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$CommitRequest;->entries:Ljava/util/Map;

    .line 100
    return-void
.end method
