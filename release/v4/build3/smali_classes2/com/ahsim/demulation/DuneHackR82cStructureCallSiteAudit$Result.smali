.class public final Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;
.super Ljava/lang/Object;
.source "DuneHackR82cStructureCallSiteAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final directCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;",
            ">;"
        }
    .end annotation
.end field

.field public final entryOffset:I

.field public final evidence:Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;

.field public final hpSubtractOffset:I

.field public final indirectCallsEnumerated:Z

.field public final modGameplayReady:Z

.field public final playerOverridesEnabled:Z

.field public final projectileToStructurePathVerified:Z

.field public final wholeCallGraphVerified:Z


# direct methods
.method private constructor <init>(Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;ILjava/util/List;)V
    .locals 1
    .param p1, "level"    # Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;
    .param p2, "entry"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;",
            "I",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;",
            ">;)V"
        }
    .end annotation

    .line 82
    .local p3, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;->indirectCallsEnumerated:Z

    .line 77
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;->wholeCallGraphVerified:Z

    .line 78
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;->projectileToStructurePathVerified:Z

    .line 79
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;->modGameplayReady:Z

    .line 80
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;->playerOverridesEnabled:Z

    .line 83
    iput-object p1, p0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;->evidence:Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;

    .line 84
    iput p2, p0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;->entryOffset:I

    .line 85
    add-int/lit8 v0, p2, 0x3a

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;->hpSubtractOffset:I

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;->directCalls:Ljava/util/List;

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;ILjava/util/List;Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;-><init>(Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;ILjava/util/List;)V

    return-void
.end method
