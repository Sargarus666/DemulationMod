.class final Lcom/ahsim/demulation/CampaignLevelFlow;
.super Ljava/lang/Object;
.source "CampaignLevelFlow.java"


# static fields
.field static final FIRST_LEVEL:I = 0x1

.field static final LAST_LEVEL:I = 0x9


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static campaignIdForLevel(I)I
    .locals 2
    .param p0, "level"    # I

    .line 36
    const/16 v0, 0x9

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 37
    .local v0, "l":I
    add-int/lit8 v1, v0, -0x1

    return v1
.end method

.method static clampUnlockedLevel(I)I
    .locals 2
    .param p0, "unlockedLevel"    # I

    .line 19
    const/16 v0, 0x9

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static highlightedLevel(I)I
    .locals 1
    .param p0, "unlockedLevel"    # I

    .line 32
    invoke-static {p0}, Lcom/ahsim/demulation/CampaignLevelFlow;->clampUnlockedLevel(I)I

    move-result v0

    return v0
.end method

.method static isLevelEnabled(II)Z
    .locals 3
    .param p0, "level"    # I
    .param p1, "unlockedLevel"    # I

    .line 27
    invoke-static {p1}, Lcom/ahsim/demulation/CampaignLevelFlow;->clampUnlockedLevel(I)I

    move-result v0

    .line 28
    .local v0, "unlocked":I
    const/4 v1, 0x1

    if-lt p0, v1, :cond_0

    const/16 v2, 0x9

    if-gt p0, v2, :cond_0

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static restartLevelAfterOutcome(Lcom/ahsim/demulation/MissionProgression$Decision;)I
    .locals 2
    .param p0, "decision"    # Lcom/ahsim/demulation/MissionProgression$Decision;

    .line 41
    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lcom/ahsim/demulation/MissionProgression$Decision;->terminal:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ahsim/demulation/MissionProgression$Decision;->won:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    const/16 v0, 0x9

    iget v1, p0, Lcom/ahsim/demulation/MissionProgression$Decision;->currentLevel:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 41
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static showLevelSelectorAfterHouse(I)Z
    .locals 2
    .param p0, "unlockedLevel"    # I

    .line 23
    invoke-static {p0}, Lcom/ahsim/demulation/CampaignLevelFlow;->clampUnlockedLevel(I)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
