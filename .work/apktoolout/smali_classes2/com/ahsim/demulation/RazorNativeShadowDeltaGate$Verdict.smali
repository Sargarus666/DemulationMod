.class public final Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Verdict;
.super Ljava/lang/Object;
.source "RazorNativeShadowDeltaGate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorNativeShadowDeltaGate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Verdict"
.end annotation


# instance fields
.field public final comparedChanges:I

.field public final nativeCallbacksAuthorized:Z

.field public final observationalMatch:Z

.field public final razorGameTicksEnabled:Z

.field public final status:Ljava/lang/String;


# direct methods
.method private constructor <init>(ZILjava/lang/String;)V
    .locals 1
    .param p1, "match"    # Z
    .param p2, "compared"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Verdict;->nativeCallbacksAuthorized:Z

    .line 42
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Verdict;->razorGameTicksEnabled:Z

    .line 44
    iput-boolean p1, p0, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Verdict;->observationalMatch:Z

    .line 45
    iput p2, p0, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Verdict;->comparedChanges:I

    .line 46
    iput-object p3, p0, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Verdict;->status:Ljava/lang/String;

    .line 47
    return-void
.end method

.method synthetic constructor <init>(ZILjava/lang/String;Lcom/ahsim/demulation/RazorNativeShadowDeltaGate-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Verdict;-><init>(ZILjava/lang/String;)V

    return-void
.end method
