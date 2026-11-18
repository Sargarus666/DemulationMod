.class final Lcom/ahsim/demulation/MainActivity$WorldView$CombatVisualEffect;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/MainActivity$WorldView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CombatVisualEffect"
.end annotation


# instance fields
.field animation:Lcom/ahsim/demulation/GenesisObjectArt$ExplosionAnimation;

.field damage:I

.field endNanos:J

.field sequence:J

.field startNanos:J

.field final synthetic this$1:Lcom/ahsim/demulation/MainActivity$WorldView;

.field visualType:I

.field worldX:F

.field worldY:F


# direct methods
.method private constructor <init>(Lcom/ahsim/demulation/MainActivity$WorldView;)V
    .locals 0

    .line 7752
    iput-object p1, p0, Lcom/ahsim/demulation/MainActivity$WorldView$CombatVisualEffect;->this$1:Lcom/ahsim/demulation/MainActivity$WorldView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/MainActivity$WorldView;Lcom/ahsim/demulation/MainActivity-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/MainActivity$WorldView$CombatVisualEffect;-><init>(Lcom/ahsim/demulation/MainActivity$WorldView;)V

    return-void
.end method
