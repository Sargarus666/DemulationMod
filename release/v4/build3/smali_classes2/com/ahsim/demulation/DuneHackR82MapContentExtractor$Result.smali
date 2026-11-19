.class public final Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;
.super Ljava/lang/Object;
.source "DuneHackR82MapContentExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82MapContentExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private final archive:[B

.field public final archiveSha256:Ljava/lang/String;

.field public final compactMaps:I

.field public final fullMaps:I

.field private final rawOffsets:[I


# direct methods
.method private constructor <init>([B[I)V
    .locals 3
    .param p1, "bank"    # [B
    .param p2, "rawMapOffsets"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x2d

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;->rawOffsets:[I

    .line 41
    array-length v1, p1

    const v2, 0x25800

    if-ne v1, v2, :cond_0

    array-length v1, p2

    if-ne v1, v0, :cond_0

    .line 43
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;->archive:[B

    .line 44
    iget-object v1, p0, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;->rawOffsets:[I

    const/4 v2, 0x0

    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;->archive:[B

    invoke-static {v0}, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;->sha256([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;->archiveSha256:Ljava/lang/String;

    .line 46
    const/16 v0, 0xa

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;->compactMaps:I

    .line 47
    const/16 v0, 0x23

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;->fullMaps:I

    .line 48
    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Map bank dimensions invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>([B[ILcom/ahsim/demulation/DuneHackR82MapContentExtractor-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;-><init>([B[I)V

    return-void
.end method


# virtual methods
.method public archive()[B
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;->archive:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public map(II)[B
    .locals 4
    .param p1, "house"    # I
    .param p2, "mission"    # I

    .line 51
    invoke-static {p1, p2}, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor;->-$$Nest$smmapIndex(II)I

    move-result v0

    .line 52
    .local v0, "index":I
    iget-object v1, p0, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;->rawOffsets:[I

    aget v1, v1, v0

    const v2, 0x1338b6

    sub-int/2addr v1, v2

    .line 53
    .local v1, "begin":I
    iget-object v2, p0, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;->archive:[B

    invoke-static {v0}, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor;->-$$Nest$smrawMapSizeForIndex(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v2, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    return-object v2
.end method

.method public romOffset(II)I
    .locals 2
    .param p1, "house"    # I
    .param p2, "mission"    # I

    .line 56
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;->rawOffsets:[I

    invoke-static {p1, p2}, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor;->-$$Nest$smmapIndex(II)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public scenarioMaxX(II)I
    .locals 1
    .param p1, "house"    # I
    .param p2, "mission"    # I

    .line 62
    invoke-static {p1, p2}, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor;->-$$Nest$smmapIndex(II)I

    .line 63
    const/16 v0, 0x3f

    return v0
.end method

.method public scenarioMaxY(II)I
    .locals 1
    .param p1, "house"    # I
    .param p2, "mission"    # I

    .line 66
    invoke-static {p1, p2}, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor;->-$$Nest$smmapIndex(II)I

    .line 67
    const/16 v0, 0x3f

    return v0
.end method

.method public storedSide(II)I
    .locals 2
    .param p1, "house"    # I
    .param p2, "mission"    # I

    .line 59
    invoke-static {p1, p2}, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor;->-$$Nest$smmapIndex(II)I

    move-result v0

    invoke-static {v0}, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor;->-$$Nest$smrawMapSizeForIndex(I)I

    move-result v0

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    :goto_0
    return v0
.end method
