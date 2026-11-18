.class public final synthetic Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

.field public final synthetic f$1:I

.field public final synthetic f$10:Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;

.field public final synthetic f$11:Lcom/ahsim/demulation/RazorDynamicObjects569;

.field public final synthetic f$12:Lcom/ahsim/demulation/RazorRefinery570;

.field public final synthetic f$13:Lcom/ahsim/demulation/RazorConstruction571;

.field public final synthetic f$14:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

.field public final synthetic f$15:I

.field public final synthetic f$16:I

.field public final synthetic f$17:[I

.field public final synthetic f$2:Landroid/graphics/Bitmap;

.field public final synthetic f$3:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

.field public final synthetic f$4:Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;

.field public final synthetic f$5:Z

.field public final synthetic f$6:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;

.field public final synthetic f$7:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

.field public final synthetic f$8:[I

.field public final synthetic f$9:Lcom/ahsim/demulation/RazorScenarioEconomy573;


# direct methods
.method public synthetic constructor <init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;ILandroid/graphics/Bitmap;Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;ZLcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;[ILcom/ahsim/demulation/RazorScenarioEconomy573;Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;Lcom/ahsim/demulation/RazorDynamicObjects569;Lcom/ahsim/demulation/RazorRefinery570;Lcom/ahsim/demulation/RazorConstruction571;Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;II[I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    iput p2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$1:I

    iput-object p3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$2:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$3:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    iput-object p5, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$4:Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;

    iput-boolean p6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$5:Z

    iput-object p7, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$6:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;

    iput-object p8, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$7:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    iput-object p9, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$8:[I

    iput-object p10, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$9:Lcom/ahsim/demulation/RazorScenarioEconomy573;

    iput-object p11, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$10:Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;

    iput-object p12, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$11:Lcom/ahsim/demulation/RazorDynamicObjects569;

    iput-object p13, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$12:Lcom/ahsim/demulation/RazorRefinery570;

    iput-object p14, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$13:Lcom/ahsim/demulation/RazorConstruction571;

    iput-object p15, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$14:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    move/from16 p1, p16

    iput p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$15:I

    move/from16 p1, p17

    iput p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$16:I

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$17:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    iget v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$1:I

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$2:Landroid/graphics/Bitmap;

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$3:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$4:Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;

    iget-boolean v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$5:Z

    iget-object v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$6:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;

    iget-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$7:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    iget-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$8:[I

    iget-object v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$9:Lcom/ahsim/demulation/RazorScenarioEconomy573;

    iget-object v11, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$10:Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;

    iget-object v12, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$11:Lcom/ahsim/demulation/RazorDynamicObjects569;

    iget-object v13, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$12:Lcom/ahsim/demulation/RazorRefinery570;

    iget-object v14, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$13:Lcom/ahsim/demulation/RazorConstruction571;

    iget-object v15, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$14:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    move-object/from16 v16, v1

    iget v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$15:I

    move/from16 v17, v1

    iget v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$16:I

    move/from16 v18, v1

    iget-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;->f$17:[I

    move/from16 v19, v18

    move-object/from16 v18, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move/from16 v17, v19

    invoke-static/range {v1 .. v18}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->$r8$lambda$Q7zdoiUZ4amyG-X2CPXoUvA6ZEU(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;ILandroid/graphics/Bitmap;Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;ZLcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;[ILcom/ahsim/demulation/RazorScenarioEconomy573;Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;Lcom/ahsim/demulation/RazorDynamicObjects569;Lcom/ahsim/demulation/RazorRefinery570;Lcom/ahsim/demulation/RazorConstruction571;Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;II[I)V

    return-void
.end method
