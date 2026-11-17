.class public final enum Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;
.super Ljava/lang/Enum;
.source "DuneHackR82cStructureCallSiteAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Evidence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;

.field public static final enum REFERENCE_CALL_SITES_VERIFIED:Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;

.field public static final enum STRUCTURAL_CANDIDATE:Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;


# direct methods
.method private static synthetic $values()[Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;
    .locals 2

    .line 51
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;->REFERENCE_CALL_SITES_VERIFIED:Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;->STRUCTURAL_CANDIDATE:Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;

    filled-new-array {v0, v1}, [Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;

    const-string v1, "REFERENCE_CALL_SITES_VERIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;->REFERENCE_CALL_SITES_VERIFIED:Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;

    .line 53
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;

    const-string v1, "STRUCTURAL_CANDIDATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;->STRUCTURAL_CANDIDATE:Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;

    .line 51
    invoke-static {}, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;->$values()[Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 51
    const-class v0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;

    return-object v0
.end method

.method public static values()[Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;
    .locals 1

    .line 51
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;

    return-object v0
.end method
