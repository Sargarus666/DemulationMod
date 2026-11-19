.class public final enum Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;
.super Ljava/lang/Enum;
.source "DuneHackR82Probe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82Probe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FeatureState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

.field public static final enum UNKNOWN:Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;


# direct methods
.method private static synthetic $values()[Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;
    .locals 1

    .line 14
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;->UNKNOWN:Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

    filled-new-array {v0}, [Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;->UNKNOWN:Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

    invoke-static {}, Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;->$values()[Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

    return-object v0
.end method

.method public static values()[Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;
    .locals 1

    .line 14
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;

    return-object v0
.end method
