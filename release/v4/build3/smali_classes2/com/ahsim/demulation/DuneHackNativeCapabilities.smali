.class public final Lcom/ahsim/demulation/DuneHackNativeCapabilities;
.super Ljava/lang/Object;
.source "DuneHackNativeCapabilities.java"


# instance fields
.field public final emcScheduler:Z

.field public final extendedOwners:Z

.field public final extendedUnits:Z

.field public final gameplay:Z

.field public final maps128:Z

.field public final saveLoad:Z


# direct methods
.method private constructor <init>(ZZZZZZ)V
    .locals 0
    .param p1, "map"    # Z
    .param p2, "owners"    # Z
    .param p3, "units"    # Z
    .param p4, "scheduler"    # Z
    .param p5, "game"    # Z
    .param p6, "saves"    # Z

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean p1, p0, Lcom/ahsim/demulation/DuneHackNativeCapabilities;->maps128:Z

    iput-boolean p2, p0, Lcom/ahsim/demulation/DuneHackNativeCapabilities;->extendedOwners:Z

    iput-boolean p3, p0, Lcom/ahsim/demulation/DuneHackNativeCapabilities;->extendedUnits:Z

    .line 16
    iput-boolean p4, p0, Lcom/ahsim/demulation/DuneHackNativeCapabilities;->emcScheduler:Z

    iput-boolean p5, p0, Lcom/ahsim/demulation/DuneHackNativeCapabilities;->gameplay:Z

    iput-boolean p6, p0, Lcom/ahsim/demulation/DuneHackNativeCapabilities;->saveLoad:Z

    .line 17
    return-void
.end method

.method public static current()Lcom/ahsim/demulation/DuneHackNativeCapabilities;
    .locals 7

    .line 20
    new-instance v0, Lcom/ahsim/demulation/DuneHackNativeCapabilities;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/ahsim/demulation/DuneHackNativeCapabilities;-><init>(ZZZZZZ)V

    return-object v0
.end method


# virtual methods
.method public canLaunch()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/ahsim/demulation/DuneHackNativeCapabilities;->maps128:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ahsim/demulation/DuneHackNativeCapabilities;->extendedOwners:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ahsim/demulation/DuneHackNativeCapabilities;->extendedUnits:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ahsim/demulation/DuneHackNativeCapabilities;->emcScheduler:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ahsim/demulation/DuneHackNativeCapabilities;->gameplay:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ahsim/demulation/DuneHackNativeCapabilities;->saveLoad:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
