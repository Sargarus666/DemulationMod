.class public final Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
.super Ljava/lang/Object;
.source "DuneHackR82cRazorCombatAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private final coefficientsQ8:[I

.field public final damageEvidence:Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

.field public final embeddedAssemblerTag:Ljava/lang/String;

.field public final emcBanks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$EmcBank;",
            ">;"
        }
    .end annotation
.end field

.field public final gameplaySemanticsVerified:Z

.field public final linkedDamageTableOffset:I

.field public final linkedDamageWords:I

.field public final linkedInstructionOffset:I

.field public final modGameplayReady:Z

.field public final nonUnityCoefficients:I

.field public final referenceSample:Z

.field public final referenceVariant:I

.field public final romSha256:Ljava/lang/String;

.field public final tableSha256:Ljava/lang/String;

.field public final userCombatSettingsReady:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;II[ILjava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "sha"    # Ljava/lang/String;
    .param p2, "variant"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "evidence"    # Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;
    .param p5, "route"    # I
    .param p6, "table"    # I
    .param p7, "values"    # [I
    .param p8, "tableDigest"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;",
            "II[I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$EmcBank;",
            ">;)V"
        }
    .end annotation

    .line 69
    .local p9, "banks":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$EmcBank;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->gameplaySemanticsVerified:Z

    .line 62
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->modGameplayReady:Z

    .line 63
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->userCombatSettingsReady:Z

    .line 70
    iput-object p1, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->romSha256:Ljava/lang/String;

    .line 71
    iput p2, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->referenceVariant:I

    .line 72
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->referenceSample:Z

    .line 73
    iput-object p3, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->embeddedAssemblerTag:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->damageEvidence:Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    .line 75
    iput p5, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->linkedInstructionOffset:I

    .line 76
    iput p6, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->linkedDamageTableOffset:I

    .line 77
    if-nez p7, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    array-length v1, p7

    :goto_1
    iput v1, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->linkedDamageWords:I

    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, "changed":I
    if-eqz p7, :cond_3

    array-length v2, p7

    :goto_2
    if-ge v0, v2, :cond_3

    aget v3, p7, v0

    .local v3, "value":I
    const/16 v4, 0x100

    if-eq v3, v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    .end local v3    # "value":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 80
    :cond_3
    iput v1, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->nonUnityCoefficients:I

    .line 81
    if-nez p7, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {p7}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_3
    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->coefficientsQ8:[I

    .line 82
    iput-object p8, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->tableSha256:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->emcBanks:Ljava/util/List;

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;II[ILjava/lang/String;Ljava/util/List;Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;II[ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public diagnosticCoefficientQ8(II)I
    .locals 2
    .param p1, "animationId"    # I
    .param p2, "movementClass"    # I

    .line 88
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->coefficientsQ8:[I

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    const/16 v0, 0x16

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    const/4 v0, 0x6

    if-ge p2, v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->coefficientsQ8:[I

    mul-int/lit8 v1, p1, 0x6

    add-int/2addr v1, p2

    aget v0, v0, v1

    return v0

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No verified code link / invalid table index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
