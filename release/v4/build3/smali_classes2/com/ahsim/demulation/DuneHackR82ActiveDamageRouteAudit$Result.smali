.class public final Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Result;
.super Ljava/lang/Object;
.source "DuneHackR82ActiveDamageRouteAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final isExecutableCompatibilityConfirmed:Z

.field public final modGameplayReady:Z

.field public final playerDamageSettingsReady:Z

.field public final structures:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;

.field public final units:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;


# direct methods
.method private constructor <init>(Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;)V
    .locals 1
    .param p1, "units"    # Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;
    .param p2, "structures"    # Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Result;->isExecutableCompatibilityConfirmed:Z

    .line 50
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Result;->modGameplayReady:Z

    .line 51
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Result;->playerDamageSettingsReady:Z

    .line 54
    iput-object p1, p0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Result;->units:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;

    .line 55
    iput-object p2, p0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Result;->structures:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Result;-><init>(Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;)V

    return-void
.end method
