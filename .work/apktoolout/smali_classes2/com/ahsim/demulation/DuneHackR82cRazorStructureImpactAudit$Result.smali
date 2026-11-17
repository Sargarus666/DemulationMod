.class public final Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;
.super Ljava/lang/Object;
.source "DuneHackR82cRazorStructureImpactAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final buildingWeaponModifiersVerified:Z

.field public final compiledProof:Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;

.field public final hpSubtractOffset:I

.field public final lethalClearHpOffset:I

.field public final modGameplayReady:Z

.field public final nonlethalBranchTarget:I

.field public final originalCoreMapped:Z

.field public final playerOverridesEnabled:Z

.field public final razorFullProjectileChainVerified:Z

.field public final referenceVariant:I

.field public final romSha256:Ljava/lang/String;

.field public final upstreamProof:Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;


# direct methods
.method private constructor <init>(Ljava/lang/String;III)V
    .locals 1
    .param p1, "sha"    # Ljava/lang/String;
    .param p2, "variant"    # I
    .param p3, "sub"    # I
    .param p4, "branch"    # I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;->COMPILED_HP_BRANCH_VERIFIED:Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;->compiledProof:Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;

    .line 47
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;->UPSTREAM_PROJECTILE_ROUTE_UNVERIFIED:Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;->upstreamProof:Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;->originalCoreMapped:Z

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;->razorFullProjectileChainVerified:Z

    .line 50
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;->buildingWeaponModifiersVerified:Z

    .line 51
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;->modGameplayReady:Z

    .line 52
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;->playerOverridesEnabled:Z

    .line 55
    iput-object p1, p0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;->romSha256:Ljava/lang/String;

    .line 56
    iput p2, p0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;->referenceVariant:I

    .line 57
    iput p3, p0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;->hpSubtractOffset:I

    .line 58
    iput p4, p0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;->nonlethalBranchTarget:I

    .line 59
    add-int/lit8 v0, p3, 0x10

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;->lethalClearHpOffset:I

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIILcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;-><init>(Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method public branchToNonlethalEpilogue(II)Z
    .locals 2
    .param p1, "hpWord"    # I
    .param p2, "damageWord"    # I

    .line 66
    if-ltz p1, :cond_1

    const v0, 0xffff

    if-gt p1, v0, :cond_1

    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_1

    .line 68
    sub-int v1, p1, p2

    and-int/2addr v0, v1

    int-to-short v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 67
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "two unsigned 68000 word operands required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hpWordAfterSubtract(II)I
    .locals 2
    .param p1, "hpWord"    # I
    .param p2, "damageWord"    # I

    .line 73
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-gt p2, v0, :cond_0

    .line 75
    sub-int v1, p1, p2

    and-int/2addr v0, v1

    return v0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "two unsigned 68000 word operands required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
