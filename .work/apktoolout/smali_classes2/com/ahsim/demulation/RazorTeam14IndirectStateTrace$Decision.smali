.class public final enum Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;
.super Ljava/lang/Enum;
.source "RazorTeam14IndirectStateTrace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Decision"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

.field public static final enum MATCH:Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

.field public static final enum SKIP_FLAG2:Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

.field public static final enum SKIP_HOUSE:Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

.field public static final enum SKIP_INDIRECT_BIT7:Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

.field public static final enum SKIP_TYPE:Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

.field public static final enum UNKNOWN_INDIRECT_ADDRESS:Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;


# direct methods
.method private static synthetic $values()[Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;
    .locals 6

    .line 20
    sget-object v0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;->SKIP_FLAG2:Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    sget-object v1, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;->SKIP_TYPE:Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    sget-object v2, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;->SKIP_HOUSE:Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    sget-object v3, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;->SKIP_INDIRECT_BIT7:Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    sget-object v4, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;->UNKNOWN_INDIRECT_ADDRESS:Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    sget-object v5, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;->MATCH:Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    filled-new-array/range {v0 .. v5}, [Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    const-string v1, "SKIP_FLAG2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;->SKIP_FLAG2:Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    new-instance v0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    const-string v1, "SKIP_TYPE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;->SKIP_TYPE:Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    new-instance v0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    const-string v1, "SKIP_HOUSE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;->SKIP_HOUSE:Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    new-instance v0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    const-string v1, "SKIP_INDIRECT_BIT7"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;->SKIP_INDIRECT_BIT7:Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    .line 21
    new-instance v0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    const-string v1, "UNKNOWN_INDIRECT_ADDRESS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;->UNKNOWN_INDIRECT_ADDRESS:Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    new-instance v0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    const-string v1, "MATCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;->MATCH:Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    .line 20
    invoke-static {}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;->$values()[Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;->$VALUES:[Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 20
    const-class v0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    return-object v0
.end method

.method public static values()[Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;
    .locals 1

    .line 20
    sget-object v0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;->$VALUES:[Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    return-object v0
.end method
