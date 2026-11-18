.class Lcom/ahsim/demulation/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/MainActivity;
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

    .line 1127
    iput-object p1, p0, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 36
    .param p1, "frameTimeNanos"    # J

    .line 1130
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetdiagnosticLoggingEnabled(Lcom/ahsim/demulation/MainActivity;)Z

    move-result v4

    .line 1131
    .local v4, "diagnosticCapture":Z
    const-wide/16 v5, 0x0

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    goto :goto_0

    :cond_0
    move-wide v7, v5

    :goto_0
    move-wide v10, v7

    .line 1132
    .local v10, "diagnosticFrameWorkStartNanos":J
    const-wide/16 v7, 0x0

    .line 1133
    .local v7, "diagnosticStepTotalNanos":J
    const-wide/16 v19, 0x0

    .line 1134
    .local v19, "diagnosticStepMaxNanos":J
    const-wide/16 v21, 0x0

    .line 1135
    .local v21, "diagnosticSnapshotNanos":J
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    const/4 v9, 0x0

    invoke-static {v0, v9}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputframeCallbackPosted(Lcom/ahsim/demulation/MainActivity;Z)V

    .line 1136
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetrunning(Lcom/ahsim/demulation/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetnativeHandle(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v12

    cmp-long v0, v12, v5

    if-nez v0, :cond_1

    move/from16 v27, v4

    goto/16 :goto_10

    .line 1138
    :cond_1
    if-eqz v4, :cond_2

    .line 1139
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0, v2, v3}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mdiagnosticRecordFrameInterval(Lcom/ahsim/demulation/MainActivity;J)V

    .line 1140
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mdiagnosticMaybeScheduleSystemSample(Lcom/ahsim/demulation/MainActivity;)V

    .line 1143
    :cond_2
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetlastFrameNanos(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v12

    cmp-long v0, v12, v5

    const-wide/32 v12, 0xfe502a

    if-nez v0, :cond_3

    .line 1146
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    sub-long v14, v2, v12

    invoke-static {v0, v14, v15}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputlastFrameNanos(Lcom/ahsim/demulation/MainActivity;J)V

    .line 1148
    :cond_3
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetlastFrameNanos(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v14

    sub-long v14, v2, v14

    .line 1149
    .local v14, "delta":J
    cmp-long v0, v14, v5

    if-gez v0, :cond_4

    const-wide/16 v14, 0x0

    .line 1150
    :cond_4
    const-wide/32 v23, 0x3f940a8

    .line 1151
    .local v23, "maxDelta":J
    cmp-long v0, v14, v23

    const-wide/16 v16, 0x1

    if-lez v0, :cond_6

    .line 1152
    if-eqz v4, :cond_5

    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetdiagnosticDeltaClampCount(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v25

    move-wide/from16 v27, v12

    add-long v12, v25, v16

    invoke-static {v0, v12, v13}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputdiagnosticDeltaClampCount(Lcom/ahsim/demulation/MainActivity;J)V

    goto :goto_1

    :cond_5
    move-wide/from16 v27, v12

    .line 1153
    :goto_1
    move-wide/from16 v14, v23

    move-wide/from16 v25, v14

    goto :goto_2

    .line 1151
    :cond_6
    move-wide/from16 v27, v12

    move-wide/from16 v25, v14

    .line 1155
    .end local v14    # "delta":J
    .local v25, "delta":J
    :goto_2
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0, v2, v3}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputlastFrameNanos(Lcom/ahsim/demulation/MainActivity;J)V

    .line 1156
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetsimulationAccumulatorNanos(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v12

    add-long v12, v12, v25

    invoke-static {v0, v12, v13}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputsimulationAccumulatorNanos(Lcom/ahsim/demulation/MainActivity;J)V

    .line 1157
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetoriginalTutorialActive(Lcom/ahsim/demulation/MainActivity;)Z

    move-result v0

    const/4 v12, 0x4

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetoriginalTutorialRenderer(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1158
    const/4 v0, 0x0

    .line 1159
    .local v0, "tutorialSteps":I
    const/4 v5, 0x0

    move v6, v5

    move v5, v0

    .line 1160
    .end local v0    # "tutorialSteps":I
    .local v5, "tutorialSteps":I
    .local v6, "tutorialFinished":Z
    :goto_3
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetsimulationAccumulatorNanos(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v13

    cmp-long v0, v13, v27

    if-ltz v0, :cond_c

    if-ge v5, v12, :cond_c

    .line 1162
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetoriginalTutorialConfirmPending(Lcom/ahsim/demulation/MainActivity;)Z

    move-result v13

    .line 1163
    .local v13, "confirm":Z
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetoriginalTutorialAbortPending(Lcom/ahsim/demulation/MainActivity;)Z

    move-result v14

    .line 1164
    .local v14, "abort":Z
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0, v9}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputoriginalTutorialConfirmPending(Lcom/ahsim/demulation/MainActivity;Z)V

    .line 1166
    :try_start_0
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetoriginalTutorialRenderer(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->tick(ZZ)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    move v6, v0

    .line 1167
    :cond_7
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetoriginalTutorialRenderer(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->wasAborted()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_8

    :try_start_1
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0, v9}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputoriginalTutorialAbortPending(Lcom/ahsim/demulation/MainActivity;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 1168
    :catch_0
    move-exception v0

    move/from16 v18, v13

    goto :goto_6

    .line 1174
    :cond_8
    :goto_4
    nop

    .line 1176
    :cond_9
    :goto_5
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetoriginalTutorialRenderer(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pollSequence()I

    move-result v0

    move v15, v0

    .local v15, "sequence":I
    if-ltz v0, :cond_a

    .line 1177
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetsoundEnabled(Lcom/ahsim/demulation/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetoriginalSfxPlayer(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetoriginalSfxPlayer(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;->play(I)V

    goto :goto_5

    .line 1179
    :cond_a
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetsimulationAccumulatorNanos(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v16

    move/from16 v18, v13

    .end local v13    # "confirm":Z
    .local v18, "confirm":Z
    sub-long v12, v16, v27

    invoke-static {v0, v12, v13}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputsimulationAccumulatorNanos(Lcom/ahsim/demulation/MainActivity;J)V

    .line 1180
    add-int/lit8 v5, v5, 0x1

    .line 1181
    if-eqz v6, :cond_b

    goto :goto_7

    .line 1182
    .end local v14    # "abort":Z
    .end local v15    # "sequence":I
    .end local v18    # "confirm":Z
    :cond_b
    const/4 v12, 0x4

    goto :goto_3

    .line 1168
    .restart local v13    # "confirm":Z
    .restart local v14    # "abort":Z
    :catch_1
    move-exception v0

    move/from16 v18, v13

    .line 1169
    .end local v13    # "confirm":Z
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v18    # "confirm":Z
    :goto_6
    iget-object v12, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Original tutorial failed: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputfatalMessage(Lcom/ahsim/demulation/MainActivity;Ljava/lang/String;)V

    .line 1170
    iget-object v12, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v12, v9}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputoriginalTutorialActive(Lcom/ahsim/demulation/MainActivity;Z)V

    .line 1171
    iget-object v12, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ERROR "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, "TUTORIAL"

    invoke-static {v12, v15, v13}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mdiagnosticLog(Lcom/ahsim/demulation/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    const/4 v6, 0x0

    .line 1173
    nop

    .line 1183
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v14    # "abort":Z
    .end local v18    # "confirm":Z
    :cond_c
    :goto_7
    if-nez v6, :cond_d

    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetoriginalTutorialRenderer(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1184
    :cond_d
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mfinishOriginalTutorialCore(Lcom/ahsim/demulation/MainActivity;)V

    .line 1185
    :cond_e
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetworldView(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/MainActivity$WorldView;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetworldView(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/MainActivity$WorldView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ahsim/demulation/MainActivity$WorldView;->invalidate()V

    .line 1186
    :cond_f
    move v12, v9

    iget-object v9, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    move v14, v12

    const-wide/16 v12, 0x0

    move/from16 v27, v14

    const-wide/16 v14, 0x0

    move v0, v5

    move/from16 v5, v27

    .end local v5    # "tutorialSteps":I
    .local v0, "tutorialSteps":I
    invoke-static/range {v9 .. v18}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mdiagnosticRecordFrameWork(Lcom/ahsim/demulation/MainActivity;JJJIJ)V

    .line 1187
    iget-object v9, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v9, v5}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mflushDiagnosticLogIfNeeded(Lcom/ahsim/demulation/MainActivity;Z)V

    .line 1188
    iget-object v5, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v5}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mpostFrameCallback(Lcom/ahsim/demulation/MainActivity;)V

    .line 1189
    return-void

    .line 1157
    .end local v0    # "tutorialSteps":I
    .end local v6    # "tutorialFinished":Z
    :cond_10
    move-wide v12, v5

    move v5, v9

    .line 1191
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetoriginalTitleActive(Lcom/ahsim/demulation/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1192
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0, v12, v13}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputsimulationAccumulatorNanos(Lcom/ahsim/demulation/MainActivity;J)V

    .line 1193
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0, v2, v3}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mserviceOriginalTitle(Lcom/ahsim/demulation/MainActivity;J)V

    .line 1194
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0, v2, v3}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mserviceOriginalTitleTutorialIdle(Lcom/ahsim/demulation/MainActivity;J)V

    .line 1195
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetworldView(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/MainActivity$WorldView;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetworldView(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/MainActivity$WorldView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ahsim/demulation/MainActivity$WorldView;->invalidate()V

    .line 1196
    :cond_11
    iget-object v9, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-static/range {v9 .. v18}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mdiagnosticRecordFrameWork(Lcom/ahsim/demulation/MainActivity;JJJIJ)V

    .line 1197
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0, v5}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mflushDiagnosticLogIfNeeded(Lcom/ahsim/demulation/MainActivity;Z)V

    .line 1198
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mpostFrameCallback(Lcom/ahsim/demulation/MainActivity;)V

    .line 1199
    return-void

    .line 1201
    :cond_12
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetpendingFrontendMentatMode(Lcom/ahsim/demulation/MainActivity;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 1202
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0, v12, v13}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputsimulationAccumulatorNanos(Lcom/ahsim/demulation/MainActivity;J)V

    .line 1203
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0, v2, v3}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mservicePendingFrontendMentatEntry(Lcom/ahsim/demulation/MainActivity;J)V

    .line 1204
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetworldView(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/MainActivity$WorldView;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetworldView(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/MainActivity$WorldView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ahsim/demulation/MainActivity$WorldView;->invalidate()V

    .line 1205
    :cond_13
    iget-object v9, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-static/range {v9 .. v18}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mdiagnosticRecordFrameWork(Lcom/ahsim/demulation/MainActivity;JJJIJ)V

    .line 1206
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0, v5}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mflushDiagnosticLogIfNeeded(Lcom/ahsim/demulation/MainActivity;Z)V

    .line 1207
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mpostFrameCallback(Lcom/ahsim/demulation/MainActivity;)V

    .line 1208
    return-void

    .line 1210
    :cond_14
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetmissionPresentationMode(Lcom/ahsim/demulation/MainActivity;)I

    move-result v0

    if-eqz v0, :cond_18

    .line 1214
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0, v12, v13}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputsimulationAccumulatorNanos(Lcom/ahsim/demulation/MainActivity;J)V

    .line 1215
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetmissionPresentationMode(Lcom/ahsim/demulation/MainActivity;)I

    move-result v0

    const/16 v6, 0x8

    if-ne v0, v6, :cond_15

    .line 1216
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0, v2, v3}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mserviceMissionStartTransition(Lcom/ahsim/demulation/MainActivity;J)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1217
    iget-object v9, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-static/range {v9 .. v18}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mdiagnosticRecordFrameWork(Lcom/ahsim/demulation/MainActivity;JJJIJ)V

    .line 1218
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0, v5}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mflushDiagnosticLogIfNeeded(Lcom/ahsim/demulation/MainActivity;Z)V

    .line 1219
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mpostFrameCallback(Lcom/ahsim/demulation/MainActivity;)V

    .line 1220
    return-void

    .line 1223
    :cond_15
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0, v2, v3}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mserviceMissionEndPresentation(Lcom/ahsim/demulation/MainActivity;J)V

    .line 1225
    :cond_16
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetworldView(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/MainActivity$WorldView;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetworldView(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/MainActivity$WorldView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ahsim/demulation/MainActivity$WorldView;->invalidate()V

    .line 1226
    :cond_17
    iget-object v9, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-static/range {v9 .. v18}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mdiagnosticRecordFrameWork(Lcom/ahsim/demulation/MainActivity;JJJIJ)V

    .line 1227
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0, v5}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mflushDiagnosticLogIfNeeded(Lcom/ahsim/demulation/MainActivity;Z)V

    .line 1228
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mpostFrameCallback(Lcom/ahsim/demulation/MainActivity;)V

    .line 1229
    return-void

    .line 1235
    :cond_18
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetworldView(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/MainActivity$WorldView;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetworldView(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/MainActivity$WorldView;

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity$WorldView;->-$$Nest$fgetfrontMenuOpen(Lcom/ahsim/demulation/MainActivity$WorldView;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetworldView(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/MainActivity$WorldView;

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity$WorldView;->-$$Nest$fgetdebugPanelOpen(Lcom/ahsim/demulation/MainActivity$WorldView;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1238
    :cond_19
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0, v12, v13}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputsimulationAccumulatorNanos(Lcom/ahsim/demulation/MainActivity;J)V

    .line 1239
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetworldView(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/MainActivity$WorldView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ahsim/demulation/MainActivity$WorldView;->invalidate()V

    .line 1240
    iget-object v9, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-static/range {v9 .. v18}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mdiagnosticRecordFrameWork(Lcom/ahsim/demulation/MainActivity;JJJIJ)V

    .line 1241
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0, v5}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mflushDiagnosticLogIfNeeded(Lcom/ahsim/demulation/MainActivity;Z)V

    .line 1242
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mpostFrameCallback(Lcom/ahsim/demulation/MainActivity;)V

    .line 1243
    return-void

    .line 1245
    :cond_1a
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetworldView(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/MainActivity$WorldView;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetworldView(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/MainActivity$WorldView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ahsim/demulation/MainActivity$WorldView;->syncNativeTacticalViewport()V

    .line 1247
    :cond_1b
    const/4 v0, 0x0

    .line 1248
    .local v0, "steps":I
    const/4 v6, 0x0

    .line 1249
    .local v6, "simulationTicks":I
    iget-object v9, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v9}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetcheatFastmoving(Lcom/ahsim/demulation/MainActivity;)Z

    move-result v9

    const/4 v15, 0x1

    if-eqz v9, :cond_1c

    const/4 v9, 0x2

    goto :goto_8

    :cond_1c
    move v9, v15

    :goto_8
    move-wide/from16 v34, v19

    move/from16 v19, v6

    move-wide/from16 v5, v34

    .line 1250
    .end local v6    # "simulationTicks":I
    .local v5, "diagnosticStepMaxNanos":J
    .local v9, "ticksPerCadence":I
    .local v19, "simulationTicks":I
    :goto_9
    const/16 v18, 0x2

    iget-object v14, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v14}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetsimulationAccumulatorNanos(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v30

    cmp-long v14, v30, v27

    if-ltz v14, :cond_20

    const/4 v14, 0x4

    if-ge v0, v14, :cond_20

    .line 1252
    if-eqz v4, :cond_1d

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v30

    goto :goto_a

    :cond_1d
    move-wide/from16 v30, v12

    .line 1253
    .local v30, "diagnosticStepStartNanos":J
    :goto_a
    iget-object v14, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v14}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetnativeHandle(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v12

    invoke-static {v12, v13, v9}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smnativeStep(JI)Z

    move-result v12

    if-nez v12, :cond_1e

    .line 1254
    iget-object v12, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    const-string v13, "CORE_TICK_FAILED"

    invoke-static {v12, v13}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mhandleCoreFailure(Lcom/ahsim/demulation/MainActivity;Ljava/lang/String;)V

    .line 1255
    return-void

    .line 1260
    :cond_1e
    iget-object v12, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v12}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mdiagnosticDrainEscortEvents(Lcom/ahsim/demulation/MainActivity;)V

    .line 1261
    if-eqz v4, :cond_1f

    .line 1262
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    sub-long v12, v12, v30

    move-wide/from16 v32, v7

    const-wide/16 v7, 0x0

    .end local v7    # "diagnosticStepTotalNanos":J
    .local v32, "diagnosticStepTotalNanos":J
    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 1263
    .local v12, "diagnosticStepNanos":J
    add-long v7, v32, v12

    .line 1264
    .end local v32    # "diagnosticStepTotalNanos":J
    .restart local v7    # "diagnosticStepTotalNanos":J
    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    goto :goto_b

    .line 1261
    .end local v12    # "diagnosticStepNanos":J
    :cond_1f
    move-wide/from16 v32, v7

    .line 1266
    :goto_b
    iget-object v12, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v12}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetsimulationAccumulatorNanos(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v13

    sub-long v13, v13, v27

    invoke-static {v12, v13, v14}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputsimulationAccumulatorNanos(Lcom/ahsim/demulation/MainActivity;J)V

    .line 1267
    add-int/lit8 v0, v0, 0x1

    .line 1268
    add-int v19, v19, v9

    .line 1269
    .end local v30    # "diagnosticStepStartNanos":J
    const-wide/16 v12, 0x0

    goto :goto_9

    .line 1250
    :cond_20
    move-wide/from16 v32, v7

    .line 1270
    .end local v7    # "diagnosticStepTotalNanos":J
    .restart local v32    # "diagnosticStepTotalNanos":J
    if-eqz v4, :cond_21

    if-le v0, v15, :cond_21

    .line 1271
    iget-object v7, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v7}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetdiagnosticCatchUpFrames(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v12

    add-long v12, v12, v16

    invoke-static {v7, v12, v13}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputdiagnosticCatchUpFrames(Lcom/ahsim/demulation/MainActivity;J)V

    .line 1272
    iget-object v7, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v7}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetdiagnosticCatchUpTicks(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v12

    move/from16 v27, v4

    move-wide/from16 v28, v5

    .end local v4    # "diagnosticCapture":Z
    .end local v5    # "diagnosticStepMaxNanos":J
    .local v27, "diagnosticCapture":Z
    .local v28, "diagnosticStepMaxNanos":J
    int-to-long v4, v0

    sub-long v4, v4, v16

    add-long/2addr v12, v4

    invoke-static {v7, v12, v13}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputdiagnosticCatchUpTicks(Lcom/ahsim/demulation/MainActivity;J)V

    goto :goto_c

    .line 1270
    .end local v27    # "diagnosticCapture":Z
    .end local v28    # "diagnosticStepMaxNanos":J
    .restart local v4    # "diagnosticCapture":Z
    .restart local v5    # "diagnosticStepMaxNanos":J
    :cond_21
    move/from16 v27, v4

    move-wide/from16 v28, v5

    .line 1274
    .end local v4    # "diagnosticCapture":Z
    .end local v5    # "diagnosticStepMaxNanos":J
    .restart local v27    # "diagnosticCapture":Z
    .restart local v28    # "diagnosticStepMaxNanos":J
    :goto_c
    if-eqz v27, :cond_22

    iget-object v4, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    iget-object v5, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v5}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetdiagnosticMaxStepsPerFrame(Lcom/ahsim/demulation/MainActivity;)I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputdiagnosticMaxStepsPerFrame(Lcom/ahsim/demulation/MainActivity;I)V

    .line 1276
    :cond_22
    if-lez v0, :cond_28

    .line 1277
    if-eqz v27, :cond_23

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    goto :goto_d

    :cond_23
    const-wide/16 v7, 0x0

    .line 1278
    .local v7, "snapshotStartNanos":J
    :goto_d
    iget-object v4, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetnativeHandle(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v4

    iget-object v6, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v6}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetrenderWords(Lcom/ahsim/demulation/MainActivity;)[I

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/ahsim/demulation/MainActivity;->nativeFillRenderSnapshot(J[I)Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v4, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetnativeHandle(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v4

    iget-object v6, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v6}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetunitRenderAux(Lcom/ahsim/demulation/MainActivity;)[I

    move-result-object v6

    .line 1279
    invoke-static {v4, v5, v6}, Lcom/ahsim/demulation/MainActivity;->nativeFillUnitRenderAux(J[I)Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v4, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetnativeHandle(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v4

    iget-object v6, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v6}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetunitCombatAux(Lcom/ahsim/demulation/MainActivity;)[I

    move-result-object v6

    .line 1280
    invoke-static {v4, v5, v6}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smnativeFillUnitCombatAux(J[I)Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v4, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetnativeHandle(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v4

    iget-object v6, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v6}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetunitEscortAux(Lcom/ahsim/demulation/MainActivity;)[I

    move-result-object v6

    .line 1281
    invoke-static {v4, v5, v6}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smnativeFillUnitEscortAux(J[I)Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v4, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetnativeHandle(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v4

    iget-object v6, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v6}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetcombatVisualAux(Lcom/ahsim/demulation/MainActivity;)[I

    move-result-object v6

    .line 1282
    invoke-static {v4, v5, v6}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smnativeFillCombatVisualAux(J[I)Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v4, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetnativeHandle(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v4

    iget-object v6, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v6}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetstructureRenderAux(Lcom/ahsim/demulation/MainActivity;)[I

    move-result-object v6

    .line 1283
    invoke-static {v4, v5, v6}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smnativeFillStructureRenderAux(J[I)Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v4, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetnativeHandle(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v4

    iget-object v6, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v6}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetstructureUpgradeAux(Lcom/ahsim/demulation/MainActivity;)[I

    move-result-object v6

    .line 1284
    invoke-static {v4, v5, v6}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smnativeFillStructureUpgradeAux(J[I)Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v4, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetnativeHandle(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v4

    iget-object v6, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v6}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgettacticalAux(Lcom/ahsim/demulation/MainActivity;)[I

    move-result-object v6

    .line 1285
    invoke-static {v4, v5, v6}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smnativeFillTacticalAux(J[I)Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v4, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetnativeHandle(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v4

    iget-object v6, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v6}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetconstructionAux(Lcom/ahsim/demulation/MainActivity;)[I

    move-result-object v6

    .line 1286
    invoke-static {v4, v5, v6}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smnativeFillConstructionAux(J[I)Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v4, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetnativeHandle(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v4

    iget-object v6, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v6}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetfactoryAux(Lcom/ahsim/demulation/MainActivity;)[I

    move-result-object v6

    .line 1287
    invoke-static {v4, v5, v6}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smnativeFillFactoryAux(J[I)Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v4, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetnativeHandle(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v4

    iget-object v6, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v6}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetstarportAux(Lcom/ahsim/demulation/MainActivity;)[I

    move-result-object v6

    .line 1288
    invoke-static {v4, v5, v6}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smnativeFillStarportAux(J[I)Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v4, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetnativeHandle(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v4

    iget-object v6, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v6}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetpalaceAux(Lcom/ahsim/demulation/MainActivity;)[I

    move-result-object v6

    .line 1289
    invoke-static {v4, v5, v6}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smnativeFillPalaceAux(J[I)Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v4, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetnativeHandle(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v4

    iget-object v6, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v6}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetstatisticsWords(Lcom/ahsim/demulation/MainActivity;)[I

    move-result-object v6

    .line 1290
    invoke-static {v4, v5, v6}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smnativeFillStatistics(J[I)Z

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_e

    :cond_24
    const/4 v15, 0x0

    .line 1291
    .local v15, "snapshotOk":Z
    :goto_e
    if-eqz v27, :cond_25

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v7

    const-wide/16 v12, 0x0

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-wide/from16 v21, v4

    .line 1292
    :cond_25
    if-nez v15, :cond_26

    .line 1293
    iget-object v4, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    const-string v5, "RENDER_SNAPSHOT_FAILED"

    invoke-static {v4, v5}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mhandleCoreFailure(Lcom/ahsim/demulation/MainActivity;Ljava/lang/String;)V

    .line 1294
    return-void

    .line 1296
    :cond_26
    iget-object v4, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetworldView(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/MainActivity$WorldView;

    move-result-object v4

    if-eqz v4, :cond_27

    iget-object v4, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetworldView(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/MainActivity$WorldView;

    move-result-object v4

    invoke-static {v4}, Lcom/ahsim/demulation/MainActivity$WorldView;->-$$Nest$mupdatePalaceTargetLifecycle(Lcom/ahsim/demulation/MainActivity$WorldView;)V

    .line 1297
    :cond_27
    iget-object v4, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetachievementMissionWords(Lcom/ahsim/demulation/MainActivity;)[I

    move-result-object v4

    if-eqz v4, :cond_28

    iget-object v4, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetnativeHandle(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v4

    iget-object v6, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v6}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetachievementMissionWords(Lcom/ahsim/demulation/MainActivity;)[I

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smnativeFillMissionResult(J[I)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1298
    iget-object v4, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mobserveAchievementsFromSnapshot(Lcom/ahsim/demulation/MainActivity;)V

    .line 1300
    .end local v7    # "snapshotStartNanos":J
    .end local v15    # "snapshotOk":Z
    :cond_28
    if-eqz v27, :cond_29

    if-lez v0, :cond_29

    iget-object v4, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mdiagnosticObserveWorldEvents(Lcom/ahsim/demulation/MainActivity;)V

    .line 1301
    :cond_29
    if-lez v0, :cond_2a

    iget-object v4, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mconsumeSoundEventSnapshot(Lcom/ahsim/demulation/MainActivity;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 1302
    iget-object v4, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    const-string v5, "SOUND_EVENT_SNAPSHOT_FAILED"

    invoke-static {v4, v5}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mhandleCoreFailure(Lcom/ahsim/demulation/MainActivity;Ljava/lang/String;)V

    .line 1303
    return-void

    .line 1305
    :cond_2a
    if-lez v0, :cond_2b

    iget-object v4, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mserviceGameplayMusicRequest(Lcom/ahsim/demulation/MainActivity;)V

    .line 1306
    :cond_2b
    if-lez v19, :cond_2c

    iget-object v4, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    move/from16 v6, v19

    .end local v19    # "simulationTicks":I
    .restart local v6    # "simulationTicks":I
    invoke-static {v4, v6}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$madvanceHudCreditsDisplay(Lcom/ahsim/demulation/MainActivity;I)V

    goto :goto_f

    .end local v6    # "simulationTicks":I
    .restart local v19    # "simulationTicks":I
    :cond_2c
    move/from16 v6, v19

    .line 1307
    .end local v19    # "simulationTicks":I
    .restart local v6    # "simulationTicks":I
    :goto_f
    if-lez v0, :cond_2e

    iget-object v4, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v4}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mconsumeMissionEndFromSnapshot(Lcom/ahsim/demulation/MainActivity;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1308
    move v4, v9

    .end local v9    # "ticksPerCadence":I
    .local v4, "ticksPerCadence":I
    iget-object v9, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    move/from16 v16, v0

    move-wide/from16 v17, v21

    move-wide/from16 v14, v28

    move-wide/from16 v12, v32

    .end local v0    # "steps":I
    .end local v21    # "diagnosticSnapshotNanos":J
    .end local v28    # "diagnosticStepMaxNanos":J
    .end local v32    # "diagnosticStepTotalNanos":J
    .local v12, "diagnosticStepTotalNanos":J
    .local v14, "diagnosticStepMaxNanos":J
    .local v16, "steps":I
    .local v17, "diagnosticSnapshotNanos":J
    invoke-static/range {v9 .. v18}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mdiagnosticRecordFrameWork(Lcom/ahsim/demulation/MainActivity;JJJIJ)V

    .line 1310
    .end local v17    # "diagnosticSnapshotNanos":J
    .restart local v21    # "diagnosticSnapshotNanos":J
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetworldView(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/MainActivity$WorldView;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetworldView(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/MainActivity$WorldView;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/ahsim/demulation/MainActivity$WorldView;->noteFrame(J)V

    .line 1311
    :cond_2d
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mflushDiagnosticLogIfNeeded(Lcom/ahsim/demulation/MainActivity;Z)V

    .line 1312
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mpostFrameCallback(Lcom/ahsim/demulation/MainActivity;)V

    .line 1313
    return-void

    .line 1307
    .end local v4    # "ticksPerCadence":I
    .end local v12    # "diagnosticStepTotalNanos":J
    .end local v14    # "diagnosticStepMaxNanos":J
    .end local v16    # "steps":I
    .restart local v0    # "steps":I
    .restart local v9    # "ticksPerCadence":I
    .restart local v28    # "diagnosticStepMaxNanos":J
    .restart local v32    # "diagnosticStepTotalNanos":J
    :cond_2e
    move/from16 v16, v0

    move v4, v9

    move-wide/from16 v14, v28

    move-wide/from16 v12, v32

    .line 1315
    .end local v0    # "steps":I
    .end local v9    # "ticksPerCadence":I
    .end local v28    # "diagnosticStepMaxNanos":J
    .end local v32    # "diagnosticStepTotalNanos":J
    .restart local v4    # "ticksPerCadence":I
    .restart local v12    # "diagnosticStepTotalNanos":J
    .restart local v14    # "diagnosticStepMaxNanos":J
    .restart local v16    # "steps":I
    if-lez v16, :cond_2f

    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetautosaveMinutes(Lcom/ahsim/demulation/MainActivity;)I

    move-result v0

    if-lez v0, :cond_2f

    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetrenderWords(Lcom/ahsim/demulation/MainActivity;)[I

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetrenderWords(Lcom/ahsim/demulation/MainActivity;)[I

    move-result-object v0

    aget v0, v0, v18

    iget-object v5, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v5}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetlastAutosaveTick(Lcom/ahsim/demulation/MainActivity;)I

    move-result v5

    sub-int/2addr v0, v5

    iget-object v5, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    .line 1316
    invoke-static {v5}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mautosaveIntervalTicks(Lcom/ahsim/demulation/MainActivity;)I

    move-result v5

    if-lt v0, v5, :cond_2f

    .line 1317
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$msaveStateToDisk(Lcom/ahsim/demulation/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    iget-object v5, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v5}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetrenderWords(Lcom/ahsim/demulation/MainActivity;)[I

    move-result-object v5

    aget v5, v5, v18

    invoke-static {v0, v5}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputlastAutosaveTick(Lcom/ahsim/demulation/MainActivity;I)V

    .line 1319
    :cond_2f
    iget-object v9, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    move-wide/from16 v17, v21

    .end local v21    # "diagnosticSnapshotNanos":J
    .restart local v17    # "diagnosticSnapshotNanos":J
    invoke-static/range {v9 .. v18}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mdiagnosticRecordFrameWork(Lcom/ahsim/demulation/MainActivity;JJJIJ)V

    .line 1321
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mflushDiagnosticLogIfNeeded(Lcom/ahsim/demulation/MainActivity;Z)V

    .line 1322
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetworldView(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/MainActivity$WorldView;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 1323
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetworldView(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/MainActivity$WorldView;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/ahsim/demulation/MainActivity$WorldView;->noteFrame(J)V

    .line 1324
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetworldView(Lcom/ahsim/demulation/MainActivity;)Lcom/ahsim/demulation/MainActivity$WorldView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ahsim/demulation/MainActivity$WorldView;->invalidate()V

    .line 1326
    :cond_30
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$1;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mpostFrameCallback(Lcom/ahsim/demulation/MainActivity;)V

    .line 1327
    return-void

    .line 1136
    .end local v6    # "simulationTicks":I
    .end local v12    # "diagnosticStepTotalNanos":J
    .end local v14    # "diagnosticStepMaxNanos":J
    .end local v16    # "steps":I
    .end local v17    # "diagnosticSnapshotNanos":J
    .end local v23    # "maxDelta":J
    .end local v25    # "delta":J
    .end local v27    # "diagnosticCapture":Z
    .local v4, "diagnosticCapture":Z
    .local v7, "diagnosticStepTotalNanos":J
    .local v19, "diagnosticStepMaxNanos":J
    .restart local v21    # "diagnosticSnapshotNanos":J
    :cond_31
    move/from16 v27, v4

    .end local v4    # "diagnosticCapture":Z
    .restart local v27    # "diagnosticCapture":Z
    :goto_10
    return-void
.end method
