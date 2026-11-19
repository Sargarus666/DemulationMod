.class public final Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;
.super Ljava/lang/Object;
.source "DuneHackR82ScenarioIdentityAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final checkedObjects:I

.field public final fifthHouseSections:I

.field public final genericStructureTiles:I

.field private final owners:[I

.field public final reinforcements:I

.field public final scenarios:I

.field private final structureTypes:[I

.field public final structures:I

.field public final teams:I

.field private final unitTypes:[I

.field public final units:I


# direct methods
.method private constructor <init>(ILcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;)V
    .locals 1
    .param p1, "scenarios"    # I
    .param p2, "totals"    # Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;->scenarios:I

    .line 56
    iget v0, p2, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->checked:I

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;->checkedObjects:I

    .line 57
    iget v0, p2, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->units:I

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;->units:I

    .line 58
    iget v0, p2, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->placed:I

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;->structures:I

    .line 59
    iget v0, p2, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->generic:I

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;->genericStructureTiles:I

    .line 60
    iget v0, p2, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->teams:I

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;->teams:I

    .line 61
    iget v0, p2, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->reinforcements:I

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;->reinforcements:I

    .line 62
    iget v0, p2, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->fifth:I

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;->fifthHouseSections:I

    .line 63
    iget-object v0, p2, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->owners:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;->owners:[I

    .line 64
    iget-object v0, p2, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->unitTypes:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;->unitTypes:[I

    .line 65
    iget-object v0, p2, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->structureTypes:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;->structureTypes:[I

    .line 66
    return-void
.end method

.method synthetic constructor <init>(ILcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;-><init>(ILcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;)V

    return-void
.end method


# virtual methods
.method public ownerCounts()[I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;->owners:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public structureTypeCounts()[I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;->structureTypes:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public unitTypeCounts()[I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;->unitTypes:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
