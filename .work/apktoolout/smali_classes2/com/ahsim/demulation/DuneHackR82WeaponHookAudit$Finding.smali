.class final Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;
.super Ljava/lang/Object;
.source "DuneHackR82WeaponHookAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Finding"
.end annotation


# instance fields
.field final evidence:Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

.field final target:I


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;I)V
    .locals 0
    .param p1, "status"    # Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;
    .param p2, "destination"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;->evidence:Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    iput p2, p0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;->target:I

    return-void
.end method
