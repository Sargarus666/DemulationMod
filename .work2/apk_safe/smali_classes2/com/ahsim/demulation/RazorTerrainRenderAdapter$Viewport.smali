.class public final Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;
.super Ljava/lang/Object;
.source "RazorTerrainRenderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorTerrainRenderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Viewport"
.end annotation


# instance fields
.field private final argb:[I

.field public final height:I

.field private final metatileIds:[I

.field public final nativeFrameSequence:I

.field public final paletteVariant:I

.field public final ramBase:I

.field public final scenarioHeight:I

.field public final scenarioWidth:I

.field public final sourceSha256:Ljava/lang/String;

.field public final tilesHigh:I

.field public final tilesWide:I

.field public final width:I

.field public final worldSide:I

.field public final x:I

.field public final y:I


# direct methods
.method private constructor <init>(Lcom/ahsim/demulation/RazorTerrainRenderAdapter;IIIII[I[II)V
    .locals 1
    .param p1, "owner"    # Lcom/ahsim/demulation/RazorTerrainRenderAdapter;
    .param p2, "palette"    # I
    .param p3, "sx"    # I
    .param p4, "sy"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I
    .param p7, "surfaces"    # [I
    .param p8, "pixels"    # [I
    .param p9, "frameSequence"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p3, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->x:I

    iput p4, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->y:I

    iput p5, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->tilesWide:I

    iput p6, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->tilesHigh:I

    .line 48
    mul-int/lit8 v0, p5, 0x20

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->width:I

    mul-int/lit8 v0, p6, 0x20

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->height:I

    .line 49
    iput p2, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->paletteVariant:I

    .line 50
    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->worldSide:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->worldSide:I

    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->scenarioWidth:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->scenarioWidth:I

    .line 51
    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->scenarioHeight:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->scenarioHeight:I

    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->ramBase:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->ramBase:I

    .line 52
    iget-object v0, p1, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->sourceSha256:Ljava/lang/String;

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->sourceSha256:Ljava/lang/String;

    .line 53
    iput p9, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->nativeFrameSequence:I

    .line 54
    invoke-virtual {p7}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->metatileIds:[I

    invoke-virtual {p8}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->argb:[I

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/RazorTerrainRenderAdapter;IIIII[I[IILcom/ahsim/demulation/RazorTerrainRenderAdapter-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;-><init>(Lcom/ahsim/demulation/RazorTerrainRenderAdapter;IIIII[I[II)V

    return-void
.end method


# virtual methods
.method public argbCopy()[I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->argb:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public metatileIdsCopy()[I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->metatileIds:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public pixel(II)I
    .locals 2
    .param p1, "px"    # I
    .param p2, "py"    # I

    .line 59
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->width:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->height:I

    if-ge p2, v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->argb:[I

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->width:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    aget v0, v0, v1

    return v0

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pixel outside Razor viewport"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
