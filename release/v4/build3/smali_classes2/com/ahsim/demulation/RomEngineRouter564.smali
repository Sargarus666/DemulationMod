.class public final Lcom/ahsim/demulation/RomEngineRouter564;
.super Ljava/lang/Object;
.source "RomEngineRouter564.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomEngineRouter564$Decision;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decide(Lcom/ahsim/demulation/RazorRomAnalysis;)Lcom/ahsim/demulation/RomEngineRouter564$Decision;
    .locals 2
    .param p0, "source"    # Lcom/ahsim/demulation/RazorRomAnalysis;

    .line 10
    if-eqz p0, :cond_2

    .line 11
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorRomAnalysis;->recognized:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ahsim/demulation/RomEngineRouter564$Decision;->DUNEHACK_NATIVE:Lcom/ahsim/demulation/RomEngineRouter564$Decision;

    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorRomAnalysis;->family:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82Probe$Family;->NONE:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    if-eq v0, v1, :cond_1

    .line 13
    sget-object v0, Lcom/ahsim/demulation/RomEngineRouter564$Decision;->DUNEHACK_CANDIDATE:Lcom/ahsim/demulation/RomEngineRouter564$Decision;

    return-object v0

    .line 14
    :cond_1
    sget-object v0, Lcom/ahsim/demulation/RomEngineRouter564$Decision;->CLASSIC_OR_UNKNOWN:Lcom/ahsim/demulation/RomEngineRouter564$Decision;

    return-object v0

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ROM analysis required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
