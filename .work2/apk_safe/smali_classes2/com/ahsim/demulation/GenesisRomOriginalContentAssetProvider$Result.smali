.class public final Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;
.super Ljava/lang/Object;
.source "GenesisRomOriginalContentAssetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final mismatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final payloadBytes:J

.field public final stagedRoot:Ljava/io/File;

.field public final totalEntries:I

.field public final verifiedEntries:I


# direct methods
.method private constructor <init>(IIJLjava/util/List;Ljava/io/File;)V
    .locals 1
    .param p1, "totalEntries"    # I
    .param p2, "verifiedEntries"    # I
    .param p3, "payloadBytes"    # J
    .param p6, "stagedRoot"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 46
    .local p5, "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;->totalEntries:I

    .line 48
    iput p2, p0, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;->verifiedEntries:I

    .line 49
    iput-wide p3, p0, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;->payloadBytes:J

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;->mismatches:Ljava/util/List;

    .line 51
    iput-object p6, p0, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;->stagedRoot:Ljava/io/File;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(IIJLjava/util/List;Ljava/io/File;Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;-><init>(IIJLjava/util/List;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public allVerified()Z
    .locals 2

    .line 54
    iget v0, p0, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;->totalEntries:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;->totalEntries:I

    iget v1, p0, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;->verifiedEntries:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisRomOriginalContentAssetProvider$Result;->mismatches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
