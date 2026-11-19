.class public final synthetic Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ahsim/demulation/LauncherActivity;

.field public final synthetic f$1:Lcom/ahsim/demulation/RomSelectionStore$Selection;

.field public final synthetic f$2:Lcom/ahsim/demulation/GenesisRomIdentity$Result;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda10;->f$0:Lcom/ahsim/demulation/LauncherActivity;

    iput-object p2, p0, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda10;->f$1:Lcom/ahsim/demulation/RomSelectionStore$Selection;

    iput-object p3, p0, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda10;->f$2:Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    iput p4, p0, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda10;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda10;->f$0:Lcom/ahsim/demulation/LauncherActivity;

    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda10;->f$1:Lcom/ahsim/demulation/RomSelectionStore$Selection;

    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda10;->f$2:Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    iget v3, p0, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda10;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/ahsim/demulation/LauncherActivity;->$r8$lambda$BSXwPjNGXeLN775ttxlEvRtVx90(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;I)V

    return-void
.end method
