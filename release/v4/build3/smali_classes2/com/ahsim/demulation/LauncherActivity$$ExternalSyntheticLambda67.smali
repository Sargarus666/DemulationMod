.class public final synthetic Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda67;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ahsim/demulation/LauncherActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/ahsim/demulation/GenesisRomIdentity$Result;


# direct methods
.method public synthetic constructor <init>(Lcom/ahsim/demulation/LauncherActivity;ILcom/ahsim/demulation/GenesisRomIdentity$Result;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda67;->f$0:Lcom/ahsim/demulation/LauncherActivity;

    iput p2, p0, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda67;->f$1:I

    iput-object p3, p0, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda67;->f$2:Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda67;->f$0:Lcom/ahsim/demulation/LauncherActivity;

    iget v1, p0, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda67;->f$1:I

    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda67;->f$2:Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    invoke-static {v0, v1, v2}, Lcom/ahsim/demulation/LauncherActivity;->$r8$lambda$Igo8AfkFzebuv63IaamlLtQHAgE(Lcom/ahsim/demulation/LauncherActivity;ILcom/ahsim/demulation/GenesisRomIdentity$Result;)V

    return-void
.end method
