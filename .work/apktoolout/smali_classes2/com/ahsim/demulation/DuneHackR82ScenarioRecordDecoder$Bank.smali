.class public final Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Bank;
.super Ljava/lang/Object;
.source "DuneHackR82ScenarioRecordDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bank"
.end annotation


# instance fields
.field private final documents:[[Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;

.field public final totalFifthHouseRecords:I

.field public final totalRecords:I

.field public final totalReinforcements:I

.field public final totalStructures:I

.field public final totalTeams:I

.field public final totalUnits:I


# direct methods
.method private constructor <init>([[Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;)V
    .locals 14
    .param p1, "docs"    # [[Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Bank;->documents:[[Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;

    .line 85
    const/4 v0, 0x0

    .local v0, "records":I
    const/4 v1, 0x0

    .local v1, "units":I
    const/4 v2, 0x0

    .local v2, "buildings":I
    const/4 v3, 0x0

    .local v3, "teams":I
    const/4 v4, 0x0

    .local v4, "reinforcements":I
    const/4 v5, 0x0

    .line 86
    .local v5, "extra":I
    array-length v6, p1

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_1

    aget-object v9, p1, v8

    .local v9, "house":[Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    array-length v10, v9

    move v11, v7

    :goto_1
    if-ge v11, v10, :cond_0

    aget-object v12, v9, v11

    .line 87
    .local v12, "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    iget v13, v12, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->recordCount:I

    add-int/2addr v0, v13

    .line 88
    iget v13, v12, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->unitCount:I

    add-int/2addr v1, v13

    .line 89
    iget v13, v12, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->structureCount:I

    add-int/2addr v2, v13

    .line 90
    iget v13, v12, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->teamCount:I

    add-int/2addr v3, v13

    .line 91
    iget v13, v12, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->reinforcementCount:I

    add-int/2addr v4, v13

    .line 92
    iget v13, v12, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->fifthHouseRecords:I

    add-int/2addr v5, v13

    .line 86
    .end local v12    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .end local v9    # "house":[Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 94
    :cond_1
    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Bank;->totalRecords:I

    .line 95
    iput v1, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Bank;->totalUnits:I

    .line 96
    iput v2, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Bank;->totalStructures:I

    .line 97
    iput v3, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Bank;->totalTeams:I

    .line 98
    iput v4, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Bank;->totalReinforcements:I

    .line 99
    iput v5, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Bank;->totalFifthHouseRecords:I

    .line 100
    return-void
.end method

.method synthetic constructor <init>([[Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Bank;-><init>([[Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;)V

    return-void
.end method


# virtual methods
.method public document(II)Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    .locals 2
    .param p1, "house"    # I
    .param p2, "mission"    # I

    .line 102
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/16 v0, 0x9

    if-gt p2, v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Bank;->documents:[[Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;

    aget-object v0, v0, p1

    add-int/lit8 v1, p2, -0x1

    aget-object v0, v0, v1

    return-object v0

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "R82C house/mission out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
