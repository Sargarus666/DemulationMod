.class final Lcom/ahsim/demulation/MissionProgression;
.super Ljava/lang/Object;
.source "MissionProgression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/MissionProgression$Decision;
    }
.end annotation


# static fields
.field static final LAST_CAMPAIGN_ID:I = 0x8

.field static final LOSE:I = 0x2

.field static final ROM_COMPLETE_CAMPAIGN_ID:I = 0x9

.field static final RUNNING:I = 0x0

.field static final WIN:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isSaveResumableAfterWin(JJ)Z
    .locals 2
    .param p0, "saveTimestamp"    # J
    .param p2, "lastVictoryCutoffMillis"    # J

    .line 67
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static resolve(III)Lcom/ahsim/demulation/MissionProgression$Decision;
    .locals 12
    .param p0, "missionState"    # I
    .param p1, "campaignId"    # I
    .param p2, "currentUnlockedLevel"    # I

    .line 46
    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 47
    .local v6, "before":I
    add-int/lit8 v8, v6, 0x1

    .line 48
    .local v8, "currentLevel":I
    const/16 v0, 0x9

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 49
    .local v10, "unlocked":I
    const/4 v2, 0x2

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    .line 50
    new-instance v2, Lcom/ahsim/demulation/MissionProgression$Decision;

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v7, v6

    invoke-direct/range {v2 .. v10}, Lcom/ahsim/demulation/MissionProgression$Decision;-><init>(ZZZIIIII)V

    return-object v2

    .line 53
    :cond_0
    if-ne p0, v2, :cond_1

    .line 54
    new-instance v2, Lcom/ahsim/demulation/MissionProgression$Decision;

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v7, v6

    invoke-direct/range {v2 .. v10}, Lcom/ahsim/demulation/MissionProgression$Decision;-><init>(ZZZIIIII)V

    move v11, v10

    .end local v10    # "unlocked":I
    .local v11, "unlocked":I
    return-object v2

    .line 58
    .end local v11    # "unlocked":I
    .restart local v10    # "unlocked":I
    :cond_1
    move v11, v10

    .end local v10    # "unlocked":I
    .restart local v11    # "unlocked":I
    add-int/lit8 v7, v6, 0x1

    .line 59
    .local v7, "after":I
    if-ne v7, v0, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v1

    .line 60
    .local v5, "complete":Z
    :goto_0
    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v7, 0x1

    :goto_1
    move v9, v1

    .line 61
    .local v9, "nextLevel":I
    if-eqz v5, :cond_4

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    :cond_4
    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 62
    .local v1, "unlockedAfter":I
    :goto_2
    new-instance v2, Lcom/ahsim/demulation/MissionProgression$Decision;

    .line 63
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct/range {v2 .. v10}, Lcom/ahsim/demulation/MissionProgression$Decision;-><init>(ZZZIIIII)V

    .line 62
    return-object v2
.end method
