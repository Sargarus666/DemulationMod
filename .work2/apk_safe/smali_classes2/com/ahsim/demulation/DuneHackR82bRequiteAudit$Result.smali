.class public final Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$Result;
.super Ljava/lang/Object;
.source "DuneHackR82bRequiteAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82bRequiteAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final damageHandlerVerified:Z

.field public final emcBanks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$EmcBank;",
            ">;"
        }
    .end annotation
.end field

.field public final modGameplayReady:Z

.field public final r82bHeader:Z

.field public final referenceFingerprint:Z

.field public final requiteAttributionConfirmed:Z

.field public final romSha256:Ljava/lang/String;

.field public final userCombatSettingsReady:Z

.field public final verifiedDamageTableWords:I


# direct methods
.method private constructor <init>(Ljava/lang/String;ZZZLjava/util/List;)V
    .locals 1
    .param p1, "hash"    # Ljava/lang/String;
    .param p2, "reference"    # Z
    .param p3, "header"    # Z
    .param p4, "attribution"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$EmcBank;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p5, "banks":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$EmcBank;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$Result;->verifiedDamageTableWords:I

    .line 45
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$Result;->damageHandlerVerified:Z

    .line 46
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$Result;->modGameplayReady:Z

    .line 47
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$Result;->userCombatSettingsReady:Z

    .line 51
    iput-object p1, p0, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$Result;->romSha256:Ljava/lang/String;

    .line 52
    iput-boolean p2, p0, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$Result;->referenceFingerprint:Z

    .line 53
    iput-boolean p3, p0, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$Result;->r82bHeader:Z

    .line 54
    iput-boolean p4, p0, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$Result;->requiteAttributionConfirmed:Z

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$Result;->emcBanks:Ljava/util/List;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZZZLjava/util/List;Lcom/ahsim/demulation/DuneHackR82bRequiteAudit-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$Result;-><init>(Ljava/lang/String;ZZZLjava/util/List;)V

    return-void
.end method
