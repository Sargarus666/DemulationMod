.class public final Lcom/ahsim/demulation/RazorTerrainCellReadPath;
.super Ljava/lang/Object;
.source "RazorTerrainCellReadPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;,
        Lcom/ahsim/demulation/RazorTerrainCellReadPath$Window;
    }
.end annotation


# static fields
.field public static final CELL_BYTES:I = 0x4

.field public static final OTHER_FIRST_WORD_BITS_MASK:I = 0xfe00

.field public static final SURFACE_MASK:I = 0x1ff


# instance fields
.field private final snapshot:Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;


# direct methods
.method private constructor <init>(Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;)V
    .locals 2
    .param p1, "source"    # Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-eqz p1, :cond_0

    .line 59
    iput-object p1, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath;->snapshot:Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;

    .line 60
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing authenticated snapshot"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static capture(Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;)Lcom/ahsim/demulation/RazorTerrainCellReadPath;
    .locals 1
    .param p0, "source"    # Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;

    .line 62
    new-instance v0, Lcom/ahsim/demulation/RazorTerrainCellReadPath;

    invoke-direct {v0, p0}, Lcom/ahsim/demulation/RazorTerrainCellReadPath;-><init>(Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;)V

    return-object v0
.end method


# virtual methods
.method public cell(II)Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath;->snapshot:Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;

    invoke-virtual {v0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->romRamAddress(II)I

    move-result v4

    .line 72
    .local v4, "addr":I
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath;->snapshot:Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;

    invoke-virtual {v0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->isWritten(II)Z

    move-result v5

    .line 73
    .local v5, "known":Z
    new-instance v1, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;

    .line 74
    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath;->snapshot:Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;

    invoke-virtual {v0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->romWrittenCellWord(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    const/4 v7, 0x0

    move v2, p1

    move v3, p2

    .end local p1    # "x":I
    .end local p2    # "y":I
    .local v2, "x":I
    .local v3, "y":I
    invoke-direct/range {v1 .. v7}, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;-><init>(IIIZILcom/ahsim/demulation/RazorTerrainCellReadPath-IA;)V

    .line 73
    return-object v1
.end method

.method public romVariant()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath;->snapshot:Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;

    iget v0, v0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->romVariant:I

    return v0
.end method

.method public sourceSha256()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath;->snapshot:Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;

    iget-object v0, v0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->sourceSha256:Ljava/lang/String;

    return-object v0
.end method

.method public unknownCells()I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath;->snapshot:Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;

    iget v0, v0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->unknownCells:I

    return v0
.end method

.method public window(IIII)Lcom/ahsim/demulation/RazorTerrainCellReadPath$Window;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Window;

    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath;->snapshot:Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->window(IIII)Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;

    move-result-object v1

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath;->snapshot:Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;

    iget v2, v2, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->ramBaseAddress:I

    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath;->snapshot:Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;

    iget v3, v3, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->worldSide:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Window;-><init>(Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;IILcom/ahsim/demulation/RazorTerrainCellReadPath-IA;)V

    return-object v0
.end method

.method public worldSide()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath;->snapshot:Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;

    iget v0, v0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->worldSide:I

    return v0
.end method

.method public writtenCells()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath;->snapshot:Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;

    iget v0, v0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->writtenCells:I

    return v0
.end method
