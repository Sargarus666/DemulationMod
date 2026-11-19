.class public final Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
.super Ljava/lang/Object;
.source "DuneHackR82cRazorMissionBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mission"
.end annotation


# instance fields
.field public final canLaunchWithOriginalWorld:Z

.field public final house:I

.field private final map:[B

.field public final mapRomOffset:I

.field public final mapSha256:Ljava/lang/String;

.field public final mission:I

.field public final needsExpandedMapRuntime:Z

.field private final scenario:[B

.field public final scenarioMapHeight:I

.field public final scenarioMapWidth:I

.field public final scenarioRecordCount:I

.field public final scenarioRomOffset:I

.field public final scenarioSha256:Ljava/lang/String;

.field public final storedMapSide:I

.field public final structureCount:I

.field public final teamCount:I

.field public final unitCount:I


# direct methods
.method private constructor <init>(IIIIIII[B[BLcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;)V
    .locals 2
    .param p1, "h"    # I
    .param p2, "m"    # I
    .param p3, "side"    # I
    .param p4, "w"    # I
    .param p5, "height"    # I
    .param p6, "mp"    # I
    .param p7, "sp"    # I
    .param p8, "mapBytes"    # [B
    .param p9, "scenarioBytes"    # [B
    .param p10, "decoded"    # Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->canLaunchWithOriginalWorld:Z

    .line 59
    iput p1, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->house:I

    .line 60
    iput p2, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mission:I

    .line 61
    iput p3, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    .line 62
    iput p4, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapWidth:I

    .line 63
    iput p5, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapHeight:I

    .line 64
    iput p6, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mapRomOffset:I

    .line 65
    iput p7, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioRomOffset:I

    .line 66
    iget v1, p10, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->recordCount:I

    iput v1, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioRecordCount:I

    .line 67
    iget v1, p10, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->unitCount:I

    iput v1, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->unitCount:I

    .line 68
    iget v1, p10, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->structureCount:I

    iput v1, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->structureCount:I

    .line 69
    iget v1, p10, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->teamCount:I

    iput v1, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->teamCount:I

    .line 70
    const/16 v1, 0x40

    if-gt p4, v1, :cond_0

    if-gt p5, v1, :cond_0

    if-le p3, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->needsExpandedMapRuntime:Z

    .line 71
    invoke-virtual {p8}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->map:[B

    .line 72
    invoke-virtual {p9}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenario:[B

    .line 73
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->map:[B

    invoke-static {v0}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle;->-$$Nest$smdigest([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mapSha256:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenario:[B

    invoke-static {v0}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle;->-$$Nest$smdigest([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioSha256:Ljava/lang/String;

    .line 75
    return-void
.end method

.method synthetic constructor <init>(IIIIIII[B[BLcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;-><init>(IIIIIII[B[BLcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;)V

    return-void
.end method


# virtual methods
.method public mapBytes()[B
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->map:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public scenarioBytes()[B
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenario:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
