.class final Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;
.super Ljava/lang/Object;
.source "GenesisLibGmeSfxRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Slot"
.end annotation


# instance fields
.field clip:Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;

.field logicalRemaining:I

.field position:I

.field serial:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;-><init>()V

    return-void
.end method


# virtual methods
.method active()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->clip:Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->logicalRemaining:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method stop()V
    .locals 2

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->clip:Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->position:I

    iput v0, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->logicalRemaining:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Slot;->serial:J

    return-void
.end method
