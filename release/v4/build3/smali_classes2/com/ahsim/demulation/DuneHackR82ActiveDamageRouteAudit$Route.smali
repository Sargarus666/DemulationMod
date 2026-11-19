.class public final Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;
.super Ljava/lang/Object;
.source "DuneHackR82ActiveDamageRouteAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Route"
.end annotation


# instance fields
.field public final candidateCount:I

.field public final description:Ljava/lang/String;

.field public final destination:I

.field public final discoveredReturn:I

.field public final entryOffset:I

.field public final evidence:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

.field public final expectedReturn:I


# direct methods
.method private constructor <init>(Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;IIIIILjava/lang/String;)V
    .locals 0
    .param p1, "evidence"    # Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;
    .param p2, "entry"    # I
    .param p3, "dest"    # I
    .param p4, "expected"    # I
    .param p5, "actual"    # I
    .param p6, "count"    # I
    .param p7, "description"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;->evidence:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    .line 37
    iput p2, p0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;->entryOffset:I

    .line 38
    iput p3, p0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;->destination:I

    .line 39
    iput p4, p0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;->expectedReturn:I

    .line 40
    iput p5, p0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;->discoveredReturn:I

    .line 41
    iput p6, p0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;->candidateCount:I

    .line 42
    iput-object p7, p0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;->description:Ljava/lang/String;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;IIIIILjava/lang/String;Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;-><init>(Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;IIIIILjava/lang/String;)V

    return-void
.end method
