.class Lcom/ahsim/demulation/RazorCampaignNativeSession$1;
.super Ljava/lang/Object;
.source "RazorCampaignNativeSession.java"

# interfaces
.implements Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorCampaignNativeSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public birth567(J)[I
    .locals 1
    .param p1, "t"    # J

    .line 100
    invoke-static {p1, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignBirth567(J)[I

    move-result-object v0

    return-object v0
.end method

.method public cadence668(J)[I
    .locals 1
    .param p1, "t"    # J

    .line 59
    invoke-static {p1, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignCadence668(J)[I

    move-result-object v0

    return-object v0
.end method

.method public close(J)Z
    .locals 1
    .param p1, "t"    # J

    .line 47
    invoke-static {p1, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->closeCampaignWorld(J)Z

    move-result v0

    return v0
.end method

.method public construction571(JIII)[I
    .locals 1
    .param p1, "t"    # J
    .param p3, "action"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .line 97
    invoke-static {p1, p2, p3, p4, p5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignConstruction571(JIII)[I

    move-result-object v0

    return-object v0
.end method

.method public core667(J)[I
    .locals 1
    .param p1, "t"    # J

    .line 58
    invoke-static {p1, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignCore667(J)[I

    move-result-object v0

    return-object v0
.end method

.method public demo569(JIIII)[I
    .locals 1
    .param p1, "t"    # J
    .param p3, "action"    # I
    .param p4, "handle"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I

    .line 75
    invoke-static/range {p1 .. p6}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignDemo569(JIIII)[I

    move-result-object v0

    return-object v0
.end method

.method public dynamic569(J)[I
    .locals 1
    .param p1, "t"    # J

    .line 72
    invoke-static {p1, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignDynamic569(J)[I

    move-result-object v0

    return-object v0
.end method

.method public economy573(J)[I
    .locals 1
    .param p1, "t"    # J

    .line 80
    invoke-static {p1, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignEconomy573(J)[I

    move-result-object v0

    return-object v0
.end method

.method public enableSubtile565(J)Z
    .locals 1
    .param p1, "t"    # J

    .line 61
    invoke-static {p1, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->enableSubtile565(J)Z

    move-result v0

    return v0
.end method

.method public finance574(JIII)[I
    .locals 1
    .param p1, "t"    # J
    .param p3, "action"    # I
    .param p4, "cost"    # I
    .param p5, "time"    # I

    .line 82
    invoke-static {p1, p2, p3, p4, p5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignFinance574(JIII)[I

    move-result-object v0

    return-object v0
.end method

.method public finance575(JIIII)[I
    .locals 1
    .param p1, "t"    # J
    .param p3, "action"    # I
    .param p4, "frames"    # I
    .param p5, "cost"    # I
    .param p6, "time"    # I

    .line 85
    invoke-static/range {p1 .. p6}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignFinance575(JIIII)[I

    move-result-object v0

    return-object v0
.end method

.method public finance576(JIII)[I
    .locals 1
    .param p1, "t"    # J
    .param p3, "action"    # I
    .param p4, "cost"    # I
    .param p5, "time"    # I

    .line 94
    invoke-static {p1, p2, p3, p4, p5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignFinance576(JIII)[I

    move-result-object v0

    return-object v0
.end method

.method public frameIngress634(JIJ)[I
    .locals 1
    .param p1, "t"    # J
    .param p3, "action"    # I
    .param p4, "frameTimeNs"    # J

    .line 88
    invoke-static {p1, p2, p3, p4, p5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->frameIngress634(JIJ)[I

    move-result-object v0

    return-object v0
.end method

.method public hud743(J)[I
    .locals 1
    .param p1, "t"    # J

    .line 69
    invoke-static {p1, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignHud743(J)[I

    move-result-object v0

    return-object v0
.end method

.method public identity566(JI)[I
    .locals 1
    .param p1, "t"    # J
    .param p3, "n"    # I

    .line 103
    invoke-static {p1, p2, p3}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignUnitIdentity566(JI)[I

    move-result-object v0

    return-object v0
.end method

.method public integrated694(J)[I
    .locals 1
    .param p1, "t"    # J

    .line 56
    invoke-static {p1, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignIntegratedStep694(J)[I

    move-result-object v0

    return-object v0
.end method

.method public map(J)[I
    .locals 1
    .param p1, "t"    # J

    .line 54
    invoke-static {p1, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignMap559(J)[I

    move-result-object v0

    return-object v0
.end method

.method public open(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;)J
    .locals 2
    .param p1, "m"    # Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    .line 44
    invoke-static {p1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->openCampaignWorld(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;)J

    move-result-wide v0

    return-wide v0
.end method

.method public order(JIIII)[I
    .locals 1
    .param p1, "t"    # J
    .param p3, "action"    # I
    .param p4, "unit"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I

    .line 106
    invoke-static/range {p1 .. p6}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignOrder557(JIIII)[I

    move-result-object v0

    return-object v0
.end method

.method public probe(J)[I
    .locals 1
    .param p1, "t"    # J

    .line 52
    invoke-static {p1, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->probeCampaignObject556(J)[I

    move-result-object v0

    return-object v0
.end method

.method public read(J)[I
    .locals 1
    .param p1, "t"    # J

    .line 46
    invoke-static {p1, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->pollCampaignWorld(J)[I

    move-result-object v0

    return-object v0
.end method

.method public refinery570(JIII)[I
    .locals 1
    .param p1, "t"    # J
    .param p3, "action"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .line 78
    invoke-static {p1, p2, p3, p4, p5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignRefinery570(JIII)[I

    move-result-object v0

    return-object v0
.end method

.method public scheduler(J)[I
    .locals 1
    .param p1, "t"    # J

    .line 55
    invoke-static {p1, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignScheduler560(J)[I

    move-result-object v0

    return-object v0
.end method

.method public simulationStep635(J)[I
    .locals 1
    .param p1, "t"    # J

    .line 91
    invoke-static {p1, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->simulationStep635(J)[I

    move-result-object v0

    return-object v0
.end method

.method public subtile565(J)[I
    .locals 1
    .param p1, "t"    # J

    .line 64
    invoke-static {p1, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignSubtile565(J)[I

    move-result-object v0

    return-object v0
.end method

.method public terrain561(J[B)Z
    .locals 1
    .param p1, "t"    # J
    .param p3, "lookup"    # [B

    .line 49
    invoke-static {p1, p2, p3}, Lcom/ahsim/demulation/RazorNativeWorldSession;->configureCampaignTerrain561(J[B)Z

    move-result v0

    return v0
.end method

.method public tick729(J)[I
    .locals 1
    .param p1, "t"    # J

    .line 57
    invoke-static {p1, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignTick729(J)[I

    move-result-object v0

    return-object v0
.end method

.method public trace562(J)[I
    .locals 1
    .param p1, "t"    # J

    .line 70
    invoke-static {p1, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignTrace562(J)[I

    move-result-object v0

    return-object v0
.end method

.method public visual738(J)[I
    .locals 1
    .param p1, "t"    # J

    .line 67
    invoke-static {p1, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignVisual738(J)[I

    move-result-object v0

    return-object v0
.end method
