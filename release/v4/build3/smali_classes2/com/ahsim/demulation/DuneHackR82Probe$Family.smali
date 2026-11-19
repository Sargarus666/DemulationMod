.class public final enum Lcom/ahsim/demulation/DuneHackR82Probe$Family;
.super Ljava/lang/Enum;
.source "DuneHackR82Probe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82Probe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Family"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ahsim/demulation/DuneHackR82Probe$Family;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ahsim/demulation/DuneHackR82Probe$Family;

.field public static final enum NONE:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

.field public static final enum R82C:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

.field public static final enum R82C_PLUS:Lcom/ahsim/demulation/DuneHackR82Probe$Family;


# direct methods
.method private static synthetic $values()[Lcom/ahsim/demulation/DuneHackR82Probe$Family;
    .locals 3

    .line 13
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82Probe$Family;->NONE:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82Probe$Family;->R82C:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    sget-object v2, Lcom/ahsim/demulation/DuneHackR82Probe$Family;->R82C_PLUS:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    filled-new-array {v0, v1, v2}, [Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82Probe$Family;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82Probe$Family;->NONE:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    new-instance v0, Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    const-string v1, "R82C"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82Probe$Family;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82Probe$Family;->R82C:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    new-instance v0, Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    const-string v1, "R82C_PLUS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82Probe$Family;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82Probe$Family;->R82C_PLUS:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    invoke-static {}, Lcom/ahsim/demulation/DuneHackR82Probe$Family;->$values()[Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82Probe$Family;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82Probe$Family;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ahsim/demulation/DuneHackR82Probe$Family;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 13
    const-class v0, Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    return-object v0
.end method

.method public static values()[Lcom/ahsim/demulation/DuneHackR82Probe$Family;
    .locals 1

    .line 13
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82Probe$Family;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/DuneHackR82Probe$Family;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    return-object v0
.end method
