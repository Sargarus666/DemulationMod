.class final Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;
.super Ljava/lang/Object;
.source "GenesisCampaignTransitionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FallingSlot"
.end annotation


# instance fields
.field displacementFixed:J

.field paused:Z

.field piece:I

.field velocityFixed:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 789
    const/4 v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;->piece:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;-><init>()V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .line 795
    const/4 v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;->piece:I

    .line 796
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;->velocityFixed:J

    .line 797
    iput-wide v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;->displacementFixed:J

    .line 798
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$FallingSlot;->paused:Z

    .line 799
    return-void
.end method
