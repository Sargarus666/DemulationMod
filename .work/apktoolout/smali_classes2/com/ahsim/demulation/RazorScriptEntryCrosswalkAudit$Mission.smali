.class public final Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;
.super Ljava/lang/Object;
.source "RazorScriptEntryCrosswalkAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mission"
.end annotation


# instance fields
.field private final buildingByType:[I

.field public final buildings:I

.field public final extraInitialUnits:I

.field public final extraReinforcements:I

.field public final groundRecords:I

.field public final house:I

.field private final initialByType:[I

.field public final initialUnits:I

.field public final mission:I

.field private final reinforcementByType:[I

.field public final reinforcements:I

.field public final teams:I


# direct methods
.method static bridge synthetic -$$Nest$fgetbuildingByType(Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;)[I
    .locals 0

    iget-object p0, p0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->buildingByType:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinitialByType(Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;)[I
    .locals 0

    iget-object p0, p0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->initialByType:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetreinforcementByType(Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;)[I
    .locals 0

    iget-object p0, p0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->reinforcementByType:[I

    return-object p0
.end method

.method private constructor <init>(II[I[I[III)V
    .locals 2
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .param p3, "init"    # [I
    .param p4, "rein"    # [I
    .param p5, "build"    # [I
    .param p6, "teamCount"    # I
    .param p7, "ground"    # I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->house:I

    iput p2, p0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->mission:I

    .line 27
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->initialByType:[I

    invoke-virtual {p4}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->reinforcementByType:[I

    invoke-virtual {p5}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->buildingByType:[I

    .line 28
    invoke-static {p3}, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit;->-$$Nest$smsum([I)I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->initialUnits:I

    invoke-static {p4}, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit;->-$$Nest$smsum([I)I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->reinforcements:I

    invoke-static {p5}, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit;->-$$Nest$smsum([I)I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->buildings:I

    .line 29
    const/16 v0, 0x1b

    invoke-static {p3, v0}, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit;->-$$Nest$smsumFrom([II)I

    move-result v1

    iput v1, p0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->extraInitialUnits:I

    invoke-static {p4, v0}, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit;->-$$Nest$smsumFrom([II)I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->extraReinforcements:I

    .line 30
    iput p6, p0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->teams:I

    iput p7, p0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->groundRecords:I

    .line 31
    return-void
.end method

.method synthetic constructor <init>(II[I[I[IIILcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;-><init>(II[I[I[III)V

    return-void
.end method


# virtual methods
.method public buildingTypeCount(I)I
    .locals 1
    .param p1, "t"    # I

    .line 34
    iget-object v0, p0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->buildingByType:[I

    invoke-static {v0, p1}, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit;->-$$Nest$smindex([II)I

    move-result v0

    return v0
.end method

.method public hasUnmappedSourceUnits()Z
    .locals 2

    .line 35
    iget v0, p0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->extraInitialUnits:I

    iget v1, p0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->extraReinforcements:I

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initialTypeCount(I)I
    .locals 1
    .param p1, "t"    # I

    .line 32
    iget-object v0, p0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->initialByType:[I

    invoke-static {v0, p1}, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit;->-$$Nest$smindex([II)I

    move-result v0

    return v0
.end method

.method public reinforcementTypeCount(I)I
    .locals 1
    .param p1, "t"    # I

    .line 33
    iget-object v0, p0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->reinforcementByType:[I

    invoke-static {v0, p1}, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit;->-$$Nest$smindex([II)I

    move-result v0

    return v0
.end method
