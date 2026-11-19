.class public final Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Result;
.super Ljava/lang/Object;
.source "DuneHackR82cRazorDamageOriginAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final allIndirectCallsEnumerated:Z

.field public final modGameplayReady:Z

.field public final playerOverridesEnabled:Z

.field public final possibleIndirectOpcodeOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final routes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$ObservedRoute;",
            ">;"
        }
    .end annotation
.end field

.field public final weaponOriginOfExplosionProven:Z

.field public final wholeCallGraphVerified:Z


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$ObservedRoute;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p1, "checked":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$ObservedRoute;>;"
    .local p2, "potential":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Result;->allIndirectCallsEnumerated:Z

    .line 46
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Result;->wholeCallGraphVerified:Z

    .line 47
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Result;->weaponOriginOfExplosionProven:Z

    .line 48
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Result;->modGameplayReady:Z

    .line 49
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Result;->playerOverridesEnabled:Z

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Result;->routes:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Result;->possibleIndirectOpcodeOffsets:Ljava/util/List;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Result;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
