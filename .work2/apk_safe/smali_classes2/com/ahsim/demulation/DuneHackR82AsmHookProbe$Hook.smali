.class public final Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;
.super Ljava/lang/Object;
.source "DuneHackR82AsmHookProbe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Hook"
.end annotation


# instance fields
.field public final evidence:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

.field public final gate:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

.field public final id:Ljava/lang/String;

.field public final matchedAddress:I

.field public final matchedLayout:I

.field public final matchingVariants:I

.field public final source:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;III)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "gate"    # Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;
    .param p4, "evidence"    # Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;
    .param p5, "layout"    # I
    .param p6, "address"    # I
    .param p7, "matches"    # I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;->source:Ljava/lang/String;

    iput-object p3, p0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;->gate:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    iput-object p4, p0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;->evidence:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    .line 32
    iput p5, p0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;->matchedLayout:I

    iput p6, p0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;->matchedAddress:I

    .line 33
    iput p7, p0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;->matchingVariants:I

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;IIILcom/ahsim/demulation/DuneHackR82AsmHookProbe-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;III)V

    return-void
.end method
