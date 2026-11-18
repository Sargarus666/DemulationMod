.class public final Lcom/ahsim/demulation/RazorTerrainRendererInput;
.super Ljava/lang/Object;
.source "RazorTerrainRendererInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;
    }
.end annotation


# static fields
.field public static final MAX_FRAME_SIDE:I = 0x20

.field public static final RECORD_BYTES:I = 0x4

.field public static final UNKNOWN:I = -0x1


# instance fields
.field public final house:I

.field public final mission:I

.field public final offlineOnly:Z

.field private final readPath:Lcom/ahsim/demulation/RazorTerrainCellReadPath;

.field public final romVariant:I

.field public final scenarioHeight:I

.field public final scenarioWidth:I

.field public final sourceSha256:Ljava/lang/String;

.field public final worldSide:I


# direct methods
.method private constructor <init>(Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;)V
    .locals 1
    .param p1, "snapshot"    # Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput;->offlineOnly:Z

    .line 30
    invoke-static {p1}, Lcom/ahsim/demulation/RazorTerrainCellReadPath;->capture(Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;)Lcom/ahsim/demulation/RazorTerrainCellReadPath;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput;->readPath:Lcom/ahsim/demulation/RazorTerrainCellReadPath;

    .line 31
    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->romVariant:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput;->romVariant:I

    .line 32
    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->house:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput;->house:I

    .line 33
    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->mission:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput;->mission:I

    .line 34
    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->worldSide:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput;->worldSide:I

    .line 35
    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->scenarioWidth:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput;->scenarioWidth:I

    .line 36
    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->scenarioHeight:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput;->scenarioHeight:I

    .line 37
    iget-object v0, p1, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->sourceSha256:Ljava/lang/String;

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput;->sourceSha256:Ljava/lang/String;

    .line 38
    return-void
.end method

.method static capture(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;II)Lcom/ahsim/demulation/RazorTerrainRendererInput;
    .locals 2
    .param p0, "audit"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v0, Lcom/ahsim/demulation/RazorTerrainRendererInput;

    invoke-virtual {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->runtimeTerrainSnapshot(II)Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ahsim/demulation/RazorTerrainRendererInput;-><init>(Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;)V

    return-object v0

    .line 43
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Only a validated, offline Razor audit may provide terrain"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public completeFrame(IIII)Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RazorTerrainRendererInput;->frame(IIII)Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;

    move-result-object v0

    .line 145
    .local v0, "frame":Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->requireFullyWritten()V

    .line 146
    return-object v0
.end method

.method public frame(IIII)Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    const/4 v0, 0x1

    if-lt p3, v0, :cond_0

    if-lt p4, v0, :cond_0

    const/16 v0, 0x20

    if-gt p3, v0, :cond_0

    if-gt p4, v0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput;->scenarioWidth:I

    sub-int/2addr v0, p3

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput;->scenarioHeight:I

    sub-int/2addr v0, p4

    if-gt p2, v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput;->worldSide:I

    sub-int/2addr v0, p3

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput;->worldSide:I

    sub-int/2addr v0, p4

    if-gt p2, v0, :cond_0

    .line 140
    new-instance v1, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput;->readPath:Lcom/ahsim/demulation/RazorTerrainCellReadPath;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RazorTerrainCellReadPath;->window(IIII)Lcom/ahsim/demulation/RazorTerrainCellReadPath$Window;

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p1    # "x":I
    .end local p2    # "y":I
    .end local p3    # "width":I
    .end local p4    # "height":I
    .local v3, "x":I
    .local v4, "y":I
    .local v5, "width":I
    .local v6, "height":I
    invoke-direct/range {v1 .. v8}, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;-><init>(Lcom/ahsim/demulation/RazorTerrainRendererInput;IIIILcom/ahsim/demulation/RazorTerrainCellReadPath$Window;Lcom/ahsim/demulation/RazorTerrainRendererInput-IA;)V

    return-object v1

    .line 136
    .end local v3    # "x":I
    .end local v4    # "y":I
    .end local v5    # "width":I
    .end local v6    # "height":I
    .restart local p1    # "x":I
    .restart local p2    # "y":I
    .restart local p3    # "width":I
    .restart local p4    # "height":I
    :cond_0
    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 139
    .end local p1    # "x":I
    .end local p2    # "y":I
    .end local p3    # "width":I
    .end local p4    # "height":I
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    .restart local v5    # "width":I
    .restart local v6    # "height":I
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Viewport outside validated Razor map/scenario bounds"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
