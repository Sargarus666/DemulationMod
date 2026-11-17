.class public final Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;
.super Ljava/lang/Object;
.source "RazorTerrainPreviewNavigator.java"


# static fields
.field public static final ZOOM_TILES:[I


# instance fields
.field private classicCols678:I

.field private classicRows678:I

.field private final maxX:I

.field private final maxY:I

.field private final minX:I

.field private final minY:I

.field private final scenarioHeight:I

.field private final scenarioWidth:I

.field private viewportAspect675:F

.field private viewportRows675:I

.field private x:I

.field private y:I

.field private zoomIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 11
    const/16 v0, 0x18

    const/16 v1, 0x20

    const/16 v2, 0x8

    const/16 v3, 0xc

    const/16 v4, 0x10

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->ZOOM_TILES:[I

    return-void
.end method

.method public constructor <init>(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x2

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->zoomIndex:I

    .line 17
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->viewportAspect675:F

    .line 32
    sget-object v1, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->ZOOM_TILES:[I

    aget v0, v1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->viewportRows675:I

    .line 35
    if-eqz p1, :cond_4

    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->scenarioWidth:I

    if-lez v0, :cond_4

    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->scenarioHeight:I

    if-lez v0, :cond_4

    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedWidth:I

    if-lez v0, :cond_4

    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedHeight:I

    if-lez v0, :cond_4

    .line 38
    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->scenarioWidth:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->scenarioWidth:I

    .line 39
    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->scenarioHeight:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->scenarioHeight:I

    .line 40
    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedStartX:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->minX:I

    .line 41
    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedStartY:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->minY:I

    .line 42
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->scenarioWidth:I

    iget v1, p1, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedStartX:I

    iget v2, p1, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedWidth:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->maxX:I

    .line 43
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->scenarioHeight:I

    iget v1, p1, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedStartY:I

    iget v2, p1, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->loadedHeight:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->maxY:I

    .line 44
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->maxX:I

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->minX:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->maxY:I

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->minY:I

    if-le v0, v1, :cond_3

    .line 46
    :goto_0
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->zoomIndex:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v0

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->maxX:I

    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->minX:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v0

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->maxY:I

    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->minY:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->zoomIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->zoomIndex:I

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v0

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->maxX:I

    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->minX:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v0

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->maxY:I

    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->minY:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_2

    .line 49
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->viewportRows675:I

    .line 50
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->center()V

    .line 51
    return-void

    .line 48
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Authenticated Razor viewport is smaller than minimum zoom"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No authenticated Razor terrain inside scenario bounds"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor preview lacks a validated map region"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private moveTo(II)Z
    .locals 3
    .param p1, "nx"    # I
    .param p2, "ny"    # I

    .line 101
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->minX:I

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->maxX:I

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 102
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->minY:I

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->maxY:I

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->rows()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 103
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y:I

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 104
    .local v0, "changed":Z
    :goto_1
    iput p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x:I

    iput p2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y:I

    .line 105
    return v0
.end method

.method private rowsFor675(I)I
    .locals 3
    .param p1, "index"    # I

    .line 67
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->maxY:I

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->minY:I

    sub-int/2addr v0, v1

    const/16 v1, 0x40

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v1, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->ZOOM_TILES:[I

    aget v1, v1, p1

    int-to-float v1, v1

    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->viewportAspect675:F

    mul-float/2addr v1, v2

    .line 68
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 67
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private zoomTo(I)Z
    .locals 4
    .param p1, "next"    # I

    .line 83
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->classicMode678()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 84
    :cond_0
    if-ltz p1, :cond_2

    sget-object v0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->ZOOM_TILES:[I

    array-length v0, v0

    if-ge p1, v0, :cond_2

    sget-object v0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->ZOOM_TILES:[I

    aget v0, v0, p1

    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->maxX:I

    iget v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->minX:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_2

    sget-object v0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->ZOOM_TILES:[I

    aget v0, v0, p1

    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->maxY:I

    iget v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->minY:I

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x:I

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .local v0, "centreX":I
    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y:I

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->rows()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 87
    .local v1, "centreY":I
    iput p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->zoomIndex:I

    .line 88
    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->zoomIndex:I

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->rowsFor675(I)I

    move-result v2

    iput v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->viewportRows675:I

    .line 89
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->rows()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    invoke-direct {p0, v2, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->moveTo(II)Z

    .line 90
    const/4 v2, 0x1

    return v2

    .line 85
    .end local v0    # "centreX":I
    .end local v1    # "centreY":I
    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public center()V
    .locals 3

    .line 93
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->minX:I

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->maxX:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->minY:I

    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->maxY:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->rows()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->moveTo(II)Z

    return-void
.end method

.method public classicMode678()Z
    .locals 1

    .line 19
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->classicCols678:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public focus(II)Z
    .locals 2
    .param p1, "tileX"    # I
    .param p2, "tileY"    # I

    .line 97
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->minX:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->minY:I

    if-lt p2, v0, :cond_1

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->maxX:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->maxY:I

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->rows()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->moveTo(II)Z

    move-result v0

    return v0

    .line 97
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public maxX()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->maxX:I

    return v0
.end method

.method public maxY()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->maxY:I

    return v0
.end method

.method public minX()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->minX:I

    return v0
.end method

.method public minY()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->minY:I

    return v0
.end method

.method public pan(II)Z
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 92
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y:I

    add-int/2addr v1, p2

    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->moveTo(II)Z

    move-result v0

    return v0
.end method

.method public rows()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->viewportRows675:I

    return v0
.end method

.method public scenarioHeight()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->scenarioHeight:I

    return v0
.end method

.method public scenarioWidth()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->scenarioWidth:I

    return v0
.end method

.method public setClassicViewport678(II)V
    .locals 6
    .param p1, "pixelWidth"    # I
    .param p2, "pixelHeight"    # I

    .line 22
    if-lez p1, :cond_3

    if-gtz p2, :cond_0

    goto :goto_1

    .line 24
    :cond_0
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->maxX:I

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->minX:I

    sub-int/2addr v0, v1

    invoke-static {p1, p2}, Lcom/ahsim/demulation/RazorClassicMetrics678;->columns(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 25
    .local v0, "columns":I
    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->maxY:I

    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->minY:I

    sub-int/2addr v1, v2

    invoke-static {p1, p2}, Lcom/ahsim/demulation/RazorClassicMetrics678;->rows(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 26
    .local v1, "rows":I
    if-lez v0, :cond_2

    if-gtz v1, :cond_1

    goto :goto_0

    .line 27
    :cond_1
    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x:I

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .local v2, "centerX":I
    iget v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y:I

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->rows()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 28
    .local v3, "centerY":I
    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->classicCols678:I

    iput v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->classicRows678:I

    .line 29
    iget v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->classicRows678:I

    iput v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->viewportRows675:I

    .line 30
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->rows()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v3, v5

    invoke-direct {p0, v4, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->moveTo(II)Z

    .line 31
    return-void

    .line 26
    .end local v2    # "centerX":I
    .end local v3    # "centerY":I
    :cond_2
    :goto_0
    return-void

    .line 22
    .end local v0    # "columns":I
    .end local v1    # "rows":I
    :cond_3
    :goto_1
    return-void
.end method

.method public setViewportAspect675(F)V
    .locals 4
    .param p1, "heightOverWidth"    # F

    .line 56
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    const/high16 v0, 0x40200000    # 2.5f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v1, 0x3eb33333    # 0.35f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->viewportAspect675:F

    .line 61
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->classicMode678()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 62
    :cond_1
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->viewportRows675:I

    .line 63
    .local v0, "oldRows":I
    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->zoomIndex:I

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->rowsFor675(I)I

    move-result v1

    iput v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->viewportRows675:I

    .line 64
    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x:I

    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y:I

    iget v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->viewportRows675:I

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->moveTo(II)Z

    .line 65
    return-void

    .line 57
    .end local v0    # "oldRows":I
    :cond_2
    :goto_0
    return-void
.end method

.method public tiles()I
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->classicMode678()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->classicCols678:I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->ZOOM_TILES:[I

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->zoomIndex:I

    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method public x()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x:I

    return v0
.end method

.method public y()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y:I

    return v0
.end method

.method public zoomIn()Z
    .locals 1

    .line 80
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->zoomIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->zoomTo(I)Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .line 81
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->zoomIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->zoomTo(I)Z

    move-result v0

    return v0
.end method
