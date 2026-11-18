.class public final synthetic Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda43;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/ahsim/demulation/MainActivity;

.field public final synthetic f$1:Landroid/app/Dialog;

.field public final synthetic f$2:Z

.field public final synthetic f$3:F

.field public final synthetic f$4:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/ahsim/demulation/MainActivity;Landroid/app/Dialog;ZFLandroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda43;->f$0:Lcom/ahsim/demulation/MainActivity;

    iput-object p2, p0, Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda43;->f$1:Landroid/app/Dialog;

    iput-boolean p3, p0, Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda43;->f$2:Z

    iput p4, p0, Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda43;->f$3:F

    iput-object p5, p0, Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda43;->f$4:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda43;->f$0:Lcom/ahsim/demulation/MainActivity;

    iget-object v1, p0, Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda43;->f$1:Landroid/app/Dialog;

    iget-boolean v2, p0, Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda43;->f$2:Z

    iget v3, p0, Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda43;->f$3:F

    iget-object v4, p0, Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda43;->f$4:Landroid/widget/EditText;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/ahsim/demulation/MainActivity;->$r8$lambda$qOz9aHYrnxWvo9Dm0JS5z2wlQ00(Lcom/ahsim/demulation/MainActivity;Landroid/app/Dialog;ZFLandroid/widget/EditText;Landroid/content/DialogInterface;)V

    return-void
.end method
