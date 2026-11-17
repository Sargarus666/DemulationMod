.class public final Lcom/ahsim/demulation/GenesisMissionPresentationData;
.super Ljava/lang/Object;
.source "GenesisMissionPresentationData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;
    }
.end annotation


# static fields
.field private static final FRONTEND_TO_ROM_HOUSE:[I

.field private static final HOUSE_COUNT:I = 0x3

.field private static final HOUSE_MISSION_TABLE:I = 0x87f38

.field private static final MISSION_COUNT:I = 0x9


# instance fields
.field private final entries:[[Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/GenesisMissionPresentationData;->FRONTEND_TO_ROM_HOUSE:[I

    return-void
.end method

.method public constructor <init>(Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;)V
    .locals 3
    .param p1, "content"    # Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/16 v2, 0x9

    aput v2, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    const-class v1, Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionPresentationData;->entries:[[Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;

    .line 36
    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->missionPresentationText()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisMissionPresentationData;->parseSequentialPack([B)V

    .line 38
    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mission presentation READY content is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 14
    .param p1, "rom"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/16 v3, 0x9

    aput v3, v1, v2

    const/4 v4, 0x0

    const/4 v5, 0x3

    aput v5, v1, v4

    const-class v6, Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;

    invoke-static {v6, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisMissionPresentationData;->entries:[[Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;

    .line 43
    if-eqz p1, :cond_2

    array-length v1, p1

    const v6, 0x88000

    if-lt v1, v6, :cond_2

    .line 46
    new-array v0, v0, [I

    aput v3, v0, v2

    aput v5, v0, v4

    const-class v1, Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;

    .line 47
    .local v0, "romOrder":[[Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;
    const/4 v1, 0x0

    .local v1, "romHouse":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 48
    mul-int/lit8 v2, v1, 0x4

    const v4, 0x87f38

    add-int/2addr v2, v4

    invoke-static {p1, v2}, Lcom/ahsim/demulation/GenesisMissionPresentationData;->be32([BI)I

    move-result v2

    invoke-static {v2}, Lcom/ahsim/demulation/GenesisMissionPresentationData;->u24(I)I

    move-result v2

    .line 49
    .local v2, "base":I
    const/4 v4, 0x0

    .local v4, "mission":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 50
    mul-int/lit8 v6, v4, 0x10

    add-int/2addr v6, v2

    .line 51
    .local v6, "rec":I
    aget-object v7, v0, v1

    new-instance v8, Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;

    .line 52
    invoke-static {p1, v6}, Lcom/ahsim/demulation/GenesisMissionPresentationData;->be32([BI)I

    move-result v9

    invoke-static {v9}, Lcom/ahsim/demulation/GenesisMissionPresentationData;->u24(I)I

    move-result v9

    invoke-static {p1, v9}, Lcom/ahsim/demulation/GenesisMissionPresentationData;->readCString([BI)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v6, 0x4

    .line 53
    invoke-static {p1, v10}, Lcom/ahsim/demulation/GenesisMissionPresentationData;->be32([BI)I

    move-result v10

    invoke-static {v10}, Lcom/ahsim/demulation/GenesisMissionPresentationData;->u24(I)I

    move-result v10

    invoke-static {p1, v10}, Lcom/ahsim/demulation/GenesisMissionPresentationData;->readCString([BI)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v11, v6, 0x8

    .line 54
    invoke-static {p1, v11}, Lcom/ahsim/demulation/GenesisMissionPresentationData;->be32([BI)I

    move-result v11

    invoke-static {v11}, Lcom/ahsim/demulation/GenesisMissionPresentationData;->u24(I)I

    move-result v11

    invoke-static {p1, v11}, Lcom/ahsim/demulation/GenesisMissionPresentationData;->readCString([BI)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v12, v6, 0xc

    .line 55
    invoke-static {p1, v12}, Lcom/ahsim/demulation/GenesisMissionPresentationData;->be32([BI)I

    move-result v12

    invoke-static {v12}, Lcom/ahsim/demulation/GenesisMissionPresentationData;->u24(I)I

    move-result v12

    invoke-static {p1, v12}, Lcom/ahsim/demulation/GenesisMissionPresentationData;->readCString([BI)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/GenesisMissionPresentationData-IA;)V

    aput-object v8, v7, v4

    .line 49
    .end local v6    # "rec":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 47
    .end local v2    # "base":I
    .end local v4    # "mission":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v1    # "romHouse":I
    :cond_1
    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisMissionPresentationData;->mapRomOrder([[Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;)V

    .line 59
    return-void

    .line 44
    .end local v0    # "romOrder":[[Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ROM is missing mission presentation tables"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static be32([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 98
    if-ltz p1, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x4

    if-gt p1, v0, :cond_0

    .line 99
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

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mission presentation ROM range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private mapRomOrder([[Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;)V
    .locals 5
    .param p1, "romOrder"    # [[Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;

    .line 75
    const/4 v0, 0x0

    .local v0, "frontHouse":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 76
    sget-object v1, Lcom/ahsim/demulation/GenesisMissionPresentationData;->FRONTEND_TO_ROM_HOUSE:[I

    aget v1, v1, v0

    .line 77
    .local v1, "romHouse":I
    const/4 v2, 0x0

    .local v2, "mission":I
    :goto_1
    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    .line 78
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisMissionPresentationData;->entries:[[Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;

    aget-object v3, v3, v0

    aget-object v4, p1, v1

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 75
    .end local v1    # "romHouse":I
    .end local v2    # "mission":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "frontHouse":I
    :cond_1
    return-void
.end method

.method private static next([B[I)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B
    .param p1, "cursor"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    aget v1, p1, v0

    filled-new-array {v1}, [I

    move-result-object v1

    .line 85
    .local v1, "next":[I
    aget v2, p1, v0

    invoke-static {p0, v2, v1}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->decodeCString([BI[I)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "value":Ljava/lang/String;
    aget v3, v1, v0

    aput v3, p1, v0

    .line 87
    return-object v2
.end method

.method private parseSequentialPack([B)V
    .locals 14
    .param p1, "pack"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/16 v2, 0x9

    aput v2, v0, v1

    const/4 v1, 0x0

    const/4 v3, 0x3

    aput v3, v0, v1

    const-class v4, Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;

    .line 63
    .local v0, "romOrder":[[Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;
    filled-new-array {v1}, [I

    move-result-object v4

    .line 64
    .local v4, "cursor":[I
    const/4 v5, 0x0

    .local v5, "romHouse":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 65
    const/4 v6, 0x0

    .local v6, "mission":I
    :goto_1
    if-ge v6, v2, :cond_0

    .line 66
    aget-object v7, v0, v5

    new-instance v8, Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;

    .line 67
    invoke-static {p1, v4}, Lcom/ahsim/demulation/GenesisMissionPresentationData;->next([B[I)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v4}, Lcom/ahsim/demulation/GenesisMissionPresentationData;->next([B[I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v4}, Lcom/ahsim/demulation/GenesisMissionPresentationData;->next([B[I)Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v4}, Lcom/ahsim/demulation/GenesisMissionPresentationData;->next([B[I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/GenesisMissionPresentationData-IA;)V

    aput-object v8, v7, v6

    .line 65
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 64
    .end local v6    # "mission":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 70
    .end local v5    # "romHouse":I
    :cond_1
    aget v1, v4, v1

    array-length v2, p1

    if-ne v1, v2, :cond_2

    .line 71
    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisMissionPresentationData;->mapRomOrder([[Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;)V

    .line 72
    return-void

    .line 70
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Mission presentation content has trailing bytes"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static readCString([BI)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 104
    if-ltz p1, :cond_3

    array-length v0, p0

    if-ge p1, v0, :cond_3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v0, "out":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "p":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    add-int/lit16 v2, p1, 0x1000

    if-ge v1, v2, :cond_2

    .line 107
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 108
    .local v2, "c":I
    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 109
    :cond_0
    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_1

    .line 110
    int-to-char v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .end local v2    # "c":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .restart local v2    # "c":I
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Mission presentation ROM text"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 112
    .end local v1    # "p":I
    .end local v2    # "c":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Mission presentation ROM string is unterminated"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    .end local v0    # "out":Ljava/lang/StringBuilder;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mission presentation ROM pointer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static u24(I)I
    .locals 1
    .param p0, "v"    # I

    .line 102
    const v0, 0xffffff

    and-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public get(II)Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;
    .locals 2
    .param p1, "frontendHouse"    # I
    .param p2, "missionOneBased"    # I

    .line 91
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/16 v0, 0x9

    if-gt p2, v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMissionPresentationData;->entries:[[Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;

    aget-object v0, v0, p1

    add-int/lit8 v1, p2, -0x1

    aget-object v0, v0, v1

    return-object v0

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid House/mission presentation index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
