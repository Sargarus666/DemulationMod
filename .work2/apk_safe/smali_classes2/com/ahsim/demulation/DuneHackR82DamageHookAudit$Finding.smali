.class final Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Finding;
.super Ljava/lang/Object;
.source "DuneHackR82DamageHookAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82DamageHookAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Finding"
.end annotation


# instance fields
.field final dest:I

.field final evidence:Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;I)V
    .locals 0
    .param p1, "value"    # Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;
    .param p2, "target"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Finding;->evidence:Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    iput p2, p0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Finding;->dest:I

    return-void
.end method
