.class public final Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;
.super Ljava/lang/Object;
.source "DuneHackR82CompiledCombatAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final deathHand:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;

.field public final extendedDamageTablesVerified:Z

.field public final handlerSemanticsVerified:Z

.field public final knownExampleFingerprint:Z

.field public final linkedPrimaryDamageTableOffset:I

.field public final linkedPrimaryDamageTableWords:I

.field public final modGameplayReady:Z

.field public final nonUnityPrimaryMultipliers:I

.field public final playerCombatSettingsReady:Z

.field public final projectileSurface:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;

.field public final romSha256:Ljava/lang/String;

.field public final structureDamage:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;

.field public final unitDamage:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;III)V
    .locals 1
    .param p1, "hash"    # Ljava/lang/String;
    .param p2, "known"    # Z
    .param p3, "structure"    # Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
    .param p4, "unit"    # Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
    .param p5, "death"    # Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
    .param p6, "projectile"    # Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
    .param p7, "tableOffset"    # I
    .param p8, "tableWords"    # I
    .param p9, "nonUnity"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;->handlerSemanticsVerified:Z

    .line 55
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;->extendedDamageTablesVerified:Z

    .line 56
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;->modGameplayReady:Z

    .line 57
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;->playerCombatSettingsReady:Z

    .line 61
    iput-object p1, p0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;->romSha256:Ljava/lang/String;

    .line 62
    iput-boolean p2, p0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;->knownExampleFingerprint:Z

    .line 63
    iput-object p3, p0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;->structureDamage:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;

    .line 64
    iput-object p4, p0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;->unitDamage:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;

    .line 65
    iput-object p5, p0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;->deathHand:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;

    .line 66
    iput-object p6, p0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;->projectileSurface:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;

    .line 67
    iput p7, p0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;->linkedPrimaryDamageTableOffset:I

    .line 68
    iput p8, p0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;->linkedPrimaryDamageTableWords:I

    .line 69
    iput p9, p0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;->nonUnityPrimaryMultipliers:I

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;IIILcom/ahsim/demulation/DuneHackR82CompiledCombatAudit-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;-><init>(Ljava/lang/String;ZLcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;III)V

    return-void
.end method
