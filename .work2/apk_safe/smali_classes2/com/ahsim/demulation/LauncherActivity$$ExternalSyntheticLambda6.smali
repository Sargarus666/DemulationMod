.class public final synthetic Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;


# instance fields
.field public final synthetic f$0:Lcom/ahsim/demulation/LauncherActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/ahsim/demulation/LauncherActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda6;->f$0:Lcom/ahsim/demulation/LauncherActivity;

    iput p2, p0, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda6;->f$1:I

    return-void
.end method


# virtual methods
.method public final onProgress(IILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda6;->f$0:Lcom/ahsim/demulation/LauncherActivity;

    iget v1, p0, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda6;->f$1:I

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/ahsim/demulation/LauncherActivity;->$r8$lambda$EwDFKTujF1hHYLE_x8i811ict-A(Lcom/ahsim/demulation/LauncherActivity;IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
