.class public final Lcom/ahsim/demulation/RazorVramPatternLoader$Result;
.super Ljava/lang/Object;
.source "RazorVramPatternLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorVramPatternLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final compiledMetatilesVerified:Z

.field public final gameplayReady:Z

.field public final metatileCount:I

.field public final metatileSha256:Ljava/lang/String;

.field public final metatileSourceOffset:I

.field private final metatiles:[B

.field public final patternCount:I

.field public final patternSha256:Ljava/lang/String;

.field public final patternSourceOffset:I

.field private final patterns:[B

.field public final sourcePatternsVerified:Z


# direct methods
.method private constructor <init>(I[B[B)V
    .locals 1
    .param p1, "romOffset"    # I
    .param p2, "patternBytes"    # [B
    .param p3, "metatileBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/16 v0, 0x39c

    iput v0, p0, Lcom/ahsim/demulation/RazorVramPatternLoader$Result;->patternCount:I

    .line 44
    const/16 v0, 0x200

    iput v0, p0, Lcom/ahsim/demulation/RazorVramPatternLoader$Result;->metatileCount:I

    .line 46
    const v0, 0x5a290

    iput v0, p0, Lcom/ahsim/demulation/RazorVramPatternLoader$Result;->metatileSourceOffset:I

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorVramPatternLoader$Result;->sourcePatternsVerified:Z

    .line 50
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorVramPatternLoader$Result;->compiledMetatilesVerified:Z

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorVramPatternLoader$Result;->gameplayReady:Z

    .line 56
    iput p1, p0, Lcom/ahsim/demulation/RazorVramPatternLoader$Result;->patternSourceOffset:I

    .line 57
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/ahsim/demulation/RazorVramPatternLoader$Result;->patterns:[B

    .line 58
    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/ahsim/demulation/RazorVramPatternLoader$Result;->metatiles:[B

    .line 59
    iget-object v0, p0, Lcom/ahsim/demulation/RazorVramPatternLoader$Result;->patterns:[B

    invoke-static {v0}, Lcom/ahsim/demulation/RazorVramPatternLoader;->-$$Nest$smsha256([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RazorVramPatternLoader$Result;->patternSha256:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/ahsim/demulation/RazorVramPatternLoader$Result;->metatiles:[B

    invoke-static {v0}, Lcom/ahsim/demulation/RazorVramPatternLoader;->-$$Nest$smsha256([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RazorVramPatternLoader$Result;->metatileSha256:Ljava/lang/String;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(I[B[BLcom/ahsim/demulation/RazorVramPatternLoader-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RazorVramPatternLoader$Result;-><init>(I[B[B)V

    return-void
.end method


# virtual methods
.method public decodeMetatile([BII)[I
    .locals 2
    .param p1, "fourPalettes"    # [B
    .param p2, "variant"    # I
    .param p3, "tileId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/ahsim/demulation/RazorVramPatternLoader$Result;->patterns:[B

    iget-object v1, p0, Lcom/ahsim/demulation/RazorVramPatternLoader$Result;->metatiles:[B

    invoke-static {v0, v1, p1, p2, p3}, Lcom/ahsim/demulation/RazorTerrainVisualSource;->decodeVerifiedTile([B[B[BII)[I

    move-result-object v0

    return-object v0
.end method

.method public metatileAttribute(III)I
    .locals 3
    .param p1, "id"    # I
    .param p2, "cellX"    # I
    .param p3, "cellY"    # I

    .line 70
    if-ltz p1, :cond_0

    const/16 v0, 0x200

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    const/4 v0, 0x4

    if-ge p2, v0, :cond_0

    if-ltz p3, :cond_0

    if-ge p3, v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/ahsim/demulation/RazorVramPatternLoader$Result;->metatiles:[B

    mul-int/lit8 v1, p1, 0x20

    mul-int/lit8 v2, p3, 0x4

    add-int/2addr v2, p2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RazorVramPatternLoader;->-$$Nest$smu16([BI)I

    move-result v0

    return v0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Razor compiled metatile coordinate invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public metatileBankCopy()[B
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/ahsim/demulation/RazorVramPatternLoader$Result;->metatiles:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public patternBankCopy()[B
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/ahsim/demulation/RazorVramPatternLoader$Result;->patterns:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public patternByte(II)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "byteIndex"    # I

    .line 65
    if-ltz p1, :cond_0

    const/16 v0, 0x39c

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    const/16 v0, 0x20

    if-ge p2, v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/ahsim/demulation/RazorVramPatternLoader$Result;->patterns:[B

    mul-int/lit8 v1, p1, 0x20

    add-int/2addr v1, p2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Razor pattern coordinate outside bank"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
