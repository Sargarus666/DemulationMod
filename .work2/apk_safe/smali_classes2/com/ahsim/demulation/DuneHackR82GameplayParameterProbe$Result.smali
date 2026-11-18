.class public final Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;
.super Ljava/lang/Object;
.source "DuneHackR82GameplayParameterProbe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final sha256:Ljava/lang/String;

.field private final sourceWords:[B


# direct methods
.method private constructor <init>([B)V
    .locals 1
    .param p1, "words"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;->sourceWords:[B

    .line 32
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;->sourceWords:[B

    invoke-static {v0}, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;->sha256([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;->sha256:Ljava/lang/String;

    .line 33
    return-void
.end method

.method synthetic constructor <init>([BLcom/ahsim/demulation/DuneHackR82GameplayParameterProbe-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;-><init>([B)V

    return-void
.end method


# virtual methods
.method public bytes()[B
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;->sourceWords:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public value(II)I
    .locals 4
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 37
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    const/4 v0, 0x4

    if-ge p2, v0, :cond_0

    .line 39
    mul-int/lit8 v0, p1, 0x4

    add-int/2addr v0, p2

    mul-int/lit8 v0, v0, 0x2

    .line 40
    .local v0, "n":I
    iget-object v1, p0, Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;->sourceWords:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;->sourceWords:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1

    .line 38
    .end local v0    # "n":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "R82C parameter index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
