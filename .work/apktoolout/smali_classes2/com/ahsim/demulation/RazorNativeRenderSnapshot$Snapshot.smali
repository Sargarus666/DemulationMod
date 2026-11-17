.class public final Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;
.super Ljava/lang/Object;
.source "RazorNativeRenderSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorNativeRenderSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Snapshot"
.end annotation


# instance fields
.field public final artworkReady:Z

.field public final directTerrain:Z

.field public final expandedGrid:Z

.field public final gameplayReady:Z

.field public final height:I

.field public final house:I

.field public final mission:I

.field private final rawSourceMap:[B

.field private final records:[Lcom/ahsim/demulation/RazorNativeRenderSnapshot$ObjectRecord;

.field public final storedSide:I

.field public final stride:I

.field public final width:I


# direct methods
.method private constructor <init>([I[B)V
    .locals 6
    .param p1, "values"    # [I
    .param p2, "map"    # [B

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;->gameplayReady:Z

    .line 31
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;->artworkReady:Z

    .line 35
    const/4 v1, 0x3

    aget v1, p1, v1

    iput v1, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;->house:I

    const/4 v1, 0x4

    aget v2, p1, v1

    iput v2, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;->mission:I

    const/4 v2, 0x5

    aget v2, p1, v2

    iput v2, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;->storedSide:I

    .line 36
    const/4 v2, 0x6

    aget v2, p1, v2

    iput v2, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;->stride:I

    const/4 v2, 0x7

    aget v2, p1, v2

    iput v2, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;->width:I

    const/16 v2, 0x8

    aget v2, p1, v2

    iput v2, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;->height:I

    .line 37
    const/4 v2, 0x2

    aget v3, p1, v2

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;->directTerrain:Z

    .line 38
    aget v2, p1, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    move v0, v4

    :cond_1
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;->expandedGrid:Z

    .line 39
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;->rawSourceMap:[B

    .line 40
    const/16 v0, 0xa

    aget v0, p1, v0

    const/16 v1, 0xb

    aget v1, p1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/ahsim/demulation/RazorNativeRenderSnapshot$ObjectRecord;

    iput-object v0, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;->records:[Lcom/ahsim/demulation/RazorNativeRenderSnapshot$ObjectRecord;

    .line 41
    const/16 v0, 0xf

    aget v0, p1, v0

    .line 42
    .local v0, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;->records:[Lcom/ahsim/demulation/RazorNativeRenderSnapshot$ObjectRecord;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;->records:[Lcom/ahsim/demulation/RazorNativeRenderSnapshot$ObjectRecord;

    new-instance v3, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$ObjectRecord;

    mul-int/lit8 v4, v1, 0x5

    add-int/2addr v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, p1, v4, v5}, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$ObjectRecord;-><init>([IILcom/ahsim/demulation/RazorNativeRenderSnapshot-IA;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 44
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method synthetic constructor <init>([I[BLcom/ahsim/demulation/RazorNativeRenderSnapshot-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;-><init>([I[B)V

    return-void
.end method


# virtual methods
.method public objectAt(I)Lcom/ahsim/demulation/RazorNativeRenderSnapshot$ObjectRecord;
    .locals 1
    .param p1, "index"    # I

    .line 47
    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;->records:[Lcom/ahsim/demulation/RazorNativeRenderSnapshot$ObjectRecord;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public objectCount()I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;->records:[Lcom/ahsim/demulation/RazorNativeRenderSnapshot$ObjectRecord;

    array-length v0, v0

    return v0
.end method

.method public originalMapCopy()[B
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;->rawSourceMap:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public rawMapBytes()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;->rawSourceMap:[B

    array-length v0, v0

    return v0
.end method

.method public sourceTile(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 52
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;->directTerrain:Z

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    iget v0, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;->width:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;->height:I

    if-ge p2, v0, :cond_1

    iget v0, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;->storedSide:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;->storedSide:I

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;->rawSourceMap:[B

    iget v1, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Snapshot;->storedSide:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 53
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method
