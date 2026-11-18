.class final Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;
.super Ljava/lang/Object;
.source "GenesisRomMissionTransitionAssetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogicalAsset"
.end annotation


# instance fields
.field final data:[B

.field final path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;->path:Ljava/lang/String;

    iput-object p2, p0, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$LogicalAsset;->data:[B

    return-void
.end method
