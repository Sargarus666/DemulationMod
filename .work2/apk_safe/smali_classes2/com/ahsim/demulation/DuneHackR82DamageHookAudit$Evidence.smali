.class public final enum Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;
.super Ljava/lang/Enum;
.source "DuneHackR82DamageHookAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82DamageHookAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Evidence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

.field public static final enum AMBIGUOUS_LAYOUT:Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

.field public static final enum JMP_TARGET_INVALID:Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

.field public static final enum NOT_AT_DOCUMENTED_LAYOUTS:Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

.field public static final enum POSSIBLE_JMP_TARGET_IN_ROM:Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;


# direct methods
.method private static synthetic $values()[Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;
    .locals 4

    .line 13
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;->NOT_AT_DOCUMENTED_LAYOUTS:Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;->AMBIGUOUS_LAYOUT:Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    sget-object v2, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;->POSSIBLE_JMP_TARGET_IN_ROM:Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    sget-object v3, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;->JMP_TARGET_INVALID:Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    filled-new-array {v0, v1, v2, v3}, [Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    const-string v1, "NOT_AT_DOCUMENTED_LAYOUTS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;->NOT_AT_DOCUMENTED_LAYOUTS:Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    new-instance v0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    const-string v1, "AMBIGUOUS_LAYOUT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;->AMBIGUOUS_LAYOUT:Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    .line 15
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    const-string v1, "POSSIBLE_JMP_TARGET_IN_ROM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;->POSSIBLE_JMP_TARGET_IN_ROM:Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    new-instance v0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    const-string v1, "JMP_TARGET_INVALID"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;->JMP_TARGET_INVALID:Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    .line 13
    invoke-static {}, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;->$values()[Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 13
    const-class v0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    return-object v0
.end method

.method public static values()[Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;
    .locals 1

    .line 13
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    return-object v0
.end method
