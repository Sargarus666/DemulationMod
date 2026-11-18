.class public final Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Result;
.super Ljava/lang/Object;
.source "DuneHackR82NativeAbiProbe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final build:Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;

.field public final modifiedGameplayReady:Z

.field public final nativeFunctionAbiVerified:Z

.field public final numericIdInventoryVerified:Z

.field public final sourceSha256:Ljava/lang/String;

.field public final team:Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;

.field public final unit:Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;


# direct methods
.method private constructor <init>(Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;Ljava/lang/String;)V
    .locals 1
    .param p1, "build"    # Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;
    .param p2, "team"    # Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;
    .param p3, "unit"    # Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;
    .param p4, "sha"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Result;->numericIdInventoryVerified:Z

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Result;->nativeFunctionAbiVerified:Z

    .line 46
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Result;->modifiedGameplayReady:Z

    .line 48
    iput-object p1, p0, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Result;->build:Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;

    .line 49
    iput-object p2, p0, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Result;->team:Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;

    .line 50
    iput-object p3, p0, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Result;->unit:Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;

    .line 51
    iput-object p4, p0, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Result;->sourceSha256:Ljava/lang/String;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Result;-><init>(Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;Ljava/lang/String;)V

    return-void
.end method
