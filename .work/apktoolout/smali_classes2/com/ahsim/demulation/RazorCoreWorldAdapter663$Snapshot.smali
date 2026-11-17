.class public final Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
.super Ljava/lang/Object;
.source "RazorCoreWorldAdapter663.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorCoreWorldAdapter663;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Snapshot"
.end annotation


# instance fields
.field public final buildingCount:I

.field public final buildings:[Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;

.field public final classicCoreExecutionReady:Z

.field public final height:I

.field public final house:I

.field public final mission:I

.field public final objectDigest:J

.field public final originalWorldSizeCompatible:Z

.field public final schema:I

.field public final unitCount:I

.field public final units:[Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;

.field public final width:I


# direct methods
.method private constructor <init>(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;[Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;[Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;J)V
    .locals 3
    .param p1, "missionData"    # Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .param p2, "source"    # Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .param p3, "units"    # [Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;
    .param p4, "buildings"    # [Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;
    .param p5, "digest"    # J

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x297

    iput v0, p0, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;->schema:I

    iget v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->house:I

    iput v0, p0, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;->house:I

    iget v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mission:I

    iput v0, p0, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;->mission:I

    .line 37
    iget v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapWidth:I

    iput v0, p0, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;->width:I

    iget v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapHeight:I

    iput v0, p0, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;->height:I

    .line 38
    array-length v0, p3

    iput v0, p0, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;->unitCount:I

    array-length v0, p4

    iput v0, p0, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;->buildingCount:I

    .line 39
    iget v0, p0, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;->width:I

    const/4 v1, 0x0

    const/16 v2, 0x40

    if-gt v0, v2, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;->height:I

    if-gt v0, v2, :cond_0

    iget v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    if-gt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;->originalWorldSizeCompatible:Z

    .line 43
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;->classicCoreExecutionReady:Z

    .line 44
    invoke-virtual {p3}, [Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;

    iput-object v0, p0, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;->units:[Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;

    invoke-virtual {p4}, [Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;

    iput-object v0, p0, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;->buildings:[Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;

    iput-wide p5, p0, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;->objectDigest:J

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;[Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;[Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;JLcom/ahsim/demulation/RazorCoreWorldAdapter663-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;-><init>(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;[Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;[Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;J)V

    return-void
.end method
