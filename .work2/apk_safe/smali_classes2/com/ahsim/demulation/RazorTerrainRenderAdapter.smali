.class public final Lcom/ahsim/demulation/RazorTerrainRenderAdapter;
.super Ljava/lang/Object;
.source "RazorTerrainRenderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;
    }
.end annotation


# static fields
.field public static final METATILE_PIXELS:I = 0x20


# instance fields
.field private final audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

.field public final house:I

.field private final input:Lcom/ahsim/demulation/RazorTerrainRendererInput;

.field public final mission:I

.field public final offlineOnly:Z

.field public final ramBase:I

.field public final romVariant:I

.field public final scenarioHeight:I

.field public final scenarioWidth:I

.field public final sourceSha256:Ljava/lang/String;

.field public final worldSide:I


# direct methods
.method private constructor <init>(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;Lcom/ahsim/demulation/RazorTerrainRendererInput;)V
    .locals 2
    .param p1, "source"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .param p2, "terrain"    # Lcom/ahsim/demulation/RazorTerrainRendererInput;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->offlineOnly:Z

    .line 21
    iput-object p1, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    iput-object p2, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->input:Lcom/ahsim/demulation/RazorTerrainRendererInput;

    .line 22
    iget v1, p2, Lcom/ahsim/demulation/RazorTerrainRendererInput;->worldSide:I

    iput v1, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->worldSide:I

    iget v1, p2, Lcom/ahsim/demulation/RazorTerrainRendererInput;->scenarioWidth:I

    iput v1, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->scenarioWidth:I

    .line 23
    iget v1, p2, Lcom/ahsim/demulation/RazorTerrainRendererInput;->scenarioHeight:I

    iput v1, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->scenarioHeight:I

    iget v1, p2, Lcom/ahsim/demulation/RazorTerrainRendererInput;->romVariant:I

    iput v1, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->romVariant:I

    .line 24
    iget v1, p2, Lcom/ahsim/demulation/RazorTerrainRendererInput;->house:I

    iput v1, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->house:I

    iget v1, p2, Lcom/ahsim/demulation/RazorTerrainRendererInput;->mission:I

    iput v1, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->mission:I

    .line 25
    iget-object v1, p2, Lcom/ahsim/demulation/RazorTerrainRendererInput;->sourceSha256:Ljava/lang/String;

    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->sourceSha256:Ljava/lang/String;

    .line 26
    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->romVariant:I

    if-ne v1, v0, :cond_0

    const v0, 0xff7d9c

    goto :goto_0

    .line 27
    :cond_0
    const/high16 v0, 0x200000

    :goto_0
    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->ramBase:I

    .line 28
    return-void
.end method

