.class Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$1;
.super Ljava/lang/Object;
.source "GenesisOriginalSfxPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;-><init>(Lcom/ahsim/demulation/GenesisAudioSource;Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;

    .line 230
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$1;->this$0:Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$1;->this$0:Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->-$$Nest$mbackgroundProducerLoop(Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;)V

    return-void
.end method
