.class final Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;
.super Ljava/lang/Object;
.source "GenesisGemsSfxData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisGemsSfxData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Sample"
.end annotation


# instance fields
.field final dataOffset:I

.field final endLength:I

.field final firstLength:I

.field final flags:I

.field final index:I

.field final loopLength:I

.field final skip:I


# direct methods
.method constructor <init>(IIIIIII)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "flags"    # I
    .param p3, "dataOffset"    # I
    .param p4, "skip"    # I
    .param p5, "firstLength"    # I
    .param p6, "loopLength"    # I
    .param p7, "endLength"    # I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->index:I

    .line 67
    iput p2, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->flags:I

    .line 68
    iput p3, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->dataOffset:I

    .line 69
    iput p4, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->skip:I

    .line 70
    iput p5, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->firstLength:I

    .line 71
    iput p6, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->loopLength:I

    .line 72
    iput p7, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->endLength:I

    .line 73
    return-void
.end method


# virtual methods
.method clipAtNoteOff()Z
    .locals 1

    .line 77
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method fourBit()Z
    .locals 1

    .line 78
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method headerRateCode()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->flags:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method looped()Z
    .locals 1

    .line 76
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$Sample;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
