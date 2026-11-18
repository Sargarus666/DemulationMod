.class public final Lcom/ahsim/demulation/RazorTerrainScenePreview;
.super Ljava/lang/Object;
.source "RazorTerrainScenePreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;
    }
.end annotation


# static fields
.field public static final MAX_CROP_TILES:I = 0x20

.field public static final TILE_PIXELS:I = 0x20


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static render(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;IIIIIII)Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;
    .locals 22
    .param p0, "audit"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .param p3, "paletteVariant"    # I
    .param p4, "startX"    # I
    .param p5, "startY"    # I
    .param p6, "tileWidth"    # I
    .param p7, "tileHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    move-object/from16 v0, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    if-eqz v0, :cond_9

    if-ltz v4, :cond_9

    const/4 v1, 0x4

    if-ge v4, v1, :cond_9

    .line 145
    if-lez v7, :cond_8

    if-lez v8, :cond_8

    const/16 v1, 0x20

    if-gt v7, v1, :cond_8

    if-gt v8, v1, :cond_8

    if-ltz v5, :cond_8

    if-ltz v6, :cond_8

    .line 148
    invoke-virtual/range {p0 .. p2}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->mapInfo(II)Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;

    move-result-object v9

    .line 149
    .local v9, "info":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    iget-boolean v2, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->centeredCompact:Z

    if-nez v2, :cond_7

    .line 151
    iget v2, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->storedSide:I

    iget v3, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->scenarioWidth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 152
    .local v12, "maxW":I
    iget v2, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->storedSide:I

    iget v3, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->scenarioHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 153
    .local v13, "maxH":I
    sub-int v2, v12, v7

    if-gt v5, v2, :cond_6

    sub-int v2, v13, v8

    if-gt v6, v2, :cond_6

    .line 155
    invoke-virtual/range {p0 .. p2}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->directMapCopy(II)[B

    move-result-object v14

    .line 156
    .local v14, "map":[B
    array-length v2, v14

    iget v3, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->storedSide:I

    iget v10, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->storedSide:I

    mul-int/2addr v3, v10

    if-ne v2, v3, :cond_5

    .line 158
    const/16 v2, 0x100

    new-array v15, v2, [[I

    .line 159
    .local v15, "cache":[[I
    mul-int/lit8 v16, v7, 0x20

    .line 160
    .local v16, "pxW":I
    mul-int v2, v16, v8

    mul-int/2addr v2, v1

    new-array v10, v2, [I

    .line 161
    .local v10, "pixels":[I
    const/4 v2, 0x0

    .local v2, "ty":I
    :goto_0
    if-ge v2, v8, :cond_4

    .line 162
    add-int v3, v6, v2

    iget v11, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->storedSide:I

    mul-int/2addr v3, v11

    add-int/2addr v3, v5

    .line 163
    .local v3, "sourceRow":I
    const/4 v11, 0x0

    .local v11, "tx":I
    :goto_1
    if-ge v11, v7, :cond_3

    .line 164
    add-int v17, v3, v11

    aget-byte v1, v14, v17

    and-int/lit16 v1, v1, 0xff

    .line 165
    .local v1, "metatile":I
    aget-object v17, v15, v1

    if-nez v17, :cond_0

    .line 166
    invoke-virtual {v0, v4, v1}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->decodeOriginalMetatile(II)[I

    move-result-object v17

    aput-object v17, v15, v1

    .line 167
    :cond_0
    aget-object v0, v15, v1

    .line 168
    .local v0, "tile":[I
    move/from16 v17, v1

    .end local v1    # "metatile":I
    .local v17, "metatile":I
    array-length v1, v0

    move/from16 v18, v2

    .end local v2    # "ty":I
    .local v18, "ty":I
    const/16 v2, 0x400

    if-ne v1, v2, :cond_2

    .line 170
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_2
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 171
    mul-int/lit8 v2, v1, 0x20

    mul-int/lit8 v19, v18, 0x20

    add-int v19, v19, v1

    mul-int v19, v19, v16

    mul-int/lit8 v20, v11, 0x20

    move/from16 v21, v1

    .end local v1    # "y":I
    .local v21, "y":I
    add-int v1, v19, v20

    move/from16 v19, v3

    const/16 v3, 0x20

    .end local v3    # "sourceRow":I
    .local v19, "sourceRow":I
    invoke-static {v0, v2, v10, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    add-int/lit8 v1, v21, 0x1

    move/from16 v3, v19

    .end local v21    # "y":I
    .restart local v1    # "y":I
    goto :goto_2

    .end local v19    # "sourceRow":I
    .restart local v3    # "sourceRow":I
    :cond_1
    move/from16 v21, v1

    move/from16 v19, v3

    move v3, v2

    .line 163
    .end local v0    # "tile":[I
    .end local v1    # "y":I
    .end local v3    # "sourceRow":I
    .end local v17    # "metatile":I
    .restart local v19    # "sourceRow":I
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move v1, v3

    move/from16 v2, v18

    move/from16 v3, v19

    goto :goto_1

    .line 169
    .end local v19    # "sourceRow":I
    .restart local v0    # "tile":[I
    .restart local v3    # "sourceRow":I
    .restart local v17    # "metatile":I
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Authenticated metatile decoder returned invalid dimensions"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    .end local v0    # "tile":[I
    .end local v17    # "metatile":I
    .end local v18    # "ty":I
    .restart local v2    # "ty":I
    :cond_3
    move/from16 v18, v2

    move/from16 v19, v3

    move v3, v1

    .line 161
    .end local v2    # "ty":I
    .end local v3    # "sourceRow":I
    .end local v11    # "tx":I
    .restart local v18    # "ty":I
    add-int/lit8 v2, v18, 0x1

    move-object/from16 v0, p0

    .end local v18    # "ty":I
    .restart local v2    # "ty":I
    goto :goto_0

    :cond_4
    move/from16 v18, v2

    .line 175
    .end local v2    # "ty":I
    new-instance v1, Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;

    const/4 v11, 0x0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v11}, Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;-><init>(IIIIIIILcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;[ILcom/ahsim/demulation/RazorTerrainScenePreview-IA;)V

    return-object v1

    .line 157
    .end local v10    # "pixels":[I
    .end local v15    # "cache":[[I
    .end local v16    # "pxW":I
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor map grid size changed after verification"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    .end local v14    # "map":[B
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor scene viewport outside validated direct map"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    .end local v12    # "maxW":I
    .end local v13    # "maxH":I
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Raw direct-map preview excludes centred 32x32 compact maps"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    .end local v9    # "info":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor scene viewport outside supported crop range"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor scene requires an authenticated source and palette 0..3"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static renderOriginalLoaded(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;IIIIIII)Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;
    .locals 27
    .param p0, "audit"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .param p3, "paletteVariant"    # I
    .param p4, "startX"    # I
    .param p5, "startY"    # I
    .param p6, "tileWidth"    # I
    .param p7, "tileHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    move-object/from16 v0, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    if-eqz v0, :cond_7

    if-ltz v4, :cond_7

    const/4 v1, 0x4

    if-ge v4, v1, :cond_7

    if-lez v7, :cond_7

    if-lez v8, :cond_7

    const/16 v1, 0x20

    if-gt v7, v1, :cond_7

    if-gt v8, v1, :cond_7

    if-ltz v5, :cond_7

    if-ltz v6, :cond_7

    .line 70
    invoke-virtual/range {p0 .. p2}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->mapInfo(II)Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;

    move-result-object v9

    .line 71
    .local v9, "info":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    iget v12, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedStartX:I

    .local v12, "minX":I
    iget v13, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedStartY:I

    .line 72
    .local v13, "minY":I
    iget v2, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->scenarioWidth:I

    iget v3, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedWidth:I

    add-int/2addr v3, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 73
    .local v14, "maxX":I
    iget v2, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->scenarioHeight:I

    iget v3, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedHeight:I

    add-int/2addr v3, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 74
    .local v15, "maxY":I
    if-lt v5, v12, :cond_6

    if-lt v6, v13, :cond_6

    sub-int v2, v14, v7

    if-gt v5, v2, :cond_6

    sub-int v2, v15, v8

    if-gt v6, v2, :cond_6

    .line 79
    iget-boolean v2, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->centeredCompact:Z

    if-eqz v2, :cond_0

    .line 80
    invoke-virtual/range {p0 .. p2}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->compactSourceCopy(II)[B

    move-result-object v2

    .line 81
    .local v2, "grid":[B
    const/16 v3, 0x20

    .local v3, "stride":I
    const/16 v10, 0x10

    .local v10, "originX":I
    const/16 v11, 0x10

    move-object/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v10

    move/from16 v19, v11

    .local v11, "originY":I
    goto :goto_0

    .line 83
    .end local v2    # "grid":[B
    .end local v3    # "stride":I
    .end local v10    # "originX":I
    .end local v11    # "originY":I
    :cond_0
    invoke-virtual/range {p0 .. p2}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->directMapCopy(II)[B

    move-result-object v2

    .line 84
    .restart local v2    # "grid":[B
    iget v3, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->storedSide:I

    .restart local v3    # "stride":I
    const/4 v10, 0x0

    .restart local v10    # "originX":I
    const/4 v11, 0x0

    move-object/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v10

    move/from16 v19, v11

    .line 86
    .end local v2    # "grid":[B
    .end local v3    # "stride":I
    .end local v10    # "originX":I
    .local v16, "grid":[B
    .local v17, "stride":I
    .local v18, "originX":I
    .local v19, "originY":I
    :goto_0
    mul-int/lit8 v2, v7, 0x20

    mul-int/2addr v2, v8

    mul-int/2addr v2, v1

    new-array v10, v2, [I

    .line 87
    .local v10, "out":[I
    const/16 v2, 0x100

    new-array v2, v2, [[I

    .line 88
    .local v2, "cache":[[I
    mul-int/lit8 v20, v7, 0x20

    .line 89
    .local v20, "width":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v8, :cond_5

    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v7, :cond_4

    .line 90
    add-int v21, v6, v3

    sub-int v21, v21, v19

    mul-int v21, v21, v17

    add-int v21, v21, v5

    add-int v21, v21, v11

    sub-int v21, v21, v18

    aget-byte v1, v16, v21

    and-int/lit16 v1, v1, 0xff

    .line 92
    .local v1, "raw":I
    nop

    .line 93
    move-object/from16 v21, v2

    .end local v2    # "cache":[[I
    .local v21, "cache":[[I
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->originalMapRemapEnabled()Z

    move-result v2

    .line 92
    invoke-static {v1, v2}, Lcom/ahsim/demulation/RazorCompactMapPlacement;->loadedTile(IZ)I

    move-result v2

    .line 94
    .local v2, "metatile":I
    aget-object v22, v21, v2

    .line 95
    .local v22, "tile":[I
    if-nez v22, :cond_2

    .line 96
    move/from16 v23, v1

    .end local v1    # "raw":I
    .local v23, "raw":I
    invoke-virtual {v0, v4, v2}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->decodeOriginalMetatile(II)[I

    move-result-object v1

    .line 97
    .end local v22    # "tile":[I
    .local v1, "tile":[I
    array-length v0, v1

    move-object/from16 v22, v1

    .end local v1    # "tile":[I
    .restart local v22    # "tile":[I
    const/16 v1, 0x400

    if-ne v0, v1, :cond_1

    .line 98
    aput-object v22, v21, v2

    move-object/from16 v0, v22

    goto :goto_3

    .line 97
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid ROM metatile result"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    .end local v23    # "raw":I
    .local v1, "raw":I
    :cond_2
    move/from16 v23, v1

    .end local v1    # "raw":I
    .restart local v23    # "raw":I
    move-object/from16 v0, v22

    .line 100
    .end local v22    # "tile":[I
    .local v0, "tile":[I
    :goto_3
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_4
    move/from16 v22, v2

    const/16 v2, 0x20

    .end local v2    # "metatile":I
    .local v22, "metatile":I
    if-ge v1, v2, :cond_3

    .line 101
    mul-int/lit8 v2, v1, 0x20

    mul-int/lit8 v24, v3, 0x20

    add-int v24, v24, v1

    mul-int v24, v24, v20

    mul-int/lit8 v25, v11, 0x20

    move/from16 v26, v1

    .end local v1    # "y":I
    .local v26, "y":I
    add-int v1, v24, v25

    move/from16 v24, v3

    const/16 v3, 0x20

    .end local v3    # "j":I
    .local v24, "j":I
    invoke-static {v0, v2, v10, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    add-int/lit8 v1, v26, 0x1

    move/from16 v2, v22

    move/from16 v3, v24

    .end local v26    # "y":I
    .restart local v1    # "y":I
    goto :goto_4

    .end local v24    # "j":I
    .restart local v3    # "j":I
    :cond_3
    move/from16 v26, v1

    move/from16 v24, v3

    move v3, v2

    .line 89
    .end local v0    # "tile":[I
    .end local v1    # "y":I
    .end local v3    # "j":I
    .end local v22    # "metatile":I
    .end local v23    # "raw":I
    .restart local v24    # "j":I
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move v1, v3

    move-object/from16 v2, v21

    move/from16 v3, v24

    goto :goto_2

    .end local v21    # "cache":[[I
    .end local v24    # "j":I
    .local v2, "cache":[[I
    .restart local v3    # "j":I
    :cond_4
    move-object/from16 v21, v2

    move/from16 v24, v3

    move v3, v1

    .end local v2    # "cache":[[I
    .end local v3    # "j":I
    .end local v11    # "i":I
    .restart local v21    # "cache":[[I
    .restart local v24    # "j":I
    add-int/lit8 v0, v24, 0x1

    move v3, v0

    move-object/from16 v0, p0

    .end local v24    # "j":I
    .local v0, "j":I
    goto :goto_1

    .end local v0    # "j":I
    .end local v21    # "cache":[[I
    .restart local v2    # "cache":[[I
    .restart local v3    # "j":I
    :cond_5
    move-object/from16 v21, v2

    move/from16 v24, v3

    .line 103
    .end local v2    # "cache":[[I
    .end local v3    # "j":I
    .restart local v21    # "cache":[[I
    new-instance v1, Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;

    const/4 v11, 0x0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v11}, Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;-><init>(IIIIIIILcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;[ILcom/ahsim/demulation/RazorTerrainScenePreview-IA;)V

    return-object v1

    .line 76
    .end local v10    # "out":[I
    .end local v16    # "grid":[B
    .end local v17    # "stride":I
    .end local v18    # "originX":I
    .end local v19    # "originY":I
    .end local v20    # "width":I
    .end local v21    # "cache":[[I
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor terrain outside cells populated by ROM loader"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    .end local v9    # "info":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    .end local v12    # "minX":I
    .end local v13    # "minY":I
    .end local v14    # "maxX":I
    .end local v15    # "maxY":I
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid authenticated Razor map crop"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static renderVerifiedRam(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;IIIIIII)Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;
    .locals 19
    .param p0, "audit"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .param p3, "paletteVariant"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    move-object/from16 v0, p0

    move/from16 v4, p3

    move/from16 v7, p6

    move/from16 v8, p7

    if-eqz v0, :cond_6

    if-ltz v4, :cond_6

    const/4 v1, 0x4

    if-ge v4, v1, :cond_6

    .line 116
    invoke-virtual/range {p0 .. p2}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->offlineRendererInput(II)Lcom/ahsim/demulation/RazorTerrainRendererInput;

    move-result-object v1

    .line 117
    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual {v1, v5, v6, v7, v8}, Lcom/ahsim/demulation/RazorTerrainRendererInput;->completeFrame(IIII)Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;

    move-result-object v12

    .line 118
    .local v12, "frame":Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;
    invoke-virtual/range {p0 .. p2}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->mapInfo(II)Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;

    move-result-object v9

    .line 119
    .local v9, "info":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    mul-int/lit8 v1, v7, 0x20

    mul-int/2addr v1, v8

    const/16 v2, 0x20

    mul-int/2addr v1, v2

    new-array v10, v1, [I

    .line 120
    .local v10, "pixels":[I
    const/4 v1, 0x0

    .line 121
    .local v1, "rowTile":[I
    const/16 v3, 0x200

    new-array v13, v3, [[I

    .line 122
    .local v13, "cache":[[I
    mul-int/lit8 v14, v7, 0x20

    .line 123
    .local v14, "stride":I
    const/4 v3, 0x0

    move-object v15, v1

    .end local v1    # "rowTile":[I
    .local v3, "yy":I
    .local v15, "rowTile":[I
    :goto_0
    if-ge v3, v8, :cond_5

    const/4 v1, 0x0

    .local v1, "xx":I
    :goto_1
    if-ge v1, v7, :cond_4

    .line 124
    invoke-virtual {v12, v1, v3}, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->requireSurface(II)I

    move-result v11

    .line 125
    .local v11, "surface":I
    if-ltz v11, :cond_3

    array-length v2, v13

    if-ge v11, v2, :cond_3

    .line 127
    aget-object v2, v13, v11

    .line 128
    .end local v15    # "rowTile":[I
    .local v2, "rowTile":[I
    if-nez v2, :cond_1

    .line 129
    invoke-virtual {v0, v4, v11}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->decodeOriginalMetatile(II)[I

    move-result-object v2

    .line 130
    array-length v15, v2

    const/16 v0, 0x400

    if-ne v15, v0, :cond_0

    .line 131
    aput-object v2, v13, v11

    move-object v15, v2

    goto :goto_2

    .line 130
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v15, "Bad Razor metatile dimensions"

    invoke-direct {v0, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    move-object v15, v2

    .line 133
    .end local v2    # "rowTile":[I
    .restart local v15    # "rowTile":[I
    :goto_2
    const/4 v0, 0x0

    .local v0, "line":I
    :goto_3
    const/16 v2, 0x20

    if-ge v0, v2, :cond_2

    .line 134
    mul-int/lit8 v2, v0, 0x20

    mul-int/lit8 v16, v3, 0x20

    add-int v16, v16, v0

    mul-int v16, v16, v14

    mul-int/lit8 v17, v1, 0x20

    move/from16 v18, v0

    .end local v0    # "line":I
    .local v18, "line":I
    add-int v0, v16, v17

    move/from16 v16, v1

    const/16 v1, 0x20

    .end local v1    # "xx":I
    .local v16, "xx":I
    invoke-static {v15, v2, v10, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    add-int/lit8 v0, v18, 0x1

    move/from16 v1, v16

    .end local v18    # "line":I
    .restart local v0    # "line":I
    goto :goto_3

    .end local v16    # "xx":I
    .restart local v1    # "xx":I
    :cond_2
    move/from16 v18, v0

    move/from16 v16, v1

    move v1, v2

    .line 123
    .end local v0    # "line":I
    .end local v1    # "xx":I
    .end local v11    # "surface":I
    .restart local v16    # "xx":I
    add-int/lit8 v0, v16, 0x1

    move v1, v0

    move-object/from16 v0, p0

    .end local v16    # "xx":I
    .local v0, "xx":I
    goto :goto_1

    .line 125
    .end local v0    # "xx":I
    .restart local v1    # "xx":I
    .restart local v11    # "surface":I
    :cond_3
    move/from16 v16, v1

    .line 126
    .end local v1    # "xx":I
    .restart local v16    # "xx":I
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM RAM surface outside verified metatile bank"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    .end local v11    # "surface":I
    .end local v16    # "xx":I
    .restart local v1    # "xx":I
    :cond_4
    move/from16 v16, v1

    move v1, v2

    .end local v1    # "xx":I
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    .line 136
    .end local v3    # "yy":I
    :cond_5
    new-instance v1, Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;

    const/4 v11, 0x0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v11}, Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;-><init>(IIIIIIILcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;[ILcom/ahsim/demulation/RazorTerrainScenePreview-IA;)V

    return-object v1

    .line 115
    .end local v9    # "info":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    .end local v10    # "pixels":[I
    .end local v12    # "frame":Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;
    .end local v13    # "cache":[[I
    .end local v14    # "stride":I
    .end local v15    # "rowTile":[I
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid authenticated Razor render palette"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
