.class public final synthetic Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/ahsim/demulation/GenesisRomFrontendAssetProvider$ProgressListener;


# instance fields
.field public final synthetic f$0:Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda1;->f$0:Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;

    iput p2, p0, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final onProgress(IILjava/lang/String;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda1;->f$0:Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;

    iget v1, p0, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, v1, p1, p2, p3}, Lcom/ahsim/demulation/RomAssetProvider;->lambda$installAssetBundle$14(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;IIILjava/lang/String;)V

    return-void
.end method
