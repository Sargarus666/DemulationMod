.class final Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Geometry;
.super Ljava/lang/Object;
.source "GenesisRomMissionTransitionAssetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Geometry"
.end annotation


# instance fields
.field final bytes:[B

.field final tileCount:I


# direct methods
.method constructor <init>([BI)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "tileCount"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Geometry;->bytes:[B

    iput p2, p0, Lcom/ahsim/demulation/GenesisRomMissionTransitionAssetProvider$Geometry;->tileCount:I

    return-void
.end method
