.class public final Lcom/ahsim/demulation/DuneHackR82Probe$Result;
.super Ljava/lang/Object;
.source "DuneHackR82Probe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82Probe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final alliances:Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

.field public final buildTag:Ljava/lang/String;

.field public final emcExtensions:Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

.field public final evidence:Ljava/lang/String;

.field public final exampleFingerprintMatched:Z

.field public final expandedMap:Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

.field public final expandedResolution:Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

.field public final family:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

.field public final headerTitle:Ljava/lang/String;

.field public final newSoundDriver:Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

.field public final projectiles:Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

.field public final xMod:Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;


# direct methods
.method private constructor <init>(Lcom/ahsim/demulation/DuneHackR82Probe$Family;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "family"    # Lcom/ahsim/demulation/DuneHackR82Probe$Family;
    .param p2, "evidence"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "known"    # Z

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->family:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    .line 37
    iput-object p2, p0, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->evidence:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->headerTitle:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->buildTag:Ljava/lang/String;

    .line 40
    iput-boolean p5, p0, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->exampleFingerprintMatched:Z

    .line 41
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;->UNKNOWN:Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->expandedMap:Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

    .line 42
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;->UNKNOWN:Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->expandedResolution:Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

    .line 43
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;->UNKNOWN:Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->newSoundDriver:Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

    .line 44
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;->UNKNOWN:Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->xMod:Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

    .line 45
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;->UNKNOWN:Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->alliances:Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

    .line 46
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;->UNKNOWN:Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->projectiles:Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

    .line 47
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;->UNKNOWN:Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->emcExtensions:Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/DuneHackR82Probe$Family;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ahsim/demulation/DuneHackR82Probe-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ahsim/demulation/DuneHackR82Probe$Result;-><init>(Lcom/ahsim/demulation/DuneHackR82Probe$Family;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public profileId()Ljava/lang/String;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->family:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82Probe$Family;->R82C_PLUS:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    if-ne v0, v1, :cond_0

    const-string v0, "candidate:dunehack_r82c_plus"

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->family:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82Probe$Family;->R82C:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    if-ne v0, v1, :cond_1

    const-string v0, "candidate:dunehack_r82c"

    goto :goto_0

    :cond_1
    const-string v0, "unknown"

    .line 52
    :goto_0
    return-object v0
.end method

.method public profileLabel()Ljava/lang/String;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->family:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82Probe$Family;->R82C_PLUS:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    if-ne v0, v1, :cond_0

    const-string v0, "DuneHack Rebuild R82C+ / Emperor175 family"

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->family:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82Probe$Family;->R82C:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    if-ne v0, v1, :cond_1

    const-string v0, "DuneHack Rebuild R82C family"

    goto :goto_0

    .line 58
    :cond_1
    const-string v0, "Unknown ROM family"

    .line 56
    :goto_0
    return-object v0
.end method

.method public recognized()Z
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->family:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82Probe$Family;->NONE:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
