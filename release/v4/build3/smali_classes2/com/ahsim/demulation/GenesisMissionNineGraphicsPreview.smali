.class final Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview;
.super Ljava/lang/Object;
.source "GenesisMissionNineGraphicsPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;,
        Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;
    }
.end annotation


# static fields
.field private static final MAGIC:I = 0x44554e45

.field private static final MAP_OFFSET:I = 0x10

.field private static final STRUCT_OFFSET:I = 0x1210

.field private static final TAG:Ljava/lang/String; = "DuneMission9Preview"

.field private static final TILE:I = 0x20

.field private static final UNIT_OFFSET:I = 0x1010


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$show$0(Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;Landroid/content/DialogInterface;)V
    .locals 1
    .param p0, "map"    # Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;
    .param p1, "d"    # Landroid/content/DialogInterface;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->closed:Z

    return-void
.end method

.method static synthetic lambda$show$1(Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;Landroid/app/Activity;Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;)V
    .locals 1
    .param p0, "map"    # Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;
    .param p1, "owner"    # Landroid/app/Activity;
    .param p2, "frame"    # Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;

    .line 70
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->closed:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->install(Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;)V

    .line 71
    :cond_0
    return-void
.end method

.method static synthetic lambda$show$2(Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 2
    .param p0, "map"    # Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;
    .param p1, "owner"    # Landroid/app/Activity;
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "message"    # Ljava/lang/String;

    .line 77
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;->closed:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 79
    sget v0, Lcom/ahsim/demulation/R$string;->launcher_mission_preview_error:I

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v1

    .line 80
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 83
    :cond_0
    return-void
.end method

.method static synthetic lambda$show$3(Landroid/app/Activity;Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;Landroid/app/Dialog;)V
    .locals 4
    .param p0, "owner"    # Landroid/app/Activity;
    .param p1, "map"    # Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;
    .param p2, "dialog"    # Landroid/app/Dialog;

    .line 68
    :try_start_0
    invoke-static {p0}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview;->load(Landroid/app/Activity;)Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;

    move-result-object v0

    .line 69
    .local v0, "frame":Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p0, v0}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$$ExternalSyntheticLambda2;-><init>(Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;Landroid/app/Activity;Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    nop

    .end local v0    # "frame":Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;
    goto :goto_1

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    .local v0, "error":Ljava/lang/Throwable;
    const-string v1, "DuneMission9Preview"

    const-string v2, "Native original mission preview failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "message":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$$ExternalSyntheticLambda3;

    invoke-direct {v3, p1, p0, p2, v1}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$$ExternalSyntheticLambda3;-><init>(Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    .end local v0    # "error":Ljava/lang/Throwable;
    .end local v1    # "message":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method private static load(Landroid/app/Activity;)Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;
    .locals 14
    .param p0, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->activeRuntimeBundle(Landroid/content/Context;)Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;

    move-result-object v0

    .line 91
    .local v0, "ready":Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;
    iget-object v1, v0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->worldDataAssets:Lcom/ahsim/demulation/RomRuntimeWorldDataAssets;

    invoke-virtual {v1}, Lcom/ahsim/demulation/RomRuntimeWorldDataAssets;->readMapScenarioLayout()[B

    move-result-object v1

    .line 92
    .local v1, "world":[B
    iget-object v2, v0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->gameplayDataAssets:Lcom/ahsim/demulation/RomRuntimeGameplayDataAssets;

    invoke-virtual {v2}, Lcom/ahsim/demulation/RomRuntimeGameplayDataAssets;->readUnitStructureParameters()[B

    move-result-object v2

    .line 93
    .local v2, "gameplay":[B
    iget-object v3, v0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->nativeDataAssets:Lcom/ahsim/demulation/RomRuntimeNativeDataAssets;

    invoke-virtual {v3}, Lcom/ahsim/demulation/RomRuntimeNativeDataAssets;->readRemainingPureData()[B

    move-result-object v3

    .line 94
    .local v3, "nativeData":[B
    const-wide/16 v4, 0x0

    .line 98
    .local v4, "host":J
    const-wide/16 v6, 0x0

    :try_start_0
    const-string v8, "bootstrap/SCENA009.INI"

    const/16 v9, 0x8

    invoke-static {v1, v2, v3, v8, v9}, Lcom/ahsim/demulation/MainActivity;->nativeCreateRecovered([B[B[BLjava/lang/String;I)J

    move-result-wide v8

    move-wide v4, v8

    .line 100
    cmp-long v8, v4, v6

    if-eqz v8, :cond_3

    invoke-static {v4, v5}, Lcom/ahsim/demulation/MainActivity;->nativeStartOwnerExecution(J)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 102
    invoke-static {}, Lcom/ahsim/demulation/MainActivity;->nativeRenderWordCount()I

    move-result v8

    .line 103
    .local v8, "count":I
    invoke-static {}, Lcom/ahsim/demulation/MainActivity;->nativeUnitRenderAuxWordCount()I

    move-result v9

    .line 104
    .local v9, "auxCount":I
    const/16 v10, 0x1810

    if-lt v8, v10, :cond_2

    const/high16 v10, 0x10000

    if-gt v8, v10, :cond_2

    const/16 v10, 0x80

    if-ne v9, v10, :cond_2

    .line 106
    new-array v10, v8, [I

    .line 107
    .local v10, "render":[I
    new-array v11, v9, [I

    .line 108
    .local v11, "unitAux":[I
    invoke-static {v4, v5, v10}, Lcom/ahsim/demulation/MainActivity;->nativeFillRenderSnapshot(J[I)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 109
    invoke-static {v4, v5, v11}, Lcom/ahsim/demulation/MainActivity;->nativeFillUnitRenderAux(J[I)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x0

    aget v12, v10, v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v13, 0x44554e45

    if-ne v12, v13, :cond_1

    .line 113
    .end local v8    # "count":I
    .end local v9    # "auxCount":I
    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    invoke-static {v4, v5}, Lcom/ahsim/demulation/MainActivity;->nativeDestroy(J)V

    .line 116
    :cond_0
    new-instance v6, Lcom/ahsim/demulation/GenesisTerrainArt;

    iget-object v7, v0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->worldAssets:Lcom/ahsim/demulation/RomRuntimeWorldAssets;

    invoke-direct {v6, v7}, Lcom/ahsim/demulation/GenesisTerrainArt;-><init>(Lcom/ahsim/demulation/RomRuntimeWorldAssets;)V

    .line 117
    .local v6, "terrain":Lcom/ahsim/demulation/GenesisTerrainArt;
    new-instance v7, Lcom/ahsim/demulation/GenesisObjectArt;

    iget-object v8, v0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->worldAssets:Lcom/ahsim/demulation/RomRuntimeWorldAssets;

    invoke-direct {v7, v8, v6}, Lcom/ahsim/demulation/GenesisObjectArt;-><init>(Lcom/ahsim/demulation/RomRuntimeWorldAssets;Lcom/ahsim/demulation/GenesisTerrainArt;)V

    .line 118
    .local v7, "objects":Lcom/ahsim/demulation/GenesisObjectArt;
    new-instance v8, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;

    invoke-direct {v8, v10, v11, v6, v7}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;-><init>([I[ILcom/ahsim/demulation/GenesisTerrainArt;Lcom/ahsim/demulation/GenesisObjectArt;)V

    return-object v8

    .line 111
    .end local v6    # "terrain":Lcom/ahsim/demulation/GenesisTerrainArt;
    .end local v7    # "objects":Lcom/ahsim/demulation/GenesisObjectArt;
    .restart local v8    # "count":I
    .restart local v9    # "auxCount":I
    :cond_1
    :try_start_1
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Mission snapshot failed integrity check"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ready":Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;
    .end local v1    # "world":[B
    .end local v2    # "gameplay":[B
    .end local v3    # "nativeData":[B
    .end local v4    # "host":J
    .end local p0    # "context":Landroid/app/Activity;
    throw v12

    .line 105
    .end local v10    # "render":[I
    .end local v11    # "unitAux":[I
    .restart local v0    # "ready":Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;
    .restart local v1    # "world":[B
    .restart local v2    # "gameplay":[B
    .restart local v3    # "nativeData":[B
    .restart local v4    # "host":J
    .restart local p0    # "context":Landroid/app/Activity;
    :cond_2
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Unexpected render snapshot layout"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ready":Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;
    .end local v1    # "world":[B
    .end local v2    # "gameplay":[B
    .end local v3    # "nativeData":[B
    .end local v4    # "host":J
    .end local p0    # "context":Landroid/app/Activity;
    throw v10

    .line 101
    .end local v8    # "count":I
    .end local v9    # "auxCount":I
    .restart local v0    # "ready":Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;
    .restart local v1    # "world":[B
    .restart local v2    # "gameplay":[B
    .restart local v3    # "nativeData":[B
    .restart local v4    # "host":J
    .restart local p0    # "context":Landroid/app/Activity;
    :cond_3
    new-instance v8, Ljava/io/IOException;

    const-string v9, "SCENA009.INI initial state unavailable"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ready":Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;
    .end local v1    # "world":[B
    .end local v2    # "gameplay":[B
    .end local v3    # "nativeData":[B
    .end local v4    # "host":J
    .end local p0    # "context":Landroid/app/Activity;
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .restart local v0    # "ready":Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;
    .restart local v1    # "world":[B
    .restart local v2    # "gameplay":[B
    .restart local v3    # "nativeData":[B
    .restart local v4    # "host":J
    .restart local p0    # "context":Landroid/app/Activity;
    :catchall_0
    move-exception v8

    cmp-long v6, v4, v6

    if-eqz v6, :cond_4

    invoke-static {v4, v5}, Lcom/ahsim/demulation/MainActivity;->nativeDestroy(J)V

    .line 114
    :cond_4
    throw v8
.end method

.method static show(Landroid/app/Activity;)V
    .locals 8
    .param p0, "owner"    # Landroid/app/Activity;

    .line 40
    sget-object v0, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->MEDIA_MOD:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-static {p0, v0}, Lcom/ahsim/demulation/RomSelectionStore;->loadOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    move-result-object v0

    .line 42
    .local v0, "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    invoke-static {p0}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->loadActive(Landroid/content/Context;)Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;

    move-result-object v1

    .line 43
    .local v1, "graphics":Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    iget-object v3, v0, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    iget-object v4, v1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->sourceSha256:Ljava/lang/String;

    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 45
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->recoverAndIsBundleReady(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 51
    .local v3, "dialog":Landroid/app/Dialog;
    invoke-virtual {v3, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 52
    new-instance v2, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;

    invoke-direct {v2, p0}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;-><init>(Landroid/app/Activity;)V

    .line 53
    .local v2, "map":Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;
    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 54
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 55
    .local v4, "window":Landroid/view/Window;
    const/4 v5, -0x1

    if-eqz v4, :cond_1

    .line 56
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v7, -0x1000000

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setLayout(II)V

    .line 59
    const/16 v6, 0x400

    invoke-virtual {v4, v6}, Landroid/view/Window;->addFlags(I)V

    .line 60
    const v6, 0x3f333333    # 0.7f

    invoke-virtual {v4, v6}, Landroid/view/Window;->setDimAmount(F)V

    .line 62
    :cond_1
    new-instance v6, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$$ExternalSyntheticLambda0;

    invoke-direct {v6, v2}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$$ExternalSyntheticLambda0;-><init>(Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;)V

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 63
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 64
    if-eqz v4, :cond_2

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setLayout(II)V

    .line 66
    :cond_2
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v2, v3}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;Landroid/app/Dialog;)V

    const-string v7, "dune-mission9-preview"

    invoke-direct {v5, v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 86
    return-void

    .line 46
    .end local v2    # "map":Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$MapView;
    .end local v3    # "dialog":Landroid/app/Dialog;
    .end local v4    # "window":Landroid/view/Window;
    :cond_3
    :goto_0
    sget v3, Lcom/ahsim/demulation/R$string;->launcher_mission_preview_error:I

    sget v4, Lcom/ahsim/demulation/R$string;->launcher_mod_status_none:I

    .line 47
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 46
    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 47
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 48
    return-void
.end method
