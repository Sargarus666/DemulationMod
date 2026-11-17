.class public final Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;
.super Ljava/lang/Object;
.source "RomGraphicsVisualComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomGraphicsVisualComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TerrainSceneResult"
.end annotation


# instance fields
.field public final changedMetatiles:I

.field public final changedPixels:I

.field public final totalMetatiles:I

.field public final totalPixels:I


# direct methods
.method private constructor <init>(II)V
    .locals 1
    .param p1, "tiles"    # I
    .param p2, "pixels"    # I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;->changedMetatiles:I

    .line 56
    const/16 v0, 0x16a

    iput v0, p0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;->totalMetatiles:I

    .line 57
    iput p2, p0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;->changedPixels:I

    .line 58
    const v0, 0x5a800

    iput v0, p0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;->totalPixels:I

    .line 59
    return-void
.end method

.method synthetic constructor <init>(IILcom/ahsim/demulation/RomGraphicsVisualComparator-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;-><init>(II)V

    return-void
.end method
