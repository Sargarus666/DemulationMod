.class public final Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;
.super Ljava/lang/Object;
.source "DuneHackR82AsmHookProbe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final asmSemanticsVerified:Z

.field public final gameplayReady:Z

.field public final hookTargetsVerified:Z

.field public final hooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;",
            ">;"
        }
    .end annotation
.end field

.field public final opcodeObservations:I

.field public final sourceSettingsVerified:Z

.field public final sourceSha256:Ljava/lang/String;

.field public final unresolvedHooks:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;II)V
    .locals 1
    .param p1, "sha"    # Ljava/lang/String;
    .param p3, "seen"    # I
    .param p4, "unresolved"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;",
            ">;II)V"
        }
    .end annotation

    .line 45
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;->sourceSettingsVerified:Z

    .line 42
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;->hookTargetsVerified:Z

    .line 43
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;->asmSemanticsVerified:Z

    .line 44
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;->gameplayReady:Z

    .line 46
    iput-object p1, p0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;->sourceSha256:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;->hooks:Ljava/util/List;

    .line 47
    iput p3, p0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;->opcodeObservations:I

    iput p4, p0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;->unresolvedHooks:I

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;IILcom/ahsim/demulation/DuneHackR82AsmHookProbe-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    return-void
.end method


# virtual methods
.method public find(Ljava/lang/String;)Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;->hooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;

    .local v1, "h":Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;
    iget-object v2, v1, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .end local v1    # "h":Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;
    :cond_0
    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown hook: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
