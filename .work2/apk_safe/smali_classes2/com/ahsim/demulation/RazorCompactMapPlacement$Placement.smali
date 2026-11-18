.class public final Lcom/ahsim/demulation/RazorCompactMapPlacement$Placement;
.super Ljava/lang/Object;
.source "RazorCompactMapPlacement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorCompactMapPlacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Placement"
.end annotation


# instance fields
.field private final known:[B

.field private final raw:[B

.field private final remap:Z


# direct methods
.method private constructor <init>([BZ)V
    .locals 6
    .param p1, "source"    # [B
    .param p2, "specialRemap"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/16 v0, 0x1000

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/ahsim/demulation/RazorCompactMapPlacement$Placement;->known:[B

    .line 88
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ahsim/demulation/RazorCompactMapPlacement$Placement;->raw:[B

    .line 91
    if-eqz p1, :cond_2

    array-length v0, p1

    const/16 v1, 0x400

    if-ne v0, v1, :cond_2

    .line 93
    iput-boolean p2, p0, Lcom/ahsim/demulation/RazorCompactMapPlacement$Placement;->remap:Z

    .line 94
    const/4 v0, 0x0

    .local v0, "y":I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    const/4 v2, 0x0

    .local v2, "x":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 95
    add-int/lit8 v3, v0, 0x10

    mul-int/lit8 v3, v3, 0x40

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x10

    .line 96
    .local v3, "dst":I
    iget-object v4, p0, Lcom/ahsim/demulation/RazorCompactMapPlacement$Placement;->known:[B

    const/4 v5, 0x1

    aput-byte v5, v4, v3

    .line 97
    iget-object v4, p0, Lcom/ahsim/demulation/RazorCompactMapPlacement$Placement;->raw:[B

    mul-int/lit8 v5, v0, 0x20

    add-int/2addr v5, v2

    aget-byte v5, p1, v5

    aput-byte v5, v4, v3

    .line 94
    .end local v3    # "dst":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "x":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "y":I
    :cond_1
    return-void

    .line 92
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor compact source must be exactly 1024 bytes"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>([BZLcom/ahsim/demulation/RazorCompactMapPlacement-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorCompactMapPlacement$Placement;-><init>([BZ)V

    return-void
.end method

.method private static inside(II)Z
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 116
    if-ltz p0, :cond_0

    const/16 v0, 0x40

    if-ge p0, v0, :cond_0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public isKnown(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 109
    invoke-static {p1, p2}, Lcom/ahsim/demulation/RazorCompactMapPlacement$Placement;->inside(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RazorCompactMapPlacement$Placement;->known:[B

    mul-int/lit8 v1, p2, 0x40

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public knownMaskCopy()[B
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/ahsim/demulation/RazorCompactMapPlacement$Placement;->known:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public loadedTile(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/ahsim/demulation/RazorCompactMapPlacement$Placement;->rawTile(II)I

    move-result v0

    .line 106
    .local v0, "v":I
    if-gez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/ahsim/demulation/RazorCompactMapPlacement$Placement;->remap:Z

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RazorCompactMapPlacement;->loadedTile(IZ)I

    move-result v1

    :goto_0
    return v1
.end method

.method public rawGridCopy()[B
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/ahsim/demulation/RazorCompactMapPlacement$Placement;->raw:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public rawTile(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 101
    invoke-static {p1, p2}, Lcom/ahsim/demulation/RazorCompactMapPlacement$Placement;->inside(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RazorCompactMapPlacement$Placement;->known:[B

    mul-int/lit8 v1, p2, 0x40

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorCompactMapPlacement$Placement;->raw:[B

    mul-int/lit8 v1, p2, 0x40

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 101
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method
