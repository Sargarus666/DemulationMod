.class public final Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;
.super Ljava/lang/Object;
.source "DuneHackR82UnitDispatchProbe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private final extraRecordSha256:[Ljava/lang/String;

.field public final gameReady:Z

.field public final nativeFunctionAbiVerified:Z

.field public final scriptIdOffset:I

.field public final scriptMappingIdentified:Z

.field public final sourceSha256:Ljava/lang/String;

.field public final unitPointerTableOffset:I

.field public final unitRecordSize:I

.field public final unitRecordsOffset:I


# direct methods
.method private constructor <init>(IIILjava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "scripts"    # I
    .param p2, "table"    # I
    .param p3, "records"    # I
    .param p4, "source"    # Ljava/lang/String;
    .param p5, "recordHashes"    # [Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;->scriptMappingIdentified:Z

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;->nativeFunctionAbiVerified:Z

    .line 34
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;->gameReady:Z

    .line 38
    iput p1, p0, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;->scriptIdOffset:I

    .line 39
    iput p2, p0, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;->unitPointerTableOffset:I

    .line 40
    iput p3, p0, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;->unitRecordsOffset:I

    .line 41
    const/16 v0, 0x5c

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;->unitRecordSize:I

    .line 42
    iput-object p4, p0, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;->sourceSha256:Ljava/lang/String;

    .line 43
    invoke-virtual {p5}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;->extraRecordSha256:[Ljava/lang/String;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(IIILjava/lang/String;[Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;-><init>(IIILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public extraUnitRecordSha256(I)Ljava/lang/String;
    .locals 2
    .param p1, "unitType"    # I

    .line 56
    const/16 v0, 0x1b

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;->extraRecordSha256:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1b

    aget-object v0, v0, v1

    return-object v0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not one of the five extra R82C unit types"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scriptForUnitType(I)I
    .locals 2
    .param p1, "unitType"    # I

    .line 46
    if-ltz p1, :cond_0

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 48
    invoke-static {}, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe;->-$$Nest$sfgetSCRIPT_IDS()[I

    move-result-object v0

    aget v0, v0, p1

    return v0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "R82C unit type outside 0..31"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unitRecordOffset(I)I
    .locals 2
    .param p1, "unitType"    # I

    .line 51
    if-ltz p1, :cond_0

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 53
    iget v0, p0, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;->unitRecordsOffset:I

    mul-int/lit8 v1, p1, 0x5c

    add-int/2addr v0, v1

    return v0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "R82C unit type outside 0..31"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
