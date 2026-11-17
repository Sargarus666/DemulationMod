.class public final Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Result;
.super Ljava/lang/Object;
.source "DuneHackR82WeaponHookAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final deathHand:Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

.field public final deathHandTarget:I

.field public final extraWeaponTablesVerified:Z

.field public final modGameplayReady:Z

.field public final projectilePhysicsVerified:Z

.field public final projectileSurface:Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

.field public final projectileSurfaceTarget:I

.field public final romSha256:Ljava/lang/String;

.field public final specialRulesVerified:Z

.field public final userWeaponSettingsReady:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;)V
    .locals 1
    .param p1, "sha"    # Ljava/lang/String;
    .param p2, "hand"    # Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;
    .param p3, "projectile"    # Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Result;->extraWeaponTablesVerified:Z

    .line 22
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Result;->specialRulesVerified:Z

    .line 23
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Result;->projectilePhysicsVerified:Z

    .line 24
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Result;->modGameplayReady:Z

    .line 25
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Result;->userWeaponSettingsReady:Z

    .line 27
    iput-object p1, p0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Result;->romSha256:Ljava/lang/String;

    .line 28
    iget-object v0, p2, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;->evidence:Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Result;->deathHand:Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    .line 29
    iget-object v0, p3, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;->evidence:Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Result;->projectileSurface:Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    .line 30
    iget v0, p2, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;->target:I

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Result;->deathHandTarget:I

    .line 31
    iget v0, p3, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;->target:I

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Result;->projectileSurfaceTarget:I

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Result;-><init>(Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Finding;)V

    return-void
.end method
