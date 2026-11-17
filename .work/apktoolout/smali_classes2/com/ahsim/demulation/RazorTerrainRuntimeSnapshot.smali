.class public final Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;
.super Ljava/lang/Object;
.source "RazorTerrainRuntimeSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;
    }
.end annotation


# static fields
.field public static final BYTES_PER_CELL:I = 0x4

.field private static final CELL_PREFIX:I = -0xa000000

.field public static final MAX_WINDOW_SIDE:I = 0x20

.field public static final RAZOR_ONE_RAM_BASE:I = 0xff7d9c

.field public static final RAZOR_TWO_RAM_BASE:I = 0x200000


# instance fields
.field private final cells:[I

.field public final house:I

.field private final known:[B

.field public final loadedHeight:I

.field public final loadedWidth:I

.field public final loadedX:I

.field public final loadedY:I

.field public final mission:I

.field public final originalMapSide:I

.field public final ramBaseAddress:I

.field public final romVariant:I

.field public final scenarioHeight:I

.field public final scenarioWidth:I

.field public final sourceSha256:Ljava/lang/String;

.field public final unknownCells:I

.field public final worldSide:I

.field public final writtenCells:I


# direct methods
.method private constructor <init>(IIIIILcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;Ljava/lang/String;[I[B)V
    .locals 2
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .param p3, "variant"    # I
    .param p4, "worldSide"    # I
    .param p5, "address"    # I
    .param p6, "info"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    .param p7, "sourceSha"    # Ljava/lang/String;
    .param p8, "sourceCells"    # [I
    .param p9, "sourceMask"    # [B

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->house:I

    .line 80
    iput p2, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->mission:I

    .line 81
    iput p3, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->romVariant:I

    .line 82
    iput p4, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->worldSide:I

    .line 83
    iput p5, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->ramBaseAddress:I

    .line 84
    iget v0, p6, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->storedSide:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->originalMapSide:I

    .line 85
    iget v0, p6, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->scenarioWidth:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->scenarioWidth:I

    .line 86
    iget v0, p6, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->scenarioHeight:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->scenarioHeight:I

    .line 87
    iget v0, p6, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedStartX:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->loadedX:I

    .line 88
    iget v0, p6, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedStartY:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->loadedY:I

    .line 89
    iget v0, p6, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedWidth:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->loadedWidth:I

    .line 90
    iget v0, p6, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedHeight:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->loadedHeight:I

    .line 91
    invoke-virtual {p8}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->cells:[I

    .line 92
    invoke-virtual {p9}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->known:[B

    .line 93
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->loadedWidth:I

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->loadedHeight:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->writtenCells:I

    .line 94
    mul-int v0, p4, p4

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->writtenCells:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->unknownCells:I

    .line 95
    iput-object p7, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->sourceSha256:Ljava/lang/String;

    .line 96
    return-void
.end method

.method static capture(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;II)Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;
    .locals 15
    .param p0, "audit"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    if-eqz p0, :cond_a

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romVariant()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_a

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romVariant()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_a

    .line 44
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->originalMapRemapEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 46
    invoke-virtual/range {p0 .. p2}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->mapInfo(II)Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;

    move-result-object v9

    .line 47
    .local v9, "info":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romVariant()I

    move-result v6

    .line 48
    .local v6, "variant":I
    const/16 v0, 0x40

    const/16 v3, 0x80

    if-ne v6, v1, :cond_0

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, v3

    .line 49
    .local v7, "side":I
    :goto_0
    if-ne v6, v1, :cond_1

    const v4, 0xff7d9c

    goto :goto_1

    :cond_1
    const/high16 v4, 0x200000

    :goto_1
    move v8, v4

    .line 50
    .local v8, "base":I
    iget v4, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->scenarioWidth:I

    if-gt v4, v7, :cond_9

    iget v4, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->scenarioHeight:I

    if-gt v4, v7, :cond_9

    iget v4, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedStartX:I

    if-ltz v4, :cond_9

    iget v4, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedStartY:I

    if-ltz v4, :cond_9

    iget v4, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedStartX:I

    iget v5, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedWidth:I

    add-int/2addr v4, v5

    if-gt v4, v7, :cond_9

    iget v4, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedStartY:I

    iget v5, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedHeight:I

    add-int/2addr v4, v5

    if-gt v4, v7, :cond_9

    if-ne v6, v1, :cond_2

    iget v4, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->storedSide:I

    const/16 v5, 0x20

    if-eq v4, v5, :cond_2

    iget v4, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->storedSide:I

    if-ne v4, v0, :cond_9

    :cond_2
    if-ne v6, v2, :cond_3

    iget v0, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->storedSide:I

    if-ne v0, v3, :cond_9

    :cond_3
    iget v0, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedWidth:I

    iget v2, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->storedSide:I

    if-ne v0, v2, :cond_9

    iget v0, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedHeight:I

    iget v2, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->storedSide:I

    if-ne v0, v2, :cond_9

    .line 58
    iget-boolean v0, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->centeredCompact:Z

    if-eqz v0, :cond_4

    invoke-virtual/range {p0 .. p2}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->compactSourceCopy(II)[B

    move-result-object v0

    goto :goto_2

    .line 59
    :cond_4
    invoke-virtual/range {p0 .. p2}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->directMapCopy(II)[B

    move-result-object v0

    :goto_2
    nop

    .line 60
    .local v0, "source":[B
    array-length v2, v0

    iget v3, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->storedSide:I

    iget v4, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->storedSide:I

    mul-int/2addr v3, v4

    if-ne v2, v3, :cond_8

    .line 62
    mul-int v2, v7, v7

    new-array v11, v2, [I

    .line 63
    .local v11, "cells":[I
    mul-int v2, v7, v7

    new-array v12, v2, [B

    .line 64
    .local v12, "known":[B
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_3
    iget v3, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedHeight:I

    if-ge v2, v3, :cond_7

    const/4 v3, 0x0

    .local v3, "x":I
    :goto_4
    iget v4, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedWidth:I

    if-ge v3, v4, :cond_6

    .line 65
    iget v4, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->storedSide:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    .line 66
    .local v4, "raw":I
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->originalMapRemapEnabled()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/ahsim/demulation/RazorCompactMapPlacement;->loadedTile(IZ)I

    move-result v5

    .line 67
    .local v5, "tile":I
    iget v10, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedStartY:I

    add-int/2addr v10, v2

    mul-int/2addr v10, v7

    add-int/2addr v10, v3

    iget v13, v9, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedStartX:I

    add-int/2addr v10, v13

    .line 68
    .local v10, "index":I
    aget-byte v13, v12, v10

    if-nez v13, :cond_5

    .line 69
    shl-int/lit8 v13, v5, 0x10

    const/high16 v14, -0xa000000

    or-int/2addr v13, v14

    aput v13, v11, v10

    .line 70
    aput-byte v1, v12, v10

    .line 64
    .end local v4    # "raw":I
    .end local v5    # "tile":I
    .end local v10    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 68
    .restart local v4    # "raw":I
    .restart local v5    # "tile":I
    .restart local v10    # "index":I
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v13, "Razor RAM loader writes same cell twice"

    invoke-direct {v1, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    .end local v3    # "x":I
    .end local v4    # "raw":I
    .end local v5    # "tile":I
    .end local v10    # "index":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 72
    .end local v2    # "y":I
    :cond_7
    new-instance v3, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;

    .line 73
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romSourceSha256()Ljava/lang/String;

    move-result-object v10

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v3 .. v12}, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;-><init>(IIIIILcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;Ljava/lang/String;[I[B)V

    .line 72
    return-object v3

    .line 61
    .end local v11    # "cells":[I
    .end local v12    # "known":[B
    :cond_8
    new-instance v1, Ljava/io/IOException;

    const-string v2, "ROM map payload length changed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    .end local v0    # "source":[B
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor world layout does not match verified 68000 copy path"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    .end local v6    # "variant":I
    .end local v7    # "side":I
    .end local v8    # "base":I
    .end local v9    # "info":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor snapshot requires authenticated, non-gameplay ROM loader"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private index(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 98
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->worldSide:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->worldSide:I

    if-ge p2, v0, :cond_0

    .line 100
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->worldSide:I

    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    return v0

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cell outside physical Razor RAM grid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public isWritten(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 102
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->known:[B

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->index(II)I

    move-result v1

    aget-byte v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadedMetatile(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->index(II)I

    move-result v0

    .line 106
    .local v0, "i":I
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->known:[B

    aget-byte v1, v1, v0

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->cells:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    :goto_0
    return v1
.end method

.method public packedWordsCopy()[I
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->cells:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public romRamAddress(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 115
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->ramBaseAddress:I

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->index(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method public romWrittenCellWord(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->index(II)I

    move-result v0

    .line 111
    .local v0, "i":I
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->known:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->cells:[I

    aget v1, v1, v0

    return v1

    .line 111
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unwritten RAM does not have a known terrain value"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public window(IIII)Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;
    .locals 10
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    const/4 v0, 0x1

    if-lt p3, v0, :cond_3

    if-lt p4, v0, :cond_3

    const/16 v0, 0x20

    if-gt p3, v0, :cond_3

    if-gt p4, v0, :cond_3

    if-ltz p1, :cond_3

    if-ltz p2, :cond_3

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->worldSide:I

    sub-int/2addr v0, p3

    if-gt p1, v0, :cond_3

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->worldSide:I

    sub-int/2addr v0, p4

    if-gt p2, v0, :cond_3

    .line 155
    mul-int v0, p3, p4

    new-array v6, v0, [I

    .line 156
    .local v6, "result":[I
    mul-int v0, p3, p4

    new-array v7, v0, [B

    .line 157
    .local v7, "mask":[B
    const/4 v0, 0x0

    .line 158
    .local v0, "written":I
    const/4 v1, 0x0

    move v8, v0

    .end local v0    # "written":I
    .local v1, "y":I
    .local v8, "written":I
    :goto_0
    if-ge v1, p4, :cond_2

    .line 159
    add-int v0, p2, v1

    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->worldSide:I

    mul-int/2addr v0, v2

    add-int/2addr v0, p1

    .line 160
    .local v0, "src":I
    mul-int v2, v1, p3

    .line 161
    .local v2, "dst":I
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->cells:[I

    invoke-static {v3, v0, v6, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->known:[B

    invoke-static {v3, v0, v7, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_1
    if-ge v3, p3, :cond_1

    add-int v4, v2, v3

    aget-byte v4, v7, v4

    if-eqz v4, :cond_0

    add-int/lit8 v8, v8, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 158
    .end local v0    # "src":I
    .end local v2    # "dst":I
    .end local v3    # "x":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v1    # "y":I
    :cond_2
    new-instance v1, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;

    const/4 v9, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "startX":I
    .end local p2    # "startY":I
    .end local p3    # "width":I
    .end local p4    # "height":I
    .local v2, "startX":I
    .local v3, "startY":I
    .local v4, "width":I
    .local v5, "height":I
    invoke-direct/range {v1 .. v9}, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;-><init>(IIII[I[BILcom/ahsim/demulation/RazorTerrainRuntimeSnapshot-IA;)V

    return-object v1

    .line 152
    .end local v2    # "startX":I
    .end local v3    # "startY":I
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "result":[I
    .end local v7    # "mask":[B
    .end local v8    # "written":I
    .restart local p1    # "startX":I
    .restart local p2    # "startY":I
    .restart local p3    # "width":I
    .restart local p4    # "height":I
    :cond_3
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 154
    .end local p1    # "startX":I
    .end local p2    # "startY":I
    .end local p3    # "width":I
    .end local p4    # "height":I
    .restart local v2    # "startX":I
    .restart local v3    # "startY":I
    .restart local v4    # "width":I
    .restart local v5    # "height":I
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Razor snapshot window outside physical world or >32x32"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writtenMaskCopy()[B
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->known:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public writtenRamBytesCopy()[B
    .locals 6

    .line 172
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->cells:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 173
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->cells:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->known:[B

    aget-byte v2, v2, v1

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->cells:[I

    aget v2, v2, v1

    .local v2, "word":I
    mul-int/lit8 v3, v1, 0x4

    .line 175
    .local v3, "p":I
    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, v2, 0x10

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 176
    add-int/lit8 v4, v3, 0x2

    ushr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v3, 0x3

    int-to-byte v5, v2

    aput-byte v5, v0, v4

    .line 173
    .end local v2    # "word":I
    .end local v3    # "p":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method
