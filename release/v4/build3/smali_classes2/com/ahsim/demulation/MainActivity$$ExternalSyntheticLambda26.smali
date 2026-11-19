.class public final synthetic Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/ahsim/demulation/MainActivity;

.field public final synthetic f$1:Landroid/app/Dialog;

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/ahsim/demulation/MainActivity;Landroid/app/Dialog;F)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda26;->f$0:Lcom/ahsim/demulation/MainActivity;

    iput-object p2, p0, Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda26;->f$1:Landroid/app/Dialog;

    iput p3, p0, Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda26;->f$2:F

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda26;->f$0:Lcom/ahsim/demulation/MainActivity;

    iget-object v1, p0, Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda26;->f$1:Landroid/app/Dialog;

    iget v2, p0, Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda26;->f$2:F

    invoke-static {v0, v1, v2, p1}, Lcom/ahsim/demulation/MainActivity;->$r8$lambda$CYWx1iUdQAa1T3vcpF6AemkDM4A(Lcom/ahsim/demulation/MainActivity;Landroid/app/Dialog;FLandroid/content/DialogInterface;)V

    return-void
.end method
