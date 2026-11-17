.class public final Lcom/ahsim/demulation/RazorScenarioEconomy573;
.super Ljava/lang/Object;
.source "RazorScenarioEconomy573.java"


# static fields
.field public static final SCHEMA:I = 0x23d


# instance fields
.field public final playerCredits:I

.field public final playerSourceSection:I

.field public final sourceCredits:[I

.field public final sourceMask:I


# direct methods
.method private constructor <init>(II[I)V
    .locals 1
    .param p1, "player"    # I
    .param p2, "mask"    # I
    .param p3, "credits"    # [I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/ahsim/demulation/RazorScenarioEconomy573;->playerSourceSection:I

    iput p2, p0, Lcom/ahsim/demulation/RazorScenarioEconomy573;->sourceMask:I

    .line 13
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/RazorScenarioEconomy573;->sourceCredits:[I

    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    aget v0, p3, p1

    :goto_0
    iput v0, p0, Lcom/ahsim/demulation/RazorScenarioEconomy573;->playerCredits:I

    .line 14
    return-void
.end method

.method static fromDocument(Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;)Lcom/ahsim/demulation/RazorScenarioEconomy573;
    .locals 11
    .param p0, "document"    # Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    if-eqz p0, :cond_8

    .line 23
    const/16 v0, 0xc

    new-array v0, v0, [I

    .local v0, "credits":[I
    const/16 v1, 0xff

    .local v1, "player":I
    const/4 v2, 0x0

    .line 24
    .local v2, "mask":I
    invoke-virtual {p0}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->records()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x5

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;

    .line 25
    .local v4, "row":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    iget v6, v4, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->section:I

    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    iget v6, v4, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->section:I

    if-le v6, v5, :cond_1

    iget v5, v4, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->section:I

    const/16 v6, 0xb

    if-eq v5, v6, :cond_1

    goto :goto_0

    .line 26
    :cond_1
    iget v5, v4, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->section:I

    .line 27
    .local v5, "section":I
    invoke-virtual {v4}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->valueCount()I

    move-result v6

    const/4 v8, 0x4

    if-ne v6, v8, :cond_5

    ushr-int v6, v2, v5

    const/4 v8, 0x1

    and-int/2addr v6, v8

    if-nez v6, :cond_5

    .line 28
    invoke-virtual {v4, v7}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v6

    const/16 v9, 0x48

    if-eq v6, v9, :cond_2

    invoke-virtual {v4, v7}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v6

    const/16 v10, 0x43

    if-ne v6, v10, :cond_5

    .line 30
    :cond_2
    shl-int v6, v8, v5

    or-int/2addr v2, v6

    .line 31
    invoke-virtual {v4, v8}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v6

    aput v6, v0, v5

    .line 32
    invoke-virtual {v4, v7}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v6

    if-ne v6, v9, :cond_4

    .line 33
    const/16 v6, 0xff

    if-ne v1, v6, :cond_3

    .line 34
    move v1, v5

    goto :goto_1

    .line 33
    :cond_3
    new-instance v3, Ljava/io/IOException;

    const-string v6, "Ambiguous Razor player house"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 36
    .end local v4    # "row":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    .end local v5    # "section":I
    :cond_4
    :goto_1
    goto :goto_0

    .line 29
    .restart local v4    # "row":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    .restart local v5    # "section":I
    :cond_5
    new-instance v3, Ljava/io/IOException;

    const-string v6, "Invalid Razor source house credit record"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 37
    .end local v4    # "row":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    .end local v5    # "section":I
    :cond_6
    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    if-gt v3, v5, :cond_7

    if-eqz v2, :cond_7

    .line 38
    new-instance v3, Lcom/ahsim/demulation/RazorScenarioEconomy573;

    invoke-direct {v3, v1, v2, v0}, Lcom/ahsim/demulation/RazorScenarioEconomy573;-><init>(II[I)V

    return-object v3

    .line 37
    :cond_7
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid source house count"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 22
    .end local v0    # "credits":[I
    .end local v1    # "player":I
    .end local v2    # "mask":I
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing Razor scenario"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inspect(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;II)Lcom/ahsim/demulation/RazorScenarioEconomy573;
    .locals 2
    .param p0, "bundle"    # Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->variant:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->variant:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->mission(II)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder;->decode([B)Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/RazorScenarioEconomy573;->fromDocument(Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;)Lcom/ahsim/demulation/RazorScenarioEconomy573;

    move-result-object v0

    return-object v0

    .line 18
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor source not authenticated"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public verifyNative([I)V
    .locals 3
    .param p1, "words"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    if-eqz p1, :cond_3

    array-length v0, p1

    const/16 v1, 0x14

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    aget v0, p1, v0

    const/16 v1, 0x23d

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    aget v0, p1, v0

    iget v1, p0, Lcom/ahsim/demulation/RazorScenarioEconomy573;->playerSourceSection:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x2

    aget v1, p1, v0

    .line 44
    iget v2, p0, Lcom/ahsim/demulation/RazorScenarioEconomy573;->playerCredits:I

    if-gez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/ahsim/demulation/RazorScenarioEconomy573;->playerCredits:I

    :goto_0
    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    aget v1, p1, v1

    aget v0, p1, v0

    if-ne v1, v0, :cond_3

    const/4 v0, 0x4

    aget v0, p1, v0

    iget v1, p0, Lcom/ahsim/demulation/RazorScenarioEconomy573;->sourceMask:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x5

    aget v0, p1, v0

    if-nez v0, :cond_3

    const/4 v0, 0x6

    aget v0, p1, v0

    if-nez v0, :cond_3

    const/4 v0, 0x7

    aget v0, p1, v0

    if-nez v0, :cond_3

    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xc

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x8

    aget v1, p1, v1

    iget-object v2, p0, Lcom/ahsim/demulation/RazorScenarioEconomy573;->sourceCredits:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 49
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor native source house credits mismatch"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    .end local v0    # "i":I
    :cond_2
    return-void

    .line 47
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor native economy disagrees with verified source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
