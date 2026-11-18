.class public final Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;
.super Ljava/lang/Object;
.source "DuneHackR82cStructureCallSiteAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallSite"
.end annotation


# instance fields
.field public final encoding:Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;

.field public final instructionOffset:I

.field public final observedStackSetup:Z

.field public final resolvedTarget:I


# direct methods
.method private constructor <init>(IILcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;Z)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "target"    # I
    .param p3, "how"    # Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;
    .param p4, "setup"    # Z

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;->instructionOffset:I

    .line 66
    iput p2, p0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;->resolvedTarget:I

    .line 67
    iput-object p3, p0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;->encoding:Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;

    .line 68
    iput-boolean p4, p0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;->observedStackSetup:Z

    .line 69
    return-void
.end method

.method synthetic constructor <init>(IILcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;ZLcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;-><init>(IILcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;Z)V

    return-void
.end method
