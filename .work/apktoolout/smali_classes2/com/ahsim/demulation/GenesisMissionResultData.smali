.class final Lcom/ahsim/demulation/GenesisMissionResultData;
.super Ljava/lang/Object;
.source "GenesisMissionResultData.java"


# static fields
.field static final RANK_COUNT:I = 0x9

.field private static final RANK_NAMES:I = 0xa68e2

.field private static final RANK_WIDTH:I = 0x11

.field private static final THRESHOLDS:I = 0xa68d2


# instance fields
.field private final ranks:[Ljava/lang/String;

.field private final thresholds:[I


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;)V
    .locals 5
    .param p1, "assets"    # Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultData;->thresholds:[I

    .line 17
    const/16 v0, 0x9

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisMissionResultData;->ranks:[Ljava/lang/String;

    .line 33
    if-eqz p1, :cond_2

    .line 35
    :try_start_0
    invoke-virtual {p1}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->missionResultExactContent()Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;

    move-result-object v1

    .line 36
    .local v1, "content":Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisMissionResultData;->thresholds:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisMissionResultData;->thresholds:[I

    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;->threshold(I)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisMissionResultData;->ranks:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;->rankName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 40
    .end local v1    # "content":Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;
    .end local v2    # "i":I
    :cond_1
    nop

    .line 41
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Mission-result READY data is unavailable"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 33
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mission-result content provider is unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>([B)V
    .locals 5
    .param p1, "rom"    # [B

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultData;->thresholds:[I

    .line 17
    const/16 v0, 0x9

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisMissionResultData;->ranks:[Ljava/lang/String;

    .line 21
    if-eqz p1, :cond_2

    array-length v1, p1

    const v2, 0xa697b

    if-lt v1, v2, :cond_2

    .line 23
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisMissionResultData;->thresholds:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 24
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisMissionResultData;->thresholds:[I

    mul-int/lit8 v3, v1, 0x2

    const v4, 0xa68d2

    add-int/2addr v3, v4

    invoke-static {p1, v3}, Lcom/ahsim/demulation/GenesisMissionResultData;->be16([BI)I

    move-result v3

    aput v3, v2, v1

    .line 23
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 26
    mul-int/lit8 v2, v1, 0x11

    const v3, 0xa68e2

    add-int/2addr v2, v3

    .line 27
    .local v2, "off":I
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisMissionResultData;->ranks:[Ljava/lang/String;

    const/16 v4, 0x11

    invoke-static {p1, v2, v4}, Lcom/ahsim/demulation/GenesisMissionResultData;->decodeRank([BII)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 25
    .end local v2    # "off":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 29
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 22
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ROM too small for Genesis result ranks"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static be16([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "o"    # I

    .line 68
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static decodeRank([BII)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .param p2, "width"    # I

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 59
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 60
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 61
    .local v2, "c":I
    if-nez v2, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    int-to-char v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .end local v2    # "c":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    .end local v1    # "j":I
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method rankIndexForScore(IZ)I
    .locals 3
    .param p1, "displayScore"    # I
    .param p2, "finalMissionVictory"    # Z

    .line 50
    if-eqz p2, :cond_0

    const/16 v0, 0x8

    return v0

    .line 51
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 52
    .local v0, "score":I
    const/4 v1, 0x0

    .line 53
    .local v1, "rank":I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisMissionResultData;->thresholds:[I

    aget v2, v2, v1

    if-lt v0, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_1
    return v1
.end method

.method rankName(I)Ljava/lang/String;
    .locals 1
    .param p1, "rankIndex"    # I

    .line 44
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultData;->ranks:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultData;->ranks:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 p1, v0, -0x1

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMissionResultData;->ranks:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
