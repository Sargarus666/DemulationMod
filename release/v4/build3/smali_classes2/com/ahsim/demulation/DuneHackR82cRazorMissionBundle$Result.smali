.class public final Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
.super Ljava/lang/Object;
.source "DuneHackR82cRazorMissionBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final buildingData572:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;

.field public final expandedMapMissions:I

.field public final extendedUnitAndHouseAbiReady:Z

.field public final gameplayReady:Z

.field private final missions:[[Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

.field public final missionsDecoded:I

.field public final nativeEmcReady:Z

.field public final nativeTerrainReaderReady:Z

.field public final sourceSha256:Ljava/lang/String;

.field private final terrainLookup561:[B

.field public final unsupportedScenarioSlots:I

.field public final variant:I


# direct methods
.method private constructor <init>(ILjava/lang/String;[[Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;II[BLcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;)V
    .locals 1
    .param p1, "variant"    # I
    .param p2, "sha"    # Ljava/lang/String;
    .param p3, "missions"    # [[Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .param p4, "expanded"    # I
    .param p5, "valid"    # I
    .param p6, "lookup"    # [B
    .param p7, "buildingData"    # Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->gameplayReady:Z

    .line 87
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->nativeTerrainReaderReady:Z

    .line 88
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->nativeEmcReady:Z

    .line 89
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->extendedUnitAndHouseAbiReady:Z

    .line 95
    iput-object p7, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->buildingData572:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;

    .line 96
    invoke-virtual {p6}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->terrainLookup561:[B

    .line 97
    iput p1, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->variant:I

    .line 98
    iput-object p2, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->sourceSha256:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->missions:[[Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    .line 100
    iput p5, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->missionsDecoded:I

    .line 101
    iput p4, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->expandedMapMissions:I

    .line 102
    rsub-int/lit8 v0, p5, 0x2d

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->unsupportedScenarioSlots:I

    .line 103
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;[[Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;II[BLcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;-><init>(ILjava/lang/String;[[Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;II[BLcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;)V

    return-void
.end method


# virtual methods
.method public allMissions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x2d

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;>;"
    const/4 v1, 0x0

    .local v1, "h":I
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    .local v2, "m":I
    :goto_1
    const/16 v3, 0x9

    if-ge v2, v3, :cond_1

    .line 117
    iget-object v3, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->missions:[[Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->missions:[[Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "m":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "h":I
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public mission(II)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .locals 3
    .param p1, "house"    # I
    .param p2, "number"    # I

    .line 108
    if-ltz p1, :cond_1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    const/16 v0, 0x9

    if-gt p2, v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->missions:[[Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    aget-object v0, v0, p1

    add-int/lit8 v1, p2, -0x1

    aget-object v0, v0, v1

    .line 111
    .local v0, "entry":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    if-eqz v0, :cond_0

    .line 112
    return-object v0

    .line 111
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Razor scenario slot has not passed decoder validation"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    .end local v0    # "entry":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Razor house/mission"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public terrainLookup561()[B
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->terrainLookup561:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
