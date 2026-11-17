.class public final Lcom/ahsim/demulation/RazorTerrainCellReadPath$Window;
.super Ljava/lang/Object;
.source "RazorTerrainCellReadPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorTerrainCellReadPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Window"
.end annotation


# instance fields
.field public final height:I

.field private final ramBase:I

.field private final source:Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;

.field public final startX:I

.field public final startY:I

.field public final width:I

.field private final worldSide:I

.field public final writtenCells:I


# direct methods
.method private constructor <init>(Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;II)V
    .locals 1
    .param p1, "data"    # Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;
    .param p2, "addr"    # I
    .param p3, "side"    # I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Window;->source:Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;

    iput p2, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Window;->ramBase:I

    iput p3, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Window;->worldSide:I

    .line 83
    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->startX:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Window;->startX:I

    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->startY:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Window;->startY:I

    .line 84
    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->width:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Window;->width:I

    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->height:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Window;->height:I

    .line 85
    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->writtenCells:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Window;->writtenCells:I

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;IILcom/ahsim/demulation/RazorTerrainCellReadPath-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Window;-><init>(Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;II)V

    return-void
.end method


# virtual methods
.method public cell(II)Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;
    .locals 8
    .param p1, "localX"    # I
    .param p2, "localY"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Window;->source:Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;

    invoke-virtual {v0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->isWritten(II)Z

    move-result v5

    .line 91
    .local v5, "known":Z
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Window;->startX:I

    add-int v2, v0, p1

    .local v2, "x":I
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Window;->startY:I

    add-int v3, v0, p2

    .line 92
    .local v3, "y":I
    new-instance v1, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Window;->ramBase:I

    iget v4, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Window;->worldSide:I

    mul-int/2addr v4, v3

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v0

    .line 93
    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Window;->source:Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;

    invoke-virtual {v0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->writtenCellWord(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;-><init>(IIIZILcom/ahsim/demulation/RazorTerrainCellReadPath-IA;)V

    .line 92
    return-object v1
.end method

.method public fullyWritten()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Window;->source:Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->fullyWritten()Z

    move-result v0

    return v0
.end method
