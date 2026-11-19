.class public final enum Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;
.super Ljava/lang/Enum;
.source "DuneHackR82cRazorStructureImpactAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProofLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;

.field public static final enum COMPILED_HP_BRANCH_VERIFIED:Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;

.field public static final enum UPSTREAM_PROJECTILE_ROUTE_UNVERIFIED:Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;


# direct methods
.method private static synthetic $values()[Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;
    .locals 2

    .line 31
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;->COMPILED_HP_BRANCH_VERIFIED:Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;->UPSTREAM_PROJECTILE_ROUTE_UNVERIFIED:Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;

    filled-new-array {v0, v1}, [Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;

    const-string v1, "COMPILED_HP_BRANCH_VERIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;->COMPILED_HP_BRANCH_VERIFIED:Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;

    .line 33
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;

    const-string v1, "UPSTREAM_PROJECTILE_ROUTE_UNVERIFIED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;->UPSTREAM_PROJECTILE_ROUTE_UNVERIFIED:Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;

    .line 31
    invoke-static {}, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;->$values()[Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;

    return-object v0
.end method

.method public static values()[Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;
    .locals 1

    .line 31
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$ProofLevel;

    return-object v0
.end method
