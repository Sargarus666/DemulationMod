.class public final Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;
.super Ljava/lang/Object;
.source "DuneHackR82cRazorMissionBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Record"
.end annotation


# instance fields
.field public final cost:I

.field public final height:I

.field public final layoutId:I

.field public final maxHp:I

.field public final powerUsage:I

.field public final productionWord:I

.field public final storage:I

.field public final tiles:I

.field public final type:I

.field public final width:I


# direct methods
.method private constructor <init>(IIIIIII)V
    .locals 2
    .param p1, "t"    # I
    .param p2, "hp"    # I
    .param p3, "c"    # I
    .param p4, "time"    # I
    .param p5, "layout"    # I
    .param p6, "power"    # I
    .param p7, "storage"    # I

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput p1, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->type:I

    iput p2, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->maxHp:I

    iput p3, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->cost:I

    iput p4, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->productionWord:I

    iput p5, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->layoutId:I

    .line 142
    invoke-static {}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->-$$Nest$sfgetWIDTH()[I

    move-result-object v0

    aget v0, v0, p5

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->width:I

    invoke-static {}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->-$$Nest$sfgetHEIGHT()[I

    move-result-object v0

    aget v0, v0, p5

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->height:I

    iget v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->width:I

    iget v1, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->height:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->tiles:I

    .line 143
    iput p6, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->powerUsage:I

    iput p7, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->storage:I

    .line 144
    return-void
.end method

.method synthetic constructor <init>(IIIIIIILcom/ahsim/demulation/DuneHackR82cRazorMissionBundle-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;-><init>(IIIIIII)V

    return-void
.end method
