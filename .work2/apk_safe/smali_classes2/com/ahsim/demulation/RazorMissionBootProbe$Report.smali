.class public final Lcom/ahsim/demulation/RazorMissionBootProbe$Report;
.super Ljava/lang/Object;
.source "RazorMissionBootProbe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorMissionBootProbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Report"
.end annotation


# instance fields
.field public final buildingOverlaps:I

.field public final buildings:I

.field public final confirmedTerrainCells:I

.field public final emcRuntimeReady:Z

.field public final extraOwnerBuildings:I

.field public final extraOwnerUnits:I

.field public final gameplayReady:Z

.field public final gridSide:I

.field public final house:I

.field public final humanSourceSection:I

.field public final mission:I

.field public final nativeWorldBootstrapped:Z

.field public final newUnitTypes:I

.field public final originalGameplayCompatible:Z

.field public final reinforcements:I

.field public final romSha256:Ljava/lang/String;

.field public final scenarioHeight:I

.field public final scenarioWidth:I

.field public final sourceIdentityReady:Z

.field public final teams:I

.field public final terrainReadReady:Z

.field public final terrainRecords:I

.field public final uninitializedTerrainCells:I

.field public final unitOverlaps:I

.field public final units:I

.field public final variant:I


# direct methods
.method private constructor <init>(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;[I)V
    .locals 3
    .param p1, "audit"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .param p2, "source"    # Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .param p3, "snapshot"    # Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;
    .param p4, "w"    # [I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romVariant()I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->variant:I

    iget v0, p2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->house:I

    iput v0, p0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->house:I

    iget v0, p2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mission:I

    iput v0, p0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->mission:I

    .line 31
    const/4 v0, 0x4

    aget v0, p4, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->gridSide:I

    iget v0, p2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapWidth:I

    iput v0, p0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->scenarioWidth:I

    .line 32
    iget v0, p2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapHeight:I

    iput v0, p0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->scenarioHeight:I

    .line 33
    const/4 v0, 0x7

    aget v0, p4, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->units:I

    const/16 v0, 0x8

    aget v0, p4, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->buildings:I

    const/16 v0, 0x9

    aget v0, p4, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->terrainRecords:I

    .line 34
    const/16 v0, 0xa

    aget v0, p4, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->teams:I

    const/16 v0, 0xb

    aget v0, p4, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->reinforcements:I

    .line 35
    iget v0, p3, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->writtenCells:I

    iput v0, p0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->confirmedTerrainCells:I

    .line 36
    iget v0, p3, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->unknownCells:I

    iput v0, p0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->uninitializedTerrainCells:I

    .line 37
    const/16 v0, 0xe

    aget v0, p4, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->newUnitTypes:I

    const/16 v0, 0xf

    aget v0, p4, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->extraOwnerUnits:I

    const/16 v0, 0x10

    aget v0, p4, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->extraOwnerBuildings:I

    .line 38
    const/16 v0, 0x17

    aget v0, p4, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->unitOverlaps:I

    const/16 v0, 0x18

    aget v0, p4, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->buildingOverlaps:I

    const/16 v0, 0x19

    aget v0, p4, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->humanSourceSection:I

    .line 39
    invoke-virtual {p1}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romSourceSha256()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->romSha256:Ljava/lang/String;

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->nativeWorldBootstrapped:Z

    .line 41
    iget v1, p0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->uninitializedTerrainCells:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->terrainReadReady:Z

    .line 42
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->sourceIdentityReady:Z

    .line 43
    iput-boolean v2, p0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->originalGameplayCompatible:Z

    .line 44
    iput-boolean v2, p0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->emcRuntimeReady:Z

    .line 45
    iput-boolean v2, p0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->gameplayReady:Z

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;[ILcom/ahsim/demulation/RazorMissionBootProbe-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;-><init>(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;[I)V

    return-void
.end method
