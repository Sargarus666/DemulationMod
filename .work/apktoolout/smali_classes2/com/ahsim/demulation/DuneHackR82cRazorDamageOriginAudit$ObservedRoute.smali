.class public final Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$ObservedRoute;
.super Ljava/lang/Object;
.source "DuneHackR82cRazorDamageOriginAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObservedRoute"
.end annotation


# instance fields
.field public final callOffset:I

.field public final context:Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

.field public final contextStaticallyAttested:Z

.field public final ordinal:I

.field public final runtimeExecutionProven:Z


# direct methods
.method private constructor <init>(IILcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;)V
    .locals 1
    .param p1, "number"    # I
    .param p2, "offset"    # I
    .param p3, "kind"    # Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$ObservedRoute;->runtimeExecutionProven:Z

    .line 32
    iput p1, p0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$ObservedRoute;->ordinal:I

    .line 33
    iput p2, p0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$ObservedRoute;->callOffset:I

    .line 34
    iput-object p3, p0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$ObservedRoute;->context:Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$ObservedRoute;->contextStaticallyAttested:Z

    .line 36
    return-void
.end method

.method synthetic constructor <init>(IILcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$ObservedRoute;-><init>(IILcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;)V

    return-void
.end method
