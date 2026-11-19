.class final Lcom/ahsim/demulation/MainActivity$AchievementMissionState;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AchievementMissionState"
.end annotation


# instance fields
.field active:Z

.field cheatUsed:Z

.field fastCameraUsed:Z

.field historyKnown:Z

.field initialBloomCount:I

.field level:I

.field maxHarvesters:I

.field maxRefineries:I

.field maxRefinerySiloCombined:I

.field maxSilos:I

.field maxWindtraps:I

.field playerNativeHouse:I

.field powerShortageSeen:Z

.field radarEverEnabled:Z

.field repairUsed:Z

.field scenarioHouseIndex:I

.field spiceLimitReached:Z

.field starportPurchaseUsed:Z

.field wormAteAnyone:Z

.field wormsDestroyed:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1932
    const/4 v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/MainActivity$AchievementMissionState;->scenarioHouseIndex:I

    .line 1933
    iput v0, p0, Lcom/ahsim/demulation/MainActivity$AchievementMissionState;->playerNativeHouse:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/MainActivity-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/ahsim/demulation/MainActivity$AchievementMissionState;-><init>()V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .line 1950
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/MainActivity$AchievementMissionState;->active:Z

    .line 1951
    iput-boolean v0, p0, Lcom/ahsim/demulation/MainActivity$AchievementMissionState;->historyKnown:Z

    .line 1952
    iput-boolean v0, p0, Lcom/ahsim/demulation/MainActivity$AchievementMissionState;->cheatUsed:Z

    .line 1953
    iput v0, p0, Lcom/ahsim/demulation/MainActivity$AchievementMissionState;->level:I

    .line 1954
    const/4 v1, -0x1

    iput v1, p0, Lcom/ahsim/demulation/MainActivity$AchievementMissionState;->scenarioHouseIndex:I

    .line 1955
    iput v1, p0, Lcom/ahsim/demulation/MainActivity$AchievementMissionState;->playerNativeHouse:I

    .line 1956
    iput-boolean v0, p0, Lcom/ahsim/demulation/MainActivity$AchievementMissionState;->radarEverEnabled:Z

    .line 1957
    iput-boolean v0, p0, Lcom/ahsim/demulation/MainActivity$AchievementMissionState;->repairUsed:Z

    .line 1958
    iput-boolean v0, p0, Lcom/ahsim/demulation/MainActivity$AchievementMissionState;->starportPurchaseUsed:Z

    .line 1959
    iput-boolean v0, p0, Lcom/ahsim/demulation/MainActivity$AchievementMissionState;->powerShortageSeen:Z

    .line 1960
    iput-boolean v0, p0, Lcom/ahsim/demulation/MainActivity$AchievementMissionState;->spiceLimitReached:Z

    .line 1961
    iput-boolean v0, p0, Lcom/ahsim/demulation/MainActivity$AchievementMissionState;->fastCameraUsed:Z

    .line 1962
    iput v0, p0, Lcom/ahsim/demulation/MainActivity$AchievementMissionState;->maxRefinerySiloCombined:I

    .line 1963
    iput v0, p0, Lcom/ahsim/demulation/MainActivity$AchievementMissionState;->maxHarvesters:I

    .line 1964
    iput v0, p0, Lcom/ahsim/demulation/MainActivity$AchievementMissionState;->maxRefineries:I

    .line 1965
    iput v0, p0, Lcom/ahsim/demulation/MainActivity$AchievementMissionState;->maxSilos:I

    .line 1966
    iput v0, p0, Lcom/ahsim/demulation/MainActivity$AchievementMissionState;->maxWindtraps:I

    .line 1967
    iput v0, p0, Lcom/ahsim/demulation/MainActivity$AchievementMissionState;->initialBloomCount:I

    .line 1968
    iput v0, p0, Lcom/ahsim/demulation/MainActivity$AchievementMissionState;->wormsDestroyed:I

    .line 1969
    iput-boolean v0, p0, Lcom/ahsim/demulation/MainActivity$AchievementMissionState;->wormAteAnyone:Z

    .line 1970
    return-void
.end method
