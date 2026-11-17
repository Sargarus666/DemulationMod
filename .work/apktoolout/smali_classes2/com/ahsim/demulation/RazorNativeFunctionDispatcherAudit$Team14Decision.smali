.class public final Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14Decision;
.super Ljava/lang/Object;
.source "RazorNativeFunctionDispatcherAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Team14Decision"
.end annotation


# instance fields
.field public final matchedUnit:I

.field public final newTeamMode:I

.field public final returnD0:I

.field public final targetPosition:I

.field public final writesTeamFields:Z


# direct methods
.method private constructor <init>(IIII)V
    .locals 1
    .param p1, "ret"    # I
    .param p2, "idx"    # I
    .param p3, "pos"    # I
    .param p4, "mode"    # I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14Decision;->returnD0:I

    iput p2, p0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14Decision;->matchedUnit:I

    iput p3, p0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14Decision;->targetPosition:I

    .line 58
    iput p4, p0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14Decision;->newTeamMode:I

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14Decision;->writesTeamFields:Z

    .line 59
    return-void
.end method

.method synthetic constructor <init>(IIIILcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14Decision;-><init>(IIII)V

    return-void
.end method
