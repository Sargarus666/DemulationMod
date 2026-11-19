.class public final Lcom/ahsim/demulation/DuneHackR82MapContentExtractor;
.super Ljava/lang/Object;
.source "DuneHackR82MapContentExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;
    }
.end annotation


# static fields
.field private static final AUDITED_IMAGE_SHA256:Ljava/lang/String; = "09bfe4bef56c7642edef7dea47c41274bdcce595fd95fbb85e64af4d3308d0ce"

.field private static final BOUNDS_TABLE:I = 0x83ba6

.field public static final END_PAYLOAD:I = 0x1590b6

.field public static final ENTRY_COUNT:I = 0x2d

.field public static final FIRST_PAYLOAD:I = 0x1338b6

.field public static final HOUSE_COUNT:I = 0x5

.field private static final HOUSE_TO_STORAGE:[I

.field public static final MAP_ARCHIVE_BYTES:I = 0x25800

.field public static final MISSIONS_PER_HOUSE:I = 0x9

.field public static final POINTER_TABLE:I = 0x83c00

.field public static final SCENARIO_BOUNDS_MAX_X:I = 0x3f

.field public static final SCENARIO_BOUNDS_MAX_Y:I = 0x3f


# direct methods
.method static bridge synthetic -$$Nest$smmapIndex(II)I
    .locals 0

    invoke-static {p0, p1}, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor;->mapIndex(II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smrawMapSizeForIndex(I)I
    .locals 0

    invoke-static {p0}, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor;->rawMapSizeForIndex(I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 32
    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor;->HOUSE_TO_STORAGE:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static be32([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "at"    # I

    .line 81
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static extract([BLcom/ahsim/demulation/DuneHackR82Probe$Result;)Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;
    .locals 8
    .param p0, "rom"    # [B
    .param p1, "probe"    # Lcom/ahsim/demulation/DuneHackR82Probe$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->family:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82Probe$Family;->R82C_PLUS:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    if-ne v0, v1, :cond_6

    array-length v0, p0

    const v1, 0x1590b6

    if-lt v0, v1, :cond_6

    array-length v0, p0

    const/high16 v2, 0x1000000

    if-gt v0, v2, :cond_6

    const/16 v0, 0x100

    aget-byte v0, p0, v0

    const/16 v2, 0x53

    if-ne v0, v2, :cond_6

    const/16 v0, 0x101

    aget-byte v0, p0, v0

    const/16 v2, 0x45

    if-ne v0, v2, :cond_6

    const/16 v0, 0x102

    aget-byte v0, p0, v0

    const/16 v2, 0x47

    if-ne v0, v2, :cond_6

    const/16 v0, 0x103

    aget-byte v0, p0, v0

    const/16 v2, 0x41

    if-ne v0, v2, :cond_6

    .line 92
    const-string v0, "09bfe4bef56c7642edef7dea47c41274bdcce595fd95fbb85e64af4d3308d0ce"

    invoke-static {p0}, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;->sha256([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x2d

    if-ge v0, v2, :cond_1

    .line 97
    mul-int/lit8 v2, v0, 0x2

    const v3, 0x83ba6

    add-int/2addr v2, v3

    .line 98
    .local v2, "at":I
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v4, :cond_0

    .line 96
    .end local v2    # "at":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    .restart local v2    # "at":I
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v3, "R82C scenario map bounds inconsistent with source layout"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    .end local v0    # "i":I
    .end local v2    # "at":I
    :cond_1
    const v0, 0x1338b6

    .line 104
    .local v0, "cursor":I
    new-array v3, v2, [I

    .line 105
    .local v3, "positions":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_3

    .line 106
    mul-int/lit8 v5, v4, 0x4

    const v6, 0x83c00

    add-int/2addr v5, v6

    invoke-static {p0, v5}, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor;->be32([BI)I

    move-result v5

    .line 107
    .local v5, "pointer":I
    invoke-static {v4}, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor;->rawMapSizeForIndex(I)I

    move-result v6

    .line 108
    .local v6, "length":I
    if-ne v5, v0, :cond_2

    and-int/lit8 v7, v5, 0x1

    if-nez v7, :cond_2

    array-length v7, p0

    sub-int/2addr v7, v6

    if-gt v5, v7, :cond_2

    .line 110
    aput v5, v3, v4

    .line 111
    add-int/2addr v0, v6

    .line 105
    .end local v5    # "pointer":I
    .end local v6    # "length":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 109
    .restart local v5    # "pointer":I
    .restart local v6    # "length":I
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "R82C map pointer/size sequence mismatch at "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    .end local v4    # "i":I
    .end local v5    # "pointer":I
    .end local v6    # "length":I
    :cond_3
    if-ne v0, v1, :cond_4

    .line 115
    new-instance v2, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;

    const v4, 0x1338b6

    invoke-static {p0, v4, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;-><init>([B[ILcom/ahsim/demulation/DuneHackR82MapContentExtractor-IA;)V

    return-object v2

    .line 114
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "R82C map bank overlaps another resource block"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    .end local v0    # "cursor":I
    .end local v3    # "positions":[I
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "R82C map layout unaudited for this specific ROM"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a recognized R82C+ Genesis image"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static mapIndex(II)I
    .locals 3
    .param p0, "house"    # I
    .param p1, "mission"    # I

    .line 73
    if-ltz p0, :cond_0

    const/4 v0, 0x5

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v1, 0x9

    if-gt p1, v1, :cond_0

    .line 75
    sget-object v2, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor;->HOUSE_TO_STORAGE:[I

    aget v2, v2, p0

    mul-int/2addr v2, v1

    add-int/2addr v2, p1

    sub-int/2addr v2, v0

    return v2

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "R82C map house/mission out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static rawMapSizeForIndex(I)I
    .locals 2
    .param p0, "index"    # I

    .line 78
    rem-int/lit8 v0, p0, 0x9

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/16 v0, 0x400

    goto :goto_0

    :cond_0
    const/16 v0, 0x1000

    :goto_0
    return v0
.end method
