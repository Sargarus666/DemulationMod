.class final Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;
.super Ljava/lang/Object;
.source "GenesisGemsSfxData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisGemsSfxData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Patch"
.end annotation


# instance fields
.field private final bytes:[B

.field final index:I

.field final type:I


# direct methods
.method constructor <init>(II[B)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "type"    # I
    .param p3, "bytes"    # [B

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->index:I

    .line 41
    iput p2, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->type:I

    .line 42
    iput-object p3, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->bytes:[B

    .line 43
    return-void
.end method


# virtual methods
.method fmAlgorithm()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method fmChannel3Special()Z
    .locals 1

    .line 49
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method fmFeedback()I
    .locals 2

    .line 51
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v1

    ushr-int/lit8 v0, v1, 0x3

    and-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method fmKeyMask()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->type:I

    if-nez v0, :cond_0

    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->u8(I)I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method size()I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method u8(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 47
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->bytes:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$Patch;->bytes:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
