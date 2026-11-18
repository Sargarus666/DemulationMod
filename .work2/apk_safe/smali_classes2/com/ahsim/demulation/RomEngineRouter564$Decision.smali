.class public final enum Lcom/ahsim/demulation/RomEngineRouter564$Decision;
.super Ljava/lang/Enum;
.source "RomEngineRouter564.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomEngineRouter564;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Decision"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ahsim/demulation/RomEngineRouter564$Decision;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ahsim/demulation/RomEngineRouter564$Decision;

.field public static final enum CLASSIC_OR_UNKNOWN:Lcom/ahsim/demulation/RomEngineRouter564$Decision;

.field public static final enum DUNEHACK_CANDIDATE:Lcom/ahsim/demulation/RomEngineRouter564$Decision;

.field public static final enum DUNEHACK_NATIVE:Lcom/ahsim/demulation/RomEngineRouter564$Decision;


# direct methods
.method private static synthetic $values()[Lcom/ahsim/demulation/RomEngineRouter564$Decision;
    .locals 3

    .line 7
    sget-object v0, Lcom/ahsim/demulation/RomEngineRouter564$Decision;->CLASSIC_OR_UNKNOWN:Lcom/ahsim/demulation/RomEngineRouter564$Decision;

    sget-object v1, Lcom/ahsim/demulation/RomEngineRouter564$Decision;->DUNEHACK_NATIVE:Lcom/ahsim/demulation/RomEngineRouter564$Decision;

    sget-object v2, Lcom/ahsim/demulation/RomEngineRouter564$Decision;->DUNEHACK_CANDIDATE:Lcom/ahsim/demulation/RomEngineRouter564$Decision;

    filled-new-array {v0, v1, v2}, [Lcom/ahsim/demulation/RomEngineRouter564$Decision;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/ahsim/demulation/RomEngineRouter564$Decision;

    const-string v1, "CLASSIC_OR_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomEngineRouter564$Decision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomEngineRouter564$Decision;->CLASSIC_OR_UNKNOWN:Lcom/ahsim/demulation/RomEngineRouter564$Decision;

    new-instance v0, Lcom/ahsim/demulation/RomEngineRouter564$Decision;

    const-string v1, "DUNEHACK_NATIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomEngineRouter564$Decision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomEngineRouter564$Decision;->DUNEHACK_NATIVE:Lcom/ahsim/demulation/RomEngineRouter564$Decision;

    new-instance v0, Lcom/ahsim/demulation/RomEngineRouter564$Decision;

    const-string v1, "DUNEHACK_CANDIDATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomEngineRouter564$Decision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomEngineRouter564$Decision;->DUNEHACK_CANDIDATE:Lcom/ahsim/demulation/RomEngineRouter564$Decision;

    invoke-static {}, Lcom/ahsim/demulation/RomEngineRouter564$Decision;->$values()[Lcom/ahsim/demulation/RomEngineRouter564$Decision;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RomEngineRouter564$Decision;->$VALUES:[Lcom/ahsim/demulation/RomEngineRouter564$Decision;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ahsim/demulation/RomEngineRouter564$Decision;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lcom/ahsim/demulation/RomEngineRouter564$Decision;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/RomEngineRouter564$Decision;

    return-object v0
.end method

.method public static values()[Lcom/ahsim/demulation/RomEngineRouter564$Decision;
    .locals 1

    .line 7
    sget-object v0, Lcom/ahsim/demulation/RomEngineRouter564$Decision;->$VALUES:[Lcom/ahsim/demulation/RomEngineRouter564$Decision;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/RomEngineRouter564$Decision;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/RomEngineRouter564$Decision;

    return-object v0
.end method
