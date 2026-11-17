.class public final Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;
.super Ljava/lang/Object;
.source "DuneHackR82CampaignLinkProbe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final confidence:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

.field public final evidence:Ljava/lang/String;

.field public final mapPointerTable:I

.field private final pairs:[[Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;

.field public final scenarioPointerTable:I

.field public final sourceSha256:Ljava/lang/String;

.field public final structuralMapSlots:I

.field public final structuralScenarioSlots:I


# direct methods
.method private constructor <init>(Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;Ljava/lang/String;IILjava/lang/String;[[Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;)V
    .locals 3
    .param p1, "confidence"    # Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;
    .param p2, "sourceSha256"    # Ljava/lang/String;
    .param p3, "mapPointerTable"    # I
    .param p4, "scenarioPointerTable"    # I
    .param p5, "evidence"    # Ljava/lang/String;
    .param p6, "pairs"    # [[Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;->confidence:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    .line 67
    iput-object p2, p0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;->sourceSha256:Ljava/lang/String;

    .line 68
    iput p3, p0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;->mapPointerTable:I

    .line 69
    iput p4, p0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;->scenarioPointerTable:I

    .line 70
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;->UNSUPPORTED:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    const/4 v1, 0x0

    const/16 v2, 0x2d

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;->structuralMapSlots:I

    .line 71
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;->UNSUPPORTED:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput v1, p0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;->structuralScenarioSlots:I

    .line 72
    iput-object p5, p0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;->evidence:Ljava/lang/String;

    .line 73
    iput-object p6, p0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;->pairs:[[Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;Ljava/lang/String;IILjava/lang/String;[[Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;-><init>(Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;Ljava/lang/String;IILjava/lang/String;[[Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;)V

    return-void
.end method


# virtual methods
.method public gameplayReady()Z
    .locals 1

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public pair(II)Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;
    .locals 2
    .param p1, "house"    # I
    .param p2, "mission"    # I

    .line 76
    if-ltz p1, :cond_1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    const/16 v0, 0x9

    if-gt p2, v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;->pairs:[[Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;->pairs:[[Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;

    aget-object v0, v0, p1

    add-int/lit8 v1, p2, -0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    .line 77
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "R82C house/mission outside 5x9"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
