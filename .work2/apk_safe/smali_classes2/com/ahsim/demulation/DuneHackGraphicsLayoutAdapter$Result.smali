.class public final Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;
.super Ljava/lang/Object;
.source "DuneHackGraphicsLayoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final assets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;",
            ">;"
        }
    .end annotation
.end field

.field public final diagnostics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final stagedRoot:Ljava/io/File;

.field public final tacticalAdapted:I

.field public final terrainAdapted:I


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/util/Map;Ljava/util/List;II)V
    .locals 1
    .param p1, "stagedRoot"    # Ljava/io/File;
    .param p4, "terrainAdapted"    # I
    .param p5, "tacticalAdapted"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 88
    .local p2, "assets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;>;"
    .local p3, "diagnostics":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;->stagedRoot:Ljava/io/File;

    .line 90
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;->assets:Ljava/util/Map;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;->diagnostics:Ljava/util/List;

    .line 92
    iput p4, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;->terrainAdapted:I

    .line 93
    iput p5, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;->tacticalAdapted:I

    .line 94
    return-void
.end method


# virtual methods
.method public adaptedCount()I
    .locals 2

    .line 101
    iget v0, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;->terrainAdapted:I

    iget v1, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;->tacticalAdapted:I

    add-int/2addr v0, v1

    return v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;->assets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;

    .line 98
    .local v0, "status":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;->adapted:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public summary()Ljava/lang/String;
    .locals 3

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v0, "out":Ljava/lang/StringBuilder;
    const-string v1, "R79/R80/R81 relocation adapter: terrain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;->terrainAdapted:I

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/6, tactical "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;->tacticalAdapted:I

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object v1, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;->diagnostics:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;->diagnostics:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 111
    if-eqz v1, :cond_0

    const-string v2, " | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;->diagnostics:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
