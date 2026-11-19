.class public final Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;
.super Ljava/lang/Object;
.source "RazorNativeObjectFrameBridge.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;,
        Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;
    }
.end annotation


# static fields
.field public static final BUILDING:I = 0x2

.field private static final FIELDS:I = 0x7

.field private static final HEADER:I = 0xc

.field private static final MAGIC:I = 0x525a4f46

.field private static final MAX_OBJECTS:I = 0x480

.field public static final UNIT:I = 0x1


# instance fields
.field public final gameplayReady:Z

.field public final groundRecords:I

.field private handle:J

.field public final house:I

.field private lastSequence:I

.field public final mission:I

.field public final romVariant:I

.field public final scenarioHeight:I

.field public final scenarioWidth:I

.field private final sourceRecords:[I

.field public final sourceSha256:Ljava/lang/String;

.field public final stride:I

.field public final totalBuildings:I

.field public final totalUnits:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-string v0, "dunehost"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;II)V
    .locals 27
    .param p1, "audit"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .param p2, "h"    # I
    .param p3, "m"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->gameplayReady:Z

    .line 35
    if-eqz p1, :cond_11

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual/range {p1 .. p3}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->mapInfo(II)Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;

    move-result-object v2

    .line 38
    .local v2, "map":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romVariant()I

    move-result v3

    iput v3, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->romVariant:I

    move/from16 v3, p2

    iput v3, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->house:I

    move/from16 v4, p3

    iput v4, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->mission:I

    .line 39
    iget v5, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->romVariant:I

    const/16 v6, 0x40

    const/16 v7, 0x80

    const/4 v8, 0x1

    if-ne v5, v8, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    iput v5, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->stride:I

    .line 40
    iget v5, v2, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->scenarioWidth:I

    iput v5, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->scenarioWidth:I

    iget v5, v2, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->scenarioHeight:I

    iput v5, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->scenarioHeight:I

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romSourceSha256()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->sourceSha256:Ljava/lang/String;

    .line 42
    iget v5, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->romVariant:I

    const/4 v9, 0x2

    if-eq v5, v8, :cond_2

    iget v5, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->romVariant:I

    if-ne v5, v9, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v26, v2

    goto/16 :goto_8

    :cond_2
    :goto_1
    iget v5, v2, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->storedSide:I

    const/16 v10, 0x20

    if-eq v5, v10, :cond_3

    iget v5, v2, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->storedSide:I

    if-eq v5, v6, :cond_3

    iget v5, v2, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->storedSide:I

    if-ne v5, v7, :cond_1

    :cond_3
    iget v5, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->scenarioWidth:I

    iget v6, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->stride:I

    if-gt v5, v6, :cond_10

    iget v5, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->scenarioHeight:I

    iget v6, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->stride:I

    if-gt v5, v6, :cond_10

    .line 46
    invoke-virtual/range {p1 .. p3}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->initialObjectScenario(II)Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;

    move-result-object v5

    .line 47
    .local v5, "scenario":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v6, "raw":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .local v7, "units":I
    const/4 v11, 0x0

    .local v11, "buildings":I
    const/4 v12, 0x0

    .line 49
    .local v12, "ground":I
    invoke-virtual {v5}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->records()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;

    .line 51
    .local v14, "r":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    iget v15, v14, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->section:I

    const/16 v10, 0x8

    if-ne v15, v10, :cond_4

    .line 52
    const/4 v10, 0x1

    .local v10, "kind":I
    invoke-virtual {v14, v1}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v15

    .local v15, "owner":I
    invoke-virtual {v14, v8}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v17

    .local v17, "type":I
    const/4 v1, 0x3

    invoke-virtual {v14, v1}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v1

    .local v1, "packed":I
    add-int/lit8 v7, v7, 0x1

    move/from16 v25, v1

    move/from16 v1, v17

    goto :goto_3

    .line 53
    .end local v1    # "packed":I
    .end local v10    # "kind":I
    .end local v15    # "owner":I
    .end local v17    # "type":I
    :cond_4
    iget v1, v14, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->section:I

    const/16 v10, 0x9

    if-ne v1, v10, :cond_a

    iget v1, v14, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->index:I

    const/16 v15, 0x49

    if-ne v1, v15, :cond_a

    .line 54
    const/4 v10, 0x2

    .restart local v10    # "kind":I
    invoke-virtual {v14, v8}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v15

    .restart local v15    # "owner":I
    invoke-virtual {v14, v9}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v17

    .restart local v17    # "type":I
    const/4 v1, 0x4

    invoke-virtual {v14, v1}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v1

    .restart local v1    # "packed":I
    add-int/lit8 v11, v11, 0x1

    move/from16 v25, v1

    move/from16 v1, v17

    .line 58
    .end local v17    # "type":I
    .local v1, "type":I
    .local v25, "packed":I
    :goto_3
    iget v9, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->stride:I

    rem-int v9, v25, v9

    .local v9, "x":I
    iget v8, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->stride:I

    div-int v8, v25, v8

    .line 59
    .local v8, "y":I
    if-ltz v15, :cond_9

    move-object/from16 v26, v2

    .end local v2    # "map":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    .local v26, "map":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    const/4 v2, 0x5

    if-ge v15, v2, :cond_8

    if-ltz v1, :cond_8

    const/4 v2, 0x1

    if-ne v10, v2, :cond_5

    const/16 v2, 0x20

    goto :goto_4

    :cond_5
    const/16 v19, 0x13

    move/from16 v2, v19

    :goto_4
    if-ge v1, v2, :cond_8

    iget v2, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->scenarioWidth:I

    if-ge v9, v2, :cond_8

    iget v2, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->scenarioHeight:I

    if-ge v8, v2, :cond_8

    .line 60
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x7

    move/from16 v22, v1

    .end local v1    # "type":I
    .local v22, "type":I
    const/16 v1, 0x480

    if-ge v2, v1, :cond_7

    .line 62
    iget v1, v14, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->index:I

    move/from16 v20, v1

    move/from16 v24, v8

    move/from16 v23, v9

    move/from16 v19, v10

    move/from16 v21, v15

    .end local v8    # "y":I
    .end local v9    # "x":I
    .end local v10    # "kind":I
    .end local v15    # "owner":I
    .local v19, "kind":I
    .local v21, "owner":I
    .local v23, "x":I
    .local v24, "y":I
    filled-new-array/range {v19 .. v25}, [I

    move-result-object v1

    .line 63
    .local v1, "values":[I
    array-length v2, v1

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v2, :cond_6

    aget v9, v1, v8

    .local v9, "value":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v9    # "value":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 64
    .end local v1    # "values":[I
    .end local v14    # "r":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    .end local v19    # "kind":I
    .end local v21    # "owner":I
    .end local v22    # "type":I
    .end local v23    # "x":I
    .end local v24    # "y":I
    .end local v25    # "packed":I
    :cond_6
    move-object/from16 v2, v26

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/16 v10, 0x20

    goto/16 :goto_2

    .line 60
    .restart local v8    # "y":I
    .local v9, "x":I
    .restart local v10    # "kind":I
    .restart local v14    # "r":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    .restart local v15    # "owner":I
    .restart local v22    # "type":I
    .restart local v25    # "packed":I
    :cond_7
    move/from16 v24, v8

    move/from16 v23, v9

    move/from16 v19, v10

    move/from16 v21, v15

    .end local v8    # "y":I
    .end local v9    # "x":I
    .end local v10    # "kind":I
    .end local v15    # "owner":I
    .restart local v19    # "kind":I
    .restart local v21    # "owner":I
    .restart local v23    # "x":I
    .restart local v24    # "y":I
    goto :goto_6

    .line 59
    .end local v19    # "kind":I
    .end local v21    # "owner":I
    .end local v22    # "type":I
    .end local v23    # "x":I
    .end local v24    # "y":I
    .local v1, "type":I
    .restart local v8    # "y":I
    .restart local v9    # "x":I
    .restart local v10    # "kind":I
    .restart local v15    # "owner":I
    :cond_8
    move/from16 v22, v1

    move/from16 v24, v8

    move/from16 v23, v9

    move/from16 v19, v10

    move/from16 v21, v15

    .end local v1    # "type":I
    .end local v8    # "y":I
    .end local v9    # "x":I
    .end local v10    # "kind":I
    .end local v15    # "owner":I
    .restart local v19    # "kind":I
    .restart local v21    # "owner":I
    .restart local v22    # "type":I
    .restart local v23    # "x":I
    .restart local v24    # "y":I
    goto :goto_6

    .end local v19    # "kind":I
    .end local v21    # "owner":I
    .end local v22    # "type":I
    .end local v23    # "x":I
    .end local v24    # "y":I
    .end local v26    # "map":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    .restart local v1    # "type":I
    .restart local v2    # "map":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    .restart local v8    # "y":I
    .restart local v9    # "x":I
    .restart local v10    # "kind":I
    .restart local v15    # "owner":I
    :cond_9
    move/from16 v22, v1

    move-object/from16 v26, v2

    move/from16 v24, v8

    move/from16 v23, v9

    move/from16 v19, v10

    move/from16 v21, v15

    .line 61
    .end local v1    # "type":I
    .end local v2    # "map":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    .end local v8    # "y":I
    .end local v9    # "x":I
    .end local v10    # "kind":I
    .end local v15    # "owner":I
    .restart local v19    # "kind":I
    .restart local v21    # "owner":I
    .restart local v22    # "type":I
    .restart local v23    # "x":I
    .restart local v24    # "y":I
    .restart local v26    # "map":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    :goto_6
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor scenario has invalid initial object location/identity"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    .end local v19    # "kind":I
    .end local v21    # "owner":I
    .end local v22    # "type":I
    .end local v23    # "x":I
    .end local v24    # "y":I
    .end local v25    # "packed":I
    .end local v26    # "map":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    .restart local v2    # "map":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    :cond_a
    move-object/from16 v26, v2

    .line 55
    .end local v2    # "map":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    .restart local v26    # "map":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    iget v1, v14, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->section:I

    if-ne v1, v10, :cond_b

    iget v1, v14, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->index:I

    const/16 v2, 0x47

    if-ne v1, v2, :cond_b

    .line 56
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v26

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/16 v10, 0x20

    goto/16 :goto_2

    .line 49
    .end local v14    # "r":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    :cond_b
    move-object/from16 v2, v26

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/16 v10, 0x20

    goto/16 :goto_2

    .line 65
    .end local v26    # "map":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    .restart local v2    # "map":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    :cond_c
    move-object/from16 v26, v2

    .end local v2    # "map":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    .restart local v26    # "map":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    iget v1, v5, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->unitCount:I

    if-ne v7, v1, :cond_f

    add-int v1, v11, v12

    iget v2, v5, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->structureCount:I

    if-ne v1, v2, :cond_f

    .line 67
    iput v7, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->totalUnits:I

    iput v11, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->totalBuildings:I

    iput v12, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->groundRecords:I

    .line 68
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->sourceRecords:[I

    .line 69
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_d

    iget-object v2, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->sourceRecords:[I

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 70
    .end local v1    # "i":I
    :cond_d
    iget v13, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->romVariant:I

    iget v14, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->house:I

    iget v15, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->mission:I

    iget v1, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->stride:I

    iget v2, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->scenarioWidth:I

    iget v8, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->scenarioHeight:I

    iget-object v9, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->sourceRecords:[I

    .line 71
    invoke-virtual {v9}, [I->clone()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v19, v9

    check-cast v19, [I

    .line 70
    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v8

    invoke-static/range {v13 .. v19}, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->nativeOpen(IIIIII[I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->handle:J

    .line 72
    iget-wide v1, v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->handle:J

    const-wide/16 v8, 0x0

    cmp-long v1, v1, v8

    if-eqz v1, :cond_e

    .line 73
    return-void

    .line 72
    :cond_e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Native Razor initial objects rejected source records"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor initial object counts changed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    .end local v5    # "scenario":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    .end local v6    # "raw":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "units":I
    .end local v11    # "buildings":I
    .end local v12    # "ground":I
    .end local v26    # "map":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    .restart local v2    # "map":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    :cond_10
    move-object/from16 v26, v2

    .line 45
    .end local v2    # "map":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    .restart local v26    # "map":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    :goto_8
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor object world grid unsupported"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    .end local v26    # "map":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    :cond_11
    move/from16 v3, p2

    move/from16 v4, p3

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor object frame requires authenticated offline ROM"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static capture(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;II)Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;
    .locals 1
    .param p0, "audit"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;

    invoke-direct {v0, p0, p1, p2}, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;-><init>(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;II)V

    return-object v0
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeOpen(IIIIII[I)J
.end method

.method private static native nativeRead(JIIII)[I
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4

    monitor-enter p0

    .line 141
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->handle:J

    .local v0, "old":J
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->handle:J

    .line 142
    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->nativeClose(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .end local p0    # "this":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;
    :cond_0
    monitor-exit p0

    return-void

    .line 140
    .end local v0    # "old":J
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized read(IIII)Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    .locals 16
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    monitor-enter p0

    .line 107
    :try_start_0
    iget-wide v7, v1, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->handle:J

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-eqz v0, :cond_6

    .line 108
    const/4 v0, 0x1

    if-lt v5, v0, :cond_5

    if-lt v6, v0, :cond_5

    const/16 v2, 0x20

    if-gt v5, v2, :cond_5

    if-gt v6, v2, :cond_5

    if-ltz v3, :cond_5

    if-ltz v4, :cond_5

    iget v2, v1, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->scenarioWidth:I

    if-gt v5, v2, :cond_5

    iget v2, v1, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->scenarioHeight:I

    if-gt v6, v2, :cond_5

    iget v2, v1, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->scenarioWidth:I

    sub-int/2addr v2, v5

    if-gt v3, v2, :cond_5

    iget v2, v1, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->scenarioHeight:I

    sub-int/2addr v2, v6

    if-gt v4, v2, :cond_5

    .line 112
    iget-wide v2, v1, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->handle:J

    move v7, v6

    move v6, v5

    move v5, v4

    move/from16 v4, p1

    invoke-static/range {v2 .. v7}, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->nativeRead(JIIII)[I

    move-result-object v2

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v13, v2

    .line 113
    .local v13, "result":[I
    if-eqz v13, :cond_4

    array-length v2, v13

    const/16 v7, 0xc

    if-lt v2, v7, :cond_4

    const/4 v2, 0x0

    aget v2, v13, v2

    const v8, 0x525a4f46

    if-ne v2, v8, :cond_4

    aget v2, v13, v0

    if-ne v2, v0, :cond_4

    const/4 v0, 0x2

    aget v0, v13, v0

    iget v2, v1, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->romVariant:I

    if-ne v0, v2, :cond_4

    const/4 v0, 0x3

    aget v0, v13, v0

    iget v2, v1, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->house:I

    if-ne v0, v2, :cond_4

    const/4 v0, 0x4

    aget v0, v13, v0

    iget v2, v1, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->mission:I

    if-ne v0, v2, :cond_4

    const/4 v0, 0x5

    aget v0, v13, v0

    iget v2, v1, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->stride:I

    if-ne v0, v2, :cond_4

    const/4 v0, 0x6

    aget v0, v13, v0

    iget v2, v1, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->scenarioWidth:I

    if-ne v0, v2, :cond_4

    const/4 v0, 0x7

    aget v2, v13, v0

    iget v8, v1, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->scenarioHeight:I

    if-ne v2, v8, :cond_4

    const/16 v2, 0x8

    aget v2, v13, v2

    if-ne v2, v3, :cond_4

    const/16 v2, 0x9

    aget v2, v13, v2

    if-ne v2, v4, :cond_4

    const/16 v2, 0xa

    aget v8, v13, v2

    if-lez v8, :cond_4

    iget v8, v1, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->lastSequence:I

    if-lez v8, :cond_0

    aget v8, v13, v2

    int-to-long v8, v8

    iget v10, v1, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->lastSequence:I

    int-to-long v10, v10

    const-wide/16 v14, 0x1

    add-long/2addr v10, v14

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    .end local p0    # "this":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;
    :cond_0
    const/16 v8, 0xb

    aget v9, v13, v8

    if-ltz v9, :cond_4

    aget v9, v13, v8

    const/16 v10, 0x480

    if-gt v9, v10, :cond_4

    array-length v9, v13

    aget v10, v13, v8

    mul-int/2addr v10, v0

    add-int/2addr v10, v7

    if-ne v9, v10, :cond_4

    .line 123
    iget-object v9, v1, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->sourceRecords:[I

    array-length v9, v9

    new-array v9, v9, [I

    move-object v14, v9

    .line 124
    .local v14, "expected":[I
    const/4 v9, 0x0

    .line 125
    .local v9, "n":I
    const/4 v10, 0x0

    move v15, v9

    .end local v9    # "n":I
    .local v10, "i":I
    .local v15, "n":I
    :goto_0
    iget-object v9, v1, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->sourceRecords:[I

    array-length v9, v9

    if-ge v10, v9, :cond_2

    .line 126
    iget-object v9, v1, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->sourceRecords:[I

    add-int/lit8 v11, v10, 0x4

    aget v9, v9, v11

    .local v9, "px":I
    iget-object v11, v1, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->sourceRecords:[I

    add-int/lit8 v12, v10, 0x5

    aget v11, v11, v12

    .line 127
    .local v11, "py":I
    if-lt v9, v3, :cond_1

    sub-int v12, v9, v3

    if-ge v12, v5, :cond_1

    if-lt v11, v4, :cond_1

    sub-int v12, v11, v4

    if-ge v12, v6, :cond_1

    .line 128
    iget-object v12, v1, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->sourceRecords:[I

    invoke-static {v12, v10, v14, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v15, v15, 0x7

    .line 125
    .end local v9    # "px":I
    .end local v11    # "py":I
    :cond_1
    add-int/lit8 v10, v10, 0x7

    goto :goto_0

    .line 131
    .end local v10    # "i":I
    :cond_2
    aget v0, v13, v8

    div-int/lit8 v8, v15, 0x7

    if-ne v0, v8, :cond_3

    array-length v0, v13

    .line 132
    invoke-static {v13, v7, v0}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    .line 133
    invoke-static {v14, v15}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    .line 132
    invoke-static {v0, v8}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    aget v0, v13, v2

    iput v0, v1, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->lastSequence:I

    .line 136
    new-instance v2, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;

    iget v0, v1, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->lastSequence:I

    iget v8, v1, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->totalUnits:I

    iget v9, v1, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->totalBuildings:I

    iget v10, v1, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->groundRecords:I

    array-length v11, v13

    .line 137
    invoke-static {v13, v7, v11}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v11

    const/4 v12, 0x0

    move v7, v0

    invoke-direct/range {v2 .. v12}, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;-><init>(IIIIIIII[ILcom/ahsim/demulation/RazorNativeObjectFrameBridge-IA;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-object v2

    .line 134
    :cond_3
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Razor native object frame diverges from source ROM"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    .end local v14    # "expected":[I
    .end local v15    # "n":I
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Razor native object frame header changed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    .end local v13    # "result":[I
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Razor objects viewport outside scenario"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Razor object host is closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    .end local p1    # "x":I
    .end local p2    # "y":I
    .end local p3    # "w":I
    .end local p4    # "h":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
