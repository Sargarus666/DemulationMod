.class public final Lcom/ahsim/demulation/GenesisTerrainArt;
.super Ljava/lang/Object;
.source "GenesisTerrainArt.java"


# static fields
.field private static final DUNEHACK_METATILE_COUNT:I = 0x168

.field private static final EXPECTED_COUNTS:[I

.field private static final EXPECTED_POINTERS:[I

.field private static final MAX_VRAM_PATTERN_COUNT:I = 0x800

.field private static final METATILES:I = 0x4adf0

.field public static final METATILE_COUNT:I = 0x16a

.field private static final PALETTE:I = 0xa6c98

.field public static final PATTERN_COUNT:I = 0x39a

.field private static final RADAR_COLOR_TABLE_LENGTH:I = 0x200

.field private static final RADAR_HOUSE_COLOR_TABLE:I = 0x5252

.field private static final RADAR_PALETTE_LINE:I = 0x2

.field private static final RADAR_TERRAIN_COLOR_TABLE:I = 0x525a

.field private static final RADAR_TRANSITION_FRAME_BYTES:I = 0x200

.field private static final RADAR_TRANSITION_FRAME_COUNT:I = 0xc

.field private static final RADAR_TRANSITION_FRAME_FIRST:I = 0x673d2

.field private static final RADAR_TRANSITION_FULL_PX:I = 0x40

.field private static final RADAR_TRANSITION_PALETTE_LINE:I = 0x0

.field private static final RADAR_TRANSITION_QUADRANT_PX:I = 0x20

.field private static final REFINERY_PAD_BOTTOM:[I

.field private static final REFINERY_PAD_TOP:[I

.field private static final RESOURCE_ENTRY:I = 0xc7cb2

.field private static final RESOURCE_ID:I = 0x4

.field private static final RESOURCE_TABLE:I = 0xc7c72

.field private static final STARPORT_PAD_0:[I

.field private static final STARPORT_PAD_1:[I

.field private static final STARPORT_PAD_2:[I

.field private static final STARPORT_PAD_3:[I

.field private static final STRUCTURE_BEACON_FRAME_BYTES:I = 0x80

.field private static final STRUCTURE_BEACON_FRAME_COUNT:I = 0x8

.field private static final STRUCTURE_BEACON_FRAME_FIRST:I = 0x6910

.field private static final STRUCTURE_BEACON_PATTERN_COUNT:I = 0x4

.field private static final STRUCTURE_BEACON_SIZE:I = 0x10

.field private static final TILE_TABLE:I = 0xbc506


# instance fields
.field private final descriptorFlipCount:I

.field private final fogOverlays:[Landroid/graphics/Bitmap;

.field private final impactOverlays:[Landroid/graphics/Bitmap;

.field private final installedMetatileCount:I

.field private final installedPatternCount:I

.field private final maxPatternIndex:I

.field private final metatileDescriptors:[B

.field private final metatiles:[Landroid/graphics/Bitmap;

.field private final palette:[I

.field private final patternBytes:[B

.field private final radarHouseColors:[I

.field private final radarTerrainColors:[I

.field private final radarTransitionFrames:[Landroid/graphics/Bitmap;

.field private final structureBeaconFrames:[[Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 80
    const/16 v0, 0x13a

    const/16 v1, 0x13c

    const/16 v2, 0x10a

    const/16 v3, 0x138

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/GenesisTerrainArt;->REFINERY_PAD_TOP:[I

    .line 81
    const/16 v0, 0x13b

    const/16 v1, 0x13d

    const/16 v2, 0x10d

    const/16 v3, 0x139

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/GenesisTerrainArt;->REFINERY_PAD_BOTTOM:[I

    .line 86
    const/16 v0, 0x130

    const/16 v1, 0x134

    const/16 v2, 0x103

    const/16 v3, 0x12c

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/GenesisTerrainArt;->STARPORT_PAD_0:[I

    .line 87
    const/16 v0, 0x131

    const/16 v1, 0x135

    const/16 v2, 0x104

    const/16 v3, 0x12d

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/GenesisTerrainArt;->STARPORT_PAD_1:[I

    .line 88
    const/16 v0, 0x132

    const/16 v1, 0x136

    const/16 v2, 0x106

    const/16 v3, 0x12e

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/GenesisTerrainArt;->STARPORT_PAD_2:[I

    .line 89
    const/16 v0, 0x133

    const/16 v1, 0x137

    const/16 v2, 0x107

    const/16 v3, 0x12f

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/GenesisTerrainArt;->STARPORT_PAD_3:[I

    .line 91
    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/ahsim/demulation/GenesisTerrainArt;->EXPECTED_COUNTS:[I

    .line 92
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ahsim/demulation/GenesisTerrainArt;->EXPECTED_POINTERS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x80
        0x80
        0x80
        0x80
        0x80
        0x80
        0x80
        0x1a
    .end array-data

    :array_1
    .array-data 4
        0xbc538
        0xbcd42
        0xbd774
        0xbe20c
        0xbed2c
        0xbf8f6
        0xc0500
        0xc0f90
    .end array-data
.end method

.method public constructor <init>(Lcom/ahsim/demulation/RomRuntimeWorldAssets;)V
    .locals 27
    .param p1, "assets"    # Lcom/ahsim/demulation/RomRuntimeWorldAssets;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/16 v2, 0x40

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->palette:[I

    .line 100
    const/16 v2, 0x16a

    new-array v3, v2, [Landroid/graphics/Bitmap;

    iput-object v3, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->metatiles:[Landroid/graphics/Bitmap;

    .line 103
    const/16 v3, 0xd

    new-array v3, v3, [Landroid/graphics/Bitmap;

    iput-object v3, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->impactOverlays:[Landroid/graphics/Bitmap;

    .line 104
    const/16 v3, 0x10

    new-array v4, v3, [Landroid/graphics/Bitmap;

    iput-object v4, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->fogOverlays:[Landroid/graphics/Bitmap;

    .line 105
    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v6, 0x1

    const/16 v7, 0x8

    aput v7, v5, v6

    const/4 v8, 0x0

    const/4 v9, 0x4

    aput v9, v5, v8

    const-class v10, Landroid/graphics/Bitmap;

    invoke-static {v10, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Landroid/graphics/Bitmap;

    iput-object v5, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->structureBeaconFrames:[[Landroid/graphics/Bitmap;

    .line 107
    const/16 v5, 0x200

    new-array v5, v5, [I

    iput-object v5, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->radarTerrainColors:[I

    .line 108
    new-array v5, v7, [I

    iput-object v5, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->radarHouseColors:[I

    .line 109
    const/16 v5, 0xc

    new-array v7, v5, [Landroid/graphics/Bitmap;

    iput-object v7, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->radarTransitionFrames:[Landroid/graphics/Bitmap;

    .line 181
    if-eqz v1, :cond_d

    .line 182
    const-string v7, "terrain/patterns.bin"

    invoke-virtual {v1, v7}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->read(Ljava/lang/String;)[B

    move-result-object v7

    iput-object v7, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->patternBytes:[B

    .line 183
    const-string v7, "terrain/metatile_descriptors.bin"

    invoke-virtual {v1, v7}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->read(Ljava/lang/String;)[B

    move-result-object v7

    iput-object v7, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->metatileDescriptors:[B

    .line 184
    const-string v7, "terrain/palette.bin"

    invoke-virtual {v1, v7}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->read(Ljava/lang/String;)[B

    move-result-object v7

    .line 185
    .local v7, "paletteBytes":[B
    const-string v10, "radar/color_tables.bin"

    invoke-virtual {v1, v10}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->read(Ljava/lang/String;)[B

    move-result-object v10

    .line 186
    .local v10, "radarColors":[B
    const-string v11, "radar/transition_quadrants.bin"

    invoke-virtual {v1, v11}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->read(Ljava/lang/String;)[B

    move-result-object v11

    .line 187
    .local v11, "radarTransition":[B
    const-string v12, "world/structure_beacon_patterns.bin"

    invoke-virtual {v1, v12}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->read(Ljava/lang/String;)[B

    move-result-object v12

    .line 188
    .local v12, "beaconPatterns":[B
    iget-object v13, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->patternBytes:[B

    array-length v13, v13

    and-int/lit8 v13, v13, 0x1f

    if-nez v13, :cond_c

    iget-object v13, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->metatileDescriptors:[B

    array-length v13, v13

    and-int/lit8 v13, v13, 0x1f

    if-nez v13, :cond_c

    array-length v13, v7

    const/16 v14, 0x80

    if-ne v13, v14, :cond_c

    array-length v13, v10

    const/16 v14, 0x205

    if-ne v13, v14, :cond_c

    array-length v13, v11

    const/16 v14, 0x1800

    if-ne v13, v14, :cond_c

    array-length v13, v12

    const/16 v14, 0x400

    if-ne v13, v14, :cond_c

    .line 195
    iget-object v13, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->patternBytes:[B

    array-length v13, v13

    div-int/lit8 v13, v13, 0x20

    .line 196
    .local v13, "providerPatternCount":I
    iget-object v14, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->metatileDescriptors:[B

    array-length v14, v14

    div-int/lit8 v14, v14, 0x20

    .line 197
    .local v14, "providerMetatileCount":I
    const/16 v15, 0x39a

    if-lt v13, v15, :cond_b

    const/16 v15, 0x800

    if-gt v13, v15, :cond_b

    if-eq v14, v2, :cond_0

    const/16 v15, 0x168

    if-ne v14, v15, :cond_b

    .line 202
    :cond_0
    iput v13, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->installedPatternCount:I

    .line 203
    iput v14, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->installedMetatileCount:I

    .line 204
    invoke-direct {v0, v7}, Lcom/ahsim/demulation/GenesisTerrainArt;->decodePaletteBytes([B)V

    .line 205
    invoke-direct {v0, v10, v11}, Lcom/ahsim/demulation/GenesisTerrainArt;->decodeRadarResourcesBytes([B[B)V

    .line 206
    invoke-direct {v0, v12}, Lcom/ahsim/demulation/GenesisTerrainArt;->decodeStructureBeaconFramesBytes([B)V

    .line 208
    const/4 v15, -0x1

    .line 209
    .local v15, "maxIndex":I
    const/16 v16, 0x0

    .line 210
    .local v16, "flips":I
    const/16 v17, 0x0

    .line 211
    .local v17, "distinctPatterns":I
    move/from16 v18, v4

    iget v4, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->installedPatternCount:I

    new-array v4, v4, [Z

    .line 212
    .local v4, "usedPatterns":[Z
    new-array v9, v9, [Z

    .line 213
    .local v9, "paletteLines":[Z
    const/16 v19, 0x0

    move/from16 v2, v16

    move/from16 v16, v6

    move v6, v2

    move/from16 v5, v17

    move/from16 v2, v19

    .end local v16    # "flips":I
    .end local v17    # "distinctPatterns":I
    .local v2, "tileId":I
    .local v5, "distinctPatterns":I
    .local v6, "flips":I
    :goto_0
    move/from16 v20, v8

    iget v8, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->installedMetatileCount:I

    const/16 v21, 0x3

    if-ge v2, v8, :cond_5

    .line 214
    mul-int/lit8 v8, v2, 0x20

    .line 215
    .local v8, "descriptor":I
    const/16 v22, 0x0

    move/from16 v1, v22

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 216
    iget-object v3, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->metatileDescriptors:[B

    mul-int/lit8 v23, v1, 0x2

    move/from16 v24, v1

    .end local v1    # "i":I
    .local v24, "i":I
    add-int v1, v8, v23

    invoke-static {v3, v1}, Lcom/ahsim/demulation/GenesisTerrainArt;->be16([BI)I

    move-result v1

    .line 217
    .local v1, "attr":I
    and-int/lit16 v3, v1, 0x7ff

    .line 218
    .local v3, "index":I
    move/from16 v23, v2

    .end local v2    # "tileId":I
    .local v23, "tileId":I
    iget v2, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->installedPatternCount:I

    if-ge v3, v2, :cond_3

    .line 221
    aget-boolean v2, v4, v3

    if-nez v2, :cond_1

    aput-boolean v16, v4, v3

    add-int/lit8 v5, v5, 0x1

    .line 222
    :cond_1
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 223
    ushr-int/lit8 v2, v1, 0xd

    and-int/lit8 v2, v2, 0x3

    aput-boolean v16, v9, v2

    .line 224
    and-int/lit16 v2, v1, 0x1800

    if-eqz v2, :cond_2

    add-int/lit8 v6, v6, 0x1

    .line 215
    .end local v1    # "attr":I
    .end local v3    # "index":I
    :cond_2
    add-int/lit8 v1, v24, 0x1

    move/from16 v2, v23

    const/16 v3, 0x10

    .end local v24    # "i":I
    .local v1, "i":I
    goto :goto_1

    .line 219
    .local v1, "attr":I
    .restart local v3    # "index":I
    .restart local v24    # "i":I
    :cond_3
    new-instance v2, Ljava/io/IOException;

    move/from16 v25, v1

    .end local v1    # "attr":I
    .local v25, "attr":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v4

    .end local v4    # "usedPatterns":[Z
    .local v26, "usedPatterns":[Z
    const-string v4, "Installed metatile pattern index outside terrain media: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 215
    .end local v3    # "index":I
    .end local v23    # "tileId":I
    .end local v24    # "i":I
    .end local v25    # "attr":I
    .end local v26    # "usedPatterns":[Z
    .local v1, "i":I
    .restart local v2    # "tileId":I
    .restart local v4    # "usedPatterns":[Z
    :cond_4
    move/from16 v24, v1

    move/from16 v23, v2

    move-object/from16 v26, v4

    .line 213
    .end local v1    # "i":I
    .end local v2    # "tileId":I
    .end local v4    # "usedPatterns":[Z
    .end local v8    # "descriptor":I
    .restart local v23    # "tileId":I
    .restart local v26    # "usedPatterns":[Z
    add-int/lit8 v2, v23, 0x1

    move-object/from16 v1, p1

    move/from16 v8, v20

    const/16 v3, 0x10

    .end local v23    # "tileId":I
    .restart local v2    # "tileId":I
    goto :goto_0

    .end local v26    # "usedPatterns":[Z
    .restart local v4    # "usedPatterns":[Z
    :cond_5
    move/from16 v23, v2

    move-object/from16 v26, v4

    .line 229
    .end local v2    # "tileId":I
    .end local v4    # "usedPatterns":[Z
    .restart local v26    # "usedPatterns":[Z
    const/16 v1, 0x352

    if-lt v15, v1, :cond_a

    const/16 v1, 0x2bc

    if-lt v5, v1, :cond_a

    const/16 v1, 0x10

    if-lt v6, v1, :cond_a

    aget-boolean v1, v9, v20

    if-eqz v1, :cond_a

    aget-boolean v1, v9, v16

    if-eqz v1, :cond_a

    aget-boolean v1, v9, v18

    if-eqz v1, :cond_a

    aget-boolean v1, v9, v21

    if-eqz v1, :cond_a

    .line 233
    iput v15, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->maxPatternIndex:I

    .line 234
    iput v6, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->descriptorFlipCount:I

    .line 235
    const/4 v1, 0x0

    .local v1, "tileId":I
    :goto_2
    iget v2, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->installedMetatileCount:I

    if-ge v1, v2, :cond_6

    .line 236
    iget-object v2, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->metatiles:[Landroid/graphics/Bitmap;

    move/from16 v3, v20

    invoke-direct {v0, v1, v3}, Lcom/ahsim/demulation/GenesisTerrainArt;->decodeMetatile(IZ)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v1

    .line 235
    add-int/lit8 v1, v1, 0x1

    const/16 v20, 0x0

    goto :goto_2

    .line 242
    .end local v1    # "tileId":I
    :cond_6
    iget v1, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->installedMetatileCount:I

    .restart local v1    # "tileId":I
    :goto_3
    const/16 v2, 0x16a

    if-ge v1, v2, :cond_7

    .line 243
    iget-object v3, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->metatiles:[Landroid/graphics/Bitmap;

    iget-object v4, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->metatiles:[Landroid/graphics/Bitmap;

    const/16 v20, 0x0

    aget-object v4, v4, v20

    aput-object v4, v3, v1

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 245
    .end local v1    # "tileId":I
    :cond_7
    const/4 v1, 0x1

    .local v1, "overlay":I
    :goto_4
    const/16 v2, 0xc

    if-gt v1, v2, :cond_8

    .line 246
    iget-object v3, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->impactOverlays:[Landroid/graphics/Bitmap;

    move/from16 v4, v16

    invoke-direct {v0, v1, v4}, Lcom/ahsim/demulation/GenesisTerrainArt;->decodeMetatile(IZ)Landroid/graphics/Bitmap;

    move-result-object v8

    aput-object v8, v3, v1

    .line 245
    add-int/lit8 v1, v1, 0x1

    const/16 v16, 0x1

    goto :goto_4

    .line 248
    .end local v1    # "overlay":I
    :cond_8
    const/4 v1, 0x1

    .local v1, "mask":I
    :goto_5
    const/16 v2, 0x10

    if-ge v1, v2, :cond_9

    .line 249
    iget-object v3, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->fogOverlays:[Landroid/graphics/Bitmap;

    add-int/lit8 v4, v1, 0x6c

    const/4 v8, 0x1

    invoke-direct {v0, v4, v8}, Lcom/ahsim/demulation/GenesisTerrainArt;->decodeMetatile(IZ)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, v1

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 251
    .end local v1    # "mask":I
    :cond_9
    return-void

    .line 231
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Installed metatile descriptor structural coverage mismatch"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    .end local v5    # "distinctPatterns":I
    .end local v6    # "flips":I
    .end local v9    # "paletteLines":[Z
    .end local v15    # "maxIndex":I
    .end local v26    # "usedPatterns":[Z
    :cond_b
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Installed terrain/radar media has unsupported DuneHack dimensions"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    .end local v13    # "providerPatternCount":I
    .end local v14    # "providerMetatileCount":I
    :cond_c
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Installed terrain/radar media has unexpected dimensions"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    .end local v7    # "paletteBytes":[B
    .end local v10    # "radarColors":[B
    .end local v11    # "radarTransition":[B
    .end local v12    # "beaconPatterns":[B
    :cond_d
    new-instance v1, Ljava/io/IOException;

    const-string v2, "World media provider is unavailable"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .locals 22
    .param p1, "rom"    # [B

    .line 115
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/16 v2, 0x40

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->palette:[I

    .line 100
    const/16 v2, 0x16a

    new-array v3, v2, [Landroid/graphics/Bitmap;

    iput-object v3, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->metatiles:[Landroid/graphics/Bitmap;

    .line 103
    const/16 v3, 0xd

    new-array v3, v3, [Landroid/graphics/Bitmap;

    iput-object v3, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->impactOverlays:[Landroid/graphics/Bitmap;

    .line 104
    const/16 v3, 0x10

    new-array v4, v3, [Landroid/graphics/Bitmap;

    iput-object v4, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->fogOverlays:[Landroid/graphics/Bitmap;

    .line 105
    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v6, 0x1

    const/16 v7, 0x8

    aput v7, v5, v6

    const/4 v8, 0x0

    const/4 v9, 0x4

    aput v9, v5, v8

    const-class v10, Landroid/graphics/Bitmap;

    invoke-static {v10, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Landroid/graphics/Bitmap;

    iput-object v5, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->structureBeaconFrames:[[Landroid/graphics/Bitmap;

    .line 107
    const/16 v5, 0x200

    new-array v5, v5, [I

    iput-object v5, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->radarTerrainColors:[I

    .line 108
    new-array v5, v7, [I

    iput-object v5, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->radarHouseColors:[I

    .line 109
    const/16 v5, 0xc

    new-array v7, v5, [Landroid/graphics/Bitmap;

    iput-object v7, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->radarTransitionFrames:[Landroid/graphics/Bitmap;

    .line 116
    if-eqz v1, :cond_9

    array-length v7, v1

    const v10, 0xc8000

    if-lt v7, v10, :cond_9

    .line 120
    const v7, 0xc7cb2

    invoke-static {v1, v7}, Lcom/ahsim/demulation/GenesisTerrainArt;->be32([BI)I

    move-result v7

    .line 121
    .local v7, "resourceTileTable":I
    const v10, 0xc7cb6

    invoke-static {v1, v10}, Lcom/ahsim/demulation/GenesisTerrainArt;->be32([BI)I

    move-result v10

    .line 122
    .local v10, "resourceReserved0":I
    const v11, 0xc7cba

    invoke-static {v1, v11}, Lcom/ahsim/demulation/GenesisTerrainArt;->be32([BI)I

    move-result v11

    .line 123
    .local v11, "resourcePalette":I
    const v12, 0xc7cbe

    invoke-static {v1, v12}, Lcom/ahsim/demulation/GenesisTerrainArt;->be32([BI)I

    move-result v12

    .line 124
    .local v12, "resourceReserved1":I
    const v13, 0xbc506

    if-ne v7, v13, :cond_8

    if-nez v10, :cond_8

    const v13, 0xa6c98

    if-ne v11, v13, :cond_8

    if-nez v12, :cond_8

    .line 131
    invoke-direct/range {p0 .. p1}, Lcom/ahsim/demulation/GenesisTerrainArt;->loadPatternChunks([B)[B

    move-result-object v14

    iput-object v14, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->patternBytes:[B

    .line 132
    const v14, 0x4adf0

    const/16 v15, 0x2d40

    invoke-static {v1, v14, v15}, Lcom/ahsim/demulation/GenesisTerrainArt;->copyRange([BII)[B

    move-result-object v14

    iput-object v14, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->metatileDescriptors:[B

    .line 133
    const/16 v14, 0x39a

    iput v14, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->installedPatternCount:I

    .line 134
    iput v2, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->installedMetatileCount:I

    .line 135
    const/16 v15, 0x80

    invoke-static {v1, v13, v15}, Lcom/ahsim/demulation/GenesisTerrainArt;->copyRange([BII)[B

    move-result-object v13

    invoke-direct {v0, v13}, Lcom/ahsim/demulation/GenesisTerrainArt;->decodePaletteBytes([B)V

    .line 136
    invoke-direct/range {p0 .. p1}, Lcom/ahsim/demulation/GenesisTerrainArt;->decodeRadarResources([B)V

    .line 137
    invoke-direct/range {p0 .. p1}, Lcom/ahsim/demulation/GenesisTerrainArt;->decodeStructureBeaconFrames([B)V

    .line 139
    const/4 v13, -0x1

    .line 140
    .local v13, "maxIndex":I
    const/4 v15, 0x0

    .line 141
    .local v15, "flips":I
    new-array v9, v9, [Z

    .line 142
    .local v9, "paletteLines":[Z
    const/16 v16, 0x0

    move/from16 v21, v16

    move/from16 v16, v4

    move/from16 v4, v21

    .local v4, "tileId":I
    :goto_0
    const/16 v17, 0x3

    if-ge v4, v2, :cond_3

    .line 143
    mul-int/lit8 v18, v4, 0x20

    .line 144
    .local v18, "descriptor":I
    const/16 v19, 0x0

    move/from16 v21, v19

    move/from16 v19, v6

    move/from16 v6, v21

    .local v6, "i":I
    :goto_1
    if-ge v6, v3, :cond_2

    .line 145
    iget-object v3, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->metatileDescriptors:[B

    mul-int/lit8 v20, v6, 0x2

    add-int v5, v18, v20

    invoke-static {v3, v5}, Lcom/ahsim/demulation/GenesisTerrainArt;->be16([BI)I

    move-result v3

    .line 146
    .local v3, "attr":I
    and-int/lit16 v5, v3, 0x7ff

    .line 147
    .local v5, "index":I
    if-ge v5, v14, :cond_1

    .line 150
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 151
    ushr-int/lit8 v20, v3, 0xd

    and-int/lit8 v20, v20, 0x3

    aput-boolean v19, v9, v20

    .line 152
    and-int/lit16 v14, v3, 0x1800

    if-eqz v14, :cond_0

    add-int/lit8 v15, v15, 0x1

    .line 144
    .end local v3    # "attr":I
    .end local v5    # "index":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    const/16 v3, 0x10

    const/16 v5, 0xc

    const/16 v14, 0x39a

    goto :goto_1

    .line 148
    .restart local v3    # "attr":I
    .restart local v5    # "index":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Metatile pattern index outside resource 4: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    .end local v3    # "attr":I
    .end local v5    # "index":I
    .end local v6    # "i":I
    .end local v18    # "descriptor":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    move/from16 v6, v19

    const/16 v3, 0x10

    const/16 v5, 0xc

    const/16 v14, 0x39a

    goto :goto_0

    :cond_3
    move/from16 v19, v6

    .line 155
    .end local v4    # "tileId":I
    const/16 v3, 0x399

    if-ne v13, v3, :cond_7

    const/16 v3, 0xd9

    if-ne v15, v3, :cond_7

    aget-boolean v3, v9, v8

    if-eqz v3, :cond_7

    aget-boolean v3, v9, v19

    if-eqz v3, :cond_7

    aget-boolean v3, v9, v16

    if-eqz v3, :cond_7

    aget-boolean v3, v9, v17

    if-eqz v3, :cond_7

    .line 159
    iput v13, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->maxPatternIndex:I

    .line 160
    iput v15, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->descriptorFlipCount:I

    .line 162
    const/4 v3, 0x0

    .local v3, "tileId":I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 163
    iget-object v4, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->metatiles:[Landroid/graphics/Bitmap;

    invoke-direct {v0, v3, v8}, Lcom/ahsim/demulation/GenesisTerrainArt;->decodeMetatile(IZ)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, v3

    .line 162
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 171
    .end local v3    # "tileId":I
    :cond_4
    const/4 v2, 0x1

    .local v2, "overlay":I
    :goto_3
    const/16 v3, 0xc

    if-gt v2, v3, :cond_5

    .line 172
    iget-object v4, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->impactOverlays:[Landroid/graphics/Bitmap;

    move/from16 v5, v19

    invoke-direct {v0, v2, v5}, Lcom/ahsim/demulation/GenesisTerrainArt;->decodeMetatile(IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v4, v2

    .line 171
    add-int/lit8 v2, v2, 0x1

    const/16 v19, 0x1

    goto :goto_3

    .line 174
    .end local v2    # "overlay":I
    :cond_5
    const/4 v2, 0x1

    .local v2, "mask":I
    :goto_4
    const/16 v3, 0x10

    if-ge v2, v3, :cond_6

    .line 175
    iget-object v4, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->fogOverlays:[Landroid/graphics/Bitmap;

    add-int/lit8 v5, v2, 0x6c

    const/4 v6, 0x1

    invoke-direct {v0, v5, v6}, Lcom/ahsim/demulation/GenesisTerrainArt;->decodeMetatile(IZ)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, v2

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 177
    .end local v2    # "mask":I
    :cond_6
    return-void

    .line 157
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Metatile descriptor coverage does not match tactical resource 4"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    .end local v9    # "paletteLines":[Z
    .end local v13    # "maxIndex":I
    .end local v15    # "flips":I
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 128
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 126
    const-string v4, "Unexpected resource 4 entry: %06X/%08X/%06X/%08X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    .end local v7    # "resourceTileTable":I
    .end local v10    # "resourceReserved0":I
    .end local v11    # "resourcePalette":I
    .end local v12    # "resourceReserved1":I
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ROM is missing or too small for Genesis terrain resources"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static be16([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 585
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisTerrainArt;->checkRange([BII)V

    .line 586
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static be32([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 590
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisTerrainArt;->checkRange([BII)V

    .line 591
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static checkRange([BII)V
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 598
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 601
    return-void

    .line 599
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ROM graphics offset outside file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static contains([II)Z
    .locals 4
    .param p0, "values"    # [I
    .param p1, "value"    # I

    .line 298
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    .local v3, "v":I
    if-ne v3, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .end local v3    # "v":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 299
    :cond_1
    return v1
.end method

.method private static copyRange([BII)[B
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 578
    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/GenesisTerrainArt;->checkRange([BII)V

    .line 579
    new-array v0, p2, [B

    .line 580
    .local v0, "out":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 581
    return-object v0
.end method

.method private decodeMetatile(IZ)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "tileId"    # I
    .param p2, "transparentColorZero"    # Z

    .line 539
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisTerrainArt;->patternBytes:[B

    invoke-direct {p0, p1, p2, v0}, Lcom/ahsim/demulation/GenesisTerrainArt;->decodeMetatileWithPatterns(IZ[B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private decodeMetatileWithPatterns(IZ[B)Landroid/graphics/Bitmap;
    .locals 22
    .param p1, "tileId"    # I
    .param p2, "transparentColorZero"    # Z
    .param p3, "patterns"    # [B

    .line 544
    move-object/from16 v0, p0

    const/16 v1, 0x400

    new-array v3, v1, [I

    .line 545
    .local v3, "pixels":[I
    mul-int/lit8 v1, p1, 0x20

    .line 546
    .local v1, "descriptor":I
    iget-object v2, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->metatileDescriptors:[B

    const/16 v4, 0x20

    invoke-static {v2, v1, v4}, Lcom/ahsim/demulation/GenesisTerrainArt;->checkRange([BII)V

    .line 548
    const/4 v2, 0x0

    .local v2, "my":I
    :goto_0
    const/4 v5, 0x4

    if-ge v2, v5, :cond_9

    .line 549
    const/4 v6, 0x0

    .local v6, "mx":I
    :goto_1
    if-ge v6, v5, :cond_8

    .line 550
    iget-object v7, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->metatileDescriptors:[B

    mul-int/lit8 v8, v2, 0x4

    add-int/2addr v8, v6

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v1

    invoke-static {v7, v8}, Lcom/ahsim/demulation/GenesisTerrainArt;->be16([BI)I

    move-result v7

    .line 551
    .local v7, "attr":I
    and-int/lit16 v8, v7, 0x7ff

    .line 552
    .local v8, "pattern":I
    and-int/lit16 v9, v7, 0x800

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v9, :cond_0

    move v9, v11

    goto :goto_2

    :cond_0
    move v9, v10

    .line 553
    .local v9, "hFlip":Z
    :goto_2
    and-int/lit16 v12, v7, 0x1000

    if-eqz v12, :cond_1

    move v10, v11

    .line 554
    .local v10, "vFlip":Z
    :cond_1
    ushr-int/lit8 v11, v7, 0xd

    and-int/lit8 v11, v11, 0x3

    .line 555
    .local v11, "paletteLine":I
    mul-int/lit8 v12, v8, 0x20

    .line 557
    .local v12, "patternOffset":I
    const/4 v13, 0x0

    .local v13, "dy":I
    :goto_3
    const/16 v14, 0x8

    if-ge v13, v14, :cond_7

    .line 558
    if-eqz v10, :cond_2

    rsub-int/lit8 v15, v13, 0x7

    goto :goto_4

    :cond_2
    move v15, v13

    .line 559
    .local v15, "sy":I
    :goto_4
    mul-int/lit8 v16, v15, 0x4

    add-int v16, v12, v16

    .line 560
    .local v16, "rowOffset":I
    const/16 v17, 0x0

    move/from16 v5, v17

    .local v5, "dx":I
    :goto_5
    if-ge v5, v14, :cond_6

    .line 561
    if-eqz v9, :cond_3

    rsub-int/lit8 v17, v5, 0x7

    goto :goto_6

    :cond_3
    move/from16 v17, v5

    .line 562
    .local v17, "sx":I
    :goto_6
    ushr-int/lit8 v18, v17, 0x1

    add-int v18, v16, v18

    aget-byte v14, p3, v18

    and-int/lit16 v14, v14, 0xff

    .line 563
    .local v14, "packed":I
    and-int/lit8 v18, v17, 0x1

    if-nez v18, :cond_4

    ushr-int/lit8 v18, v14, 0x4

    goto :goto_7

    :cond_4
    and-int/lit8 v18, v14, 0xf

    .line 564
    .local v18, "colorIndex":I
    :goto_7
    move/from16 v19, v4

    iget-object v4, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->palette:[I

    mul-int/lit8 v20, v11, 0x10

    add-int v20, v20, v18

    aget v4, v4, v20

    .line 565
    .local v4, "color":I
    if-eqz p2, :cond_5

    if-nez v18, :cond_5

    const v20, 0xffffff

    and-int v4, v4, v20

    .line 566
    :cond_5
    mul-int/lit8 v20, v2, 0x8

    add-int v20, v20, v13

    mul-int/lit8 v20, v20, 0x20

    mul-int/lit8 v21, v6, 0x8

    add-int v21, v21, v5

    add-int v20, v20, v21

    aput v4, v3, v20

    .line 560
    .end local v4    # "color":I
    .end local v14    # "packed":I
    .end local v17    # "sx":I
    .end local v18    # "colorIndex":I
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v19

    const/16 v14, 0x8

    goto :goto_5

    :cond_6
    move/from16 v19, v4

    .line 557
    .end local v5    # "dx":I
    .end local v15    # "sy":I
    .end local v16    # "rowOffset":I
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x4

    goto :goto_3

    :cond_7
    move/from16 v19, v4

    .line 549
    .end local v7    # "attr":I
    .end local v8    # "pattern":I
    .end local v9    # "hFlip":Z
    .end local v10    # "vFlip":Z
    .end local v11    # "paletteLine":I
    .end local v12    # "patternOffset":I
    .end local v13    # "dy":I
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x4

    goto/16 :goto_1

    :cond_8
    move/from16 v19, v4

    .line 548
    .end local v6    # "mx":I
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    move/from16 v19, v4

    .line 572
    .end local v2    # "my":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 573
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/16 v8, 0x20

    const/16 v9, 0x20

    const/4 v4, 0x0

    const/16 v5, 0x20

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 574
    return-object v2
.end method

.method private decodePaletteBytes([B)V
    .locals 10
    .param p1, "paletteBytes"    # [B

    .line 525
    const/4 v0, 0x0

    const/16 v1, 0x80

    invoke-static {p1, v0, v1}, Lcom/ahsim/demulation/GenesisTerrainArt;->checkRange([BII)V

    .line 526
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisTerrainArt;->palette:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 527
    mul-int/lit8 v1, v0, 0x2

    invoke-static {p1, v1}, Lcom/ahsim/demulation/GenesisTerrainArt;->be16([BI)I

    move-result v1

    .line 528
    .local v1, "word":I
    ushr-int/lit8 v2, v1, 0x1

    and-int/lit8 v2, v2, 0x7

    .line 529
    .local v2, "r3":I
    ushr-int/lit8 v3, v1, 0x5

    and-int/lit8 v3, v3, 0x7

    .line 530
    .local v3, "g3":I
    ushr-int/lit8 v4, v1, 0x9

    and-int/lit8 v4, v4, 0x7

    .line 531
    .local v4, "b3":I
    int-to-float v5, v2

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    const/high16 v7, 0x40e00000    # 7.0f

    div-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 532
    .local v5, "r":I
    int-to-float v8, v3

    mul-float/2addr v8, v6

    div-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 533
    .local v8, "g":I
    int-to-float v9, v4

    mul-float/2addr v9, v6

    div-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 534
    .local v6, "b":I
    iget-object v7, p0, Lcom/ahsim/demulation/GenesisTerrainArt;->palette:[I

    invoke-static {v5, v8, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    aput v9, v7, v0

    .line 526
    .end local v1    # "word":I
    .end local v2    # "r3":I
    .end local v3    # "g3":I
    .end local v4    # "b3":I
    .end local v5    # "r":I
    .end local v6    # "b":I
    .end local v8    # "g":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 536
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private decodeRadarResources([B)V
    .locals 4
    .param p1, "rom"    # [B

    .line 338
    const/16 v0, 0x205

    new-array v0, v0, [B

    .line 339
    .local v0, "colors":[B
    const/16 v1, 0x525a

    const/4 v2, 0x0

    const/16 v3, 0x200

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    const/16 v1, 0x5252

    const/4 v2, 0x5

    invoke-static {p1, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    const v1, 0x673d2

    const/16 v2, 0x1800

    invoke-static {p1, v1, v2}, Lcom/ahsim/demulation/GenesisTerrainArt;->copyRange([BII)[B

    move-result-object v1

    .line 343
    .local v1, "transition":[B
    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/GenesisTerrainArt;->decodeRadarResourcesBytes([B[B)V

    .line 344
    return-void
.end method

.method private decodeRadarResourcesBytes([B[B)V
    .locals 20
    .param p1, "colors"    # [B
    .param p2, "transition"    # [B

    .line 347
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x205

    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Lcom/ahsim/demulation/GenesisTerrainArt;->checkRange([BII)V

    .line 348
    const/16 v3, 0x1800

    invoke-static {v2, v4, v3}, Lcom/ahsim/demulation/GenesisTerrainArt;->checkRange([BII)V

    .line 349
    const/16 v3, 0x20

    .line 350
    .local v3, "paletteBase":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->radarTerrainColors:[I

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 351
    aget-byte v5, v1, v4

    and-int/lit8 v5, v5, 0xf

    .line 352
    .local v5, "nibble":I
    iget-object v6, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->radarTerrainColors:[I

    iget-object v7, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->palette:[I

    add-int/lit8 v8, v5, 0x20

    aget v7, v7, v8

    aput v7, v6, v4

    .line 350
    .end local v5    # "nibble":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 354
    .end local v4    # "i":I
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    .line 355
    add-int/lit16 v5, v4, 0x200

    aget-byte v5, v1, v5

    and-int/lit8 v5, v5, 0xf

    .line 356
    .restart local v5    # "nibble":I
    iget-object v6, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->radarHouseColors:[I

    iget-object v7, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->palette:[I

    add-int/lit8 v8, v5, 0x20

    aget v7, v7, v8

    aput v7, v6, v4

    .line 354
    .end local v5    # "nibble":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 358
    .end local v4    # "i":I
    :cond_1
    const/4 v4, 0x0

    .local v4, "frame":I
    :goto_2
    const/16 v5, 0xc

    if-ge v4, v5, :cond_a

    .line 359
    mul-int/lit16 v5, v4, 0x200

    .line 360
    .local v5, "source":I
    const/16 v6, 0x400

    new-array v6, v6, [I

    .line 361
    .local v6, "quadrant":[I
    const/4 v7, 0x0

    .line 362
    .local v7, "transitionPaletteBase":I
    const/4 v8, 0x0

    .local v8, "tile":I
    :goto_3
    const/16 v9, 0x10

    if-ge v8, v9, :cond_5

    .line 363
    div-int/lit8 v9, v8, 0x4

    .line 364
    .local v9, "tileX":I
    rem-int/lit8 v11, v8, 0x4

    .line 365
    .local v11, "tileY":I
    mul-int/lit8 v12, v8, 0x20

    add-int/2addr v12, v5

    .line 366
    .local v12, "patternOffset":I
    const/4 v13, 0x0

    .local v13, "dy":I
    :goto_4
    const/16 v14, 0x8

    if-ge v13, v14, :cond_4

    .line 367
    mul-int/lit8 v15, v13, 0x4

    add-int/2addr v15, v12

    .line 368
    .local v15, "rowOffset":I
    const/16 v16, 0x0

    move/from16 v10, v16

    const/16 v17, 0x20

    .local v10, "dx":I
    :goto_5
    if-ge v10, v14, :cond_3

    .line 369
    ushr-int/lit8 v16, v10, 0x1

    add-int v16, v15, v16

    aget-byte v14, v2, v16

    and-int/lit16 v14, v14, 0xff

    .line 370
    .local v14, "packed":I
    and-int/lit8 v16, v10, 0x1

    if-nez v16, :cond_2

    ushr-int/lit8 v16, v14, 0x4

    goto :goto_6

    :cond_2
    and-int/lit8 v16, v14, 0xf

    .line 371
    .local v16, "colorIndex":I
    :goto_6
    mul-int/lit8 v18, v11, 0x8

    add-int v18, v18, v13

    mul-int/lit8 v18, v18, 0x20

    mul-int/lit8 v19, v9, 0x8

    add-int v19, v19, v10

    add-int v18, v18, v19

    iget-object v1, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->palette:[I

    add-int v19, v7, v16

    aget v1, v1, v19

    aput v1, v6, v18

    .line 368
    .end local v14    # "packed":I
    .end local v16    # "colorIndex":I
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    const/16 v14, 0x8

    goto :goto_5

    .line 366
    .end local v10    # "dx":I
    .end local v15    # "rowOffset":I
    :cond_3
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    goto :goto_4

    .line 362
    .end local v9    # "tileX":I
    .end local v11    # "tileY":I
    .end local v12    # "patternOffset":I
    .end local v13    # "dy":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    goto :goto_3

    :cond_5
    const/16 v17, 0x20

    .line 376
    .end local v8    # "tile":I
    const/16 v1, 0x1000

    new-array v9, v1, [I

    .line 377
    .local v9, "pixels":[I
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_7
    const/16 v8, 0x40

    if-ge v1, v8, :cond_9

    .line 378
    move/from16 v10, v17

    if-ge v1, v10, :cond_6

    move v10, v1

    goto :goto_8

    :cond_6
    rsub-int/lit8 v10, v1, 0x3f

    .line 379
    .local v10, "qy":I
    :goto_8
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_9
    if-ge v11, v8, :cond_8

    .line 380
    const/16 v12, 0x20

    if-ge v11, v12, :cond_7

    move v13, v11

    goto :goto_a

    :cond_7
    rsub-int/lit8 v13, v11, 0x3f

    .line 381
    .local v13, "qx":I
    :goto_a
    mul-int/lit8 v14, v1, 0x40

    add-int/2addr v14, v11

    mul-int/lit8 v15, v10, 0x20

    add-int/2addr v15, v13

    aget v15, v6, v15

    aput v15, v9, v14

    .line 379
    .end local v13    # "qx":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_8
    const/16 v12, 0x20

    .line 377
    .end local v10    # "qy":I
    .end local v11    # "x":I
    add-int/lit8 v1, v1, 0x1

    move/from16 v17, v12

    goto :goto_7

    .line 385
    .end local v1    # "y":I
    :cond_9
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 387
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    const/16 v14, 0x40

    const/16 v15, 0x40

    const/4 v10, 0x0

    const/16 v11, 0x40

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 389
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->radarTransitionFrames:[Landroid/graphics/Bitmap;

    aput-object v8, v1, v4

    .line 358
    .end local v5    # "source":I
    .end local v6    # "quadrant":[I
    .end local v7    # "transitionPaletteBase":I
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "pixels":[I
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_2

    .line 391
    .end local v4    # "frame":I
    :cond_a
    return-void
.end method

.method private decodeStructureBeaconFrames([B)V
    .locals 2
    .param p1, "rom"    # [B

    .line 394
    const/16 v0, 0x6910

    const/16 v1, 0x400

    invoke-static {p1, v0, v1}, Lcom/ahsim/demulation/GenesisTerrainArt;->copyRange([BII)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisTerrainArt;->decodeStructureBeaconFramesBytes([B)V

    .line 396
    return-void
.end method

.method private decodeStructureBeaconFramesBytes([B)V
    .locals 20
    .param p1, "beaconPatterns"    # [B

    .line 399
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x400

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/ahsim/demulation/GenesisTerrainArt;->checkRange([BII)V

    .line 400
    iget-object v2, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->structureBeaconFrames:[[Landroid/graphics/Bitmap;

    array-length v2, v2

    .line 401
    .local v2, "paletteLines":I
    const/4 v4, 0x0

    .local v4, "frame":I
    :goto_0
    const/16 v5, 0x8

    if-ge v4, v5, :cond_6

    .line 402
    mul-int/lit16 v6, v4, 0x80

    .line 403
    .local v6, "source":I
    const/4 v7, 0x0

    .local v7, "paletteLine":I
    :goto_1
    if-ge v7, v2, :cond_5

    .line 404
    const/16 v8, 0x100

    new-array v10, v8, [I

    .line 405
    .local v10, "pixels":[I
    const/4 v8, 0x0

    .local v8, "pattern":I
    :goto_2
    const/4 v9, 0x4

    if-ge v8, v9, :cond_4

    .line 406
    and-int/lit8 v9, v8, 0x1

    .line 407
    .local v9, "tileX":I
    ushr-int/lit8 v11, v8, 0x1

    .line 408
    .local v11, "tileY":I
    mul-int/lit8 v12, v8, 0x20

    add-int/2addr v12, v6

    .line 409
    .local v12, "patternOffset":I
    const/4 v13, 0x0

    .local v13, "dy":I
    :goto_3
    if-ge v13, v5, :cond_3

    .line 410
    mul-int/lit8 v14, v13, 0x4

    add-int/2addr v14, v12

    .line 411
    .local v14, "rowOffset":I
    const/4 v15, 0x0

    .local v15, "dx":I
    :goto_4
    if-ge v15, v5, :cond_2

    .line 412
    ushr-int/lit8 v16, v15, 0x1

    add-int v16, v14, v16

    aget-byte v3, v1, v16

    and-int/lit16 v3, v3, 0xff

    .line 413
    .local v3, "packed":I
    and-int/lit8 v16, v15, 0x1

    if-nez v16, :cond_0

    ushr-int/lit8 v16, v3, 0x4

    goto :goto_5

    :cond_0
    and-int/lit8 v16, v3, 0xf

    .line 414
    .local v16, "colorIndex":I
    :goto_5
    if-nez v16, :cond_1

    const/4 v5, 0x0

    goto :goto_6

    .line 415
    :cond_1
    iget-object v5, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->palette:[I

    mul-int/lit8 v17, v7, 0x10

    add-int v17, v17, v16

    aget v5, v5, v17

    :goto_6
    nop

    .line 416
    .local v5, "color":I
    mul-int/lit8 v17, v9, 0x8

    add-int v17, v17, v15

    .line 417
    .local v17, "px":I
    mul-int/lit8 v18, v11, 0x8

    add-int v18, v18, v13

    .line 418
    .local v18, "py":I
    mul-int/lit8 v19, v18, 0x10

    add-int v19, v19, v17

    aput v5, v10, v19

    .line 411
    .end local v3    # "packed":I
    .end local v5    # "color":I
    .end local v16    # "colorIndex":I
    .end local v17    # "px":I
    .end local v18    # "py":I
    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x0

    const/16 v5, 0x8

    goto :goto_4

    .line 409
    .end local v14    # "rowOffset":I
    .end local v15    # "dx":I
    :cond_2
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x0

    const/16 v5, 0x8

    goto :goto_3

    .line 405
    .end local v9    # "tileX":I
    .end local v11    # "tileY":I
    .end local v12    # "patternOffset":I
    .end local v13    # "dy":I
    :cond_3
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x0

    const/16 v5, 0x8

    goto :goto_2

    .line 422
    .end local v8    # "pattern":I
    :cond_4
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v5, 0x10

    invoke-static {v5, v5, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 424
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    const/16 v15, 0x10

    const/16 v16, 0x10

    const/4 v11, 0x0

    const/16 v12, 0x10

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 426
    iget-object v3, v0, Lcom/ahsim/demulation/GenesisTerrainArt;->structureBeaconFrames:[[Landroid/graphics/Bitmap;

    aget-object v3, v3, v7

    aput-object v9, v3, v4

    .line 403
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "pixels":[I
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    const/16 v5, 0x8

    goto :goto_1

    .line 401
    .end local v6    # "source":I
    .end local v7    # "paletteLine":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 429
    .end local v4    # "frame":I
    :cond_6
    return-void
.end method

.method private static decompress([BII)[B
    .locals 10
    .param p0, "rom"    # [B
    .param p1, "source"    # I
    .param p2, "expectedBytes"    # I

    .line 459
    new-array v0, p2, [B

    .line 460
    .local v0, "out":[B
    move v1, p1

    .line 461
    .local v1, "src":I
    const/4 v2, 0x0

    .line 462
    .local v2, "dst":I
    const/4 v3, 0x0

    .line 464
    .local v3, "guard":I
    :goto_0
    const/4 v4, 0x1

    add-int/2addr v3, v4

    const v5, 0x186a0

    if-gt v3, v5, :cond_f

    .line 467
    invoke-static {p0, v1, v4}, Lcom/ahsim/demulation/GenesisTerrainArt;->checkRange([BII)V

    .line 468
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "src":I
    .local v5, "src":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 469
    .local v1, "c":I
    const/16 v6, 0x80

    if-ne v1, v6, :cond_1

    .line 517
    .end local v1    # "c":I
    if-ne v2, p2, :cond_0

    .line 521
    return-object v0

    .line 518
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Genesis terrain block decompressed to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " bytes, expected "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 471
    .restart local v1    # "c":I
    :cond_1
    const/16 v6, 0x81

    if-lt v1, v6, :cond_3

    const/16 v6, 0xbf

    if-gt v1, v6, :cond_3

    .line 472
    and-int/lit8 v4, v1, 0x3f

    .line 473
    .local v4, "n":I
    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/GenesisTerrainArt;->checkRange([BII)V

    .line 474
    array-length v6, v0

    sub-int/2addr v6, v4

    if-gt v2, v6, :cond_2

    .line 477
    invoke-static {p0, v5, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 478
    add-int/2addr v5, v4

    .line 479
    add-int/2addr v2, v4

    .line 480
    .end local v4    # "n":I
    move v1, v5

    goto/16 :goto_5

    .line 475
    .restart local v4    # "n":I
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Genesis terrain literal overrun"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 480
    .end local v4    # "n":I
    :cond_3
    const/16 v6, 0x7f

    const/4 v7, 0x3

    if-gt v1, v6, :cond_6

    .line 481
    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/GenesisTerrainArt;->checkRange([BII)V

    .line 482
    shl-int/lit8 v4, v1, 0x8

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "src":I
    .local v6, "src":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xfff

    .line 483
    .local v4, "back":I
    ushr-int/lit8 v5, v1, 0x4

    add-int/2addr v5, v7

    .line 484
    .local v5, "n":I
    if-lez v4, :cond_5

    if-gt v4, v2, :cond_5

    array-length v7, v0

    sub-int/2addr v7, v5

    if-gt v2, v7, :cond_5

    .line 487
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_4

    sub-int v8, v2, v4

    aget-byte v8, v0, v8

    aput-byte v8, v0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 488
    .end local v4    # "back":I
    .end local v5    # "n":I
    .end local v7    # "i":I
    :cond_4
    move v1, v6

    goto/16 :goto_5

    .line 485
    .restart local v4    # "back":I
    .restart local v5    # "n":I
    :cond_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Genesis terrain short-copy range error"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 488
    .end local v4    # "back":I
    .end local v6    # "src":I
    .local v5, "src":I
    :cond_6
    const/16 v4, 0xfd

    if-gt v1, v4, :cond_9

    .line 489
    const/4 v4, 0x2

    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/GenesisTerrainArt;->checkRange([BII)V

    .line 490
    and-int/lit8 v4, v1, 0x3f

    add-int/2addr v4, v7

    .line 491
    .local v4, "n":I
    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    .line 492
    .local v6, "from":I
    add-int/lit8 v5, v5, 0x2

    .line 493
    if-ltz v6, :cond_8

    if-ge v6, v2, :cond_8

    array-length v7, v0

    sub-int/2addr v7, v4

    if-gt v2, v7, :cond_8

    .line 496
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    if-ge v7, v4, :cond_7

    add-int/lit8 v8, v2, 0x1

    .end local v2    # "dst":I
    .local v8, "dst":I
    add-int v9, v6, v7

    aget-byte v9, v0, v9

    aput-byte v9, v0, v2

    add-int/lit8 v7, v7, 0x1

    move v2, v8

    goto :goto_2

    .line 497
    .end local v4    # "n":I
    .end local v6    # "from":I
    .end local v7    # "i":I
    .end local v8    # "dst":I
    .restart local v2    # "dst":I
    :cond_7
    move v1, v5

    goto/16 :goto_5

    .line 494
    .restart local v4    # "n":I
    .restart local v6    # "from":I
    :cond_8
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Genesis terrain absolute-copy range error"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 497
    .end local v4    # "n":I
    .end local v6    # "from":I
    :cond_9
    const/16 v4, 0xfe

    if-ne v1, v4, :cond_c

    .line 498
    invoke-static {p0, v5, v7}, Lcom/ahsim/demulation/GenesisTerrainArt;->checkRange([BII)V

    .line 499
    aget-byte v4, p0, v5

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    .line 500
    .restart local v4    # "n":I
    add-int/lit8 v6, v5, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    .line 501
    .local v6, "value":I
    add-int/lit8 v5, v5, 0x3

    .line 502
    array-length v7, v0

    sub-int/2addr v7, v4

    if-gt v2, v7, :cond_b

    .line 505
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    if-ge v7, v4, :cond_a

    add-int/lit8 v8, v2, 0x1

    .end local v2    # "dst":I
    .restart local v8    # "dst":I
    int-to-byte v9, v6

    aput-byte v9, v0, v2

    add-int/lit8 v7, v7, 0x1

    move v2, v8

    goto :goto_3

    .line 506
    .end local v4    # "n":I
    .end local v6    # "value":I
    .end local v7    # "i":I
    .end local v8    # "dst":I
    .restart local v2    # "dst":I
    :cond_a
    move v1, v5

    goto :goto_5

    .line 503
    .restart local v4    # "n":I
    .restart local v6    # "value":I
    :cond_b
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Genesis terrain RLE overrun"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 507
    .end local v4    # "n":I
    .end local v6    # "value":I
    :cond_c
    const/4 v4, 0x4

    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/GenesisTerrainArt;->checkRange([BII)V

    .line 508
    aget-byte v4, p0, v5

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    .line 509
    .restart local v4    # "n":I
    add-int/lit8 v6, v5, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v5, 0x3

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    .line 510
    .local v6, "from":I
    add-int/lit8 v5, v5, 0x4

    .line 511
    if-ltz v6, :cond_e

    if-ge v6, v2, :cond_e

    array-length v7, v0

    sub-int/2addr v7, v4

    if-gt v2, v7, :cond_e

    .line 514
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v4, :cond_d

    add-int/lit8 v8, v2, 0x1

    .end local v2    # "dst":I
    .restart local v8    # "dst":I
    add-int v9, v6, v7

    aget-byte v9, v0, v9

    aput-byte v9, v0, v2

    add-int/lit8 v7, v7, 0x1

    move v2, v8

    goto :goto_4

    .end local v8    # "dst":I
    .restart local v2    # "dst":I
    :cond_d
    move v1, v5

    .line 516
    .end local v4    # "n":I
    .end local v5    # "src":I
    .end local v6    # "from":I
    .end local v7    # "i":I
    .local v1, "src":I
    :goto_5
    goto/16 :goto_0

    .line 512
    .local v1, "c":I
    .restart local v4    # "n":I
    .restart local v5    # "src":I
    .restart local v6    # "from":I
    :cond_e
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Genesis terrain long-copy range error"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 465
    .end local v4    # "n":I
    .end local v5    # "src":I
    .end local v6    # "from":I
    .local v1, "src":I
    :cond_f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Genesis terrain decompressor guard"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private loadPatternChunks([B)[B
    .locals 12
    .param p1, "rom"    # [B

    .line 432
    const/16 v0, 0x7340

    new-array v0, v0, [B

    .line 433
    .local v0, "out":[B
    const v1, 0xbc506

    .line 434
    .local v1, "table":I
    const/4 v2, 0x0

    .line 435
    .local v2, "dst":I
    const/4 v3, 0x0

    .line 436
    .local v3, "total":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    sget-object v5, Lcom/ahsim/demulation/GenesisTerrainArt;->EXPECTED_COUNTS:[I

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 437
    invoke-static {p1, v1}, Lcom/ahsim/demulation/GenesisTerrainArt;->be16([BI)I

    move-result v5

    .line 438
    .local v5, "flags":I
    add-int/lit8 v6, v1, 0x2

    invoke-static {p1, v6}, Lcom/ahsim/demulation/GenesisTerrainArt;->be32([BI)I

    move-result v6

    .line 439
    .local v6, "pointer":I
    add-int/lit8 v1, v1, 0x6

    .line 440
    and-int/lit16 v7, v5, 0x7fff

    .line 441
    .local v7, "count":I
    const v8, 0x8000

    and-int/2addr v8, v5

    if-eqz v8, :cond_0

    sget-object v8, Lcom/ahsim/demulation/GenesisTerrainArt;->EXPECTED_COUNTS:[I

    aget v8, v8, v4

    if-ne v7, v8, :cond_0

    sget-object v8, Lcom/ahsim/demulation/GenesisTerrainArt;->EXPECTED_POINTERS:[I

    aget v8, v8, v4

    if-ne v6, v8, :cond_0

    .line 445
    mul-int/lit8 v8, v7, 0x20

    .line 446
    .local v8, "bytes":I
    invoke-static {p1, v6, v8}, Lcom/ahsim/demulation/GenesisTerrainArt;->decompress([BII)[B

    move-result-object v9

    .line 447
    .local v9, "decoded":[B
    const/4 v10, 0x0

    invoke-static {v9, v10, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    add-int/2addr v2, v8

    .line 449
    add-int/2addr v3, v7

    .line 436
    .end local v5    # "flags":I
    .end local v6    # "pointer":I
    .end local v7    # "count":I
    .end local v8    # "bytes":I
    .end local v9    # "decoded":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 442
    .restart local v5    # "flags":I
    .restart local v6    # "pointer":I
    .restart local v7    # "count":I
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    .line 443
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v9, v10, v11}, [Ljava/lang/Object;

    move-result-object v9

    .line 442
    const-string v10, "Unexpected tactical pattern chunk %d: flags=%04X ptr=%06X"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 451
    .end local v4    # "i":I
    .end local v5    # "flags":I
    .end local v6    # "pointer":I
    .end local v7    # "count":I
    :cond_1
    invoke-static {p1, v1}, Lcom/ahsim/demulation/GenesisTerrainArt;->be16([BI)I

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x39a

    if-ne v3, v4, :cond_2

    array-length v4, v0

    if-ne v2, v4, :cond_2

    .line 454
    return-object v0

    .line 452
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Tactical pattern table terminator/count mismatch"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public getDescriptorFlipCount()I
    .locals 1

    .line 315
    iget v0, p0, Lcom/ahsim/demulation/GenesisTerrainArt;->descriptorFlipCount:I

    return v0
.end method

.method public getFogOverlay(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "mask"    # I

    .line 266
    if-lez p1, :cond_1

    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisTerrainArt;->fogOverlays:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    return-object v0

    .line 266
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImpactOverlay(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "overlayId"    # I

    .line 261
    if-lez p1, :cond_1

    const/16 v0, 0xc

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisTerrainArt;->impactOverlays:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    return-object v0

    .line 261
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInstalledMetatileCount()I
    .locals 1

    .line 307
    iget v0, p0, Lcom/ahsim/demulation/GenesisTerrainArt;->installedMetatileCount:I

    return v0
.end method

.method public getMaxPatternIndex()I
    .locals 1

    .line 311
    iget v0, p0, Lcom/ahsim/demulation/GenesisTerrainArt;->maxPatternIndex:I

    return v0
.end method

.method public getMetatile(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "baseTileId"    # I

    .line 254
    if-ltz p1, :cond_0

    const/16 v0, 0x16a

    if-ge p1, v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisTerrainArt;->metatiles:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    return-object v0

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Genesis metatile outside recovered table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPatternCount()I
    .locals 1

    .line 303
    iget v0, p0, Lcom/ahsim/demulation/GenesisTerrainArt;->installedPatternCount:I

    return v0
.end method

.method public getRadarHouseColor(I)I
    .locals 2
    .param p1, "houseId"    # I

    .line 325
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisTerrainArt;->radarHouseColors:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisTerrainArt;->radarHouseColors:[I

    aget v0, v0, p1

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisTerrainArt;->radarHouseColors:[I

    aget v0, v0, p1

    return v0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisTerrainArt;->palette:[I

    const/16 v1, 0x29

    aget v0, v0, v1

    return v0
.end method

.method public getRadarTerrainColor(I)I
    .locals 2
    .param p1, "baseTileId"    # I

    .line 320
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisTerrainArt;->radarTerrainColors:[I

    and-int/lit16 v1, p1, 0x1ff

    aget v0, v0, v1

    return v0
.end method

.method public getRadarTransitionFrame(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "frame"    # I

    .line 333
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisTerrainArt;->radarTransitionFrames:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisTerrainArt;->radarTransitionFrames:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    return-object v0

    .line 333
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRefineryPadMetatile(II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "tileId"    # I
    .param p2, "padFrame"    # I

    .line 272
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1, p2}, Lcom/ahsim/demulation/GenesisTerrainArt;->getStructurePadMetatile(III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getStructureBeaconFrame(II)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "frame"    # I
    .param p2, "paletteLine"    # I

    .line 292
    const/16 v0, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->floorMod(II)I

    move-result v0

    .line 293
    .local v0, "f":I
    const/4 v1, 0x3

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 294
    .local v1, "p":I
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisTerrainArt;->structureBeaconFrames:[[Landroid/graphics/Bitmap;

    aget-object v2, v2, v1

    aget-object v2, v2, v0

    return-object v2
.end method

.method public getStructurePadMetatile(III)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "structureType"    # I
    .param p2, "tileId"    # I
    .param p3, "padFrame"    # I

    .line 277
    const/4 v0, 0x4

    invoke-static {p3, v0}, Ljava/lang/Math;->floorMod(II)I

    move-result v0

    .line 278
    .local v0, "p":I
    const/16 v1, 0xc

    if-ne p1, v1, :cond_1

    .line 279
    sget-object v1, Lcom/ahsim/demulation/GenesisTerrainArt;->REFINERY_PAD_TOP:[I

    invoke-static {v1, p2}, Lcom/ahsim/demulation/GenesisTerrainArt;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ahsim/demulation/GenesisTerrainArt;->REFINERY_PAD_TOP:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/GenesisTerrainArt;->getMetatile(I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 280
    :cond_0
    sget-object v1, Lcom/ahsim/demulation/GenesisTerrainArt;->REFINERY_PAD_BOTTOM:[I

    invoke-static {v1, p2}, Lcom/ahsim/demulation/GenesisTerrainArt;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/ahsim/demulation/GenesisTerrainArt;->REFINERY_PAD_BOTTOM:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/GenesisTerrainArt;->getMetatile(I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 281
    :cond_1
    const/16 v1, 0xb

    if-ne p1, v1, :cond_5

    .line 282
    sget-object v1, Lcom/ahsim/demulation/GenesisTerrainArt;->STARPORT_PAD_0:[I

    invoke-static {v1, p2}, Lcom/ahsim/demulation/GenesisTerrainArt;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/ahsim/demulation/GenesisTerrainArt;->STARPORT_PAD_0:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/GenesisTerrainArt;->getMetatile(I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 283
    :cond_2
    sget-object v1, Lcom/ahsim/demulation/GenesisTerrainArt;->STARPORT_PAD_1:[I

    invoke-static {v1, p2}, Lcom/ahsim/demulation/GenesisTerrainArt;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/ahsim/demulation/GenesisTerrainArt;->STARPORT_PAD_1:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/GenesisTerrainArt;->getMetatile(I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 284
    :cond_3
    sget-object v1, Lcom/ahsim/demulation/GenesisTerrainArt;->STARPORT_PAD_2:[I

    invoke-static {v1, p2}, Lcom/ahsim/demulation/GenesisTerrainArt;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/ahsim/demulation/GenesisTerrainArt;->STARPORT_PAD_2:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/GenesisTerrainArt;->getMetatile(I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 285
    :cond_4
    sget-object v1, Lcom/ahsim/demulation/GenesisTerrainArt;->STARPORT_PAD_3:[I

    invoke-static {v1, p2}, Lcom/ahsim/demulation/GenesisTerrainArt;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/ahsim/demulation/GenesisTerrainArt;->STARPORT_PAD_3:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/GenesisTerrainArt;->getMetatile(I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 287
    :cond_5
    invoke-virtual {p0, p2}, Lcom/ahsim/demulation/GenesisTerrainArt;->getMetatile(I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method
