.class public final enum Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;
.super Ljava/lang/Enum;
.source "GenesisRomIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisRomIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Compatibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

.field public static final enum CANDIDATE:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

.field public static final enum INCOMPATIBLE:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

.field public static final enum UNVERIFIED:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

.field public static final enum VERIFIED:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;


# direct methods
.method private static synthetic $values()[Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;
    .locals 4

    .line 15
    sget-object v0, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->VERIFIED:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    sget-object v1, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->CANDIDATE:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    sget-object v2, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->UNVERIFIED:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    sget-object v3, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->INCOMPATIBLE:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    filled-new-array {v0, v1, v2, v3}, [Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    const-string v1, "VERIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->VERIFIED:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    .line 17
    new-instance v0, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    const-string v1, "CANDIDATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->CANDIDATE:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    .line 18
    new-instance v0, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    const-string v1, "UNVERIFIED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->UNVERIFIED:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    .line 19
    new-instance v0, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    const-string v1, "INCOMPATIBLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->INCOMPATIBLE:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    .line 15
    invoke-static {}, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->$values()[Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->$VALUES:[Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 15
    const-class v0, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    return-object v0
.end method

.method public static values()[Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;
    .locals 1

    .line 15
    sget-object v0, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->$VALUES:[Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    return-object v0
.end method
