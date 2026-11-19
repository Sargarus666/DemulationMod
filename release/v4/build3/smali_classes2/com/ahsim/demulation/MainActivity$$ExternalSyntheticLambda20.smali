.class public final synthetic Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/ahsim/demulation/MainActivity;

.field public final synthetic f$1:Lcom/ahsim/demulation/MainActivity$AutosaveSnapshot;


# direct methods
.method public synthetic constructor <init>(Lcom/ahsim/demulation/MainActivity;Lcom/ahsim/demulation/MainActivity$AutosaveSnapshot;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda20;->f$0:Lcom/ahsim/demulation/MainActivity;

    iput-object p2, p0, Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda20;->f$1:Lcom/ahsim/demulation/MainActivity$AutosaveSnapshot;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda20;->f$0:Lcom/ahsim/demulation/MainActivity;

    iget-object v1, p0, Lcom/ahsim/demulation/MainActivity$$ExternalSyntheticLambda20;->f$1:Lcom/ahsim/demulation/MainActivity$AutosaveSnapshot;

    invoke-static {v0, v1}, Lcom/ahsim/demulation/MainActivity;->$r8$lambda$uVrl_5upXqs01n1OcwLY6Wz_3EU(Lcom/ahsim/demulation/MainActivity;Lcom/ahsim/demulation/MainActivity$AutosaveSnapshot;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
