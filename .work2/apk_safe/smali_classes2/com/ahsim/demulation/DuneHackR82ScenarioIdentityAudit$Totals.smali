.class final Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;
.super Ljava/lang/Object;
.source "DuneHackR82ScenarioIdentityAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Totals"
.end annotation


# instance fields
.field checked:I

.field fifth:I

.field generic:I

.field owners:[I

.field placed:I

.field reinforcements:I

.field structureTypes:[I

.field teams:I

.field unitTypes:[I

.field units:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->owners:[I

    .line 75
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->unitTypes:[I

    .line 76
    const/16 v0, 0x13

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->structureTypes:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;-><init>()V

    return-void
.end method
