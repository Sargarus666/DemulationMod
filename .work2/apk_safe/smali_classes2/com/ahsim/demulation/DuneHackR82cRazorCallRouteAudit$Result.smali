.class public final Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;
.super Ljava/lang/Object;
.source "DuneHackR82cRazorCallRouteAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final entryReachabilityProven:Z

.field public final indirectRoutesEnumerated:Z

.field public final modGameplayReady:Z

.field public final modeOneCount:I

.field public final modeZeroCount:I

.field public final playerOverridesEnabled:Z

.field public final routes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p1, "validated":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;->indirectRoutesEnumerated:Z

    .line 56
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;->entryReachabilityProven:Z

    .line 57
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;->modGameplayReady:Z

    .line 58
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;->playerOverridesEnabled:Z

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;->routes:Ljava/util/List;

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "zeros":I
    const/4 v1, 0x0

    .line 64
    .local v1, "ones":I
    iget-object v2, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;->routes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;

    .line 65
    .local v3, "route":Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;
    iget v4, v3, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;->argumentModeWord:I

    if-nez v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 66
    :cond_0
    iget v4, v3, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;->argumentModeWord:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 67
    .end local v3    # "route":Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;
    :cond_1
    goto :goto_0

    .line 68
    :cond_2
    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;->modeZeroCount:I

    .line 69
    iput v1, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;->modeOneCount:I

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;-><init>(Ljava/util/List;)V

    return-void
.end method
