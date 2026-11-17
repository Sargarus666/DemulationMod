.class final Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;
.super Ljava/lang/Object;
.source "RomGraphicsMediaOverlayInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BaseComparison"
.end annotation


# instance fields
.field final details:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;",
            ">;"
        }
    .end annotation
.end field

.field final identicalPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field tacticalCandidates:I

.field tacticalIdentical:I

.field terrainCandidates:I

.field terrainIdentical:I

.field terrainScene:Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;

.field final visuallyIdenticalPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 828
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;->identicalPaths:Ljava/util/ArrayList;

    .line 829
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;->visuallyIdenticalPaths:Ljava/util/ArrayList;

    .line 830
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;->details:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;-><init>()V

    return-void
.end method


# virtual methods
.method candidateTotal()I
    .locals 2

    .line 834
    iget v0, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;->terrainCandidates:I

    iget v1, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;->tacticalCandidates:I

    add-int/2addr v0, v1

    return v0
.end method

.method identicalTotal()I
    .locals 2

    .line 835
    iget v0, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;->terrainIdentical:I

    iget v1, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;->tacticalIdentical:I

    add-int/2addr v0, v1

    return v0
.end method
