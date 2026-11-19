.class public final enum Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;
.super Ljava/lang/Enum;
.source "DuneHackR82CompiledCombatAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Evidence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

.field public static final enum INVALID_JMP_DESTINATION:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

.field public static final enum JMP_TO_ROM_UNVERIFIED:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

.field public static final enum MULTIPLE_LAYOUT_CANDIDATES:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

.field public static final enum NO_VERIFIED_ENTRY:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

.field public static final enum REFERENCE_ENTRY_BYTES:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;


# direct methods
.method private static synthetic $values()[Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;
    .locals 5

    .line 18
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;->REFERENCE_ENTRY_BYTES:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;->JMP_TO_ROM_UNVERIFIED:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    sget-object v2, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;->INVALID_JMP_DESTINATION:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    sget-object v3, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;->MULTIPLE_LAYOUT_CANDIDATES:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    sget-object v4, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;->NO_VERIFIED_ENTRY:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    const-string v1, "REFERENCE_ENTRY_BYTES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;->REFERENCE_ENTRY_BYTES:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    .line 20
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    const-string v1, "JMP_TO_ROM_UNVERIFIED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;->JMP_TO_ROM_UNVERIFIED:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    .line 21
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    const-string v1, "INVALID_JMP_DESTINATION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;->INVALID_JMP_DESTINATION:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    .line 22
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    const-string v1, "MULTIPLE_LAYOUT_CANDIDATES"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;->MULTIPLE_LAYOUT_CANDIDATES:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    .line 23
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    const-string v1, "NO_VERIFIED_ENTRY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;->NO_VERIFIED_ENTRY:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    .line 18
    invoke-static {}, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;->$values()[Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 18
    const-class v0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    return-object v0
.end method

.method public static values()[Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;
    .locals 1

    .line 18
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    return-object v0
.end method
