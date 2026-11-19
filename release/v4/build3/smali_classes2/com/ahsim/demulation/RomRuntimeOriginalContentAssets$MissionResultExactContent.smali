.class public final Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;
.super Ljava/lang/Object;
.source "RomRuntimeOriginalContentAssets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MissionResultExactContent"
.end annotation


# instance fields
.field private final houseLabels:[[B

.field private final passwords:[[[B

.field private final rankRecords:[[B

.field private final thresholds:[I


# direct methods
.method private constructor <init>([I[[B[[B[[[B)V
    .locals 0
    .param p1, "thresholds"    # [I
    .param p2, "rankRecords"    # [[B
    .param p3, "houseLabels"    # [[B
    .param p4, "passwords"    # [[[B

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p1, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;->thresholds:[I

    .line 230
    iput-object p2, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;->rankRecords:[[B

    .line 231
    iput-object p3, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;->houseLabels:[[B

    .line 232
    iput-object p4, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;->passwords:[[[B

    .line 233
    return-void
.end method

.method synthetic constructor <init>([I[[B[[B[[[BLcom/ahsim/demulation/RomRuntimeOriginalContentAssets-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;-><init>([I[[B[[B[[[B)V

    return-void
.end method


# virtual methods
.method public houseLabel(I)[B
    .locals 2
    .param p1, "romHouse"    # I

    .line 250
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;->houseLabels:[[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;->houseLabels:[[B

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->-$$Nest$smcopyUnchecked([B)[B

    move-result-object v0

    return-object v0

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Result House index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public password(II)[B
    .locals 3
    .param p1, "missionOneBased"    # I
    .param p2, "romHouse"    # I

    .line 254
    add-int/lit8 v0, p1, -0x1

    .line 255
    .local v0, "mission":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;->passwords:[[[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    if-ltz p2, :cond_0

    const/4 v1, 0x3

    if-ge p2, v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;->passwords:[[[B

    aget-object v1, v1, v0

    aget-object v1, v1, p2

    invoke-static {v1}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->-$$Nest$smcopyUnchecked([B)[B

    move-result-object v1

    return-object v1

    .line 256
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Result password index"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public rankIndexFor(IZ)I
    .locals 3
    .param p1, "displayScore"    # I
    .param p2, "finalMissionVictory"    # Z

    .line 239
    if-eqz p2, :cond_0

    const/16 v0, 0x8

    return v0

    .line 240
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 241
    .local v0, "score":I
    const/4 v1, 0x0

    .line 242
    .local v1, "rank":I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;->thresholds:[I

    aget v2, v2, v1

    if-lt v0, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    :cond_1
    return v1
.end method

.method public rankName(I)Ljava/lang/String;
    .locals 5
    .param p1, "rankIndex"    # I

    .line 260
    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;->rankRecord(I)[B

    move-result-object v0

    .line 261
    .local v0, "record":[B
    const/4 v2, 0x0

    .line 262
    .local v2, "n":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-byte v3, v0, v2

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-static {}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->-$$Nest$sfgetROM_BYTES()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v3, v0, v1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public rankRecord(I)[B
    .locals 2
    .param p1, "rankIndex"    # I

    .line 246
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;->rankRecords:[[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;->rankRecords:[[B

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->-$$Nest$smcopyUnchecked([B)[B

    move-result-object v0

    return-object v0

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Result rank index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public threshold(I)I
    .locals 2
    .param p1, "index"    # I

    .line 235
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;->thresholds:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;->thresholds:[I

    aget v0, v0, p1

    return v0

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Result threshold index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
