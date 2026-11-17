.class public final Lcom/ahsim/demulation/RazorNativeMissionState;
.super Ljava/lang/Object;
.source "RazorNativeMissionState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorNativeMissionState$Summary;
    }
.end annotation


# static fields
.field private static final WORDS:I = 0x15


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-string v0, "dunehost"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inspect(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;)Lcom/ahsim/demulation/RazorNativeMissionState$Summary;
    .locals 24
    .param p0, "audited"    # Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    move-object/from16 v0, p0

    if-eqz v0, :cond_f

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const/4 v1, 0x0

    .local v1, "parsed":I
    const/4 v2, 0x0

    .local v2, "expanded":I
    const/4 v3, 0x0

    .line 37
    .local v3, "fifth":I
    invoke-virtual {v0}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->allMissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    .line 38
    .local v5, "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    invoke-virtual {v5}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioBytes()[B

    move-result-object v7

    .line 39
    .local v7, "scene":[B
    nop

    .line 40
    invoke-static {v7}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder;->decode([B)Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;

    move-result-object v13

    .line 41
    .local v13, "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    invoke-virtual {v5}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mapBytes()[B

    move-result-object v6

    iget v8, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->house:I

    iget v9, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mission:I

    iget v10, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    iget v11, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapWidth:I

    iget v12, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapHeight:I

    invoke-static/range {v6 .. v12}, Lcom/ahsim/demulation/RazorNativeMissionState;->nativePrepare([B[BIIIII)[I

    move-result-object v6

    .line 43
    .local v6, "v":[I
    if-eqz v6, :cond_c

    array-length v8, v6

    const/16 v9, 0x15

    if-ne v8, v9, :cond_c

    const/4 v8, 0x1

    aget v9, v6, v8

    iget v10, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->house:I

    if-ne v9, v10, :cond_c

    const/4 v9, 0x2

    aget v10, v6, v9

    iget v11, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mission:I

    if-ne v10, v11, :cond_c

    const/4 v10, 0x3

    aget v10, v6, v10

    iget v11, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    if-ne v10, v11, :cond_c

    const/4 v10, 0x4

    aget v11, v6, v10

    iget v12, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapWidth:I

    shl-int/lit8 v12, v12, 0x10

    iget v14, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapHeight:I

    or-int/2addr v12, v14

    if-ne v11, v12, :cond_c

    const/4 v11, 0x5

    aget v11, v6, v11

    iget v12, v13, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->seed:I

    if-ne v11, v12, :cond_c

    const/16 v11, 0x8

    aget v11, v6, v11

    iget v12, v13, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->unitCount:I

    if-ne v11, v12, :cond_c

    const/16 v11, 0x9

    aget v11, v6, v11

    iget v12, v13, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->structureCount:I

    if-ne v11, v12, :cond_c

    const/16 v11, 0xa

    aget v11, v6, v11

    iget v12, v13, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->teamCount:I

    if-ne v11, v12, :cond_c

    const/16 v11, 0xb

    aget v11, v6, v11

    iget v12, v13, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->reinforcementCount:I

    if-ne v11, v12, :cond_c

    const/16 v11, 0xf

    aget v11, v6, v11

    iget v12, v13, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->recordCount:I

    if-ne v11, v12, :cond_c

    const/4 v11, 0x0

    aget v12, v6, v11

    .line 49
    iget-boolean v14, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->needsExpandedMapRuntime:Z

    if-eqz v14, :cond_0

    move v14, v9

    goto :goto_1

    :cond_0
    move v14, v8

    :goto_1
    if-ne v12, v14, :cond_c

    .line 52
    const/4 v12, 0x0

    .local v12, "markets":I
    const/4 v14, 0x0

    .local v14, "houses":I
    const/4 v15, 0x0

    .local v15, "bloom":I
    const/16 v16, 0x0

    .local v16, "fields":I
    const/16 v17, 0xff

    .line 53
    .local v17, "human":I
    const/4 v10, -0x1

    filled-new-array {v10, v10, v10}, [I

    move-result-object v10

    .line 54
    .local v10, "houseCredits":[I
    invoke-virtual {v13}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->records()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move/from16 v20, v16

    move/from16 v21, v17

    .end local v16    # "fields":I
    .end local v17    # "human":I
    .local v20, "fields":I
    .local v21, "human":I
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    const/4 v9, 0x6

    if-eqz v16, :cond_8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;

    .line 55
    .local v11, "r":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    iget v8, v11, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->section:I

    if-ne v8, v9, :cond_1

    add-int/lit8 v12, v12, 0x1

    .line 56
    :cond_1
    iget v8, v11, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->section:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    iget v8, v11, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->index:I

    const/16 v9, 0x42

    if-ne v8, v9, :cond_2

    const/4 v8, 0x0

    invoke-virtual {v11, v8}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v9

    move v15, v9

    .line 57
    :cond_2
    iget v8, v11, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->section:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    iget v8, v11, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->index:I

    const/16 v9, 0x46

    if-ne v8, v9, :cond_3

    const/4 v8, 0x0

    invoke-virtual {v11, v8}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v9

    move/from16 v20, v9

    .line 58
    :cond_3
    iget-object v8, v11, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->kind:Ljava/lang/String;

    const-string v9, "house"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 59
    add-int/lit8 v14, v14, 0x1

    .line 60
    const/4 v8, 0x2

    invoke-virtual {v11, v8}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v9

    const/16 v8, 0xff

    and-int/2addr v9, v8

    const/16 v8, 0x48

    if-ne v9, v8, :cond_5

    .line 61
    move/from16 v8, v21

    const/16 v9, 0xff

    .end local v21    # "human":I
    .local v8, "human":I
    if-ne v8, v9, :cond_4

    .line 62
    iget v8, v11, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->section:I

    move/from16 v21, v8

    goto :goto_3

    .line 61
    :cond_4
    new-instance v4, Ljava/io/IOException;

    const-string v9, "Multiple Razor player houses"

    invoke-direct {v4, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 60
    .end local v8    # "human":I
    .restart local v21    # "human":I
    :cond_5
    move/from16 v8, v21

    .line 64
    :goto_3
    iget v8, v11, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->section:I

    const/4 v9, 0x2

    if-lt v8, v9, :cond_7

    iget v8, v11, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->section:I

    move/from16 v17, v9

    const/4 v9, 0x4

    if-gt v8, v9, :cond_7

    .line 65
    iget v8, v11, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->section:I

    add-int/lit8 v8, v8, -0x2

    const/4 v9, 0x1

    invoke-virtual {v11, v9}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v23

    aput v23, v10, v8

    goto :goto_4

    .line 58
    :cond_6
    move/from16 v8, v21

    .line 67
    .end local v11    # "r":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    :cond_7
    :goto_4
    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v11, 0x0

    goto/16 :goto_2

    .line 68
    :cond_8
    move/from16 v8, v21

    .end local v21    # "human":I
    .restart local v8    # "human":I
    aget v9, v6, v9

    if-ne v9, v8, :cond_a

    const/4 v9, 0x7

    aget v9, v6, v9

    if-ne v9, v14, :cond_a

    const/16 v9, 0xc

    aget v9, v6, v9

    if-ne v9, v12, :cond_a

    const/16 v9, 0xd

    aget v9, v6, v9

    if-ne v9, v15, :cond_a

    const/16 v9, 0xe

    aget v9, v6, v9

    move/from16 v11, v20

    .end local v20    # "fields":I
    .local v11, "fields":I
    if-ne v9, v11, :cond_b

    const/16 v9, 0x12

    aget v9, v6, v9

    move-object/from16 v18, v4

    const/16 v22, 0x0

    aget v4, v10, v22

    if-ne v9, v4, :cond_b

    const/16 v4, 0x13

    aget v4, v6, v4

    const/16 v16, 0x1

    aget v9, v10, v16

    if-ne v4, v9, :cond_b

    const/16 v4, 0x14

    aget v4, v6, v4

    const/16 v17, 0x2

    aget v9, v10, v17

    if-ne v4, v9, :cond_b

    .line 73
    iget v4, v13, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->fifthHouseRecords:I

    add-int/2addr v3, v4

    .line 74
    const/16 v22, 0x0

    aget v4, v6, v22

    move/from16 v9, v17

    if-ne v4, v9, :cond_9

    add-int/lit8 v2, v2, 0x1

    .line 75
    :cond_9
    nop

    .end local v5    # "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .end local v6    # "v":[I
    .end local v7    # "scene":[B
    .end local v8    # "human":I
    .end local v10    # "houseCredits":[I
    .end local v11    # "fields":I
    .end local v12    # "markets":I
    .end local v13    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    .end local v14    # "houses":I
    .end local v15    # "bloom":I
    add-int/lit8 v1, v1, 0x1

    .line 76
    move-object/from16 v4, v18

    goto/16 :goto_0

    .line 68
    .restart local v5    # "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .restart local v6    # "v":[I
    .restart local v7    # "scene":[B
    .restart local v8    # "human":I
    .restart local v10    # "houseCredits":[I
    .restart local v12    # "markets":I
    .restart local v13    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    .restart local v14    # "houses":I
    .restart local v15    # "bloom":I
    .restart local v20    # "fields":I
    :cond_a
    move/from16 v11, v20

    .line 72
    .end local v20    # "fields":I
    .restart local v11    # "fields":I
    :cond_b
    new-instance v4, Ljava/io/IOException;

    const-string v9, "Razor initial economy/house/terrain records mismatch"

    invoke-direct {v4, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 50
    .end local v8    # "human":I
    .end local v10    # "houseCredits":[I
    .end local v11    # "fields":I
    .end local v12    # "markets":I
    .end local v14    # "houses":I
    .end local v15    # "bloom":I
    :cond_c
    new-instance v4, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Razor native initial state differs from decoded scenario: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->house:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mission:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 77
    .end local v5    # "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .end local v6    # "v":[I
    .end local v7    # "scene":[B
    .end local v13    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    :cond_d
    iget v4, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->missionsDecoded:I

    if-ne v1, v4, :cond_e

    iget v4, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->expandedMapMissions:I

    if-ne v2, v4, :cond_e

    .line 79
    new-instance v4, Lcom/ahsim/demulation/RazorNativeMissionState$Summary;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v2, v3, v5}, Lcom/ahsim/demulation/RazorNativeMissionState$Summary;-><init>(IIILcom/ahsim/demulation/RazorNativeMissionState-IA;)V

    return-object v4

    .line 78
    :cond_e
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Razor source mission count changed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 35
    .end local v1    # "parsed":I
    .end local v2    # "expanded":I
    .end local v3    # "fifth":I
    :cond_f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor mission source not in non-playable audit state"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static native nativePrepare([B[BIIIII)[I
.end method
