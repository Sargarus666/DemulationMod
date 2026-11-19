.class final Lcom/ahsim/demulation/MainActivity$ManualSaveInfo;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ManualSaveInfo"
.end annotation


# instance fields
.field achievementMissionState:Ljava/lang/String;

.field autosave:Z

.field battlefieldOnlyThumbnail:Z

.field cameraX:F

.field cameraY:F

.field campaignId:I

.field credits:I

.field displayName:Ljava/lang/String;

.field favorites:Ljava/lang/String;

.field hudMenuOffset:I

.field id:Ljava/lang/String;

.field mapH:I

.field mapW:I

.field metaFile:Ljava/io/File;

.field playerHouse:I

.field scenarioAsset:Ljava/lang/String;

.field spiceHarvested:I

.field stateFile:Ljava/io/File;

.field structures:I

.field structuresDestroyed:I

.field testPreset:I

.field thumbFile:Ljava/io/File;

.field ticks:I

.field timestamp:J

.field units:I

.field unitsDestroyed:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 6674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6679
    const-string v0, ""

    iput-object v0, p0, Lcom/ahsim/demulation/MainActivity$ManualSaveInfo;->displayName:Ljava/lang/String;

    .line 6688
    const-string v1, "bootstrap/SCENA008.INI"

    iput-object v1, p0, Lcom/ahsim/demulation/MainActivity$ManualSaveInfo;->scenarioAsset:Ljava/lang/String;

    .line 6689
    const/4 v1, 0x7

    iput v1, p0, Lcom/ahsim/demulation/MainActivity$ManualSaveInfo;->campaignId:I

    .line 6690
    const/4 v1, 0x0

    iput v1, p0, Lcom/ahsim/demulation/MainActivity$ManualSaveInfo;->testPreset:I

    .line 6699
    iput-object v0, p0, Lcom/ahsim/demulation/MainActivity$ManualSaveInfo;->favorites:Ljava/lang/String;

    .line 6700
    iput-object v0, p0, Lcom/ahsim/demulation/MainActivity$ManualSaveInfo;->achievementMissionState:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/MainActivity-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/ahsim/demulation/MainActivity$ManualSaveInfo;-><init>()V

    return-void
.end method
