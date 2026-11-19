.class public final Lcom/ahsim/demulation/RazorSpritePalettePoseAudit;
.super Ljava/lang/Object;
.source "RazorSpritePalettePoseAudit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;,
        Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;
    }
.end annotation


# static fields
.field public static final CRAM_LINES:I = 0x4

.field public static final CRAM_SOURCE_OFFSET:I = 0x25f42

.field private static final INDEX_COUNT:I = 0x10

.field public static final RAIDER_TYPE:I = 0xe

.field public static final SETS:I = 0x4

.field public static final TRIKE_TYPE:I = 0xd


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;
    .locals 24
    .param p0, "rom"    # [B
    .param p1, "sha256"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-static/range {p0 .. p1}, Lcom/ahsim/demulation/RazorSpriteCfgRelocation;->inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;

    move-result-object v0

    .line 101
    .local v0, "cfg":Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;
    nop

    .line 102
    invoke-static/range {p0 .. p1}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle;->inspect([BLjava/lang/String;)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    move-result-object v1

    .line 103
    .local v1, "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    nop

    .line 104
    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-static {v2, v5, v1}, Lcom/ahsim/demulation/RazorTerrainVisualSource;->inspect([BLjava/lang/String;Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;)Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    move-result-object v13

    .line 105
    .local v13, "palette":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    iget v3, v0, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;->variant:I

    iget v4, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->variant:I

    if-ne v3, v4, :cond_e

    iget v3, v0, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;->variant:I

    invoke-virtual {v13}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romVariant()I

    move-result v4

    if-ne v3, v4, :cond_e

    .line 106
    const/16 v3, 0xd

    invoke-static {v3}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->unitTypeName(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "Trike"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 107
    const/16 v4, 0xe

    invoke-static {v4}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->unitTypeName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Raider Trike"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 109
    const/4 v6, 0x2

    new-array v7, v6, [I

    const/4 v8, 0x1

    const/16 v9, 0x40

    aput v9, v7, v8

    const/4 v9, 0x0

    const/4 v10, 0x4

    aput v10, v7, v9

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    .line 110
    .local v7, "words":[[I
    const/4 v11, 0x0

    .local v11, "set":I
    :goto_0
    if-ge v11, v10, :cond_2

    const/4 v12, 0x0

    .local v12, "line":I
    :goto_1
    if-ge v12, v10, :cond_1

    .line 111
    const/4 v14, 0x0

    .local v14, "color":I
    :goto_2
    const/16 v15, 0x10

    if-ge v14, v15, :cond_0

    .line 112
    aget-object v15, v7, v11

    mul-int/lit8 v16, v12, 0x10

    add-int v16, v16, v14

    invoke-virtual {v13, v11, v12, v14}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->paletteWord(III)I

    move-result v17

    aput v17, v15, v16

    .line 111
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 110
    .end local v14    # "color":I
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .end local v12    # "line":I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 113
    .end local v11    # "set":I
    :cond_2
    const/4 v11, 0x5

    new-array v12, v11, [[B

    .line 114
    .local v12, "poses":[[B
    const/4 v14, 0x0

    .local v14, "pose":I
    :goto_3
    if-ge v14, v11, :cond_5

    .line 115
    const/4 v15, 0x0

    .local v15, "group":I
    :goto_4
    if-ge v15, v6, :cond_4

    .line 116
    invoke-virtual {v0, v15, v14}, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;->frame(II)Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;

    move-result-object v6

    .line 119
    .local v6, "frame":Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;
    iget v11, v6, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;->vramTile:I

    const v18, 0xf800

    and-int v11, v11, v18

    if-nez v11, :cond_3

    iget v11, v6, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;->vramTile:I

    mul-int/lit8 v4, v14, 0x4

    add-int/lit16 v4, v4, 0x58b

    if-ne v11, v4, :cond_3

    .line 115
    .end local v6    # "frame":Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;
    add-int/lit8 v15, v15, 0x1

    const/16 v4, 0xe

    const/4 v6, 0x2

    const/4 v11, 0x5

    goto :goto_4

    .line 120
    .restart local v6    # "frame":Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;
    :cond_3
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Razor verified sprite attributes unexpectedly changed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 122
    .end local v6    # "frame":Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;
    .end local v15    # "group":I
    :cond_4
    invoke-virtual {v0, v9, v14}, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;->frame(II)Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;->pixelsCopy()[B

    move-result-object v4

    aput-object v4, v12, v14

    .line 114
    add-int/lit8 v14, v14, 0x1

    const/16 v4, 0xe

    const/4 v6, 0x2

    const/4 v11, 0x5

    goto :goto_3

    .line 126
    .end local v14    # "pose":I
    :cond_5
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    move-object v14, v4

    .line 127
    .local v14, "tFacing":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    move-object v15, v4

    .line 128
    .local v15, "rFacing":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "trikes":I
    const/4 v6, 0x0

    .line 129
    .local v6, "raiders":I
    invoke-virtual {v1}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->allMissions()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    .line 130
    .local v11, "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    nop

    .line 131
    invoke-virtual {v11}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioBytes()[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder;->decode([B)Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;

    move-result-object v16

    .line 132
    .local v16, "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    invoke-virtual/range {v16 .. v16}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->records()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v3, v19

    check-cast v3, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;

    .line 133
    .local v3, "rec":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    iget v10, v3, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->section:I

    const/16 v8, 0x8

    if-eq v10, v8, :cond_6

    const/16 v20, 0x1

    goto :goto_9

    .line 134
    :cond_6
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v10

    const/4 v8, 0x4

    .local v10, "type":I
    invoke-virtual {v3, v8}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v19

    .line 136
    .local v19, "facing":I
    const/16 v8, 0xd

    if-ne v10, v8, :cond_7

    add-int/lit8 v4, v4, 0x1

    move-object v8, v14

    .local v8, "counts":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_7

    .line 137
    .end local v8    # "counts":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_7
    const/16 v8, 0xe

    if-ne v10, v8, :cond_9

    add-int/lit8 v6, v6, 0x1

    move-object v8, v15

    .line 139
    .restart local v8    # "counts":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_7
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 140
    .local v2, "prev":Ljava/lang/Integer;
    move-object/from16 v21, v2

    .end local v2    # "prev":Ljava/lang/Integer;
    .local v21, "prev":Ljava/lang/Integer;
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v21, :cond_8

    const/16 v20, 0x1

    const/16 v22, 0x1

    goto :goto_8

    :cond_8
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v20, 0x1

    add-int/lit8 v22, v22, 0x1

    :goto_8
    move-object/from16 v23, v3

    .end local v3    # "rec":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    .local v23, "rec":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .end local v8    # "counts":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v10    # "type":I
    .end local v19    # "facing":I
    .end local v21    # "prev":Ljava/lang/Integer;
    .end local v23    # "rec":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    const/16 v3, 0xd

    const/4 v10, 0x4

    move-object/from16 v2, p0

    move/from16 v8, v20

    goto :goto_6

    .line 137
    .restart local v3    # "rec":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    .restart local v10    # "type":I
    .restart local v19    # "facing":I
    :cond_9
    move-object/from16 v23, v3

    const/16 v20, 0x1

    .line 132
    .end local v3    # "rec":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    .end local v10    # "type":I
    .end local v19    # "facing":I
    :goto_9
    const/16 v3, 0xd

    const/4 v10, 0x4

    move-object/from16 v2, p0

    move/from16 v8, v20

    goto :goto_6

    :cond_a
    move/from16 v20, v8

    .line 142
    .end local v11    # "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .end local v16    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    const/16 v3, 0xd

    const/4 v10, 0x4

    move-object/from16 v2, p0

    goto/16 :goto_5

    .line 143
    :cond_b
    new-instance v3, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;

    iget v2, v0, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;->variant:I

    iget-object v8, v13, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->paletteSha256:Ljava/lang/String;

    move-object v10, v7

    .end local v7    # "words":[[I
    .local v10, "words":[[I
    iget v7, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->missionsDecoded:I

    move-object v9, v8

    new-instance v8, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;

    const/4 v11, 0x0

    move-object/from16 v16, v0

    const/16 v0, 0xd

    .end local v0    # "cfg":Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;
    .local v16, "cfg":Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;
    invoke-direct {v8, v0, v4, v14, v11}, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;-><init>(IILjava/util/TreeMap;Lcom/ahsim/demulation/RazorSpritePalettePoseAudit-IA;)V

    move-object v0, v9

    new-instance v9, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;

    move-object/from16 v17, v0

    const/16 v0, 0xe

    invoke-direct {v9, v0, v6, v15, v11}, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;-><init>(IILjava/util/TreeMap;Lcom/ahsim/demulation/RazorSpritePalettePoseAudit-IA;)V

    move-object v11, v12

    .end local v12    # "poses":[[B
    .local v11, "poses":[[B
    const/4 v12, 0x0

    move v0, v4

    move v4, v2

    move v2, v6

    move-object/from16 v6, v17

    .end local v4    # "trikes":I
    .end local v6    # "raiders":I
    .local v0, "trikes":I
    .local v2, "raiders":I
    invoke-direct/range {v3 .. v12}, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;-><init>(ILjava/lang/String;Ljava/lang/String;ILcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;[[I[[BLcom/ahsim/demulation/RazorSpritePalettePoseAudit-IA;)V

    return-object v3

    .line 107
    .end local v2    # "raiders":I
    .end local v10    # "words":[[I
    .end local v11    # "poses":[[B
    .end local v14    # "tFacing":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v15    # "rFacing":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v16    # "cfg":Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;
    .local v0, "cfg":Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;
    :cond_c
    move-object/from16 v16, v0

    .end local v0    # "cfg":Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;
    .restart local v16    # "cfg":Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;
    goto :goto_a

    .line 106
    .end local v16    # "cfg":Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;
    .restart local v0    # "cfg":Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;
    :cond_d
    move-object/from16 v16, v0

    .end local v0    # "cfg":Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;
    .restart local v16    # "cfg":Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;
    goto :goto_a

    .line 105
    .end local v16    # "cfg":Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;
    .restart local v0    # "cfg":Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;
    :cond_e
    move-object/from16 v16, v0

    .line 108
    .end local v0    # "cfg":Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;
    .restart local v16    # "cfg":Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;
    :goto_a
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Razor sprite identity conflicts with ROM source"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
