.class public final enum Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;
.super Ljava/lang/Enum;
.source "DuneHackR82cRazorCallRouteAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OriginalCorrespondence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;

.field public static final enum INFANTRY_ENTRY_WHEN_CAPTURE_FAILS:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;

.field public static final enum NOT_IDENTIFIED:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;

.field public static final enum SONIC_STRUCTURE_HIT:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;


# direct methods
.method private static synthetic $values()[Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;
    .locals 3

    .line 25
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;->NOT_IDENTIFIED:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;->SONIC_STRUCTURE_HIT:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;

    sget-object v2, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;->INFANTRY_ENTRY_WHEN_CAPTURE_FAILS:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;

    filled-new-array {v0, v1, v2}, [Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;

    const-string v1, "NOT_IDENTIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;->NOT_IDENTIFIED:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;

    new-instance v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;

    const-string v1, "SONIC_STRUCTURE_HIT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;->SONIC_STRUCTURE_HIT:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;

    new-instance v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;

    const-string v1, "INFANTRY_ENTRY_WHEN_CAPTURE_FAILS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;->INFANTRY_ENTRY_WHEN_CAPTURE_FAILS:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;

    .line 25
    invoke-static {}, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;->$values()[Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;

    return-object v0
.end method

.method public static values()[Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;
    .locals 1

    .line 25
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;

    return-object v0
.end method
