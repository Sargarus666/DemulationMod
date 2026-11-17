.class public final enum Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;
.super Ljava/lang/Enum;
.source "GenesisRomIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisRomIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Recognition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

.field public static final enum EXACT_PROFILE:Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

.field public static final enum GAME_FAMILY_CANDIDATE:Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

.field public static final enum UNRECOGNIZED:Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;


# direct methods
.method private static synthetic $values()[Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;
    .locals 3

    .line 22
    sget-object v0, Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;->EXACT_PROFILE:Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    sget-object v1, Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;->GAME_FAMILY_CANDIDATE:Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    sget-object v2, Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;->UNRECOGNIZED:Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    filled-new-array {v0, v1, v2}, [Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    const-string v1, "EXACT_PROFILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;->EXACT_PROFILE:Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    .line 24
    new-instance v0, Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    const-string v1, "GAME_FAMILY_CANDIDATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;->GAME_FAMILY_CANDIDATE:Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    .line 25
    new-instance v0, Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    const-string v1, "UNRECOGNIZED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;->UNRECOGNIZED:Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    .line 22
    invoke-static {}, Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;->$values()[Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;->$VALUES:[Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    return-object v0
.end method

.method public static values()[Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;
    .locals 1

    .line 22
    sget-object v0, Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;->$VALUES:[Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    return-object v0
.end method
