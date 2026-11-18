.class public final Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;
.super Ljava/lang/Object;
.source "RomGraphicsMediaOverlayStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Snapshot"
.end annotation


# instance fields
.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public final installRoot:Ljava/io/File;

.field public final layoutFamily:Ljava/lang/String;

.field public final profileId:Ljava/lang/String;

.field public final sourceSha256:Ljava/lang/String;

.field public final tacticalSpritesState:Ljava/lang/String;

.field public final terrainRadarState:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "installRoot"    # Ljava/io/File;
    .param p2, "sourceSha256"    # Ljava/lang/String;
    .param p3, "profileId"    # Ljava/lang/String;
    .param p4, "layoutFamily"    # Ljava/lang/String;
    .param p5, "terrainRadarState"    # Ljava/lang/String;
    .param p6, "tacticalSpritesState"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
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

    .line 62
    .local p7, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->installRoot:Ljava/io/File;

    .line 64
    iput-object p2, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->sourceSha256:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->profileId:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->layoutFamily:Ljava/lang/String;

    .line 67
    iput-object p5, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->terrainRadarState:Ljava/lang/String;

    .line 68
    iput-object p6, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->tacticalSpritesState:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p7}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->entries:Ljava/util/Map;

    .line 70
    return-void
.end method


# virtual methods
.method public entries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->entries:Ljava/util/Map;

    return-object v0
.end method

.method public entryCount()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public find(Ljava/lang/String;)Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;
    .locals 1
    .param p1, "relativePath"    # Ljava/lang/String;

    .line 73
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;

    :goto_0
    return-object v0
.end method
