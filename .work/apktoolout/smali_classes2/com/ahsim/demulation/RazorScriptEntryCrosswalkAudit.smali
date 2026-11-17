.class public final Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit;
.super Ljava/lang/Object;
.source "RazorScriptEntryCrosswalkAudit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;,
        Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;
    }
.end annotation


# static fields
.field public static final BUILD:I = 0x0

.field public static final BUILD_SOURCE_TYPES:I = 0x13

.field public static final TEAM:I = 0x1

.field public static final UNIT:I = 0x2

.field public static final UNIT_SOURCE_TYPES:I = 0x20


# direct methods
.method static bridge synthetic -$$Nest$smindex([II)I
    .locals 0

    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit;->index([II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smsum([I)I
    .locals 0

    invoke-static {p0}, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit;->sum([I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smsumFrom([II)I
    .locals 0

    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit;->sumFrom([II)I

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static index([II)I
    .locals 2
    .param p0, "a"    # [I
    .param p1, "id"    # I

    .line 77
    if-ltz p1, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 78
    aget v0, p0, p1

    return v0

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Razor source type outside profile"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;
    .locals 19
    .param p0, "rom"    # [B
    .param p1, "sha"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-static/range {p0 .. p1}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;

    move-result-object v0

    .line 86
    .local v0, "emc":Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;
    invoke-static/range {p0 .. p1}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle;->inspect([BLjava/lang/String;)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    move-result-object v1

    .line 87
    .local v1, "bank":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    iget v2, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->variant:I

    iget v3, v0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->romVariant:I

    if-ne v2, v3, :cond_e

    iget-object v2, v0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->build:Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;

    iget v2, v2, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;->entries:I

    const/16 v3, 0x13

    if-ne v2, v3, :cond_e

    iget-object v2, v0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->unit:Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;

    iget v2, v2, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;->entries:I

    const/16 v4, 0x1b

    if-ne v2, v4, :cond_e

    iget-object v2, v0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->team:Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;

    iget v2, v2, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;->entries:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_e

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v2

    .line 91
    .local v9, "results":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;>;"
    invoke-virtual {v1}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->allMissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    .line 92
    .local v4, "source":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    nop

    .line 93
    invoke-virtual {v4}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder;->decode([B)Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;

    move-result-object v6

    .line 94
    .local v6, "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    const/16 v7, 0x20

    new-array v13, v7, [I

    .local v13, "initial":[I
    new-array v14, v7, [I

    .line 95
    .local v14, "rein":[I
    new-array v15, v3, [I

    .local v15, "buildings":[I
    const/4 v8, 0x0

    .local v8, "teams":I
    const/4 v10, 0x0

    .line 96
    .local v10, "ground":I
    invoke-virtual {v6}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->records()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move/from16 v16, v8

    move/from16 v17, v10

    .end local v8    # "teams":I
    .end local v10    # "ground":I
    .local v16, "teams":I
    .local v17, "ground":I
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;

    .line 98
    .local v8, "rec":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    iget v10, v8, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->section:I

    const/16 v12, 0x8

    if-ne v10, v12, :cond_1

    .line 99
    invoke-virtual {v8, v5}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v10

    .line 100
    .local v10, "type":I
    if-ltz v10, :cond_0

    if-ge v10, v7, :cond_0

    .line 102
    aget v12, v13, v10

    add-int/2addr v12, v5

    aput v12, v13, v10

    goto :goto_2

    .line 101
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unknown Razor initial UNIT type"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    .end local v10    # "type":I
    :cond_1
    iget v10, v8, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->section:I

    const/16 v12, 0xa

    if-ne v10, v12, :cond_3

    .line 104
    invoke-virtual {v8, v5}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v10

    .line 105
    .restart local v10    # "type":I
    if-ltz v10, :cond_2

    if-ge v10, v7, :cond_2

    .line 107
    aget v12, v14, v10

    add-int/2addr v12, v5

    aput v12, v14, v10

    goto :goto_2

    .line 106
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unknown Razor reinforcement UNIT type"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    .end local v10    # "type":I
    :cond_3
    iget v10, v8, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->section:I

    const/16 v12, 0x9

    if-ne v10, v12, :cond_7

    .line 109
    iget v10, v8, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->index:I

    const/16 v12, 0x49

    if-ne v10, v12, :cond_5

    .line 110
    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v10

    .line 111
    .restart local v10    # "type":I
    if-ltz v10, :cond_4

    if-ge v10, v3, :cond_4

    .line 113
    aget v12, v15, v10

    add-int/2addr v12, v5

    aput v12, v15, v10

    goto :goto_2

    .line 112
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unknown Razor building type"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    .end local v10    # "type":I
    :cond_5
    iget v10, v8, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->index:I

    const/16 v12, 0x47

    if-ne v10, v12, :cond_6

    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 115
    :cond_6
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unknown Razor structure record"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_7
    iget v10, v8, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->section:I

    const/4 v12, 0x7

    if-ne v10, v12, :cond_8

    .line 119
    add-int/lit8 v16, v16, 0x1

    .line 121
    .end local v8    # "rec":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    :cond_8
    :goto_2
    goto :goto_1

    .line 122
    :cond_9
    new-instance v10, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;

    iget v11, v4, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->house:I

    iget v12, v4, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mission:I

    const/16 v18, 0x0

    invoke-direct/range {v10 .. v18}, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;-><init>(II[I[I[IIILcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit-IA;)V

    .line 123
    .local v10, "m":Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;
    iget v5, v10, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->initialUnits:I

    iget v7, v4, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->unitCount:I

    if-ne v5, v7, :cond_a

    iget v5, v10, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->buildings:I

    add-int v5, v5, v17

    iget v7, v4, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->structureCount:I

    if-ne v5, v7, :cond_a

    iget v5, v10, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->teams:I

    iget v7, v4, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->teamCount:I

    if-ne v5, v7, :cond_a

    iget v5, v10, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;->reinforcements:I

    iget v7, v6, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->reinforcementCount:I

    if-ne v5, v7, :cond_a

    .line 126
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v4    # "source":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .end local v6    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    .end local v10    # "m":Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;
    .end local v13    # "initial":[I
    .end local v14    # "rein":[I
    .end local v15    # "buildings":[I
    .end local v16    # "teams":I
    .end local v17    # "ground":I
    goto/16 :goto_0

    .line 125
    .restart local v4    # "source":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .restart local v6    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    .restart local v10    # "m":Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;
    .restart local v13    # "initial":[I
    .restart local v14    # "rein":[I
    .restart local v15    # "buildings":[I
    .restart local v16    # "teams":I
    .restart local v17    # "ground":I
    :cond_a
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Razor source scenario record identity changed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    .end local v4    # "source":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .end local v6    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    .end local v10    # "m":Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;
    .end local v13    # "initial":[I
    .end local v14    # "rein":[I
    .end local v15    # "buildings":[I
    .end local v16    # "teams":I
    .end local v17    # "ground":I
    :cond_b
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    iget v3, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->variant:I

    if-ne v3, v5, :cond_c

    const/16 v3, 0x2d

    goto :goto_3

    :cond_c
    const/16 v3, 0x2c

    :goto_3
    if-ne v2, v3, :cond_d

    .line 130
    new-instance v4, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;

    iget v5, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->variant:I

    iget-object v2, v0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->unit:Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;

    iget v6, v2, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;->entries:I

    iget-object v2, v0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->build:Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;

    iget v7, v2, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;->entries:I

    iget-object v2, v0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->team:Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;

    iget v8, v2, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;->entries:I

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;-><init>(IIIILjava/util/List;Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit-IA;)V

    return-object v4

    .line 129
    :cond_d
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Razor validated mission set changed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    .end local v9    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Mission;>;"
    :cond_e
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unexpected Razor EMC ORDR profile"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static sum([I)I
    .locals 4
    .param p0, "a"    # [I

    .line 80
    const/4 v0, 0x0

    .local v0, "n":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .local v3, "v":I
    add-int/2addr v0, v3

    .end local v3    # "v":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static sumFrom([II)I
    .locals 3
    .param p0, "a"    # [I
    .param p1, "start"    # I

    .line 81
    const/4 v0, 0x0

    .local v0, "n":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget v2, p0, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    return v0
.end method
