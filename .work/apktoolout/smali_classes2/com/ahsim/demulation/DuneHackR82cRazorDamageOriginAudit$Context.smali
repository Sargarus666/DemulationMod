.class public final enum Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;
.super Ljava/lang/Enum;
.source "DuneHackR82cRazorDamageOriginAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Context"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

.field public static final enum EXPLOSION_AREA_STRUCTURE_IMPACT:Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

.field public static final enum INFANTRY_FAILED_CAPTURE:Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

.field public static final enum PERIODIC_BUILDING_DEGRADATION:Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

.field public static final enum POWER_ADJUSTED_MAX_HP_REDUCTION:Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

.field public static final enum SONIC_STRUCTURE_HIT:Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;


# direct methods
.method private static synthetic $values()[Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;
    .locals 5

    .line 16
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;->EXPLOSION_AREA_STRUCTURE_IMPACT:Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;->PERIODIC_BUILDING_DEGRADATION:Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    sget-object v2, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;->POWER_ADJUSTED_MAX_HP_REDUCTION:Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    sget-object v3, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;->SONIC_STRUCTURE_HIT:Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    sget-object v4, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;->INFANTRY_FAILED_CAPTURE:Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    const-string v1, "EXPLOSION_AREA_STRUCTURE_IMPACT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;->EXPLOSION_AREA_STRUCTURE_IMPACT:Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    .line 18
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    const-string v1, "PERIODIC_BUILDING_DEGRADATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;->PERIODIC_BUILDING_DEGRADATION:Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    .line 19
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    const-string v1, "POWER_ADJUSTED_MAX_HP_REDUCTION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;->POWER_ADJUSTED_MAX_HP_REDUCTION:Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    .line 20
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    const-string v1, "SONIC_STRUCTURE_HIT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;->SONIC_STRUCTURE_HIT:Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    .line 21
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    const-string v1, "INFANTRY_FAILED_CAPTURE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;->INFANTRY_FAILED_CAPTURE:Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    .line 16
    invoke-static {}, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;->$values()[Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 16
    const-class v0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    return-object v0
.end method

.method public static values()[Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;
    .locals 1

    .line 16
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    return-object v0
.end method
