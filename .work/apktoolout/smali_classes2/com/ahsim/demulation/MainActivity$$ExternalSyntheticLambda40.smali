.class public final synthetic Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ahsim/demulation/MainActivity;

.field public final synthetic f$1:Landroid/widget/TextView;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/ahsim/demulation/MainActivity;Landroid/widget/TextView;Landroid/widget/EditText;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda40;->f$0:Lcom/ahsim/demulation/MainActivity;

    iput-object p2, p0, Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda40;->f$1:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda40;->f$2:Landroid/widget/EditText;

    iput-boolean p4, p0, Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda40;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda40;->f$0:Lcom/ahsim/demulation/MainActivity;

    iget-object v1, p0, Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda40;->f$1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda40;->f$2:Landroid/widget/EditText;

    iget-boolean v3, p0, Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda40;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lcom/ahsim/demulation/MainActivity;->$r8$lambda$kIfv8gKD5qYPw95POJdLYG3wFqs(Lcom/ahsim/demulation/MainActivity;Landroid/widget/TextView;Landroid/widget/EditText;Z)V

    return-void
.end method
