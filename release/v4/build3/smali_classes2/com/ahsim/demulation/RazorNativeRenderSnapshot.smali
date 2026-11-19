.class public final Lcom/ahsim/demulation/RazorNativeRenderSnapshot;
.super Ljava/lang/Object;
.source "RazorNativeRenderSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;,
        Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Summary;,
        Lcom/ahsim/demulation/RazorNativeRenderSnapshot$ObjectRecord;
    }
.end annotation


# static fields
.field private static final HEADER:I = 0x10

.field private static final MAGIC:I = 0x525a5253

.field private static final OBJECT_WORDS:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-string v0, "dunehost"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inspect(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;)Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Summary;
    .locals 13
    .param p0, "bundle"    # Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    if-eqz p0, :cond_4

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const/4 v0, 0x0

    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "direct":I
    const/4 v2, 0x0

    .local v2, "compact":I
    const/4 v3, 0x0

    .local v3, "wide":I
    const/4 v4, 0x0

    .line 122
    .local v4, "objects":I
    invoke-virtual {p0}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->allMissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    .end local v0    # "n":I
    .end local v1    # "direct":I
    .end local v2    # "compact":I
    .end local v3    # "wide":I
    .end local v4    # "objects":I
    .local v7, "n":I
    .local v8, "direct":I
    .local v9, "compact":I
    .local v10, "wide":I
    .local v11, "objects":I
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    .line 123
    .local v0, "mission":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    invoke-static {v0}, Lcom/ahsim/demulation/RazorNativeRenderSnapshot;->prepare(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;)Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;

    move-result-object v1

    .line 124
    .local v1, "s":Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1}, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;->objectCount()I

    move-result v2

    add-int/2addr v11, v2

    .line 125
    iget-boolean v2, v1, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;->directTerrain:Z

    if-eqz v2, :cond_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v9, v9, 0x1

    .line 126
    :goto_1
    iget-boolean v2, v1, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;->expandedGrid:Z

    if-eqz v2, :cond_1

    add-int/lit8 v10, v10, 0x1

    .line 127
    .end local v0    # "mission":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .end local v1    # "s":Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;
    :cond_1
    goto :goto_0

    .line 128
    :cond_2
    iget v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->missionsDecoded:I

    if-ne v7, v0, :cond_3

    iget v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->expandedMapMissions:I

    if-ne v10, v0, :cond_3

    .line 130
    new-instance v6, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Summary;

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Summary;-><init>(IIIIILcom/ahsim/demulation/RazorNativeRenderSnapshot-IA;)V

    return-object v6

    .line 129
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor render count mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    .end local v7    # "n":I
    .end local v8    # "direct":I
    .end local v9    # "compact":I
    .end local v10    # "wide":I
    .end local v11    # "objects":I
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsafe Razor render source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nativeRenderData([B[BIIIII)[I
.end method

.method public static prepare(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;)Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;
    .locals 26
    .param p0, "mission"    # Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    move-object/from16 v0, p0

    if-eqz v0, :cond_14

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {v0}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mapBytes()[B

    move-result-object v1

    .local v1, "map":[B
    invoke-virtual {v0}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioBytes()[B

    move-result-object v2

    .line 62
    .local v2, "scene":[B
    nop

    .line 63
    invoke-static {v2}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder;->decode([B)Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;

    move-result-object v8

    .line 64
    .local v8, "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    invoke-static {v8}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->auditDocument(Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;)Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;

    .line 65
    iget v3, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->house:I

    iget v4, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mission:I

    iget v5, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    iget v6, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapWidth:I

    iget v7, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapHeight:I

    invoke-static/range {v1 .. v7}, Lcom/ahsim/demulation/RazorNativeRenderSnapshot;->nativeRenderData([B[BIIIII)[I

    move-result-object v3

    .line 67
    .local v3, "data":[I
    const/4 v4, 0x0

    .local v4, "unitCount":I
    const/4 v5, 0x0

    .line 68
    .local v5, "buildingCount":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v6, "units":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v7, "buildings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;>;"
    invoke-virtual {v8}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->records()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/16 v11, 0x9

    const/16 v12, 0x8

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;

    .line 71
    .local v10, "r":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    iget v13, v10, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->section:I

    if-ne v13, v12, :cond_0

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 72
    :cond_0
    iget v12, v10, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->section:I

    if-ne v12, v11, :cond_1

    iget v11, v10, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->index:I

    const/16 v12, 0x49

    if-ne v11, v12, :cond_1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v10    # "r":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    :cond_1
    :goto_1
    goto :goto_0

    .line 74
    :cond_2
    if-eqz v3, :cond_13

    array-length v9, v3

    const/16 v10, 0x10

    if-lt v9, v10, :cond_13

    const/4 v9, 0x0

    aget v13, v3, v9

    const v14, 0x525a5253

    if-ne v13, v14, :cond_13

    const/4 v13, 0x1

    aget v14, v3, v13

    if-ne v14, v13, :cond_13

    const/4 v14, 0x3

    aget v15, v3, v14

    move/from16 v16, v11

    iget v11, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->house:I

    if-ne v15, v11, :cond_13

    const/4 v11, 0x4

    aget v15, v3, v11

    move/from16 v17, v12

    iget v12, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mission:I

    if-ne v15, v12, :cond_13

    const/4 v12, 0x5

    aget v15, v3, v12

    move/from16 v18, v12

    iget v12, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    if-ne v15, v12, :cond_13

    const/4 v12, 0x6

    aget v12, v3, v12

    .line 77
    iget v15, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    const/16 v19, 0x40

    const/16 v11, 0x80

    if-ne v15, v11, :cond_3

    move v15, v11

    goto :goto_2

    :cond_3
    move/from16 v15, v19

    :goto_2
    if-ne v12, v15, :cond_13

    const/4 v12, 0x7

    aget v12, v3, v12

    iget v15, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapWidth:I

    if-ne v12, v15, :cond_13

    aget v12, v3, v17

    iget v15, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapHeight:I

    if-ne v12, v15, :cond_13

    aget v12, v3, v16

    array-length v15, v1

    if-ne v12, v15, :cond_13

    const/16 v12, 0xa

    aget v15, v3, v12

    .line 79
    move/from16 v16, v12

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v15, v12, :cond_13

    const/16 v12, 0xb

    aget v15, v3, v12

    move/from16 v17, v12

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v15, v12, :cond_13

    const/16 v12, 0xe

    aget v12, v3, v12

    if-ne v12, v10, :cond_13

    const/16 v12, 0xf

    aget v15, v3, v12

    move/from16 v21, v10

    array-length v10, v1

    add-int/lit8 v10, v10, 0x10

    if-ne v15, v10, :cond_13

    array-length v10, v3

    array-length v15, v1

    add-int/lit8 v15, v15, 0x10

    .line 81
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int v21, v21, v22

    mul-int/lit8 v21, v21, 0x5

    add-int v15, v15, v21

    if-ne v10, v15, :cond_13

    const/4 v10, 0x2

    aget v15, v3, v10

    .line 82
    move/from16 v18, v12

    iget v12, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    const/16 v10, 0x20

    if-ne v12, v10, :cond_4

    const/4 v10, 0x2

    goto :goto_4

    .line 83
    :cond_4
    iget v10, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    if-ne v10, v11, :cond_5

    const/4 v10, 0x4

    goto :goto_3

    :cond_5
    move v10, v9

    :goto_3
    or-int/2addr v10, v13

    :goto_4
    if-ne v15, v10, :cond_13

    .line 85
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    array-length v12, v1

    if-ge v10, v12, :cond_7

    add-int/lit8 v12, v10, 0x10

    aget v12, v3, v12

    aget-byte v15, v1, v10

    and-int/lit16 v15, v15, 0xff

    if-ne v12, v15, :cond_6

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 86
    :cond_6
    new-instance v9, Ljava/io/IOException;

    const-string v11, "Razor raw terrain altered"

    invoke-direct {v9, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 87
    .end local v10    # "i":I
    :cond_7
    aget v10, v3, v18

    .line 88
    .local v10, "p":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;

    .line 89
    .local v15, "r":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    invoke-virtual {v15, v14}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v18

    .line 90
    .local v18, "source":I
    iget v14, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    if-ne v14, v11, :cond_8

    move v14, v11

    goto :goto_7

    :cond_8
    move/from16 v14, v19

    .line 91
    .local v14, "stride":I
    :goto_7
    rem-int v23, v18, v14

    .local v23, "x":I
    div-int v24, v18, v14

    .line 92
    .local v24, "y":I
    add-int/lit8 v25, v10, 0x1

    .end local v10    # "p":I
    .local v25, "p":I
    aget v10, v3, v10

    if-ne v10, v13, :cond_b

    add-int/lit8 v10, v25, 0x1

    .end local v25    # "p":I
    .restart local v10    # "p":I
    aget v11, v3, v25

    invoke-virtual {v15, v9}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v13

    if-ne v11, v13, :cond_a

    add-int/lit8 v25, v10, 0x1

    .end local v10    # "p":I
    .restart local v25    # "p":I
    aget v10, v3, v10

    const/4 v11, 0x1

    invoke-virtual {v15, v11}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v13

    if-ne v10, v13, :cond_b

    add-int/lit8 v10, v25, 0x1

    .end local v25    # "p":I
    .restart local v10    # "p":I
    aget v11, v3, v25

    shl-int/lit8 v13, v23, 0x10

    or-int v13, v13, v24

    if-ne v11, v13, :cond_a

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "p":I
    .local v11, "p":I
    aget v10, v3, v10

    iget v13, v15, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->index:I

    if-ne v10, v13, :cond_9

    .line 95
    nop

    .end local v14    # "stride":I
    .end local v15    # "r":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    .end local v18    # "source":I
    .end local v23    # "x":I
    .end local v24    # "y":I
    add-int/lit8 v4, v4, 0x1

    .line 96
    move v10, v11

    const/16 v11, 0x80

    const/4 v13, 0x1

    const/4 v14, 0x3

    goto :goto_6

    .line 92
    .restart local v14    # "stride":I
    .restart local v15    # "r":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    .restart local v18    # "source":I
    .restart local v23    # "x":I
    .restart local v24    # "y":I
    :cond_9
    move/from16 v25, v11

    goto :goto_8

    .end local v11    # "p":I
    .restart local v10    # "p":I
    :cond_a
    move/from16 v25, v10

    .line 94
    .end local v10    # "p":I
    .restart local v25    # "p":I
    :cond_b
    :goto_8
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Razor source unit render order mismatch"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 97
    .end local v14    # "stride":I
    .end local v15    # "r":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    .end local v18    # "source":I
    .end local v23    # "x":I
    .end local v24    # "y":I
    .end local v25    # "p":I
    .restart local v10    # "p":I
    :cond_c
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;

    .line 98
    .local v11, "r":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v13

    .line 99
    .local v13, "source":I
    iget v14, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    const/16 v15, 0x80

    if-ne v14, v15, :cond_d

    move v14, v15

    goto :goto_a

    :cond_d
    move/from16 v14, v19

    .line 100
    .restart local v14    # "stride":I
    :goto_a
    rem-int v18, v13, v14

    .local v18, "x":I
    div-int v20, v13, v14

    .line 101
    .local v20, "y":I
    add-int/lit8 v22, v10, 0x1

    .end local v10    # "p":I
    .local v22, "p":I
    aget v10, v3, v10

    const/4 v12, 0x2

    if-ne v10, v12, :cond_10

    add-int/lit8 v10, v22, 0x1

    .end local v22    # "p":I
    .restart local v10    # "p":I
    aget v15, v3, v22

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v0

    if-ne v15, v0, :cond_f

    add-int/lit8 v22, v10, 0x1

    .end local v10    # "p":I
    .restart local v22    # "p":I
    aget v0, v3, v10

    const/4 v10, 0x2

    invoke-virtual {v11, v10}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v15

    if-ne v0, v15, :cond_10

    add-int/lit8 v0, v22, 0x1

    .end local v22    # "p":I
    .local v0, "p":I
    aget v15, v3, v22

    shl-int/lit8 v21, v18, 0x10

    or-int v10, v21, v20

    if-ne v15, v10, :cond_e

    add-int/lit8 v10, v0, 0x1

    .end local v0    # "p":I
    .restart local v10    # "p":I
    aget v0, v3, v0

    if-nez v0, :cond_f

    .line 104
    nop

    .end local v11    # "r":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    .end local v13    # "source":I
    .end local v14    # "stride":I
    .end local v18    # "x":I
    .end local v20    # "y":I
    add-int/lit8 v5, v5, 0x1

    .line 105
    move-object/from16 v0, p0

    goto :goto_9

    .line 101
    .end local v10    # "p":I
    .restart local v0    # "p":I
    .restart local v11    # "r":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    .restart local v13    # "source":I
    .restart local v14    # "stride":I
    .restart local v18    # "x":I
    .restart local v20    # "y":I
    :cond_e
    move/from16 v22, v0

    goto :goto_b

    .end local v0    # "p":I
    .restart local v10    # "p":I
    :cond_f
    move/from16 v22, v10

    .line 103
    .end local v10    # "p":I
    .restart local v22    # "p":I
    :cond_10
    :goto_b
    new-instance v0, Ljava/io/IOException;

    const-string v9, "Razor source building render order mismatch"

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    .end local v11    # "r":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    .end local v13    # "source":I
    .end local v14    # "stride":I
    .end local v18    # "x":I
    .end local v20    # "y":I
    .end local v22    # "p":I
    .restart local v10    # "p":I
    :cond_11
    array-length v0, v3

    if-ne v10, v0, :cond_12

    add-int v0, v4, v5

    aget v9, v3, v16

    aget v11, v3, v17

    add-int/2addr v9, v11

    if-ne v0, v9, :cond_12

    .line 108
    new-instance v0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;

    const/4 v9, 0x0

    invoke-direct {v0, v3, v1, v9}, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;-><init>([I[BLcom/ahsim/demulation/RazorNativeRenderSnapshot-IA;)V

    return-object v0

    .line 107
    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v9, "Razor render snapshot truncated"

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    .end local v10    # "p":I
    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v9, "Razor native render layout mismatch"

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    .end local v1    # "map":[B
    .end local v2    # "scene":[B
    .end local v3    # "data":[I
    .end local v4    # "unitCount":I
    .end local v5    # "buildingCount":I
    .end local v6    # "units":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;>;"
    .end local v7    # "buildings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;>;"
    .end local v8    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor render source unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
