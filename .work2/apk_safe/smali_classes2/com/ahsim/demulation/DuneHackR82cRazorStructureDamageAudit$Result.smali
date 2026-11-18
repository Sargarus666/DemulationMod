.class public final Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;
.super Ljava/lang/Object;
.source "DuneHackR82cRazorStructureDamageAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final directExtendedJmpAtEntry:Z

.field public final entryEvidence:Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;

.field public final instructionWindowSha256:Ljava/lang/String;

.field public final modGameplayReady:Z

.field public final referenceVariant:I

.field public final romSha256:Ljava/lang/String;

.field public final sonicAndDeviatorSemanticsVerified:Z

.field public final subtractionInstructionOffset:I

.field public final userCombatSettingsReady:Z

.field public final weaponByBuildingMultipliersVerified:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .param p1, "sha"    # Ljava/lang/String;
    .param p2, "variant"    # I
    .param p3, "pos"    # I
    .param p4, "digest"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;->directExtendedJmpAtEntry:Z

    .line 41
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;->weaponByBuildingMultipliersVerified:Z

    .line 42
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;->sonicAndDeviatorSemanticsVerified:Z

    .line 43
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;->modGameplayReady:Z

    .line 44
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;->userCombatSettingsReady:Z

    .line 47
    iput-object p1, p0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;->romSha256:Ljava/lang/String;

    .line 48
    iput p2, p0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;->referenceVariant:I

    .line 49
    iput p3, p0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;->subtractionInstructionOffset:I

    .line 50
    iput-object p4, p0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;->instructionWindowSha256:Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;->VERIFIED_INLINE_SUBTRACTION:Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;->entryEvidence:Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$EntryEvidence;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public previewSubWord(II)I
    .locals 2
    .param p1, "hpWord"    # I
    .param p2, "rawDamageWord"    # I

    .line 57
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-gt p2, v0, :cond_0

    .line 61
    sub-int v1, p1, p2

    and-int/2addr v0, v1

    return v0

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Genesis unsigned 16-bit words required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
