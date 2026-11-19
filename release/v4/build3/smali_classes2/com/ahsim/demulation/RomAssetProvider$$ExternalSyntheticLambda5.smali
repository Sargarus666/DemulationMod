.class public final synthetic Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/ahsim/demulation/GenesisRomTutorialAssetProvider$ProgressListener;


# instance fields
.field public final synthetic f$0:Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda5;->f$0:Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;

    iput p2, p0, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda5;->f$1:I

    iput p3, p0, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda5;->f$2:I

    return-void
.end method


# virtual methods
.method public final onProgress(IILjava/lang/String;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda5;->f$0:Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;

    iget v1, p0, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda5;->f$1:I

    iget v2, p0, Lcom/ahsim/demulation/RomAssetProvider$$ExternalSyntheticLambda5;->f$2:I

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/ahsim/demulation/RomAssetProvider;->lambda$installAssetBundle$18(Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;IIIILjava/lang/String;)V

    return-void
.end method
