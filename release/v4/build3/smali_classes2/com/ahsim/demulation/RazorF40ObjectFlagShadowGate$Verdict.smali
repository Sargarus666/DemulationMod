.class public final Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate$Verdict;
.super Ljava/lang/Object;
.source "RazorF40ObjectFlagShadowGate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Verdict"
.end annotation


# instance fields
.field public final androidRuntimeFieldMapped:Z

.field public final genesisSlotCandidate:Z

.field public final nativeWritesAllowed:Z

.field public final observedReadbackMatches:Z

.field public final razorGameTicksEnabled:Z

.field public final simulatedAfter:I

.field public final status:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ZZI)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "match"    # Z
    .param p3, "candidate"    # Z
    .param p4, "value"    # I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate$Verdict;->androidRuntimeFieldMapped:Z

    .line 26
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate$Verdict;->nativeWritesAllowed:Z

    .line 27
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate$Verdict;->razorGameTicksEnabled:Z

    .line 31
    iput-object p1, p0, Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate$Verdict;->status:Ljava/lang/String;

    .line 32
    iput-boolean p2, p0, Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate$Verdict;->observedReadbackMatches:Z

    .line 33
    iput-boolean p3, p0, Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate$Verdict;->genesisSlotCandidate:Z

    .line 34
    iput p4, p0, Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate$Verdict;->simulatedAfter:I

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZZILcom/ahsim/demulation/RazorF40ObjectFlagShadowGate-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RazorF40ObjectFlagShadowGate$Verdict;-><init>(Ljava/lang/String;ZZI)V

    return-void
.end method
