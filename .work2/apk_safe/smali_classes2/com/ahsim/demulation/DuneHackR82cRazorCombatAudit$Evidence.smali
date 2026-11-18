.class public final enum Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;
.super Ljava/lang/Enum;
.source "DuneHackR82cRazorCombatAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Evidence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

.field public static final enum AMBIGUOUS_CODE_LINK:Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

.field public static final enum CODE_LINKED_CANDIDATE:Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

.field public static final enum INVALID_TABLE_POINTER:Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

.field public static final enum NO_CODE_LINK:Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

.field public static final enum VERIFIED_REFERENCE_TABLE:Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;


# direct methods
.method private static synthetic $values()[Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;
    .locals 5

    .line 35
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;->VERIFIED_REFERENCE_TABLE:Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;->CODE_LINKED_CANDIDATE:Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    sget-object v2, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;->NO_CODE_LINK:Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    sget-object v3, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;->AMBIGUOUS_CODE_LINK:Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    sget-object v4, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;->INVALID_TABLE_POINTER:Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    const-string v1, "VERIFIED_REFERENCE_TABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;->VERIFIED_REFERENCE_TABLE:Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    .line 37
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    const-string v1, "CODE_LINKED_CANDIDATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;->CODE_LINKED_CANDIDATE:Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    .line 38
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    const-string v1, "NO_CODE_LINK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;->NO_CODE_LINK:Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    new-instance v0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    const-string v1, "AMBIGUOUS_CODE_LINK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;->AMBIGUOUS_CODE_LINK:Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    new-instance v0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    const-string v1, "INVALID_TABLE_POINTER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;->INVALID_TABLE_POINTER:Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    .line 35
    invoke-static {}, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;->$values()[Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 35
    const-class v0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    return-object v0
.end method

.method public static values()[Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;
    .locals 1

    .line 35
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    return-object v0
.end method
