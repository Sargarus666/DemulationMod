.class public final Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;
.super Ljava/lang/Object;
.source "RazorTerrainCellReadPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorTerrainCellReadPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cell"
.end annotation


# instance fields
.field public final byte2:I

.field public final byte3:I

.field public final firstWord16:I

.field public final otherFirstWordBits:I

.field public final ramAddress:I

.field public final romWritten:Z

.field public final surfaceIndex9:I

.field public final word32:I

.field public final x:I

.field public final y:I


# direct methods
.method private constructor <init>(IIIZI)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "addr"    # I
    .param p4, "known"    # Z
    .param p5, "word"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;->x:I

    .line 35
    iput p2, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;->y:I

    .line 36
    iput p3, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;->ramAddress:I

    .line 37
    iput-boolean p4, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;->romWritten:Z

    .line 38
    const/4 v0, -0x1

    if-eqz p4, :cond_0

    move v1, p5

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;->word32:I

    .line 39
    if-eqz p4, :cond_1

    ushr-int/lit8 v1, p5, 0x10

    const v2, 0xffff

    and-int/2addr v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput v1, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;->firstWord16:I

    .line 40
    if-eqz p4, :cond_2

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;->firstWord16:I

    and-int/lit16 v1, v1, 0x1ff

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    iput v1, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;->surfaceIndex9:I

    .line 41
    if-eqz p4, :cond_3

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;->firstWord16:I

    const v2, 0xfe00

    and-int/2addr v1, v2

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_3
    iput v1, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;->otherFirstWordBits:I

    .line 42
    if-eqz p4, :cond_4

    ushr-int/lit8 v1, p5, 0x8

    and-int/lit16 v1, v1, 0xff

    goto :goto_4

    :cond_4
    move v1, v0

    :goto_4
    iput v1, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;->byte2:I

    .line 43
    if-eqz p4, :cond_5

    and-int/lit16 v0, p5, 0xff

    :cond_5
    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;->byte3:I

    .line 44
    return-void
.end method

.method synthetic constructor <init>(IIIZILcom/ahsim/demulation/RazorTerrainCellReadPath-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;-><init>(IIIZI)V

    return-void
.end method


# virtual methods
.method public requireSurface()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;->romWritten:Z

    if-eqz v0, :cond_0

    .line 47
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;->surfaceIndex9:I

    return v0

    .line 46
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown pre-loader/outer terrain cell"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requireWord()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;->romWritten:Z

    if-eqz v0, :cond_0

    .line 51
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainCellReadPath$Cell;->word32:I

    return v0

    .line 50
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown pre-loader/outer RAM word"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
