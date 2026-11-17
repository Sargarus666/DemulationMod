.class public final Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;
.super Ljava/lang/Object;
.source "DuneHackR82CampaignLinkProbe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pair"
.end annotation


# instance fields
.field public final house:I

.field public final mapMaxX:I

.field public final mapMaxY:I

.field public final mapRomOffset:I

.field public final mapSha256:Ljava/lang/String;

.field public final mapStoredBytes:I

.field public final mission:I

.field public final scenarioBytes:I

.field public final scenarioRomOffset:I

.field public final scenarioSha256:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;)V
    .locals 3
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .param p3, "maps"    # Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;
    .param p4, "scenarios"    # Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;->house:I

    .line 41
    iput p2, p0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;->mission:I

    .line 42
    invoke-virtual {p3, p1, p2}, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;->map(II)[B

    move-result-object v0

    .line 43
    .local v0, "map":[B
    invoke-virtual {p4, p1, p2}, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;->scenario(II)[B

    move-result-object v1

    .line 44
    .local v1, "scenario":[B
    invoke-virtual {p3, p1, p2}, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;->romOffset(II)I

    move-result v2

    iput v2, p0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;->mapRomOffset:I

    .line 45
    array-length v2, v0

    iput v2, p0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;->mapStoredBytes:I

    .line 46
    invoke-virtual {p3, p1, p2}, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;->scenarioMaxX(II)I

    move-result v2

    iput v2, p0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;->mapMaxX:I

    .line 47
    invoke-virtual {p3, p1, p2}, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;->scenarioMaxY(II)I

    move-result v2

    iput v2, p0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;->mapMaxY:I

    .line 48
    invoke-virtual {p4, p1, p2}, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;->romOffset(II)I

    move-result v2

    iput v2, p0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;->scenarioRomOffset:I

    .line 49
    array-length v2, v1

    iput v2, p0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;->scenarioBytes:I

    .line 50
    invoke-static {v0}, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;->sha256([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;->mapSha256:Ljava/lang/String;

    .line 51
    invoke-static {v1}, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;->sha256([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;->scenarioSha256:Ljava/lang/String;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(IILcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;-><init>(IILcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;)V

    return-void
.end method
