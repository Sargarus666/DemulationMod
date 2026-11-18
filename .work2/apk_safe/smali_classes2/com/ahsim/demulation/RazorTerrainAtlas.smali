.class public final Lcom/ahsim/demulation/RazorTerrainAtlas;
.super Ljava/lang/Object;
.source "RazorTerrainAtlas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorTerrainAtlas$TileDecoder;,
        Lcom/ahsim/demulation/RazorTerrainAtlas$Preview;,
        Lcom/ahsim/demulation/RazorTerrainAtlas$MapUsage;
    }
.end annotation


# static fields
.field public static final COLUMNS:I = 0x10

.field public static final HEIGHT:I = 0x400

.field public static final ROWS:I = 0x20

.field public static final TILE_SIDE:I = 0x20

.field public static final WIDTH:I = 0x200


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inspectMapUsage(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;)Lcom/ahsim/demulation/RazorTerrainAtlas$MapUsage;
    .locals 19
    .param p0, "bundle"    # Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    move-object/from16 v0, p0

    if-eqz v0, :cond_8

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->missionsDecoded:I

    const/16 v2, 0x2c

    if-lt v1, v2, :cond_8

    .line 98
    const/16 v1, 0x100

    new-array v7, v1, [J

    .line 99
    .local v7, "freq":[J
    const/4 v1, 0x0

    .local v1, "full":I
    const/4 v2, 0x0

    .line 100
    .local v2, "compact":I
    const-wide/16 v3, 0x0

    .line 101
    .local v3, "cells":J
    invoke-virtual {v0}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->allMissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide/from16 v17, v3

    move v3, v1

    move-object v1, v5

    move-wide/from16 v5, v17

    move v4, v2

    .end local v1    # "full":I
    .end local v2    # "compact":I
    .local v3, "full":I
    .local v4, "compact":I
    .local v5, "cells":J
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    .line 102
    .local v2, "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    iget v9, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    const/16 v10, 0x20

    if-ne v9, v10, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 103
    :cond_0
    iget v9, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    const/16 v10, 0x40

    if-eq v9, v10, :cond_2

    iget v9, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    const/16 v10, 0x80

    if-ne v9, v10, :cond_1

    goto :goto_1

    .line 104
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v8, "Razor direct map has unexpected size"

    invoke-direct {v1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mapBytes()[B

    move-result-object v9

    .line 106
    .local v9, "map":[B
    array-length v10, v9

    iget v11, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    iget v12, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    mul-int/2addr v11, v12

    if-ne v10, v11, :cond_4

    .line 108
    add-int/lit8 v3, v3, 0x1

    .line 109
    array-length v10, v9

    :goto_2
    if-ge v8, v10, :cond_3

    aget-byte v11, v9, v8

    .local v11, "value":B
    and-int/lit16 v12, v11, 0xff

    aget-wide v13, v7, v12

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    aput-wide v13, v7, v12

    add-long/2addr v5, v15

    .end local v11    # "value":B
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 110
    .end local v2    # "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .end local v9    # "map":[B
    :cond_3
    goto :goto_0

    .line 107
    .restart local v2    # "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .restart local v9    # "map":[B
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v8, "Razor direct map truncated"

    invoke-direct {v1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    .end local v2    # "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .end local v9    # "map":[B
    :cond_5
    const/4 v1, 0x0

    .line 112
    .local v1, "distinct":I
    array-length v2, v7

    move/from16 v17, v8

    move v8, v1

    move/from16 v1, v17

    .end local v1    # "distinct":I
    .local v8, "distinct":I
    :goto_3
    if-ge v1, v2, :cond_7

    aget-wide v9, v7, v1

    .local v9, "count":J
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-lez v11, :cond_6

    add-int/lit8 v8, v8, 0x1

    .end local v9    # "count":J
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 113
    :cond_7
    new-instance v2, Lcom/ahsim/demulation/RazorTerrainAtlas$MapUsage;

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/ahsim/demulation/RazorTerrainAtlas$MapUsage;-><init>(IIJ[JILcom/ahsim/demulation/RazorTerrainAtlas-IA;)V

    return-object v2

    .line 97
    .end local v3    # "full":I
    .end local v4    # "compact":I
    .end local v5    # "cells":J
    .end local v7    # "freq":[J
    .end local v8    # "distinct":I
    :cond_8
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor atlas map usage requires verified mission bundle"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static render(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;I)Lcom/ahsim/demulation/RazorTerrainAtlas$Preview;
    .locals 2
    .param p0, "audit"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .param p1, "paletteVariant"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    if-eqz p0, :cond_0

    .line 66
    new-instance v0, Lcom/ahsim/demulation/RazorTerrainAtlas$1;

    invoke-direct {v0, p0}, Lcom/ahsim/demulation/RazorTerrainAtlas$1;-><init>(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;)V

    invoke-static {v0, p1}, Lcom/ahsim/demulation/RazorTerrainAtlas;->renderTiles(Lcom/ahsim/demulation/RazorTerrainAtlas$TileDecoder;I)Lcom/ahsim/demulation/RazorTerrainAtlas$Preview;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor atlas requires verified terrain source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static renderTiles(Lcom/ahsim/demulation/RazorTerrainAtlas$TileDecoder;I)Lcom/ahsim/demulation/RazorTerrainAtlas$Preview;
    .locals 10
    .param p0, "decoder"    # Lcom/ahsim/demulation/RazorTerrainAtlas$TileDecoder;
    .param p1, "paletteVariant"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    if-eqz p0, :cond_3

    if-ltz p1, :cond_3

    const/4 v0, 0x4

    if-ge p1, v0, :cond_3

    .line 80
    const/high16 v0, 0x80000

    new-array v0, v0, [I

    .line 81
    .local v0, "pixels":[I
    const/4 v1, 0x0

    .local v1, "id":I
    :goto_0
    const/16 v2, 0x200

    if-ge v1, v2, :cond_2

    .line 82
    invoke-interface {p0, p1, v1}, Lcom/ahsim/demulation/RazorTerrainAtlas$TileDecoder;->decode(II)[I

    move-result-object v3

    .line 83
    .local v3, "tile":[I
    if-eqz v3, :cond_1

    array-length v4, v3

    const/16 v5, 0x400

    if-ne v4, v5, :cond_1

    .line 85
    rem-int/lit8 v4, v1, 0x10

    const/16 v5, 0x20

    mul-int/2addr v4, v5

    .line 86
    .local v4, "x0":I
    div-int/lit8 v6, v1, 0x10

    mul-int/2addr v6, v5

    .line 87
    .local v6, "y0":I
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_1
    if-ge v7, v5, :cond_0

    .line 88
    mul-int/lit8 v8, v7, 0x20

    add-int v9, v6, v7

    mul-int/2addr v9, v2

    add-int/2addr v9, v4

    invoke-static {v3, v8, v0, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 81
    .end local v3    # "tile":[I
    .end local v4    # "x0":I
    .end local v6    # "y0":I
    .end local v7    # "y":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .restart local v3    # "tile":[I
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Razor metatile decoder returned unexpected image size"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    .end local v1    # "id":I
    .end local v3    # "tile":[I
    :cond_2
    new-instance v1, Lcom/ahsim/demulation/RazorTerrainAtlas$Preview;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/ahsim/demulation/RazorTerrainAtlas$Preview;-><init>(I[ILcom/ahsim/demulation/RazorTerrainAtlas-IA;)V

    return-object v1

    .line 79
    .end local v0    # "pixels":[I
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor atlas requires valid decoder and palette 0..3"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
