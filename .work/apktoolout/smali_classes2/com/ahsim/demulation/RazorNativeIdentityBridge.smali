.class public final Lcom/ahsim/demulation/RazorNativeIdentityBridge;
.super Ljava/lang/Object;
.source "RazorNativeIdentityBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorNativeIdentityBridge$Summary;
    }
.end annotation


# static fields
.field private static final WORDS:I = 0x16


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-string v0, "dunehost"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inspect(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;)Lcom/ahsim/demulation/RazorNativeIdentityBridge$Summary;
    .locals 28
    .param p0, "audited"    # Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    move-object/from16 v0, p0

    if-eqz v0, :cond_11

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const/4 v1, 0x0

    .local v1, "scenarios":I
    const/4 v2, 0x0

    .local v2, "units":I
    const/4 v3, 0x0

    .local v3, "structures":I
    const/4 v4, 0x0

    .line 36
    .local v4, "ground":I
    const/4 v5, 0x0

    .local v5, "extended":I
    const/4 v6, 0x0

    .local v6, "newHouseUnits":I
    const/4 v7, 0x0

    .line 37
    .local v7, "expanded":I
    invoke-virtual {v0}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->allMissions()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    .end local v1    # "scenarios":I
    .end local v2    # "units":I
    .end local v3    # "structures":I
    .end local v4    # "ground":I
    .end local v5    # "extended":I
    .end local v6    # "newHouseUnits":I
    .local v10, "scenarios":I
    .local v11, "units":I
    .local v12, "structures":I
    .local v13, "ground":I
    .local v14, "extended":I
    .local v15, "newHouseUnits":I
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    .line 38
    .local v1, "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    invoke-virtual {v1}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioBytes()[B

    move-result-object v17

    .line 39
    .local v17, "scenario":[B
    nop

    .line 40
    invoke-static/range {v17 .. v17}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder;->decode([B)Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;

    move-result-object v2

    .line 41
    .local v2, "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    invoke-static {v2}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->auditDocument(Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;)Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;

    .line 42
    invoke-virtual {v1}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mapBytes()[B

    move-result-object v16

    iget v3, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->house:I

    iget v4, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mission:I

    iget v5, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    iget v6, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapWidth:I

    iget v9, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapHeight:I

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v9

    invoke-static/range {v16 .. v22}, Lcom/ahsim/demulation/RazorNativeIdentityBridge;->nativeAudit([B[BIIIII)[I

    move-result-object v3

    .line 44
    .local v3, "v":[I
    if-eqz v3, :cond_e

    array-length v4, v3

    const/16 v5, 0x16

    if-ne v4, v5, :cond_e

    const/4 v4, 0x0

    aget v5, v3, v4

    iget-boolean v6, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->needsExpandedMapRuntime:Z

    const/16 v16, 0x2

    const/4 v9, 0x1

    if-eqz v6, :cond_0

    move/from16 v6, v16

    goto :goto_1

    :cond_0
    move v6, v9

    :goto_1
    if-ne v5, v6, :cond_e

    aget v5, v3, v9

    iget v6, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->house:I

    if-ne v5, v6, :cond_e

    aget v5, v3, v16

    iget v6, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mission:I

    if-ne v5, v6, :cond_e

    const/4 v5, 0x3

    aget v6, v3, v5

    .line 46
    iget v5, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    const/16 v4, 0x80

    if-ne v5, v4, :cond_1

    goto :goto_2

    :cond_1
    const/16 v4, 0x40

    :goto_2
    if-ne v6, v4, :cond_d

    const/4 v4, 0x4

    aget v4, v3, v4

    iget v5, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapWidth:I

    shl-int/lit8 v5, v5, 0x10

    iget v6, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapHeight:I

    or-int/2addr v5, v6

    if-ne v4, v5, :cond_d

    const/4 v4, 0x5

    aget v4, v3, v4

    iget v5, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    if-ne v4, v5, :cond_d

    const/4 v4, 0x6

    aget v5, v3, v4

    iget v6, v2, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->unitCount:I

    if-ne v5, v6, :cond_d

    const/4 v5, 0x7

    aget v6, v3, v5

    move/from16 v20, v4

    const/16 v4, 0x8

    aget v21, v3, v4

    add-int v6, v6, v21

    move/from16 v21, v5

    iget v5, v2, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->structureCount:I

    if-ne v6, v5, :cond_d

    const/16 v5, 0x9

    aget v6, v3, v5

    iget v9, v2, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->teamCount:I

    if-ne v6, v9, :cond_d

    const/16 v6, 0xa

    aget v6, v3, v6

    iget v9, v2, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->reinforcementCount:I

    if-ne v6, v9, :cond_d

    const/16 v6, 0xb

    aget v6, v3, v6

    if-ltz v6, :cond_d

    const/16 v6, 0xc

    aget v6, v3, v6

    .line 51
    iget v9, v2, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->fifthHouseRecords:I

    if-lez v9, :cond_2

    const/4 v9, 0x1

    goto :goto_3

    :cond_2
    const/4 v9, 0x0

    :goto_3
    if-ne v6, v9, :cond_c

    const/16 v6, 0x14

    aget v9, v3, v6

    if-ltz v9, :cond_c

    aget v6, v3, v6

    const/16 v9, 0xff

    if-gt v6, v9, :cond_c

    const/16 v6, 0x15

    aget v6, v3, v6

    if-nez v6, :cond_c

    .line 56
    const/4 v6, 0x0

    .local v6, "placed":I
    const/4 v9, 0x0

    .local v9, "groundRecords":I
    const/16 v23, 0x0

    .local v23, "specialUnits":I
    const/16 v24, 0x0

    .line 57
    .local v24, "newOwners":I
    invoke-virtual {v2}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->records()Ljava/util/List;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    move/from16 v26, v23

    move/from16 v27, v24

    .end local v23    # "specialUnits":I
    .end local v24    # "newOwners":I
    .local v26, "specialUnits":I
    .local v27, "newOwners":I
    :goto_4
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_9

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v4, v23

    check-cast v4, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;

    .line 58
    .local v4, "record":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    move-object/from16 v23, v2

    .end local v2    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    .local v23, "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    iget v2, v4, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->section:I

    if-ne v2, v5, :cond_5

    .line 59
    iget v2, v4, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->index:I

    const/16 v5, 0x49

    if-ne v2, v5, :cond_3

    add-int/lit8 v6, v6, 0x1

    .line 60
    :cond_3
    iget v2, v4, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->index:I

    const/16 v5, 0x47

    if-ne v2, v5, :cond_4

    add-int/lit8 v9, v9, 0x1

    :cond_4
    const/16 v18, 0x3

    goto :goto_6

    .line 61
    :cond_5
    iget v2, v4, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->section:I

    const/16 v5, 0x8

    if-ne v2, v5, :cond_8

    .line 62
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v5

    const/16 v2, 0x1b

    if-lt v5, v2, :cond_6

    move/from16 v2, v26

    .end local v26    # "specialUnits":I
    .local v2, "specialUnits":I
    add-int/lit8 v26, v2, 0x1

    .end local v2    # "specialUnits":I
    .restart local v26    # "specialUnits":I
    goto :goto_5

    :cond_6
    move/from16 v2, v26

    .line 63
    :goto_5
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v5

    const/4 v2, 0x3

    if-lt v5, v2, :cond_7

    move/from16 v5, v27

    .end local v27    # "newOwners":I
    .local v5, "newOwners":I
    add-int/lit8 v27, v5, 0x1

    move/from16 v18, v2

    .end local v5    # "newOwners":I
    .restart local v27    # "newOwners":I
    goto :goto_6

    :cond_7
    move/from16 v5, v27

    .end local v27    # "newOwners":I
    .restart local v5    # "newOwners":I
    move/from16 v18, v2

    goto :goto_6

    .line 61
    .end local v5    # "newOwners":I
    .restart local v27    # "newOwners":I
    :cond_8
    move/from16 v2, v26

    move/from16 v5, v27

    const/16 v18, 0x3

    .line 65
    .end local v4    # "record":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    :goto_6
    move-object/from16 v2, v23

    const/16 v4, 0x8

    const/16 v5, 0x9

    goto :goto_4

    .line 66
    .end local v23    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    .local v2, "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    :cond_9
    move-object/from16 v23, v2

    move/from16 v2, v26

    move/from16 v5, v27

    .end local v26    # "specialUnits":I
    .end local v27    # "newOwners":I
    .local v2, "specialUnits":I
    .restart local v5    # "newOwners":I
    .restart local v23    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    aget v4, v3, v21

    if-ne v4, v6, :cond_b

    const/16 v24, 0x8

    aget v4, v3, v24

    if-ne v4, v9, :cond_b

    const/16 v18, 0xd

    aget v4, v3, v18

    if-ne v4, v2, :cond_b

    const/16 v22, 0xe

    aget v4, v3, v22

    if-ne v4, v5, :cond_b

    .line 69
    add-int/lit8 v10, v10, 0x1

    aget v4, v3, v20

    add-int/2addr v11, v4

    aget v4, v3, v21

    add-int/2addr v12, v4

    const/16 v24, 0x8

    aget v4, v3, v24

    add-int/2addr v13, v4

    .line 70
    aget v4, v3, v18

    add-int/2addr v14, v4

    aget v4, v3, v22

    add-int/2addr v15, v4

    .line 71
    const/16 v19, 0x0

    aget v4, v3, v19

    move/from16 v18, v2

    move/from16 v2, v16

    .end local v2    # "specialUnits":I
    .local v18, "specialUnits":I
    if-ne v4, v2, :cond_a

    add-int/lit8 v7, v7, 0x1

    .line 72
    .end local v1    # "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .end local v3    # "v":[I
    .end local v5    # "newOwners":I
    .end local v6    # "placed":I
    .end local v9    # "groundRecords":I
    .end local v17    # "scenario":[B
    .end local v18    # "specialUnits":I
    .end local v23    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    :cond_a
    goto/16 :goto_0

    .line 66
    .restart local v1    # "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .restart local v2    # "specialUnits":I
    .restart local v3    # "v":[I
    .restart local v5    # "newOwners":I
    .restart local v6    # "placed":I
    .restart local v9    # "groundRecords":I
    .restart local v17    # "scenario":[B
    .restart local v23    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    :cond_b
    move/from16 v18, v2

    .line 68
    .end local v2    # "specialUnits":I
    .restart local v18    # "specialUnits":I
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Razor type/house identity diverged"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    .end local v5    # "newOwners":I
    .end local v6    # "placed":I
    .end local v9    # "groundRecords":I
    .end local v18    # "specialUnits":I
    .end local v23    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    .local v2, "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    :cond_c
    move-object/from16 v23, v2

    .end local v2    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    .restart local v23    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    goto :goto_7

    .line 46
    .end local v23    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    .restart local v2    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    :cond_d
    move-object/from16 v23, v2

    .end local v2    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    .restart local v23    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    goto :goto_7

    .line 44
    .end local v23    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    .restart local v2    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    :cond_e
    move-object/from16 v23, v2

    .line 53
    .end local v2    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    .restart local v23    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    :goto_7
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Razor native identity mismatch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->house:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mission:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    .end local v1    # "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .end local v3    # "v":[I
    .end local v17    # "scenario":[B
    .end local v23    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    :cond_f
    iget v1, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->missionsDecoded:I

    if-ne v10, v1, :cond_10

    iget v1, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->expandedMapMissions:I

    if-ne v7, v1, :cond_10

    .line 75
    new-instance v9, Lcom/ahsim/demulation/RazorNativeIdentityBridge$Summary;

    const/16 v17, 0x0

    move/from16 v16, v7

    .end local v7    # "expanded":I
    .local v16, "expanded":I
    invoke-direct/range {v9 .. v17}, Lcom/ahsim/demulation/RazorNativeIdentityBridge$Summary;-><init>(IIIIIIILcom/ahsim/demulation/RazorNativeIdentityBridge-IA;)V

    return-object v9

    .line 73
    .end local v16    # "expanded":I
    .restart local v7    # "expanded":I
    :cond_10
    move/from16 v16, v7

    .line 74
    .end local v7    # "expanded":I
    .restart local v16    # "expanded":I
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor identity scan mission count mismatch"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    .end local v10    # "scenarios":I
    .end local v11    # "units":I
    .end local v12    # "structures":I
    .end local v13    # "ground":I
    .end local v14    # "extended":I
    .end local v15    # "newHouseUnits":I
    .end local v16    # "expanded":I
    :cond_11
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Untrusted Razor mission source"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static native nativeAudit([B[BIIIII)[I
.end method
