.class public final Lcom/ahsim/demulation/RomGraphicsVisualComparator;
.super Ljava/lang/Object;
.source "RomGraphicsVisualComparator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;,
        Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;,
        Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkSceneShapes([B[B[B)V
    .locals 2
    .param p0, "patterns"    # [B
    .param p1, "desc"    # [B
    .param p2, "colors"    # [B

    .line 93
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p0

    const/16 v1, 0x7340

    if-lt v0, v1, :cond_0

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    array-length v0, p1

    const/16 v1, 0x2d40

    if-ne v0, v1, :cond_0

    array-length v0, p2

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 98
    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an original-layout terrain scene"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static compare(Ljava/lang/String;[B[B)Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;
    .locals 16
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "base"    # [B
    .param p2, "candidate"    # [B

    .line 120
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    if-eqz p0, :cond_19

    if-eqz v12, :cond_19

    if-eqz v13, :cond_19

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "diffBytes":I
    array-length v1, v12

    array-length v2, v13

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 125
    .local v14, "common":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v14, :cond_1

    .line 126
    aget-byte v2, v12, v1

    aget-byte v3, v13, v1

    if-eq v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 125
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "i":I
    :cond_1
    array-length v1, v12

    array-length v2, v13

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int v5, v0, v1

    .line 129
    .end local v0    # "diffBytes":I
    .local v5, "diffBytes":I
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez v5, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    move v15, v3

    .line 131
    .local v15, "sameBytes":Z
    array-length v2, v12

    array-length v3, v13

    if-eq v2, v3, :cond_3

    .line 132
    new-instance v0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;

    sget-object v2, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;->UNDECODED:Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

    array-length v1, v12

    array-length v3, v13

    .line 133
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    array-length v1, v12

    array-length v3, v13

    .line 134
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v5

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;-><init>(Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;ZZIIIIIILcom/ahsim/demulation/RomGraphicsVisualComparator-IA;)V

    .line 132
    move-object v2, v1

    return-object v0

    .line 137
    :cond_3
    move-object/from16 v2, p0

    const-string v3, "terrain/palette.bin"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    array-length v3, v12

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 138
    const/4 v3, 0x0

    .line 139
    .local v3, "changedColors":I
    const/4 v4, 0x0

    move v7, v3

    .end local v3    # "changedColors":I
    .local v4, "i":I
    .local v7, "changedColors":I
    :goto_2
    const/16 v3, 0x40

    if-ge v4, v3, :cond_5

    .line 140
    mul-int/lit8 v3, v4, 0x2

    aget-byte v3, v12, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    mul-int/lit8 v6, v4, 0x2

    add-int/2addr v6, v1

    aget-byte v6, v12, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v3, v6

    .line 141
    .local v3, "a":I
    mul-int/lit8 v6, v4, 0x2

    aget-byte v6, v13, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    mul-int/lit8 v8, v4, 0x2

    add-int/2addr v8, v1

    aget-byte v8, v13, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v6, v8

    .line 143
    .local v6, "b":I
    and-int/lit16 v8, v3, 0xeee

    and-int/lit16 v9, v6, 0xeee

    if-eq v8, v9, :cond_4

    add-int/lit8 v7, v7, 0x1

    .line 139
    .end local v3    # "a":I
    .end local v6    # "b":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 145
    .end local v4    # "i":I
    :cond_5
    move v3, v0

    new-instance v0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;

    sget-object v2, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;->COLORS:Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

    if-nez v7, :cond_6

    move v4, v1

    goto :goto_3

    :cond_6
    move v4, v3

    :goto_3
    array-length v6, v12

    const/16 v10, 0x40

    const/4 v11, 0x0

    const/16 v8, 0x40

    move v9, v7

    move-object/from16 v1, p0

    move v3, v15

    .end local v15    # "sameBytes":Z
    .local v3, "sameBytes":Z
    invoke-direct/range {v0 .. v11}, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;-><init>(Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;ZZIIIIIILcom/ahsim/demulation/RomGraphicsVisualComparator-IA;)V

    move-object v2, v1

    move-object v1, v0

    move v0, v3

    .end local v3    # "sameBytes":Z
    .local v0, "sameBytes":Z
    return-object v1

    .line 137
    .end local v0    # "sameBytes":Z
    .end local v7    # "changedColors":I
    .restart local v15    # "sameBytes":Z
    :cond_7
    move v3, v0

    move v0, v15

    .line 149
    .end local v15    # "sameBytes":Z
    .restart local v0    # "sameBytes":Z
    const/4 v4, 0x0

    .line 150
    .local v4, "frameBytes":I
    const-string v6, "terrain/patterns.bin"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 151
    const-string v6, "tactical/static_patterns_922_2047.bin"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 152
    const-string v6, "tactical/dynamic_patterns.bin"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 153
    const-string v6, "tactical/placement_grid_patterns.bin"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    const/16 v4, 0x20

    .line 154
    :cond_9
    const-string v6, "world/structure_beacon_patterns.bin"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v4, 0x80

    .line 155
    :cond_a
    const-string v6, "radar/transition_quadrants.bin"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/16 v4, 0x200

    :cond_b
    move v15, v4

    .line 156
    .end local v4    # "frameBytes":I
    .local v15, "frameBytes":I
    if-eqz v15, :cond_12

    array-length v4, v12

    rem-int/2addr v4, v15

    if-nez v4, :cond_12

    .line 157
    const/4 v4, 0x0

    .local v4, "changedPixels":I
    const/4 v6, 0x0

    .line 158
    .local v6, "changedFrames":I
    const/4 v7, 0x0

    move v9, v4

    move v4, v7

    move v7, v6

    .end local v6    # "changedFrames":I
    .local v4, "chunk":I
    .local v7, "changedFrames":I
    .local v9, "changedPixels":I
    :goto_4
    array-length v6, v12

    if-ge v4, v6, :cond_10

    .line 159
    const/4 v6, 0x0

    .line 160
    .local v6, "frameChanged":Z
    move v8, v4

    .local v8, "b":I
    :goto_5
    add-int v10, v4, v15

    if-ge v8, v10, :cond_e

    .line 161
    aget-byte v10, v12, v8

    and-int/lit16 v10, v10, 0xff

    .local v10, "x":I
    aget-byte v11, v13, v8

    and-int/lit16 v11, v11, 0xff

    .line 162
    .local v11, "y":I
    and-int/lit8 v1, v10, 0xf

    and-int/lit8 v3, v11, 0xf

    if-eq v1, v3, :cond_c

    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x1

    .line 163
    :cond_c
    ushr-int/lit8 v1, v10, 0x4

    ushr-int/lit8 v3, v11, 0x4

    if-eq v1, v3, :cond_d

    add-int/lit8 v9, v9, 0x1

    const/4 v1, 0x1

    move v6, v1

    .line 160
    .end local v10    # "x":I
    .end local v11    # "y":I
    :cond_d
    add-int/lit8 v8, v8, 0x1

    const/4 v1, 0x1

    const/4 v3, 0x0

    goto :goto_5

    .line 165
    .end local v8    # "b":I
    :cond_e
    if-eqz v6, :cond_f

    add-int/lit8 v7, v7, 0x1

    .line 158
    .end local v6    # "frameChanged":Z
    :cond_f
    add-int/2addr v4, v15

    const/4 v1, 0x1

    const/4 v3, 0x0

    goto :goto_4

    .line 167
    .end local v4    # "chunk":I
    :cond_10
    move v3, v0

    .end local v0    # "sameBytes":Z
    .restart local v3    # "sameBytes":Z
    new-instance v0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;

    sget-object v2, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;->PIXELS:Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

    if-nez v9, :cond_11

    const/4 v4, 0x1

    goto :goto_6

    :cond_11
    const/4 v4, 0x0

    :goto_6
    array-length v6, v12

    array-length v1, v12

    div-int v8, v1, v15

    array-length v1, v12

    mul-int/lit8 v10, v1, 0x2

    const/4 v11, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;-><init>(Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;ZZIIIIIILcom/ahsim/demulation/RomGraphicsVisualComparator-IA;)V

    return-object v0

    .line 156
    .end local v3    # "sameBytes":Z
    .end local v7    # "changedFrames":I
    .end local v9    # "changedPixels":I
    .restart local v0    # "sameBytes":Z
    :cond_12
    move v3, v0

    move-object v1, v2

    .line 172
    .end local v0    # "sameBytes":Z
    .restart local v3    # "sameBytes":Z
    const-string v0, "terrain/metatile_descriptors.bin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    array-length v0, v12

    rem-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_18

    .line 173
    const/4 v0, 0x0

    .local v0, "alteredWords":I
    const/4 v2, 0x0

    .line 174
    .local v2, "alteredMetatiles":I
    const/4 v4, 0x0

    move v9, v0

    move v7, v2

    .end local v0    # "alteredWords":I
    .end local v2    # "alteredMetatiles":I
    .restart local v4    # "chunk":I
    .local v7, "alteredMetatiles":I
    .local v9, "alteredWords":I
    :goto_7
    array-length v0, v12

    if-ge v4, v0, :cond_17

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "altered":Z
    move v2, v4

    .local v2, "offset":I
    :goto_8
    add-int/lit8 v6, v4, 0x20

    if-ge v2, v6, :cond_15

    .line 177
    aget-byte v6, v12, v2

    aget-byte v8, v13, v2

    if-ne v6, v8, :cond_13

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v12, v6

    add-int/lit8 v8, v2, 0x1

    aget-byte v8, v13, v8

    if-eq v6, v8, :cond_14

    .line 178
    :cond_13
    add-int/lit8 v9, v9, 0x1

    .line 179
    const/4 v0, 0x1

    .line 176
    :cond_14
    add-int/lit8 v2, v2, 0x2

    goto :goto_8

    .line 182
    .end local v2    # "offset":I
    :cond_15
    if-eqz v0, :cond_16

    add-int/lit8 v7, v7, 0x1

    .line 174
    .end local v0    # "altered":Z
    :cond_16
    add-int/lit8 v4, v4, 0x20

    goto :goto_7

    .line 186
    .end local v4    # "chunk":I
    :cond_17
    new-instance v0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;

    sget-object v2, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;->METATILE_ATTRIBUTES:Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

    array-length v6, v12

    array-length v4, v12

    div-int/lit8 v8, v4, 0x20

    array-length v4, v12

    div-int/lit8 v10, v4, 0x2

    const/4 v11, 0x0

    move v4, v3

    invoke-direct/range {v0 .. v11}, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;-><init>(Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;ZZIIIIIILcom/ahsim/demulation/RomGraphicsVisualComparator-IA;)V

    return-object v0

    .line 193
    .end local v7    # "alteredMetatiles":I
    .end local v9    # "alteredWords":I
    :cond_18
    new-instance v0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;

    sget-object v2, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;->UNDECODED:Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

    array-length v6, v12

    array-length v10, v12

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v4, v3

    move v9, v5

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;-><init>(Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;ZZIIIIIILcom/ahsim/demulation/RomGraphicsVisualComparator-IA;)V

    return-object v0

    .line 121
    .end local v3    # "sameBytes":Z
    .end local v5    # "diffBytes":I
    .end local v14    # "common":I
    .end local v15    # "frameBytes":I
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Graphics comparison requires a valid path and two files"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static compareTerrainScenes([B[B[B[B[B[B)Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;
    .locals 17
    .param p0, "basePatterns"    # [B
    .param p1, "baseDescriptors"    # [B
    .param p2, "basePalette"    # [B
    .param p3, "modPatterns"    # [B
    .param p4, "modDescriptors"    # [B
    .param p5, "modPalette"    # [B

    .line 65
    invoke-static/range {p0 .. p2}, Lcom/ahsim/demulation/RomGraphicsVisualComparator;->checkSceneShapes([B[B[B)V

    .line 66
    invoke-static/range {p3 .. p5}, Lcom/ahsim/demulation/RomGraphicsVisualComparator;->checkSceneShapes([B[B[B)V

    .line 67
    const/4 v0, 0x0

    .local v0, "changedMetatiles":I
    const/4 v1, 0x0

    .line 68
    .local v1, "changedPixels":I
    const/4 v2, 0x0

    .local v2, "tile":I
    :goto_0
    const/16 v3, 0x16a

    if-ge v2, v3, :cond_6

    .line 69
    const/4 v3, 0x0

    .line 70
    .local v3, "tileChanged":Z
    const/4 v4, 0x0

    .local v4, "my":I
    :goto_1
    const/4 v5, 0x4

    if-ge v4, v5, :cond_4

    .line 71
    const/4 v6, 0x0

    .local v6, "mx":I
    :goto_2
    if-ge v6, v5, :cond_3

    .line 72
    mul-int/lit8 v7, v2, 0x20

    mul-int/lit8 v8, v4, 0x4

    add-int/2addr v8, v6

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    .line 73
    .local v7, "o":I
    aget-byte v8, p1, v7

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0x8

    shl-int/2addr v8, v9

    add-int/lit8 v10, v7, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v8, v10

    .line 74
    .local v8, "a":I
    aget-byte v10, p4, v7

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v9

    add-int/lit8 v11, v7, 0x1

    aget-byte v11, p4, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    .line 75
    .local v10, "b":I
    const/4 v11, 0x0

    .local v11, "y":I
    :goto_3
    if-ge v11, v9, :cond_2

    .line 76
    const/4 v12, 0x0

    .local v12, "x":I
    :goto_4
    if-ge v12, v9, :cond_1

    .line 77
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    invoke-static {v13, v14, v8, v12, v11}, Lcom/ahsim/demulation/RomGraphicsVisualComparator;->terrainPixel([B[BIII)I

    move-result v15

    .line 78
    .local v15, "colorA":I
    move-object/from16 v5, p3

    move-object/from16 v9, p5

    move/from16 v16, v1

    .end local v1    # "changedPixels":I
    .local v16, "changedPixels":I
    invoke-static {v5, v9, v10, v12, v11}, Lcom/ahsim/demulation/RomGraphicsVisualComparator;->terrainPixel([B[BIII)I

    move-result v1

    .line 79
    .local v1, "colorB":I
    if-eq v15, v1, :cond_0

    .line 80
    add-int/lit8 v16, v16, 0x1

    .line 81
    const/4 v3, 0x1

    move/from16 v1, v16

    goto :goto_5

    .line 79
    :cond_0
    move/from16 v1, v16

    .line 76
    .end local v15    # "colorA":I
    .end local v16    # "changedPixels":I
    .local v1, "changedPixels":I
    :goto_5
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x4

    const/16 v9, 0x8

    goto :goto_4

    :cond_1
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v5, p3

    move-object/from16 v9, p5

    move/from16 v16, v1

    .line 75
    .end local v1    # "changedPixels":I
    .end local v12    # "x":I
    .restart local v16    # "changedPixels":I
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x4

    const/16 v9, 0x8

    goto :goto_3

    .end local v16    # "changedPixels":I
    .restart local v1    # "changedPixels":I
    :cond_2
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v5, p3

    move-object/from16 v9, p5

    .line 71
    .end local v7    # "o":I
    .end local v8    # "a":I
    .end local v10    # "b":I
    .end local v11    # "y":I
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x4

    goto :goto_2

    :cond_3
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v5, p3

    move-object/from16 v9, p5

    .line 70
    .end local v6    # "mx":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v5, p3

    move-object/from16 v9, p5

    .line 87
    .end local v4    # "my":I
    if-eqz v3, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 68
    .end local v3    # "tileChanged":Z
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v5, p3

    move-object/from16 v9, p5

    .line 89
    .end local v2    # "tile":I
    new-instance v2, Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;-><init>(IILcom/ahsim/demulation/RomGraphicsVisualComparator-IA;)V

    return-object v2
.end method

.method private static terrainPixel([B[BIII)I
    .locals 9
    .param p0, "patterns"    # [B
    .param p1, "colors"    # [B
    .param p2, "attr"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 102
    and-int/lit16 v0, p2, 0x7ff

    .line 103
    .local v0, "tileIndex":I
    mul-int/lit8 v1, v0, 0x20

    .line 104
    .local v1, "ofs":I
    array-length v2, p0

    add-int/lit8 v2, v2, -0x20

    if-gt v1, v2, :cond_3

    .line 106
    and-int/lit16 v2, p2, 0x800

    if-eqz v2, :cond_0

    rsub-int/lit8 v2, p3, 0x7

    goto :goto_0

    :cond_0
    move v2, p3

    .line 107
    .local v2, "sx":I
    :goto_0
    and-int/lit16 v3, p2, 0x1000

    if-eqz v3, :cond_1

    rsub-int/lit8 v3, p4, 0x7

    goto :goto_1

    :cond_1
    move v3, p4

    .line 108
    .local v3, "sy":I
    :goto_1
    mul-int/lit8 v4, v3, 0x4

    add-int/2addr v4, v1

    div-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    .line 109
    .local v4, "packed":I
    ushr-int/lit8 v5, p2, 0xd

    and-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x10

    .line 110
    and-int/lit8 v6, v2, 0x1

    if-nez v6, :cond_2

    ushr-int/lit8 v6, v4, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v6, v4, 0xf

    :goto_2
    add-int/2addr v5, v6

    .line 111
    .local v5, "paletteIndex":I
    mul-int/lit8 v6, v5, 0x2

    .line 112
    .local v6, "colorOffset":I
    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, v6, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    and-int/lit16 v7, v7, 0xeee

    return v7

    .line 105
    .end local v2    # "sx":I
    .end local v3    # "sy":I
    .end local v4    # "packed":I
    .end local v5    # "paletteIndex":I
    .end local v6    # "colorOffset":I
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Metatile has out-of-range pattern index"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
