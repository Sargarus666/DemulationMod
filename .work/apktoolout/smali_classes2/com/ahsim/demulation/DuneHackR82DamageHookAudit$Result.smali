.class public final Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Result;
.super Ljava/lang/Object;
.source "DuneHackR82DamageHookAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82DamageHookAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final damageTablesVerified:Z

.field public final handlerSemanticsVerified:Z

.field public final modifiedDamageReady:Z

.field public final playerSettingsReady:Z

.field public final romSha256:Ljava/lang/String;

.field public final structureDamage:Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

.field public final structureJumpDestination:I

.field public final unitDamage:Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

.field public final unitJumpDestination:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;II)V
    .locals 1
    .param p1, "sha"    # Ljava/lang/String;
    .param p2, "unit"    # Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;
    .param p3, "structure"    # Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;
    .param p4, "unitDest"    # I
    .param p5, "structureDest"    # I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Result;->damageTablesVerified:Z

    .line 24
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Result;->handlerSemanticsVerified:Z

    .line 25
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Result;->modifiedDamageReady:Z

    .line 26
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Result;->playerSettingsReady:Z

    .line 30
    iput-object p1, p0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Result;->romSha256:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Result;->unitDamage:Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    .line 32
    iput-object p3, p0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Result;->structureDamage:Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    .line 33
    iput p4, p0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Result;->unitJumpDestination:I

    .line 34
    iput p5, p0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Result;->structureJumpDestination:I

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;IILcom/ahsim/demulation/DuneHackR82DamageHookAudit-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Result;-><init>(Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;II)V

    return-void
.end method
