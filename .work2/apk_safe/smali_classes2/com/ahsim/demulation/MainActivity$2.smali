.class Lcom/ahsim/demulation/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/ahsim/demulation/GenesisSoundEventBridge$Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ahsim/demulation/MainActivity;->consumeSoundEventSnapshot()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ahsim/demulation/MainActivity;


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ahsim/demulation/MainActivity;

    .line 1333
    iput-object p1, p0, Lcom/ahsim/demulation/MainActivity$2;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;)V
    .locals 8
    .param p1, "command"    # Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;

    .line 1338
    iget v0, p1, Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;->sampleIndex:I

    .line 1339
    .local v0, "runtimeSequence":I
    iget-object v1, p0, Lcom/ahsim/demulation/MainActivity$2;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v1}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetoriginalSfxPlayer(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 1346
    iget v1, p1, Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;->sourceKind:I

    if-ne v1, v2, :cond_1

    .line 1347
    iget-object v1, p0, Lcom/ahsim/demulation/MainActivity$2;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v1}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetoriginalSfxPlayer(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;

    move-result-object v1

    iget v4, p1, Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;->sourceId:I

    invoke-virtual {v1, v4}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->directSequenceForEvent(I)I

    move-result v0

    .line 1348
    if-ltz v0, :cond_3

    .line 1349
    iget v1, p1, Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;->operation:I

    if-ne v1, v3, :cond_0

    .line 1350
    iget-object v1, p0, Lcom/ahsim/demulation/MainActivity$2;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v1}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetoriginalSfxPlayer(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->play(I)V

    goto :goto_0

    .line 1351
    :cond_0
    iget v1, p1, Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;->operation:I

    if-ne v1, v2, :cond_3

    .line 1352
    iget-object v1, p0, Lcom/ahsim/demulation/MainActivity$2;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v1}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetoriginalSfxPlayer(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->stop(I)V

    goto :goto_0

    .line 1355
    :cond_1
    iget v1, p1, Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;->operation:I

    if-ne v1, v3, :cond_2

    .line 1356
    iget-object v1, p0, Lcom/ahsim/demulation/MainActivity$2;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v1}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetoriginalSfxPlayer(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;

    move-result-object v1

    iget v4, p1, Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;->sampleIndex:I

    invoke-virtual {v1, v4}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->play(I)V

    goto :goto_0

    .line 1357
    :cond_2
    iget v1, p1, Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;->operation:I

    if-ne v1, v2, :cond_3

    .line 1358
    iget-object v1, p0, Lcom/ahsim/demulation/MainActivity$2;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v1}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetoriginalSfxPlayer(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;

    move-result-object v1

    iget v4, p1, Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;->sampleIndex:I

    invoke-virtual {v1, v4}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->stop(I)V

    .line 1361
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/ahsim/demulation/MainActivity$2;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v1}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetbridgedSoundCommandCount(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-static {v1, v4, v5}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputbridgedSoundCommandCount(Lcom/ahsim/demulation/MainActivity;J)V

    .line 1362
    iget-object v1, p0, Lcom/ahsim/demulation/MainActivity$2;->this$0:Lcom/ahsim/demulation/MainActivity;

    iget v4, p1, Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;->operation:I

    invoke-static {v1, v4}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputlastBridgedSoundOperation(Lcom/ahsim/demulation/MainActivity;I)V

    .line 1363
    iget-object v1, p0, Lcom/ahsim/demulation/MainActivity$2;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v1, v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputlastBridgedSoundSample(Lcom/ahsim/demulation/MainActivity;I)V

    .line 1364
    iget-object v1, p0, Lcom/ahsim/demulation/MainActivity$2;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v1}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetdiagnosticLoggingEnabled(Lcom/ahsim/demulation/MainActivity;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1365
    iget v1, p1, Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;->operation:I

    if-ne v1, v3, :cond_4

    const/16 v1, 0x15

    if-ne v0, v1, :cond_4

    .line 1366
    iget-object v1, p0, Lcom/ahsim/demulation/MainActivity$2;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v1}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mdiagnosticAggregateSfx21(Lcom/ahsim/demulation/MainActivity;)V

    goto :goto_3

    .line 1367
    :cond_4
    iget v1, p1, Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;->sourceKind:I

    const-string v4, "PLAY "

    const-string v5, "STOP "

    const-string v6, "SFX"

    if-ne v1, v2, :cond_6

    .line 1368
    iget-object v1, p0, Lcom/ahsim/demulation/MainActivity$2;->this$0:Lcom/ahsim/demulation/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;->operation:I

    if-ne v7, v3, :cond_5

    goto :goto_1

    :cond_5
    move-object v4, v5

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "direct="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;->sourceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sequence="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " native_sequence="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;->sampleIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v6, v2}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mdiagnosticLog(Lcom/ahsim/demulation/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1372
    :cond_6
    iget-object v1, p0, Lcom/ahsim/demulation/MainActivity$2;->this$0:Lcom/ahsim/demulation/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;->operation:I

    if-ne v7, v3, :cond_7

    goto :goto_2

    :cond_7
    move-object v4, v5

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sequence="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v6, v2}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mdiagnosticLog(Lcom/ahsim/demulation/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    :cond_8
    :goto_3
    return-void
.end method
