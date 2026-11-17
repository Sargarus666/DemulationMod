.class public final enum Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;
.super Ljava/lang/Enum;
.source "DuneHackR82WeaponHookAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Evidence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

.field public static final enum AMBIGUOUS_LAYOUT:Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

.field public static final enum INVALID_TARGET:Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

.field public static final enum NOT_OBSERVED:Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

.field public static final enum POSSIBLE_JMP_IN_ROM:Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;


# direct methods
.method private static synthetic $values()[Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;
    .locals 4

    .line 12
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;->NOT_OBSERVED:Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;->AMBIGUOUS_LAYOUT:Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    sget-object v2, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;->POSSIBLE_JMP_IN_ROM:Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    sget-object v3, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;->INVALID_TARGET:Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    filled-new-array {v0, v1, v2, v3}, [Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    const-string v1, "NOT_OBSERVED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;->NOT_OBSERVED:Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    new-instance v0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    const-string v1, "AMBIGUOUS_LAYOUT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;->AMBIGUOUS_LAYOUT:Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    new-instance v0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    const-string v1, "POSSIBLE_JMP_IN_ROM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;->POSSIBLE_JMP_IN_ROM:Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    new-instance v0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    const-string v1, "INVALID_TARGET"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;->INVALID_TARGET:Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    .line 12
    invoke-static {}, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;->$values()[Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 12
    const-class v0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    return-object v0
.end method

.method public static values()[Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;
    .locals 1

    .line 12
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    return-object v0
.end method
