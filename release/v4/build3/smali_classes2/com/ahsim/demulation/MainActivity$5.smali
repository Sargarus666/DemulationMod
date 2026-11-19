.class Lcom/ahsim/demulation/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/Window$OnFrameMetricsAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ahsim/demulation/MainActivity;->startDiagnosticFrameMetrics()V
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

    .line 4912
    iput-object p1, p0, Lcom/ahsim/demulation/MainActivity$5;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameMetricsAvailable(Landroid/view/Window;Landroid/view/FrameMetrics;I)V
    .locals 30
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "metrics"    # Landroid/view/FrameMetrics;
    .param p3, "dropCountSinceLastInvocation"    # I

    .line 4916
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$5;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetdiagnosticLoggingEnabled(Lcom/ahsim/demulation/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4917
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v4

    .line 4918
    .local v4, "total":J
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_a

    const-wide v8, 0x12a05f200L

    cmp-long v0, v4, v8

    if-ltz v0, :cond_1

    move-wide/from16 v21, v4

    move-object v5, v1

    goto/16 :goto_5

    .line 4919
    :cond_1
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$5;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetdiagnosticFrameMetricsLock(Lcom/ahsim/demulation/MainActivity;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 4920
    :try_start_0
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$5;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetdiagnosticPlatformFrameSamples(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v9

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    invoke-static {v0, v9, v10}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputdiagnosticPlatformFrameSamples(Lcom/ahsim/demulation/MainActivity;J)V

    .line 4921
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$5;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetdiagnosticPlatformFrameTotalNs(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v9

    add-long/2addr v9, v4

    invoke-static {v0, v9, v10}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputdiagnosticPlatformFrameTotalNs(Lcom/ahsim/demulation/MainActivity;J)V

    .line 4922
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$5;->this$0:Lcom/ahsim/demulation/MainActivity;

    iget-object v9, v1, Lcom/ahsim/demulation/MainActivity$5;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v9}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetdiagnosticPlatformFrameMaxNs(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v9

    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    invoke-static {v0, v9, v10}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputdiagnosticPlatformFrameMaxNs(Lcom/ahsim/demulation/MainActivity;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4923
    const-wide/32 v9, 0x17d7840

    cmp-long v0, v4, v9

    if-lez v0, :cond_2

    :try_start_1
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$5;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetdiagnosticPlatformOver25(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v9

    add-long/2addr v9, v11

    invoke-static {v0, v9, v10}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputdiagnosticPlatformOver25(Lcom/ahsim/demulation/MainActivity;J)V

    goto :goto_0

    .line 4929
    :catchall_0
    move-exception v0

    move-wide/from16 v21, v4

    move-object v5, v1

    goto/16 :goto_4

    .line 4924
    :cond_2
    :goto_0
    const-wide/32 v9, 0x1f78a40

    cmp-long v0, v4, v9

    if-lez v0, :cond_3

    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$5;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetdiagnosticPlatformOver33(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v9

    add-long/2addr v9, v11

    invoke-static {v0, v9, v10}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputdiagnosticPlatformOver33(Lcom/ahsim/demulation/MainActivity;J)V

    .line 4925
    :cond_3
    const-wide/32 v9, 0x2faf080

    cmp-long v0, v4, v9

    if-lez v0, :cond_4

    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$5;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetdiagnosticPlatformOver50(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v13

    add-long/2addr v13, v11

    invoke-static {v0, v13, v14}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputdiagnosticPlatformOver50(Lcom/ahsim/demulation/MainActivity;J)V

    .line 4926
    :cond_4
    const-wide/32 v13, 0x5f5e100

    cmp-long v0, v4, v13

    if-lez v0, :cond_5

    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$5;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetdiagnosticPlatformOver100(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v13

    add-long/2addr v13, v11

    invoke-static {v0, v13, v14}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputdiagnosticPlatformOver100(Lcom/ahsim/demulation/MainActivity;J)V

    .line 4927
    :cond_5
    if-lez v3, :cond_6

    .line 4928
    iget-object v0, v1, Lcom/ahsim/demulation/MainActivity$5;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetdiagnosticPlatformDroppedReports(Lcom/ahsim/demulation/MainActivity;)J

    move-result-wide v11

    int-to-long v13, v3

    add-long/2addr v11, v13

    invoke-static {v0, v11, v12}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fputdiagnosticPlatformDroppedReports(Lcom/ahsim/demulation/MainActivity;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4929
    :cond_6
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4930
    cmp-long v0, v4, v9

    if-lez v0, :cond_9

    .line 4931
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smdiagnosticFrameMetric(Landroid/view/FrameMetrics;I)J

    move-result-wide v8

    .line 4932
    .local v8, "unknown":J
    const/4 v10, 0x1

    invoke-static {v2, v10}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smdiagnosticFrameMetric(Landroid/view/FrameMetrics;I)J

    move-result-wide v11

    .line 4933
    .local v11, "input":J
    const/4 v13, 0x2

    invoke-static {v2, v13}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smdiagnosticFrameMetric(Landroid/view/FrameMetrics;I)J

    move-result-wide v13

    .line 4934
    .local v13, "animation":J
    const/4 v15, 0x3

    move/from16 v16, v10

    move-wide/from16 v17, v11

    .end local v11    # "input":J
    .local v17, "input":J
    invoke-static {v2, v15}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smdiagnosticFrameMetric(Landroid/view/FrameMetrics;I)J

    move-result-wide v10

    .line 4935
    .local v10, "layout":J
    const/4 v12, 0x4

    invoke-static {v2, v12}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smdiagnosticFrameMetric(Landroid/view/FrameMetrics;I)J

    move-result-wide v6

    .line 4936
    .local v6, "draw":J
    const/4 v12, 0x5

    invoke-static {v2, v12}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smdiagnosticFrameMetric(Landroid/view/FrameMetrics;I)J

    move-result-wide v0

    .line 4937
    .local v0, "sync":J
    const/4 v12, 0x6

    move-wide/from16 v21, v4

    .end local v4    # "total":J
    .local v21, "total":J
    invoke-static {v2, v12}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smdiagnosticFrameMetric(Landroid/view/FrameMetrics;I)J

    move-result-wide v4

    .line 4938
    .local v4, "command":J
    const/4 v12, 0x7

    move-wide/from16 v23, v4

    .end local v4    # "command":J
    .local v23, "command":J
    invoke-static {v2, v12}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smdiagnosticFrameMetric(Landroid/view/FrameMetrics;I)J

    move-result-wide v3

    .line 4939
    .local v3, "swap":J
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1f

    if-lt v5, v12, :cond_7

    .line 4940
    const/16 v5, 0xc

    invoke-static {v2, v5}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smdiagnosticFrameMetric(Landroid/view/FrameMetrics;I)J

    move-result-wide v25

    goto :goto_1

    :cond_7
    const-wide/16 v25, -0x1

    .line 4941
    .local v25, "gpu":J
    :goto_1
    move-object/from16 v5, p0

    iget-object v12, v5, Lcom/ahsim/demulation/MainActivity$5;->this$0:Lcom/ahsim/demulation/MainActivity;

    const-string v15, "ANDROID_FRAME_JANK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v12

    const-string v12, "total_ms="

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v21 .. v22}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smformatMs(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, " unknown_ms="

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4942
    move-wide/from16 v28, v3

    const-wide/16 v3, 0x0

    .end local v3    # "swap":J
    .local v28, "swap":J
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smformatMs(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, " input_ms="

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4943
    move-wide/from16 v19, v8

    move-wide/from16 v8, v17

    .end local v17    # "input":J
    .local v8, "input":J
    .local v19, "unknown":J
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smformatMs(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, " anim_ms="

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4944
    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smformatMs(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, " layout_ms="

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4945
    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smformatMs(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, " draw_ms="

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4946
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smformatMs(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, " sync_ms="

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4947
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smformatMs(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, " command_ms="

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4948
    move-wide/from16 v17, v0

    move-wide/from16 v0, v23

    .end local v23    # "command":J
    .local v0, "command":J
    .local v17, "sync":J
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smformatMs(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, " swap_ms="

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4949
    move-wide/from16 v23, v0

    move-wide/from16 v0, v28

    .end local v28    # "swap":J
    .local v0, "swap":J
    .restart local v23    # "command":J
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smformatMs(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, " gpu_ms="

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4950
    cmp-long v3, v25, v3

    if-ltz v3, :cond_8

    invoke-static/range {v25 .. v26}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$smformatMs(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_8
    const-string v3, "N/A"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$sfgetDIAGNOSTIC_MODE_NAMES()[Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$sfgetDIAGNOSTIC_MODE_NAMES()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    iget-object v12, v5, Lcom/ahsim/demulation/MainActivity$5;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v12}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetdiagnosticPublishedMode(Lcom/ahsim/demulation/MainActivity;)I

    move-result v12

    .line 4951
    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v12, 0x0

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phase="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v5, Lcom/ahsim/demulation/MainActivity$5;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetdiagnosticPublishedPhase(Lcom/ahsim/demulation/MainActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dropped_reports="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4941
    move-object/from16 v4, v27

    invoke-static {v4, v15, v2}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mdiagnosticLog(Lcom/ahsim/demulation/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 4930
    .end local v0    # "swap":J
    .end local v6    # "draw":J
    .end local v8    # "input":J
    .end local v10    # "layout":J
    .end local v13    # "animation":J
    .end local v17    # "sync":J
    .end local v19    # "unknown":J
    .end local v21    # "total":J
    .end local v23    # "command":J
    .end local v25    # "gpu":J
    .local v4, "total":J
    :cond_9
    move-wide/from16 v21, v4

    move-object v5, v1

    .line 4956
    .end local v4    # "total":J
    .restart local v21    # "total":J
    :goto_3
    return-void

    .line 4929
    .end local v21    # "total":J
    .restart local v4    # "total":J
    :catchall_1
    move-exception v0

    move-wide/from16 v21, v4

    move-object v5, v1

    .end local v4    # "total":J
    .restart local v21    # "total":J
    :goto_4
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 4918
    .end local v21    # "total":J
    .restart local v4    # "total":J
    :cond_a
    move-wide/from16 v21, v4

    move-object v5, v1

    .end local v4    # "total":J
    .restart local v21    # "total":J
    :goto_5
    return-void
.end method
