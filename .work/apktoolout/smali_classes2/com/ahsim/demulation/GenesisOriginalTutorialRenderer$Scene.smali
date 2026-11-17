.class final Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;
.super Ljava/lang/Object;
.source "GenesisOriginalTutorialRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Scene"
.end annotation


# instance fields
.field patterns:[B

.field plane0:[B

.field plane1:[B

.field stream0:[B

.field stream0Offset:I

.field stream1:[B

.field stream1Offset:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/16 v0, 0xe00

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->plane0:[B

    .line 78
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->plane1:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;-><init>()V

    return-void
.end method
