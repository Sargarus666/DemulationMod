.class public final Lcom/ahsim/demulation/RazorTerrainGridAbi;
.super Ljava/lang/Object;
.source "RazorTerrainGridAbi.java"


# static fields
.field public static final ABI_VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-string v0, "dunehost"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;)[I
    .locals 12
    .param p0, "frame"    # Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->fullyWritten()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->completeWordsCopy()[I

    move-result-object v10

    .line 25
    .local v10, "words":[I
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->writtenMaskCopy()[B

    move-result-object v11

    .line 26
    .local v11, "written":[B
    array-length v0, v10

    new-array v0, v0, [I

    .line 27
    .local v0, "reference":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v10

    if-ge v1, v2, :cond_1

    .line 28
    aget v2, v10, v1

    ushr-int/lit8 v2, v2, 0x10

    .line 29
    .local v2, "first":I
    aget-byte v3, v11, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const v3, 0xfe00

    and-int/2addr v3, v2

    const v4, 0xf600

    if-ne v3, v4, :cond_0

    aget v3, v10, v1

    const v4, 0xffff

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 32
    and-int/lit16 v3, v2, 0x1ff

    aput v3, v0, v1

    .line 27
    .end local v2    # "first":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    .restart local v2    # "first":I
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Non-loader or unknown Razor RAM in native transfer"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 34
    .end local v1    # "i":I
    .end local v2    # "first":I
    :cond_1
    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->romVariant:I

    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->ramBase:I

    iget v3, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->worldSide:I

    iget v4, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->scenarioWidth:I

    iget v5, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->scenarioHeight:I

    iget v6, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->x:I

    iget v7, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->y:I

    iget v8, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->width:I

    iget v9, p0, Lcom/ahsim/demulation/RazorTerrainRendererInput$Frame;->height:I

    invoke-static/range {v1 .. v11}, Lcom/ahsim/demulation/RazorTerrainGridAbi;->nativeDecode(IIIIIIIII[I[B)[I

    move-result-object v1

    .line 37
    .local v1, "nativeSurfaces":[I
    if-eqz v1, :cond_2

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 39
    return-object v1

    .line 38
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Razor Java/native terrain ABI mismatch"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 23
    .end local v0    # "reference":[I
    .end local v1    # "nativeSurfaces":[I
    .end local v10    # "words":[I
    .end local v11    # "written":[B
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor native ABI requires ROM-written terrain only"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nativeDecode(IIIIIIIII[I[B)[I
.end method
