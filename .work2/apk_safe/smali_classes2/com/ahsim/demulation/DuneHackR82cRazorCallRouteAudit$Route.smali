.class public final Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;
.super Ljava/lang/Object;
.source "DuneHackR82cRazorCallRouteAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Route"
.end annotation


# instance fields
.field public final argumentModeWord:I

.field public final callOffset:I

.field public final damageInput:Ljava/lang/String;

.field public final eventOriginProven:Z

.field public final objectRegister:Ljava/lang/String;

.field public final ordinal:I

.field public final originalCorrespondence:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;

.field public final sourcePattern:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;


# direct methods
.method private constructor <init>(IIILcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "position"    # I
    .param p3, "mode"    # I
    .param p4, "source"    # Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;
    .param p5, "object"    # Ljava/lang/String;
    .param p6, "damage"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;->eventOriginProven:Z

    .line 41
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;->ordinal:I

    .line 42
    iput p2, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;->callOffset:I

    .line 43
    iput p3, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;->argumentModeWord:I

    .line 44
    iput-object p4, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;->sourcePattern:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    .line 45
    invoke-static {p1}, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit;->-$$Nest$smiOriginalCorrespondence(I)Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;->originalCorrespondence:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;

    .line 46
    iput-object p5, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;->objectRegister:Ljava/lang/String;

    .line 47
    iput-object p6, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;->damageInput:Ljava/lang/String;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(IIILcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;-><init>(IIILcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
