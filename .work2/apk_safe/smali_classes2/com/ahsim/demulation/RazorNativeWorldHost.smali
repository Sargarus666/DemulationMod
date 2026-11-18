.class public final Lcom/ahsim/demulation/RazorNativeWorldHost;
.super Ljava/lang/Object;
.source "RazorNativeWorldHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;
    }
.end annotation


# static fields
.field private static final WORDS:I = 0x1a


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-string v0, "dunehost"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bootstrapMissionForProbe(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;)[I
    .locals 7
    .param p0, "m"    # Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    if-eqz p0, :cond_2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {p0}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mapBytes()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioBytes()[B

    move-result-object v1

    iget v2, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->house:I

    iget v3, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mission:I

    iget v4, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    iget v5, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapWidth:I

    iget v6, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapHeight:I

    invoke-static/range {v0 .. v6}, Lcom/ahsim/demulation/RazorNativeWorldHost;->nativeBootstrapAudit([B[BIIIII)[I

    move-result-object v0

    .line 35
    .local v0, "values":[I
    if-eqz v0, :cond_1

    array-length v1, v0

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    aget v1, v0, v2

    if-nez v1, :cond_1

    const/4 v1, 0x2

    aget v1, v0, v1

    iget v2, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->house:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    aget v1, v0, v1

    iget v2, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mission:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x4

    aget v2, v0, v1

    .line 37
    iget v3, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    const/16 v4, 0x80

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x40

    :goto_0
    if-ne v2, v4, :cond_1

    const/4 v2, 0x5

    aget v2, v0, v2

    iget v3, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    if-ne v2, v3, :cond_1

    const/4 v2, 0x6

    aget v2, v0, v2

    iget v3, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapWidth:I

    shl-int/lit8 v3, v3, 0x10

    iget v4, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapHeight:I

    or-int/2addr v3, v4

    if-ne v2, v3, :cond_1

    const/4 v2, 0x7

    aget v2, v0, v2

    iget v3, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->unitCount:I

    if-ne v2, v3, :cond_1

    const/16 v2, 0x8

    aget v2, v0, v2

    const/16 v3, 0x9

    aget v3, v0, v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->structureCount:I

    if-ne v2, v3, :cond_1

    const/16 v2, 0xa

    aget v2, v0, v2

    iget v3, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->teamCount:I

    if-ne v2, v3, :cond_1

    const/16 v2, 0x12

    aget v3, v0, v2

    iget v4, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    iget v5, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    mul-int/2addr v4, v5

    if-ne v3, v4, :cond_1

    const/16 v3, 0x13

    aget v3, v0, v3

    aget v4, v0, v1

    aget v1, v0, v1

    mul-int/2addr v4, v1

    aget v1, v0, v2

    sub-int/2addr v4, v1

    if-ne v3, v4, :cond_1

    .line 44
    return-object v0

    .line 43
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor isolated boot differs from signed mission"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    .end local v0    # "values":[I
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsafe Razor boot mission"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inspect(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;)Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;
    .locals 34
    .param p0, "audited"    # Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    move-object/from16 v0, p0

    if-eqz v0, :cond_b

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const/4 v1, 0x0

    .local v1, "missions":I
    const/4 v2, 0x0

    .local v2, "units":I
    const/4 v3, 0x0

    .local v3, "buildings":I
    const/4 v4, 0x0

    .local v4, "ground":I
    const/4 v5, 0x0

    .local v5, "extra":I
    const/4 v6, 0x0

    .local v6, "expanded":I
    const/4 v7, 0x0

    .line 53
    .local v7, "pending":I
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

    move/from16 v16, v7

    .end local v1    # "missions":I
    .end local v2    # "units":I
    .end local v3    # "buildings":I
    .end local v4    # "ground":I
    .end local v5    # "extra":I
    .end local v6    # "expanded":I
    .end local v7    # "pending":I
    .local v10, "missions":I
    .local v11, "units":I
    .local v12, "buildings":I
    .local v13, "ground":I
    .local v14, "extra":I
    .local v15, "expanded":I
    .local v16, "pending":I
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    .line 54
    .local v1, "mission":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    invoke-virtual {v1}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioBytes()[B

    move-result-object v18

    .line 55
    .local v18, "scene":[B
    nop

    .line 56
    invoke-static/range {v18 .. v18}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder;->decode([B)Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;

    move-result-object v2

    .line 57
    .local v2, "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    invoke-static {v2}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->auditDocument(Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;)Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;

    .line 58
    invoke-virtual {v1}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mapBytes()[B

    move-result-object v17

    iget v3, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->house:I

    iget v4, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mission:I

    iget v5, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    iget v6, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapWidth:I

    iget v7, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapHeight:I

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    invoke-static/range {v17 .. v23}, Lcom/ahsim/demulation/RazorNativeWorldHost;->nativeBootstrapAudit([B[BIIIII)[I

    move-result-object v3

    .line 61
    .local v3, "v":[I
    iget v4, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    const/16 v5, 0x80

    if-ne v4, v5, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    const/16 v4, 0x40

    .line 62
    .local v4, "stride":I
    :goto_1
    if-eqz v3, :cond_8

    array-length v6, v3

    const/16 v7, 0x1a

    if-ne v6, v7, :cond_8

    const/4 v6, 0x0

    aget v7, v3, v6

    const/4 v9, 0x1

    if-ne v7, v9, :cond_8

    aget v7, v3, v9

    if-nez v7, :cond_8

    const/4 v7, 0x2

    aget v7, v3, v7

    iget v5, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->house:I

    if-ne v7, v5, :cond_8

    const/4 v5, 0x3

    aget v7, v3, v5

    iget v5, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mission:I

    if-ne v7, v5, :cond_8

    const/4 v5, 0x4

    aget v7, v3, v5

    if-ne v7, v4, :cond_8

    const/4 v7, 0x5

    move/from16 v20, v5

    aget v5, v3, v7

    iget v6, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    if-ne v5, v6, :cond_8

    const/4 v5, 0x6

    aget v5, v3, v5

    iget v6, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapWidth:I

    const/16 v22, 0x10

    shl-int/lit8 v6, v6, 0x10

    iget v9, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapHeight:I

    or-int/2addr v6, v9

    if-ne v5, v6, :cond_8

    const/4 v5, 0x7

    aget v6, v3, v5

    iget v9, v2, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->unitCount:I

    if-ne v6, v9, :cond_8

    const/16 v6, 0x8

    aget v9, v3, v6

    move/from16 v24, v5

    const/16 v5, 0x9

    aget v25, v3, v5

    add-int v9, v9, v25

    iget v5, v2, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->structureCount:I

    if-ne v9, v5, :cond_8

    const/16 v5, 0xa

    aget v5, v3, v5

    iget v9, v2, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->teamCount:I

    if-ne v5, v9, :cond_8

    const/16 v5, 0x12

    aget v9, v3, v5

    move/from16 v26, v5

    iget v5, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    iget v6, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    mul-int/2addr v5, v6

    if-ne v9, v5, :cond_8

    const/16 v5, 0x13

    aget v6, v3, v5

    mul-int v9, v4, v4

    aget v26, v3, v26

    sub-int v9, v9, v26

    if-ne v6, v9, :cond_8

    const/16 v6, 0x11

    aget v6, v3, v6

    if-gt v6, v7, :cond_8

    const/16 v6, 0x19

    aget v7, v3, v6

    if-ltz v7, :cond_8

    aget v6, v3, v6

    const/16 v7, 0xff

    if-gt v6, v7, :cond_8

    .line 71
    const/4 v6, 0x0

    .local v6, "extraUnits":I
    const/4 v7, 0x0

    .local v7, "ownerUnits":I
    const/4 v9, 0x0

    .local v9, "ownerStructures":I
    const/16 v26, 0x0

    .local v26, "buildingsHere":I
    const/16 v28, 0x0

    .line 72
    .local v28, "groundHere":I
    invoke-virtual {v2}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->records()Ljava/util/List;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    move/from16 v33, v28

    move-object/from16 v28, v2

    move/from16 v2, v33

    move/from16 v33, v26

    move/from16 v26, v5

    move/from16 v5, v33

    .end local v26    # "buildingsHere":I
    .local v2, "groundHere":I
    .local v5, "buildingsHere":I
    .local v28, "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    :goto_2
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_5

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v31, v3

    .end local v3    # "v":[I
    .local v31, "v":[I
    move-object/from16 v3, v30

    check-cast v3, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;

    .line 73
    .local v3, "r":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    move/from16 v30, v4

    .end local v4    # "stride":I
    .local v30, "stride":I
    iget v4, v3, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->section:I

    move-object/from16 v32, v8

    const/16 v8, 0x8

    if-ne v4, v8, :cond_2

    .line 74
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v8

    const/16 v4, 0x1b

    if-lt v8, v4, :cond_1

    add-int/lit8 v6, v6, 0x1

    .line 75
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v8

    const/4 v4, 0x3

    if-lt v8, v4, :cond_4

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 76
    :cond_2
    iget v4, v3, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->section:I

    const/16 v8, 0x9

    if-ne v4, v8, :cond_4

    .line 77
    iget v4, v3, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->index:I

    const/16 v8, 0x49

    if-ne v4, v8, :cond_3

    .line 78
    add-int/lit8 v5, v5, 0x1

    .line 79
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v8

    const/4 v4, 0x3

    if-lt v8, v4, :cond_4

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 80
    :cond_3
    const/4 v4, 0x3

    iget v8, v3, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->index:I

    const/16 v4, 0x47

    if-ne v8, v4, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 82
    .end local v3    # "r":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    :cond_4
    :goto_3
    move/from16 v4, v30

    move-object/from16 v3, v31

    move-object/from16 v8, v32

    goto :goto_2

    .line 83
    .end local v30    # "stride":I
    .end local v31    # "v":[I
    .local v3, "v":[I
    .restart local v4    # "stride":I
    :cond_5
    move-object/from16 v31, v3

    move/from16 v30, v4

    move-object/from16 v32, v8

    .end local v3    # "v":[I
    .end local v4    # "stride":I
    .restart local v30    # "stride":I
    .restart local v31    # "v":[I
    const/16 v27, 0x8

    aget v3, v31, v27

    if-ne v3, v5, :cond_7

    const/16 v25, 0x9

    aget v3, v31, v25

    if-ne v3, v2, :cond_7

    const/16 v3, 0xe

    aget v4, v31, v3

    if-ne v4, v6, :cond_7

    const/16 v4, 0xf

    aget v4, v31, v4

    if-ne v4, v7, :cond_7

    aget v4, v31, v22

    if-ne v4, v9, :cond_7

    .line 86
    add-int/lit8 v10, v10, 0x1

    aget v4, v31, v24

    add-int/2addr v11, v4

    const/16 v27, 0x8

    aget v4, v31, v27

    add-int/2addr v12, v4

    const/16 v25, 0x9

    aget v4, v31, v25

    add-int/2addr v13, v4

    aget v3, v31, v3

    add-int/2addr v14, v3

    .line 87
    aget v3, v31, v26

    add-int v16, v16, v3

    aget v3, v31, v20

    const/16 v4, 0x80

    if-ne v3, v4, :cond_6

    add-int/lit8 v15, v15, 0x1

    .line 88
    .end local v1    # "mission":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .end local v2    # "groundHere":I
    .end local v5    # "buildingsHere":I
    .end local v6    # "extraUnits":I
    .end local v7    # "ownerUnits":I
    .end local v9    # "ownerStructures":I
    .end local v18    # "scene":[B
    .end local v28    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    .end local v30    # "stride":I
    .end local v31    # "v":[I
    :cond_6
    move-object/from16 v8, v32

    goto/16 :goto_0

    .line 85
    .restart local v1    # "mission":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .restart local v2    # "groundHere":I
    .restart local v5    # "buildingsHere":I
    .restart local v6    # "extraUnits":I
    .restart local v7    # "ownerUnits":I
    .restart local v9    # "ownerStructures":I
    .restart local v18    # "scene":[B
    .restart local v28    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    .restart local v30    # "stride":I
    .restart local v31    # "v":[I
    :cond_7
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Razor bootstrap entity mismatch"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 62
    .end local v5    # "buildingsHere":I
    .end local v6    # "extraUnits":I
    .end local v7    # "ownerUnits":I
    .end local v9    # "ownerStructures":I
    .end local v28    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    .end local v30    # "stride":I
    .end local v31    # "v":[I
    .local v2, "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    .restart local v3    # "v":[I
    .restart local v4    # "stride":I
    :cond_8
    move-object/from16 v28, v2

    move-object/from16 v31, v3

    move/from16 v30, v4

    .line 70
    .end local v2    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    .end local v3    # "v":[I
    .end local v4    # "stride":I
    .restart local v28    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    .restart local v30    # "stride":I
    .restart local v31    # "v":[I
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Razor bootstrap mismatch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->house:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mission:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    .end local v1    # "mission":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .end local v18    # "scene":[B
    .end local v28    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    .end local v30    # "stride":I
    .end local v31    # "v":[I
    :cond_9
    iget v1, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->missionsDecoded:I

    if-ne v10, v1, :cond_a

    iget v1, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->expandedMapMissions:I

    if-ne v15, v1, :cond_a

    .line 91
    new-instance v9, Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;

    const/16 v17, 0x0

    invoke-direct/range {v9 .. v17}, Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;-><init>(IIIIIIILcom/ahsim/demulation/RazorNativeWorldHost-IA;)V

    return-object v9

    .line 90
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor bootstrap mission count mismatch"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    .end local v10    # "missions":I
    .end local v11    # "units":I
    .end local v12    # "buildings":I
    .end local v13    # "ground":I
    .end local v14    # "extra":I
    .end local v15    # "expanded":I
    .end local v16    # "pending":I
    :cond_b
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Untrusted Razor source for native host"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static native nativeBootstrapAudit([B[BIIIII)[I
.end method