.method public static capture(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;II)Lcom/ahsim/demulation/RazorTerrainRenderAdapter;
    .locals 2
    .param p0, "audit"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->offlineRendererInput(II)Lcom/ahsim/demulation/RazorTerrainRendererInput;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;-><init>(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;Lcom/ahsim/demulation/RazorTerrainRendererInput;)V

    return-object v0

    .line 33
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor adapter requires offline authenticated ROM"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkViewport675(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    const/4 v0, 0x1

    if-lt p3, v0, :cond_0

    const/16 v1, 0x20

    if-gt p3, v1, :cond_0

    if-lt p4, v0, :cond_0

    const/16 v0, 0x40

    if-gt p4, v0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->scenarioWidth:I

    sub-int/2addr v0, p3

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->scenarioHeight:I

    sub-int/2addr v0, p4

    if-gt p2, v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->worldSide:I

    sub-int/2addr v0, p3

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->worldSide:I

    sub-int/2addr v0, p4

    if-gt p2, v0, :cond_0

    .line 111
    return-void

    .line 110
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor portrait viewport outside authenticated map"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private rasterize(IIIII[II)Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;
    .locals 16
    .param p1, "palette"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "surfaces"    # [I
    .param p7, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    move/from16 v5, p4

    move/from16 v6, p5

    mul-int/lit8 v11, v5, 0x20

    .line 116
    .local v11, "pxW":I
    mul-int v0, v11, v6

    const/16 v1, 0x20

    mul-int/2addr v0, v1

    new-array v8, v0, [I

    .line 117
    .local v8, "pixels":[I
    const/16 v0, 0x200

    new-array v12, v0, [[I

    .line 118
    .local v12, "cache":[[I
    const/4 v0, 0x0

    .local v0, "yy":I
    :goto_0
    if-ge v0, v6, :cond_5

    const/4 v2, 0x0

    .local v2, "xx":I
    :goto_1
    if-ge v2, v5, :cond_4

    .line 119
    mul-int v3, v0, v5

    add-int/2addr v3, v2

    aget v3, p6, v3

    .line 120
    .local v3, "surface":I
    if-ltz v3, :cond_3

    array-length v4, v12

    if-ge v3, v4, :cond_3

    .line 122
    aget-object v4, v12, v3

    .line 123
    .local v4, "tile":[I
    if-nez v4, :cond_1

    .line 124
    move-object/from16 v7, p0

    iget-object v9, v7, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    move/from16 v10, p1

    invoke-virtual {v9, v10, v3}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->decodeOriginalMetatile(II)[I

    move-result-object v4

    .line 125
    array-length v9, v4

    const/16 v13, 0x400

    if-ne v9, v13, :cond_0

    .line 127
    aput-object v4, v12, v3

    goto :goto_2

    .line 126
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v9, "Unverified Razor metatile dimensions"

    invoke-direct {v1, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_1
    move-object/from16 v7, p0

    move/from16 v10, p1

    .line 129
    :goto_2
    const/4 v9, 0x0

    .local v9, "dy":I
    :goto_3
    if-ge v9, v1, :cond_2

    .line 130
    mul-int/lit8 v13, v9, 0x20

    mul-int/lit8 v14, v0, 0x20

    add-int/2addr v14, v9

    mul-int/2addr v14, v11

    mul-int/lit8 v15, v2, 0x20

    add-int/2addr v14, v15

    invoke-static {v4, v13, v8, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 118
    .end local v3    # "surface":I
    .end local v4    # "tile":[I
    .end local v9    # "dy":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 120
    .restart local v3    # "surface":I
    :cond_3
    move-object/from16 v7, p0

    move/from16 v10, p1

    .line 121
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Native Razor ABI decoded absent metatile"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    .end local v3    # "surface":I
    :cond_4
    move-object/from16 v7, p0

    move/from16 v10, p1

    .end local v2    # "xx":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 v7, p0

    move/from16 v10, p1

    .line 134
    .end local v0    # "yy":I
    new-instance v0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;

    const/4 v10, 0x0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v9, p7

    move-object v1, v7

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v10}, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;-><init>(Lcom/ahsim/demulation/RazorTerrainRenderAdapter;IIIII[I[IILcom/ahsim/demulation/RazorTerrainRenderAdapter-IA;)V

    return-object v0
.end method


# virtual methods
.method public render(IIIII)Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;
    .locals 9
    .param p1, "palette"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    if-ltz p1, :cond_1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    .line 68
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->checkViewport675(IIII)V

    .line 69
    mul-int v0, p4, p5

    new-array v7, v0, [I

    .line 70
    .local v7, "surfaces":[I
    const/4 v0, 0x0

    .local v0, "offsetY":I
    :goto_0
    if-ge v0, p5, :cond_0

    .line 71
    sub-int v1, p5, v0

    const/16 v2, 0x20

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 72
    .local v1, "count":I
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->input:Lcom/ahsim/demulation/RazorTerrainRendererInput;

    add-int v3, p3, v0

    invoke-virtual {v2, p2, v3, p4, v1}, Lcom/ahsim/demulation/RazorTerrainRendererInput;->completeFrame(IIII)Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;

    move-result-object v2

    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainGridAbi;->decode(Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;)[I

    move-result-object v2

    .line 73
    .local v2, "chunk":[I
    mul-int v3, v0, p4

    mul-int v4, p4, v1

    const/4 v5, 0x0

    invoke-static {v2, v5, v7, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    .end local v1    # "count":I
    .end local v2    # "chunk":[I
    add-int/lit8 v0, v0, 0x20

    goto :goto_0

    .line 75
    .end local v0    # "offsetY":I
    :cond_0
    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "palette":I
    .end local p2    # "x":I
    .end local p3    # "y":I
    .end local p4    # "w":I
    .end local p5    # "h":I
    .local v2, "palette":I
    .local v3, "x":I
    .local v4, "y":I
    .local v5, "w":I
    .local v6, "h":I
    invoke-direct/range {v1 .. v8}, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->rasterize(IIIII[II)Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;

    move-result-object p1

    return-object p1

    .line 66
    .end local v2    # "palette":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    .end local v5    # "w":I
    .end local v6    # "h":I
    .end local v7    # "surfaces":[I
    .restart local p1    # "palette":I
    .restart local p2    # "x":I
    .restart local p3    # "y":I
    .restart local p4    # "w":I
    .restart local p5    # "h":I
    :cond_1
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 67
    .end local p1    # "palette":I
    .end local p2    # "x":I
    .end local p3    # "y":I
    .end local p4    # "w":I
    .end local p5    # "h":I
    .restart local v2    # "palette":I
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    .restart local v5    # "w":I
    .restart local v6    # "h":I
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid Razor palette"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public renderNative(ILcom/ahsim/demulation/RazorNativeTerrainFrameBridge;IIII)Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;
    .locals 16
    .param p1, "palette"    # I
    .param p2, "bridge"    # Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v8, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    if-eqz v8, :cond_2

    if-ltz v1, :cond_2

    const/4 v6, 0x4

    if-ge v1, v6, :cond_2

    iget v6, v8, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->romVariant:I

    iget v7, v0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->romVariant:I

    if-ne v6, v7, :cond_2

    iget v6, v8, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->house:I

    iget v7, v0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->house:I

    if-ne v6, v7, :cond_2

    iget v6, v8, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->mission:I

    iget v7, v0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->mission:I

    if-ne v6, v7, :cond_2

    iget v6, v8, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->worldSide:I

    iget v7, v0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->worldSide:I

    if-ne v6, v7, :cond_2

    iget-object v6, v8, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->sourceSha256:Ljava/lang/String;

    iget-object v7, v0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->sourceSha256:Ljava/lang/String;

    .line 85
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 87
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->checkViewport675(IIII)V

    .line 88
    mul-int v6, v4, v5

    new-array v6, v6, [I

    .line 89
    .local v6, "surfaces":[I
    const/4 v7, 0x0

    .line 90
    .local v7, "finalSequence":I
    const/4 v9, 0x0

    .local v9, "offsetY":I
    :goto_0
    if-ge v9, v5, :cond_1

    .line 91
    sub-int v10, v5, v9

    const/16 v11, 0x20

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 92
    .local v10, "count":I
    add-int v11, v3, v9

    invoke-virtual {v8, v2, v11, v4, v10}, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->read(IIII)Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge$Frame;

    move-result-object v11

    .line 93
    .local v11, "live":Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge$Frame;
    invoke-virtual {v11}, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge$Frame;->metatileIdsCopy()[I

    move-result-object v12

    .line 94
    .local v12, "chunk":[I
    iget-object v13, v0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->input:Lcom/ahsim/demulation/RazorTerrainRendererInput;

    add-int v14, v3, v9

    .line 95
    invoke-virtual {v13, v2, v14, v4, v10}, Lcom/ahsim/demulation/RazorTerrainRendererInput;->completeFrame(IIII)Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;

    move-result-object v13

    .line 94
    invoke-static {v13}, Lcom/ahsim/demulation/RazorTerrainGridAbi;->decode(Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;)[I

    move-result-object v13

    .line 96
    .local v13, "reference":[I
    invoke-static {v12, v13}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 99
    mul-int v14, v9, v4

    mul-int v15, v4, v10

    const/4 v0, 0x0

    invoke-static {v12, v0, v6, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iget v7, v11, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge$Frame;->sequence:I

    .line 90
    .end local v10    # "count":I
    .end local v11    # "live":Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge$Frame;
    .end local v12    # "chunk":[I
    .end local v13    # "reference":[I
    add-int/lit8 v9, v9, 0x20

    move-object/from16 v0, p0

    goto :goto_0

    .line 97
    .restart local v10    # "count":I
    .restart local v11    # "live":Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge$Frame;
    .restart local v12    # "chunk":[I
    .restart local v13    # "reference":[I
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Native world diverges from original Razor terrain at row "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int v15, v3, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    .end local v9    # "offsetY":I
    .end local v10    # "count":I
    .end local v11    # "live":Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge$Frame;
    .end local v12    # "chunk":[I
    .end local v13    # "reference":[I
    :cond_1
    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->rasterize(IIIII[II)Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;

    move-result-object v9

    return-object v9

    .line 86
    .end local v6    # "surfaces":[I
    .end local v7    # "finalSequence":I
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor native world / source identity mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
