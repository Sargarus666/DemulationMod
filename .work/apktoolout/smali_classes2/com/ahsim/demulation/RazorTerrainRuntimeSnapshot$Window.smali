.class public final Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;
.super Ljava/lang/Object;
.source "RazorTerrainRuntimeSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Window"
.end annotation


# instance fields
.field public final height:I

.field private final known:[B

.field public final startX:I

.field public final startY:I

.field public final width:I

.field private final words:[I

.field public final writtenCells:I


# direct methods
.method private constructor <init>(IIII[I[BI)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "words"    # [I
    .param p6, "known"    # [B
    .param p7, "written"    # I

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput p1, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->startX:I

    iput p2, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->startY:I

    iput p3, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->width:I

    iput p4, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->height:I

    iput-object p5, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->words:[I

    iput-object p6, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->known:[B

    .line 126
    iput p7, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->writtenCells:I

    .line 127
    return-void
.end method

.method synthetic constructor <init>(IIII[I[BILcom/ahsim/demulation/RazorTerrainRuntimeSnapshot-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;-><init>(IIII[I[BI)V

    return-void
.end method

.method private at(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 129
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->width:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->height:I

    if-ge p2, v0, :cond_0

    .line 131
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->width:I

    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    return v0

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Coordinate outside captured window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public fullyWritten()Z
    .locals 3

    .line 143
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->writtenCells:I

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->width:I

    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->height:I

    mul-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWritten(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 133
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->known:[B

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->at(II)I

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

.method public loadedMetatile(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->at(II)I

    move-result v0

    .line 136
    .local v0, "i":I
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->known:[B

    aget-byte v1, v1, v0

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->words:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    :goto_0
    return v1
.end method

.method public packedWordsCopy()[I
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->words:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public writtenCellWord(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->at(II)I

    move-result v0

    .line 140
    .local v0, "i":I
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->known:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->words:[I

    aget v1, v1, v0

    return v1

    .line 140
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor window contains unknown RAM"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writtenMaskCopy()[B
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot$Window;->known:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
