.class public final Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;
.super Ljava/lang/Object;
.source "DuneHackR82EmcDependencyProbe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final build:Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;

.field public final gameReady:Z

.field public final sourceSha256:Ljava/lang/String;

.field public final team:Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;

.field public final unit:Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;

.field public final verifiedTroopParameters:Z


# direct methods
.method private constructor <init>(Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;ZLjava/lang/String;)V
    .locals 1
    .param p1, "b"    # Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;
    .param p2, "t"    # Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;
    .param p3, "u"    # Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;
    .param p4, "params"    # Z
    .param p5, "hash"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;->gameReady:Z

    .line 66
    iput-object p1, p0, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;->build:Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;

    iput-object p2, p0, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;->team:Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;

    iput-object p3, p0, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;->unit:Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;

    .line 67
    iput-boolean p4, p0, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;->verifiedTroopParameters:Z

    .line 68
    iput-object p5, p0, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;->sourceSha256:Ljava/lang/String;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;ZLjava/lang/String;Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;-><init>(Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public nativeDispatchVerified()Z
    .locals 1

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public scriptsIdentified()Z
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;->build:Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;->team:Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;->unit:Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
