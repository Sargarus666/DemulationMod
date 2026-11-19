.class public final enum Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;
.super Ljava/lang/Enum;
.source "DuneHackR82ActiveDamageRouteAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Evidence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

.field public static final enum BAD_ENTRY:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

.field public static final enum MULTIPLE_POSSIBLE_RETURNS:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

.field public static final enum NO_POSSIBLE_RETURN:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

.field public static final enum NO_PROVEN_HOOK:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

.field public static final enum POSSIBLE_RETURN_TO_EXPECTED_LAYOUT:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

.field public static final enum POSSIBLE_RETURN_TO_OTHER_LAYOUT:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

.field public static final enum REFERENCE_ENTRY_NO_HOOK:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;


# direct methods
.method private static synthetic $values()[Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;
    .locals 7

    .line 15
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;->REFERENCE_ENTRY_NO_HOOK:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;->NO_PROVEN_HOOK:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    sget-object v2, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;->BAD_ENTRY:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    sget-object v3, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;->POSSIBLE_RETURN_TO_EXPECTED_LAYOUT:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    sget-object v4, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;->POSSIBLE_RETURN_TO_OTHER_LAYOUT:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    sget-object v5, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;->MULTIPLE_POSSIBLE_RETURNS:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    sget-object v6, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;->NO_POSSIBLE_RETURN:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    filled-new-array/range {v0 .. v6}, [Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    const-string v1, "REFERENCE_ENTRY_NO_HOOK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;->REFERENCE_ENTRY_NO_HOOK:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    .line 17
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    const-string v1, "NO_PROVEN_HOOK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;->NO_PROVEN_HOOK:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    .line 18
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    const-string v1, "BAD_ENTRY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;->BAD_ENTRY:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    .line 19
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    const-string v1, "POSSIBLE_RETURN_TO_EXPECTED_LAYOUT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;->POSSIBLE_RETURN_TO_EXPECTED_LAYOUT:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    .line 20
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    const-string v1, "POSSIBLE_RETURN_TO_OTHER_LAYOUT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;->POSSIBLE_RETURN_TO_OTHER_LAYOUT:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    .line 21
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    const-string v1, "MULTIPLE_POSSIBLE_RETURNS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;->MULTIPLE_POSSIBLE_RETURNS:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    .line 22
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    const-string v1, "NO_POSSIBLE_RETURN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;->NO_POSSIBLE_RETURN:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    .line 15
    invoke-static {}, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;->$values()[Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 15
    const-class v0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    return-object v0
.end method

.method public static values()[Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;
    .locals 1

    .line 15
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    return-object v0
.end method
