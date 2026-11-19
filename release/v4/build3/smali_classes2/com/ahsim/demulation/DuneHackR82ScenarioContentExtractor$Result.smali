.class public final Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;
.super Ljava/lang/Object;
.source "DuneHackR82ScenarioContentExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private final archive:[B

.field public final archiveSha256:Ljava/lang/String;

.field public final firstPayloadOffset:I

.field private final offsets:[[I

.field public final payloadBytes:I

.field public final pointerTableOffset:I

.field private final romOffsets:[[I


# direct methods
.method private constructor <init>([B[[I)V
    .locals 7
    .param p1, "bytes"    # [B
    .param p2, "sourceOffsets"    # [[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/16 v3, 0x9

    aput v3, v1, v2

    const/4 v4, 0x0

    const/4 v5, 0x5

    aput v5, v1, v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;->offsets:[[I

    .line 47
    new-array v0, v0, [I

    aput v3, v0, v2

    aput v5, v0, v4

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;->romOffsets:[[I

    .line 49
    const v0, 0x83cb4

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;->pointerTableOffset:I

    .line 50
    const v0, 0x1590b6

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;->firstPayloadOffset:I

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "cursor":I
    const/4 v1, 0x0

    .local v1, "h":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 53
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 54
    iget-object v4, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;->offsets:[[I

    aget-object v4, v4, v1

    aput v0, v4, v2

    .line 55
    invoke-static {}, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor;->-$$Nest$sfgetLENGTHS()[[I

    move-result-object v4

    aget-object v4, v4, v1

    aget v4, v4, v2

    add-int/2addr v0, v4

    .line 56
    iget-object v4, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;->romOffsets:[[I

    aget-object v4, v4, v1

    aget-object v6, p2, v1

    aget v6, v6, v2

    aput v6, v4, v2

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 52
    .end local v2    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "h":I
    :cond_1
    array-length v1, p1

    if-ne v0, v1, :cond_2

    .line 60
    array-length v1, p1

    iput v1, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;->payloadBytes:I

    .line 61
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;->archive:[B

    .line 62
    iget-object v1, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;->archive:[B

    invoke-static {v1}, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;->sha256([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;->archiveSha256:Ljava/lang/String;

    .line 63
    return-void

    .line 59
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "R82C scenario archive size mismatch"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method synthetic constructor <init>([B[[ILcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;-><init>([B[[I)V

    return-void
.end method


# virtual methods
.method public archive()[B
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;->archive:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public romOffset(II)I
    .locals 2
    .param p1, "house"    # I
    .param p2, "missionNumber"    # I

    .line 73
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/16 v0, 0x9

    if-gt p2, v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;->romOffsets:[[I

    aget-object v0, v0, p1

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    return v0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "R82C mission identity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scenario(II)[B
    .locals 5
    .param p1, "house"    # I
    .param p2, "missionNumber"    # I

    .line 67
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/16 v0, 0x9

    if-gt p2, v0, :cond_0

    .line 69
    add-int/lit8 v0, p2, -0x1

    .line 70
    .local v0, "i":I
    iget-object v1, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;->archive:[B

    iget-object v2, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;->offsets:[[I

    aget-object v2, v2, p1

    aget v2, v2, v0

    iget-object v3, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;->offsets:[[I

    aget-object v3, v3, p1

    aget v3, v3, v0

    invoke-static {}, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor;->-$$Nest$sfgetLENGTHS()[[I

    move-result-object v4

    aget-object v4, v4, p1

    aget v4, v4, v0

    add-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1

    .line 68
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "R82C mission identity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
