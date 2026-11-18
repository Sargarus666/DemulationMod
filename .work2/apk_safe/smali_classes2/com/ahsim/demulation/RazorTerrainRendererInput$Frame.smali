.class public final Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;
.super Ljava/lang/Object;
.source "RazorTerrainRendererInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorTerrainRendererInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Frame"
.end annotation


# instance fields
.field public final height:I

.field public final house:I

.field public final mission:I

.field public final ramBase:I

.field public final romVariant:I

.field public final scenarioHeight:I

.field public final scenarioWidth:I

.field public final sourceSha256:Ljava/lang/String;

.field public final unknownCount:I

.field public final width:I

.field private final word32:[I

.field public final worldSide:I

.field private final written:[B

.field public final writtenCount:I

.field public final x:I

.field public final y:I


# direct methods
.method private constructor <init>(Lcom/ahsim/demulation/RazorTerrainRendererInput;IIIILcom/ahsim/demulation/RazorTerrainCellReadPath$Window;)V
    .locals 17
    .param p1, "owner"    # Lcom/ahsim/demulation/RazorTerrainRendererInput;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "view"    # Lcom/ahsim/demulation/RazorTerrainCellReadPath$Window;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v2, v0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->x:I

    iput v3, v0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->y:I

    iput v4, v0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->width:I

    iput v5, v0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->height:I

    .line 58
    iget v7, v1, Lcom/ahsim/demulation/RazorTerrainRendererInput;->worldSide:I

    iput v7, v0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->worldSide:I

    .line 59
    iget v7, v1, Lcom/ahsim/demulation/RazorTerrainRendererInput;->scenarioWidth:I

    iput v7, v0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->scenarioWidth:I

    .line 60
    iget v7, v1, Lcom/ahsim/demulation/RazorTerrainRendererInput;->scenarioHeight:I

    iput v7, v0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->scenarioHeight:I

    .line 61
    iget v7, v1, Lcom/ahsim/demulation/RazorTerrainRendererInput;->romVariant:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    const v7, 0xff7d9c

    goto :goto_0

    .line 62
    :cond_0
    const/high16 v7, 0x200000

    :goto_0
    iput v7, v0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->ramBase:I

    .line 63
    iget v7, v1, Lcom/ahsim/demulation/RazorTerrainRendererInput;->house:I

    iput v7, v0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->house:I

    iget v7, v1, Lcom/ahsim/demulation/RazorTerrainRendererInput;->mission:I

    iput v7, v0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->mission:I

    iget v7, v1, Lcom/ahsim/demulation/RazorTerrainRendererInput;->romVariant:I

    iput v7, v0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->romVariant:I

    .line 64
    iget-object v7, v1, Lcom/ahsim/demulation/RazorTerrainRendererInput;->sourceSha256:Ljava/lang/String;

    iput-object v7, v0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->sourceSha256:Ljava/lang/String;

    .line 65
    mul-int v7, v4, v5

    new-array v7, v7, [B

    iput-object v7, v0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->written:[B

    .line 66
    mul-int v7, v4, v5

    new-array v7, v7, [I

    iput-object v7, v0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->word32:[I

    .line 67
    const/4 v7, 0x0

    .line 68
    .local v7, "hits":I
    const/4 v9, 0x0

    .local v9, "dy":I
    :goto_1
    if-ge v9, v5, :cond_5

    const/4 v10, 0x0

    .local v10, "dx":I
    :goto_2
    if-ge v10, v4, :cond_4

    .line 69
    invoke-virtual {v6, v10, v9}, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Window;->cell(II)Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;

    move-result-object v11

    .line 70
    .local v11, "cell":Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;
    mul-int v12, v9, v4

    add-int/2addr v12, v10

    .line 71
    .local v12, "i":I
    iget v13, v0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->ramBase:I

    add-int v14, v3, v9

    iget v15, v0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->worldSide:I

    mul-int/2addr v14, v15

    add-int v15, v2, v10

    add-int/2addr v14, v15

    mul-int/lit8 v14, v14, 0x4

    add-int/2addr v13, v14

    .line 72
    .local v13, "expectedAddress":I
    iget v14, v11, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;->ramAddress:I

    if-ne v14, v13, :cond_3

    iget v14, v11, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;->x:I

    add-int v15, v2, v10

    if-ne v14, v15, :cond_3

    iget v14, v11, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;->y:I

    add-int v15, v3, v9

    if-ne v14, v15, :cond_3

    .line 74
    iget-boolean v14, v11, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;->romWritten:Z

    const/4 v15, -0x1

    if-eqz v14, :cond_2

    .line 75
    iget v14, v11, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;->firstWord16:I

    if-ltz v14, :cond_1

    iget v14, v11, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;->word32:I

    if-eq v14, v15, :cond_1

    iget v14, v11, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;->surfaceIndex9:I

    iget v15, v11, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;->firstWord16:I

    and-int/lit16 v15, v15, 0x1ff

    if-ne v14, v15, :cond_1

    iget v14, v11, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;->otherFirstWordBits:I

    iget v15, v11, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;->firstWord16:I

    const v16, 0xfe00

    and-int v15, v15, v16

    if-ne v14, v15, :cond_1

    .line 79
    iget-object v14, v0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->written:[B

    aput-byte v8, v14, v12

    .line 80
    iget-object v14, v0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->word32:[I

    iget v15, v11, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;->word32:I

    aput v15, v14, v12

    .line 81
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 78
    :cond_1
    new-instance v8, Ljava/io/IOException;

    const-string v14, "Inconsistent authenticated 68000 RAM cell"

    invoke-direct {v8, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 84
    :cond_2
    iget-object v14, v0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->written:[B

    const/16 v16, 0x0

    aput-byte v16, v14, v12

    .line 85
    iget-object v14, v0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->word32:[I

    aput v15, v14, v12

    .line 68
    .end local v11    # "cell":Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;
    .end local v12    # "i":I
    .end local v13    # "expectedAddress":I
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 73
    .restart local v11    # "cell":Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;
    .restart local v12    # "i":I
    .restart local v13    # "expectedAddress":I
    :cond_3
    new-instance v8, Ljava/io/IOException;

    const-string v14, "Inconsistent ROM cell address/stride"

    invoke-direct {v8, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 68
    .end local v10    # "dx":I
    .end local v11    # "cell":Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;
    .end local v12    # "i":I
    .end local v13    # "expectedAddress":I
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 88
    .end local v9    # "dy":I
    :cond_5
    iput v7, v0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->writtenCount:I

    .line 89
    mul-int v8, v4, v5

    sub-int/2addr v8, v7

    iput v8, v0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->unknownCount:I

    .line 90
    iget v8, v6, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Window;->writtenCells:I

    if-ne v8, v7, :cond_6

    .line 92
    return-void

    .line 91
    :cond_6
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Read path returned inconsistent written mask"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/RazorTerrainRendererInput;IIIILcom/ahsim/demulation/RazorTerrainCellReadPath$Window;Lcom/ahsim/demulation/RazorTerrainRendererInput-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;-><init>(Lcom/ahsim/demulation/RazorTerrainRendererInput;IIIILcom/ahsim/demulation/RazorTerrainCellReadPath$Window;)V

    return-void
.end method

.method private offset(II)I
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 94
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->width:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->height:I

    if-ge p2, v0, :cond_0

    .line 96
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->width:I

    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    return v0

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Outside Razor frame"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public completeWordsCopy()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->requireFullyWritten()V

    .line 125
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->word32:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public diagnosticWordsCopy()[I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->word32:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public firstWord(II)I
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->requireWord(II)I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public fullyWritten()Z
    .locals 1

    .line 98
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->unknownCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWritten(II)Z
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 99
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->written:[B

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->offset(II)I

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

.method public requireFullyWritten()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->fullyWritten()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Viewport includes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->unknownCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unknown Razor terrain records (not safe to render)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requireSurface(II)I
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->requireWord(II)I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0x1ff

    return v0
.end method

.method public requireWord(II)I
    .locals 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->offset(II)I

    move-result v0

    .line 103
    .local v0, "i":I
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->written:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->word32:[I

    aget v1, v1, v0

    return v1

    .line 103
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Outer Razor RAM was not proved initialized"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public secondWord(II)I
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->requireWord(II)I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public writtenMaskCopy()[B
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->written:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
