.class public final Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;
.super Ljava/lang/Object;
.source "RazorUnitScriptDispatchAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Evidence"
.end annotation


# instance fields
.field public final extendedInitialUnits:I

.field public final extendedReinforcements:I

.field public final initialObjectScriptBootstrapVerified:Z

.field public final initialUnits:I

.field private final mapping:[B

.field public final missions:I

.field public final originalUnitActionReloadPathVerified:Z

.field public final reinforcements:I

.field public final remappedInitialUnits:I

.field public final remappedReinforcements:I

.field public final runtimeTickAuthorized:Z

.field public final variant:I


# direct methods
.method private constructor <init>(Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;[B)V
    .locals 4
    .param p1, "source"    # Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;
    .param p2, "table"    # [B

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;->originalUnitActionReloadPathVerified:Z

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;->initialObjectScriptBootstrapVerified:Z

    .line 30
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;->runtimeTickAuthorized:Z

    .line 34
    iget v0, p1, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->variant:I

    iput v0, p0, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;->variant:I

    iget v0, p1, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->missionCount:I

    iput v0, p0, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;->missions:I

    .line 35
    iget v0, p1, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->initialUnits:I

    iput v0, p0, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;->initialUnits:I

    iget v0, p1, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->reinforcements:I

    iput v0, p0, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;->reinforcements:I

    .line 36
    iget v0, p1, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->extraInitialUnits:I

    iput v0, p0, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;->extendedInitialUnits:I

    .line 37
    iget v0, p1, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->extraReinforcements:I

    iput v0, p0, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;->extendedReinforcements:I

    .line 38
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;->mapping:[B

    .line 39
    const/4 v0, 0x0

    .local v0, "init":I
    const/4 v1, 0x0

    .line 40
    .local v1, "rein":I
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    .line 41
    iget-object v3, p0, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;->mapping:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    if-eq v3, v2, :cond_0

    .line 42
    invoke-virtual {p1, v2}, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->initialTypeCount(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 43
    invoke-virtual {p1, v2}, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->reinforcementTypeCount(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 40
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    .end local v2    # "t":I
    :cond_1
    iput v0, p0, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;->remappedInitialUnits:I

    iput v1, p0, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;->remappedReinforcements:I

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;[BLcom/ahsim/demulation/RazorUnitScriptDispatchAudit-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;-><init>(Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;[B)V

    return-void
.end method


# virtual methods
.method public copyMappings()[I
    .locals 4

    .line 55
    const/16 v0, 0x20

    new-array v1, v0, [I

    .line 56
    .local v1, "out":[I
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;->unitScriptIndex(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v2    # "t":I
    :cond_0
    return-object v1
.end method

.method public unitScriptIndex(I)I
    .locals 2
    .param p1, "sourceType"    # I

    .line 50
    if-ltz p1, :cond_0

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;->mapping:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Razor source unit type outside verified 0..31 domain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
