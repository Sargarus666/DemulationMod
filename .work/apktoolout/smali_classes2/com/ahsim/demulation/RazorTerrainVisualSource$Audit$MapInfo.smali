.class public final Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
.super Ljava/lang/Object;
.source "RazorTerrainVisualSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapInfo"
.end annotation


# instance fields
.field public final centeredCompact:Z

.field public final loadedHeight:I

.field public final loadedStartX:I

.field public final loadedStartY:I

.field public final loadedWidth:I

.field public final requiresGenerator:Z

.field public final scenarioHeight:I

.field public final scenarioWidth:I

.field public final storedSide:I


# direct methods
.method private constructor <init>(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;)V
    .locals 4
    .param p1, "m"    # Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iget v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->storedSide:I

    .line 152
    iget v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapWidth:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->scenarioWidth:I

    .line 153
    iget v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapHeight:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->scenarioHeight:I

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->requiresGenerator:Z

    .line 155
    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->storedSide:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->centeredCompact:Z

    .line 156
    iget-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->centeredCompact:Z

    const/16 v3, 0x10

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput v1, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedStartX:I

    .line 157
    iget-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->centeredCompact:Z

    if-eqz v1, :cond_2

    move v0, v3

    :cond_2
    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedStartY:I

    .line 158
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->centeredCompact:Z

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->storedSide:I

    :goto_2
    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedWidth:I

    .line 159
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->centeredCompact:Z

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->storedSide:I

    :goto_3
    iput v2, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedHeight:I

    .line 160
    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;Lcom/ahsim/demulation/RazorTerrainVisualSource-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;-><init>(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;)V

    return-void
.end method
