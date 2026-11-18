.class public final enum Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;
.super Ljava/lang/Enum;
.source "DuneHackR82AsmHookProbe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Evidence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

.field public static final enum AMBIGUOUS:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

.field public static final enum NOT_OBSERVED:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

.field public static final enum OPCODE_AT_DOCUMENTED_OFFSET:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

.field public static final enum WEAK_OPCODE:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;


# direct methods
.method private static synthetic $values()[Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;
    .locals 4

    .line 19
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;->OPCODE_AT_DOCUMENTED_OFFSET:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;->WEAK_OPCODE:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    sget-object v2, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;->NOT_OBSERVED:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    sget-object v3, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;->AMBIGUOUS:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    filled-new-array {v0, v1, v2, v3}, [Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    const-string v1, "OPCODE_AT_DOCUMENTED_OFFSET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;->OPCODE_AT_DOCUMENTED_OFFSET:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    new-instance v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    const-string v1, "WEAK_OPCODE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;->WEAK_OPCODE:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    new-instance v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    const-string v1, "NOT_OBSERVED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;->NOT_OBSERVED:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    new-instance v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    const-string v1, "AMBIGUOUS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;->AMBIGUOUS:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    invoke-static {}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;->$values()[Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    return-object v0
.end method

.method public static values()[Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;
    .locals 1

    .line 19
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    return-object v0
.end method
