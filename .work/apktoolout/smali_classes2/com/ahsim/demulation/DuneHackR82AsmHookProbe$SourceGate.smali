.class public final enum Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;
.super Ljava/lang/Enum;
.source "DuneHackR82AsmHookProbe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SourceGate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

.field public static final enum ALLY:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

.field public static final enum ALWAYS:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

.field public static final enum PROJECTILES:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

.field public static final enum REINFORCEMENT:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

.field public static final enum X_MOD:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;


# direct methods
.method private static synthetic $values()[Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;
    .locals 5

    .line 20
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;->ALWAYS:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;->REINFORCEMENT:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    sget-object v2, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;->PROJECTILES:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    sget-object v3, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;->ALLY:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    sget-object v4, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;->X_MOD:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    const-string v1, "ALWAYS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;->ALWAYS:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    new-instance v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    const-string v1, "REINFORCEMENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;->REINFORCEMENT:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    new-instance v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    const-string v1, "PROJECTILES"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;->PROJECTILES:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    new-instance v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    const-string v1, "ALLY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;->ALLY:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    new-instance v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    const-string v1, "X_MOD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;->X_MOD:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    invoke-static {}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;->$values()[Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 20
    const-class v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    return-object v0
.end method

.method public static values()[Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;
    .locals 1

    .line 20
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    return-object v0
.end method
