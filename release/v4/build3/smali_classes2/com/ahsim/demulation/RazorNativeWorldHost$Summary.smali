.class public final Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;
.super Ljava/lang/Object;
.source "RazorNativeWorldHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorNativeWorldHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Summary"
.end annotation


# instance fields
.field public final addedUnits:I

.field public final buildings:I

.field public final extendedGrids:I

.field public final gameplayReady:Z

.field public final missions:I

.field public final terrainMarkers:I

.field public final unexpandedTerrainCells:I

.field public final units:I


# direct methods
.method private constructor <init>(IIIIIII)V
    .locals 1
    .param p1, "m"    # I
    .param p2, "u"    # I
    .param p3, "b"    # I
    .param p4, "ground"    # I
    .param p5, "extra"    # I
    .param p6, "expanded"    # I
    .param p7, "pendingTerrain"    # I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;->gameplayReady:Z

    .line 21
    iput p1, p0, Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;->missions:I

    iput p2, p0, Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;->units:I

    iput p3, p0, Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;->buildings:I

    iput p4, p0, Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;->terrainMarkers:I

    .line 22
    iput p5, p0, Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;->addedUnits:I

    iput p6, p0, Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;->extendedGrids:I

    .line 23
    iput p7, p0, Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;->unexpandedTerrainCells:I

    .line 24
    return-void
.end method

.method synthetic constructor <init>(IIIIIIILcom/ahsim/demulation/RazorNativeWorldHost-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;-><init>(IIIIIII)V

    return-void
.end method
