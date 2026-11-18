.class public final Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;
.super Ljava/lang/Object;
.source "RazorScriptEntryCrosswalkAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Report"
.end annotation


# instance fields
.field public final buildEntryCount:I

.field private final buildingByType:[I

.field public final buildings:I

.field public final completeObjectToScriptMapping:Z

.field public final extraInitialUnits:I

.field public final extraReinforcements:I

.field public final gameplayReady:Z

.field public final groundRecords:I

.field private final initialByType:[I

.field public final initialUnits:I

.field public final missionCount:I

.field private final missions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;",
            ">;"
        }
    .end annotation
.end field

.field public final missionsWithExtendedTypes:I

.field private final reinforcementByType:[I

.field public final reinforcements:I

.field public final teamEntryCount:I

.field public final teams:I

.field public final unitEntryCount:I

.field public final variant:I


# direct methods
.method private constructor <init>(IIIILjava/util/List;)V
    .locals 18
    .param p1, "variant"    # I
    .param p2, "uEntries"    # I
    .param p3, "bEntries"    # I
    .param p4, "tEntries"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->completeObjectToScriptMapping:Z

    .line 42
    iput-boolean v1, v0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->gameplayReady:Z

    .line 46
    move/from16 v1, p1

    iput v1, v0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->variant:I

    move/from16 v2, p2

    iput v2, v0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->unitEntryCount:I

    move/from16 v3, p3

    iput v3, v0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->buildEntryCount:I

    move/from16 v4, p4

    iput v4, v0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->teamEntryCount:I

    .line 47
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v6, p5

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->missions:Ljava/util/List;

    .line 48
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    iput v5, v0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->missionCount:I

    const/16 v5, 0x20

    new-array v7, v5, [I

    iput-object v7, v0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->initialByType:[I

    .line 49
    new-array v5, v5, [I

    iput-object v5, v0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->reinforcementByType:[I

    const/16 v5, 0x13

    new-array v5, v5, [I

    iput-object v5, v0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->buildingByType:[I

    .line 50
    const/4 v5, 0x0

    .local v5, "a":I
    const/4 v7, 0x0

    .local v7, "b":I
    const/4 v8, 0x0

    .local v8, "c":I
    const/4 v9, 0x0

    .local v9, "d":I
    const/4 v10, 0x0

    .local v10, "e":I
    const/4 v11, 0x0

    .local v11, "f":I
    const/4 v12, 0x0

    .local v12, "g":I
    const/4 v13, 0x0

    .line 51
    .local v13, "h":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;

    .line 52
    .local v15, "m":Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;
    iget v1, v15, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->initialUnits:I

    add-int/2addr v5, v1

    iget v1, v15, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->extraInitialUnits:I

    add-int/2addr v7, v1

    iget v1, v15, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->reinforcements:I

    add-int/2addr v8, v1

    .line 53
    iget v1, v15, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->extraReinforcements:I

    add-int/2addr v9, v1

    iget v1, v15, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->buildings:I

    add-int/2addr v10, v1

    iget v1, v15, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->teams:I

    add-int/2addr v11, v1

    iget v1, v15, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->groundRecords:I

    add-int/2addr v12, v1

    .line 54
    invoke-virtual {v15}, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->hasUnmappedSourceUnits()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v13, v13, 0x1

    .line 55
    :cond_0
    const/4 v1, 0x0

    .local v1, "t":I
    :goto_1
    iget-object v2, v0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->initialByType:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 56
    iget-object v2, v0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->initialByType:[I

    aget v16, v2, v1

    invoke-static {v15}, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->-$$Nest$fgetinitialByType(Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;)[I

    move-result-object v17

    aget v17, v17, v1

    add-int v16, v16, v17

    aput v16, v2, v1

    .line 57
    iget-object v2, v0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->reinforcementByType:[I

    aget v16, v2, v1

    invoke-static {v15}, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->-$$Nest$fgetreinforcementByType(Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;)[I

    move-result-object v17

    aget v17, v17, v1

    add-int v16, v16, v17

    aput v16, v2, v1

    .line 55
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, p2

    goto :goto_1

    .line 59
    .end local v1    # "t":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "t":I
    :goto_2
    iget-object v2, v0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->buildingByType:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, v0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->buildingByType:[I

    aget v16, v2, v1

    invoke-static {v15}, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->-$$Nest$fgetbuildingByType(Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;)[I

    move-result-object v17

    aget v17, v17, v1

    add-int v16, v16, v17

    aput v16, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 60
    .end local v1    # "t":I
    .end local v15    # "m":Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;
    :cond_2
    move/from16 v1, p1

    move/from16 v2, p2

    goto :goto_0

    .line 61
    :cond_3
    iput v5, v0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->initialUnits:I

    iput v7, v0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->extraInitialUnits:I

    iput v8, v0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->reinforcements:I

    iput v9, v0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->extraReinforcements:I

    .line 62
    iput v10, v0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->buildings:I

    iput v11, v0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->teams:I

    iput v12, v0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->groundRecords:I

    iput v13, v0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->missionsWithExtendedTypes:I

    .line 63
    return-void
.end method

.method synthetic constructor <init>(IIIILjava/util/List;Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;-><init>(IIIILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public buildingTypeCount(I)I
    .locals 1
    .param p1, "t"    # I

    .line 67
    iget-object v0, p0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->buildingByType:[I

    invoke-static {v0, p1}, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit;->-$$Nest$smindex([II)I

    move-result v0

    return v0
.end method

.method public hasUnitOrdrIndex(I)Z
    .locals 1
    .param p1, "sourceType"    # I

    .line 70
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->unitEntryCount:I

    if-ge p1, v0, :cond_0

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

    .line 65
    iget-object v0, p0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->initialByType:[I

    invoke-static {v0, p1}, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit;->-$$Nest$smindex([II)I

    move-result v0

    return v0
.end method

.method public missions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->missions:Ljava/util/List;

    return-object v0
.end method

.method public originalUnitDispatchVerified()Z
    .locals 1

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public reinforcementTypeCount(I)I
    .locals 1
    .param p1, "t"    # I

    .line 66
    iget-object v0, p0, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->reinforcementByType:[I

    invoke-static {v0, p1}, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit;->-$$Nest$smindex([II)I

    move-result v0

    return v0
.end method

.method public teamScriptBindingVerified()Z
    .locals 1

    .line 73
    const/4 v0, 0x0

    return v0
.end method
