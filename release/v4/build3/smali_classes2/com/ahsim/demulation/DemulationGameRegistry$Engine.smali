.class public final enum Lcom/ahsim/demulation/DemulationGameRegistry$Engine;
.super Ljava/lang/Enum;
.source "DemulationGameRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DemulationGameRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Engine"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ahsim/demulation/DemulationGameRegistry$Engine;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ahsim/demulation/DemulationGameRegistry$Engine;

.field public static final enum CLASSIC_NATIVE:Lcom/ahsim/demulation/DemulationGameRegistry$Engine;

.field public static final enum DUNEHACK_NATIVE:Lcom/ahsim/demulation/DemulationGameRegistry$Engine;


# direct methods
.method private static synthetic $values()[Lcom/ahsim/demulation/DemulationGameRegistry$Engine;
    .locals 2

    .line 7
    sget-object v0, Lcom/ahsim/demulation/DemulationGameRegistry$Engine;->CLASSIC_NATIVE:Lcom/ahsim/demulation/DemulationGameRegistry$Engine;

    sget-object v1, Lcom/ahsim/demulation/DemulationGameRegistry$Engine;->DUNEHACK_NATIVE:Lcom/ahsim/demulation/DemulationGameRegistry$Engine;

    filled-new-array {v0, v1}, [Lcom/ahsim/demulation/DemulationGameRegistry$Engine;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/ahsim/demulation/DemulationGameRegistry$Engine;

    const-string v1, "CLASSIC_NATIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DemulationGameRegistry$Engine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DemulationGameRegistry$Engine;->CLASSIC_NATIVE:Lcom/ahsim/demulation/DemulationGameRegistry$Engine;

    new-instance v0, Lcom/ahsim/demulation/DemulationGameRegistry$Engine;

    const-string v1, "DUNEHACK_NATIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DemulationGameRegistry$Engine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DemulationGameRegistry$Engine;->DUNEHACK_NATIVE:Lcom/ahsim/demulation/DemulationGameRegistry$Engine;

    invoke-static {}, Lcom/ahsim/demulation/DemulationGameRegistry$Engine;->$values()[Lcom/ahsim/demulation/DemulationGameRegistry$Engine;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DemulationGameRegistry$Engine;->$VALUES:[Lcom/ahsim/demulation/DemulationGameRegistry$Engine;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ahsim/demulation/DemulationGameRegistry$Engine;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lcom/ahsim/demulation/DemulationGameRegistry$Engine;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/DemulationGameRegistry$Engine;

    return-object v0
.end method

.method public static values()[Lcom/ahsim/demulation/DemulationGameRegistry$Engine;
    .locals 1

    .line 7
    sget-object v0, Lcom/ahsim/demulation/DemulationGameRegistry$Engine;->$VALUES:[Lcom/ahsim/demulation/DemulationGameRegistry$Engine;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/DemulationGameRegistry$Engine;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/DemulationGameRegistry$Engine;

    return-object v0
.end method
