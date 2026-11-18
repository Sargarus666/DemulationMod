.class public final Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;
.super Ljava/lang/Object;
.source "RazorTerrainScenePreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorTerrainScenePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Scene"
.end annotation


# instance fields
.field private final argb:[I

.field public final height:I

.field public final house:I

.field public final mission:I

.field public final paletteVariant:I

.field public final scenarioHeight:I

.field public final scenarioWidth:I

.field public final startTileX:I

.field public final startTileY:I

.field public final storedMapSide:I

.field public final tilesHigh:I

.field public final tilesWide:I

.field public final width:I


# direct methods
.method private constructor <init>(IIIIIIILcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;[I)V
    .locals 1
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .param p3, "palette"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I
    .param p8, "info"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    .param p9, "pixels"    # [I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;->house:I

    .line 37
    iput p2, p0, Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;->mission:I

    .line 38
    iput p3, p0, Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;->paletteVariant:I

    .line 39
    iput p4, p0, Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;->startTileX:I

    .line 40
    iput p5, p0, Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;->startTileY:I

    .line 41
    iput p6, p0, Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;->tilesWide:I

    .line 42
    iput p7, p0, Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;->tilesHigh:I

    .line 43
    mul-int/lit8 v0, p6, 0x20

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;->width:I

    .line 44
    mul-int/lit8 v0, p7, 0x20

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;->height:I

    .line 45
    iget v0, p8, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->storedSide:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;->storedMapSide:I

    .line 46
    iget v0, p8, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->scenarioWidth:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;->scenarioWidth:I

    .line 47
    iget v0, p8, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->scenarioHeight:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;->scenarioHeight:I

    .line 48
    iput-object p9, p0, Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;->argb:[I

    .line 49
    return-void
.end method

.method synthetic constructor <init>(IIIIIIILcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;[ILcom/ahsim/demulation/RazorTerrainScenePreview-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;-><init>(IIIIIIILcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;[I)V

    return-void
.end method


# virtual methods
.method public argbCopy()[I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;->argb:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public pixel(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 52
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;->width:I

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;->height:I

    if-ge p2, v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;->argb:[I

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainScenePreview$Scene;->width:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    aget v0, v0, v1

    return v0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Outside Razor scene crop"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
