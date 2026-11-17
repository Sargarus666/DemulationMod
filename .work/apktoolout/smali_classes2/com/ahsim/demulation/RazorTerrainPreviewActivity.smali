.class public final Lcom/ahsim/demulation/RazorTerrainPreviewActivity;
.super Landroid/app/Activity;
.source "RazorTerrainPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;
    }
.end annotation


# static fields
.field private static final ACCENT:I = -0x264d94

.field private static final BG:I = -0xefebe6

.field public static final EXTRA_GAME_PROFILE558:Ljava/lang/String; = "razor_map558_profile"

.field public static final EXTRA_HOUSE558:Ljava/lang/String; = "razor_map558_house"

.field public static final EXTRA_MISSION558:Ljava/lang/String; = "razor_map558_mission"

.field public static final EXTRA_QUICK_PLAY662:Ljava/lang/String; = "razor_quick_play662"

.field private static final MAX_RAW_BYTES:I = 0x400200

.field private static final MUTED:I = -0x3d3935

.field private static final RAZOR_ART_PREFS741:Ljava/lang/String; = "razor_tactical_art741"

.field private static final RAZOR_ART_URI741:Ljava/lang/String; = "classic_uri"

.field private static final REQUEST_RAZOR_ART_ROM741:I = 0x2e5

.field private static final STRUCTURE_NAMES674:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "RazorTerrainPreview"

.field private static final TEXT:I = -0xf1017

.field private static final UNIT_NAMES674:[Ljava/lang/String;


# instance fields
.field private volatile artFrameError740:Ljava/lang/String;

.field private volatile artStatus740:Ljava/lang/String;

.field private autoStartPending662:Z

.field private bootStatus:Landroid/widget/TextView;

.field private buildOwner716:[I

.field private buildStatus715:[I

.field private buildingFacts572:Landroid/widget/TextView;

.field private burstFrames736:I

.field private campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

.field private campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

.field private campaignSubtiles565:[I

.field private canvasBitmap:Landroid/graphics/Bitmap;

.field private changingMission674:Z

.field private classicCursorX678:I

.field private classicCursorY678:I

.field private volatile classicViewHeight678:I

.field private volatile classicViewWidth678:I

.field private construction571:Lcom/ahsim/demulation/RazorConstruction571;

.field private coordinates:Landroid/widget/TextView;

.field private coreCadence668:[I

.field private corePass667:[I

.field private coreSnapshot663:Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;

.field private creditsText743:Landroid/widget/TextView;

.field private currentProof729:Lcom/ahsim/demulation/RazorTickEvidence729;

.field private demoHandle569:I

.field private demoPending569:Z

.field private deployButton726:Landroid/widget/Button;

.field private deployedSource726:I

.field private volatile destroyed:Z

.field private dynamicObjects569:Lcom/ahsim/demulation/RazorDynamicObjects569;

.field private economyFacts573:Landroid/widget/TextView;

.field private emcOwner673:[I

.field private emcStatus:Landroid/widget/TextView;

.field private emcStatus671:[I

.field private emcStatus672:[I

.field private volatile exportingDiagnostics749:Z

.field private facing666:[I

.field private finance576:Lcom/ahsim/demulation/RazorFinanceLive576;

.field private financeButton576:Landroid/widget/Button;

.field private focusOldX749:I

.field private focusOldY749:I

.field private followButton663:Landroid/widget/Button;

.field private followSelected663:Z

.field private frameArming634:Z

.field private frameButton634:Landroid/widget/Button;

.field private volatile frameGeneration634:I

.field private frameInFlight634:Z

.field private final framePulse634:Landroid/view/Choreographer$FrameCallback;

.field private frameRunning634:Z

.field private frameStatus634:Landroid/widget/TextView;

.field private gameBar674:Landroid/widget/TextView;

.field private volatile gameViewportRatio675:F

.field private gameplaySpritesAvailable674:Z

.field private houseLabel676:Landroid/widget/TextView;

.field private houseSpinner:Landroid/widget/Spinner;

.field private hpFill743:Landroid/view/View;

.field private hpText743:Landroid/widget/TextView;

.field private hpTrack743:Landroid/widget/FrameLayout;

.field private lastCanvasWarning749:Ljava/lang/String;

.field private lastFrameFailure749:Ljava/lang/String;

.field private lastHp743:I

.field private lastMaxHp743:I

.field private lastMissingArtType740:I

.field private lastProbeEvidenceZip:Ljava/io/File;

.field private lastProbeFailure:Ljava/lang/String;

.field private lastProbeOutcome:Ljava/lang/String;

.field private lastPulseFailure729:Ljava/lang/String;

.field private lastTurnAngle753:I

.field private lastTurnUnit753:I

.field private lifecycleDemoButton569:Landroid/widget/Button;

.field private liveWorld:Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;

.field private mapActionPending559:Z

.field private mapAdvance559:Landroid/widget/Button;

.field private mapCancel559:Landroid/widget/Button;

.field private mapHint559:Landroid/widget/TextView;

.field private mapView:Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;

.field private missionSpinner:Landroid/widget/Spinner;

.field private nativeModeButton:Landroid/widget/Button;

.field private nativeObjects:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;

.field private navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

.field private objectDetails:Landroid/widget/TextView;

.field private objectFrame:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;

.field private objectModeButton:Landroid/widget/Button;

.field private observedCps736:D

.field private volatile originalSprites674:Lcom/ahsim/demulation/GenesisObjectArt;

.field private ownerHud743:[I

.field private paletteSpinner:Landroid/widget/Spinner;

.field private panFrameRequested679:Z

.field private pauseButton674:Landroid/widget/Button;

.field private pauseReason740:Ljava/lang/String;

.field private pendingSelectionFocus749:Z

.field private portraitBitmap676:Landroid/graphics/Bitmap;

.field private profile558:Z

.field private progress:Landroid/widget/ProgressBar;

.field private quickHud662:Landroid/widget/TextView;

.field private quickPlay662:Z

.field private rateStartNs736:J

.field private rateStartTicks736:I

.field private final razorPacer736:Lcom/ahsim/demulation/RazorFramePacer736;

.field private refinery570:Lcom/ahsim/demulation/RazorRefinery570;

.field private refineryButton570:Landroid/widget/Button;

.field private refineryFacts572:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

.field private renderFailure749:I

.field private renderSuccess749:I

.field private volatile requestedGeneration:I

.field private resumeAfterBackground741:Z

.field private retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

.field private routeWitness664:Lcom/ahsim/demulation/RazorCoreRoute664;

.field private final runtimeDiagnostics749:Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;

.field private sandboxButton560:Landroid/widget/Button;

.field private final sandboxClock560:Landroid/os/Handler;

.field private sandboxInFlight560:Z

.field private sandboxMoves560:I

.field private final sandboxPulse560:Ljava/lang/Runnable;

.field private sandboxRunning560:Z

.field private sandboxTicks560:I

.field private selectedBuilding674:I

.field private selectedEnemy674:I

.field private selectedObject:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;

.field private selectedUnitOrdinal559:I

.field private selectionCount749:I

.field private selectorsReady:Z

.field private shareProbeButton:Landroid/widget/Button;

.field private showObjectMarkers:Z

.field private final smoothCamera679:Lcom/ahsim/demulation/RazorSmoothCamera679;

.field private source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

.field private speedButton670:Landroid/widget/Button;

.field private speedEnabled670:Z

.field private speedStatus670:[I

.field private status:Landroid/widget/TextView;

.field private stopButton676:Landroid/widget/Button;

.field private structureDimensions674:[[I

.field private terrainCols679:I

.field private terrainOriginX679:I

.field private terrainOriginY679:I

.field private terrainRows679:I

.field private unitInfo669:[I

.field private unitPortrait676:Landroid/widget/ImageView;

.field private useNativeFrames:Z

.field private verifiedStartingCredits743:I

.field private final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$1aCEq95-rXZvQ030NWEaB0j3iHs(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$buildUi$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2HTACvkRblJhoaDe28PYyzqynNI(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$requestMapCommand559$48()V

    return-void
.end method

.method public static synthetic $r8$lambda$3zxeg4tMFMRxze9N9ZVQVUhh4PI(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;ILcom/ahsim/demulation/RazorCampaignNativeSession;[ILcom/ahsim/demulation/RazorCampaignMapSnapshot559;IZLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$requestDeployMcv726$23(ILcom/ahsim/demulation/RazorCampaignNativeSession;[ILcom/ahsim/demulation/RazorCampaignMapSnapshot559;IZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$47ciSk4AEo4PAQFTKxQpyS4X0sw(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$buildUi$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4BmpSgMj2TGZA0GfDt_Zitz4UTU(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$requestMapCommand559$47(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4RxBNPws0ivdA_eESGQX9FOorPc(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$buildUi$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5h4LFlDn0Ajpl4i_JLFAofecITQ(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;ILjava/lang/String;[I[I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$deliverFrame634$60(ILjava/lang/String;[I[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$8_kBWAfGyZzkl-vW9R3W6b19Hug(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;IIILjava/lang/String;Lcom/ahsim/demulation/RazorConstruction571;ILcom/ahsim/demulation/RazorRefinery570;Lcom/ahsim/demulation/RazorDynamicObjects569;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$requestConstruction571$52(IIILjava/lang/String;Lcom/ahsim/demulation/RazorConstruction571;ILcom/ahsim/demulation/RazorRefinery570;Lcom/ahsim/demulation/RazorDynamicObjects569;)V

    return-void
.end method

.method public static synthetic $r8$lambda$90aYTRaJ63BAh2Bb6MiMHWhh5CY(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$installGameSurface674$21(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A260MC9QsOySZ4zy3H3z2TMyFYc(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;IIILjava/lang/String;Lcom/ahsim/demulation/RazorFinanceLive576;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$requestFinance576$54(IIILjava/lang/String;Lcom/ahsim/demulation/RazorFinanceLive576;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CcSIUP5c8J0dz4Qm3fxXIRgW9iw(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$buildUi$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EXkfU1iCqbgCY3BZtb9Gup62Eac(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$buildUi$18(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EXsqXpCDn7uUstQrjSOi12Hm7H0(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$showRazorDiagnostics741$26(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FfvFS10s1Zie9hnsb2JS2Fbwwvs(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;IIJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$deliverFrame634$61(IIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fvhe_grlTK3X-0VScQq-NTfwj78(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;IIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$requestMapCommand559$49(IIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$H-teyP3wpOJaRUqLwh-V4RRrlHo(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$requestFinance576$55(IIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$H7pxvASQMSuYCb2S_hozZmfIu-0(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I[ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$toggleSpeed670$63(I[ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H8R1BIts4rJXdsFpwiDrTeJA8IQ(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;IIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$requestLifecycleDemo569$51(IIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$HCUBTdydXFlm5przlOtLSE0jrV4(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$updateGameBar674$34(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$JMJ_eT8j6qXeQ7mvma_Yy3YSNFQ(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$stopFrame634$62()V

    return-void
.end method

.method public static synthetic $r8$lambda$JhluiH3lAxUtttWeG5bg2UvKDvY(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$failure$69(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KeJyscal90SipVeU-AtXz1hvXb8(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$buildUi$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MKZfy1jHLFGAcyHywaNPTGduYGw(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;Lcom/ahsim/demulation/RazorGameRomStore$Entry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$openSelectedMod$36(Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;Lcom/ahsim/demulation/RazorGameRomStore$Entry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NhR__1fiw6yzQQZ3TIdPvQfh-rE(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->deliverFrame634(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ox33AjC8m9FPSe2pWGUTaTwMcRM(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Lcom/ahsim/demulation/RazorTerrainPreviewSource;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$openSelectedMod$35(Lcom/ahsim/demulation/RazorTerrainPreviewSource;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q7zdoiUZ4amyG-X2CPXoUvA6ZEU(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;ILandroid/graphics/Bitmap;Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;ZLcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;[ILcom/ahsim/demulation/RazorScenarioEconomy573;Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;Lcom/ahsim/demulation/RazorDynamicObjects569;Lcom/ahsim/demulation/RazorRefinery570;Lcom/ahsim/demulation/RazorConstruction571;Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;II[I)V
    .locals 0

    invoke-direct/range {p0 .. p17}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$requestFrame$37(ILandroid/graphics/Bitmap;Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;ZLcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;[ILcom/ahsim/demulation/RazorScenarioEconomy573;Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;Lcom/ahsim/demulation/RazorDynamicObjects569;Lcom/ahsim/demulation/RazorRefinery570;Lcom/ahsim/demulation/RazorConstruction571;Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;II[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QF0Dkl2RNNlqlRMYGRE_jiGiG9E(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$installGameSurface674$19(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RH2LtQUe1Lh5V1V6fA_GRPbSyJs(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;ILjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$shareRazorDiagnostics$41(ILjava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rq7_7iV99tiag8c50g-sB0r2faU(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$shareMovementTrace562$56(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rt5GkbNGrGGxdJZgjrXM111hJCM(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;IIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$requestConstruction571$53(IIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$TSznakE1tX-GU90GTLwY0PjrRE0(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Ljava/lang/String;Lcom/ahsim/demulation/GenesisObjectArt;ZLandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$onActivityResult$30(Ljava/lang/String;Lcom/ahsim/demulation/GenesisObjectArt;ZLandroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VMdc9I0rLZqHXf9Dg919rg8_2XE(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;IILjava/lang/String;IILcom/ahsim/demulation/RazorDynamicObjects569;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$requestLifecycleDemo569$50(IILjava/lang/String;IILcom/ahsim/demulation/RazorDynamicObjects569;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VlcmsT6WggPOOHR4-9F5i12QFVA(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$showPlayMenu676$25(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$W--2k83X4a824OeyjRxS1HeaCn0(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$buildUi$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WEP6Poid-iWUTVU072C1tXib-wo(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Ljava/lang/Exception;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$shareRuntimeDiagnostics749$28(Ljava/lang/Exception;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wh7N63OEgMf5ly3qhUB7EO2uZCw(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;[ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$showMissionSelector674$33([ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XC5SEXjIDi3ZDtZofh8yDCC4hl8(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$shareMovementTrace562$57()V

    return-void
.end method

.method public static synthetic $r8$lambda$YDJiktK85C8hLhz4MFq4TfnbLwk(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Lcom/ahsim/demulation/RazorCampaignNativeSession;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$requestDeployMcv726$24(Lcom/ahsim/demulation/RazorCampaignNativeSession;IIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ye-upCkZtr8I06Xj7GbmTIrDoDU(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZnKuW53RwWvMBDncpVhF98vgeH8(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$buildUi$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bC9XMPVb4NxddE_yTryLYrFmMIs(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/net/Uri;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$onActivityResult$31(Landroid/net/Uri;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$dvGabIzPV7Xpc7wYlBb3jV4C20I(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Ljava/lang/String;Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;III[IILcom/ahsim/demulation/RazorTickEvidence729;[I[I[I[I[I[I[I[ILcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;Lcom/ahsim/demulation/RazorCoreRoute664;[I[ILcom/ahsim/demulation/RazorDynamicObjects569;)V
    .locals 0

    invoke-direct/range {p0 .. p22}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$executeSandboxPulse560$65(Ljava/lang/String;Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;III[IILcom/ahsim/demulation/RazorTickEvidence729;[I[I[I[I[I[I[I[ILcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;Lcom/ahsim/demulation/RazorCoreRoute664;[I[ILcom/ahsim/demulation/RazorDynamicObjects569;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e1NIEu2ReWMqi8G7RmOjMMf_ll4(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$buildUi$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$edaYAXGmB5oE2Kq2nf1JJ2teE2Q(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$onResume$67()V

    return-void
.end method

.method public static synthetic $r8$lambda$fJqhotaVhIJneh4NwpOF9ouTV9s(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$shareRuntimeDiagnostics749$29(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ffg87pyehOcW_L-Qg7NyC9VhxJ0(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$buildUi$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g8AqRVdnyl0z7AlzJa9e7sVe22Q(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$buildUi$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hg-YV5f6T-DEFfv07uHx2Jd3nzA(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$buildUi$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i3LQjmifr_7LrB_lhCm6vfdzehE(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$executeSandboxPulse560$66(IIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$iGWVUO8ZZBFYF-8cAkt7-MOJioE(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$buildUi$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jcqC4AwSxKNNmw_eFmHhdN3rB_o(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$buildUi$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kGQf5IxvZRX5pZQ_Nf63jRHJ_tQ(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$onDestroy$70()V

    return-void
.end method

.method public static synthetic $r8$lambda$kHbWBru4ayRlHCOV42njhLmGydE(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$buildUi$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kxpQ6iD944qrRai-cVfoC3V8_Gs(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;IIILcom/ahsim/demulation/RazorTerrainVisualSource$Audit;[BLcom/ahsim/demulation/RazorTerrainPreviewSource;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$requestBootProbe$45(IIILcom/ahsim/demulation/RazorTerrainVisualSource$Audit;[BLcom/ahsim/demulation/RazorTerrainPreviewSource;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lFei8WuYnKT0p5bTzamcjxBl_mQ(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$buildUi$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$llUAV8dthRdqdna_m81SJohD0dI(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$toggleFrame634$59(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$nf2-4W61ieNCF87209rRm6Yx89g(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$installGameSurface674$22(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nvoKixR5xnfibbT0C3rK-Lk7U2I(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;ILcom/ahsim/demulation/RazorTerrainPreviewSource;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$shareRazorDiagnostics$40(ILcom/ahsim/demulation/RazorTerrainPreviewSource;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oPyM0Dn2-5V8ou1H_wUDW-doSrM(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$buildUi$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oej2PoHBQDZedIm0JXglfhUjifw(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$installGameSurface674$20(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p4fEFCzea1iTtFTlCIFFJVGYG1I(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Lcom/ahsim/demulation/RazorTerrainPreviewSource;IILcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$shareRazorDiagnostics$42(Lcom/ahsim/demulation/RazorTerrainPreviewSource;IILcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qw9M5wW9YJybf2IqGtH-gBgc1ew(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$toggleSpeed670$64(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$rR25NQm0phfVm24semmUWPLXTFY(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$buildUi$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$siDFQ1381Wo_XDJimQPgLitXWsE(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;ILcom/ahsim/demulation/RazorTerrainVisualSource$Audit;Lcom/ahsim/demulation/RazorNativeWorldSession$Status;Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$requestBootProbe$43(ILcom/ahsim/demulation/RazorTerrainVisualSource$Audit;Lcom/ahsim/demulation/RazorNativeWorldSession$Status;Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u6r9lGsDJReoqMazwSCj4V-Jo0Y(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;IILcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;Lcom/ahsim/demulation/RazorCoreRoute664;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$requestMapCommand559$46(IILcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;Lcom/ahsim/demulation/RazorCoreRoute664;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u6uvfyvCCLLS59_f5lrl1gZolso(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;ZIIILcom/ahsim/demulation/RazorTerrainPreviewNavigator;ZIZ)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$requestFrame$39(ZIIILcom/ahsim/demulation/RazorTerrainPreviewNavigator;ZIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$vNYNCtao4V9bOlYtA84RfZxXEk8(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;[ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$showMissionSelector674$32([ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vcj3vojCN5rhJ_9KBD8KPLeRxhI(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$requestBootProbe$44(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vgnFUqQE1zeww6_LEyw5nlY9Z24(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$onResume$68()V

    return-void
.end method

.method public static synthetic $r8$lambda$wwWC-SyTxnnGYWwZu8QRl5bgSSU(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$toggleFrame634$58(IZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xPrO5TMCPkPUCA0o05nDKs-_1mk(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$requestFrame$38(ILjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$y-g3GyXOhIvTZaB-x7TJLsGibS4(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lambda$showRazorDiagnostics741$27(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcampaignMapFrame559(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .locals 0

    iget-object p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcampaignSubtiles565(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)[I
    .locals 0

    iget-object p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignSubtiles565:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcanvasBitmap(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->canvasBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchangingMission674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->changingMission674:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetclassicCursorX678(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I
    .locals 0

    iget p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->classicCursorX678:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetclassicCursorY678(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I
    .locals 0

    iget p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->classicCursorY678:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetconstruction571(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorConstruction571;
    .locals 0

    iget-object p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->construction571:Lcom/ahsim/demulation/RazorConstruction571;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdemoHandle569(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I
    .locals 0

    iget p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->demoHandle569:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdemoPending569(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->demoPending569:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdynamicObjects569(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorDynamicObjects569;
    .locals 0

    iget-object p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dynamicObjects569:Lcom/ahsim/demulation/RazorDynamicObjects569;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfacing666(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)[I
    .locals 0

    iget-object p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->facing666:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfollowSelected663(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->followSelected663:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgameBar674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameBar674:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethouseSpinner(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastCanvasWarning749(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastCanvasWarning749:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastHp743(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I
    .locals 0

    iget p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastHp743:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastMaxHp743(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I
    .locals 0

    iget p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastMaxHp743:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastMissingArtType740(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I
    .locals 0

    iget p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastMissingArtType740:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmapActionPending559(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapActionPending559:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnavigator(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;
    .locals 0

    iget-object p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetobjectDetails(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->objectDetails:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetobjectFrame(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    .locals 0

    iget-object p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->objectFrame:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoriginalSprites674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/GenesisObjectArt;
    .locals 0

    iget-object p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->originalSprites674:Lcom/ahsim/demulation/GenesisObjectArt;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpaletteSpinner(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->paletteSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpanFrameRequested679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->panFrameRequested679:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetprofile558(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetquickPlay662(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrefinery570(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorRefinery570;
    .locals 0

    iget-object p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->refinery570:Lcom/ahsim/demulation/RazorRefinery570;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrouteWitness664(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorCoreRoute664;
    .locals 0

    iget-object p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->routeWitness664:Lcom/ahsim/demulation/RazorCoreRoute664;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetruntimeDiagnostics749(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;
    .locals 0

    iget-object p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runtimeDiagnostics749:Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsandboxTicks560(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I
    .locals 0

    iget p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxTicks560:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedBuilding674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I
    .locals 0

    iget p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedBuilding674:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedEnemy674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I
    .locals 0

    iget p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedEnemy674:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedObject(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;
    .locals 0

    iget-object p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedObject:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedUnitOrdinal559(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I
    .locals 0

    iget p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetselectionCount749(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I
    .locals 0

    iget p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectionCount749:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetselectorsReady(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectorsReady:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetshareProbeButton(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->shareProbeButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshowObjectMarkers(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->showObjectMarkers:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsmoothCamera679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorSmoothCamera679;
    .locals 0

    iget-object p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->smoothCamera679:Lcom/ahsim/demulation/RazorSmoothCamera679;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsource(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewSource;
    .locals 0

    iget-object p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstructureDimensions674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)[[I
    .locals 0

    iget-object p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->structureDimensions674:[[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetterrainCols679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I
    .locals 0

    iget p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->terrainCols679:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetterrainOriginX679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I
    .locals 0

    iget p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->terrainOriginX679:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetterrainOriginY679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I
    .locals 0

    iget p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->terrainOriginY679:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetterrainRows679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)I
    .locals 0

    iget p0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->terrainRows679:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputartFrameError740(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->artFrameError740:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputclassicCursorX678(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V
    .locals 0

    iput p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->classicCursorX678:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputclassicCursorY678(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V
    .locals 0

    iput p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->classicCursorY678:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputclassicViewHeight678(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V
    .locals 0

    iput p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->classicViewHeight678:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputclassicViewWidth678(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V
    .locals 0

    iput p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->classicViewWidth678:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfocusOldX749(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V
    .locals 0

    iput p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->focusOldX749:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfocusOldY749(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V
    .locals 0

    iput p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->focusOldY749:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfollowSelected663(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->followSelected663:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputgameViewportRatio675(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;F)V
    .locals 0

    iput p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameViewportRatio675:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastCanvasWarning749(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastCanvasWarning749:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastMissingArtType740(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V
    .locals 0

    iput p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastMissingArtType740:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastProbeEvidenceZip(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastProbeEvidenceZip:Ljava/io/File;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastProbeFailure(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastProbeFailure:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastProbeOutcome(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastProbeOutcome:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpanFrameRequested679(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->panFrameRequested679:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpendingSelectionFocus749(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->pendingSelectionFocus749:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrouteWitness664(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Lcom/ahsim/demulation/RazorCoreRoute664;)V
    .locals 0

    iput-object p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->routeWitness664:Lcom/ahsim/demulation/RazorCoreRoute664;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselectedBuilding674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V
    .locals 0

    iput p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedBuilding674:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselectedEnemy674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V
    .locals 0

    iput p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedEnemy674:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselectedObject(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;)V
    .locals 0

    iput-object p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedObject:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselectedUnitOrdinal559(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V
    .locals 0

    iput p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselectionCount749(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)V
    .locals 0

    iput p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectionCount749:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;F)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(F)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdp(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgameBuildingAt674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;II)Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameBuildingAt674(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;II)Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrequestConstruction571(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestConstruction571(III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestFrame(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestFrame(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestLifecycleDemo569(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestLifecycleDemo569(III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestMapCommand559(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestMapCommand559(IIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mselectedUnitLabel566(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitLabel566(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateGameBar674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateGameBar674()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMapActions559(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateMapActions559()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 23

    .line 81
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0422\u0440\u0430\u043d\u0441\u043f\u043e\u0440\u0442\u043d\u0438\u043a"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "\u041e\u0440\u043d\u0438\u0442\u043e\u043f\u0442\u0435\u0440"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "\u041f\u0435\u0445\u043e\u0442\u0430"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "\u0420\u0430\u043a\u0435\u0442\u043d\u0430\u044f \u043f\u0435\u0445\u043e\u0442\u0430"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "\u0421\u043e\u043b\u0434\u0430\u0442"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "\u0413\u0440\u0430\u043d\u0430\u0442\u043e\u043c\u0451\u0442\u0447\u0438\u043a"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "\u0414\u0438\u0432\u0435\u0440\u0441\u0430\u043d\u0442"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-string v1, "\u0420\u0430\u043a\u0435\u0442\u043d\u0438\u0446\u0430"

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const-string v1, "\u0414\u0435\u0432\u0438\u0430\u0442\u043e\u0440"

    const/16 v10, 0x8

    aput-object v1, v0, v10

    const-string v1, "\u0422\u0430\u043d\u043a"

    const/16 v11, 0x9

    aput-object v1, v0, v11

    const-string v1, "\u0422\u044f\u0436\u0451\u043b\u044b\u0439 \u0442\u0430\u043d\u043a"

    const/16 v12, 0xa

    aput-object v1, v0, v12

    const-string v1, "\u0414\u0435\u0432\u0430\u0441\u0442\u0430\u0442\u043e\u0440"

    const/16 v13, 0xb

    aput-object v1, v0, v13

    const-string v1, "\u0421\u043e\u043d\u0438\u043a-\u0442\u0430\u043d\u043a"

    const/16 v14, 0xc

    aput-object v1, v0, v14

    const-string v1, "\u041c\u043e\u0442\u043e\u0446\u0438\u043a\u043b"

    const/16 v15, 0xd

    aput-object v1, v0, v15

    const-string v1, "\u0420\u0435\u0439\u0434\u0435\u0440"

    const/16 v16, 0xe

    aput-object v1, v0, v16

    const-string v1, "\u041a\u0432\u0430\u0434"

    const/16 v17, 0xf

    aput-object v1, v0, v17

    const-string v1, "\u0425\u0430\u0440\u0432\u0435\u0441\u0442\u0435\u0440"

    const/16 v18, 0x10

    aput-object v1, v0, v18

    const-string v1, "\u041c\u0421\u0426"

    const/16 v19, 0x11

    aput-object v1, v0, v19

    const-string v1, "\u0420\u0430\u043a\u0435\u0442\u0430 \u0414\u0432\u043e\u0440\u0446\u0430"

    const/16 v20, 0x12

    aput-object v1, v0, v20

    const/16 v1, 0x13

    const-string v21, "\u0420\u0430\u043a\u0435\u0442\u0430"

    aput-object v21, v0, v1

    const/16 v22, 0x14

    aput-object v21, v0, v22

    const/16 v22, 0x15

    aput-object v21, v0, v22

    const/16 v21, 0x16

    const-string v22, "\u041c\u0438\u043d\u0438-\u0440\u0430\u043a\u0435\u0442\u0430"

    aput-object v22, v0, v21

    const/16 v21, 0x17

    const-string v22, "\u041f\u0443\u043b\u044f"

    aput-object v22, v0, v21

    const/16 v21, 0x18

    const-string v22, "\u0421\u043e\u043d\u0438\u043a-\u0437\u0430\u0440\u044f\u0434"

    aput-object v22, v0, v21

    const/16 v21, 0x19

    const-string v22, "\u0427\u0435\u0440\u0432\u044c"

    aput-object v22, v0, v21

    const/16 v21, 0x1a

    const-string v22, "\u0424\u0440\u0435\u0433\u0430\u0442"

    aput-object v22, v0, v21

    const/16 v21, 0x1b

    const-string v22, "\u0423\u0440\u0430\u0433\u0430\u043d"

    aput-object v22, v0, v21

    const/16 v21, 0x1c

    const-string v22, "\u0420\u0430\u043a\u0435\u0442\u043d\u044b\u0439 \u043a\u0432\u0430\u0434"

    aput-object v22, v0, v21

    const/16 v21, 0x1d

    const-string v22, "\u041b\u0430\u0437\u0435\u0440\u043d\u044b\u0439 \u0442\u0430\u043d\u043a"

    aput-object v22, v0, v21

    const/16 v21, 0x1e

    const-string v22, "\u0425\u043e\u0432\u0435\u0440\u0442\u0430\u043d\u043a"

    aput-object v22, v0, v21

    const/16 v21, 0x1f

    const-string v22, "\u041e\u0440\u043a\u0430"

    aput-object v22, v0, v21

    sput-object v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->UNIT_NAMES674:[Ljava/lang/String;

    .line 89
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "\u0411\u0435\u0442\u043e\u043d"

    aput-object v1, v0, v2

    const-string v1, "\u0411\u0435\u0442\u043e\u043d 2\u00d72"

    aput-object v1, v0, v3

    const-string v1, "\u0414\u0432\u043e\u0440\u0435\u0446"

    aput-object v1, v0, v4

    const-string v1, "\u0417\u0430\u0432\u043e\u0434"

    aput-object v1, v0, v5

    const-string v1, "\u0422\u044f\u0436\u0451\u043b\u044b\u0439 \u0437\u0430\u0432\u043e\u0434"

    aput-object v1, v0, v6

    const-string v1, "\u0412\u044b\u0441\u043e\u043a\u0438\u0435 \u0442\u0435\u0445\u043d\u043e\u043b\u043e\u0433\u0438\u0438"

    aput-object v1, v0, v7

    const-string v1, "\u0414\u043e\u043c IX"

    aput-object v1, v0, v8

    const-string v1, "WOR"

    aput-object v1, v0, v9

    const-string v1, "\u0421\u0442\u0440\u043e\u0438\u0442\u0435\u043b\u044c\u043d\u044b\u0439 \u0434\u0432\u043e\u0440"

    aput-object v1, v0, v10

    const-string v1, "\u0412\u0435\u0442\u0440\u044f\u043a"

    aput-object v1, v0, v11

    const-string v1, "\u041a\u0430\u0437\u0430\u0440\u043c\u044b"

    aput-object v1, v0, v12

    const-string v1, "\u041a\u043e\u0441\u043c\u043e\u043f\u043e\u0440\u0442"

    aput-object v1, v0, v13

    const-string v1, "\u0420\u0435\u0444\u0438\u043d\u0435\u0440\u0438"

    aput-object v1, v0, v14

    const-string v1, "\u0420\u0435\u043c\u043e\u043d\u0442\u043d\u044b\u0439 \u0446\u0435\u0445"

    aput-object v1, v0, v15

    const-string v1, "\u0421\u0442\u0435\u043d\u0430"

    aput-object v1, v0, v16

    const-string v1, "\u0422\u0443\u0440\u0435\u043b\u044c"

    aput-object v1, v0, v17

    const-string v1, "\u0420\u0430\u043a\u0435\u0442\u043d\u0430\u044f \u0442\u0443\u0440\u0435\u043b\u044c"

    aput-object v1, v0, v18

    const-string v1, "\u0425\u0440\u0430\u043d\u0438\u043b\u0438\u0449\u0435"

    aput-object v1, v0, v19

    const-string v1, "\u0420\u0430\u0434\u0430\u0440"

    aput-object v1, v0, v20

    sput-object v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->STRUCTURE_NAMES674:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameViewportRatio675:F

    .line 57
    new-instance v0, Lcom/ahsim/demulation/RazorSmoothCamera679;

    invoke-direct {v0}, Lcom/ahsim/demulation/RazorSmoothCamera679;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->smoothCamera679:Lcom/ahsim/demulation/RazorSmoothCamera679;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->classicCursorX678:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->classicCursorY678:I

    .line 66
    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->deployedSource726:I

    .line 73
    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->verifiedStartingCredits743:I

    .line 75
    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastHp743:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastMaxHp743:I

    .line 78
    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedBuilding674:I

    .line 79
    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedEnemy674:I

    .line 101
    const-string v1, "\u0413\u0440\u0430\u0444\u0438\u043a\u0430: \u043e\u0436\u0438\u0434\u0430\u0435\u043c \u043e\u0440\u0438\u0433\u0438\u043d\u0430\u043b\u044c\u043d\u044b\u0439 ROM"

    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->artStatus740:Ljava/lang/String;

    .line 103
    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastMissingArtType740:I

    .line 127
    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastTurnUnit753:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastTurnAngle753:I

    .line 133
    new-instance v1, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;

    invoke-direct {v1}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;-><init>()V

    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runtimeDiagnostics749:Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;

    .line 134
    const-string v1, ""

    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastFrameFailure749:Ljava/lang/String;

    .line 135
    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastCanvasWarning749:Ljava/lang/String;

    .line 146
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->worker:Ljava/util/concurrent/ExecutorService;

    .line 152
    const-string v2, "NOT_RUN"

    iput-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastProbeOutcome:Ljava/lang/String;

    .line 153
    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastProbeFailure:Ljava/lang/String;

    .line 166
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->useNativeFrames:Z

    .line 170
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->showObjectMarkers:Z

    .line 189
    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    .line 195
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxClock560:Landroid/os/Handler;

    .line 198
    const-string v0, "\u041e\u0436\u0438\u0434\u0430\u043d\u0438\u0435 \u0437\u0430\u043f\u0443\u0441\u043a\u0430"

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->pauseReason740:Ljava/lang/String;

    .line 207
    new-instance v0, Lcom/ahsim/demulation/RazorFramePacer736;

    invoke-direct {v0}, Lcom/ahsim/demulation/RazorFramePacer736;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->razorPacer736:Lcom/ahsim/demulation/RazorFramePacer736;

    .line 218
    new-instance v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda34;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->framePulse634:Landroid/view/Choreographer$FrameCallback;

    .line 220
    new-instance v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda35;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxPulse560:Ljava/lang/Runnable;

    return-void
.end method

.method private addClassicHud744(Landroid/widget/FrameLayout;Landroid/view/View;FFFFF)V
    .locals 4
    .param p1, "hud"    # Landroid/widget/FrameLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "width"    # F
    .param p6, "height"    # F
    .param p7, "scale"    # F

    .line 622
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    mul-float v1, p5, p7

    .line 623
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-float v3, p6, p7

    .line 624
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 625
    .local v0, "p":Landroid/widget/FrameLayout$LayoutParams;
    mul-float v1, p3, p7

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 626
    mul-float v1, p4, p7

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 627
    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 628
    return-void
.end method

.method private addHudDivider742(Landroid/widget/LinearLayout;)V
    .locals 4
    .param p1, "panel"    # Landroid/widget/LinearLayout;

    .line 646
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 647
    .local v0, "divider":Landroid/view/View;
    const v1, -0x49c59a76

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 648
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 649
    return-void
.end method

.method private buildUi()V
    .locals 18

    .line 253
    move-object/from16 v0, p0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 254
    .local v1, "root":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 255
    const/16 v3, 0xc

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v4

    const/16 v5, 0x8

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v6

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v7

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v8

    invoke-virtual {v1, v4, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 256
    const v4, -0xefebe6

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 257
    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->setContentView(Landroid/view/View;)V

    .line 259
    invoke-direct {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->horizontal()Landroid/widget/LinearLayout;

    move-result-object v4

    .line 260
    .local v4, "header":Landroid/widget/LinearLayout;
    sget v6, Lcom/ahsim/demulation/R$string;->razor_preview_back:I

    invoke-virtual {v0, v6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->control(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v6

    .line 261
    .local v6, "back":Landroid/widget/Button;
    new-instance v7, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda39;

    invoke-direct {v7, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda39;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x4c

    invoke-direct {v0, v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v8

    const/16 v9, 0x2c

    invoke-direct {v0, v9}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v10

    invoke-direct {v7, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    iget-boolean v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v7, :cond_0

    sget v7, Lcom/ahsim/demulation/R$string;->razor_quick662_title:I

    goto :goto_0

    .line 264
    :cond_0
    sget v7, Lcom/ahsim/demulation/R$string;->razor_preview_title:I

    .line 263
    :goto_0
    invoke-virtual {v0, v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x12

    const v10, -0x264d94

    invoke-direct {v0, v7, v8, v10}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v7

    .line 265
    .local v7, "title":Landroid/widget/TextView;
    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 266
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v9

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v8, v11, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 269
    iget-boolean v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v8, :cond_1

    sget v8, Lcom/ahsim/demulation/R$string;->razor_quick662_banner:I

    goto :goto_1

    .line 270
    :cond_1
    iget-boolean v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-eqz v8, :cond_2

    sget v8, Lcom/ahsim/demulation/R$string;->razor_map558_banner:I

    goto :goto_1

    .line 271
    :cond_2
    sget v8, Lcom/ahsim/demulation/R$string;->razor_preview_nonready:I

    .line 269
    :goto_1
    invoke-virtual {v0, v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, -0x3d3935

    invoke-direct {v0, v8, v3, v9}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v8

    .line 272
    .local v8, "warning":Landroid/widget/TextView;
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    invoke-direct {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->horizontal()Landroid/widget/LinearLayout;

    move-result-object v13

    .line 275
    .local v13, "choices":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v5, Lcom/ahsim/demulation/R$array;->razor_preview_houses:I

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selector([Ljava/lang/String;)Landroid/widget/Spinner;

    move-result-object v5

    iput-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    .line 276
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v10, Lcom/ahsim/demulation/R$array;->razor_preview_missions:I

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selector([Ljava/lang/String;)Landroid/widget/Spinner;

    move-result-object v5

    iput-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->missionSpinner:Landroid/widget/Spinner;

    .line 277
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v10, Lcom/ahsim/demulation/R$array;->razor_preview_palettes:I

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selector([Ljava/lang/String;)Landroid/widget/Spinner;

    move-result-object v5

    iput-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->paletteSpinner:Landroid/widget/Spinner;

    .line 278
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x30

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v9

    const v12, 0x3fe66666    # 1.8f

    invoke-direct {v10, v11, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v13, v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->missionSpinner:Landroid/widget/Spinner;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v10

    const v12, 0x3f8ccccd    # 1.1f

    invoke-direct {v9, v11, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v13, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->paletteSpinner:Landroid/widget/Spinner;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v3

    const v10, 0x3f99999a    # 1.2f

    invoke-direct {v9, v11, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v13, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v13, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 283
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->missionSpinner:Landroid/widget/Spinner;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 284
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->paletteSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v11}, Landroid/widget/Spinner;->setSelection(I)V

    .line 285
    new-instance v3, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$1;

    invoke-direct {v3, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$1;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    .line 297
    .local v3, "listener":Landroid/widget/AdapterView$OnItemSelectedListener;
    iget-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 298
    iget-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->missionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 299
    iget-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->paletteSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 300
    iput-boolean v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectorsReady:Z

    .line 302
    new-instance v9, Landroid/widget/ProgressBar;

    invoke-direct {v9, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->progress:Landroid/widget/ProgressBar;

    .line 303
    iget-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v9, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 304
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->progress:Landroid/widget/ProgressBar;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x3

    invoke-direct {v0, v10}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v10

    invoke-direct {v9, v14, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    new-instance v2, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;

    invoke-direct {v2, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    iput-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapView:Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;

    .line 307
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapView:Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v9, v14, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    const-string v2, ""

    const v9, -0x3d3935

    const/16 v10, 0xc

    invoke-direct {v0, v2, v10, v9}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->coordinates:Landroid/widget/TextView;

    .line 309
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->coordinates:Landroid/widget/TextView;

    const/16 v9, 0x11

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 310
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->coordinates:Landroid/widget/TextView;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0x1b

    invoke-direct {v0, v10}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v10

    invoke-direct {v9, v14, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    invoke-direct {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->horizontal()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 313
    .local v2, "buttons":Landroid/widget/LinearLayout;
    sget v9, Lcom/ahsim/demulation/R$string;->razor_preview_zoom_in:I

    invoke-virtual {v0, v9}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->control(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v9

    .line 314
    .local v9, "zoomIn":Landroid/widget/Button;
    sget v10, Lcom/ahsim/demulation/R$string;->razor_preview_center:I

    invoke-virtual {v0, v10}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->control(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v10

    .line 315
    .local v10, "home":Landroid/widget/Button;
    sget v12, Lcom/ahsim/demulation/R$string;->razor_preview_zoom_out:I

    invoke-virtual {v0, v12}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->control(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v12

    .line 316
    .local v12, "zoomOut":Landroid/widget/Button;
    new-instance v5, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda49;

    invoke-direct {v5, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda49;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-virtual {v9, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    new-instance v5, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda50;

    invoke-direct {v5, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda50;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-virtual {v10, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    new-instance v5, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda51;

    invoke-direct {v5, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda51;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-virtual {v12, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-boolean v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v5, :cond_3

    .line 331
    iput-boolean v11, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->followSelected663:Z

    .line 332
    sget v5, Lcom/ahsim/demulation/R$string;->razor_follow663_on:I

    invoke-virtual {v0, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->control(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->followButton663:Landroid/widget/Button;

    .line 333
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->followButton663:Landroid/widget/Button;

    new-instance v15, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda52;

    invoke-direct {v15, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda52;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-virtual {v5, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    :cond_3
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v15, 0x2f

    invoke-direct {v0, v15}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v5, v11, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v16, v3

    const/16 v14, 0x2f

    .end local v3    # "listener":Landroid/widget/AdapterView$OnItemSelectedListener;
    .local v16, "listener":Landroid/widget/AdapterView$OnItemSelectedListener;
    invoke-direct {v0, v14}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v3

    invoke-direct {v5, v11, v3, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v5

    invoke-direct {v3, v11, v5, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v12, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 355
    iget-boolean v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    const/16 v5, 0x27

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->followButton663:Landroid/widget/Button;

    if-eqz v3, :cond_4

    .line 356
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->followButton663:Landroid/widget/Button;

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v15

    const/4 v11, -0x1

    invoke-direct {v14, v11, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    :cond_4
    iget-boolean v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v3, :cond_5

    .line 358
    sget v3, Lcom/ahsim/demulation/R$string;->razor_speed670_off:I

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->control(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedButton670:Landroid/widget/Button;

    .line 359
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedButton670:Landroid/widget/Button;

    new-instance v11, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda53;

    invoke-direct {v11, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda53;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedButton670:Landroid/widget/Button;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v5

    const/4 v14, -0x1

    invoke-direct {v11, v14, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    :cond_5
    sget v3, Lcom/ahsim/demulation/R$string;->razor_preview_native_on:I

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->control(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->nativeModeButton:Landroid/widget/Button;

    .line 364
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->nativeModeButton:Landroid/widget/Button;

    new-instance v5, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda54;

    invoke-direct {v5, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda54;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->nativeModeButton:Landroid/widget/Button;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x2a

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v14

    const/4 v15, -0x1

    invoke-direct {v5, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    iget-boolean v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->nativeModeButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 373
    :cond_6
    sget v3, Lcom/ahsim/demulation/R$string;->razor_preview_objects_on:I

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->control(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->objectModeButton:Landroid/widget/Button;

    .line 374
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->objectModeButton:Landroid/widget/Button;

    new-instance v5, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda56;

    invoke-direct {v5, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda56;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->objectModeButton:Landroid/widget/Button;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v14

    const/4 v15, -0x1

    invoke-direct {v5, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    iget-boolean v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->objectModeButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 384
    :cond_7
    sget v3, Lcom/ahsim/demulation/R$string;->razor_preview_object_hint:I

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, -0x3d3935

    const/16 v14, 0xc

    invoke-direct {v0, v3, v14, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->objectDetails:Landroid/widget/TextView;

    .line 385
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->objectDetails:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x1

    invoke-direct {v5, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    iget-boolean v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-eqz v3, :cond_f

    .line 387
    sget v3, Lcom/ahsim/demulation/R$string;->razor_map559_hint:I

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, -0x3d3935

    const/16 v14, 0xc

    invoke-direct {v0, v3, v14, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapHint559:Landroid/widget/TextView;

    .line 388
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapHint559:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x1

    invoke-direct {v5, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    invoke-direct {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->horizontal()Landroid/widget/LinearLayout;

    move-result-object v3

    .line 390
    .local v3, "tools559":Landroid/widget/LinearLayout;
    sget v5, Lcom/ahsim/demulation/R$string;->razor_map559_step:I

    invoke-virtual {v0, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->control(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapAdvance559:Landroid/widget/Button;

    .line 391
    sget v5, Lcom/ahsim/demulation/R$string;->razor_map559_cancel:I

    invoke-virtual {v0, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->control(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapCancel559:Landroid/widget/Button;

    .line 392
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapAdvance559:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapCancel559:Landroid/widget/Button;

    invoke-virtual {v5, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 393
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapAdvance559:Landroid/widget/Button;

    new-instance v14, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda57;

    invoke-direct {v14, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda57;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-virtual {v5, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapCancel559:Landroid/widget/Button;

    new-instance v14, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda58;

    invoke-direct {v14, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda58;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-virtual {v5, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    sget v5, Lcom/ahsim/demulation/R$string;->razor_auto560_start:I

    invoke-virtual {v0, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->control(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxButton560:Landroid/widget/Button;

    .line 403
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxButton560:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 404
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxButton560:Landroid/widget/Button;

    new-instance v15, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda40;

    invoke-direct {v15, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda40;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-virtual {v5, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxButton560:Landroid/widget/Button;

    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x2e

    move-object/from16 v17, v2

    .end local v2    # "buttons":Landroid/widget/LinearLayout;
    .local v17, "buttons":Landroid/widget/LinearLayout;
    invoke-direct {v0, v11}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v15, v14, v2, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v5, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    iget-boolean v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapAdvance559:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 407
    :cond_8
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapCancel559:Landroid/widget/Button;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x2e

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v14

    const/4 v11, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v5, v11, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 409
    sget v2, Lcom/ahsim/demulation/R$string;->razor_frame634_start:I

    invoke-virtual {v0, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->control(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameButton634:Landroid/widget/Button;

    .line 410
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameButton634:Landroid/widget/Button;

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 411
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameButton634:Landroid/widget/Button;

    new-instance v5, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda41;

    invoke-direct {v5, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda41;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameButton634:Landroid/widget/Button;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v14, 0x2e

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v5, v11, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    sget v2, Lcom/ahsim/demulation/R$string;->razor_frame634_wait:I

    invoke-virtual {v0, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v5, -0x3d3935

    const/16 v14, 0xc

    invoke-direct {v0, v2, v14, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameStatus634:Landroid/widget/TextView;

    .line 414
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameStatus634:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x1

    invoke-direct {v5, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    iget-boolean v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v2, :cond_9

    .line 418
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameButton634:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 419
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameStatus634:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 422
    :cond_9
    sget v2, Lcom/ahsim/demulation/R$string;->razor_trace562_button:I

    invoke-virtual {v0, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->control(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    .line 423
    .local v2, "movementTraceButton562":Landroid/widget/Button;
    new-instance v5, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda42;

    invoke-direct {v5, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda42;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x2a

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v14

    const/4 v15, -0x1

    invoke-direct {v5, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    iget-boolean v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v5, :cond_a

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 427
    :cond_a
    sget v5, Lcom/ahsim/demulation/R$string;->razor_demo569_create:I

    invoke-virtual {v0, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->control(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lifecycleDemoButton569:Landroid/widget/Button;

    .line 428
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lifecycleDemoButton569:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 429
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lifecycleDemoButton569:Landroid/widget/Button;

    new-instance v11, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda43;

    invoke-direct {v11, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda43;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lifecycleDemoButton569:Landroid/widget/Button;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v14, 0x2a

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v15

    const/4 v14, -0x1

    invoke-direct {v11, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    iget-boolean v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v5, :cond_b

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lifecycleDemoButton569:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 435
    :cond_b
    sget v5, Lcom/ahsim/demulation/R$string;->razor_order571_start:I

    invoke-virtual {v0, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->control(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->refineryButton570:Landroid/widget/Button;

    .line 436
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->refineryButton570:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 437
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->refineryButton570:Landroid/widget/Button;

    new-instance v11, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda45;

    invoke-direct {v11, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda45;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->refineryButton570:Landroid/widget/Button;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v14, 0x2a

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v15

    const/4 v14, -0x1

    invoke-direct {v11, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    iget-boolean v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v5, :cond_c

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->refineryButton570:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 453
    :cond_c
    sget v5, Lcom/ahsim/demulation/R$string;->razor_finance576_start:I

    invoke-virtual {v0, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->control(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->financeButton576:Landroid/widget/Button;

    .line 454
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->financeButton576:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 455
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->financeButton576:Landroid/widget/Button;

    new-instance v11, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda46;

    invoke-direct {v11, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda46;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->financeButton576:Landroid/widget/Button;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v14, 0x2a

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v15

    const/4 v14, -0x1

    invoke-direct {v11, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    iget-boolean v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v5, :cond_d

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->financeButton576:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 458
    :cond_d
    sget v5, Lcom/ahsim/demulation/R$string;->razor_stats572_wait:I

    invoke-virtual {v0, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v11, -0x3d3935

    const/16 v14, 0xc

    invoke-direct {v0, v5, v14, v11}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildingFacts572:Landroid/widget/TextView;

    .line 459
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildingFacts572:Landroid/widget/TextView;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x1

    invoke-direct {v11, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    iget-boolean v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v5, :cond_e

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildingFacts572:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    :cond_e
    sget v5, Lcom/ahsim/demulation/R$string;->razor_economy573_wait:I

    invoke-virtual {v0, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v11, -0x3d3935

    const/16 v14, 0xc

    invoke-direct {v0, v5, v14, v11}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->economyFacts573:Landroid/widget/TextView;

    .line 462
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->economyFacts573:Landroid/widget/TextView;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x1

    invoke-direct {v11, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    iget-boolean v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v5, :cond_10

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->economyFacts573:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 386
    .end local v3    # "tools559":Landroid/widget/LinearLayout;
    .end local v17    # "buttons":Landroid/widget/LinearLayout;
    .local v2, "buttons":Landroid/widget/LinearLayout;
    :cond_f
    move-object/from16 v17, v2

    .line 466
    .end local v2    # "buttons":Landroid/widget/LinearLayout;
    .restart local v17    # "buttons":Landroid/widget/LinearLayout;
    :cond_10
    :goto_2
    sget v2, Lcom/ahsim/demulation/R$string;->razor_boot_probe_button:I

    invoke-virtual {v0, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->control(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    .line 467
    .local v2, "probeButton":Landroid/widget/Button;
    new-instance v3, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda47;

    invoke-direct {v3, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda47;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v14, 0x2a

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v5

    const/4 v15, -0x1

    invoke-direct {v3, v15, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    iget-boolean v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-eqz v3, :cond_11

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 470
    :cond_11
    sget v3, Lcom/ahsim/demulation/R$string;->razor_probe_share:I

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->control(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->shareProbeButton:Landroid/widget/Button;

    .line 471
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->shareProbeButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 472
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->shareProbeButton:Landroid/widget/Button;

    new-instance v5, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda48;

    invoke-direct {v5, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda48;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->shareProbeButton:Landroid/widget/Button;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v14, 0x2a

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v11

    const/4 v15, -0x1

    invoke-direct {v5, v15, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    iget-boolean v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->shareProbeButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 475
    :cond_12
    sget v3, Lcom/ahsim/demulation/R$string;->razor_boot_probe_hint:I

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, -0x3d3935

    const/16 v14, 0xc

    invoke-direct {v0, v3, v14, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->bootStatus:Landroid/widget/TextView;

    .line 476
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->bootStatus:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x1

    invoke-direct {v5, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    iget-boolean v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-eqz v3, :cond_13

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->bootStatus:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 478
    :cond_13
    sget v3, Lcom/ahsim/demulation/R$string;->razor_emc_audit_waiting:I

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, -0x3d3935

    const/16 v14, 0xc

    invoke-direct {v0, v3, v14, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus:Landroid/widget/TextView;

    .line 479
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x1

    invoke-direct {v5, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    iget-boolean v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-eqz v3, :cond_14

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 482
    :cond_14
    sget v3, Lcom/ahsim/demulation/R$string;->razor_preview_loading:I

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, -0xf1017

    const/16 v14, 0xc

    invoke-direct {v0, v3, v14, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->status:Landroid/widget/TextView;

    .line 483
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->status:Landroid/widget/TextView;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMinLines(I)V

    .line 484
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->status:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x1

    invoke-direct {v5, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    iget-boolean v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v3, :cond_15

    .line 486
    sget v3, Lcom/ahsim/demulation/R$string;->razor_quick662_wait:I

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, -0x264d94

    const/16 v14, 0xc

    invoke-direct {v0, v3, v14, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickHud662:Landroid/widget/TextView;

    .line 487
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickHud662:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x1

    invoke-direct {v5, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 488
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapHint559:Landroid/widget/TextView;

    sget v5, Lcom/ahsim/demulation/R$string;->razor_quick662_howto:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 490
    :cond_15
    return-void
.end method

.method private captureFrameState749()Ljava/lang/String;
    .locals 13

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 830
    .local v0, "b":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->canvasBitmap:Landroid/graphics/Bitmap;

    .line 831
    .local v1, "bmp":Landroid/graphics/Bitmap;
    const-string v2, "bitmap="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    const-string v4, "NULL"

    if-nez v1, :cond_0

    move-object v5, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "RECYCLED"

    goto :goto_0

    .line 832
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 831
    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 832
    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 833
    const-string v2, "terrain origin="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->terrainOriginX679:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->terrainOriginY679:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 834
    const-string v7, " extent="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->terrainCols679:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v7, 0x78

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v8, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->terrainRows679:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 835
    const-string v2, "viewport="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v8, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->classicViewWidth678:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->classicViewHeight678:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 836
    const-string v7, " ratio="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameViewportRatio675:F

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 837
    const-string v2, "camera="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->smoothCamera679:Lcom/ahsim/demulation/RazorSmoothCamera679;

    iget v7, v7, Lcom/ahsim/demulation/RazorSmoothCamera679;->x:F

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->smoothCamera679:Lcom/ahsim/demulation/RazorSmoothCamera679;

    iget v6, v6, Lcom/ahsim/demulation/RazorSmoothCamera679;->y:F

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 838
    const-string v6, " mapView="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapView:Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;

    if-nez v6, :cond_2

    move-object v6, v4

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapView:Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;

    invoke-virtual {v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapView:Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;

    invoke-virtual {v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 839
    const-string v2, "navigator="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    if-nez v6, :cond_3

    goto :goto_2

    .line 840
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v6}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v6}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v6}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->rows()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 839
    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 840
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 841
    const-string v2, "lastCanvasWarning="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastCanvasWarning749:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 842
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_7

    .line 843
    const/4 v2, 0x0

    .local v2, "black":I
    const/4 v3, 0x0

    .line 844
    .local v3, "samples":I
    const/4 v4, 0x1

    .local v4, "y":I
    :goto_3
    const/4 v6, 0x5

    if-gt v4, v6, :cond_6

    const/4 v7, 0x1

    .local v7, "x":I
    :goto_4
    if-gt v7, v6, :cond_5

    .line 845
    :try_start_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    mul-int/2addr v8, v7

    div-int/lit8 v8, v8, 0x6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int/2addr v9, v4

    div-int/lit8 v9, v9, 0x6

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    .line 846
    .local v8, "color":I
    ushr-int/lit8 v9, v8, 0x10

    and-int/lit16 v9, v9, 0xff

    .local v9, "r":I
    ushr-int/lit8 v10, v8, 0x8

    and-int/lit16 v10, v10, 0xff

    .local v10, "g":I
    and-int/lit16 v11, v8, 0xff

    .line 847
    .local v11, "blue":I
    const/16 v12, 0x10

    if-ge v9, v12, :cond_4

    if-ge v10, v12, :cond_4

    if-ge v11, v12, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 848
    :cond_4
    nop

    .end local v8    # "color":I
    .end local v9    # "r":I
    .end local v10    # "g":I
    .end local v11    # "blue":I
    add-int/lit8 v3, v3, 0x1

    .line 844
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .end local v7    # "x":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 850
    .end local v4    # "y":I
    :cond_6
    const-string v4, "darkBitmapSamples="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x2f

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    nop

    .end local v2    # "black":I
    .end local v3    # "samples":I
    goto :goto_5

    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v3, "pixelSampleError="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 852
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :cond_7
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private captureRuntimeState749()Ljava/lang/String;
    .locals 5

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x4b0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 794
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "Demulation Razor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0.4.768"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 795
    const-string v1, "time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 796
    const-string v1, "quickPlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " profile="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 797
    const-string v1, "house="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    const/4 v4, -0x1

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 798
    const-string v3, " mission="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->missionSpinner:Landroid/widget/Spinner;

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->missionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 799
    const-string v1, "romVariant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    iget-object v3, v3, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romVariant()I

    move-result v4

    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 800
    const-string v3, " fingerprint="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    if-nez v3, :cond_3

    const-string v3, "not-loaded"

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    iget-object v3, v3, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->sha256:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 801
    const-string v1, "selectedUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " selectedBuilding="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedBuilding674:I

    .line 802
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " selectedEnemy="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedEnemy674:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 803
    const-string v1, "selectionCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectionCount749:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mapActionPending="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapActionPending559:Z

    .line 804
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " generation="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 805
    const-string v1, "C="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxTicks560:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " CperSec="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->observedCps736:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 806
    const-string v3, " retained="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->currentProof729:Lcom/ahsim/demulation/RazorTickEvidence729;

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->currentProof729:Lcom/ahsim/demulation/RazorTickEvidence729;

    iget v3, v3, Lcom/ahsim/demulation/RazorTickEvidence729;->retained:I

    :goto_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 807
    const-string v3, " lastBatch="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->burstFrames736:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 808
    const-string v1, "running="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxRunning560:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " inFlight="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxInFlight560:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 809
    const-string v3, " resumeAfterBackground="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->resumeAfterBackground741:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 810
    const-string v1, "pauseReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->pauseReason740:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 811
    const-string v1, "lastCycleError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastPulseFailure729:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 812
    const-string v1, "lastFrameError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastFrameFailure749:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 813
    const-string v1, "frameSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->renderSuccess749:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " frameFailures="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->renderFailure749:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 814
    const-string v1, "graphics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->artStatus740:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " artError="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->artFrameError740:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 815
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    if-eqz v1, :cond_5

    .line 816
    const-string v1, "units="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    iget-object v3, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 817
    const-string v3, " buildings="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    iget-object v3, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->buildings:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 818
    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    if-ltz v1, :cond_6

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    iget-object v3, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v3, v3

    if-ge v1, v3, :cond_6

    .line 819
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    iget-object v1, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    iget v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    aget-object v1, v1, v3

    .line 820
    .local v1, "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    const-string v3, "selectedType="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " owner="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->owner:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 821
    const-string v4, " pos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 822
    const-string v4, " retired="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->retired:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 823
    .end local v1    # "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    goto :goto_5

    .line 824
    :cond_5
    const-string v1, "mapFrame=NULL\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    :cond_6
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private chooseRazorArtRom741()V
    .locals 5

    .line 888
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 889
    .local v0, "choose":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 890
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 891
    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 893
    const/16 v1, 0x2e5

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    goto :goto_0

    .line 894
    :catch_0
    move-exception v1

    .line 895
    .local v1, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043e\u0442\u043a\u0440\u044b\u0442\u044c \u0432\u044b\u0431\u043e\u0440 ROM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 896
    const-string v3, "OK"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 898
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private classicCommand744(Ljava/lang/String;ZF)Landroid/widget/Button;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "stop"    # Z
    .param p3, "scale"    # F

    .line 631
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->control(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    .line 632
    .local v0, "b":Landroid/widget/Button;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 633
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 634
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    .line 635
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinimumHeight(I)V

    .line 636
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinWidth(I)V

    .line 637
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 638
    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 639
    if-eqz p2, :cond_0

    const v1, -0x116c88

    goto :goto_0

    :cond_0
    const v1, -0x291e19

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 640
    nop

    .line 641
    if-eqz p2, :cond_1

    const v1, -0x37bce4e9

    goto :goto_1

    :cond_1
    const v1, -0x4ce7cfc3

    .line 640
    :goto_1
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 642
    return-object v0
.end method

.method private control(Ljava/lang/String;)Landroid/widget/Button;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 3619
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 3620
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3621
    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 3622
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 3623
    return-object v0
.end method

.method private deliverFrame634(J)V
    .locals 7
    .param p1, "timestampNs"    # J

    .line 2367
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameRunning634:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v2, p0

    move-wide v5, p1

    goto :goto_1

    .line 2368
    :cond_0
    iget v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameGeneration634:I

    .line 2369
    .local v3, "serial":I
    iget v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    .line 2370
    .local v4, "generation":I
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameInFlight634:Z

    if-nez v0, :cond_1

    .line 2371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameInFlight634:Z

    .line 2372
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda12;

    move-object v2, p0

    move-wide v5, p1

    .end local p1    # "timestampNs":J
    .local v5, "timestampNs":J
    invoke-direct/range {v1 .. v6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda12;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;IIJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2370
    .end local v5    # "timestampNs":J
    .restart local p1    # "timestampNs":J
    :cond_1
    move-object v2, p0

    move-wide v5, p1

    .line 2398
    .end local p1    # "timestampNs":J
    .restart local v5    # "timestampNs":J
    :goto_0
    iget-boolean p1, v2, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameRunning634:Z

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iget-object p2, v2, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->framePulse634:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 2399
    :cond_2
    return-void

    .line 2367
    .end local v3    # "serial":I
    .end local v4    # "generation":I
    .end local v5    # "timestampNs":J
    .restart local p1    # "timestampNs":J
    :cond_3
    move-object v2, p0

    move-wide v5, p1

    .end local p1    # "timestampNs":J
    .restart local v5    # "timestampNs":J
    :goto_1
    return-void
.end method

.method private dp(F)F
    .locals 1
    .param p1, "value"    # F

    .line 3633
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    return v0
.end method

.method private dp(I)I
    .locals 2
    .param p1, "value"    # I

    .line 3632
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private executeSandboxPulse560()V
    .locals 8

    .line 2580
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxRunning560:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxInFlight560:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2585
    :cond_0
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameBar674:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2586
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->razorPacer736:Lcom/ahsim/demulation/RazorFramePacer736;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ahsim/demulation/RazorFramePacer736;->takeDue(J)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    move v6, v0

    .line 2587
    .local v6, "dueFrames736":I
    if-nez v6, :cond_2

    .line 2588
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxClock560:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxPulse560:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2589
    return-void

    .line 2591
    :cond_2
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxInFlight560:Z

    .line 2592
    iget v7, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    .line 2593
    .local v7, "generation":I
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    .line 2594
    .local v4, "house":I
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->missionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    .line 2595
    .local v5, "mission":I
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda27;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda27;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;IIII)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2812
    return-void

    .line 2581
    .end local v4    # "house":I
    .end local v5    # "mission":I
    .end local v6    # "dueFrames736":I
    .end local v7    # "generation":I
    :cond_3
    :goto_1
    return-void
.end method

.method private expectedProgress579(Lcom/ahsim/demulation/RazorFinanceLive576;)Ljava/lang/String;
    .locals 5
    .param p1, "f"    # Lcom/ahsim/demulation/RazorFinanceLive576;

    .line 2191
    invoke-static {p1}, Lcom/ahsim/demulation/RazorFinanceTrace579;->expectedAfterManualPayment(Lcom/ahsim/demulation/RazorFinanceLive576;)Lcom/ahsim/demulation/RazorFinanceTrace579;

    move-result-object v0

    .line 2192
    .local v0, "trace":Lcom/ahsim/demulation/RazorFinanceTrace579;
    if-nez v0, :cond_0

    const-string v1, ""

    return-object v1

    .line 2193
    :cond_0
    sget v1, Lcom/ahsim/demulation/R$string;->razor_trace579_reference:I

    iget v2, v0, Lcom/ahsim/demulation/RazorFinanceTrace579;->remainingFixed88:I

    .line 2194
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Lcom/ahsim/demulation/RazorFinanceTrace579;->paidTotal:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Lcom/ahsim/demulation/RazorFinanceTrace579;->productionState:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 2193
    invoke-virtual {p0, v1, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private failure(Ljava/lang/String;)V
    .locals 1
    .param p1, "why"    # Ljava/lang/String;

    .line 2881
    new-instance v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda36;

    invoke-direct {v0, p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda36;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2887
    return-void
.end method

.method private focusSelected676()V
    .locals 5

    .line 720
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    if-nez v0, :cond_0

    return-void

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    .line 722
    .local v0, "s":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    iget-object v2, v0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 723
    iget-object v1, v0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    aget-object v1, v1, v2

    .line 724
    .local v1, "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    iget v3, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->x:I

    iget v4, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->y:I

    invoke-virtual {v2, v3, v4}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->focus(II)Z

    .line 725
    .end local v1    # "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v1}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->center()V

    .line 726
    :goto_0
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->smoothCamera679:Lcom/ahsim/demulation/RazorSmoothCamera679;

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v2

    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/ahsim/demulation/RazorSmoothCamera679;->reset(II)V

    .line 727
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestFrame(Z)V

    .line 728
    return-void
.end method

.method private gameBuildingAt674(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;II)Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    .locals 7
    .param p1, "state"    # Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 1016
    iget-object v0, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->buildings:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_5

    .line 1017
    iget-object v3, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->buildings:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;

    aget-object v3, v3, v0

    .line 1018
    .local v3, "b":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    iget-object v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->structureDimensions674:[[I

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->type:I

    iget-object v5, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->structureDimensions674:[[I

    array-length v5, v5

    if-lt v4, v5, :cond_0

    goto :goto_1

    .line 1019
    :cond_0
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->structureDimensions674:[[I

    iget v4, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->type:I

    aget-object v2, v2, v4

    goto :goto_2

    :cond_1
    :goto_1
    nop

    .line 1020
    .local v2, "dims":[I
    :goto_2
    if-nez v2, :cond_2

    move v4, v1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    aget v4, v2, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1021
    .local v4, "w":I
    :goto_3
    if-nez v2, :cond_3

    move v5, v1

    goto :goto_4

    :cond_3
    aget v5, v2, v1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1022
    .local v5, "h":I
    :goto_4
    iget v6, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->x:I

    if-lt p2, v6, :cond_4

    iget v6, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->y:I

    if-lt p3, v6, :cond_4

    iget v6, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->x:I

    add-int/2addr v6, v4

    if-ge p2, v6, :cond_4

    iget v6, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->y:I

    add-int/2addr v6, v5

    if-ge p3, v6, :cond_4

    return-object v3

    .line 1016
    .end local v2    # "dims":[I
    .end local v3    # "b":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    .end local v4    # "w":I
    .end local v5    # "h":I
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1024
    .end local v0    # "i":I
    :cond_5
    return-object v2
.end method

.method private horizontal()Landroid/widget/LinearLayout;
    .locals 2

    .line 3613
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3614
    .local v0, "result":Landroid/widget/LinearLayout;
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 3615
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3616
    return-object v0
.end method

.method private installGameSurface674()V
    .locals 18

    .line 499
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapView:Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;

    invoke-virtual {v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/view/ViewGroup;

    .line 500
    .local v8, "parent":Landroid/view/ViewGroup;
    iget-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapView:Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 501
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v9, v1

    .line 502
    .local v9, "root":Landroid/widget/FrameLayout;
    const v1, -0xf8f6f7

    invoke-virtual {v9, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 503
    iget-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapView:Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v2, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v11, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 508
    .local v11, "screenW":I
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v12, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 509
    .local v12, "screenH":I
    int-to-float v1, v11

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 510
    const/16 v2, 0x91

    invoke-direct {v0, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v2

    int-to-float v3, v12

    const v4, 0x3ee66666    # 0.45f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 509
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 514
    .local v13, "sideWidth":I
    int-to-float v1, v13

    const/high16 v2, 0x42d80000    # 108.0f

    div-float v7, v1, v2

    .line 515
    .local v7, "hs":F
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 516
    .local v1, "hud":Landroid/widget/FrameLayout;
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 517
    new-instance v2, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$2;

    invoke-direct {v2, v0, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$2;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/content/Context;)V

    move-object v15, v2

    .line 536
    .local v15, "hudFrame":Landroid/view/View;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v15, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 537
    const-string v2, "\u041a\u0420\u0415\u0414\u0418\u0422\u042b"

    const/16 v3, 0xa

    const v4, -0x162146

    invoke-direct {v0, v2, v3, v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    .line 538
    .local v2, "creditsLabel":Landroid/widget/TextView;
    sget-object v5, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 540
    const-string v5, "\u2014"

    invoke-direct {v0, v5, v3, v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->creditsText743:Landroid/widget/TextView;

    .line 541
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->creditsText743:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 543
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->creditsText743:Landroid/widget/TextView;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 544
    const v3, 0x41166666    # 9.4f

    mul-float v4, v7, v3

    invoke-virtual {v2, v14, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 545
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->creditsText743:Landroid/widget/TextView;

    mul-float/2addr v3, v7

    invoke-virtual {v4, v14, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 546
    const/high16 v5, 0x42680000    # 58.0f

    move v3, v6

    const/high16 v6, 0x41600000    # 14.0f

    move v4, v3

    const/high16 v3, 0x40800000    # 4.0f

    move/from16 v16, v4

    const/high16 v4, 0x40400000    # 3.0f

    move/from16 v10, v16

    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->addClassicHud744(Landroid/widget/FrameLayout;Landroid/view/View;FFFFF)V

    .line 547
    move-object/from16 v16, v2

    .end local v2    # "creditsLabel":Landroid/widget/TextView;
    .local v16, "creditsLabel":Landroid/widget/TextView;
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->creditsText743:Landroid/widget/TextView;

    const/high16 v5, 0x42100000    # 36.0f

    const/high16 v3, 0x42820000    # 65.0f

    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->addClassicHud744(Landroid/widget/FrameLayout;Landroid/view/View;FFFFF)V

    .line 549
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->unitPortrait676:Landroid/widget/ImageView;

    .line 550
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->unitPortrait676:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 551
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->unitPortrait676:Landroid/widget/ImageView;

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 552
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->unitPortrait676:Landroid/widget/ImageView;

    const/high16 v5, 0x41d80000    # 27.0f

    const/high16 v6, 0x41d80000    # 27.0f

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->addClassicHud744(Landroid/widget/FrameLayout;Landroid/view/View;FFFFF)V

    .line 553
    const/16 v2, 0xb

    const v3, -0x23232a

    const-string v4, "\u0412\u044b\u0431\u0435\u0440\u0438 \u043e\u0431\u044a\u0435\u043a\u0442"

    invoke-direct {v0, v4, v2, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameBar674:Landroid/widget/TextView;

    .line 554
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameBar674:Landroid/widget/TextView;

    const/high16 v3, 0x40b00000    # 5.5f

    mul-float/2addr v3, v7

    invoke-virtual {v2, v14, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 555
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameBar674:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 556
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameBar674:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 557
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameBar674:Landroid/widget/TextView;

    const/high16 v5, 0x42900000    # 72.0f

    const/high16 v6, 0x41100000    # 9.0f

    const/high16 v3, 0x42080000    # 34.0f

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->addClassicHud744(Landroid/widget/FrameLayout;Landroid/view/View;FFFFF)V

    .line 558
    new-instance v2, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$3;

    invoke-direct {v2, v0, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$3;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/content/Context;)V

    iput-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->hpTrack743:Landroid/widget/FrameLayout;

    .line 576
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->hpTrack743:Landroid/widget/FrameLayout;

    const v3, -0xdce8ea

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 577
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->hpFill743:Landroid/view/View;

    .line 578
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->hpFill743:Landroid/view/View;

    const v3, -0x985090

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 579
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->hpTrack743:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->hpFill743:Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v4, v14, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->hpTrack743:Landroid/widget/FrameLayout;

    const/high16 v5, 0x42900000    # 72.0f

    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v3, 0x42080000    # 34.0f

    const/high16 v4, 0x42060000    # 33.5f

    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->addClassicHud744(Landroid/widget/FrameLayout;Landroid/view/View;FFFFF)V

    .line 581
    const/16 v2, 0x9

    const v3, -0x3d2f31

    const-string v4, "HP \u2014"

    invoke-direct {v0, v4, v2, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->hpText743:Landroid/widget/TextView;

    .line 582
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->hpText743:Landroid/widget/TextView;

    const v3, 0x40966666    # 4.7f

    mul-float/2addr v3, v7

    invoke-virtual {v2, v14, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 583
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->hpText743:Landroid/widget/TextView;

    const/high16 v6, 0x40e00000    # 7.0f

    const/high16 v3, 0x42080000    # 34.0f

    const/high16 v4, 0x422c0000    # 43.0f

    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->addClassicHud744(Landroid/widget/FrameLayout;Landroid/view/View;FFFFF)V

    .line 585
    const-string v2, "\u0421\u041d\u042f\u0422\u042c"

    invoke-direct {v0, v2, v14, v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->classicCommand744(Ljava/lang/String;ZF)Landroid/widget/Button;

    move-result-object v2

    .line 586
    .local v2, "unselect743":Landroid/widget/Button;
    new-instance v3, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda11;

    invoke-direct {v3, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda11;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    const/high16 v5, 0x420c0000    # 35.0f

    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v3, 0x42080000    # 34.0f

    const/high16 v4, 0x42500000    # 52.0f

    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->addClassicHud744(Landroid/widget/FrameLayout;Landroid/view/View;FFFFF)V

    .line 592
    move-object/from16 v17, v2

    .end local v2    # "unselect743":Landroid/widget/Button;
    .local v17, "unselect743":Landroid/widget/Button;
    const-string v2, "\u0421\u0422\u041e\u041f"

    invoke-direct {v0, v2, v10, v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->classicCommand744(Ljava/lang/String;ZF)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->stopButton676:Landroid/widget/Button;

    .line 593
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->stopButton676:Landroid/widget/Button;

    new-instance v3, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda22;

    invoke-direct {v3, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda22;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->stopButton676:Landroid/widget/Button;

    const/high16 v3, 0x428e0000    # 71.0f

    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->addClassicHud744(Landroid/widget/FrameLayout;Landroid/view/View;FFFFF)V

    .line 598
    const-string v2, "\u0420\u0410\u0417\u0412\u0415\u0420\u041d."

    invoke-direct {v0, v2, v14, v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->classicCommand744(Ljava/lang/String;ZF)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->deployButton726:Landroid/widget/Button;

    .line 599
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->deployButton726:Landroid/widget/Button;

    new-instance v3, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda33;

    invoke-direct {v3, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda33;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->deployButton726:Landroid/widget/Button;

    const/high16 v3, 0x428e0000    # 71.0f

    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->addClassicHud744(Landroid/widget/FrameLayout;Landroid/view/View;FFFFF)V

    .line 601
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x35

    const/4 v6, -0x1

    invoke-direct {v2, v13, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v9, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 606
    const-string v2, "\u2630"

    invoke-direct {v0, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->control(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    .line 607
    .local v2, "worldMenu":Landroid/widget/Button;
    const-string v3, "\u041c\u0435\u043d\u044e \u0438\u0433\u0440\u044b Razor"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 608
    new-instance v3, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda44;

    invoke-direct {v3, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda44;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    const v3, -0x4ce4d7cc

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 610
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x2a

    invoke-direct {v0, v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v4

    const/16 v5, 0x28

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v5

    const/16 v6, 0x33

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 612
    .local v3, "menuLayout":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v4, 0x6

    invoke-direct {v0, v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v5

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 613
    invoke-direct {v0, v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dp(I)I

    move-result v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 614
    invoke-virtual {v9, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 615
    invoke-virtual {v0, v9}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->setContentView(Landroid/view/View;)V

    .line 616
    const-string v4, "RazorTerrainPreview"

    const-string v5, "RAZOR_7441_HUD_ACTIVE 0.4.768"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-direct {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateGameBar674()V

    .line 618
    return-void
.end method

.method private label(Ljava/lang/String;II)Landroid/widget/TextView;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "color"    # I

    .line 3626
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3627
    .local v0, "label":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3628
    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 3629
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3630
    return-object v0
.end method

.method private static labelFrom674([Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "names"    # [Ljava/lang/String;
    .param p1, "type"    # I

    .line 95
    if-ltz p1, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object v0, p0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041e\u0431\u044a\u0435\u043a\u0442 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private synthetic lambda$buildUi$1(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 261
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$buildUi$10(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 397
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    if-ltz v0, :cond_0

    const/4 v0, 0x3

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestMapCommand559(IIII)V

    .line 398
    :cond_0
    return-void
.end method

.method private synthetic lambda$buildUi$11(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 404
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->toggleSandbox560()V

    return-void
.end method

.method private synthetic lambda$buildUi$12(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 411
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->toggleFrame634()V

    return-void
.end method

.method private synthetic lambda$buildUi$13(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 423
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->shareMovementTrace562()V

    return-void
.end method

.method private synthetic lambda$buildUi$14(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 430
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->demoHandle569:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestLifecycleDemo569(III)V

    goto :goto_0

    .line 431
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0, v1, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestLifecycleDemo569(III)V

    .line 432
    :goto_0
    return-void
.end method

.method private synthetic lambda$buildUi$15(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 438
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->construction571:Lcom/ahsim/demulation/RazorConstruction571;

    if-nez v0, :cond_0

    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->construction571:Lcom/ahsim/demulation/RazorConstruction571;

    iget v0, v0, Lcom/ahsim/demulation/RazorConstruction571;->phase:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 440
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestConstruction571(III)V

    goto :goto_0

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->construction571:Lcom/ahsim/demulation/RazorConstruction571;

    iget v0, v0, Lcom/ahsim/demulation/RazorConstruction571;->phase:I

    const/4 v2, 0x2

    const/4 v3, 0x5

    if-ne v0, v2, :cond_3

    .line 444
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->finance576:Lcom/ahsim/demulation/RazorFinanceLive576;

    const/4 v2, 0x3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->finance576:Lcom/ahsim/demulation/RazorFinanceLive576;

    iget v0, v0, Lcom/ahsim/demulation/RazorFinanceLive576;->phase:I

    if-eq v0, v2, :cond_2

    .line 445
    invoke-direct {p0, v3, v1, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestConstruction571(III)V

    goto :goto_0

    .line 446
    :cond_2
    invoke-direct {p0, v2, v1, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestConstruction571(III)V

    goto :goto_0

    .line 448
    :cond_3
    invoke-direct {p0, v3, v1, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestConstruction571(III)V

    .line 450
    :goto_0
    return-void
.end method

.method private synthetic lambda$buildUi$16(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 455
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestFinance576()V

    return-void
.end method

.method private synthetic lambda$buildUi$17(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 467
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestBootProbe()V

    return-void
.end method

.method private synthetic lambda$buildUi$18(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 472
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->shareRazorDiagnostics()V

    return-void
.end method

.method private synthetic lambda$buildUi$2(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 317
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->zoomIn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestFrame(Z)V

    .line 318
    :cond_0
    return-void
.end method

.method private synthetic lambda$buildUi$3(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 320
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->center()V

    .line 322
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->smoothCamera679:Lcom/ahsim/demulation/RazorSmoothCamera679;

    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v1}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v1

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ahsim/demulation/RazorSmoothCamera679;->reset(II)V

    .line 323
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestFrame(Z)V

    .line 325
    :cond_1
    return-void
.end method

.method private synthetic lambda$buildUi$4(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 327
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->zoomOut()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestFrame(Z)V

    .line 328
    :cond_0
    return-void
.end method

.method private synthetic lambda$buildUi$5(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 334
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->followSelected663:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->followSelected663:Z

    .line 335
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runtimeDiagnostics749:Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->followSelected663:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FOLLOW_TOGGLE"

    invoke-virtual {v0, v2, v1}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->event(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->followButton663:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->followSelected663:Z

    if-eqz v1, :cond_0

    .line 338
    sget v1, Lcom/ahsim/demulation/R$string;->razor_follow663_on:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/ahsim/demulation/R$string;->razor_follow663_off:I

    .line 337
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 339
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->followSelected663:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    iget-object v1, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 342
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    iget-object v0, v0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    aget-object v0, v0, v1

    .line 344
    .local v0, "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    iget v2, v0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->x:I

    iget v3, v0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->y:I

    invoke-virtual {v1, v2, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->focus(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->smoothCamera679:Lcom/ahsim/demulation/RazorSmoothCamera679;

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v2

    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/ahsim/demulation/RazorSmoothCamera679;->reset(II)V

    .line 346
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestFrame(Z)V

    .line 349
    .end local v0    # "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    :cond_1
    return-void
.end method

.method private synthetic lambda$buildUi$6(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 359
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->toggleSpeed670()V

    return-void
.end method

.method private synthetic lambda$buildUi$7(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 365
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->useNativeFrames:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->useNativeFrames:Z

    .line 366
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->nativeModeButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->useNativeFrames:Z

    if-eqz v1, :cond_0

    .line 367
    sget v1, Lcom/ahsim/demulation/R$string;->razor_preview_native_on:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/ahsim/demulation/R$string;->razor_preview_native_off:I

    .line 366
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 368
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestFrame(Z)V

    .line 369
    return-void
.end method

.method private synthetic lambda$buildUi$8(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 375
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->showObjectMarkers:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->showObjectMarkers:Z

    .line 376
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->objectModeButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->showObjectMarkers:Z

    if-eqz v1, :cond_0

    .line 377
    sget v1, Lcom/ahsim/demulation/R$string;->razor_preview_objects_on:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/ahsim/demulation/R$string;->razor_preview_objects_off:I

    .line 376
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedObject:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;

    .line 379
    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->objectFrame:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;

    .line 380
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestFrame(Z)V

    .line 381
    return-void
.end method

.method private synthetic lambda$buildUi$9(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 394
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    if-ltz v0, :cond_0

    const/4 v0, 0x2

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestMapCommand559(IIII)V

    .line 395
    :cond_0
    return-void
.end method

.method private synthetic lambda$deliverFrame634$60(ILjava/lang/String;[I[I)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "failure"    # Ljava/lang/String;
    .param p3, "result"    # [I
    .param p4, "gate635"    # [I

    .line 2385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameInFlight634:Z

    .line 2386
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameGeneration634:I

    if-ne p1, v0, :cond_6

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2387
    :cond_0
    if-nez p2, :cond_3

    if-eqz p3, :cond_3

    if-nez p4, :cond_1

    goto :goto_0

    .line 2391
    :cond_1
    const/4 v0, 0x5

    aget v1, p3, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    aget v1, p3, v0

    rem-int/lit8 v1, v1, 0x1e

    if-nez v1, :cond_5

    .line 2392
    :cond_2
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameStatus634:Landroid/widget/TextView;

    sget v2, Lcom/ahsim/demulation/R$string;->razor_step635_status:I

    aget v3, p3, v0

    .line 2393
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget v0, p4, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v4, 0x12

    aget v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 2392
    invoke-virtual {p0, v2, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2388
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->stopFrame634()V

    .line 2389
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameStatus634:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->razor_frame634_error:I

    .line 2390
    if-nez p2, :cond_4

    const-string v2, "Session changed"

    goto :goto_1

    :cond_4
    move-object v2, p2

    :goto_1
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 2389
    invoke-virtual {p0, v1, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2395
    :cond_5
    :goto_2
    return-void

    .line 2386
    :cond_6
    :goto_3
    return-void
.end method

.method private synthetic lambda$deliverFrame634$61(IIJ)V
    .locals 10
    .param p1, "serial"    # I
    .param p2, "generation"    # I
    .param p3, "timestampNs"    # J

    .line 2373
    const/4 v1, 0x0

    .local v1, "row":[I
    const/4 v2, 0x0

    .local v2, "checkpoint":[I
    const/4 v3, 0x0

    .line 2375
    .local v3, "error":Ljava/lang/String;
    :try_start_0
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameGeneration634:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    .line 2376
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2377
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    const/4 v4, 0x1

    invoke-virtual {v0, v4, p3, p4}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->frameIngress634(IJ)[I

    move-result-object v0

    move-object v1, v0

    .line 2378
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->simulationStep635()[I

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 2382
    :cond_0
    goto :goto_2

    .line 2380
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 2381
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object v3, v4

    .line 2383
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_2
    move-object v8, v1

    .local v8, "result":[I
    move-object v9, v2

    .local v9, "gate635":[I
    move-object v7, v3

    .line 2384
    .local v7, "failure":Ljava/lang/String;
    new-instance v4, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda13;

    move-object v5, p0

    move v6, p1

    .end local p1    # "serial":I
    .local v6, "serial":I
    invoke-direct/range {v4 .. v9}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda13;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;ILjava/lang/String;[I[I)V

    invoke-virtual {p0, v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2396
    return-void
.end method

.method private synthetic lambda$executeSandboxPulse560$65(Ljava/lang/String;Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;III[IILcom/ahsim/demulation/RazorTickEvidence729;[I[I[I[I[I[I[I[ILcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;Lcom/ahsim/demulation/RazorCoreRoute664;[I[ILcom/ahsim/demulation/RazorDynamicObjects569;)V
    .locals 20
    .param p1, "failure"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    .param p3, "updated"    # Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .param p4, "generation"    # I
    .param p5, "house"    # I
    .param p6, "mission"    # I
    .param p7, "newOwnerHud743"    # [I
    .param p8, "dueFrames736"    # I
    .param p9, "newProof729"    # Lcom/ahsim/demulation/RazorTickEvidence729;
    .param p10, "newCore667"    # [I
    .param p11, "newCadence668"    # [I
    .param p12, "newSpeed670"    # [I
    .param p13, "newEmc671"    # [I
    .param p14, "newEmc672"    # [I
    .param p15, "newBuild715"    # [I
    .param p16, "newOwner716"    # [I
    .param p17, "newOwner673"    # [I
    .param p18, "updatedBridge663"    # Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .param p19, "updatedWitness665"    # Lcom/ahsim/demulation/RazorCoreRoute664;
    .param p20, "newFacing666"    # [I
    .param p21, "updatedSubtiles565"    # [I
    .param p22, "updatedDynamic569"    # Lcom/ahsim/demulation/RazorDynamicObjects569;

    .line 2696
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p11

    move-object/from16 v6, p15

    move-object/from16 v7, p16

    move-object/from16 v8, p20

    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxInFlight560:Z

    .line 2697
    iget-boolean v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v10, :cond_1c

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->isFinishing()Z

    move-result v10

    if-eqz v10, :cond_0

    move/from16 v13, p5

    move-object/from16 v9, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v14, p17

    move-object/from16 v15, p18

    goto/16 :goto_8

    .line 2698
    :cond_0
    const-string v10, "C_CYCLE_FAILURE"

    if-eqz v1, :cond_2

    .line 2699
    iget-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runtimeDiagnostics749:Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;

    invoke-virtual {v9, v10, v1}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->event(Ljava/lang/String;Ljava/lang/String;)V

    .line 2700
    iput-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastPulseFailure729:Ljava/lang/String;

    .line 2701
    const-string v9, "\u041e\u0448\u0438\u0431\u043a\u0430 \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u044f"

    iput-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->pauseReason740:Ljava/lang/String;

    .line 2702
    invoke-direct {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->pauseSandbox560()V

    .line 2703
    iget-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapHint559:Landroid/widget/TextView;

    if-eqz v9, :cond_1

    iget-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapHint559:Landroid/widget/TextView;

    sget v10, Lcom/ahsim/demulation/R$string;->razor_preview_error:I

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v11

    .line 2704
    invoke-virtual {v0, v10, v11}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 2703
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2705
    :cond_1
    return-void

    .line 2707
    :cond_2
    if-eqz v2, :cond_1b

    if-nez v3, :cond_3

    move/from16 v13, p5

    move-object/from16 v9, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v14, p17

    move-object/from16 v15, p18

    goto/16 :goto_7

    .line 2713
    :cond_3
    const/4 v10, 0x0

    iput-object v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastPulseFailure729:Ljava/lang/String;

    .line 2716
    iget v11, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    move/from16 v12, p4

    if-ne v12, v11, :cond_18

    iget-object v11, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    .line 2717
    invoke-virtual {v11}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v11

    move/from16 v13, p5

    if-ne v13, v11, :cond_17

    iget-object v11, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->missionSpinner:Landroid/widget/Spinner;

    .line 2718
    invoke-virtual {v11}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v11

    const/4 v14, 0x1

    add-int/2addr v11, v14

    move/from16 v15, p6

    if-ne v15, v11, :cond_16

    .line 2719
    move-object/from16 v11, p7

    iput-object v11, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->ownerHud743:[I

    .line 2720
    iget v10, v2, Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;->ticks:I

    iput v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxTicks560:I

    .line 2721
    move/from16 v10, p8

    iput v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->burstFrames736:I

    .line 2722
    iget-boolean v14, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v14, :cond_4

    iget-object v14, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameBar674:Landroid/widget/TextView;

    if-eqz v14, :cond_4

    .line 2723
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 2724
    .local v9, "now736":J
    iget-wide v14, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->rateStartNs736:J

    sub-long v14, v9, v14

    .line 2725
    .local v14, "duration736":J
    const-wide/32 v18, 0x77359400

    cmp-long v18, v14, v18

    if-ltz v18, :cond_4

    .line 2726
    iget v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxTicks560:I

    move/from16 v18, v1

    iget v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->rateStartTicks736:I

    sub-int v1, v18, v1

    int-to-double v11, v1

    const-wide v18, 0x41cdcd6500000000L    # 1.0E9

    mul-double v11, v11, v18

    move-wide/from16 v18, v11

    long-to-double v11, v14

    div-double v11, v18, v11

    iput-wide v11, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->observedCps736:D

    .line 2728
    iget v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxTicks560:I

    iput v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->rateStartTicks736:I

    .line 2729
    iput-wide v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->rateStartNs736:J

    .line 2732
    .end local v9    # "now736":J
    .end local v14    # "duration736":J
    :cond_4
    if-eqz v4, :cond_5

    iput-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->currentProof729:Lcom/ahsim/demulation/RazorTickEvidence729;

    .line 2733
    :cond_5
    iget v1, v2, Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;->moves:I

    iput v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxMoves560:I

    .line 2734
    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->corePass667:[I

    .line 2735
    iput-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->coreCadence668:[I

    .line 2736
    move-object/from16 v9, p12

    iput-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedStatus670:[I

    .line 2737
    move-object/from16 v11, p13

    iput-object v11, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus671:[I

    .line 2738
    move-object/from16 v12, p14

    iput-object v12, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus672:[I

    .line 2739
    if-eqz v6, :cond_6

    iput-object v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildStatus715:[I

    .line 2740
    :cond_6
    if-eqz v7, :cond_7

    iput-object v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildOwner716:[I

    .line 2741
    :cond_7
    move-object/from16 v14, p17

    iput-object v14, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcOwner673:[I

    .line 2742
    move-object/from16 v15, p18

    iput-object v15, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->coreSnapshot663:Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;

    .line 2743
    iget-boolean v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    const/16 v18, 0x2

    if-eqz v10, :cond_9

    .line 2744
    iget-boolean v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->followSelected663:Z

    if-eqz v10, :cond_9

    iget v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    if-ltz v10, :cond_9

    iget v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    iget-object v1, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v1, v1

    if-ge v10, v1, :cond_9

    iget-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    if-eqz v1, :cond_9

    .line 2746
    iget-object v1, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    iget v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    aget-object v1, v1, v10

    .line 2750
    .local v1, "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    iget v10, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->x:I

    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    if-lt v10, v2, :cond_8

    iget v2, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->x:I

    iget-object v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v10}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v10

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v4

    add-int/2addr v10, v4

    add-int/lit8 v10, v10, -0x2

    if-ge v2, v10, :cond_8

    iget v2, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->y:I

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    .line 2751
    invoke-virtual {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    if-lt v2, v4, :cond_8

    iget v2, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->y:I

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v4

    iget-object v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v10}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->rows()I

    move-result v10

    add-int/2addr v4, v10

    add-int/lit8 v4, v4, -0x2

    if-lt v2, v4, :cond_9

    :cond_8
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    iget v4, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->x:I

    iget v10, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->y:I

    .line 2752
    invoke-virtual {v2, v4, v10}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->focus(II)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2753
    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->smoothCamera679:Lcom/ahsim/demulation/RazorSmoothCamera679;

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v4

    iget-object v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v10}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v10

    invoke-virtual {v2, v4, v10}, Lcom/ahsim/demulation/RazorSmoothCamera679;->reset(II)V

    .line 2754
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestFrame(Z)V

    .line 2760
    .end local v1    # "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    :cond_9
    iget-boolean v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v1, :cond_f

    .line 2761
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->routeWitness664:Lcom/ahsim/demulation/RazorCoreRoute664;

    .line 2762
    iput-object v8, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->facing666:[I

    .line 2763
    if-eqz v8, :cond_11

    array-length v2, v8

    iget-object v4, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x6

    if-ne v2, v4, :cond_11

    iget v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    if-ltz v2, :cond_11

    iget v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    iget-object v4, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v4, v4

    if-ge v2, v4, :cond_11

    iget v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x6

    aget v2, v8, v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_11

    .line 2767
    iget v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x7

    aget v2, v8, v2

    and-int/lit16 v2, v2, 0xff

    .line 2768
    .local v2, "currentTurn753":I
    iget v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastTurnUnit753:I

    iget v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    if-ne v4, v10, :cond_a

    iget v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastTurnAngle753:I

    if-eq v4, v2, :cond_e

    .line 2770
    :cond_a
    iget v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    iput v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastTurnUnit753:I

    .line 2771
    iput v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastTurnAngle753:I

    .line 2772
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runtimeDiagnostics749:Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unit="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " angle="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " c="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxTicks560:I

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " CperSec="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->observedCps736:D

    .line 2776
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " moveGate="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2777
    const/16 v6, 0xa

    const/4 v7, -0x1

    if-eqz v5, :cond_b

    array-length v10, v5

    if-ne v10, v6, :cond_b

    .line 2778
    aget v10, v5, v18

    goto :goto_0

    :cond_b
    move v10, v7

    :goto_0
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " turnGate="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2779
    if-eqz v5, :cond_c

    array-length v10, v5

    if-ne v10, v6, :cond_c

    .line 2780
    const/4 v10, 0x3

    aget v10, v5, v10

    goto :goto_1

    :cond_c
    move v10, v7

    :goto_1
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " scriptGate="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2781
    if-eqz v5, :cond_d

    array-length v10, v5

    if-ne v10, v6, :cond_d

    .line 2782
    const/4 v6, 0x4

    aget v7, v5, v6

    goto :goto_2

    :cond_d
    nop

    :goto_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2772
    const-string v6, "TURN753"

    invoke-virtual {v4, v6, v1}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->event(Ljava/lang/String;Ljava/lang/String;)V

    .line 2784
    .end local v2    # "currentTurn753":I
    :cond_e
    goto :goto_3

    .line 2786
    :cond_f
    iget-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->routeWitness664:Lcom/ahsim/demulation/RazorCoreRoute664;

    if-eqz v1, :cond_11

    iget v1, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->activeUnit:I

    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->routeWitness664:Lcom/ahsim/demulation/RazorCoreRoute664;

    iget v2, v2, Lcom/ahsim/demulation/RazorCoreRoute664;->unit:I

    if-ne v1, v2, :cond_10

    iget v1, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->targetX:I

    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->routeWitness664:Lcom/ahsim/demulation/RazorCoreRoute664;

    iget v2, v2, Lcom/ahsim/demulation/RazorCoreRoute664;->goalX:I

    if-ne v1, v2, :cond_10

    iget v1, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->targetY:I

    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->routeWitness664:Lcom/ahsim/demulation/RazorCoreRoute664;

    iget v2, v2, Lcom/ahsim/demulation/RazorCoreRoute664;->goalY:I

    if-eq v1, v2, :cond_11

    .line 2789
    :cond_10
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->routeWitness664:Lcom/ahsim/demulation/RazorCoreRoute664;

    .line 2790
    :cond_11
    :goto_3
    iput-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignSubtiles565:[I

    .line 2791
    move-object/from16 v2, p22

    iput-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dynamicObjects569:Lcom/ahsim/demulation/RazorDynamicObjects569;

    .line 2792
    iget-boolean v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v4, :cond_12

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameBar674:Landroid/widget/TextView;

    if-nez v4, :cond_12

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateQuickHud662(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;)V

    .line 2793
    :cond_12
    invoke-direct {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateGameBar674()V

    .line 2794
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapView:Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;

    if-eqz v4, :cond_13

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapView:Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;

    invoke-virtual {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->invalidate()V

    .line 2795
    :cond_13
    iget v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    if-ltz v4, :cond_14

    iget v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    iget-object v6, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v6, v6

    if-ge v4, v6, :cond_14

    .line 2797
    iget-object v4, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    iget v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    aget-object v4, v4, v6

    .line 2799
    .local v4, "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    iget-object v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->objectDetails:Landroid/widget/TextView;

    invoke-direct {v0, v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitLabel566(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2801
    .end local v4    # "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    :cond_14
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapHint559:Landroid/widget/TextView;

    iget-boolean v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v6, :cond_15

    .line 2802
    sget v6, Lcom/ahsim/demulation/R$string;->razor_quick662_howto:I

    invoke-virtual {v0, v6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 2803
    :cond_15
    sget v6, Lcom/ahsim/demulation/R$string;->razor_auto560_progress:I

    iget v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxTicks560:I

    .line 2804
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxMoves560:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v7, v10}, [Ljava/lang/Object;

    move-result-object v7

    .line 2803
    invoke-virtual {v0, v6, v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2801
    :goto_4
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2805
    invoke-direct {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateMapActions559()V

    goto :goto_5

    .line 2718
    :cond_16
    move-object/from16 v9, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v14, p17

    move-object/from16 v15, p18

    move-object/from16 v1, p21

    move-object/from16 v2, p22

    goto :goto_5

    .line 2717
    :cond_17
    move-object/from16 v9, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v14, p17

    move-object/from16 v15, p18

    move-object/from16 v1, p21

    move-object/from16 v2, p22

    goto :goto_5

    .line 2716
    :cond_18
    move/from16 v13, p5

    move-object/from16 v9, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v14, p17

    move-object/from16 v15, p18

    move-object/from16 v1, p21

    move-object/from16 v2, p22

    .line 2807
    :goto_5
    iget-boolean v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxRunning560:Z

    if-eqz v4, :cond_1a

    .line 2808
    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxClock560:Landroid/os/Handler;

    iget-object v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxPulse560:Ljava/lang/Runnable;

    .line 2809
    iget-boolean v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v7, :cond_19

    iget-object v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameBar674:Landroid/widget/TextView;

    if-eqz v7, :cond_19

    const-wide/16 v16, 0x10

    goto :goto_6

    :cond_19
    const-wide/16 v16, 0x5a

    :goto_6
    move-wide/from16 v1, v16

    .line 2808
    invoke-virtual {v4, v6, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2810
    :cond_1a
    return-void

    .line 2707
    :cond_1b
    move/from16 v13, p5

    move-object/from16 v9, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v14, p17

    move-object/from16 v15, p18

    .line 2708
    :goto_7
    iget-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runtimeDiagnostics749:Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;

    const-string v2, "Incomplete native frame"

    invoke-virtual {v1, v10, v2}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->event(Ljava/lang/String;Ljava/lang/String;)V

    .line 2709
    const-string v1, "\u041d\u0435\u043f\u043e\u043b\u043d\u044b\u0439 \u043e\u0442\u0432\u0435\u0442 \u0438\u0433\u0440\u043e\u0432\u043e\u0433\u043e \u0446\u0438\u043a\u043b\u0430"

    iput-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastPulseFailure729:Ljava/lang/String;

    .line 2710
    iput-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->pauseReason740:Ljava/lang/String;

    .line 2711
    invoke-direct {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->pauseSandbox560()V

    return-void

    .line 2697
    :cond_1c
    move/from16 v13, p5

    move-object/from16 v9, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v14, p17

    move-object/from16 v15, p18

    :goto_8
    return-void
.end method

.method private synthetic lambda$executeSandboxPulse560$66(IIII)V
    .locals 42
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .param p3, "dueFrames736"    # I
    .param p4, "generation"    # I

    .line 2596
    move-object/from16 v1, p0

    move/from16 v6, p1

    move/from16 v7, p2

    const/4 v2, 0x0

    .line 2597
    .local v2, "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    const/4 v3, 0x0

    .line 2598
    .local v3, "frame":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    const/4 v4, 0x0

    .line 2599
    .local v4, "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    const/4 v5, 0x0

    .line 2600
    .local v5, "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    const/4 v8, 0x0

    .line 2601
    .local v8, "updatedRoute665":Lcom/ahsim/demulation/RazorCoreRoute664;
    const/4 v9, 0x0

    .line 2602
    .local v9, "updatedFacing666":[I
    const/4 v10, 0x0

    .line 2603
    .local v10, "updatedCore667":[I
    const/4 v11, 0x0

    .line 2604
    .local v11, "updatedCadence668":[I
    const/4 v12, 0x0

    .line 2605
    .local v12, "updatedSpeed670":[I
    const/4 v13, 0x0

    .line 2606
    .local v13, "updatedEmc671":[I
    const/4 v14, 0x0

    .line 2607
    .local v14, "updatedEmc672":[I
    const/4 v15, 0x0

    .line 2608
    .local v15, "updatedProof729":Lcom/ahsim/demulation/RazorTickEvidence729;
    const/16 v16, 0x0

    .line 2609
    .local v16, "updatedBuild715":[I
    const/16 v17, 0x0

    .line 2610
    .local v17, "updatedOwner716":[I
    const/16 v18, 0x0

    .line 2611
    .local v18, "updatedOwner673":[I
    const/16 v19, 0x0

    .line 2612
    .local v19, "fractional565":[I
    const/16 v20, 0x0

    .line 2613
    .local v20, "perOwnerHud743":[I
    const/16 v21, 0x0

    .line 2615
    .local v21, "error":Ljava/lang/String;
    :try_start_0
    iget-boolean v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_b

    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    .line 2616
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    iget v0, v0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->house:I

    if-ne v0, v6, :cond_a

    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    iget v0, v0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->mission:I

    if-ne v0, v7, :cond_a

    .line 2619
    iget-boolean v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_15

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameBar674:Landroid/widget/TextView;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v0, :cond_1

    .line 2623
    const/4 v0, 0x0

    .local v0, "f736":I
    :goto_0
    move-object/from16 v22, v2

    move/from16 v2, p3

    .end local v2    # "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    .local v22, "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    if-ge v0, v2, :cond_0

    .line 2624
    move/from16 v23, v0

    .end local v0    # "f736":I
    .local v23, "f736":I
    :try_start_2
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    .line 2625
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->integratedStep729()Lcom/ahsim/demulation/RazorCampaignNativeSession$IntegratedStep694;

    move-result-object v0

    .line 2626
    .local v0, "integrated694":Lcom/ahsim/demulation/RazorCampaignNativeSession$IntegratedStep694;
    iget-object v2, v0, Lcom/ahsim/demulation/RazorCampaignNativeSession$IntegratedStep694;->proof:Lcom/ahsim/demulation/RazorTickEvidence729;

    move-object v15, v2

    .line 2627
    iget-object v2, v0, Lcom/ahsim/demulation/RazorCampaignNativeSession$IntegratedStep694;->tick:Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;

    .line 2628
    .end local v22    # "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    .restart local v2    # "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    move-object/from16 v22, v2

    .end local v2    # "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    .restart local v22    # "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    iget-object v2, v0, Lcom/ahsim/demulation/RazorCampaignNativeSession$IntegratedStep694;->emc:[I

    move-object v14, v2

    .line 2623
    .end local v0    # "integrated694":Lcom/ahsim/demulation/RazorCampaignNativeSession$IntegratedStep694;
    add-int/lit8 v0, v23, 0x1

    move-object/from16 v2, v22

    .end local v23    # "f736":I
    .local v0, "f736":I
    goto :goto_0

    :cond_0
    move/from16 v23, v0

    .line 2634
    .end local v0    # "f736":I
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->coreCadence668()[I

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_0

    move-object v11, v0

    move-object/from16 v2, v22

    goto :goto_2

    .line 2672
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_1
    move-object/from16 v2, v22

    goto/16 :goto_a

    .end local v22    # "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    .restart local v2    # "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    :catch_3
    move-exception v0

    goto/16 :goto_a

    :catch_4
    move-exception v0

    goto/16 :goto_a

    :catch_5
    move-exception v0

    goto/16 :goto_a

    .line 2635
    :cond_1
    :try_start_3
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->schedulerStep560()Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_16
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_15

    .end local v2    # "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    .local v0, "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    move-object v2, v0

    .line 2636
    .end local v0    # "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    .restart local v2    # "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    :goto_2
    :try_start_4
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->mapSnapshot559()Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    move-result-object v0

    move-object v3, v0

    .line 2637
    iget-boolean v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_4} :catch_f

    if-eqz v0, :cond_2

    :try_start_5
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameBar674:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 2638
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->hud743(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;)[I

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/LinkageError; {:try_start_5 .. :try_end_5} :catch_3

    move-object/from16 v20, v0

    .line 2639
    :cond_2
    :try_start_6
    iget-boolean v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/lang/LinkageError; {:try_start_6 .. :try_end_6} :catch_f

    if-eqz v0, :cond_3

    :try_start_7
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->facingSnapshot666()[I

    move-result-object v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/LinkageError; {:try_start_7 .. :try_end_7} :catch_3

    move-object v9, v0

    .line 2640
    :cond_3
    :try_start_8
    iget-boolean v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameBar674:Landroid/widget/TextView;

    if-nez v0, :cond_4

    .line 2641
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->corePass667()[I

    move-result-object v0

    move-object v10, v0

    .line 2642
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->coreCadence668()[I

    move-result-object v0

    move-object v11, v0

    .line 2643
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljava/lang/LinkageError; {:try_start_8 .. :try_end_8} :catch_f

    move-object/from16 v22, v2

    .end local v2    # "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    .restart local v22    # "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    :try_start_9
    iget v2, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/LinkageError; {:try_start_9 .. :try_end_9} :catch_6

    move-object/from16 v23, v4

    .end local v4    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .local v23, "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    const/4 v4, 0x1

    move-object/from16 v24, v5

    .end local v5    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .local v24, "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    const/4 v5, 0x0

    :try_start_a
    invoke-virtual {v0, v5, v4, v2}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->emc671(Lcom/ahsim/demulation/RazorTerrainPreviewSource;II)[I

    move-result-object v0

    move-object v13, v0

    .line 2644
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    iget v2, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v2}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->emc672(II)[I

    move-result-object v0

    move-object v14, v0

    .line 2645
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    iget v2, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    invoke-virtual {v0, v2}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->emcOwner673(I)[I

    move-result-object v0

    move-object/from16 v18, v0

    .line 2646
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    iget v2, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    const/4 v4, -0x1

    invoke-virtual {v0, v4, v2}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->speedMode670(II)[I

    move-result-object v0

    move-object v12, v0

    .end local v12    # "updatedSpeed670":[I
    .local v0, "updatedSpeed670":[I
    goto :goto_3

    .line 2672
    .end local v0    # "updatedSpeed670":[I
    .end local v23    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .end local v24    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .restart local v4    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .restart local v5    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .restart local v12    # "updatedSpeed670":[I
    :catch_6
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v2, v22

    .end local v4    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .end local v5    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .restart local v23    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .restart local v24    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    goto/16 :goto_a

    .end local v23    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .end local v24    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .restart local v4    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .restart local v5    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    :catch_7
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v2, v22

    .end local v4    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .end local v5    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .restart local v23    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .restart local v24    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    goto/16 :goto_a

    .end local v23    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .end local v24    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .restart local v4    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .restart local v5    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    :catch_8
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v2, v22

    .end local v4    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .end local v5    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .restart local v23    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .restart local v24    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    goto/16 :goto_a

    .line 2640
    .end local v22    # "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    .end local v23    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .end local v24    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .restart local v2    # "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    .restart local v4    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .restart local v5    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    :cond_4
    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    .line 2648
    .end local v2    # "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    .end local v4    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .end local v5    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .restart local v22    # "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    .restart local v23    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .restart local v24    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    :goto_3
    iget-boolean v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildStatus715:[I

    if-eqz v0, :cond_5

    .line 2649
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->buildEmc715Status()[I

    move-result-object v0

    move-object/from16 v16, v0

    .line 2650
    :cond_5
    iget-boolean v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildStatus715:[I

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildStatus715:[I

    const/4 v2, 0x2

    aget v0, v0, v2

    if-lez v0, :cond_6

    .line 2652
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->buildEmcOwner716(I)[I

    move-result-object v0

    move-object/from16 v17, v0

    .line 2653
    :cond_6
    iget-boolean v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v0, :cond_7

    iget v0, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->activeUnit:I

    if-ltz v0, :cond_7

    iget v0, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->targetX:I

    if-ltz v0, :cond_7

    iget v0, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->targetY:I

    if-ltz v0, :cond_7

    .line 2655
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    iget v2, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->activeUnit:I

    iget v4, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->targetX:I

    iget v5, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->targetY:I

    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->routeWitness664(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;III)Lcom/ahsim/demulation/RazorCoreRoute664;

    move-result-object v0

    move-object v8, v0

    .line 2658
    :cond_7
    iget-boolean v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    if-eqz v0, :cond_8

    .line 2659
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    iget-object v0, v0, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    .line 2660
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->verifiedCampaignBundle559()Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->mission(II)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    move-result-object v0

    .line 2659
    invoke-static {v0, v3}, Lcom/ahsim/demulation/RazorCoreWorldAdapter663;->readOnly(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;)Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/LinkageError; {:try_start_a .. :try_end_a} :catch_c

    move-object v5, v0

    .end local v24    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .local v0, "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    goto :goto_4

    .line 2661
    .end local v0    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .restart local v24    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    :cond_8
    move-object/from16 v5, v24

    .end local v24    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .restart local v5    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    :goto_4
    :try_start_b
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->dynamicObjects569(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;)Lcom/ahsim/demulation/RazorDynamicObjects569;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/lang/LinkageError; {:try_start_b .. :try_end_b} :catch_9

    move-object v4, v0

    .line 2668
    .end local v23    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .restart local v4    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    :try_start_c
    iget-boolean v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v0, :cond_9

    .line 2669
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->waypointVisual742(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;)[I

    move-result-object v0

    goto :goto_5

    .line 2670
    :cond_9
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->subtileSnapshot565(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;)[I

    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_c .. :try_end_c} :catch_0

    :goto_5
    move-object/from16 v19, v0

    move-object/from16 v2, v22

    goto :goto_9

    .line 2672
    .end local v4    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .restart local v23    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    :catch_9
    move-exception v0

    goto :goto_6

    :catch_a
    move-exception v0

    goto :goto_6

    :catch_b
    move-exception v0

    :goto_6
    move-object/from16 v2, v22

    move-object/from16 v4, v23

    goto/16 :goto_a

    .end local v5    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .restart local v24    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    :catch_c
    move-exception v0

    move-object/from16 v2, v22

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    goto/16 :goto_a

    :catch_d
    move-exception v0

    move-object/from16 v2, v22

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    goto/16 :goto_a

    :catch_e
    move-exception v0

    move-object/from16 v2, v22

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    goto/16 :goto_a

    .end local v22    # "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    .end local v23    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .end local v24    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .restart local v2    # "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    .restart local v4    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .restart local v5    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    :catch_f
    move-exception v0

    goto :goto_7

    :catch_10
    move-exception v0

    goto :goto_7

    :catch_11
    move-exception v0

    :goto_7
    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    .end local v2    # "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    .end local v4    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .end local v5    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .restart local v22    # "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    .restart local v23    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .restart local v24    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    goto/16 :goto_a

    .line 2616
    .end local v22    # "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    .end local v23    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .end local v24    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .restart local v2    # "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    .restart local v4    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .restart local v5    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    :cond_a
    move-object/from16 v23, v4

    move-object/from16 v24, v5

    .end local v4    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .end local v5    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .restart local v23    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .restart local v24    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    goto :goto_8

    .line 2615
    .end local v23    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .end local v24    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .restart local v4    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .restart local v5    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    :cond_b
    move-object/from16 v23, v4

    move-object/from16 v24, v5

    .line 2671
    .end local v4    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .end local v5    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .restart local v23    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .restart local v24    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    :goto_8
    :try_start_d
    const-string v0, "Razor sandbox session is no longer available"
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/lang/LinkageError; {:try_start_d .. :try_end_d} :catch_12

    move-object/from16 v21, v0

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    .line 2676
    .end local v23    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .end local v24    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .restart local v4    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .restart local v5    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    :goto_9
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move-object/from16 v30, v10

    move-object/from16 v31, v11

    move-object/from16 v32, v12

    move-object/from16 v33, v13

    move-object/from16 v34, v14

    move-object/from16 v35, v15

    move-object/from16 v36, v16

    move-object/from16 v37, v17

    move-object/from16 v38, v18

    move-object/from16 v39, v19

    move-object/from16 v40, v20

    move-object/from16 v41, v21

    goto/16 :goto_c

    .line 2672
    .end local v4    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .end local v5    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .restart local v23    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .restart local v24    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    :catch_12
    move-exception v0

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    goto :goto_a

    :catch_13
    move-exception v0

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    goto :goto_a

    :catch_14
    move-exception v0

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    goto :goto_a

    .end local v23    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .end local v24    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .restart local v4    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .restart local v5    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    :catch_15
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    .end local v4    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .end local v5    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .restart local v23    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .restart local v24    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    goto :goto_a

    .end local v23    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .end local v24    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .restart local v4    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .restart local v5    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    :catch_16
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    .end local v4    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .end local v5    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .restart local v23    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .restart local v24    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    goto :goto_a

    .end local v23    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .end local v24    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .restart local v4    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .restart local v5    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    :catch_17
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    .line 2673
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_a
    move-object/from16 v22, v2

    .end local v2    # "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    .restart local v22    # "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    const-string v2, "RazorTerrainPreview"

    move-object/from16 v23, v3

    .end local v3    # "frame":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .local v23, "frame":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    const-string v3, "Native sandbox scheduler rejected update"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2674
    iget-object v2, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runtimeDiagnostics749:Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;

    const-string v3, "C_CYCLE"

    invoke-virtual {v2, v3, v0}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2675
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    :goto_b
    move-object/from16 v21, v2

    move-object/from16 v24, v22

    move-object/from16 v25, v23

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move-object/from16 v30, v10

    move-object/from16 v31, v11

    move-object/from16 v32, v12

    move-object/from16 v33, v13

    move-object/from16 v34, v14

    move-object/from16 v35, v15

    move-object/from16 v36, v16

    move-object/from16 v37, v17

    move-object/from16 v38, v18

    move-object/from16 v39, v19

    move-object/from16 v40, v20

    move-object/from16 v41, v21

    .line 2677
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v4    # "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .end local v5    # "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .end local v8    # "updatedRoute665":Lcom/ahsim/demulation/RazorCoreRoute664;
    .end local v9    # "updatedFacing666":[I
    .end local v10    # "updatedCore667":[I
    .end local v11    # "updatedCadence668":[I
    .end local v12    # "updatedSpeed670":[I
    .end local v13    # "updatedEmc671":[I
    .end local v14    # "updatedEmc672":[I
    .end local v15    # "updatedProof729":Lcom/ahsim/demulation/RazorTickEvidence729;
    .end local v16    # "updatedBuild715":[I
    .end local v17    # "updatedOwner716":[I
    .end local v18    # "updatedOwner673":[I
    .end local v19    # "fractional565":[I
    .end local v20    # "perOwnerHud743":[I
    .end local v21    # "error":Ljava/lang/String;
    .end local v22    # "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    .end local v23    # "frame":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .local v24, "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    .local v25, "frame":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .local v26, "dynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .local v27, "bridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .local v28, "updatedRoute665":Lcom/ahsim/demulation/RazorCoreRoute664;
    .local v29, "updatedFacing666":[I
    .local v30, "updatedCore667":[I
    .local v31, "updatedCadence668":[I
    .local v32, "updatedSpeed670":[I
    .local v33, "updatedEmc671":[I
    .local v34, "updatedEmc672":[I
    .local v35, "updatedProof729":Lcom/ahsim/demulation/RazorTickEvidence729;
    .local v36, "updatedBuild715":[I
    .local v37, "updatedOwner716":[I
    .local v38, "updatedOwner673":[I
    .local v39, "fractional565":[I
    .local v40, "perOwnerHud743":[I
    .local v41, "error":Ljava/lang/String;
    :goto_c
    move-object/from16 v3, v24

    .line 2678
    .local v3, "result":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    move-object/from16 v4, v25

    .line 2679
    .local v4, "updated":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    move-object/from16 v22, v39

    .line 2680
    .local v22, "updatedSubtiles565":[I
    move-object/from16 v8, v40

    .line 2681
    .local v8, "newOwnerHud743":[I
    move-object/from16 v23, v26

    .line 2682
    .local v23, "updatedDynamic569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    move-object/from16 v19, v27

    .line 2683
    .local v19, "updatedBridge663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    move-object/from16 v20, v28

    .line 2684
    .local v20, "updatedWitness665":Lcom/ahsim/demulation/RazorCoreRoute664;
    move-object/from16 v21, v29

    .line 2685
    .local v21, "newFacing666":[I
    move-object/from16 v11, v30

    .line 2686
    .local v11, "newCore667":[I
    move-object/from16 v12, v31

    .line 2687
    .local v12, "newCadence668":[I
    move-object/from16 v13, v32

    .line 2688
    .local v13, "newSpeed670":[I
    move-object/from16 v14, v33

    .line 2689
    .local v14, "newEmc671":[I
    move-object/from16 v15, v34

    .line 2690
    .local v15, "newEmc672":[I
    move-object/from16 v10, v35

    .line 2691
    .local v10, "newProof729":Lcom/ahsim/demulation/RazorTickEvidence729;
    move-object/from16 v16, v36

    .line 2692
    .local v16, "newBuild715":[I
    move-object/from16 v17, v37

    .line 2693
    .local v17, "newOwner716":[I
    move-object/from16 v18, v38

    .line 2694
    .local v18, "newOwner673":[I
    move-object/from16 v2, v41

    .line 2695
    .local v2, "failure":Ljava/lang/String;
    new-instance v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda62;

    move/from16 v9, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v23}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda62;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Ljava/lang/String;Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;III[IILcom/ahsim/demulation/RazorTickEvidence729;[I[I[I[I[I[I[I[ILcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;Lcom/ahsim/demulation/RazorCoreRoute664;[I[ILcom/ahsim/demulation/RazorDynamicObjects569;)V

    invoke-virtual {v1, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2811
    return-void
.end method

.method private synthetic lambda$failure$69(Ljava/lang/String;)V
    .locals 3
    .param p1, "why"    # Ljava/lang/String;

    .line 2882
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2883
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2884
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->status:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->razor_preview_error:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2885
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameBar674:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameBar674:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043e\u0442\u043a\u0440\u044b\u0442\u044c \u043a\u0430\u0440\u0442\u0443: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2886
    :cond_1
    return-void

    .line 2882
    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$installGameSurface674$19(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 587
    const/4 v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedEnemy674:I

    .line 588
    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedBuilding674:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->routeWitness664:Lcom/ahsim/demulation/RazorCoreRoute664;

    .line 589
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateGameBar674()V

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapView:Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapView:Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->invalidate()V

    .line 590
    :cond_0
    return-void
.end method

.method private synthetic lambda$installGameSurface674$20(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 594
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    if-ltz v0, :cond_0

    .line 595
    const/4 v0, 0x3

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestMapCommand559(IIII)V

    .line 596
    :cond_0
    return-void
.end method

.method private synthetic lambda$installGameSurface674$21(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 599
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestDeployMcv726()V

    return-void
.end method

.method private synthetic lambda$installGameSurface674$22(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 608
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->showPlayMenu676()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 220
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->executeSandboxPulse560()V

    return-void
.end method

.method private synthetic lambda$onActivityResult$30(Ljava/lang/String;Lcom/ahsim/demulation/GenesisObjectArt;ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "problem"    # Ljava/lang/String;
    .param p2, "accepted"    # Lcom/ahsim/demulation/GenesisObjectArt;
    .param p3, "persist741"    # Z
    .param p4, "uri"    # Landroid/net/Uri;

    .line 935
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 936
    :cond_0
    if-nez p1, :cond_4

    if-nez p2, :cond_1

    goto :goto_1

    .line 939
    :cond_1
    iput-object p2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->originalSprites674:Lcom/ahsim/demulation/GenesisObjectArt;

    .line 940
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameplaySpritesAvailable674:Z

    .line 941
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->artFrameError740:Ljava/lang/String;

    .line 942
    if-eqz p3, :cond_2

    .line 943
    const-string v0, "\u0413\u0440\u0430\u0444\u0438\u043a\u0430: \u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0451\u043d \u043e\u0440\u0438\u0433\u0438\u043d\u0430\u043b\u044c\u043d\u044b\u0439 ROM Dune"

    goto :goto_0

    .line 944
    :cond_2
    const-string v0, "\u0413\u0440\u0430\u0444\u0438\u043a\u0430: ROM \u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0451\u043d \u0434\u043e \u0432\u044b\u0445\u043e\u0434\u0430 \u0438\u0437 \u0438\u0433\u0440\u044b (\u0431\u0435\u0437 \u043f\u043e\u0441\u0442\u043e\u044f\u043d\u043d\u043e\u0433\u043e \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0438\u044f)"

    :goto_0
    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->artStatus740:Ljava/lang/String;

    .line 945
    const-string v0, "classic_uri"

    const/4 v1, 0x0

    const-string v2, "razor_tactical_art741"

    if-eqz p3, :cond_3

    .line 946
    invoke-virtual {p0, v2, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 947
    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 949
    :cond_3
    invoke-virtual {p0, v2, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 950
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 937
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ROM \u043d\u0435 \u043f\u043e\u0434\u0445\u043e\u0434\u0438\u0442 \u0434\u043b\u044f \u043e\u0440\u0438\u0433\u0438\u043d\u0430\u043b\u044c\u043d\u043e\u0439 \u0433\u0440\u0430\u0444\u0438\u043a\u0438: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->artStatus740:Ljava/lang/String;

    .line 952
    :goto_2
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateGameBar674()V

    .line 953
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapView:Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapView:Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->invalidate()V

    .line 954
    :cond_5
    return-void

    .line 935
    :cond_6
    :goto_3
    return-void
.end method

.method private synthetic lambda$onActivityResult$31(Landroid/net/Uri;Z)V
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "persist741"    # Z

    .line 919
    const/4 v1, 0x0

    .line 920
    .local v1, "decoded":Lcom/ahsim/demulation/GenesisObjectArt;
    const/4 v2, 0x0

    .line 921
    .local v2, "error":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v3, v0

    .line 922
    .local v3, "in":Ljava/io/InputStream;
    if-eqz v3, :cond_2

    .line 923
    :try_start_1
    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->readBounded(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/RomImageNormalizer;->normalize([B)Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;

    move-result-object v0

    iget-object v0, v0, Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;->bytes:[B

    .line 925
    .local v0, "rom":[B
    new-instance v4, Lcom/ahsim/demulation/GenesisTerrainArt;

    invoke-direct {v4, v0}, Lcom/ahsim/demulation/GenesisTerrainArt;-><init>([B)V

    .line 926
    .local v4, "terrain":Lcom/ahsim/demulation/GenesisTerrainArt;
    new-instance v5, Lcom/ahsim/demulation/GenesisObjectArt;

    invoke-direct {v5, v0, v4}, Lcom/ahsim/demulation/GenesisObjectArt;-><init>([BLcom/ahsim/demulation/GenesisTerrainArt;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v5

    .line 927
    .end local v1    # "decoded":Lcom/ahsim/demulation/GenesisObjectArt;
    .local v6, "decoded":Lcom/ahsim/demulation/GenesisObjectArt;
    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v7, 0xd

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_2
    invoke-virtual/range {v6 .. v11}, Lcom/ahsim/demulation/GenesisObjectArt;->getUnitFrame(IIIII)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 929
    const/16 v1, 0x8

    const/16 v5, 0x208

    invoke-virtual {v6, v1, v5, v5}, Lcom/ahsim/demulation/GenesisObjectArt;->getPreferredStructureMetatileBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    .line 931
    .end local v0    # "rom":[B
    .end local v4    # "terrain":Lcom/ahsim/demulation/GenesisTerrainArt;
    if-eqz v3, :cond_4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 930
    .restart local v0    # "rom":[B
    .restart local v4    # "terrain":Lcom/ahsim/demulation/GenesisTerrainArt;
    :cond_0
    :try_start_4
    new-instance v1, Ljava/io/IOException;

    const-string v5, "\u041d\u0435\u0442 Construction Yard \u0432 ROM"

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "error":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v6    # "decoded":Lcom/ahsim/demulation/GenesisObjectArt;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "persist741":Z
    throw v1

    .line 928
    .restart local v2    # "error":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v6    # "decoded":Lcom/ahsim/demulation/GenesisObjectArt;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "persist741":Z
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v5, "\u041d\u0435\u0442 \u0431\u0430\u0437\u043e\u0432\u043e\u0433\u043e \u0438\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u044f \u043c\u043e\u0442\u043e\u0446\u0438\u043a\u043b\u0430"

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "error":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v6    # "decoded":Lcom/ahsim/demulation/GenesisObjectArt;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "persist741":Z
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 921
    .end local v0    # "rom":[B
    .end local v4    # "terrain":Lcom/ahsim/demulation/GenesisTerrainArt;
    .restart local v2    # "error":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v6    # "decoded":Lcom/ahsim/demulation/GenesisObjectArt;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "persist741":Z
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_0

    .end local v6    # "decoded":Lcom/ahsim/demulation/GenesisObjectArt;
    .restart local v1    # "decoded":Lcom/ahsim/demulation/GenesisObjectArt;
    :catchall_1
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    goto :goto_0

    .line 922
    :cond_2
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string v4, "\u041d\u0435\u043b\u044c\u0437\u044f \u043f\u0440\u043e\u0447\u0438\u0442\u0430\u0442\u044c ROM"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "decoded":Lcom/ahsim/demulation/GenesisObjectArt;
    .end local v2    # "error":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "persist741":Z
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 921
    .restart local v2    # "error":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v6    # "decoded":Lcom/ahsim/demulation/GenesisObjectArt;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "persist741":Z
    :goto_0
    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_7
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "error":Ljava/lang/String;
    .end local v6    # "decoded":Lcom/ahsim/demulation/GenesisObjectArt;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "persist741":Z
    :cond_3
    :goto_1
    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    .line 931
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "error":Ljava/lang/String;
    .restart local v6    # "decoded":Lcom/ahsim/demulation/GenesisObjectArt;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "persist741":Z
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    move-object v1, v6

    goto :goto_3

    .end local v6    # "decoded":Lcom/ahsim/demulation/GenesisObjectArt;
    .restart local v1    # "decoded":Lcom/ahsim/demulation/GenesisObjectArt;
    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object v6, v1

    .line 932
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "decoded":Lcom/ahsim/demulation/GenesisObjectArt;
    .restart local v6    # "decoded":Lcom/ahsim/demulation/GenesisObjectArt;
    :cond_4
    :goto_4
    move-object v10, v6

    .line 933
    .local v10, "accepted":Lcom/ahsim/demulation/GenesisObjectArt;
    move-object v9, v2

    .line 934
    .local v9, "problem":Ljava/lang/String;
    new-instance v7, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda25;

    move-object v8, p0

    move-object v12, p1

    move v11, p2

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "persist741":Z
    .local v11, "persist741":Z
    .local v12, "uri":Landroid/net/Uri;
    invoke-direct/range {v7 .. v12}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda25;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Ljava/lang/String;Lcom/ahsim/demulation/GenesisObjectArt;ZLandroid/net/Uri;)V

    invoke-virtual {p0, v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 955
    return-void
.end method

.method private synthetic lambda$onDestroy$70()V
    .locals 2

    .line 2897
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->liveWorld:Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->liveWorld:Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->close()V

    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->liveWorld:Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;

    .line 2898
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->nativeObjects:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->nativeObjects:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->close()V

    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->nativeObjects:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;

    .line 2899
    :cond_1
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->close()V

    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    .line 2900
    :cond_2
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorNativeWorldSession;->close()V

    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    .line 2901
    :cond_3
    return-void
.end method

.method private synthetic lambda$onResume$67()V
    .locals 1

    .line 2832
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2833
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateGameBar674()V

    .line 2834
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapView:Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapView:Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->invalidate()V

    .line 2836
    :cond_0
    return-void
.end method

.method private synthetic lambda$onResume$68()V
    .locals 1

    .line 2830
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->loadOriginalSpriteArt674()V

    .line 2831
    :cond_0
    new-instance v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda2;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2837
    return-void
.end method

.method private synthetic lambda$openSelectedMod$35(Lcom/ahsim/demulation/RazorTerrainPreviewSource;)V
    .locals 9
    .param p1, "verified"    # Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    .line 1195
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1196
    :cond_0
    iput-object p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    .line 1197
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->shareProbeButton:Landroid/widget/Button;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->shareProbeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1198
    :cond_1
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v0, :cond_3

    .line 1199
    const/4 v0, 0x2

    new-array v2, v0, [I

    aput v0, v2, v1

    const/4 v0, 0x0

    const/16 v3, 0x13

    aput v3, v2, v0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .line 1201
    .local v2, "dims":[[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 1202
    :try_start_0
    iget-object v5, p1, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    .line 1203
    invoke-virtual {v5}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->verifiedCampaignBundle559()Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    move-result-object v5

    iget-object v5, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->buildingData572:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;

    invoke-virtual {v5, v4}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->get(I)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    move-result-object v5

    .line 1204
    .local v5, "r":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;
    aget-object v6, v2, v4

    iget v7, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->width:I

    const/4 v8, 0x4

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    aput v7, v6, v0

    .line 1205
    aget-object v6, v2, v4

    iget v7, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->height:I

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    aput v7, v6, v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1201
    .end local v5    # "r":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1207
    .end local v4    # "i":I
    :catch_0
    move-exception v0

    .local v0, "err":Ljava/lang/RuntimeException;
    const-string v3, "RazorTerrainPreview"

    const-string v4, "Building art extents unavailable"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "err":Ljava/lang/RuntimeException;
    :cond_2
    nop

    .line 1208
    :goto_1
    iput-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->structureDimensions674:[[I

    .line 1210
    .end local v2    # "dims":[[I
    :cond_3
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus:Landroid/widget/TextView;

    sget v2, Lcom/ahsim/demulation/R$string;->razor_emc_audit_pass:I

    iget-object v3, p1, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->emcEvidence:Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;

    iget v3, v3, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->romVariant:I

    .line 1211
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p1, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->emcEvidence:Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;

    .line 1212
    invoke-virtual {v4}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->verifiedNodes()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p1, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->emcEvidence:Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;

    .line 1213
    invoke-virtual {v5}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->blockedNodes()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 1210
    invoke-virtual {p0, v2, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1214
    invoke-direct {p0, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestFrame(Z)V

    .line 1215
    return-void

    .line 1195
    :cond_4
    :goto_2
    return-void
.end method

.method private synthetic lambda$openSelectedMod$36(Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;Lcom/ahsim/demulation/RazorGameRomStore$Entry;)V
    .locals 5
    .param p1, "selected"    # Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    .param p2, "gameSource"    # Lcom/ahsim/demulation/RazorGameRomStore$Entry;

    .line 1179
    :try_start_0
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-nez v0, :cond_1

    iget-wide v0, p1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->size:J

    const-wide/32 v2, 0x400200

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1180
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor preview ROM exceeds verified image size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    .end local p2    # "gameSource":Lcom/ahsim/demulation/RazorGameRomStore$Entry;
    throw v0

    .line 1182
    .restart local p1    # "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    .restart local p2    # "gameSource":Lcom/ahsim/demulation/RazorGameRomStore$Entry;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1183
    iget-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/ahsim/demulation/RazorGameRomStore$Entry;->uri:Landroid/net/Uri;

    goto :goto_1

    :cond_2
    iget-object v1, p1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->uri:Landroid/net/Uri;

    .line 1182
    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1184
    .local v0, "stream":Ljava/io/InputStream;
    if-eqz v0, :cond_8

    .line 1185
    :try_start_1
    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->readBounded(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1186
    .local v1, "raw":[B
    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1187
    .end local v0    # "stream":Ljava/io/InputStream;
    :cond_3
    invoke-static {v1}, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->inspectRawRom([B)Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    move-result-object v0

    .line 1188
    .local v0, "verified":Lcom/ahsim/demulation/RazorTerrainPreviewSource;
    iget-boolean v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->loadOriginalSpriteArt674()V

    .line 1190
    :cond_4
    iget-boolean v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-eqz v2, :cond_5

    iget-object v2, p2, Lcom/ahsim/demulation/RazorGameRomStore$Entry;->sha256:Ljava/lang/String;

    goto :goto_2

    :cond_5
    iget-object v2, p1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    .line 1191
    .local v2, "expected":Ljava/lang/String;
    :goto_2
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->sha256:Ljava/lang/String;

    .line 1192
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    .line 1193
    :cond_6
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Selected Razor ROM fingerprint changed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    .end local p2    # "gameSource":Lcom/ahsim/demulation/RazorGameRomStore$Entry;
    throw v3

    .line 1194
    .restart local p1    # "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    .restart local p2    # "gameSource":Lcom/ahsim/demulation/RazorGameRomStore$Entry;
    :cond_7
    :goto_3
    new-instance v3, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda23;

    invoke-direct {v3, p0, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda23;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Lcom/ahsim/demulation/RazorTerrainPreviewSource;)V

    invoke-virtual {p0, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_0

    .line 1219
    .end local v0    # "verified":Lcom/ahsim/demulation/RazorTerrainPreviewSource;
    .end local v1    # "raw":[B
    .end local v2    # "expected":Ljava/lang/String;
    goto :goto_8

    .line 1182
    .local v0, "stream":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 1184
    :cond_8
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No access to selected ROM document"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "stream":Ljava/io/InputStream;
    .end local p1    # "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    .end local p2    # "gameSource":Lcom/ahsim/demulation/RazorGameRomStore$Entry;
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1182
    .restart local v0    # "stream":Ljava/io/InputStream;
    .restart local p1    # "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    .restart local p2    # "gameSource":Lcom/ahsim/demulation/RazorGameRomStore$Entry;
    :goto_4
    if-eqz v0, :cond_9

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    .end local p2    # "gameSource":Lcom/ahsim/demulation/RazorGameRomStore$Entry;
    :cond_9
    :goto_5
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_5 .. :try_end_5} :catch_0

    .line 1216
    .end local v0    # "stream":Ljava/io/InputStream;
    .restart local p1    # "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    .restart local p2    # "gameSource":Lcom/ahsim/demulation/RazorGameRomStore$Entry;
    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    .line 1217
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_6
    const-string v1, "RazorTerrainPreview"

    const-string v2, "Razor source preview unavailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1218
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-direct {p0, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->failure(Ljava/lang/String;)V

    .line 1220
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_8
    return-void
.end method

.method private synthetic lambda$requestBootProbe$43(ILcom/ahsim/demulation/RazorTerrainVisualSource$Audit;Lcom/ahsim/demulation/RazorNativeWorldSession$Status;Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;Ljava/io/File;Ljava/lang/String;)V
    .locals 16
    .param p1, "generation"    # I
    .param p2, "checkedSource"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .param p3, "result"    # Lcom/ahsim/demulation/RazorNativeWorldSession$Status;
    .param p4, "slice"    # Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .param p5, "readyShareZip"    # Ljava/io/File;
    .param p6, "evidenceStatus"    # Ljava/lang/String;

    .line 1971
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    iget-boolean v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v4, :cond_9

    iget v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    move/from16 v5, p1

    if-ne v5, v4, :cond_a

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    if-eqz v4, :cond_a

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    iget-object v4, v4, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    move-object/from16 v6, p2

    if-eq v4, v6, :cond_0

    move-object/from16 v9, p6

    goto/16 :goto_3

    .line 1973
    :cond_0
    sget v4, Lcom/ahsim/demulation/R$string;->razor_world_session_result:I

    iget v7, v1, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->gridSide:I

    .line 1974
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v7, v1, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->units:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v7, v1, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->buildings:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v7, v1, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->knownCells:I

    .line 1975
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v7, v1, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->unknownCells:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v7, v1, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->readSequence:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v7, v1, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->executedTicks:I

    .line 1976
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v7, v1, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->missingCapabilityBits:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array/range {v8 .. v15}, [Ljava/lang/Object;

    move-result-object v7

    .line 1973
    invoke-virtual {v0, v4, v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1977
    .local v4, "summary":Ljava/lang/String;
    const-string v7, "\n"

    if-eqz v2, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/ahsim/demulation/R$string;->razor_emc_first_slice_result:I

    iget v10, v2, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->sourceType:I

    .line 1978
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v11, v2, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->scriptEntry:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v12, v2, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->executedInstructions:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v13, v2, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->pendingNativeFunction:I

    .line 1979
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v10, v11, v12, v13}, [Ljava/lang/Object;

    move-result-object v10

    .line 1977
    invoke-virtual {v0, v9, v10}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1980
    :cond_1
    if-eqz v2, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/ahsim/demulation/R$string;->razor_emc_boundary_result:I

    iget-object v10, v2, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->boundary:Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;

    iget v10, v10, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->functionId:I

    .line 1981
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v2, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->boundary:Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;

    iget v11, v11, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->originalRomAddress:I

    .line 1982
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v2, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->boundary:Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;

    iget v12, v12, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->emcStackDepth:I

    .line 1983
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v13, v2, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->boundary:Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;

    .line 1984
    invoke-virtual {v13}, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->shortStack()Ljava/lang/String;

    move-result-object v13

    filled-new-array {v10, v11, v12, v13}, [Ljava/lang/Object;

    move-result-object v10

    .line 1980
    invoke-virtual {v0, v9, v10}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1985
    :cond_2
    const/4 v8, 0x1

    if-eqz v2, :cond_5

    .line 1986
    iget-object v9, v2, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->boundary:Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;

    iget v9, v9, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->pointerSourceMask:I

    .line 1987
    .local v9, "src":I
    if-ne v9, v8, :cond_3

    sget v10, Lcom/ahsim/demulation/R$string;->razor_function_source_script:I

    goto :goto_0

    .line 1988
    :cond_3
    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    sget v10, Lcom/ahsim/demulation/R$string;->razor_function_source_global:I

    goto :goto_0

    .line 1989
    :cond_4
    sget v10, Lcom/ahsim/demulation/R$string;->razor_function_source_both:I

    :goto_0
    nop

    .line 1990
    .local v10, "label":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v11, Lcom/ahsim/demulation/R$string;->razor_function_context_status:I

    .line 1991
    invoke-virtual {v0, v10}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    .line 1990
    invoke-virtual {v0, v11, v12}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1993
    .end local v9    # "src":I
    .end local v10    # "label":I
    :cond_5
    iput-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastProbeEvidenceZip:Ljava/io/File;

    .line 1994
    if-nez v3, :cond_6

    const-string v7, "EXPORT_FAILED"

    goto :goto_1

    :cond_6
    const-string v7, "NOT_RUN"

    :goto_1
    iput-object v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastProbeOutcome:Ljava/lang/String;

    .line 1995
    if-nez v3, :cond_7

    move-object/from16 v7, p6

    goto :goto_2

    :cond_7
    const-string v7, ""

    :goto_2
    iput-object v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastProbeFailure:Ljava/lang/String;

    .line 1996
    iget-object v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->shareProbeButton:Landroid/widget/Button;

    if-eqz v7, :cond_8

    iget-object v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->shareProbeButton:Landroid/widget/Button;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1997
    :cond_8
    iget-object v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->bootStatus:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v9, p6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1998
    return-void

    .line 1971
    .end local v4    # "summary":Ljava/lang/String;
    :cond_9
    move/from16 v5, p1

    :cond_a
    move-object/from16 v6, p2

    move-object/from16 v9, p6

    .line 1972
    :goto_3
    return-void
.end method

.method private synthetic lambda$requestBootProbe$44(ILjava/lang/String;)V
    .locals 3
    .param p1, "generation"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 2007
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    if-ne p1, v0, :cond_1

    .line 2008
    const-string v0, "FAILED"

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastProbeOutcome:Ljava/lang/String;

    .line 2009
    iput-object p2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastProbeFailure:Ljava/lang/String;

    .line 2010
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->shareProbeButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->shareProbeButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2011
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->bootStatus:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->razor_boot_probe_error:I

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2013
    :cond_1
    return-void
.end method

.method private synthetic lambda$requestBootProbe$45(IIILcom/ahsim/demulation/RazorTerrainVisualSource$Audit;[BLcom/ahsim/demulation/RazorTerrainPreviewSource;)V
    .locals 74
    .param p1, "generation"    # I
    .param p2, "house"    # I
    .param p3, "mission"    # I
    .param p4, "checkedSource"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .param p5, "verifiedUnitBank"    # [B
    .param p6, "verifiedSource536"    # Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    .line 1678
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v3, p4

    move-object/from16 v10, p5

    const-string v11, "RazorTerrainPreview"

    iget-boolean v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_2b

    iget v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    if-eq v2, v0, :cond_0

    goto/16 :goto_43

    .line 1680
    :cond_0
    const/4 v12, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    iget v0, v0, Lcom/ahsim/demulation/RazorNativeWorldSession;->house:I

    if-ne v0, v8, :cond_1

    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    iget v0, v0, Lcom/ahsim/demulation/RazorNativeWorldSession;->mission:I

    if-ne v0, v9, :cond_1

    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    iget v0, v0, Lcom/ahsim/demulation/RazorNativeWorldSession;->variant:I

    .line 1682
    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romVariant()I

    move-result v4

    if-ne v0, v4, :cond_1

    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    iget-object v0, v0, Lcom/ahsim/demulation/RazorNativeWorldSession;->sourceSha256:Ljava/lang/String;

    .line 1683
    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romSourceSha256()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1684
    :cond_1
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorNativeWorldSession;->close()V

    iput-object v12, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    .line 1686
    :cond_2
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    if-nez v0, :cond_3

    .line 1687
    invoke-static {v3, v8, v9}, Lcom/ahsim/demulation/RazorNativeWorldSession;->open(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;II)Lcom/ahsim/demulation/RazorNativeWorldSession;

    move-result-object v0

    iput-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    .line 1688
    :cond_3
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/RazorNativeWorldSession;->poll(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;)Lcom/ahsim/demulation/RazorNativeWorldSession$Status;

    move-result-object v4

    .line 1689
    .local v4, "result":Lcom/ahsim/demulation/RazorNativeWorldSession$Status;
    iget v0, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->units:I

    if-lez v0, :cond_4

    .line 1690
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    invoke-virtual {v0, v3, v10}, Lcom/ahsim/demulation/RazorNativeWorldSession;->probeFirstUnit(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;[B)Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    .line 1691
    :cond_4
    move-object v5, v12

    :goto_0
    nop

    .line 1694
    .local v5, "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    if-nez v5, :cond_5

    move-object v0, v12

    goto :goto_1

    .line 1695
    :cond_5
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/RazorNativeWorldSession;->observeFirstUnitIdentity(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;)[I

    move-result-object v0

    :goto_1
    move-object v14, v0

    .line 1696
    .local v14, "firstUnitIdentity":[I
    const/4 v6, 0x3

    if-eqz v5, :cond_7

    aget v0, v14, v6

    iget v7, v5, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->sourceType:I

    if-ne v0, v7, :cond_6

    goto :goto_2

    .line 1697
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Razor scenario identity disagrees with EMC slice"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "generation":I
    .end local p2    # "house":I
    .end local p3    # "mission":I
    .end local p4    # "checkedSource":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .end local p5    # "verifiedUnitBank":[B
    .end local p6    # "verifiedSource536":Lcom/ahsim/demulation/RazorTerrainPreviewSource;
    throw v0

    .line 1700
    .restart local p1    # "generation":I
    .restart local p2    # "house":I
    .restart local p3    # "mission":I
    .restart local p4    # "checkedSource":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .restart local p5    # "verifiedUnitBank":[B
    .restart local p6    # "verifiedSource536":Lcom/ahsim/demulation/RazorTerrainPreviewSource;
    :cond_7
    :goto_2
    if-nez v14, :cond_8

    move-object v13, v12

    goto :goto_3

    .line 1701
    :cond_8
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/RazorNativeWorldSession;->observeInitialUnits403(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;)[I

    move-result-object v0

    move-object v13, v0

    :goto_3
    move-object v7, v13

    .line 1703
    .local v7, "initialUnits403":[I
    if-eqz v7, :cond_a

    if-nez v5, :cond_9

    goto :goto_4

    .line 1704
    :cond_9
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    invoke-virtual {v0, v3, v10, v5, v7}, Lcom/ahsim/demulation/RazorNativeWorldSession;->observeShadowContext405(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;[BLcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;[I)[I

    move-result-object v0

    move-object v13, v0

    goto :goto_5

    .line 1703
    :cond_a
    :goto_4
    move-object v13, v12

    .line 1704
    :goto_5
    move-object/from16 v23, v13

    .line 1709
    .local v23, "shadow405":[I
    const/4 v13, 0x0

    .line 1710
    .local v13, "attached530":[I
    const-string v0, ""

    move-object v15, v0

    .line 1711
    .local v15, "attached530Status":Ljava/lang/String;
    const/16 v21, 0x8

    const/16 v22, 0x7

    if-eqz v5, :cond_b

    iget-boolean v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_b

    iget v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_58
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_57
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_56

    if-ne v2, v0, :cond_b

    .line 1713
    :try_start_1
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    .line 1714
    invoke-virtual/range {p6 .. p6}, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->authenticatedRomCopy536()[B

    move-result-object v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_57
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_56

    .line 1713
    const/16 v17, 0x2

    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v0, v3, v10, v6, v12}, Lcom/ahsim/demulation/RazorNativeWorldSession;->observeAttachedEmc530(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;[BI[B)[I

    move-result-object v0

    move-object v13, v0

    .line 1715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nRazor 530 attached EMC: UNIT "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v6, v13, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", F"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v6, v13, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", PC "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v6, 0x6

    aget v6, v13, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", steps "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v6, v13, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " (CPU=UNKNOWN, ticks=0)\nRazor 531 Android UNIT/EMC owner+bank: VERIFIED (not 68000)"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_57
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_56

    move-object v15, v0

    .line 1724
    move-object v12, v13

    move-object v6, v15

    goto :goto_7

    .line 1720
    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    const/16 v17, 0x2

    .line 1721
    .local v0, "obsError":Ljava/io/IOException;
    :goto_6
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\nRazor 530 observation unavailable: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1722
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v15, v6

    .line 1723
    const-string v6, "Razor 530 attached EMC unavailable"

    invoke-static {v11, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v12, v13

    move-object v6, v15

    goto :goto_7

    .line 1711
    .end local v0    # "obsError":Ljava/io/IOException;
    :cond_b
    const/16 v17, 0x2

    .line 1726
    move-object v12, v13

    move-object v6, v15

    .end local v13    # "attached530":[I
    .end local v15    # "attached530Status":Ljava/lang/String;
    .local v6, "attached530Status":Ljava/lang/String;
    .local v12, "attached530":[I
    :goto_7
    move-object/from16 v26, v12

    .line 1727
    .local v26, "attached530Evidence":[I
    if-eqz v12, :cond_c

    .line 1728
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastGenesisBoot541()[I

    move-result-object v0

    goto :goto_8

    :cond_c
    const/4 v0, 0x0

    :goto_8
    move-object/from16 v32, v0

    .line 1729
    .local v32, "attached541Evidence":[I
    if-eqz v12, :cond_d

    aget v0, v12, v22

    const/16 v13, 0x28

    if-ne v0, v13, :cond_d

    .line 1730
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastPrecallF40533()[I

    move-result-object v0

    goto :goto_9

    :cond_d
    const/4 v0, 0x0

    :goto_9
    move-object/from16 v38, v0

    .line 1731
    .local v38, "attached533Evidence":[I
    if-eqz v38, :cond_e

    .line 1732
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastSandboxGate534()[I

    move-result-object v0

    move-object/from16 v33, v0

    goto :goto_a

    :cond_e
    const/16 v33, 0x0

    :goto_a
    move-object/from16 v45, v33

    .line 1733
    .local v45, "attached534Evidence":[I
    if-eqz v45, :cond_f

    .line 1734
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastM68kBackend535()[I

    move-result-object v0

    move-object/from16 v44, v0

    goto :goto_b

    :cond_f
    const/16 v44, 0x0

    .line 1735
    .local v44, "attached535Evidence":[I
    :goto_b
    if-eqz v44, :cond_10

    .line 1736
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastRomSmoke536()[I

    move-result-object v0

    move-object/from16 v51, v0

    goto :goto_c

    :cond_10
    const/16 v51, 0x0

    :goto_c
    move-object/from16 v58, v51

    .line 1737
    .local v58, "attached536Evidence":[I
    if-eqz v58, :cond_11

    .line 1738
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastTrace538()[I

    move-result-object v0

    move-object/from16 v57, v0

    goto :goto_d

    :cond_11
    const/16 v57, 0x0

    .line 1739
    .local v57, "attached538Evidence":[I
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1740
    if-eqz v38, :cond_12

    .line 1741
    const-string v13, "\nRazor 533 F40 pre-call: EMC snapshot captured; Genesis CPU missing; ticks=0"

    goto :goto_e

    .line 1742
    :cond_12
    const-string v13, "\nRazor 533 F40 pre-call: not captured; ticks=0"

    :goto_e
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 1745
    .local v13, "attached530Summary":Ljava/lang/String;
    if-eqz v12, :cond_13

    const-string v0, "OBSERVED"

    move-object/from16 v29, v0

    goto :goto_10

    .line 1746
    :cond_13
    if-nez v5, :cond_14

    const-string v0, "SKIPPED"

    goto :goto_f

    :cond_14
    const-string v0, "FAILED"

    :goto_f
    move-object/from16 v29, v0

    :goto_10
    move-object/from16 v52, v29

    .line 1747
    .local v52, "attached531Outcome":Ljava/lang/String;
    if-eqz v12, :cond_15

    const-string v0, "native_owner_verified"

    move-object/from16 v30, v0

    goto :goto_11

    .line 1748
    :cond_15
    if-nez v5, :cond_16

    const-string v0, "no_initial_unit_slice"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_58
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_57
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_56

    move-object/from16 v30, v0

    goto :goto_11

    :cond_16
    move-object/from16 v30, v6

    :goto_11
    nop

    .line 1752
    .local v30, "attached531Reason":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1754
    .local v15, "shareZip":Ljava/io/File;
    :try_start_4
    iget-boolean v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_28

    iget v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    if-eq v2, v0, :cond_17

    move-object/from16 v62, v5

    move-object/from16 v72, v6

    move-object v2, v13

    move-object/from16 v8, v30

    move-object/from16 v16, v52

    move-object v13, v7

    goto/16 :goto_3a

    .line 1756
    :cond_17
    if-nez v5, :cond_18

    const/4 v0, 0x0

    goto :goto_12

    :cond_18
    iget v0, v5, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->sourceType:I

    iget v2, v5, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->scriptEntry:I

    move/from16 v60, v2

    iget v2, v5, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->startPc:I

    move/from16 v61, v2

    iget v2, v5, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->stopPc:I

    move/from16 v62, v2

    iget v2, v5, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->executedInstructions:I

    move/from16 v63, v2

    iget v2, v5, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->stopReason:I

    move/from16 v64, v2

    iget v2, v5, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->pendingNativeFunction:I

    move/from16 v65, v2

    iget v2, v5, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->vmError:I

    move/from16 v59, v0

    move/from16 v66, v2

    filled-new-array/range {v59 .. v66}, [I

    move-result-object v0

    :goto_12
    move-object/from16 v70, v0

    .line 1760
    .local v70, "emc":[I
    if-nez v5, :cond_19

    move-object/from16 v72, v6

    move-object/from16 v24, v7

    const/16 v71, 0x0

    goto :goto_13

    :cond_19
    iget-object v0, v5, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->boundary:Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;

    iget v0, v0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->functionId:I

    iget-object v2, v5, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->boundary:Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;

    iget v2, v2, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->originalRomAddress:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_53
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_52
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_4} :catch_51

    move-object/from16 v72, v6

    .end local v6    # "attached530Status":Ljava/lang/String;
    .local v72, "attached530Status":Ljava/lang/String;
    :try_start_5
    iget-object v6, v5, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->boundary:Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;

    iget v6, v6, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->emcStackDepth:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_50
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4f
    .catch Ljava/lang/LinkageError; {:try_start_5 .. :try_end_5} :catch_51

    move-object/from16 v24, v7

    .end local v7    # "initialUnits403":[I
    .local v24, "initialUnits403":[I
    :try_start_6
    iget-object v7, v5, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->boundary:Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;

    iget v7, v7, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->emcReturnValue:I

    filled-new-array {v0, v2, v6, v7}, [I

    move-result-object v0

    move-object/from16 v71, v0

    .line 1764
    .local v71, "abi":[I
    :goto_13
    iget v0, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->variant:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1a

    const/16 v17, 0x3

    goto :goto_15

    .line 1765
    :cond_1a
    iget v0, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->variant:I

    move/from16 v2, v17

    if-ne v0, v2, :cond_1b

    const/4 v6, 0x4

    goto :goto_14

    :cond_1b
    const/4 v6, -0x1

    :goto_14
    move/from16 v17, v6

    :goto_15
    nop

    .line 1766
    .local v17, "evidenceVariantMiB":I
    if-ltz v17, :cond_27

    .line 1767
    iget-object v0, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->sourceSha256:Ljava/lang/String;

    iget v2, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->house:I

    iget v6, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->mission:I

    iget v7, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->readSequence:I

    move/from16 v61, v2

    iget v2, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->executedTicks:I

    move/from16 v64, v2

    iget v2, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->units:I

    move/from16 v65, v2

    iget v2, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->buildings:I

    move/from16 v66, v2

    iget v2, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->missingCapabilityBits:I

    move/from16 v67, v2

    iget-boolean v2, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->worldRetained:Z

    move/from16 v68, v2

    iget-boolean v2, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->gameplayReady:Z

    move-object/from16 v59, v0

    move/from16 v69, v2

    move/from16 v62, v6

    move/from16 v63, v7

    move/from16 v60, v17

    .end local v17    # "evidenceVariantMiB":I
    .local v60, "evidenceVariantMiB":I
    invoke-static/range {v59 .. v71}, Lcom/ahsim/demulation/RazorReadOnlyProbeEvidence;->encode(Ljava/lang/String;IIIIIIIIZZ[I[I)[B

    move-result-object v0

    move-object/from16 v51, v0

    .line 1772
    .local v51, "evidence":[B
    const-string v0, "razor_observations"

    invoke-virtual {v1, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v46

    .line 1773
    .local v46, "outputDir":Ljava/io/File;
    if-eqz v46, :cond_26

    invoke-virtual/range {v46 .. v46}, Ljava/io/File;->isDirectory()Z

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4e
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4d
    .catch Ljava/lang/LinkageError; {:try_start_6 .. :try_end_6} :catch_51

    if-nez v0, :cond_1d

    :try_start_7
    invoke-virtual/range {v46 .. v46}, Ljava/io/File;->mkdirs()Z

    move-result v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_7 .. :try_end_7} :catch_2

    if-eqz v0, :cond_1c

    goto :goto_16

    :cond_1c
    move-object/from16 v62, v5

    move-object v2, v13

    move-object/from16 v13, v24

    move-object/from16 v8, v30

    move-object/from16 v59, v46

    move-object/from16 v16, v52

    move/from16 v17, v60

    move-object/from16 v60, v51

    goto/16 :goto_37

    .line 1999
    .end local v4    # "result":Lcom/ahsim/demulation/RazorNativeWorldSession$Status;
    .end local v5    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .end local v12    # "attached530":[I
    .end local v13    # "attached530Summary":Ljava/lang/String;
    .end local v14    # "firstUnitIdentity":[I
    .end local v15    # "shareZip":Ljava/io/File;
    .end local v23    # "shadow405":[I
    .end local v24    # "initialUnits403":[I
    .end local v26    # "attached530Evidence":[I
    .end local v30    # "attached531Reason":Ljava/lang/String;
    .end local v32    # "attached541Evidence":[I
    .end local v38    # "attached533Evidence":[I
    .end local v44    # "attached535Evidence":[I
    .end local v45    # "attached534Evidence":[I
    .end local v46    # "outputDir":Ljava/io/File;
    .end local v51    # "evidence":[B
    .end local v52    # "attached531Outcome":Ljava/lang/String;
    .end local v57    # "attached538Evidence":[I
    .end local v58    # "attached536Evidence":[I
    .end local v60    # "evidenceVariantMiB":I
    .end local v70    # "emc":[I
    .end local v71    # "abi":[I
    .end local v72    # "attached530Status":Ljava/lang/String;
    :catch_2
    move-exception v0

    goto/16 :goto_3c

    .line 1964
    .restart local v4    # "result":Lcom/ahsim/demulation/RazorNativeWorldSession$Status;
    .restart local v5    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .restart local v12    # "attached530":[I
    .restart local v13    # "attached530Summary":Ljava/lang/String;
    .restart local v14    # "firstUnitIdentity":[I
    .restart local v15    # "shareZip":Ljava/io/File;
    .restart local v23    # "shadow405":[I
    .restart local v24    # "initialUnits403":[I
    .restart local v26    # "attached530Evidence":[I
    .restart local v30    # "attached531Reason":Ljava/lang/String;
    .restart local v32    # "attached541Evidence":[I
    .restart local v38    # "attached533Evidence":[I
    .restart local v44    # "attached535Evidence":[I
    .restart local v45    # "attached534Evidence":[I
    .restart local v52    # "attached531Outcome":Ljava/lang/String;
    .restart local v57    # "attached538Evidence":[I
    .restart local v58    # "attached536Evidence":[I
    .restart local v72    # "attached530Status":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v62, v5

    move-object v2, v13

    move-object/from16 v13, v24

    move-object/from16 v8, v30

    move-object/from16 v16, v52

    goto/16 :goto_3e

    :catch_4
    move-exception v0

    move-object/from16 v62, v5

    move-object v2, v13

    move-object/from16 v13, v24

    move-object/from16 v8, v30

    move-object/from16 v16, v52

    goto/16 :goto_3e

    .line 1775
    .restart local v46    # "outputDir":Ljava/io/File;
    .restart local v51    # "evidence":[B
    .restart local v60    # "evidenceVariantMiB":I
    .restart local v70    # "emc":[I
    .restart local v71    # "abi":[I
    :cond_1d
    :goto_16
    :try_start_8
    iget-object v0, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->sourceSha256:Ljava/lang/String;

    iget v2, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->house:I

    iget v6, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->mission:I

    iget v7, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->readSequence:I

    move-object/from16 v47, v0

    move/from16 v48, v2

    move/from16 v49, v6

    move/from16 v50, v7

    invoke-static/range {v46 .. v51}, Lcom/ahsim/demulation/RazorReadOnlyProbeEvidence;->write(Ljava/io/File;Ljava/lang/String;III[B)Ljava/io/File;

    move-result-object v0

    move-object/from16 v2, v46

    .end local v46    # "outputDir":Ljava/io/File;
    .local v2, "outputDir":Ljava/io/File;
    move-object v6, v0

    .line 1778
    .local v6, "output":Ljava/io/File;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\nRazor read-only evidence: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 1779
    .local v7, "evidenceMessage":Ljava/lang/String;
    const-string v0, "diagnostics"

    invoke-virtual {v1, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v46

    move-object/from16 v33, v46

    .line 1780
    .local v33, "zipDir":Ljava/io/File;
    if-eqz v33, :cond_25

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->isDirectory()Z

    move-result v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4e
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4d
    .catch Ljava/lang/LinkageError; {:try_start_8 .. :try_end_8} :catch_51

    if-nez v0, :cond_1f

    :try_start_9
    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->mkdirs()Z

    move-result v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_9 .. :try_end_9} :catch_2

    if-eqz v0, :cond_1e

    goto :goto_17

    :cond_1e
    move-object/from16 v62, v5

    move-object v2, v13

    move-object/from16 v13, v24

    move-object/from16 v8, v30

    move-object/from16 v16, v52

    goto/16 :goto_36

    .line 1784
    :cond_1f
    :goto_17
    move-object/from16 v59, v2

    move-object/from16 v2, v33

    .end local v33    # "zipDir":Ljava/io/File;
    .local v2, "zipDir":Ljava/io/File;
    .local v59, "outputDir":Ljava/io/File;
    :try_start_a
    invoke-static {v2, v6}, Lcom/ahsim/demulation/RazorReadOnlyProbeEvidence;->zipForSharing(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_21
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_20
    .catch Ljava/lang/LinkageError; {:try_start_a .. :try_end_a} :catch_51

    move-object/from16 v25, v0

    .line 1785
    .end local v15    # "shareZip":Ljava/io/File;
    .local v25, "shareZip":Ljava/io/File;
    if-eqz v14, :cond_22

    .line 1786
    :try_start_b
    invoke-virtual {v3, v8, v9}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->bootProbeMission(II)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    move-result-object v0

    .line 1787
    invoke-virtual {v0}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioBytes()[B

    move-result-object v17

    .line 1788
    .local v17, "originalScenario":[B
    iget-object v0, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->sourceSha256:Ljava/lang/String;

    iget v15, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->house:I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1e
    .catch Ljava/lang/LinkageError; {:try_start_b .. :try_end_b} :catch_51

    move-object/from16 v46, v2

    .end local v2    # "zipDir":Ljava/io/File;
    .local v46, "zipDir":Ljava/io/File;
    :try_start_c
    iget v2, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->mission:I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_1e
    .catch Ljava/lang/LinkageError; {:try_start_c .. :try_end_c} :catch_51

    move-object/from16 v18, v0

    move/from16 v20, v2

    move-object v2, v13

    move-object/from16 v16, v14

    move/from16 v19, v15

    move-object/from16 v13, v46

    move-object/from16 v15, v51

    move-object v14, v6

    .end local v6    # "output":Ljava/io/File;
    .end local v46    # "zipDir":Ljava/io/File;
    .end local v51    # "evidence":[B
    .local v2, "attached530Summary":Ljava/lang/String;
    .local v13, "zipDir":Ljava/io/File;
    .local v14, "output":Ljava/io/File;
    .local v15, "evidence":[B
    .local v16, "firstUnitIdentity":[I
    :try_start_d
    invoke-static/range {v13 .. v20}, Lcom/ahsim/demulation/RazorOneUnitIdentityEvidence;->writeEnvelope(Ljava/io/File;Ljava/io/File;[B[I[BLjava/lang/String;II)Ljava/io/File;

    move-result-object v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1c
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1b
    .catch Ljava/lang/LinkageError; {:try_start_d .. :try_end_d} :catch_51

    move-object/from16 v61, v14

    move-object v6, v15

    move-object/from16 v14, v16

    move-object/from16 v27, v17

    .end local v13    # "zipDir":Ljava/io/File;
    .end local v15    # "evidence":[B
    .end local v16    # "firstUnitIdentity":[I
    .end local v17    # "originalScenario":[B
    .local v6, "evidence":[B
    .local v14, "firstUnitIdentity":[I
    .local v27, "originalScenario":[B
    .restart local v46    # "zipDir":Ljava/io/File;
    .local v61, "output":Ljava/io/File;
    move-object v15, v0

    .line 1791
    .end local v25    # "shareZip":Ljava/io/File;
    .local v15, "shareZip":Ljava/io/File;
    if-eqz v24, :cond_21

    .line 1792
    move-object v13, v15

    .end local v15    # "shareZip":Ljava/io/File;
    .local v13, "shareZip":Ljava/io/File;
    :try_start_e
    iget-object v15, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->sourceSha256:Ljava/lang/String;

    iget v0, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->house:I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_19
    .catch Ljava/lang/LinkageError; {:try_start_e .. :try_end_e} :catch_51

    move-object/from16 v62, v5

    .end local v5    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .local v62, "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    :try_start_f
    iget v5, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->mission:I

    move/from16 v18, v5

    iget v5, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->readSequence:I

    aget v20, v14, v22

    aget v21, v14, v21

    const/16 v16, 0x9

    aget v22, v14, v16
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_17
    .catch Ljava/lang/LinkageError; {:try_start_f .. :try_end_f} :catch_51

    move/from16 v17, v0

    move/from16 v19, v5

    move-object/from16 v5, v46

    move/from16 v16, v60

    move-object/from16 v60, v6

    move-object v6, v13

    move-object/from16 v13, v24

    .end local v24    # "initialUnits403":[I
    .end local v46    # "zipDir":Ljava/io/File;
    .local v5, "zipDir":Ljava/io/File;
    .local v6, "shareZip":Ljava/io/File;
    .local v13, "initialUnits403":[I
    .local v16, "evidenceVariantMiB":I
    .local v60, "evidence":[B
    :try_start_10
    invoke-static/range {v13 .. v22}, Lcom/ahsim/demulation/RazorNativeUnitEvidence403;->encode([I[ILjava/lang/String;IIIIIII)[B

    move-result-object v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_15
    .catch Ljava/lang/LinkageError; {:try_start_10 .. :try_end_10} :catch_51

    move/from16 v17, v16

    .end local v13    # "initialUnits403":[I
    .end local v16    # "evidenceVariantMiB":I
    .local v17, "evidenceVariantMiB":I
    .restart local v24    # "initialUnits403":[I
    move-object v13, v0

    .line 1798
    .local v13, "unitState":[B
    :try_start_11
    iget-object v0, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->sourceSha256:Ljava/lang/String;

    invoke-static {v5, v6, v13, v0}, Lcom/ahsim/demulation/RazorNativeUnitEvidence403;->writeEnvelope(Ljava/io/File;Ljava/io/File;[BLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object v6, v0

    .line 1800
    if-eqz v23, :cond_20

    .line 1801
    iget-object v0, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->sourceSha256:Ljava/lang/String;

    iget v15, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->house:I

    iget v8, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->mission:I

    move/from16 v19, v8

    iget v8, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->readSequence:I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_13
    .catch Ljava/lang/LinkageError; {:try_start_11 .. :try_end_11} :catch_51

    move-object/from16 v16, v0

    move/from16 v20, v8

    move-object v8, v13

    move/from16 v18, v15

    move-object/from16 v13, v23

    move-object v15, v14

    move-object/from16 v14, v24

    .end local v23    # "shadow405":[I
    .end local v24    # "initialUnits403":[I
    .local v8, "unitState":[B
    .local v13, "shadow405":[I
    .local v14, "initialUnits403":[I
    .local v15, "firstUnitIdentity":[I
    :try_start_12
    invoke-static/range {v13 .. v20}, Lcom/ahsim/demulation/RazorOneUnitShadowEvidence405;->encode([I[I[ILjava/lang/String;IIII)[B

    move-result-object v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_11
    .catch Ljava/lang/LinkageError; {:try_start_12 .. :try_end_12} :catch_51

    move-object v13, v14

    move-object v14, v15

    .end local v15    # "firstUnitIdentity":[I
    .local v13, "initialUnits403":[I
    .local v14, "firstUnitIdentity":[I
    .restart local v23    # "shadow405":[I
    move-object v15, v0

    .line 1805
    .local v15, "shadowJson":[B
    :try_start_13
    iget-object v0, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->sourceSha256:Ljava/lang/String;

    invoke-static {v5, v6, v15, v0}, Lcom/ahsim/demulation/RazorOneUnitShadowEvidence405;->writeEnvelope(Ljava/io/File;Ljava/io/File;[BLjava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_15
    .catch Ljava/lang/LinkageError; {:try_start_13 .. :try_end_13} :catch_51

    move-object v6, v0

    .line 1811
    :try_start_14
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    invoke-virtual {v0, v3, v13}, Lcom/ahsim/demulation/RazorNativeWorldSession;->observeMapUnitCells411(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;[I)[B

    move-result-object v0

    move-object/from16 v16, v0

    .line 1813
    .local v16, "mapCells":[B
    iget-object v0, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->sourceSha256:Ljava/lang/String;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_15
    .catch Ljava/lang/LinkageError; {:try_start_14 .. :try_end_14} :catch_51

    move-object/from16 v24, v8

    .end local v8    # "unitState":[B
    .local v24, "unitState":[B
    :try_start_15
    iget v8, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->house:I

    move/from16 v18, v8

    iget v8, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->mission:I

    move/from16 v19, v8

    iget v8, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->readSequence:I
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_15
    .catch Ljava/lang/LinkageError; {:try_start_15 .. :try_end_15} :catch_51

    move/from16 v20, v8

    move-object/from16 v21, v13

    move-object v8, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v0

    .end local v13    # "initialUnits403":[I
    .end local v16    # "mapCells":[B
    .local v8, "shadowJson":[B
    .local v15, "mapCells":[B
    .local v21, "initialUnits403":[I
    :try_start_16
    invoke-static/range {v15 .. v21}, Lcom/ahsim/demulation/RazorMapUnitEvidence411;->manifest([BLjava/lang/String;IIII[I)[B

    move-result-object v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_a
    .catch Ljava/lang/LinkageError; {:try_start_16 .. :try_end_16} :catch_51

    .end local v21    # "initialUnits403":[I
    .restart local v13    # "initialUnits403":[I
    move-object/from16 v25, v0

    .line 1817
    .local v25, "mapManifest":[B
    :try_start_17
    iget-object v0, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->sourceSha256:Ljava/lang/String;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_15
    .catch Ljava/lang/LinkageError; {:try_start_17 .. :try_end_17} :catch_51

    move-object/from16 v28, v8

    move-object/from16 v8, v25

    .end local v25    # "mapManifest":[B
    .local v8, "mapManifest":[B
    .local v28, "shadowJson":[B
    :try_start_18
    invoke-static {v5, v6, v15, v8, v0}, Lcom/ahsim/demulation/RazorMapUnitEvidence411;->writeEnvelope(Ljava/io/File;Ljava/io/File;[B[BLjava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_15
    .catch Ljava/lang/LinkageError; {:try_start_18 .. :try_end_18} :catch_51

    move-object v6, v0

    .line 1824
    :try_start_19
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    invoke-virtual {v0, v3, v13, v15}, Lcom/ahsim/demulation/RazorNativeWorldSession;->observeUnitFlagPrestate416(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;[I[B)[I

    move-result-object v0

    .line 1826
    .local v0, "native416":[I
    iget-object v1, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->sourceSha256:Ljava/lang/String;

    move-object/from16 v18, v1

    iget v1, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->house:I

    move/from16 v20, v1

    iget v1, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->mission:I

    move/from16 v21, v1

    iget v1, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->readSequence:I
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_15
    .catch Ljava/lang/LinkageError; {:try_start_19 .. :try_end_19} :catch_51

    move/from16 v22, v1

    move-object/from16 v16, v13

    move/from16 v19, v17

    move-object/from16 v17, v15

    move-object v15, v0

    .end local v0    # "native416":[I
    .end local v13    # "initialUnits403":[I
    .local v15, "native416":[I
    .local v16, "initialUnits403":[I
    .local v17, "mapCells":[B
    .local v19, "evidenceVariantMiB":I
    :try_start_1a
    invoke-static/range {v15 .. v22}, Lcom/ahsim/demulation/RazorNativeUnitFlagEvidence416;->encode([I[I[BLjava/lang/String;IIII)[B

    move-result-object v0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_5
    .catch Ljava/lang/LinkageError; {:try_start_1a .. :try_end_1a} :catch_51

    move-object v1, v15

    move-object/from16 v15, v17

    move/from16 v17, v19

    .line 1830
    .end local v16    # "initialUnits403":[I
    .end local v19    # "evidenceVariantMiB":I
    .local v0, "report416":[B
    .local v1, "native416":[I
    .restart local v13    # "initialUnits403":[I
    .local v15, "mapCells":[B
    .local v17, "evidenceVariantMiB":I
    move-object/from16 v16, v1

    .end local v1    # "native416":[I
    .local v16, "native416":[I
    :try_start_1b
    iget-object v1, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->sourceSha256:Ljava/lang/String;

    invoke-static {v5, v6, v0, v1}, Lcom/ahsim/demulation/RazorNativeUnitFlagEvidence416;->writeEnvelope(Ljava/io/File;Ljava/io/File;[BLjava/lang/String;)Ljava/io/File;

    move-result-object v1
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_15
    .catch Ljava/lang/LinkageError; {:try_start_1b .. :try_end_1b} :catch_51

    .line 1836
    .end local v0    # "report416":[B
    .end local v6    # "shareZip":Ljava/io/File;
    .end local v16    # "native416":[I
    .local v1, "shareZip":Ljava/io/File;
    move-object/from16 v25, v1

    goto :goto_19

    .line 1964
    .end local v1    # "shareZip":Ljava/io/File;
    .end local v5    # "zipDir":Ljava/io/File;
    .end local v7    # "evidenceMessage":Ljava/lang/String;
    .end local v8    # "mapManifest":[B
    .end local v13    # "initialUnits403":[I
    .end local v15    # "mapCells":[B
    .end local v17    # "evidenceVariantMiB":I
    .end local v24    # "unitState":[B
    .end local v27    # "originalScenario":[B
    .end local v28    # "shadowJson":[B
    .end local v59    # "outputDir":Ljava/io/File;
    .end local v60    # "evidence":[B
    .end local v61    # "output":Ljava/io/File;
    .end local v70    # "emc":[I
    .end local v71    # "abi":[I
    .restart local v6    # "shareZip":Ljava/io/File;
    .local v16, "initialUnits403":[I
    :catch_5
    move-exception v0

    move-object/from16 v13, v16

    move-object v15, v6

    move-object/from16 v8, v30

    move-object/from16 v16, v52

    .end local v16    # "initialUnits403":[I
    .restart local v13    # "initialUnits403":[I
    goto/16 :goto_3e

    .line 1832
    .end local v13    # "initialUnits403":[I
    .restart local v5    # "zipDir":Ljava/io/File;
    .restart local v7    # "evidenceMessage":Ljava/lang/String;
    .restart local v8    # "mapManifest":[B
    .restart local v16    # "initialUnits403":[I
    .local v17, "mapCells":[B
    .restart local v19    # "evidenceVariantMiB":I
    .restart local v24    # "unitState":[B
    .restart local v27    # "originalScenario":[B
    .restart local v28    # "shadowJson":[B
    .restart local v59    # "outputDir":Ljava/io/File;
    .restart local v60    # "evidence":[B
    .restart local v61    # "output":Ljava/io/File;
    .restart local v70    # "emc":[I
    .restart local v71    # "abi":[I
    :catch_6
    move-exception v0

    move-object/from16 v13, v16

    move-object/from16 v15, v17

    move/from16 v17, v19

    .end local v16    # "initialUnits403":[I
    .end local v19    # "evidenceVariantMiB":I
    .restart local v13    # "initialUnits403":[I
    .restart local v15    # "mapCells":[B
    .local v17, "evidenceVariantMiB":I
    goto :goto_18

    :catch_7
    move-exception v0

    .line 1833
    .local v0, "flagError":Ljava/io/IOException;
    :goto_18
    :try_start_1c
    const-string v1, "Razor 416 UNIT flag provenance unavailable"

    invoke-static {v11, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nRazor 416 export failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1835
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_15
    .catch Ljava/lang/LinkageError; {:try_start_1c .. :try_end_1c} :catch_51

    move-object v7, v1

    move-object/from16 v25, v6

    .line 1841
    .end local v0    # "flagError":Ljava/io/IOException;
    .end local v6    # "shareZip":Ljava/io/File;
    .end local v8    # "mapManifest":[B
    .end local v15    # "mapCells":[B
    .local v25, "shareZip":Ljava/io/File;
    :goto_19
    goto/16 :goto_1b

    .line 1837
    .end local v25    # "shareZip":Ljava/io/File;
    .restart local v6    # "shareZip":Ljava/io/File;
    :catch_8
    move-exception v0

    move-object v15, v6

    goto :goto_1a

    .end local v28    # "shadowJson":[B
    .local v8, "shadowJson":[B
    :catch_9
    move-exception v0

    move-object/from16 v28, v8

    move-object v15, v6

    .end local v8    # "shadowJson":[B
    .restart local v28    # "shadowJson":[B
    goto :goto_1a

    .line 1964
    .end local v5    # "zipDir":Ljava/io/File;
    .end local v7    # "evidenceMessage":Ljava/lang/String;
    .end local v13    # "initialUnits403":[I
    .end local v17    # "evidenceVariantMiB":I
    .end local v24    # "unitState":[B
    .end local v27    # "originalScenario":[B
    .end local v28    # "shadowJson":[B
    .end local v59    # "outputDir":Ljava/io/File;
    .end local v60    # "evidence":[B
    .end local v61    # "output":Ljava/io/File;
    .end local v70    # "emc":[I
    .end local v71    # "abi":[I
    .restart local v21    # "initialUnits403":[I
    :catch_a
    move-exception v0

    move-object/from16 v13, v21

    move-object v15, v6

    move-object/from16 v8, v30

    move-object/from16 v16, v52

    .end local v21    # "initialUnits403":[I
    .restart local v13    # "initialUnits403":[I
    goto/16 :goto_3e

    .line 1837
    .end local v13    # "initialUnits403":[I
    .restart local v5    # "zipDir":Ljava/io/File;
    .restart local v7    # "evidenceMessage":Ljava/lang/String;
    .restart local v8    # "shadowJson":[B
    .restart local v17    # "evidenceVariantMiB":I
    .restart local v21    # "initialUnits403":[I
    .restart local v24    # "unitState":[B
    .restart local v27    # "originalScenario":[B
    .restart local v59    # "outputDir":Ljava/io/File;
    .restart local v60    # "evidence":[B
    .restart local v61    # "output":Ljava/io/File;
    .restart local v70    # "emc":[I
    .restart local v71    # "abi":[I
    :catch_b
    move-exception v0

    move-object/from16 v28, v8

    move-object/from16 v13, v21

    move-object v15, v6

    .end local v8    # "shadowJson":[B
    .end local v21    # "initialUnits403":[I
    .restart local v13    # "initialUnits403":[I
    .restart local v28    # "shadowJson":[B
    goto :goto_1a

    .end local v28    # "shadowJson":[B
    .local v15, "shadowJson":[B
    :catch_c
    move-exception v0

    move-object/from16 v28, v15

    move-object v15, v6

    .end local v15    # "shadowJson":[B
    .restart local v28    # "shadowJson":[B
    goto :goto_1a

    .end local v24    # "unitState":[B
    .end local v28    # "shadowJson":[B
    .local v8, "unitState":[B
    .restart local v15    # "shadowJson":[B
    :catch_d
    move-exception v0

    move-object/from16 v24, v8

    move-object/from16 v28, v15

    move-object v15, v6

    .line 1838
    .end local v6    # "shareZip":Ljava/io/File;
    .end local v8    # "unitState":[B
    .local v0, "mapError":Ljava/io/IOException;
    .local v15, "shareZip":Ljava/io/File;
    .restart local v24    # "unitState":[B
    .restart local v28    # "shadowJson":[B
    :goto_1a
    :try_start_1d
    const-string v1, "Razor 411 map diagnostic unavailable"

    invoke-static {v11, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1839
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nRazor 411 map export failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1840
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_e
    .catch Ljava/lang/LinkageError; {:try_start_1d .. :try_end_1d} :catch_51

    move-object v7, v1

    move-object/from16 v25, v15

    goto/16 :goto_1b

    .line 1964
    .end local v0    # "mapError":Ljava/io/IOException;
    .end local v5    # "zipDir":Ljava/io/File;
    .end local v7    # "evidenceMessage":Ljava/lang/String;
    .end local v17    # "evidenceVariantMiB":I
    .end local v24    # "unitState":[B
    .end local v27    # "originalScenario":[B
    .end local v28    # "shadowJson":[B
    .end local v59    # "outputDir":Ljava/io/File;
    .end local v60    # "evidence":[B
    .end local v61    # "output":Ljava/io/File;
    .end local v70    # "emc":[I
    .end local v71    # "abi":[I
    :catch_e
    move-exception v0

    move-object/from16 v8, v30

    move-object/from16 v16, v52

    goto/16 :goto_3e

    .line 1845
    .restart local v5    # "zipDir":Ljava/io/File;
    .restart local v7    # "evidenceMessage":Ljava/lang/String;
    .restart local v17    # "evidenceVariantMiB":I
    .restart local v59    # "outputDir":Ljava/io/File;
    .restart local v60    # "evidence":[B
    .restart local v61    # "output":Ljava/io/File;
    .restart local v70    # "emc":[I
    .restart local v71    # "abi":[I
    :catch_f
    move-exception v0

    goto/16 :goto_1c

    .end local v15    # "shareZip":Ljava/io/File;
    .restart local v6    # "shareZip":Ljava/io/File;
    :catch_10
    move-exception v0

    move-object v15, v6

    goto/16 :goto_1c

    .line 1964
    .end local v5    # "zipDir":Ljava/io/File;
    .end local v7    # "evidenceMessage":Ljava/lang/String;
    .end local v17    # "evidenceVariantMiB":I
    .end local v23    # "shadow405":[I
    .end local v59    # "outputDir":Ljava/io/File;
    .end local v60    # "evidence":[B
    .end local v61    # "output":Ljava/io/File;
    .end local v70    # "emc":[I
    .end local v71    # "abi":[I
    .local v13, "shadow405":[I
    .local v14, "initialUnits403":[I
    .local v15, "firstUnitIdentity":[I
    :catch_11
    move-exception v0

    move-object/from16 v23, v13

    move-object v13, v14

    move-object v14, v15

    move-object v15, v6

    move-object/from16 v8, v30

    move-object/from16 v16, v52

    .end local v15    # "firstUnitIdentity":[I
    .local v13, "initialUnits403":[I
    .local v14, "firstUnitIdentity":[I
    .restart local v23    # "shadow405":[I
    goto/16 :goto_3e

    .line 1845
    .end local v23    # "shadow405":[I
    .restart local v5    # "zipDir":Ljava/io/File;
    .restart local v7    # "evidenceMessage":Ljava/lang/String;
    .local v13, "shadow405":[I
    .local v14, "initialUnits403":[I
    .restart local v15    # "firstUnitIdentity":[I
    .restart local v17    # "evidenceVariantMiB":I
    .restart local v59    # "outputDir":Ljava/io/File;
    .restart local v60    # "evidence":[B
    .restart local v61    # "output":Ljava/io/File;
    .restart local v70    # "emc":[I
    .restart local v71    # "abi":[I
    :catch_12
    move-exception v0

    move-object/from16 v23, v13

    move-object v13, v14

    move-object v14, v15

    move-object v15, v6

    .end local v15    # "firstUnitIdentity":[I
    .local v13, "initialUnits403":[I
    .local v14, "firstUnitIdentity":[I
    .restart local v23    # "shadow405":[I
    goto/16 :goto_1c

    .line 1800
    .local v13, "unitState":[B
    .local v24, "initialUnits403":[I
    .restart local v27    # "originalScenario":[B
    :cond_20
    move-object/from16 v73, v24

    move-object/from16 v24, v13

    move-object/from16 v13, v73

    .local v13, "initialUnits403":[I
    .local v24, "unitState":[B
    move-object/from16 v25, v6

    goto/16 :goto_1b

    .line 1964
    .end local v5    # "zipDir":Ljava/io/File;
    .end local v7    # "evidenceMessage":Ljava/lang/String;
    .end local v13    # "initialUnits403":[I
    .end local v17    # "evidenceVariantMiB":I
    .end local v27    # "originalScenario":[B
    .end local v59    # "outputDir":Ljava/io/File;
    .end local v60    # "evidence":[B
    .end local v61    # "output":Ljava/io/File;
    .end local v70    # "emc":[I
    .end local v71    # "abi":[I
    .local v24, "initialUnits403":[I
    :catch_13
    move-exception v0

    move-object/from16 v13, v24

    move-object v15, v6

    move-object/from16 v8, v30

    move-object/from16 v16, v52

    .end local v24    # "initialUnits403":[I
    .restart local v13    # "initialUnits403":[I
    goto/16 :goto_3e

    .line 1845
    .end local v13    # "initialUnits403":[I
    .restart local v5    # "zipDir":Ljava/io/File;
    .restart local v7    # "evidenceMessage":Ljava/lang/String;
    .restart local v17    # "evidenceVariantMiB":I
    .restart local v24    # "initialUnits403":[I
    .restart local v59    # "outputDir":Ljava/io/File;
    .restart local v60    # "evidence":[B
    .restart local v61    # "output":Ljava/io/File;
    .restart local v70    # "emc":[I
    .restart local v71    # "abi":[I
    :catch_14
    move-exception v0

    move-object/from16 v13, v24

    move-object v15, v6

    .end local v24    # "initialUnits403":[I
    .restart local v13    # "initialUnits403":[I
    goto/16 :goto_1c

    .line 1964
    .end local v5    # "zipDir":Ljava/io/File;
    .end local v7    # "evidenceMessage":Ljava/lang/String;
    .end local v17    # "evidenceVariantMiB":I
    .end local v59    # "outputDir":Ljava/io/File;
    .end local v60    # "evidence":[B
    .end local v61    # "output":Ljava/io/File;
    .end local v70    # "emc":[I
    .end local v71    # "abi":[I
    :catch_15
    move-exception v0

    move-object v15, v6

    move-object/from16 v8, v30

    move-object/from16 v16, v52

    goto/16 :goto_3e

    .line 1845
    .restart local v5    # "zipDir":Ljava/io/File;
    .restart local v7    # "evidenceMessage":Ljava/lang/String;
    .local v16, "evidenceVariantMiB":I
    .restart local v59    # "outputDir":Ljava/io/File;
    .restart local v60    # "evidence":[B
    .restart local v61    # "output":Ljava/io/File;
    .restart local v70    # "emc":[I
    .restart local v71    # "abi":[I
    :catch_16
    move-exception v0

    move/from16 v17, v16

    move-object v15, v6

    .end local v16    # "evidenceVariantMiB":I
    .restart local v17    # "evidenceVariantMiB":I
    goto/16 :goto_1c

    .line 1964
    .end local v5    # "zipDir":Ljava/io/File;
    .end local v6    # "shareZip":Ljava/io/File;
    .end local v7    # "evidenceMessage":Ljava/lang/String;
    .end local v17    # "evidenceVariantMiB":I
    .end local v59    # "outputDir":Ljava/io/File;
    .end local v60    # "evidence":[B
    .end local v61    # "output":Ljava/io/File;
    .end local v70    # "emc":[I
    .end local v71    # "abi":[I
    .local v13, "shareZip":Ljava/io/File;
    .restart local v24    # "initialUnits403":[I
    :catch_17
    move-exception v0

    move-object v6, v13

    move-object/from16 v13, v24

    move-object v15, v6

    move-object/from16 v8, v30

    move-object/from16 v16, v52

    .end local v24    # "initialUnits403":[I
    .restart local v6    # "shareZip":Ljava/io/File;
    .local v13, "initialUnits403":[I
    goto/16 :goto_3e

    .line 1845
    .local v6, "evidence":[B
    .restart local v7    # "evidenceMessage":Ljava/lang/String;
    .local v13, "shareZip":Ljava/io/File;
    .restart local v24    # "initialUnits403":[I
    .restart local v46    # "zipDir":Ljava/io/File;
    .restart local v59    # "outputDir":Ljava/io/File;
    .local v60, "evidenceVariantMiB":I
    .restart local v61    # "output":Ljava/io/File;
    .restart local v70    # "emc":[I
    .restart local v71    # "abi":[I
    :catch_18
    move-exception v0

    move-object/from16 v5, v46

    move/from16 v17, v60

    move-object/from16 v60, v6

    move-object v6, v13

    move-object/from16 v13, v24

    move-object v15, v6

    .end local v24    # "initialUnits403":[I
    .end local v46    # "zipDir":Ljava/io/File;
    .restart local v5    # "zipDir":Ljava/io/File;
    .local v6, "shareZip":Ljava/io/File;
    .local v13, "initialUnits403":[I
    .restart local v17    # "evidenceVariantMiB":I
    .local v60, "evidence":[B
    goto/16 :goto_1c

    .line 1964
    .end local v6    # "shareZip":Ljava/io/File;
    .end local v7    # "evidenceMessage":Ljava/lang/String;
    .end local v17    # "evidenceVariantMiB":I
    .end local v59    # "outputDir":Ljava/io/File;
    .end local v60    # "evidence":[B
    .end local v61    # "output":Ljava/io/File;
    .end local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .end local v70    # "emc":[I
    .end local v71    # "abi":[I
    .local v5, "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .local v13, "shareZip":Ljava/io/File;
    .restart local v24    # "initialUnits403":[I
    :catch_19
    move-exception v0

    move-object/from16 v62, v5

    move-object v6, v13

    move-object/from16 v13, v24

    move-object v15, v6

    move-object/from16 v8, v30

    move-object/from16 v16, v52

    .end local v5    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .end local v24    # "initialUnits403":[I
    .restart local v6    # "shareZip":Ljava/io/File;
    .local v13, "initialUnits403":[I
    .restart local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    goto/16 :goto_3e

    .line 1845
    .end local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .restart local v5    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .local v6, "evidence":[B
    .restart local v7    # "evidenceMessage":Ljava/lang/String;
    .local v13, "shareZip":Ljava/io/File;
    .restart local v24    # "initialUnits403":[I
    .restart local v46    # "zipDir":Ljava/io/File;
    .restart local v59    # "outputDir":Ljava/io/File;
    .local v60, "evidenceVariantMiB":I
    .restart local v61    # "output":Ljava/io/File;
    .restart local v70    # "emc":[I
    .restart local v71    # "abi":[I
    :catch_1a
    move-exception v0

    move-object/from16 v62, v5

    move-object/from16 v5, v46

    move/from16 v17, v60

    move-object/from16 v60, v6

    move-object v6, v13

    move-object/from16 v13, v24

    move-object v15, v6

    .end local v24    # "initialUnits403":[I
    .end local v46    # "zipDir":Ljava/io/File;
    .local v5, "zipDir":Ljava/io/File;
    .local v6, "shareZip":Ljava/io/File;
    .local v13, "initialUnits403":[I
    .restart local v17    # "evidenceVariantMiB":I
    .local v60, "evidence":[B
    .restart local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    goto/16 :goto_1c

    .line 1791
    .end local v13    # "initialUnits403":[I
    .end local v17    # "evidenceVariantMiB":I
    .end local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .local v5, "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .local v6, "evidence":[B
    .local v15, "shareZip":Ljava/io/File;
    .restart local v24    # "initialUnits403":[I
    .restart local v27    # "originalScenario":[B
    .restart local v46    # "zipDir":Ljava/io/File;
    .local v60, "evidenceVariantMiB":I
    :cond_21
    move-object/from16 v62, v5

    move-object/from16 v13, v24

    move-object/from16 v5, v46

    move/from16 v17, v60

    move-object/from16 v60, v6

    move-object v6, v15

    .end local v15    # "shareZip":Ljava/io/File;
    .end local v24    # "initialUnits403":[I
    .end local v46    # "zipDir":Ljava/io/File;
    .local v5, "zipDir":Ljava/io/File;
    .local v6, "shareZip":Ljava/io/File;
    .restart local v13    # "initialUnits403":[I
    .restart local v17    # "evidenceVariantMiB":I
    .local v60, "evidence":[B
    .restart local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    move-object/from16 v25, v6

    goto/16 :goto_1b

    .line 1964
    .end local v6    # "shareZip":Ljava/io/File;
    .end local v7    # "evidenceMessage":Ljava/lang/String;
    .end local v13    # "initialUnits403":[I
    .end local v14    # "firstUnitIdentity":[I
    .end local v17    # "evidenceVariantMiB":I
    .end local v27    # "originalScenario":[B
    .end local v59    # "outputDir":Ljava/io/File;
    .end local v60    # "evidence":[B
    .end local v61    # "output":Ljava/io/File;
    .end local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .end local v70    # "emc":[I
    .end local v71    # "abi":[I
    .local v5, "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .local v16, "firstUnitIdentity":[I
    .restart local v24    # "initialUnits403":[I
    .restart local v25    # "shareZip":Ljava/io/File;
    :catch_1b
    move-exception v0

    move-object/from16 v62, v5

    move-object/from16 v14, v16

    move-object/from16 v13, v24

    move-object/from16 v15, v25

    move-object/from16 v8, v30

    move-object/from16 v16, v52

    .end local v5    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .end local v16    # "firstUnitIdentity":[I
    .end local v24    # "initialUnits403":[I
    .restart local v13    # "initialUnits403":[I
    .restart local v14    # "firstUnitIdentity":[I
    .restart local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    goto/16 :goto_3e

    .line 1845
    .end local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .restart local v5    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .restart local v7    # "evidenceMessage":Ljava/lang/String;
    .local v13, "zipDir":Ljava/io/File;
    .local v14, "output":Ljava/io/File;
    .local v15, "evidence":[B
    .restart local v16    # "firstUnitIdentity":[I
    .restart local v24    # "initialUnits403":[I
    .restart local v59    # "outputDir":Ljava/io/File;
    .local v60, "evidenceVariantMiB":I
    .restart local v70    # "emc":[I
    .restart local v71    # "abi":[I
    :catch_1c
    move-exception v0

    move-object/from16 v62, v5

    move-object v5, v13

    move-object/from16 v61, v14

    move-object/from16 v14, v16

    move-object/from16 v13, v24

    move/from16 v17, v60

    move-object/from16 v60, v15

    move-object/from16 v15, v25

    .end local v15    # "evidence":[B
    .end local v16    # "firstUnitIdentity":[I
    .end local v24    # "initialUnits403":[I
    .local v5, "zipDir":Ljava/io/File;
    .local v13, "initialUnits403":[I
    .local v14, "firstUnitIdentity":[I
    .restart local v17    # "evidenceVariantMiB":I
    .local v60, "evidence":[B
    .restart local v61    # "output":Ljava/io/File;
    .restart local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    goto/16 :goto_1c

    .end local v2    # "attached530Summary":Ljava/lang/String;
    .end local v17    # "evidenceVariantMiB":I
    .end local v61    # "output":Ljava/io/File;
    .end local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .local v5, "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .local v6, "output":Ljava/io/File;
    .local v13, "attached530Summary":Ljava/lang/String;
    .restart local v24    # "initialUnits403":[I
    .restart local v46    # "zipDir":Ljava/io/File;
    .restart local v51    # "evidence":[B
    .local v60, "evidenceVariantMiB":I
    :catch_1d
    move-exception v0

    move-object/from16 v62, v5

    move-object/from16 v61, v6

    move-object v2, v13

    move-object/from16 v13, v24

    move-object/from16 v5, v46

    move/from16 v17, v60

    move-object/from16 v60, v51

    move-object/from16 v15, v25

    .end local v6    # "output":Ljava/io/File;
    .end local v24    # "initialUnits403":[I
    .end local v46    # "zipDir":Ljava/io/File;
    .end local v51    # "evidence":[B
    .restart local v2    # "attached530Summary":Ljava/lang/String;
    .local v5, "zipDir":Ljava/io/File;
    .local v13, "initialUnits403":[I
    .restart local v17    # "evidenceVariantMiB":I
    .local v60, "evidence":[B
    .restart local v61    # "output":Ljava/io/File;
    .restart local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    goto :goto_1c

    .line 1964
    .end local v2    # "attached530Summary":Ljava/lang/String;
    .end local v7    # "evidenceMessage":Ljava/lang/String;
    .end local v17    # "evidenceVariantMiB":I
    .end local v59    # "outputDir":Ljava/io/File;
    .end local v60    # "evidence":[B
    .end local v61    # "output":Ljava/io/File;
    .end local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .end local v70    # "emc":[I
    .end local v71    # "abi":[I
    .local v5, "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .local v13, "attached530Summary":Ljava/lang/String;
    .restart local v24    # "initialUnits403":[I
    :catch_1e
    move-exception v0

    move-object/from16 v62, v5

    move-object v2, v13

    move-object/from16 v13, v24

    move-object/from16 v15, v25

    move-object/from16 v8, v30

    move-object/from16 v16, v52

    .end local v5    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .end local v24    # "initialUnits403":[I
    .restart local v2    # "attached530Summary":Ljava/lang/String;
    .local v13, "initialUnits403":[I
    .restart local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    goto/16 :goto_3e

    .line 1845
    .end local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .local v2, "zipDir":Ljava/io/File;
    .restart local v5    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .restart local v6    # "output":Ljava/io/File;
    .restart local v7    # "evidenceMessage":Ljava/lang/String;
    .local v13, "attached530Summary":Ljava/lang/String;
    .restart local v24    # "initialUnits403":[I
    .restart local v51    # "evidence":[B
    .restart local v59    # "outputDir":Ljava/io/File;
    .local v60, "evidenceVariantMiB":I
    .restart local v70    # "emc":[I
    .restart local v71    # "abi":[I
    :catch_1f
    move-exception v0

    move-object/from16 v62, v5

    move-object/from16 v61, v6

    move/from16 v17, v60

    move-object v5, v2

    move-object v2, v13

    move-object/from16 v13, v24

    move-object/from16 v60, v51

    move-object/from16 v15, v25

    .end local v6    # "output":Ljava/io/File;
    .end local v24    # "initialUnits403":[I
    .end local v51    # "evidence":[B
    .local v2, "attached530Summary":Ljava/lang/String;
    .local v5, "zipDir":Ljava/io/File;
    .local v13, "initialUnits403":[I
    .restart local v17    # "evidenceVariantMiB":I
    .local v60, "evidence":[B
    .restart local v61    # "output":Ljava/io/File;
    .restart local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    goto :goto_1c

    .line 1785
    .end local v17    # "evidenceVariantMiB":I
    .end local v61    # "output":Ljava/io/File;
    .end local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .local v2, "zipDir":Ljava/io/File;
    .local v5, "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .restart local v6    # "output":Ljava/io/File;
    .local v13, "attached530Summary":Ljava/lang/String;
    .restart local v24    # "initialUnits403":[I
    .restart local v51    # "evidence":[B
    .local v60, "evidenceVariantMiB":I
    :cond_22
    move-object/from16 v62, v5

    move-object/from16 v61, v6

    move/from16 v17, v60

    move-object v5, v2

    move-object v2, v13

    move-object/from16 v13, v24

    move-object/from16 v60, v51

    .line 1852
    .end local v6    # "output":Ljava/io/File;
    .end local v24    # "initialUnits403":[I
    .end local v51    # "evidence":[B
    .local v2, "attached530Summary":Ljava/lang/String;
    .local v5, "zipDir":Ljava/io/File;
    .local v13, "initialUnits403":[I
    .restart local v17    # "evidenceVariantMiB":I
    .local v60, "evidence":[B
    .restart local v61    # "output":Ljava/io/File;
    .restart local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    :goto_1b
    goto :goto_1d

    .line 1964
    .end local v2    # "attached530Summary":Ljava/lang/String;
    .end local v7    # "evidenceMessage":Ljava/lang/String;
    .end local v17    # "evidenceVariantMiB":I
    .end local v25    # "shareZip":Ljava/io/File;
    .end local v59    # "outputDir":Ljava/io/File;
    .end local v60    # "evidence":[B
    .end local v61    # "output":Ljava/io/File;
    .end local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .end local v70    # "emc":[I
    .end local v71    # "abi":[I
    .local v5, "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .local v13, "attached530Summary":Ljava/lang/String;
    .local v15, "shareZip":Ljava/io/File;
    .restart local v24    # "initialUnits403":[I
    :catch_20
    move-exception v0

    move-object/from16 v62, v5

    move-object v2, v13

    move-object/from16 v13, v24

    move-object/from16 v8, v30

    move-object/from16 v16, v52

    .end local v5    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .end local v24    # "initialUnits403":[I
    .restart local v2    # "attached530Summary":Ljava/lang/String;
    .local v13, "initialUnits403":[I
    .restart local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    goto/16 :goto_3e

    .line 1845
    .end local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .local v2, "zipDir":Ljava/io/File;
    .restart local v5    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .restart local v6    # "output":Ljava/io/File;
    .restart local v7    # "evidenceMessage":Ljava/lang/String;
    .local v13, "attached530Summary":Ljava/lang/String;
    .restart local v24    # "initialUnits403":[I
    .restart local v51    # "evidence":[B
    .restart local v59    # "outputDir":Ljava/io/File;
    .local v60, "evidenceVariantMiB":I
    .restart local v70    # "emc":[I
    .restart local v71    # "abi":[I
    :catch_21
    move-exception v0

    move-object/from16 v62, v5

    move-object/from16 v61, v6

    move/from16 v17, v60

    move-object v5, v2

    move-object v2, v13

    move-object/from16 v13, v24

    move-object/from16 v60, v51

    .line 1846
    .end local v6    # "output":Ljava/io/File;
    .end local v24    # "initialUnits403":[I
    .end local v51    # "evidence":[B
    .local v0, "zipError":Ljava/io/IOException;
    .local v2, "attached530Summary":Ljava/lang/String;
    .local v5, "zipDir":Ljava/io/File;
    .local v13, "initialUnits403":[I
    .restart local v17    # "evidenceVariantMiB":I
    .local v60, "evidence":[B
    .restart local v61    # "output":Ljava/io/File;
    .restart local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    :goto_1c
    :try_start_1e
    const-string v1, "Razor probe ZIP sharing unavailable"

    invoke-static {v11, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nRazor diagnostic ZIP incomplete: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1851
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_4a
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_49
    .catch Ljava/lang/LinkageError; {:try_start_1e .. :try_end_1e} :catch_51

    move-object v7, v1

    move-object/from16 v25, v15

    .line 1854
    .end local v0    # "zipError":Ljava/io/IOException;
    .end local v15    # "shareZip":Ljava/io/File;
    .restart local v25    # "shareZip":Ljava/io/File;
    :goto_1d
    if-eqz v25, :cond_23

    if-eqz v26, :cond_23

    .line 1856
    :try_start_1f
    iget-object v0, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->sourceSha256:Ljava/lang/String;

    iget v1, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->house:I

    iget v3, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->mission:I
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_24
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_23
    .catch Ljava/lang/LinkageError; {:try_start_1f .. :try_end_1f} :catch_51

    move-object/from16 v27, v0

    move/from16 v28, v1

    move/from16 v29, v3

    move-object/from16 v24, v5

    .end local v5    # "zipDir":Ljava/io/File;
    .local v24, "zipDir":Ljava/io/File;
    :try_start_20
    invoke-static/range {v24 .. v29}, Lcom/ahsim/demulation/RazorAttachedObservationEvidence530;->writeEnvelope(Ljava/io/File;Ljava/io/File;[ILjava/lang/String;II)Ljava/io/File;

    move-result-object v0
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_22
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_23
    .catch Ljava/lang/LinkageError; {:try_start_20 .. :try_end_20} :catch_51

    move-object/from16 v46, v24

    .end local v24    # "zipDir":Ljava/io/File;
    .restart local v46    # "zipDir":Ljava/io/File;
    move-object/from16 v25, v0

    .line 1863
    goto :goto_1f

    .line 1859
    .end local v46    # "zipDir":Ljava/io/File;
    .restart local v24    # "zipDir":Ljava/io/File;
    :catch_22
    move-exception v0

    move-object/from16 v46, v24

    .end local v24    # "zipDir":Ljava/io/File;
    .restart local v46    # "zipDir":Ljava/io/File;
    goto :goto_1e

    .line 1964
    .end local v7    # "evidenceMessage":Ljava/lang/String;
    .end local v17    # "evidenceVariantMiB":I
    .end local v46    # "zipDir":Ljava/io/File;
    .end local v59    # "outputDir":Ljava/io/File;
    .end local v60    # "evidence":[B
    .end local v61    # "output":Ljava/io/File;
    .end local v70    # "emc":[I
    .end local v71    # "abi":[I
    :catch_23
    move-exception v0

    move-object/from16 v15, v25

    move-object/from16 v8, v30

    move-object/from16 v16, v52

    goto/16 :goto_3e

    .line 1859
    .restart local v5    # "zipDir":Ljava/io/File;
    .restart local v7    # "evidenceMessage":Ljava/lang/String;
    .restart local v17    # "evidenceVariantMiB":I
    .restart local v59    # "outputDir":Ljava/io/File;
    .restart local v60    # "evidence":[B
    .restart local v61    # "output":Ljava/io/File;
    .restart local v70    # "emc":[I
    .restart local v71    # "abi":[I
    :catch_24
    move-exception v0

    move-object/from16 v46, v5

    .line 1860
    .end local v5    # "zipDir":Ljava/io/File;
    .local v0, "obsZipError":Ljava/io/IOException;
    .restart local v46    # "zipDir":Ljava/io/File;
    :goto_1e
    :try_start_21
    const-string v1, "Razor 530 evidence ZIP unavailable"

    invoke-static {v11, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1861
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nRazor 530 ZIP unavailable: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1862
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_25
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_23
    .catch Ljava/lang/LinkageError; {:try_start_21 .. :try_end_21} :catch_51

    move-object v7, v1

    .end local v7    # "evidenceMessage":Ljava/lang/String;
    .local v1, "evidenceMessage":Ljava/lang/String;
    goto :goto_1f

    .line 1964
    .end local v0    # "obsZipError":Ljava/io/IOException;
    .end local v1    # "evidenceMessage":Ljava/lang/String;
    .end local v17    # "evidenceVariantMiB":I
    .end local v46    # "zipDir":Ljava/io/File;
    .end local v59    # "outputDir":Ljava/io/File;
    .end local v60    # "evidence":[B
    .end local v61    # "output":Ljava/io/File;
    .end local v70    # "emc":[I
    .end local v71    # "abi":[I
    :catch_25
    move-exception v0

    move-object/from16 v15, v25

    move-object/from16 v8, v30

    move-object/from16 v16, v52

    goto/16 :goto_3e

    .line 1854
    .restart local v5    # "zipDir":Ljava/io/File;
    .restart local v7    # "evidenceMessage":Ljava/lang/String;
    .restart local v17    # "evidenceVariantMiB":I
    .restart local v59    # "outputDir":Ljava/io/File;
    .restart local v60    # "evidence":[B
    .restart local v61    # "output":Ljava/io/File;
    .restart local v70    # "emc":[I
    .restart local v71    # "abi":[I
    :cond_23
    move-object/from16 v46, v5

    .line 1865
    .end local v5    # "zipDir":Ljava/io/File;
    .restart local v46    # "zipDir":Ljava/io/File;
    :goto_1f
    if-eqz v25, :cond_24

    .line 1867
    :try_start_22
    iget-object v0, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->sourceSha256:Ljava/lang/String;

    iget v1, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->house:I

    iget v3, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->mission:I
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_29
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_28
    .catch Ljava/lang/LinkageError; {:try_start_22 .. :try_end_22} :catch_51

    move/from16 v27, v1

    move/from16 v28, v3

    move-object/from16 v31, v26

    move-object/from16 v24, v46

    move-object/from16 v29, v52

    move-object/from16 v26, v0

    .end local v26    # "attached530Evidence":[I
    .end local v46    # "zipDir":Ljava/io/File;
    .end local v52    # "attached531Outcome":Ljava/lang/String;
    .restart local v24    # "zipDir":Ljava/io/File;
    .local v29, "attached531Outcome":Ljava/lang/String;
    .local v31, "attached530Evidence":[I
    :try_start_23
    invoke-static/range {v24 .. v31}, Lcom/ahsim/demulation/RazorAttachedObservationEvidence531;->append(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[I)Ljava/io/File;

    move-result-object v0
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_27
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_26
    .catch Ljava/lang/LinkageError; {:try_start_23 .. :try_end_23} :catch_51

    move-object/from16 v8, v30

    move-object/from16 v26, v31

    .end local v24    # "zipDir":Ljava/io/File;
    .end local v30    # "attached531Reason":Ljava/lang/String;
    .end local v31    # "attached530Evidence":[I
    .local v8, "attached531Reason":Ljava/lang/String;
    .restart local v26    # "attached530Evidence":[I
    .restart local v46    # "zipDir":Ljava/io/File;
    move-object/from16 v25, v0

    .line 1876
    move-object/from16 v47, v25

    goto :goto_21

    .line 1964
    .end local v7    # "evidenceMessage":Ljava/lang/String;
    .end local v8    # "attached531Reason":Ljava/lang/String;
    .end local v17    # "evidenceVariantMiB":I
    .end local v26    # "attached530Evidence":[I
    .end local v46    # "zipDir":Ljava/io/File;
    .end local v59    # "outputDir":Ljava/io/File;
    .end local v60    # "evidence":[B
    .end local v61    # "output":Ljava/io/File;
    .end local v70    # "emc":[I
    .end local v71    # "abi":[I
    .restart local v30    # "attached531Reason":Ljava/lang/String;
    .restart local v31    # "attached530Evidence":[I
    :catch_26
    move-exception v0

    move-object/from16 v8, v30

    move-object/from16 v26, v31

    move-object/from16 v15, v25

    move-object/from16 v16, v29

    .end local v30    # "attached531Reason":Ljava/lang/String;
    .end local v31    # "attached530Evidence":[I
    .restart local v8    # "attached531Reason":Ljava/lang/String;
    .restart local v26    # "attached530Evidence":[I
    goto/16 :goto_3e

    .line 1872
    .end local v8    # "attached531Reason":Ljava/lang/String;
    .end local v26    # "attached530Evidence":[I
    .restart local v7    # "evidenceMessage":Ljava/lang/String;
    .restart local v17    # "evidenceVariantMiB":I
    .restart local v24    # "zipDir":Ljava/io/File;
    .restart local v30    # "attached531Reason":Ljava/lang/String;
    .restart local v31    # "attached530Evidence":[I
    .restart local v59    # "outputDir":Ljava/io/File;
    .restart local v60    # "evidence":[B
    .restart local v61    # "output":Ljava/io/File;
    .restart local v70    # "emc":[I
    .restart local v71    # "abi":[I
    :catch_27
    move-exception v0

    move-object/from16 v46, v24

    move-object/from16 v8, v30

    move-object/from16 v26, v31

    .end local v24    # "zipDir":Ljava/io/File;
    .end local v30    # "attached531Reason":Ljava/lang/String;
    .end local v31    # "attached530Evidence":[I
    .restart local v8    # "attached531Reason":Ljava/lang/String;
    .restart local v26    # "attached530Evidence":[I
    .restart local v46    # "zipDir":Ljava/io/File;
    goto :goto_20

    .line 1964
    .end local v7    # "evidenceMessage":Ljava/lang/String;
    .end local v8    # "attached531Reason":Ljava/lang/String;
    .end local v17    # "evidenceVariantMiB":I
    .end local v29    # "attached531Outcome":Ljava/lang/String;
    .end local v46    # "zipDir":Ljava/io/File;
    .end local v59    # "outputDir":Ljava/io/File;
    .end local v60    # "evidence":[B
    .end local v61    # "output":Ljava/io/File;
    .end local v70    # "emc":[I
    .end local v71    # "abi":[I
    .restart local v30    # "attached531Reason":Ljava/lang/String;
    .restart local v52    # "attached531Outcome":Ljava/lang/String;
    :catch_28
    move-exception v0

    move-object/from16 v8, v30

    move-object/from16 v29, v52

    move-object/from16 v15, v25

    move-object/from16 v16, v29

    .end local v30    # "attached531Reason":Ljava/lang/String;
    .end local v52    # "attached531Outcome":Ljava/lang/String;
    .restart local v8    # "attached531Reason":Ljava/lang/String;
    .restart local v29    # "attached531Outcome":Ljava/lang/String;
    goto/16 :goto_3e

    .line 1872
    .end local v8    # "attached531Reason":Ljava/lang/String;
    .end local v29    # "attached531Outcome":Ljava/lang/String;
    .restart local v7    # "evidenceMessage":Ljava/lang/String;
    .restart local v17    # "evidenceVariantMiB":I
    .restart local v30    # "attached531Reason":Ljava/lang/String;
    .restart local v46    # "zipDir":Ljava/io/File;
    .restart local v52    # "attached531Outcome":Ljava/lang/String;
    .restart local v59    # "outputDir":Ljava/io/File;
    .restart local v60    # "evidence":[B
    .restart local v61    # "output":Ljava/io/File;
    .restart local v70    # "emc":[I
    .restart local v71    # "abi":[I
    :catch_29
    move-exception v0

    move-object/from16 v8, v30

    move-object/from16 v29, v52

    .line 1873
    .end local v30    # "attached531Reason":Ljava/lang/String;
    .end local v52    # "attached531Outcome":Ljava/lang/String;
    .local v0, "obs531Error":Ljava/io/IOException;
    .restart local v8    # "attached531Reason":Ljava/lang/String;
    .restart local v29    # "attached531Outcome":Ljava/lang/String;
    :goto_20
    :try_start_24
    const-string v1, "Razor 531 status ZIP unavailable"

    invoke-static {v11, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1874
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nRazor 531 status unavailable: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1875
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_48
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_47
    .catch Ljava/lang/LinkageError; {:try_start_24 .. :try_end_24} :catch_51

    move-object v7, v1

    move-object/from16 v47, v25

    .line 1880
    .end local v0    # "obs531Error":Ljava/io/IOException;
    .end local v25    # "shareZip":Ljava/io/File;
    .local v47, "shareZip":Ljava/io/File;
    :goto_21
    :try_start_25
    iget-object v0, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->sourceSha256:Ljava/lang/String;

    iget v1, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->house:I

    iget v3, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->mission:I

    const-string v51, "FULL_PROBE"
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_2d
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_2c
    .catch Ljava/lang/LinkageError; {:try_start_25 .. :try_end_25} :catch_51

    move-object/from16 v48, v0

    move/from16 v49, v1

    move/from16 v50, v3

    move-object/from16 v52, v29

    .end local v29    # "attached531Outcome":Ljava/lang/String;
    .restart local v52    # "attached531Outcome":Ljava/lang/String;
    :try_start_26
    invoke-static/range {v46 .. v52}, Lcom/ahsim/demulation/RazorAndroidRuntimeEvidence532;->append(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_2b
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_2a
    .catch Ljava/lang/LinkageError; {:try_start_26 .. :try_end_26} :catch_51

    move-object/from16 v16, v52

    .end local v52    # "attached531Outcome":Ljava/lang/String;
    .local v16, "attached531Outcome":Ljava/lang/String;
    move-object/from16 v47, v0

    .line 1888
    move-object/from16 v34, v47

    goto :goto_23

    .line 1964
    .end local v7    # "evidenceMessage":Ljava/lang/String;
    .end local v16    # "attached531Outcome":Ljava/lang/String;
    .end local v17    # "evidenceVariantMiB":I
    .end local v46    # "zipDir":Ljava/io/File;
    .end local v59    # "outputDir":Ljava/io/File;
    .end local v60    # "evidence":[B
    .end local v61    # "output":Ljava/io/File;
    .end local v70    # "emc":[I
    .end local v71    # "abi":[I
    .restart local v52    # "attached531Outcome":Ljava/lang/String;
    :catch_2a
    move-exception v0

    move-object/from16 v16, v52

    move-object/from16 v15, v47

    .end local v52    # "attached531Outcome":Ljava/lang/String;
    .restart local v16    # "attached531Outcome":Ljava/lang/String;
    goto/16 :goto_3e

    .line 1884
    .end local v16    # "attached531Outcome":Ljava/lang/String;
    .restart local v7    # "evidenceMessage":Ljava/lang/String;
    .restart local v17    # "evidenceVariantMiB":I
    .restart local v46    # "zipDir":Ljava/io/File;
    .restart local v52    # "attached531Outcome":Ljava/lang/String;
    .restart local v59    # "outputDir":Ljava/io/File;
    .restart local v60    # "evidence":[B
    .restart local v61    # "output":Ljava/io/File;
    .restart local v70    # "emc":[I
    .restart local v71    # "abi":[I
    :catch_2b
    move-exception v0

    move-object/from16 v16, v52

    .end local v52    # "attached531Outcome":Ljava/lang/String;
    .restart local v16    # "attached531Outcome":Ljava/lang/String;
    goto :goto_22

    .line 1964
    .end local v7    # "evidenceMessage":Ljava/lang/String;
    .end local v16    # "attached531Outcome":Ljava/lang/String;
    .end local v17    # "evidenceVariantMiB":I
    .end local v46    # "zipDir":Ljava/io/File;
    .end local v59    # "outputDir":Ljava/io/File;
    .end local v60    # "evidence":[B
    .end local v61    # "output":Ljava/io/File;
    .end local v70    # "emc":[I
    .end local v71    # "abi":[I
    .restart local v29    # "attached531Outcome":Ljava/lang/String;
    :catch_2c
    move-exception v0

    move-object/from16 v16, v29

    move-object/from16 v15, v47

    .end local v29    # "attached531Outcome":Ljava/lang/String;
    .restart local v16    # "attached531Outcome":Ljava/lang/String;
    goto/16 :goto_3e

    .line 1884
    .end local v16    # "attached531Outcome":Ljava/lang/String;
    .restart local v7    # "evidenceMessage":Ljava/lang/String;
    .restart local v17    # "evidenceVariantMiB":I
    .restart local v29    # "attached531Outcome":Ljava/lang/String;
    .restart local v46    # "zipDir":Ljava/io/File;
    .restart local v59    # "outputDir":Ljava/io/File;
    .restart local v60    # "evidence":[B
    .restart local v61    # "output":Ljava/io/File;
    .restart local v70    # "emc":[I
    .restart local v71    # "abi":[I
    :catch_2d
    move-exception v0

    move-object/from16 v16, v29

    .line 1885
    .end local v29    # "attached531Outcome":Ljava/lang/String;
    .local v0, "obs532Error":Ljava/io/IOException;
    .restart local v16    # "attached531Outcome":Ljava/lang/String;
    :goto_22
    :try_start_27
    const-string v1, "Razor 532 diagnostic unavailable"

    invoke-static {v11, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nRazor 532 status unavailable: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1887
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_46
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_27} :catch_45
    .catch Ljava/lang/LinkageError; {:try_start_27 .. :try_end_27} :catch_51

    move-object v7, v1

    move-object/from16 v34, v47

    .line 1892
    .end local v0    # "obs532Error":Ljava/io/IOException;
    .end local v47    # "shareZip":Ljava/io/File;
    .local v34, "shareZip":Ljava/io/File;
    :goto_23
    :try_start_28
    iget-object v0, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->sourceSha256:Ljava/lang/String;

    iget v1, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->house:I

    iget v3, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->mission:I
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_30
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_28} :catch_2f
    .catch Ljava/lang/LinkageError; {:try_start_28 .. :try_end_28} :catch_51

    move-object/from16 v35, v0

    move/from16 v36, v1

    move/from16 v37, v3

    move-object/from16 v33, v46

    .end local v46    # "zipDir":Ljava/io/File;
    .restart local v33    # "zipDir":Ljava/io/File;
    :try_start_29
    invoke-static/range {v33 .. v38}, Lcom/ahsim/demulation/RazorF40PrecallEvidence533;->append(Ljava/io/File;Ljava/io/File;Ljava/lang/String;II[I)Ljava/io/File;

    move-result-object v0
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_2e
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_29} :catch_2f
    .catch Ljava/lang/LinkageError; {:try_start_29 .. :try_end_29} :catch_51

    .end local v33    # "zipDir":Ljava/io/File;
    .restart local v46    # "zipDir":Ljava/io/File;
    move-object/from16 v34, v0

    .line 1899
    goto :goto_26

    .line 1895
    .end local v46    # "zipDir":Ljava/io/File;
    .restart local v33    # "zipDir":Ljava/io/File;
    :catch_2e
    move-exception v0

    move-object/from16 v46, v33

    .end local v33    # "zipDir":Ljava/io/File;
    .restart local v46    # "zipDir":Ljava/io/File;
    goto :goto_25

    .line 1964
    .end local v7    # "evidenceMessage":Ljava/lang/String;
    .end local v17    # "evidenceVariantMiB":I
    .end local v46    # "zipDir":Ljava/io/File;
    .end local v59    # "outputDir":Ljava/io/File;
    .end local v60    # "evidence":[B
    .end local v61    # "output":Ljava/io/File;
    .end local v70    # "emc":[I
    .end local v71    # "abi":[I
    :catch_2f
    move-exception v0

    :goto_24
    move-object/from16 v15, v34

    goto/16 :goto_3e

    .line 1895
    .restart local v7    # "evidenceMessage":Ljava/lang/String;
    .restart local v17    # "evidenceVariantMiB":I
    .restart local v46    # "zipDir":Ljava/io/File;
    .restart local v59    # "outputDir":Ljava/io/File;
    .restart local v60    # "evidence":[B
    .restart local v61    # "output":Ljava/io/File;
    .restart local v70    # "emc":[I
    .restart local v71    # "abi":[I
    :catch_30
    move-exception v0

    .line 1896
    .local v0, "obs533Error":Ljava/io/IOException;
    :goto_25
    :try_start_2a
    const-string v1, "Razor 533 F40 precall export unavailable"

    invoke-static {v11, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1897
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nRazor 533 status unavailable: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1898
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_44
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2a} :catch_2f
    .catch Ljava/lang/LinkageError; {:try_start_2a .. :try_end_2a} :catch_51

    move-object v7, v1

    .line 1903
    .end local v0    # "obs533Error":Ljava/io/IOException;
    :goto_26
    :try_start_2b
    iget-object v0, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->sourceSha256:Ljava/lang/String;

    iget v1, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->house:I

    iget v3, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->mission:I
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_33
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2b} :catch_2f
    .catch Ljava/lang/LinkageError; {:try_start_2b .. :try_end_2b} :catch_51

    move-object/from16 v35, v0

    move/from16 v36, v1

    move/from16 v37, v3

    move-object/from16 v39, v38

    move-object/from16 v38, v45

    move-object/from16 v33, v46

    .end local v45    # "attached534Evidence":[I
    .end local v46    # "zipDir":Ljava/io/File;
    .restart local v33    # "zipDir":Ljava/io/File;
    .local v38, "attached534Evidence":[I
    .local v39, "attached533Evidence":[I
    :try_start_2c
    invoke-static/range {v33 .. v39}, Lcom/ahsim/demulation/RazorF40SandboxEvidence534;->append(Ljava/io/File;Ljava/io/File;Ljava/lang/String;II[I[I)Ljava/io/File;

    move-result-object v0
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_32
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_2c} :catch_31
    .catch Ljava/lang/LinkageError; {:try_start_2c .. :try_end_2c} :catch_51

    move-object/from16 v38, v39

    .end local v33    # "zipDir":Ljava/io/File;
    .end local v39    # "attached533Evidence":[I
    .local v38, "attached533Evidence":[I
    .restart local v45    # "attached534Evidence":[I
    .restart local v46    # "zipDir":Ljava/io/File;
    move-object/from16 v34, v0

    .line 1911
    move-object/from16 v40, v34

    goto :goto_28

    .line 1964
    .end local v7    # "evidenceMessage":Ljava/lang/String;
    .end local v17    # "evidenceVariantMiB":I
    .end local v45    # "attached534Evidence":[I
    .end local v46    # "zipDir":Ljava/io/File;
    .end local v59    # "outputDir":Ljava/io/File;
    .end local v60    # "evidence":[B
    .end local v61    # "output":Ljava/io/File;
    .end local v70    # "emc":[I
    .end local v71    # "abi":[I
    .local v38, "attached534Evidence":[I
    .restart local v39    # "attached533Evidence":[I
    :catch_31
    move-exception v0

    move-object/from16 v45, v38

    move-object/from16 v38, v39

    move-object/from16 v15, v34

    .end local v39    # "attached533Evidence":[I
    .local v38, "attached533Evidence":[I
    .restart local v45    # "attached534Evidence":[I
    goto/16 :goto_3e

    .line 1907
    .end local v45    # "attached534Evidence":[I
    .restart local v7    # "evidenceMessage":Ljava/lang/String;
    .restart local v17    # "evidenceVariantMiB":I
    .restart local v33    # "zipDir":Ljava/io/File;
    .local v38, "attached534Evidence":[I
    .restart local v39    # "attached533Evidence":[I
    .restart local v59    # "outputDir":Ljava/io/File;
    .restart local v60    # "evidence":[B
    .restart local v61    # "output":Ljava/io/File;
    .restart local v70    # "emc":[I
    .restart local v71    # "abi":[I
    :catch_32
    move-exception v0

    move-object/from16 v46, v33

    move-object/from16 v45, v38

    move-object/from16 v38, v39

    .end local v33    # "zipDir":Ljava/io/File;
    .end local v39    # "attached533Evidence":[I
    .local v38, "attached533Evidence":[I
    .restart local v45    # "attached534Evidence":[I
    .restart local v46    # "zipDir":Ljava/io/File;
    goto :goto_27

    :catch_33
    move-exception v0

    .line 1908
    .local v0, "gate534Error":Ljava/io/IOException;
    :goto_27
    :try_start_2d
    const-string v1, "Razor 534 sandbox gate ZIP unavailable"

    invoke-static {v11, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1909
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nRazor 534 sandbox gate unavailable: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1910
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_44
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_2d} :catch_2f
    .catch Ljava/lang/LinkageError; {:try_start_2d .. :try_end_2d} :catch_51

    move-object v7, v1

    move-object/from16 v40, v34

    .line 1915
    .end local v0    # "gate534Error":Ljava/io/IOException;
    .end local v34    # "shareZip":Ljava/io/File;
    .local v40, "shareZip":Ljava/io/File;
    :goto_28
    :try_start_2e
    iget-object v0, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->sourceSha256:Ljava/lang/String;

    iget v1, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->house:I

    iget v3, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->mission:I
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_36
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_2e} :catch_35
    .catch Ljava/lang/LinkageError; {:try_start_2e .. :try_end_2e} :catch_51

    move-object/from16 v41, v0

    move/from16 v42, v1

    move/from16 v43, v3

    move-object/from16 v39, v46

    .end local v46    # "zipDir":Ljava/io/File;
    .local v39, "zipDir":Ljava/io/File;
    :try_start_2f
    invoke-static/range {v39 .. v45}, Lcom/ahsim/demulation/RazorM68kBackendEvidence535;->append(Ljava/io/File;Ljava/io/File;Ljava/lang/String;II[I[I)Ljava/io/File;

    move-result-object v0
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_34
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_2f} :catch_35
    .catch Ljava/lang/LinkageError; {:try_start_2f .. :try_end_2f} :catch_51

    .end local v39    # "zipDir":Ljava/io/File;
    .restart local v46    # "zipDir":Ljava/io/File;
    move-object/from16 v40, v0

    .line 1923
    move-object/from16 v47, v40

    goto :goto_2b

    .line 1919
    .end local v46    # "zipDir":Ljava/io/File;
    .restart local v39    # "zipDir":Ljava/io/File;
    :catch_34
    move-exception v0

    move-object/from16 v46, v39

    .end local v39    # "zipDir":Ljava/io/File;
    .restart local v46    # "zipDir":Ljava/io/File;
    goto :goto_2a

    .line 1964
    .end local v7    # "evidenceMessage":Ljava/lang/String;
    .end local v17    # "evidenceVariantMiB":I
    .end local v46    # "zipDir":Ljava/io/File;
    .end local v59    # "outputDir":Ljava/io/File;
    .end local v60    # "evidence":[B
    .end local v61    # "output":Ljava/io/File;
    .end local v70    # "emc":[I
    .end local v71    # "abi":[I
    :catch_35
    move-exception v0

    :goto_29
    move-object/from16 v15, v40

    goto/16 :goto_3e

    .line 1919
    .restart local v7    # "evidenceMessage":Ljava/lang/String;
    .restart local v17    # "evidenceVariantMiB":I
    .restart local v46    # "zipDir":Ljava/io/File;
    .restart local v59    # "outputDir":Ljava/io/File;
    .restart local v60    # "evidence":[B
    .restart local v61    # "output":Ljava/io/File;
    .restart local v70    # "emc":[I
    .restart local v71    # "abi":[I
    :catch_36
    move-exception v0

    .line 1920
    .local v0, "backend535Error":Ljava/io/IOException;
    :goto_2a
    :try_start_30
    const-string v1, "Razor 535 backend status unavailable"

    invoke-static {v11, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1921
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nRazor 535 status unavailable: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1922
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_43
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_30} :catch_35
    .catch Ljava/lang/LinkageError; {:try_start_30 .. :try_end_30} :catch_51

    move-object v7, v1

    move-object/from16 v47, v40

    .line 1927
    .end local v0    # "backend535Error":Ljava/io/IOException;
    .end local v40    # "shareZip":Ljava/io/File;
    .restart local v47    # "shareZip":Ljava/io/File;
    :goto_2b
    :try_start_31
    iget-object v0, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->sourceSha256:Ljava/lang/String;

    iget v1, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->house:I

    iget v3, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->mission:I
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_39
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_31} :catch_45
    .catch Ljava/lang/LinkageError; {:try_start_31 .. :try_end_31} :catch_51

    move-object/from16 v48, v0

    move/from16 v49, v1

    move/from16 v50, v3

    move-object/from16 v52, v44

    move-object/from16 v51, v58

    .end local v44    # "attached535Evidence":[I
    .end local v58    # "attached536Evidence":[I
    .local v51, "attached536Evidence":[I
    .local v52, "attached535Evidence":[I
    :try_start_32
    invoke-static/range {v46 .. v52}, Lcom/ahsim/demulation/RazorM68kRomSmokeEvidence536;->append(Ljava/io/File;Ljava/io/File;Ljava/lang/String;II[I[I)Ljava/io/File;

    move-result-object v0
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_32} :catch_37
    .catch Ljava/lang/LinkageError; {:try_start_32 .. :try_end_32} :catch_51

    .end local v51    # "attached536Evidence":[I
    .end local v52    # "attached535Evidence":[I
    .restart local v44    # "attached535Evidence":[I
    .restart local v58    # "attached536Evidence":[I
    move-object/from16 v47, v0

    .line 1935
    move-object/from16 v53, v47

    goto :goto_2d

    .line 1964
    .end local v7    # "evidenceMessage":Ljava/lang/String;
    .end local v17    # "evidenceVariantMiB":I
    .end local v44    # "attached535Evidence":[I
    .end local v46    # "zipDir":Ljava/io/File;
    .end local v58    # "attached536Evidence":[I
    .end local v59    # "outputDir":Ljava/io/File;
    .end local v60    # "evidence":[B
    .end local v61    # "output":Ljava/io/File;
    .end local v70    # "emc":[I
    .end local v71    # "abi":[I
    .restart local v51    # "attached536Evidence":[I
    .restart local v52    # "attached535Evidence":[I
    :catch_37
    move-exception v0

    move-object/from16 v58, v51

    move-object/from16 v44, v52

    move-object/from16 v15, v47

    .end local v51    # "attached536Evidence":[I
    .end local v52    # "attached535Evidence":[I
    .restart local v44    # "attached535Evidence":[I
    .restart local v58    # "attached536Evidence":[I
    goto/16 :goto_3e

    .line 1931
    .end local v44    # "attached535Evidence":[I
    .end local v58    # "attached536Evidence":[I
    .restart local v7    # "evidenceMessage":Ljava/lang/String;
    .restart local v17    # "evidenceVariantMiB":I
    .restart local v46    # "zipDir":Ljava/io/File;
    .restart local v51    # "attached536Evidence":[I
    .restart local v52    # "attached535Evidence":[I
    .restart local v59    # "outputDir":Ljava/io/File;
    .restart local v60    # "evidence":[B
    .restart local v61    # "output":Ljava/io/File;
    .restart local v70    # "emc":[I
    .restart local v71    # "abi":[I
    :catch_38
    move-exception v0

    move-object/from16 v58, v51

    move-object/from16 v44, v52

    .end local v51    # "attached536Evidence":[I
    .end local v52    # "attached535Evidence":[I
    .restart local v44    # "attached535Evidence":[I
    .restart local v58    # "attached536Evidence":[I
    goto :goto_2c

    :catch_39
    move-exception v0

    .line 1932
    .local v0, "smoke536Error":Ljava/io/IOException;
    :goto_2c
    :try_start_33
    const-string v1, "Razor 536 private ROM smoke unavailable"

    invoke-static {v11, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1933
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nRazor 536 private smoke: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1934
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_46
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_33} :catch_45
    .catch Ljava/lang/LinkageError; {:try_start_33 .. :try_end_33} :catch_51

    move-object v7, v1

    move-object/from16 v53, v47

    .line 1939
    .end local v0    # "smoke536Error":Ljava/io/IOException;
    .end local v47    # "shareZip":Ljava/io/File;
    .local v53, "shareZip":Ljava/io/File;
    :goto_2d
    :try_start_34
    iget-object v0, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->sourceSha256:Ljava/lang/String;

    iget v1, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->house:I

    iget v3, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->mission:I
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_3c
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_34} :catch_3b
    .catch Ljava/lang/LinkageError; {:try_start_34 .. :try_end_34} :catch_51

    move-object/from16 v54, v0

    move/from16 v55, v1

    move/from16 v56, v3

    move-object/from16 v52, v46

    .end local v46    # "zipDir":Ljava/io/File;
    .local v52, "zipDir":Ljava/io/File;
    :try_start_35
    invoke-static/range {v52 .. v58}, Lcom/ahsim/demulation/RazorM68kTraceEvidence538;->append(Ljava/io/File;Ljava/io/File;Ljava/lang/String;II[I[I)Ljava/io/File;

    move-result-object v0
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_3a
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_35} :catch_3b
    .catch Ljava/lang/LinkageError; {:try_start_35 .. :try_end_35} :catch_51

    .end local v52    # "zipDir":Ljava/io/File;
    .restart local v46    # "zipDir":Ljava/io/File;
    move-object/from16 v53, v0

    .line 1947
    move-object/from16 v28, v53

    goto :goto_30

    .line 1943
    .end local v46    # "zipDir":Ljava/io/File;
    .restart local v52    # "zipDir":Ljava/io/File;
    :catch_3a
    move-exception v0

    move-object/from16 v46, v52

    .end local v52    # "zipDir":Ljava/io/File;
    .restart local v46    # "zipDir":Ljava/io/File;
    goto :goto_2f

    .line 1964
    .end local v7    # "evidenceMessage":Ljava/lang/String;
    .end local v17    # "evidenceVariantMiB":I
    .end local v46    # "zipDir":Ljava/io/File;
    .end local v59    # "outputDir":Ljava/io/File;
    .end local v60    # "evidence":[B
    .end local v61    # "output":Ljava/io/File;
    .end local v70    # "emc":[I
    .end local v71    # "abi":[I
    :catch_3b
    move-exception v0

    :goto_2e
    move-object/from16 v15, v53

    goto/16 :goto_3e

    .line 1943
    .restart local v7    # "evidenceMessage":Ljava/lang/String;
    .restart local v17    # "evidenceVariantMiB":I
    .restart local v46    # "zipDir":Ljava/io/File;
    .restart local v59    # "outputDir":Ljava/io/File;
    .restart local v60    # "evidence":[B
    .restart local v61    # "output":Ljava/io/File;
    .restart local v70    # "emc":[I
    .restart local v71    # "abi":[I
    :catch_3c
    move-exception v0

    .line 1944
    .local v0, "trace538Error":Ljava/io/IOException;
    :goto_2f
    :try_start_36
    const-string v1, "Razor 538 private trace unavailable"

    invoke-static {v11, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nRazor 538 private trace: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1946
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_42
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_36} :catch_3b
    .catch Ljava/lang/LinkageError; {:try_start_36 .. :try_end_36} :catch_51

    move-object v7, v1

    move-object/from16 v28, v53

    .line 1951
    .end local v0    # "trace538Error":Ljava/io/IOException;
    .end local v53    # "shareZip":Ljava/io/File;
    .local v28, "shareZip":Ljava/io/File;
    :goto_30
    :try_start_37
    iget-object v0, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->sourceSha256:Ljava/lang/String;

    iget v1, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->house:I

    iget v3, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->mission:I

    iget v5, v4, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->variant:I
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_37} :catch_40
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_37} :catch_3f
    .catch Ljava/lang/LinkageError; {:try_start_37 .. :try_end_37} :catch_51

    move-object/from16 v29, v0

    move/from16 v30, v1

    move/from16 v31, v3

    move/from16 v34, v5

    move-object/from16 v33, v45

    move-object/from16 v27, v46

    .end local v45    # "attached534Evidence":[I
    .end local v46    # "zipDir":Ljava/io/File;
    .local v27, "zipDir":Ljava/io/File;
    .local v33, "attached534Evidence":[I
    :try_start_38
    invoke-static/range {v27 .. v34}, Lcom/ahsim/demulation/RazorGenesisBootEvidence541;->append(Ljava/io/File;Ljava/io/File;Ljava/lang/String;II[I[II)Ljava/io/File;

    move-result-object v0
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_38} :catch_3e
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_38} :catch_3d
    .catch Ljava/lang/LinkageError; {:try_start_38 .. :try_end_38} :catch_51

    .line 1960
    .end local v27    # "zipDir":Ljava/io/File;
    .end local v28    # "shareZip":Ljava/io/File;
    .end local v33    # "attached534Evidence":[I
    .local v0, "shareZip":Ljava/io/File;
    .restart local v45    # "attached534Evidence":[I
    .restart local v46    # "zipDir":Ljava/io/File;
    move-object v15, v0

    goto :goto_33

    .line 1964
    .end local v0    # "shareZip":Ljava/io/File;
    .end local v7    # "evidenceMessage":Ljava/lang/String;
    .end local v17    # "evidenceVariantMiB":I
    .end local v45    # "attached534Evidence":[I
    .end local v46    # "zipDir":Ljava/io/File;
    .end local v59    # "outputDir":Ljava/io/File;
    .end local v60    # "evidence":[B
    .end local v61    # "output":Ljava/io/File;
    .end local v70    # "emc":[I
    .end local v71    # "abi":[I
    .restart local v28    # "shareZip":Ljava/io/File;
    .restart local v33    # "attached534Evidence":[I
    :catch_3d
    move-exception v0

    move-object/from16 v45, v33

    move-object/from16 v15, v28

    .end local v33    # "attached534Evidence":[I
    .restart local v45    # "attached534Evidence":[I
    goto/16 :goto_3e

    .line 1956
    .end local v45    # "attached534Evidence":[I
    .restart local v7    # "evidenceMessage":Ljava/lang/String;
    .restart local v17    # "evidenceVariantMiB":I
    .restart local v27    # "zipDir":Ljava/io/File;
    .restart local v33    # "attached534Evidence":[I
    .restart local v59    # "outputDir":Ljava/io/File;
    .restart local v60    # "evidence":[B
    .restart local v61    # "output":Ljava/io/File;
    .restart local v70    # "emc":[I
    .restart local v71    # "abi":[I
    :catch_3e
    move-exception v0

    move-object/from16 v46, v27

    move-object/from16 v45, v33

    .end local v27    # "zipDir":Ljava/io/File;
    .end local v33    # "attached534Evidence":[I
    .restart local v45    # "attached534Evidence":[I
    .restart local v46    # "zipDir":Ljava/io/File;
    goto :goto_32

    .line 1964
    .end local v7    # "evidenceMessage":Ljava/lang/String;
    .end local v17    # "evidenceVariantMiB":I
    .end local v46    # "zipDir":Ljava/io/File;
    .end local v59    # "outputDir":Ljava/io/File;
    .end local v60    # "evidence":[B
    .end local v61    # "output":Ljava/io/File;
    .end local v70    # "emc":[I
    .end local v71    # "abi":[I
    :catch_3f
    move-exception v0

    :goto_31
    move-object/from16 v15, v28

    goto/16 :goto_3e

    .line 1956
    .restart local v7    # "evidenceMessage":Ljava/lang/String;
    .restart local v17    # "evidenceVariantMiB":I
    .restart local v46    # "zipDir":Ljava/io/File;
    .restart local v59    # "outputDir":Ljava/io/File;
    .restart local v60    # "evidence":[B
    .restart local v61    # "output":Ljava/io/File;
    .restart local v70    # "emc":[I
    .restart local v71    # "abi":[I
    :catch_40
    move-exception v0

    .line 1957
    .local v0, "bootstrap541Error":Ljava/io/IOException;
    :goto_32
    :try_start_39
    const-string v1, "Razor 541 bootstrap evidence unavailable"

    invoke-static {v11, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nRazor 541 bootstrap: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1959
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_39} :catch_41
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_39} :catch_3f
    .catch Ljava/lang/LinkageError; {:try_start_39 .. :try_end_39} :catch_51

    move-object v7, v1

    move-object/from16 v15, v28

    .line 1961
    .end local v0    # "bootstrap541Error":Ljava/io/IOException;
    .end local v28    # "shareZip":Ljava/io/File;
    .restart local v15    # "shareZip":Ljava/io/File;
    :goto_33
    :try_start_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nRazor diagnostic ZIP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_36

    .line 1964
    .end local v7    # "evidenceMessage":Ljava/lang/String;
    .end local v15    # "shareZip":Ljava/io/File;
    .end local v17    # "evidenceVariantMiB":I
    .end local v46    # "zipDir":Ljava/io/File;
    .end local v59    # "outputDir":Ljava/io/File;
    .end local v60    # "evidence":[B
    .end local v61    # "output":Ljava/io/File;
    .end local v70    # "emc":[I
    .end local v71    # "abi":[I
    .restart local v28    # "shareZip":Ljava/io/File;
    :catch_41
    move-exception v0

    goto :goto_31

    .end local v28    # "shareZip":Ljava/io/File;
    .restart local v53    # "shareZip":Ljava/io/File;
    :catch_42
    move-exception v0

    goto/16 :goto_2e

    .end local v53    # "shareZip":Ljava/io/File;
    .restart local v40    # "shareZip":Ljava/io/File;
    :catch_43
    move-exception v0

    goto/16 :goto_29

    .end local v40    # "shareZip":Ljava/io/File;
    .restart local v34    # "shareZip":Ljava/io/File;
    :catch_44
    move-exception v0

    goto/16 :goto_24

    .end local v34    # "shareZip":Ljava/io/File;
    .restart local v47    # "shareZip":Ljava/io/File;
    :catch_45
    move-exception v0

    goto :goto_34

    :catch_46
    move-exception v0

    :goto_34
    move-object/from16 v15, v47

    goto/16 :goto_3e

    .end local v16    # "attached531Outcome":Ljava/lang/String;
    .end local v47    # "shareZip":Ljava/io/File;
    .restart local v25    # "shareZip":Ljava/io/File;
    .restart local v29    # "attached531Outcome":Ljava/lang/String;
    :catch_47
    move-exception v0

    move-object/from16 v16, v29

    move-object/from16 v15, v25

    .end local v29    # "attached531Outcome":Ljava/lang/String;
    .restart local v16    # "attached531Outcome":Ljava/lang/String;
    goto/16 :goto_3e

    .end local v16    # "attached531Outcome":Ljava/lang/String;
    .restart local v29    # "attached531Outcome":Ljava/lang/String;
    :catch_48
    move-exception v0

    move-object/from16 v16, v29

    move-object/from16 v15, v25

    .end local v29    # "attached531Outcome":Ljava/lang/String;
    .restart local v16    # "attached531Outcome":Ljava/lang/String;
    goto/16 :goto_3e

    .line 1865
    .end local v8    # "attached531Reason":Ljava/lang/String;
    .end local v16    # "attached531Outcome":Ljava/lang/String;
    .restart local v7    # "evidenceMessage":Ljava/lang/String;
    .restart local v17    # "evidenceVariantMiB":I
    .restart local v30    # "attached531Reason":Ljava/lang/String;
    .restart local v46    # "zipDir":Ljava/io/File;
    .local v52, "attached531Outcome":Ljava/lang/String;
    .restart local v59    # "outputDir":Ljava/io/File;
    .restart local v60    # "evidence":[B
    .restart local v61    # "output":Ljava/io/File;
    .restart local v70    # "emc":[I
    .restart local v71    # "abi":[I
    :cond_24
    move-object/from16 v8, v30

    move-object/from16 v16, v52

    .end local v30    # "attached531Reason":Ljava/lang/String;
    .end local v52    # "attached531Outcome":Ljava/lang/String;
    .restart local v8    # "attached531Reason":Ljava/lang/String;
    .restart local v16    # "attached531Outcome":Ljava/lang/String;
    move-object/from16 v15, v25

    goto :goto_36

    .line 1964
    .end local v7    # "evidenceMessage":Ljava/lang/String;
    .end local v8    # "attached531Reason":Ljava/lang/String;
    .end local v16    # "attached531Outcome":Ljava/lang/String;
    .end local v17    # "evidenceVariantMiB":I
    .end local v25    # "shareZip":Ljava/io/File;
    .end local v46    # "zipDir":Ljava/io/File;
    .end local v59    # "outputDir":Ljava/io/File;
    .end local v60    # "evidence":[B
    .end local v61    # "output":Ljava/io/File;
    .end local v70    # "emc":[I
    .end local v71    # "abi":[I
    .restart local v15    # "shareZip":Ljava/io/File;
    .restart local v30    # "attached531Reason":Ljava/lang/String;
    .restart local v52    # "attached531Outcome":Ljava/lang/String;
    :catch_49
    move-exception v0

    goto :goto_35

    :catch_4a
    move-exception v0

    :goto_35
    move-object/from16 v8, v30

    move-object/from16 v16, v52

    .end local v30    # "attached531Reason":Ljava/lang/String;
    .end local v52    # "attached531Outcome":Ljava/lang/String;
    .restart local v8    # "attached531Reason":Ljava/lang/String;
    .restart local v16    # "attached531Outcome":Ljava/lang/String;
    goto/16 :goto_3e

    .line 1780
    .end local v8    # "attached531Reason":Ljava/lang/String;
    .end local v16    # "attached531Outcome":Ljava/lang/String;
    .end local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .local v2, "outputDir":Ljava/io/File;
    .local v5, "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .restart local v6    # "output":Ljava/io/File;
    .restart local v7    # "evidenceMessage":Ljava/lang/String;
    .local v13, "attached530Summary":Ljava/lang/String;
    .local v24, "initialUnits403":[I
    .restart local v30    # "attached531Reason":Ljava/lang/String;
    .local v33, "zipDir":Ljava/io/File;
    .local v51, "evidence":[B
    .restart local v52    # "attached531Outcome":Ljava/lang/String;
    .local v60, "evidenceVariantMiB":I
    .restart local v70    # "emc":[I
    .restart local v71    # "abi":[I
    :cond_25
    move-object/from16 v59, v2

    move-object/from16 v62, v5

    move-object/from16 v61, v6

    move-object v2, v13

    move-object/from16 v13, v24

    move-object/from16 v8, v30

    move-object/from16 v46, v33

    move-object/from16 v16, v52

    move/from16 v17, v60

    move-object/from16 v60, v51

    .line 1967
    .end local v5    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .end local v6    # "output":Ljava/io/File;
    .end local v24    # "initialUnits403":[I
    .end local v30    # "attached531Reason":Ljava/lang/String;
    .end local v33    # "zipDir":Ljava/io/File;
    .end local v51    # "evidence":[B
    .end local v52    # "attached531Outcome":Ljava/lang/String;
    .end local v60    # "evidenceVariantMiB":I
    .end local v70    # "emc":[I
    .end local v71    # "abi":[I
    .local v2, "attached530Summary":Ljava/lang/String;
    .restart local v8    # "attached531Reason":Ljava/lang/String;
    .local v13, "initialUnits403":[I
    .restart local v16    # "attached531Outcome":Ljava/lang/String;
    .restart local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    :goto_36
    move-object/from16 v17, v15

    move-object v15, v7

    goto/16 :goto_3f

    .line 1773
    .end local v2    # "attached530Summary":Ljava/lang/String;
    .end local v7    # "evidenceMessage":Ljava/lang/String;
    .end local v8    # "attached531Reason":Ljava/lang/String;
    .end local v16    # "attached531Outcome":Ljava/lang/String;
    .end local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .restart local v5    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .local v13, "attached530Summary":Ljava/lang/String;
    .restart local v24    # "initialUnits403":[I
    .restart local v30    # "attached531Reason":Ljava/lang/String;
    .local v46, "outputDir":Ljava/io/File;
    .restart local v51    # "evidence":[B
    .restart local v52    # "attached531Outcome":Ljava/lang/String;
    .restart local v60    # "evidenceVariantMiB":I
    .restart local v70    # "emc":[I
    .restart local v71    # "abi":[I
    :cond_26
    move-object/from16 v62, v5

    move-object v2, v13

    move-object/from16 v13, v24

    move-object/from16 v8, v30

    move-object/from16 v59, v46

    move-object/from16 v16, v52

    move/from16 v17, v60

    move-object/from16 v60, v51

    .line 1774
    .end local v5    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .end local v24    # "initialUnits403":[I
    .end local v30    # "attached531Reason":Ljava/lang/String;
    .end local v46    # "outputDir":Ljava/io/File;
    .end local v51    # "evidence":[B
    .end local v52    # "attached531Outcome":Ljava/lang/String;
    .restart local v2    # "attached530Summary":Ljava/lang/String;
    .restart local v8    # "attached531Reason":Ljava/lang/String;
    .local v13, "initialUnits403":[I
    .restart local v16    # "attached531Outcome":Ljava/lang/String;
    .restart local v17    # "evidenceVariantMiB":I
    .restart local v59    # "outputDir":Ljava/io/File;
    .local v60, "evidence":[B
    .restart local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    :goto_37
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Private Razor observation directory is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "attached530Summary":Ljava/lang/String;
    .end local v4    # "result":Lcom/ahsim/demulation/RazorNativeWorldSession$Status;
    .end local v8    # "attached531Reason":Ljava/lang/String;
    .end local v12    # "attached530":[I
    .end local v13    # "initialUnits403":[I
    .end local v14    # "firstUnitIdentity":[I
    .end local v15    # "shareZip":Ljava/io/File;
    .end local v16    # "attached531Outcome":Ljava/lang/String;
    .end local v23    # "shadow405":[I
    .end local v26    # "attached530Evidence":[I
    .end local v32    # "attached541Evidence":[I
    .end local v38    # "attached533Evidence":[I
    .end local v44    # "attached535Evidence":[I
    .end local v45    # "attached534Evidence":[I
    .end local v57    # "attached538Evidence":[I
    .end local v58    # "attached536Evidence":[I
    .end local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .end local v72    # "attached530Status":Ljava/lang/String;
    .end local p1    # "generation":I
    .end local p2    # "house":I
    .end local p3    # "mission":I
    .end local p4    # "checkedSource":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .end local p5    # "verifiedUnitBank":[B
    .end local p6    # "verifiedSource536":Lcom/ahsim/demulation/RazorTerrainPreviewSource;
    throw v0

    .line 1766
    .end local v59    # "outputDir":Ljava/io/File;
    .end local v60    # "evidence":[B
    .restart local v4    # "result":Lcom/ahsim/demulation/RazorNativeWorldSession$Status;
    .restart local v5    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .restart local v12    # "attached530":[I
    .local v13, "attached530Summary":Ljava/lang/String;
    .restart local v14    # "firstUnitIdentity":[I
    .restart local v15    # "shareZip":Ljava/io/File;
    .restart local v23    # "shadow405":[I
    .restart local v24    # "initialUnits403":[I
    .restart local v26    # "attached530Evidence":[I
    .restart local v30    # "attached531Reason":Ljava/lang/String;
    .restart local v32    # "attached541Evidence":[I
    .restart local v38    # "attached533Evidence":[I
    .restart local v44    # "attached535Evidence":[I
    .restart local v45    # "attached534Evidence":[I
    .restart local v52    # "attached531Outcome":Ljava/lang/String;
    .restart local v57    # "attached538Evidence":[I
    .restart local v58    # "attached536Evidence":[I
    .restart local v72    # "attached530Status":Ljava/lang/String;
    .restart local p1    # "generation":I
    .restart local p2    # "house":I
    .restart local p3    # "mission":I
    .restart local p4    # "checkedSource":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .restart local p5    # "verifiedUnitBank":[B
    .restart local p6    # "verifiedSource536":Lcom/ahsim/demulation/RazorTerrainPreviewSource;
    :cond_27
    move-object/from16 v62, v5

    move-object v2, v13

    move-object/from16 v13, v24

    move-object/from16 v8, v30

    move-object/from16 v16, v52

    .end local v5    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .end local v24    # "initialUnits403":[I
    .end local v30    # "attached531Reason":Ljava/lang/String;
    .end local v52    # "attached531Outcome":Ljava/lang/String;
    .restart local v2    # "attached530Summary":Ljava/lang/String;
    .restart local v8    # "attached531Reason":Ljava/lang/String;
    .local v13, "initialUnits403":[I
    .restart local v16    # "attached531Outcome":Ljava/lang/String;
    .restart local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown Razor ROM variant"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "attached530Summary":Ljava/lang/String;
    .end local v4    # "result":Lcom/ahsim/demulation/RazorNativeWorldSession$Status;
    .end local v8    # "attached531Reason":Ljava/lang/String;
    .end local v12    # "attached530":[I
    .end local v13    # "initialUnits403":[I
    .end local v14    # "firstUnitIdentity":[I
    .end local v15    # "shareZip":Ljava/io/File;
    .end local v16    # "attached531Outcome":Ljava/lang/String;
    .end local v23    # "shadow405":[I
    .end local v26    # "attached530Evidence":[I
    .end local v32    # "attached541Evidence":[I
    .end local v38    # "attached533Evidence":[I
    .end local v44    # "attached535Evidence":[I
    .end local v45    # "attached534Evidence":[I
    .end local v57    # "attached538Evidence":[I
    .end local v58    # "attached536Evidence":[I
    .end local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .end local v72    # "attached530Status":Ljava/lang/String;
    .end local p1    # "generation":I
    .end local p2    # "house":I
    .end local p3    # "mission":I
    .end local p4    # "checkedSource":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .end local p5    # "verifiedUnitBank":[B
    .end local p6    # "verifiedSource536":Lcom/ahsim/demulation/RazorTerrainPreviewSource;
    throw v0
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3a} :catch_4c
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_3a} :catch_4b
    .catch Ljava/lang/LinkageError; {:try_start_3a .. :try_end_3a} :catch_51

    .line 1964
    .end local v17    # "evidenceVariantMiB":I
    .end local v70    # "emc":[I
    .end local v71    # "abi":[I
    .restart local v2    # "attached530Summary":Ljava/lang/String;
    .restart local v4    # "result":Lcom/ahsim/demulation/RazorNativeWorldSession$Status;
    .restart local v8    # "attached531Reason":Ljava/lang/String;
    .restart local v12    # "attached530":[I
    .restart local v13    # "initialUnits403":[I
    .restart local v14    # "firstUnitIdentity":[I
    .restart local v15    # "shareZip":Ljava/io/File;
    .restart local v16    # "attached531Outcome":Ljava/lang/String;
    .restart local v23    # "shadow405":[I
    .restart local v26    # "attached530Evidence":[I
    .restart local v32    # "attached541Evidence":[I
    .restart local v38    # "attached533Evidence":[I
    .restart local v44    # "attached535Evidence":[I
    .restart local v45    # "attached534Evidence":[I
    .restart local v57    # "attached538Evidence":[I
    .restart local v58    # "attached536Evidence":[I
    .restart local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .restart local v72    # "attached530Status":Ljava/lang/String;
    .restart local p1    # "generation":I
    .restart local p2    # "house":I
    .restart local p3    # "mission":I
    .restart local p4    # "checkedSource":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .restart local p5    # "verifiedUnitBank":[B
    .restart local p6    # "verifiedSource536":Lcom/ahsim/demulation/RazorTerrainPreviewSource;
    :catch_4b
    move-exception v0

    goto :goto_3e

    :catch_4c
    move-exception v0

    goto :goto_3e

    .end local v2    # "attached530Summary":Ljava/lang/String;
    .end local v8    # "attached531Reason":Ljava/lang/String;
    .end local v16    # "attached531Outcome":Ljava/lang/String;
    .end local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .restart local v5    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .local v13, "attached530Summary":Ljava/lang/String;
    .restart local v24    # "initialUnits403":[I
    .restart local v30    # "attached531Reason":Ljava/lang/String;
    .restart local v52    # "attached531Outcome":Ljava/lang/String;
    :catch_4d
    move-exception v0

    goto :goto_38

    :catch_4e
    move-exception v0

    :goto_38
    move-object/from16 v62, v5

    move-object v2, v13

    move-object/from16 v13, v24

    move-object/from16 v8, v30

    move-object/from16 v16, v52

    .end local v5    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .end local v24    # "initialUnits403":[I
    .end local v30    # "attached531Reason":Ljava/lang/String;
    .end local v52    # "attached531Outcome":Ljava/lang/String;
    .restart local v2    # "attached530Summary":Ljava/lang/String;
    .restart local v8    # "attached531Reason":Ljava/lang/String;
    .local v13, "initialUnits403":[I
    .restart local v16    # "attached531Outcome":Ljava/lang/String;
    .restart local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    goto :goto_3e

    .end local v2    # "attached530Summary":Ljava/lang/String;
    .end local v8    # "attached531Reason":Ljava/lang/String;
    .end local v16    # "attached531Outcome":Ljava/lang/String;
    .end local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .restart local v5    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .local v7, "initialUnits403":[I
    .local v13, "attached530Summary":Ljava/lang/String;
    .restart local v30    # "attached531Reason":Ljava/lang/String;
    .restart local v52    # "attached531Outcome":Ljava/lang/String;
    :catch_4f
    move-exception v0

    goto :goto_39

    :catch_50
    move-exception v0

    :goto_39
    move-object/from16 v62, v5

    move-object v2, v13

    move-object/from16 v8, v30

    move-object/from16 v16, v52

    move-object v13, v7

    .end local v5    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .end local v7    # "initialUnits403":[I
    .end local v30    # "attached531Reason":Ljava/lang/String;
    .end local v52    # "attached531Outcome":Ljava/lang/String;
    .restart local v2    # "attached530Summary":Ljava/lang/String;
    .restart local v8    # "attached531Reason":Ljava/lang/String;
    .local v13, "initialUnits403":[I
    .restart local v16    # "attached531Outcome":Ljava/lang/String;
    .restart local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    goto :goto_3e

    .line 1754
    .end local v2    # "attached530Summary":Ljava/lang/String;
    .end local v8    # "attached531Reason":Ljava/lang/String;
    .end local v16    # "attached531Outcome":Ljava/lang/String;
    .end local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .end local v72    # "attached530Status":Ljava/lang/String;
    .restart local v5    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .local v6, "attached530Status":Ljava/lang/String;
    .restart local v7    # "initialUnits403":[I
    .local v13, "attached530Summary":Ljava/lang/String;
    .restart local v30    # "attached531Reason":Ljava/lang/String;
    .restart local v52    # "attached531Outcome":Ljava/lang/String;
    :cond_28
    move-object/from16 v62, v5

    move-object/from16 v72, v6

    move-object v2, v13

    move-object/from16 v8, v30

    move-object/from16 v16, v52

    move-object v13, v7

    .line 1755
    .end local v5    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .end local v6    # "attached530Status":Ljava/lang/String;
    .end local v7    # "initialUnits403":[I
    .end local v30    # "attached531Reason":Ljava/lang/String;
    .end local v52    # "attached531Outcome":Ljava/lang/String;
    .restart local v2    # "attached530Summary":Ljava/lang/String;
    .restart local v8    # "attached531Reason":Ljava/lang/String;
    .local v13, "initialUnits403":[I
    .restart local v16    # "attached531Outcome":Ljava/lang/String;
    .restart local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .restart local v72    # "attached530Status":Ljava/lang/String;
    :goto_3a
    return-void

    .line 1999
    .end local v2    # "attached530Summary":Ljava/lang/String;
    .end local v4    # "result":Lcom/ahsim/demulation/RazorNativeWorldSession$Status;
    .end local v8    # "attached531Reason":Ljava/lang/String;
    .end local v12    # "attached530":[I
    .end local v13    # "initialUnits403":[I
    .end local v14    # "firstUnitIdentity":[I
    .end local v15    # "shareZip":Ljava/io/File;
    .end local v16    # "attached531Outcome":Ljava/lang/String;
    .end local v23    # "shadow405":[I
    .end local v26    # "attached530Evidence":[I
    .end local v32    # "attached541Evidence":[I
    .end local v38    # "attached533Evidence":[I
    .end local v44    # "attached535Evidence":[I
    .end local v45    # "attached534Evidence":[I
    .end local v57    # "attached538Evidence":[I
    .end local v58    # "attached536Evidence":[I
    .end local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .end local v72    # "attached530Status":Ljava/lang/String;
    :catch_51
    move-exception v0

    :goto_3b
    move-object/from16 v1, p0

    :goto_3c
    move/from16 v2, p1

    goto :goto_40

    .line 1964
    .restart local v4    # "result":Lcom/ahsim/demulation/RazorNativeWorldSession$Status;
    .restart local v5    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .restart local v6    # "attached530Status":Ljava/lang/String;
    .restart local v7    # "initialUnits403":[I
    .restart local v12    # "attached530":[I
    .local v13, "attached530Summary":Ljava/lang/String;
    .restart local v14    # "firstUnitIdentity":[I
    .restart local v15    # "shareZip":Ljava/io/File;
    .restart local v23    # "shadow405":[I
    .restart local v26    # "attached530Evidence":[I
    .restart local v30    # "attached531Reason":Ljava/lang/String;
    .restart local v32    # "attached541Evidence":[I
    .restart local v38    # "attached533Evidence":[I
    .restart local v44    # "attached535Evidence":[I
    .restart local v45    # "attached534Evidence":[I
    .restart local v52    # "attached531Outcome":Ljava/lang/String;
    .restart local v57    # "attached538Evidence":[I
    .restart local v58    # "attached536Evidence":[I
    :catch_52
    move-exception v0

    goto :goto_3d

    :catch_53
    move-exception v0

    :goto_3d
    move-object/from16 v62, v5

    move-object/from16 v72, v6

    move-object v2, v13

    move-object/from16 v8, v30

    move-object/from16 v16, v52

    move-object v13, v7

    .line 1965
    .end local v5    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .end local v6    # "attached530Status":Ljava/lang/String;
    .end local v7    # "initialUnits403":[I
    .end local v30    # "attached531Reason":Ljava/lang/String;
    .end local v52    # "attached531Outcome":Ljava/lang/String;
    .local v0, "exportError":Ljava/lang/Exception;
    .restart local v2    # "attached530Summary":Ljava/lang/String;
    .restart local v8    # "attached531Reason":Ljava/lang/String;
    .local v13, "initialUnits403":[I
    .restart local v16    # "attached531Outcome":Ljava/lang/String;
    .restart local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .restart local v72    # "attached530Status":Ljava/lang/String;
    :goto_3e
    :try_start_3b
    const-string v1, "Razor read-only evidence export failed"

    invoke-static {v11, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1966
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nRazor evidence export FAILED: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    move-object/from16 v17, v15

    move-object v15, v7

    .line 1968
    .end local v0    # "exportError":Ljava/lang/Exception;
    .local v15, "evidenceMessage":Ljava/lang/String;
    .local v17, "shareZip":Ljava/io/File;
    :goto_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1969
    .local v7, "evidenceStatus":Ljava/lang/String;
    move-object/from16 v6, v17

    .line 1970
    .local v6, "readyShareZip":Ljava/io/File;
    new-instance v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda6;
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3b} :catch_55
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_3b} :catch_54
    .catch Ljava/lang/LinkageError; {:try_start_3b .. :try_end_3b} :catch_51

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    move-object/from16 v18, v2

    move-object/from16 v5, v62

    move/from16 v2, p1

    .end local v2    # "attached530Summary":Ljava/lang/String;
    .end local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .restart local v5    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .local v18, "attached530Summary":Ljava/lang/String;
    :try_start_3c
    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda6;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;ILcom/ahsim/demulation/RazorTerrainVisualSource$Audit;Lcom/ahsim/demulation/RazorNativeWorldSession$Status;Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;Ljava/io/File;Ljava/lang/String;)V

    .end local v5    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .restart local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    invoke-virtual {v1, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3c} :catch_58
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_3c} :catch_57
    .catch Ljava/lang/LinkageError; {:try_start_3c .. :try_end_3c} :catch_56

    .line 2014
    .end local v4    # "result":Lcom/ahsim/demulation/RazorNativeWorldSession$Status;
    .end local v6    # "readyShareZip":Ljava/io/File;
    .end local v7    # "evidenceStatus":Ljava/lang/String;
    .end local v8    # "attached531Reason":Ljava/lang/String;
    .end local v12    # "attached530":[I
    .end local v13    # "initialUnits403":[I
    .end local v14    # "firstUnitIdentity":[I
    .end local v15    # "evidenceMessage":Ljava/lang/String;
    .end local v16    # "attached531Outcome":Ljava/lang/String;
    .end local v17    # "shareZip":Ljava/io/File;
    .end local v18    # "attached530Summary":Ljava/lang/String;
    .end local v23    # "shadow405":[I
    .end local v26    # "attached530Evidence":[I
    .end local v32    # "attached541Evidence":[I
    .end local v38    # "attached533Evidence":[I
    .end local v44    # "attached535Evidence":[I
    .end local v45    # "attached534Evidence":[I
    .end local v57    # "attached538Evidence":[I
    .end local v58    # "attached536Evidence":[I
    .end local v62    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .end local v72    # "attached530Status":Ljava/lang/String;
    goto :goto_42

    .line 1999
    :catch_54
    move-exception v0

    goto :goto_3b

    :catch_55
    move-exception v0

    goto :goto_3b

    :catch_56
    move-exception v0

    goto :goto_40

    :catch_57
    move-exception v0

    goto :goto_40

    :catch_58
    move-exception v0

    .line 2000
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_40
    iget-object v3, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    if-eqz v3, :cond_29

    .line 2001
    iget-object v3, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorNativeWorldSession;->close()V

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    .line 2003
    :cond_29
    const-string v3, "Razor retained world rejected"

    invoke-static {v11, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2004
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2a

    .line 2005
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    goto :goto_41

    :cond_2a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 2006
    .local v3, "message":Ljava/lang/String;
    :goto_41
    new-instance v4, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda7;

    invoke-direct {v4, v1, v2, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda7;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;ILjava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2015
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v3    # "message":Ljava/lang/String;
    :goto_42
    return-void

    .line 1678
    :cond_2b
    :goto_43
    return-void
.end method

.method private synthetic lambda$requestConstruction571$52(IIILjava/lang/String;Lcom/ahsim/demulation/RazorConstruction571;ILcom/ahsim/demulation/RazorRefinery570;Lcom/ahsim/demulation/RazorDynamicObjects569;)V
    .locals 4
    .param p1, "generation"    # I
    .param p2, "house"    # I
    .param p3, "mission"    # I
    .param p4, "error"    # Ljava/lang/String;
    .param p5, "finalNext"    # Lcom/ahsim/demulation/RazorConstruction571;
    .param p6, "action"    # I
    .param p7, "finalRefinery"    # Lcom/ahsim/demulation/RazorRefinery570;
    .param p8, "finalRoster"    # Lcom/ahsim/demulation/RazorDynamicObjects569;

    .line 2159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapActionPending559:Z

    .line 2160
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    .line 2161
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne p2, v0, :cond_8

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->missionSpinner:Landroid/widget/Spinner;

    .line 2162
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-eq p3, v0, :cond_0

    goto :goto_2

    .line 2163
    :cond_0
    if-eqz p4, :cond_1

    .line 2164
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapHint559:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->razor_preview_error:I

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2166
    :cond_1
    iput-object p5, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->construction571:Lcom/ahsim/demulation/RazorConstruction571;

    .line 2167
    const/4 v0, 0x2

    if-eqz p6, :cond_2

    iget v2, p5, Lcom/ahsim/demulation/RazorConstruction571;->phase:I

    if-eq v2, v0, :cond_2

    .line 2168
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->finance576:Lcom/ahsim/demulation/RazorFinanceLive576;

    .line 2169
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->economyFacts573:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    iget-object v2, v2, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    if-eqz v2, :cond_2

    .line 2172
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->economyFacts573:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/R$string;->razor_economy573_wait:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2175
    :cond_2
    iput-object p7, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->refinery570:Lcom/ahsim/demulation/RazorRefinery570;

    .line 2176
    iput-object p8, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dynamicObjects569:Lcom/ahsim/demulation/RazorDynamicObjects569;

    .line 2177
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapHint559:Landroid/widget/TextView;

    if-ne p6, v1, :cond_3

    sget v0, Lcom/ahsim/demulation/R$string;->razor_order571_choose:I

    goto :goto_0

    .line 2178
    :cond_3
    if-ne p6, v0, :cond_4

    sget v0, Lcom/ahsim/demulation/R$string;->razor_order571_reserved:I

    goto :goto_0

    .line 2179
    :cond_4
    const/4 v0, 0x3

    if-ne p6, v0, :cond_5

    sget v0, Lcom/ahsim/demulation/R$string;->razor_order571_pending:I

    goto :goto_0

    .line 2180
    :cond_5
    const/4 v0, 0x4

    if-ne p6, v0, :cond_6

    sget v0, Lcom/ahsim/demulation/R$string;->razor_order571_delivered:I

    goto :goto_0

    .line 2181
    :cond_6
    sget v0, Lcom/ahsim/demulation/R$string;->razor_order571_cancelled:I

    .line 2177
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2182
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapView:Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapView:Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->invalidate()V

    .line 2184
    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateMapActions559()V

    .line 2185
    return-void

    .line 2162
    :cond_8
    :goto_2
    return-void
.end method

.method private synthetic lambda$requestConstruction571$53(IIIIII)V
    .locals 16
    .param p1, "generation"    # I
    .param p2, "house"    # I
    .param p3, "mission"    # I
    .param p4, "action"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I

    .line 2138
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 2139
    .local v2, "next":Lcom/ahsim/demulation/RazorConstruction571;
    const/4 v3, 0x0

    .line 2140
    .local v3, "refinery":Lcom/ahsim/demulation/RazorRefinery570;
    const/4 v4, 0x0

    .line 2141
    .local v4, "roster":Lcom/ahsim/demulation/RazorDynamicObjects569;
    const/4 v5, 0x0

    .line 2143
    .local v5, "failure":Ljava/lang/String;
    :try_start_0
    iget-boolean v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_3

    iget v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_c

    move/from16 v6, p1

    if-ne v6, v0, :cond_4

    :try_start_1
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    .line 2144
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    iget v0, v0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->house:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_6

    move/from16 v7, p2

    if-ne v0, v7, :cond_1

    :try_start_2
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    iget v0, v0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->mission:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_3

    move/from16 v8, p3

    if-ne v0, v8, :cond_2

    .line 2147
    :try_start_3
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_0

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    :try_start_4
    invoke-virtual {v0, v9, v10, v11}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->construction571(III)Lcom/ahsim/demulation/RazorConstruction571;

    move-result-object v0

    move-object v2, v0

    .line 2148
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    const/4 v12, 0x0

    invoke-virtual {v0, v12, v12, v12}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->refinery570(III)Lcom/ahsim/demulation/RazorRefinery570;

    move-result-object v0

    move-object v3, v0

    .line 2149
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->mapSnapshot559()Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    move-result-object v0

    .line 2150
    .local v0, "frame":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    iget-object v12, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v12, v0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->dynamicObjects569(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;)Lcom/ahsim/demulation/RazorDynamicObjects569;

    move-result-object v12

    move-object v4, v12

    .line 2153
    .end local v0    # "frame":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    goto/16 :goto_7

    .line 2151
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_3

    .line 2144
    :cond_0
    move/from16 v7, p2

    :cond_1
    move/from16 v8, p3

    :cond_2
    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    goto :goto_0

    .line 2151
    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_2

    .line 2143
    :cond_3
    move/from16 v6, p1

    :cond_4
    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    .line 2146
    :goto_0
    new-instance v0, Ljava/io/IOException;

    const-string v12, "Razor session changed during construction test"

    invoke-direct {v0, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "next":Lcom/ahsim/demulation/RazorConstruction571;
    .end local v3    # "refinery":Lcom/ahsim/demulation/RazorRefinery570;
    .end local v4    # "roster":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .end local v5    # "failure":Ljava/lang/String;
    .end local p1    # "generation":I
    .end local p2    # "house":I
    .end local p3    # "mission":I
    .end local p4    # "action":I
    .end local p5    # "x":I
    .end local p6    # "y":I
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_4} :catch_9

    .line 2151
    .restart local v2    # "next":Lcom/ahsim/demulation/RazorConstruction571;
    .restart local v3    # "refinery":Lcom/ahsim/demulation/RazorRefinery570;
    .restart local v4    # "roster":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .restart local v5    # "failure":Ljava/lang/String;
    .restart local p1    # "generation":I
    .restart local p2    # "house":I
    .restart local p3    # "mission":I
    .restart local p4    # "action":I
    .restart local p5    # "x":I
    .restart local p6    # "y":I
    :catch_9
    move-exception v0

    goto :goto_5

    :catch_a
    move-exception v0

    goto :goto_5

    :catch_b
    move-exception v0

    goto :goto_5

    :catch_c
    move-exception v0

    goto :goto_1

    :catch_d
    move-exception v0

    goto :goto_1

    :catch_e
    move-exception v0

    :goto_1
    move/from16 v6, p1

    :goto_2
    move/from16 v7, p2

    :goto_3
    move/from16 v8, p3

    :goto_4
    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    .line 2152
    .local v0, "e":Ljava/lang/Throwable;
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    goto :goto_6

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    :goto_6
    move-object v5, v12

    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    .line 2154
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "next":Lcom/ahsim/demulation/RazorConstruction571;
    .end local v3    # "refinery":Lcom/ahsim/demulation/RazorRefinery570;
    .end local v4    # "roster":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .end local v5    # "failure":Ljava/lang/String;
    .local v12, "next":Lcom/ahsim/demulation/RazorConstruction571;
    .local v13, "refinery":Lcom/ahsim/demulation/RazorRefinery570;
    .local v14, "roster":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .local v15, "failure":Ljava/lang/String;
    :goto_7
    move-object v6, v12

    .line 2155
    .local v6, "finalNext":Lcom/ahsim/demulation/RazorConstruction571;
    move-object v8, v13

    .line 2156
    .local v8, "finalRefinery":Lcom/ahsim/demulation/RazorRefinery570;
    move-object v9, v14

    .line 2157
    .local v9, "finalRoster":Lcom/ahsim/demulation/RazorDynamicObjects569;
    move-object v5, v15

    .line 2158
    .local v5, "error":Ljava/lang/String;
    new-instance v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda67;

    move/from16 v2, p1

    move/from16 v4, p3

    move v3, v7

    move/from16 v7, p4

    invoke-direct/range {v0 .. v9}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda67;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;IIILjava/lang/String;Lcom/ahsim/demulation/RazorConstruction571;ILcom/ahsim/demulation/RazorRefinery570;Lcom/ahsim/demulation/RazorDynamicObjects569;)V

    invoke-virtual {v1, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2186
    return-void
.end method

.method private synthetic lambda$requestDeployMcv726$23(ILcom/ahsim/demulation/RazorCampaignNativeSession;[ILcom/ahsim/demulation/RazorCampaignMapSnapshot559;IZLjava/lang/String;)V
    .locals 6
    .param p1, "generation"    # I
    .param p2, "session"    # Lcom/ahsim/demulation/RazorCampaignNativeSession;
    .param p3, "result"    # [I
    .param p4, "newFrame"    # Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .param p5, "ordinal"    # I
    .param p6, "runningAtDeploy729"    # Z
    .param p7, "failure"    # Ljava/lang/String;

    .line 687
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapActionPending559:Z

    .line 688
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    if-ne v0, p1, :cond_9

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    if-eq v0, p2, :cond_0

    goto/16 :goto_5

    .line 690
    :cond_0
    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    .line 691
    iput-object p4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    .line 692
    iput p5, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->deployedSource726:I

    .line 693
    const/4 v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    .line 694
    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedEnemy674:I

    .line 695
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->routeWitness664:Lcom/ahsim/demulation/RazorCoreRoute664;

    .line 696
    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedBuilding674:I

    .line 697
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    iget-object v1, p4, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->buildings:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;

    array-length v1, v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    if-ge v0, v1, :cond_2

    .line 698
    iget-object v1, p4, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->buildings:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;

    aget-object v1, v1, v0

    .line 699
    .local v1, "b":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    iget v4, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->owner:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget v4, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->type:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    iget v4, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->x:I

    aget v5, p3, v3

    if-ne v4, v5, :cond_1

    iget v4, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->y:I

    aget v5, p3, v2

    if-ne v4, v5, :cond_1

    .line 700
    iget v4, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->ordinal:I

    iput v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedBuilding674:I

    goto :goto_1

    .line 697
    .end local v1    # "b":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 703
    .end local v0    # "n":I
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapHint559:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapHint559:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Construction Yard \u0441\u043e\u0437\u0434\u0430\u043d \u00b7 MCV \u0443\u0431\u0440\u0430\u043d \u00b7 BUILD.EMC \u0430\u043a\u0442\u0438\u0432\u0435\u043d"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 705
    if-eqz p6, :cond_3

    const-string v4, " \u00b7 \u0446\u0438\u043a\u043b \u043d\u0435 \u043f\u0440\u0435\u0440\u044b\u0432\u0430\u043b\u0441\u044f"

    goto :goto_2

    :cond_3
    const-string v4, " \u00b7 \u043f\u0430\u0443\u0437\u0430 \u0441\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u0430"

    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 703
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    :cond_4
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->objectDetails:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedBuilding674:I

    if-ltz v0, :cond_5

    .line 707
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->objectDetails:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Construction Yard \u00b7 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v3, p3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    :cond_5
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapView:Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapView:Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->invalidate()V

    goto :goto_4

    .line 709
    :cond_6
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapHint559:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapHint559:Landroid/widget/TextView;

    .line 710
    if-eqz p7, :cond_7

    move-object v1, p7

    goto :goto_3

    :cond_7
    const-string v1, "MCV: \u043d\u0443\u0436\u0435\u043d \u0441\u0432\u043e\u0431\u043e\u0434\u043d\u044b\u0439 \u043a\u0430\u043c\u0435\u043d\u0438\u0441\u0442\u044b\u0439 \u0443\u0447\u0430\u0441\u0442\u043e\u043a 2\u00d72 \u043a\u043b\u0435\u0442\u043a\u0438 (\u043f\u0440\u0435\u0434\u0432\u0430\u0440\u0438\u0442\u0435\u043b\u044c\u043d\u043e\u0435 \u043f\u0440\u0430\u0432\u0438\u043b\u043e)"

    .line 709
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    :cond_8
    :goto_4
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateGameBar674()V

    .line 715
    return-void

    .line 689
    :cond_9
    :goto_5
    return-void
.end method

.method private synthetic lambda$requestDeployMcv726$24(Lcom/ahsim/demulation/RazorCampaignNativeSession;IIZ)V
    .locals 12
    .param p1, "session"    # Lcom/ahsim/demulation/RazorCampaignNativeSession;
    .param p2, "ordinal"    # I
    .param p3, "generation"    # I
    .param p4, "runningAtDeploy729"    # Z

    .line 674
    const/4 v2, 0x0

    .local v2, "report":[I
    const/4 v4, 0x0

    .line 675
    .local v4, "error":Ljava/lang/String;
    const/4 v5, 0x0

    .line 677
    .local v5, "refreshed":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    if-ne v0, p1, :cond_0

    invoke-virtual {p1}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    invoke-virtual/range {p1 .. p2}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->deployMcv726(I)[I

    move-result-object v0

    move-object v2, v0

    .line 680
    invoke-virtual {p1}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->mapSnapshot559()Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    move-result-object v0

    move-object v5, v0

    .line 683
    move-object v9, v2

    move-object v10, v4

    move-object v11, v5

    goto :goto_2

    .line 678
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Razor session unavailable"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "report":[I
    .end local v4    # "error":Ljava/lang/String;
    .end local v5    # "refreshed":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .end local p1    # "session":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    .end local p2    # "ordinal":I
    .end local p3    # "generation":I
    .end local p4    # "runningAtDeploy729":Z
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    .restart local v2    # "report":[I
    .restart local v4    # "error":Ljava/lang/String;
    .restart local v5    # "refreshed":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .restart local p1    # "session":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    .restart local p2    # "ordinal":I
    .restart local p3    # "generation":I
    .restart local p4    # "runningAtDeploy729":Z
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 682
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v6, "MCV deploy rejected"

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    :goto_1
    move-object v4, v6

    move-object v9, v2

    move-object v10, v4

    move-object v11, v5

    .line 684
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v2    # "report":[I
    .end local v4    # "error":Ljava/lang/String;
    .end local v5    # "refreshed":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .local v9, "report":[I
    .local v10, "error":Ljava/lang/String;
    .local v11, "refreshed":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    :goto_2
    move-object v4, v9

    .local v4, "result":[I
    move-object v8, v10

    .line 685
    .local v8, "failure":Ljava/lang/String;
    move-object v5, v11

    .line 686
    .local v5, "newFrame":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    new-instance v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda60;

    move-object v1, p0

    move-object v3, p1

    move v6, p2

    move v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda60;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;ILcom/ahsim/demulation/RazorCampaignNativeSession;[ILcom/ahsim/demulation/RazorCampaignMapSnapshot559;IZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 716
    return-void
.end method

.method private synthetic lambda$requestFinance576$54(IIILjava/lang/String;Lcom/ahsim/demulation/RazorFinanceLive576;)V
    .locals 6
    .param p1, "generation"    # I
    .param p2, "house"    # I
    .param p3, "mission"    # I
    .param p4, "err"    # Ljava/lang/String;
    .param p5, "next"    # Lcom/ahsim/demulation/RazorFinanceLive576;

    .line 2229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapActionPending559:Z

    .line 2230
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    .line 2231
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->missionSpinner:Landroid/widget/Spinner;

    .line 2232
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-eq p3, v0, :cond_0

    goto/16 :goto_1

    .line 2233
    :cond_0
    if-eqz p4, :cond_1

    .line 2234
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapHint559:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->razor_preview_error:I

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2236
    :cond_1
    iput-object p5, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->finance576:Lcom/ahsim/demulation/RazorFinanceLive576;

    .line 2237
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->economyFacts573:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/ahsim/demulation/R$string;->razor_finance576_state:I

    iget v3, p5, Lcom/ahsim/demulation/RazorFinanceLive576;->credits:I

    .line 2238
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p5, Lcom/ahsim/demulation/RazorFinanceLive576;->paid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p5, Lcom/ahsim/demulation/RazorFinanceLive576;->payments:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 2237
    invoke-virtual {p0, v2, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2239
    invoke-direct {p0, p5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->expectedProgress579(Lcom/ahsim/demulation/RazorFinanceLive576;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2237
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2240
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapHint559:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/ahsim/demulation/R$string;->razor_finance576_state:I

    iget v3, p5, Lcom/ahsim/demulation/RazorFinanceLive576;->credits:I

    .line 2241
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p5, Lcom/ahsim/demulation/RazorFinanceLive576;->paid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p5, Lcom/ahsim/demulation/RazorFinanceLive576;->payments:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 2240
    invoke-virtual {p0, v2, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2242
    invoke-direct {p0, p5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->expectedProgress579(Lcom/ahsim/demulation/RazorFinanceLive576;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2240
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2244
    :goto_0
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateMapActions559()V

    .line 2245
    return-void

    .line 2232
    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$requestFinance576$55(IIII)V
    .locals 10
    .param p1, "generation"    # I
    .param p2, "house"    # I
    .param p3, "mission"    # I
    .param p4, "action"    # I

    .line 2214
    const/4 v1, 0x0

    .line 2215
    .local v1, "result":Lcom/ahsim/demulation/RazorFinanceLive576;
    const/4 v2, 0x0

    .line 2217
    .local v2, "failure":Ljava/lang/String;
    :try_start_0
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    .line 2218
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    iget v0, v0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->house:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    iget v0, v0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->mission:I

    if-ne v0, p3, :cond_0

    .line 2221
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    iget-object v3, v3, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    .line 2222
    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->verifiedCampaignBundle559()Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    move-result-object v3

    .line 2221
    invoke-virtual {v0, v3, p4}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->financeLive576(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;I)Lcom/ahsim/demulation/RazorFinanceLive576;

    move-result-object v0

    move-object v1, v0

    .line 2225
    goto :goto_2

    .line 2220
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Razor finance session changed"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "result":Lcom/ahsim/demulation/RazorFinanceLive576;
    .end local v2    # "failure":Ljava/lang/String;
    .end local p1    # "generation":I
    .end local p2    # "house":I
    .end local p3    # "mission":I
    .end local p4    # "action":I
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2223
    .restart local v1    # "result":Lcom/ahsim/demulation/RazorFinanceLive576;
    .restart local v2    # "failure":Ljava/lang/String;
    .restart local p1    # "generation":I
    .restart local p2    # "house":I
    .restart local p3    # "mission":I
    .restart local p4    # "action":I
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 2224
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v2, v3

    .line 2226
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_2
    move-object v9, v1

    .line 2227
    .local v9, "next":Lcom/ahsim/demulation/RazorFinanceLive576;
    move-object v8, v2

    .line 2228
    .local v8, "err":Ljava/lang/String;
    new-instance v3, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda71;

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    .end local p1    # "generation":I
    .end local p2    # "house":I
    .end local p3    # "mission":I
    .local v5, "generation":I
    .local v6, "house":I
    .local v7, "mission":I
    invoke-direct/range {v3 .. v9}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda71;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;IIILjava/lang/String;Lcom/ahsim/demulation/RazorFinanceLive576;)V

    invoke-virtual {p0, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2246
    return-void
.end method

.method private synthetic lambda$requestFrame$37(ILandroid/graphics/Bitmap;Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;ZLcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;[ILcom/ahsim/demulation/RazorScenarioEconomy573;Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;Lcom/ahsim/demulation/RazorDynamicObjects569;Lcom/ahsim/demulation/RazorRefinery570;Lcom/ahsim/demulation/RazorConstruction571;Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;II[I)V
    .locals 17
    .param p1, "generation"    # I
    .param p2, "next"    # Landroid/graphics/Bitmap;
    .param p3, "nextNav"    # Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;
    .param p4, "view"    # Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;
    .param p5, "selectNewMission"    # Z
    .param p6, "nextObjects"    # Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    .param p7, "mapData559"    # Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .param p8, "fractionalData565"    # [I
    .param p9, "verifiedEconomy573"    # Lcom/ahsim/demulation/RazorScenarioEconomy573;
    .param p10, "coreData663"    # Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .param p11, "dynamicData569"    # Lcom/ahsim/demulation/RazorDynamicObjects569;
    .param p12, "refineryData570"    # Lcom/ahsim/demulation/RazorRefinery570;
    .param p13, "constructionData571"    # Lcom/ahsim/demulation/RazorConstruction571;
    .param p14, "verifiedRefinery572"    # Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;
    .param p15, "house"    # I
    .param p16, "mission"    # I
    .param p17, "bootBirthEvidence567"    # [I

    .line 1411
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p9

    move-object/from16 v6, p11

    move-object/from16 v7, p14

    move/from16 v8, p15

    iget-boolean v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v9, :cond_1c

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->isFinishing()Z

    move-result v9

    if-nez v9, :cond_1c

    iget v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    move/from16 v10, p1

    if-eq v10, v9, :cond_0

    move/from16 v12, p16

    goto/16 :goto_d

    .line 1415
    :cond_0
    iget-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->canvasBitmap:Landroid/graphics/Bitmap;

    .line 1416
    .local v9, "old":Landroid/graphics/Bitmap;
    iput-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->canvasBitmap:Landroid/graphics/Bitmap;

    .line 1417
    move-object/from16 v11, p3

    iput-object v11, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    .line 1418
    iget v12, v2, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->x:I

    iput v12, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->terrainOriginX679:I

    iget v12, v2, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->y:I

    iput v12, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->terrainOriginY679:I

    .line 1419
    iget v12, v2, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->tilesWide:I

    iput v12, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->terrainCols679:I

    iget v12, v2, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->tilesHigh:I

    iput v12, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->terrainRows679:I

    .line 1420
    const/4 v12, 0x0

    iput-boolean v12, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->panFrameRequested679:Z

    .line 1421
    if-nez p5, :cond_2

    iget-boolean v13, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->pendingSelectionFocus749:Z

    if-eqz v13, :cond_1

    goto :goto_0

    .line 1424
    :cond_1
    iget-object v13, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->smoothCamera679:Lcom/ahsim/demulation/RazorSmoothCamera679;

    invoke-virtual {v11}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v14

    invoke-virtual {v11}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Lcom/ahsim/demulation/RazorSmoothCamera679;->ensure(II)V

    goto :goto_1

    .line 1422
    :cond_2
    :goto_0
    iget-object v13, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->smoothCamera679:Lcom/ahsim/demulation/RazorSmoothCamera679;

    invoke-virtual {v11}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v14

    invoke-virtual {v11}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Lcom/ahsim/demulation/RazorSmoothCamera679;->reset(II)V

    .line 1423
    iput-boolean v12, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->pendingSelectionFocus749:Z

    .line 1425
    :goto_1
    iput-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->objectFrame:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;

    .line 1426
    iput-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    move-object/from16 v13, p8

    iput-object v13, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignSubtiles565:[I

    .line 1427
    if-nez v5, :cond_3

    const/4 v15, -0x1

    goto :goto_2

    .line 1428
    :cond_3
    iget v15, v5, Lcom/ahsim/demulation/RazorScenarioEconomy573;->playerCredits:I

    :goto_2
    iput v15, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->verifiedStartingCredits743:I

    .line 1429
    const/4 v15, 0x0

    iput-object v15, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->ownerHud743:[I

    .line 1430
    move-object/from16 v15, p10

    iput-object v15, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->coreSnapshot663:Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;

    .line 1431
    iput-object v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dynamicObjects569:Lcom/ahsim/demulation/RazorDynamicObjects569;

    .line 1432
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->refinery570:Lcom/ahsim/demulation/RazorRefinery570;

    .line 1433
    move-object/from16 v14, p13

    iput-object v14, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->construction571:Lcom/ahsim/demulation/RazorConstruction571;

    .line 1434
    iput-object v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->refineryFacts572:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    .line 1435
    iget-object v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->economyFacts573:Landroid/widget/TextView;

    if-eqz v10, :cond_4

    iget-object v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->finance576:Lcom/ahsim/demulation/RazorFinanceLive576;

    if-eqz v10, :cond_4

    .line 1436
    iget-object v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->economyFacts573:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget v12, Lcom/ahsim/demulation/R$string;->razor_finance576_state:I

    iget-object v13, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->finance576:Lcom/ahsim/demulation/RazorFinanceLive576;

    iget v13, v13, Lcom/ahsim/demulation/RazorFinanceLive576;->credits:I

    .line 1437
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->finance576:Lcom/ahsim/demulation/RazorFinanceLive576;

    iget v14, v14, Lcom/ahsim/demulation/RazorFinanceLive576;->paid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v15, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->finance576:Lcom/ahsim/demulation/RazorFinanceLive576;

    iget v15, v15, Lcom/ahsim/demulation/RazorFinanceLive576;->payments:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v13, v14, v15}, [Ljava/lang/Object;

    move-result-object v13

    .line 1436
    invoke-virtual {v0, v12, v13}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->finance576:Lcom/ahsim/demulation/RazorFinanceLive576;

    .line 1438
    invoke-direct {v0, v12}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->expectedProgress579(Lcom/ahsim/demulation/RazorFinanceLive576;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1436
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1439
    :cond_4
    iget-object v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->economyFacts573:Landroid/widget/TextView;

    if-eqz v10, :cond_6

    if-eqz v5, :cond_6

    .line 1440
    iget-object v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->economyFacts573:Landroid/widget/TextView;

    iget v11, v5, Lcom/ahsim/demulation/RazorScenarioEconomy573;->playerCredits:I

    if-ltz v11, :cond_5

    .line 1441
    sget v11, Lcom/ahsim/demulation/R$string;->razor_economy573_player:I

    iget v12, v5, Lcom/ahsim/demulation/RazorScenarioEconomy573;->playerCredits:I

    .line 1442
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v13, v5, Lcom/ahsim/demulation/RazorScenarioEconomy573;->playerSourceSection:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v12, v13}, [Ljava/lang/Object;

    move-result-object v12

    .line 1441
    invoke-virtual {v0, v11, v12}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 1443
    :cond_5
    sget v11, Lcom/ahsim/demulation/R$string;->razor_economy573_no_player:I

    invoke-virtual {v0, v11}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1440
    :goto_3
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1445
    :cond_6
    :goto_4
    iget-object v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildingFacts572:Landroid/widget/TextView;

    if-eqz v10, :cond_7

    if-eqz v7, :cond_7

    .line 1446
    iget-object v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildingFacts572:Landroid/widget/TextView;

    sget v11, Lcom/ahsim/demulation/R$string;->razor_stats572_refinery:I

    iget v12, v7, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->cost:I

    .line 1447
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v13, v7, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->maxHp:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v14, v7, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->productionWord:I

    .line 1448
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v15, v7, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->width:I

    .line 1449
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget v5, v7, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->height:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v12, v13, v14, v15, v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 1446
    invoke-virtual {v0, v11, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1450
    :cond_7
    if-eqz v4, :cond_8

    iget v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    iget-object v10, v4, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v10, v10

    if-lt v5, v10, :cond_8

    .line 1451
    const/4 v5, -0x1

    iput v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    .line 1452
    :cond_8
    invoke-direct {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateMapActions559()V

    .line 1453
    invoke-direct {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateGameBar674()V

    .line 1454
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameButton634:Landroid/widget/Button;

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-eqz v5, :cond_b

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameButton634:Landroid/widget/Button;

    iget-object v12, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    if-eqz v12, :cond_9

    if-ne v8, v11, :cond_9

    move/from16 v12, p16

    if-ne v12, v10, :cond_a

    iget-boolean v13, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameArming634:Z

    if-nez v13, :cond_a

    move v13, v11

    goto :goto_5

    :cond_9
    move/from16 v12, p16

    :cond_a
    const/4 v13, 0x0

    :goto_5
    invoke-virtual {v5, v13}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_6

    :cond_b
    move/from16 v12, p16

    .line 1457
    :goto_6
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapView:Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;

    invoke-virtual {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->invalidate()V

    .line 1458
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->objectDetails:Landroid/widget/TextView;

    if-eqz v4, :cond_c

    iget v13, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    if-ltz v13, :cond_c

    .line 1459
    iget-object v13, v4, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    iget v14, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    aget-object v13, v13, v14

    invoke-direct {v0, v13}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitLabel566(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;)Ljava/lang/String;

    move-result-object v13

    move/from16 v16, v11

    goto :goto_7

    .line 1460
    :cond_c
    if-eqz v4, :cond_d

    .line 1461
    sget v13, Lcom/ahsim/demulation/R$string;->razor_map559_summary:I

    iget-object v14, v4, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v14, v14

    .line 1462
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v15, v4, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->buildings:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;

    array-length v15, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v16, v11

    iget v11, v4, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->steps:I

    .line 1463
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v10, v4, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->gameTicks:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v14, v15, v11, v10}, [Ljava/lang/Object;

    move-result-object v10

    .line 1461
    invoke-virtual {v0, v13, v10}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto :goto_7

    .line 1464
    :cond_d
    move/from16 v16, v11

    if-eqz v3, :cond_e

    .line 1465
    sget v10, Lcom/ahsim/demulation/R$string;->razor_preview_object_summary:I

    iget v11, v3, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->sourceUnits:I

    .line 1466
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v13, v3, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->sourceBuildings:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v14, v3, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->sourceTerrainMarkers:I

    .line 1467
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->count()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v11, v13, v14, v15}, [Ljava/lang/Object;

    move-result-object v11

    .line 1465
    invoke-virtual {v0, v10, v11}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto :goto_7

    .line 1468
    :cond_e
    sget v10, Lcom/ahsim/demulation/R$string;->razor_preview_object_hint:I

    invoke-virtual {v0, v10}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1458
    :goto_7
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1469
    const-string v5, "\n"

    if-eqz v4, :cond_f

    if-eqz p17, :cond_f

    .line 1470
    iget-object v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->objectDetails:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v13, Lcom/ahsim/demulation/R$string;->razor_birth567_summary:I

    aget v14, p17, v16

    .line 1471
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    .line 1470
    invoke-virtual {v0, v13, v14}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 1472
    :cond_f
    if-eqz v6, :cond_10

    iget-object v10, v6, Lcom/ahsim/demulation/RazorDynamicObjects569;->entries:[Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;

    array-length v10, v10

    if-eqz v10, :cond_10

    .line 1473
    iget-object v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->objectDetails:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v11, Lcom/ahsim/demulation/R$string;->razor_demo569_counts:I

    iget v13, v6, Lcom/ahsim/demulation/RazorDynamicObjects569;->pending:I

    .line 1474
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v14, v6, Lcom/ahsim/demulation/RazorDynamicObjects569;->placed:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v13, v14}, [Ljava/lang/Object;

    move-result-object v13

    .line 1473
    invoke-virtual {v0, v11, v13}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 1475
    :cond_10
    if-eqz v9, :cond_11

    if-eq v9, v1, :cond_11

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 1476
    :cond_11
    iget v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->renderSuccess749:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->renderSuccess749:I

    .line 1477
    const-string v5, ""

    iput-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastFrameFailure749:Ljava/lang/String;

    .line 1478
    iget v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->renderSuccess749:I

    const/4 v10, 0x3

    if-le v5, v10, :cond_12

    iget v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->renderSuccess749:I

    rem-int/lit8 v5, v5, 0x14

    if-nez v5, :cond_13

    .line 1479
    :cond_12
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runtimeDiagnostics749:Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bmp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1480
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " terrain="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v13, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->terrainCols679:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->terrainRows679:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1479
    const-string v11, "FRAME_OK"

    invoke-virtual {v5, v11, v10}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->event(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    :cond_13
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v10, 0x4

    invoke-virtual {v5, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1483
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->status:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget v11, Lcom/ahsim/demulation/R$string;->razor_preview_rendered:I

    iget-object v13, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    iget-object v13, v13, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    .line 1484
    invoke-virtual {v13}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romVariant()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1485
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    iget-object v1, v1, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->sha256:Ljava/lang/String;

    const/16 v3, 0xc

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v13, v14, v15, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 1483
    invoke-virtual {v0, v11, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u00b7 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1486
    iget v3, v2, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->nativeFrameSequence:I

    if-lez v3, :cond_14

    .line 1487
    sget v3, Lcom/ahsim/demulation/R$string;->razor_preview_frame_number:I

    iget v6, v2, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->nativeFrameSequence:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 1488
    :cond_14
    sget v3, Lcom/ahsim/demulation/R$string;->razor_preview_static_frame:I

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1483
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1489
    invoke-direct {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateCoordinates()V

    .line 1490
    iget-boolean v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v1, :cond_19

    if-eqz p5, :cond_19

    if-eqz v4, :cond_19

    iget-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    if-eqz v1, :cond_19

    iget-object v1, v4, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v1, v1

    if-lez v1, :cond_19

    .line 1499
    const/4 v1, 0x0

    .line 1500
    .local v1, "focus":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    iget-object v3, v4, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v5, v3

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v5, :cond_16

    aget-object v10, v3, v6

    .line 1501
    .local v10, "unit":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    iget v11, v10, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->owner:I

    if-ne v11, v8, :cond_15

    iget v11, v10, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->x:I

    iget-object v13, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v13}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->minX()I

    move-result v13

    if-lt v11, v13, :cond_15

    iget v11, v10, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->y:I

    iget-object v13, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    .line 1502
    invoke-virtual {v13}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->minY()I

    move-result v13

    if-lt v11, v13, :cond_15

    iget v11, v10, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->x:I

    iget-object v13, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v13}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->maxX()I

    move-result v13

    if-ge v11, v13, :cond_15

    iget v11, v10, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->y:I

    iget-object v13, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    .line 1503
    invoke-virtual {v13}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->maxY()I

    move-result v13

    if-ge v11, v13, :cond_15

    move-object v1, v10

    goto :goto_a

    .line 1500
    .end local v10    # "unit":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 1505
    :cond_16
    :goto_a
    if-nez v1, :cond_18

    iget-object v3, v4, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v5, v3

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v5, :cond_18

    aget-object v10, v3, v6

    .line 1506
    .restart local v10    # "unit":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    iget v11, v10, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->x:I

    iget-object v13, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v13}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->minX()I

    move-result v13

    if-lt v11, v13, :cond_17

    iget v11, v10, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->y:I

    iget-object v13, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v13}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->minY()I

    move-result v13

    if-lt v11, v13, :cond_17

    iget v11, v10, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->x:I

    iget-object v13, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    .line 1507
    invoke-virtual {v13}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->maxX()I

    move-result v13

    if-ge v11, v13, :cond_17

    iget v11, v10, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->y:I

    iget-object v13, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v13}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->maxY()I

    move-result v13

    if-ge v11, v13, :cond_17

    .line 1508
    move-object v1, v10

    goto :goto_c

    .line 1505
    .end local v10    # "unit":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    :cond_17
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 1511
    :cond_18
    :goto_c
    if-eqz v1, :cond_19

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    iget v5, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->x:I

    iget v6, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->y:I

    invoke-virtual {v3, v5, v6}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->focus(II)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1512
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->smoothCamera679:Lcom/ahsim/demulation/RazorSmoothCamera679;

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v5

    iget-object v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v6}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/ahsim/demulation/RazorSmoothCamera679;->reset(II)V

    .line 1513
    const/4 v6, 0x0

    invoke-direct {v0, v6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestFrame(Z)V

    .line 1514
    return-void

    .line 1517
    .end local v1    # "focus":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    :cond_19
    iget-boolean v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v1, :cond_1b

    if-eqz v4, :cond_1b

    .line 1518
    iget-object v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameBar674:Landroid/widget/TextView;

    if-nez v1, :cond_1a

    invoke-direct {v0, v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateQuickHud662(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;)V

    .line 1519
    :cond_1a
    invoke-direct {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateGameBar674()V

    .line 1520
    iget-boolean v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->autoStartPending662:Z

    if-eqz v1, :cond_1b

    iget-boolean v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxRunning560:Z

    if-nez v1, :cond_1b

    iget-boolean v1, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxInFlight560:Z

    if-nez v1, :cond_1b

    .line 1522
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->autoStartPending662:Z

    .line 1523
    invoke-direct {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->toggleSandbox560()V

    .line 1526
    :cond_1b
    return-void

    .line 1411
    .end local v9    # "old":Landroid/graphics/Bitmap;
    :cond_1c
    move/from16 v12, p16

    .line 1412
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1413
    return-void
.end method

.method private synthetic lambda$requestFrame$38(ILjava/lang/String;Z)V
    .locals 6
    .param p1, "generation"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "selectNewMission"    # Z

    .line 1532
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 1533
    :cond_0
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->renderFailure749:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->renderFailure749:I

    .line 1534
    iput-object p2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastFrameFailure749:Ljava/lang/String;

    .line 1535
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runtimeDiagnostics749:Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newMission="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " camera="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->smoothCamera679:Lcom/ahsim/demulation/RazorSmoothCamera679;

    iget v2, v2, Lcom/ahsim/demulation/RazorSmoothCamera679;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->smoothCamera679:Lcom/ahsim/demulation/RazorSmoothCamera679;

    iget v2, v2, Lcom/ahsim/demulation/RazorSmoothCamera679;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FRAME_FAILURE"

    invoke-virtual {v0, v2, v1}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->event(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-nez p3, :cond_5

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->canvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->canvasBitmap:Landroid/graphics/Bitmap;

    .line 1542
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1543
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->panFrameRequested679:Z

    .line 1544
    iget-boolean v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->pendingSelectionFocus749:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    if-eqz v2, :cond_1

    .line 1545
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    iget v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->focusOldX749:I

    iget-object v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->focusOldY749:I

    iget-object v5, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    .line 1546
    invoke-virtual {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1545
    invoke-virtual {v2, v3, v4}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->pan(II)Z

    .line 1547
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->smoothCamera679:Lcom/ahsim/demulation/RazorSmoothCamera679;

    iget v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->focusOldX749:I

    iget v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->focusOldY749:I

    invoke-virtual {v2, v3, v4}, Lcom/ahsim/demulation/RazorSmoothCamera679;->reset(II)V

    .line 1548
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->pendingSelectionFocus749:Z

    .line 1549
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runtimeDiagnostics749:Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;

    const-string v2, "FOCUS_ROLLBACK"

    const-string v3, "Retained previous map after failed selection render"

    invoke-virtual {v1, v2, v3}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->event(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    :cond_1
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->progress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1553
    :cond_2
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapHint559:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapHint559:Landroid/widget/TextView;

    const-string v1, "\u041e\u0448\u0438\u0431\u043a\u0430 \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u044f \u043a\u0430\u0440\u0442\u044b (\u2630 \u2192 \u0434\u0438\u0430\u0433\u043d\u043e\u0441\u0442\u0438\u043a\u0430)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1554
    :cond_3
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapView:Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapView:Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->invalidate()V

    .line 1555
    :cond_4
    return-void

    .line 1559
    :cond_5
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->canvasBitmap:Landroid/graphics/Bitmap;

    .line 1560
    .local v2, "old":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->canvasBitmap:Landroid/graphics/Bitmap;

    .line 1561
    iput-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    .line 1562
    iput v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->terrainRows679:I

    iput v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->terrainCols679:I

    .line 1563
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->panFrameRequested679:Z

    .line 1564
    iput-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->objectFrame:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;

    .line 1565
    iput-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    iput-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignSubtiles565:[I

    iput-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dynamicObjects569:Lcom/ahsim/demulation/RazorDynamicObjects569;

    .line 1566
    iput-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->coreSnapshot663:Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;

    .line 1567
    iput-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->routeWitness664:Lcom/ahsim/demulation/RazorCoreRoute664;

    iput-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->facing666:[I

    iput-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->corePass667:[I

    iput-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->coreCadence668:[I

    .line 1568
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedEnabled670:Z

    iput-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedStatus670:[I

    iput-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus671:[I

    iput-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus672:[I

    iput-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildStatus715:[I

    iput-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildOwner716:[I

    iput-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcOwner673:[I

    .line 1569
    iget-object v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedButton670:Landroid/widget/Button;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedButton670:Landroid/widget/Button;

    sget v5, Lcom/ahsim/demulation/R$string;->razor_speed670_off:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 1570
    :cond_6
    iput v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->demoHandle569:I

    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->demoPending569:Z

    .line 1571
    iput-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->refinery570:Lcom/ahsim/demulation/RazorRefinery570;

    iput-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->construction571:Lcom/ahsim/demulation/RazorConstruction571;

    iput-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->finance576:Lcom/ahsim/demulation/RazorFinanceLive576;

    iput-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->construction571:Lcom/ahsim/demulation/RazorConstruction571;

    .line 1572
    const/4 v4, -0x1

    iput v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    .line 1573
    iput-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedObject:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;

    .line 1574
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateMapActions559()V

    .line 1575
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateGameBar674()V

    .line 1576
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameButton634:Landroid/widget/Button;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameButton634:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1577
    :cond_7
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapView:Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;

    invoke-virtual {v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->invalidate()V

    .line 1578
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->objectDetails:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/R$string;->razor_preview_object_hint:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1579
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1580
    :cond_8
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1581
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->status:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->razor_preview_error:I

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1582
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameBar674:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameBar674:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043e\u0442\u043a\u0440\u044b\u0442\u044c \u043c\u0438\u0441\u0441\u0438\u044e: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1583
    :cond_9
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->coordinates:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1584
    return-void

    .line 1532
    .end local v2    # "old":Landroid/graphics/Bitmap;
    :cond_a
    :goto_0
    return-void
.end method

.method private synthetic lambda$requestFrame$39(ZIIILcom/ahsim/demulation/RazorTerrainPreviewNavigator;ZIZ)V
    .locals 26
    .param p1, "selectNewMission"    # Z
    .param p2, "house"    # I
    .param p3, "mission"    # I
    .param p4, "generation"    # I
    .param p5, "current"    # Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;
    .param p6, "nativeFrame"    # Z
    .param p7, "palette"    # I
    .param p8, "objectMarkers"    # Z

    .line 1282
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    .line 1283
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    iget v0, v0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->house:I

    if-ne v0, v2, :cond_0

    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    iget v0, v0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->mission:I

    if-ne v0, v3, :cond_0

    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    iget-object v0, v0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->sourceSha256:Ljava/lang/String;

    iget-object v6, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    iget-object v6, v6, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->sha256:Ljava/lang/String;

    .line 1285
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1286
    :cond_0
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->close()V

    iput-object v5, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    iput-object v5, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->unitInfo669:[I

    .line 1288
    :cond_1
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    iget-boolean v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-eqz v0, :cond_3

    .line 1289
    :cond_2
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorNativeWorldSession;->close()V

    iput-object v5, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->retainedBootWorld:Lcom/ahsim/demulation/RazorNativeWorldSession;

    .line 1291
    :cond_3
    iget-boolean v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_1c

    iget v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    if-eq v4, v0, :cond_4

    move/from16 v6, p1

    move v2, v4

    goto/16 :goto_12

    .line 1293
    :cond_4
    move-object/from16 v0, p5

    .line 1294
    .local v0, "nav":Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;
    if-nez v0, :cond_5

    :try_start_0
    new-instance v6, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    iget-object v7, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    iget-object v7, v7, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    invoke-virtual {v7, v2, v3}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->mapInfo(II)Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;-><init>(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;)V

    move-object v0, v6

    .line 1295
    :cond_5
    iget-boolean v6, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v6, :cond_7

    .line 1296
    iget v6, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->classicViewWidth678:I

    if-lez v6, :cond_6

    iget v6, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->classicViewHeight678:I

    if-lez v6, :cond_6

    .line 1297
    iget v6, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->classicViewWidth678:I

    iget v7, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->classicViewHeight678:I

    invoke-virtual {v0, v6, v7}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->setClassicViewport678(II)V

    goto :goto_0

    .line 1298
    :cond_6
    iget v6, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameViewportRatio675:F

    invoke-virtual {v0, v6}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->setViewportAspect675(F)V

    .line 1300
    :cond_7
    :goto_0
    iget-object v6, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    iget-object v6, v6, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    invoke-static {v6, v2, v3}, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->capture(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;II)Lcom/ahsim/demulation/RazorTerrainRenderAdapter;

    move-result-object v6

    move-object v7, v6

    .line 1301
    .local v7, "adapter":Lcom/ahsim/demulation/RazorTerrainRenderAdapter;
    iget-object v6, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->liveWorld:Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;

    if-eqz v6, :cond_9

    if-eqz p6, :cond_8

    iget-object v6, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->liveWorld:Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;

    iget v6, v6, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->romVariant:I

    iget v8, v7, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->romVariant:I

    if-ne v6, v8, :cond_8

    iget-object v6, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->liveWorld:Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;

    iget v6, v6, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->house:I

    if-ne v6, v2, :cond_8

    iget-object v6, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->liveWorld:Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;

    iget v6, v6, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->mission:I

    if-ne v6, v3, :cond_8

    iget-object v6, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->liveWorld:Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;

    iget-object v6, v6, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->sourceSha256:Ljava/lang/String;

    iget-object v8, v7, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->sourceSha256:Ljava/lang/String;

    .line 1304
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 1305
    :cond_8
    iget-object v6, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->liveWorld:Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;

    invoke-virtual {v6}, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->close()V

    .line 1306
    iput-object v5, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->liveWorld:Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;

    .line 1310
    :cond_9
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v6

    .local v6, "rx":I
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v8

    .local v8, "ry":I
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v9

    .local v9, "rw":I
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->rows()I

    move-result v10

    .line 1311
    .local v10, "rh":I
    iget-boolean v11, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    const/4 v14, 0x0

    if-eqz v11, :cond_a

    .line 1312
    rsub-int/lit8 v11, v9, 0x20

    div-int/lit8 v11, v11, 0x2

    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v12, 0x3

    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1313
    .local v11, "mx":I
    const/4 v12, 0x3

    .line 1314
    .local v12, "my":I
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->maxX()I

    move-result v13

    add-int v15, v6, v9

    add-int/2addr v15, v11

    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1315
    .local v13, "ex":I
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->maxY()I

    move-result v15

    add-int v16, v8, v10

    add-int v14, v16, v12

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1316
    .local v14, "ey":I
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->minX()I

    move-result v15

    sub-int v5, v6, v11

    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v5

    .line 1317
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->minY()I

    move-result v5

    sub-int v15, v8, v12

    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v8, v5

    .line 1318
    sub-int v9, v13, v6

    sub-int v10, v14, v8

    move v11, v9

    move v12, v10

    move v9, v6

    move v10, v8

    goto :goto_1

    .line 1311
    .end local v11    # "mx":I
    .end local v12    # "my":I
    .end local v13    # "ex":I
    .end local v14    # "ey":I
    :cond_a
    move v11, v9

    move v12, v10

    move v9, v6

    move v10, v8

    .line 1321
    .end local v6    # "rx":I
    .end local v8    # "ry":I
    .local v9, "rx":I
    .local v10, "ry":I
    .local v11, "rw":I
    .local v12, "rh":I
    :goto_1
    if-eqz p6, :cond_c

    .line 1322
    iget-object v5, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->liveWorld:Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;

    if-nez v5, :cond_b

    .line 1323
    iget-object v5, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    iget-object v5, v5, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    invoke-static {v5, v2, v3}, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->capture(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;II)Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;

    move-result-object v5

    iput-object v5, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->liveWorld:Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;

    .line 1324
    :cond_b
    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    .end local v9    # "rx":I
    .local v10, "rx":I
    .local v11, "ry":I
    .local v12, "rw":I
    .local v13, "rh":I
    iget-object v9, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->liveWorld:Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;

    move/from16 v8, p7

    invoke-virtual/range {v7 .. v13}, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->renderNative(ILcom/ahsim/demulation/RazorNativeTerrainFrameBridge;IIII)Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;

    move-result-object v5

    move-object v6, v7

    move/from16 v19, v10

    move/from16 v20, v11

    move/from16 v21, v12

    move/from16 v22, v13

    .local v5, "view":Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;
    goto :goto_2

    .line 1326
    .end local v5    # "view":Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;
    .end local v13    # "rh":I
    .restart local v9    # "rx":I
    .local v10, "ry":I
    .local v11, "rw":I
    .local v12, "rh":I
    :cond_c
    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    .end local v9    # "rx":I
    .local v10, "rx":I
    .local v11, "ry":I
    .local v12, "rw":I
    .restart local v13    # "rh":I
    move/from16 v8, p7

    move v10, v11

    move v11, v12

    move v12, v13

    .end local v13    # "rh":I
    .restart local v9    # "rx":I
    .local v10, "ry":I
    .local v11, "rw":I
    .local v12, "rh":I
    invoke-virtual/range {v7 .. v12}, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->render(IIIII)Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;

    move-result-object v5

    move-object v6, v7

    move/from16 v19, v9

    move/from16 v20, v10

    move/from16 v21, v11

    move/from16 v22, v12

    .line 1328
    .end local v7    # "adapter":Lcom/ahsim/demulation/RazorTerrainRenderAdapter;
    .end local v9    # "rx":I
    .end local v10    # "ry":I
    .end local v11    # "rw":I
    .end local v12    # "rh":I
    .restart local v5    # "view":Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;
    .local v6, "adapter":Lcom/ahsim/demulation/RazorTerrainRenderAdapter;
    .local v19, "rx":I
    .local v20, "ry":I
    .local v21, "rw":I
    .local v22, "rh":I
    :goto_2
    iget-object v7, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->nativeObjects:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;

    if-eqz v7, :cond_f

    if-eqz p8, :cond_e

    iget-object v7, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->nativeObjects:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;

    iget v7, v7, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->romVariant:I

    iget v8, v6, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->romVariant:I

    if-ne v7, v8, :cond_e

    iget-object v7, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->nativeObjects:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;

    iget v7, v7, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->house:I

    if-ne v7, v2, :cond_e

    iget-object v7, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->nativeObjects:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;

    iget v7, v7, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->mission:I

    if-ne v7, v3, :cond_e

    iget-object v7, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->nativeObjects:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;

    iget-object v7, v7, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->sourceSha256:Ljava/lang/String;

    iget-object v8, v6, Lcom/ahsim/demulation/RazorTerrainRenderAdapter;->sourceSha256:Ljava/lang/String;

    .line 1331
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    goto :goto_3

    :cond_d
    const/4 v7, 0x0

    goto :goto_4

    .line 1332
    :cond_e
    :goto_3
    iget-object v7, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->nativeObjects:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;

    invoke-virtual {v7}, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->close()V

    .line 1333
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->nativeObjects:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;

    goto :goto_4

    .line 1328
    :cond_f
    const/4 v7, 0x0

    .line 1341
    :goto_4
    iget-boolean v8, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-eqz v8, :cond_10

    .line 1342
    iget-object v8, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    iget-object v8, v8, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    invoke-virtual {v8}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->verifiedCampaignBundle559()Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    move-result-object v8

    invoke-static {v8, v2, v3}, Lcom/ahsim/demulation/RazorScenarioEconomy573;->inspect(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;II)Lcom/ahsim/demulation/RazorScenarioEconomy573;

    move-result-object v8

    move-object v10, v8

    goto :goto_5

    :cond_10
    move-object v10, v7

    .line 1343
    .local v10, "verifiedEconomy573":Lcom/ahsim/demulation/RazorScenarioEconomy573;
    :goto_5
    iget-boolean v8, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-eqz v8, :cond_11

    .line 1344
    iget-object v8, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    iget-object v8, v8, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    invoke-virtual {v8}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->verifiedCampaignBundle559()Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    move-result-object v8

    iget-object v8, v8, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->buildingData572:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->get(I)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    move-result-object v8

    move-object v15, v8

    goto :goto_6

    :cond_11
    move-object v15, v7

    .line 1345
    .local v15, "verifiedRefinery572":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;
    :goto_6
    iget-boolean v8, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-eqz v8, :cond_17

    .line 1346
    iget-object v8, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    if-nez v8, :cond_15

    .line 1347
    const/4 v8, -0x1

    iput v8, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->deployedSource726:I

    .line 1348
    iget-object v9, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    iget-object v9, v9, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    .line 1349
    invoke-virtual {v9}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->verifiedCampaignBundle559()Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    move-result-object v9

    .line 1348
    invoke-static {v9, v2, v3}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->open(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;II)Lcom/ahsim/demulation/RazorCampaignNativeSession;

    move-result-object v9

    iput-object v9, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    .line 1350
    iget-object v9, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v9, v10}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->sourceEconomy573(Lcom/ahsim/demulation/RazorScenarioEconomy573;)Lcom/ahsim/demulation/RazorScenarioEconomy573;

    .line 1351
    iget-boolean v9, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v9, :cond_15

    .line 1352
    iget-object v9, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v9}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->enableRouteMovement665()V

    .line 1353
    iget-object v9, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    iget-object v11, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    invoke-virtual {v9, v11}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->configureUnitInfo669(Lcom/ahsim/demulation/RazorTerrainPreviewSource;)[I

    move-result-object v9

    iput-object v9, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->unitInfo669:[I

    .line 1358
    iget-object v9, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    const/4 v11, 0x1

    invoke-virtual {v9, v11, v8}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->speedMode670(II)[I

    move-result-object v9

    iput-object v9, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedStatus670:[I

    .line 1359
    iget-object v9, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedStatus670:[I

    aget v9, v9, v11

    if-ne v9, v11, :cond_12

    goto :goto_7

    :cond_12
    const/4 v11, 0x0

    :goto_7
    iput-boolean v11, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedEnabled670:Z

    .line 1360
    iget-object v9, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedButton670:Landroid/widget/Button;

    if-eqz v9, :cond_14

    iget-object v9, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedButton670:Landroid/widget/Button;

    .line 1361
    iget-boolean v11, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedEnabled670:Z

    if-eqz v11, :cond_13

    sget v11, Lcom/ahsim/demulation/R$string;->razor_speed670_on:I

    goto :goto_8

    .line 1362
    :cond_13
    sget v11, Lcom/ahsim/demulation/R$string;->razor_speed670_off:I

    .line 1360
    :goto_8
    invoke-virtual {v9, v11}, Landroid/widget/Button;->setText(I)V

    .line 1363
    :cond_14
    iget-object v9, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    iget-object v11, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12, v8}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->emc671(Lcom/ahsim/demulation/RazorTerrainPreviewSource;II)[I

    move-result-object v9

    iput-object v9, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus671:[I

    .line 1367
    iget-object v9, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v9, v12, v8}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->emc672(II)[I

    move-result-object v9

    iput-object v9, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus672:[I

    .line 1370
    iget-object v9, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    const/4 v11, 0x4

    invoke-virtual {v9, v11, v8}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->emc672(II)[I

    move-result-object v9

    iput-object v9, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus672:[I

    .line 1373
    iget-object v9, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    iget-object v11, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    invoke-virtual {v9, v11}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->buildEmc715(Lcom/ahsim/demulation/RazorTerrainPreviewSource;)[I

    move-result-object v9

    iput-object v9, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildStatus715:[I

    .line 1374
    iget-object v9, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v9, v8}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->emcOwner673(I)[I

    move-result-object v8

    iput-object v8, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcOwner673:[I

    .line 1379
    :cond_15
    iget-object v8, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v8}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->mapSnapshot559()Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    move-result-object v8

    .line 1383
    .local v8, "mapData559":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    iget-boolean v9, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v9, :cond_16

    .line 1384
    iget-object v9, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v9, v8}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->waypointVisual742(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;)[I

    move-result-object v9

    goto :goto_9

    .line 1385
    :cond_16
    iget-object v9, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v9, v8}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->subtileSnapshot565(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;)[I

    move-result-object v9

    :goto_9
    nop

    .line 1386
    .local v9, "fractionalData565":[I
    iget-object v11, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v11}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->bootBirthEvidence567()[I

    move-result-object v11

    .line 1387
    .local v11, "bootBirthEvidence567":[I
    iget-object v12, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v12, v8}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->dynamicObjects569(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;)Lcom/ahsim/demulation/RazorDynamicObjects569;

    move-result-object v12

    .line 1388
    .local v12, "dynamicData569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    iget-object v13, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v14, v14}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->refinery570(III)Lcom/ahsim/demulation/RazorRefinery570;

    move-result-object v13

    .line 1389
    .local v13, "refineryData570":Lcom/ahsim/demulation/RazorRefinery570;
    iget-object v7, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v7, v14, v14, v14}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->construction571(III)Lcom/ahsim/demulation/RazorConstruction571;

    move-result-object v7

    move-object v14, v7

    move-object/from16 v18, v11

    .local v7, "constructionData571":Lcom/ahsim/demulation/RazorConstruction571;
    goto :goto_a

    .line 1390
    .end local v7    # "constructionData571":Lcom/ahsim/demulation/RazorConstruction571;
    .end local v8    # "mapData559":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .end local v9    # "fractionalData565":[I
    .end local v11    # "bootBirthEvidence567":[I
    .end local v12    # "dynamicData569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .end local v13    # "refineryData570":Lcom/ahsim/demulation/RazorRefinery570;
    :cond_17
    const/4 v8, 0x0

    .restart local v8    # "mapData559":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    const/4 v9, 0x0

    .restart local v9    # "fractionalData565":[I
    const/4 v11, 0x0

    .line 1391
    .restart local v11    # "bootBirthEvidence567":[I
    const/4 v12, 0x0

    .restart local v12    # "dynamicData569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    const/4 v13, 0x0

    .restart local v13    # "refineryData570":Lcom/ahsim/demulation/RazorRefinery570;
    const/4 v7, 0x0

    move-object v14, v7

    move-object/from16 v18, v11

    .line 1396
    .end local v11    # "bootBirthEvidence567":[I
    .local v14, "constructionData571":Lcom/ahsim/demulation/RazorConstruction571;
    .local v18, "bootBirthEvidence567":[I
    :goto_a
    iget-boolean v7, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v7, :cond_18

    if-eqz v8, :cond_18

    .line 1397
    iget-object v7, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    iget-object v7, v7, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    .line 1398
    invoke-virtual {v7}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->verifiedCampaignBundle559()Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->mission(II)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    move-result-object v7

    .line 1397
    invoke-static {v7, v8}, Lcom/ahsim/demulation/RazorCoreWorldAdapter663;->readOnly(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;)Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_6

    move-object v11, v7

    goto :goto_b

    .line 1399
    :cond_18
    const/4 v11, 0x0

    :goto_b
    nop

    .line 1401
    .local v11, "coreData663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    if-eqz p8, :cond_1a

    :try_start_1
    iget-boolean v7, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-nez v7, :cond_1a

    .line 1402
    iget-object v7, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->nativeObjects:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v7, :cond_19

    .line 1403
    :try_start_2
    iget-object v7, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    iget-object v7, v7, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    invoke-static {v7, v2, v3}, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->capture(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;II)Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;

    move-result-object v7

    iput-object v7, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->nativeObjects:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_6

    .line 1404
    :cond_19
    :try_start_3
    iget-object v7, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->nativeObjects:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v1

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v2

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v3

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->rows()I

    move-result v4

    invoke-virtual {v7, v1, v2, v3, v4}, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;->read(IIII)Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;

    move-result-object v1

    move-object v7, v1

    .local v1, "nextObjects":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    goto :goto_d

    .line 1527
    .end local v0    # "nav":Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;
    .end local v1    # "nextObjects":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    .end local v5    # "view":Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;
    .end local v6    # "adapter":Lcom/ahsim/demulation/RazorTerrainRenderAdapter;
    .end local v8    # "mapData559":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .end local v9    # "fractionalData565":[I
    .end local v10    # "verifiedEconomy573":Lcom/ahsim/demulation/RazorScenarioEconomy573;
    .end local v11    # "coreData663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .end local v12    # "dynamicData569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .end local v13    # "refineryData570":Lcom/ahsim/demulation/RazorRefinery570;
    .end local v14    # "constructionData571":Lcom/ahsim/demulation/RazorConstruction571;
    .end local v15    # "verifiedRefinery572":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;
    .end local v18    # "bootBirthEvidence567":[I
    .end local v19    # "rx":I
    .end local v20    # "ry":I
    .end local v21    # "rw":I
    .end local v22    # "rh":I
    :catch_0
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_c

    :catch_2
    move-exception v0

    :goto_c
    move-object/from16 v1, p0

    move/from16 v6, p1

    move/from16 v2, p4

    goto :goto_f

    .line 1405
    .restart local v0    # "nav":Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;
    .restart local v5    # "view":Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;
    .restart local v6    # "adapter":Lcom/ahsim/demulation/RazorTerrainRenderAdapter;
    .restart local v8    # "mapData559":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .restart local v9    # "fractionalData565":[I
    .restart local v10    # "verifiedEconomy573":Lcom/ahsim/demulation/RazorScenarioEconomy573;
    .restart local v11    # "coreData663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .restart local v12    # "dynamicData569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .restart local v13    # "refineryData570":Lcom/ahsim/demulation/RazorRefinery570;
    .restart local v14    # "constructionData571":Lcom/ahsim/demulation/RazorConstruction571;
    .restart local v15    # "verifiedRefinery572":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;
    .restart local v18    # "bootBirthEvidence567":[I
    .restart local v19    # "rx":I
    .restart local v20    # "ry":I
    .restart local v21    # "rw":I
    .restart local v22    # "rh":I
    :cond_1a
    const/4 v1, 0x0

    move-object v7, v1

    .line 1406
    .local v7, "nextObjects":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    :goto_d
    invoke-virtual {v5}, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->argbCopy()[I

    move-result-object v1

    .line 1407
    .local v1, "argb":[I
    iget v2, v5, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->width:I

    iget v3, v5, Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1409
    .local v3, "next":Landroid/graphics/Bitmap;
    move-object v4, v0

    .line 1410
    .local v4, "nextNav":Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;
    move-object v2, v0

    .end local v0    # "nav":Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;
    .local v2, "nav":Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;
    new-instance v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_0

    move/from16 v16, p2

    move/from16 v17, p3

    move-object/from16 v25, v1

    move-object/from16 v24, v2

    move-object/from16 v23, v6

    move-object/from16 v1, p0

    move/from16 v6, p1

    move/from16 v2, p4

    .end local v1    # "argb":[I
    .end local v2    # "nav":Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;
    .end local v6    # "adapter":Lcom/ahsim/demulation/RazorTerrainRenderAdapter;
    .local v23, "adapter":Lcom/ahsim/demulation/RazorTerrainRenderAdapter;
    .local v24, "nav":Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;
    .local v25, "argb":[I
    :try_start_4
    invoke-direct/range {v0 .. v18}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda14;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;ILandroid/graphics/Bitmap;Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;ZLcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;[ILcom/ahsim/demulation/RazorScenarioEconomy573;Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;Lcom/ahsim/demulation/RazorDynamicObjects569;Lcom/ahsim/demulation/RazorRefinery570;Lcom/ahsim/demulation/RazorConstruction571;Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;II[I)V

    invoke-virtual {v1, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_4} :catch_3

    .line 1585
    .end local v3    # "next":Landroid/graphics/Bitmap;
    .end local v4    # "nextNav":Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;
    .end local v5    # "view":Lcom/ahsim/demulation/RazorTerrainRenderAdapter$Viewport;
    .end local v7    # "nextObjects":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    .end local v8    # "mapData559":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .end local v9    # "fractionalData565":[I
    .end local v10    # "verifiedEconomy573":Lcom/ahsim/demulation/RazorScenarioEconomy573;
    .end local v11    # "coreData663":Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .end local v12    # "dynamicData569":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .end local v13    # "refineryData570":Lcom/ahsim/demulation/RazorRefinery570;
    .end local v14    # "constructionData571":Lcom/ahsim/demulation/RazorConstruction571;
    .end local v15    # "verifiedRefinery572":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;
    .end local v18    # "bootBirthEvidence567":[I
    .end local v19    # "rx":I
    .end local v20    # "ry":I
    .end local v21    # "rw":I
    .end local v22    # "rh":I
    .end local v23    # "adapter":Lcom/ahsim/demulation/RazorTerrainRenderAdapter;
    .end local v24    # "nav":Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;
    .end local v25    # "argb":[I
    goto :goto_11

    .line 1527
    :catch_3
    move-exception v0

    goto :goto_f

    :catch_4
    move-exception v0

    goto :goto_f

    :catch_5
    move-exception v0

    goto :goto_f

    :catch_6
    move-exception v0

    goto :goto_e

    :catch_7
    move-exception v0

    goto :goto_e

    :catch_8
    move-exception v0

    :goto_e
    move/from16 v6, p1

    move v2, v4

    .line 1528
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_f
    const-string v3, "RazorTerrainPreview"

    const-string v4, "Razor Canvas render failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1529
    iget-object v3, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runtimeDiagnostics749:Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;

    const-string v4, "FRAME_RENDER"

    invoke-virtual {v3, v4, v0}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1530
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1531
    .local v3, "message":Ljava/lang/String;
    :goto_10
    new-instance v4, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda15;

    invoke-direct {v4, v1, v2, v3, v6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda15;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;ILjava/lang/String;Z)V

    invoke-virtual {v1, v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1586
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v3    # "message":Ljava/lang/String;
    :goto_11
    return-void

    .line 1291
    :cond_1c
    move/from16 v6, p1

    move v2, v4

    :goto_12
    return-void
.end method

.method private synthetic lambda$requestLifecycleDemo569$50(IILjava/lang/String;IILcom/ahsim/demulation/RazorDynamicObjects569;)V
    .locals 3
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .param p3, "error"    # Ljava/lang/String;
    .param p4, "action"    # I
    .param p5, "updatedHandle"    # I
    .param p6, "updated"    # Lcom/ahsim/demulation/RazorDynamicObjects569;

    .line 2109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapActionPending559:Z

    .line 2110
    iget-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne p1, v1, :cond_7

    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->missionSpinner:Landroid/widget/Spinner;

    .line 2111
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-eq p2, v1, :cond_0

    goto :goto_3

    .line 2112
    :cond_0
    if-eqz p3, :cond_1

    .line 2113
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapHint559:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->razor_preview_error:I

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2115
    :cond_1
    const/4 v1, 0x3

    if-ne p4, v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, p5

    :goto_0
    iput v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->demoHandle569:I

    .line 2116
    if-ne p4, v2, :cond_3

    move v0, v2

    :cond_3
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->demoPending569:Z

    .line 2117
    iput-object p6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dynamicObjects569:Lcom/ahsim/demulation/RazorDynamicObjects569;

    .line 2118
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapHint559:Landroid/widget/TextView;

    if-ne p4, v2, :cond_4

    .line 2119
    sget v1, Lcom/ahsim/demulation/R$string;->razor_demo569_pending:I

    goto :goto_1

    .line 2120
    :cond_4
    const/4 v1, 0x2

    if-ne p4, v1, :cond_5

    sget v1, Lcom/ahsim/demulation/R$string;->razor_demo569_placed:I

    goto :goto_1

    .line 2121
    :cond_5
    sget v1, Lcom/ahsim/demulation/R$string;->razor_demo569_retired:I

    .line 2118
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2122
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapView:Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapView:Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$MapCanvas;->invalidate()V

    .line 2124
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateMapActions559()V

    .line 2125
    return-void

    .line 2111
    :cond_7
    :goto_3
    return-void
.end method

.method private synthetic lambda$requestLifecycleDemo569$51(IIIIIII)V
    .locals 15
    .param p1, "generation"    # I
    .param p2, "house"    # I
    .param p3, "mission"    # I
    .param p4, "action"    # I
    .param p5, "handle"    # I
    .param p6, "x"    # I
    .param p7, "y"    # I

    .line 2092
    const/4 v2, 0x0

    .local v2, "nextHandle":I
    const/4 v3, 0x0

    .line 2093
    .local v3, "view":Lcom/ahsim/demulation/RazorDynamicObjects569;
    const/4 v4, 0x0

    .line 2095
    .local v4, "failure":Ljava/lang/String;
    :try_start_0
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_c

    move/from16 v8, p1

    if-ne v8, v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    .line 2096
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    iget v0, v0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->house:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_6

    move/from16 v5, p2

    if-ne v0, v5, :cond_1

    :try_start_2
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    iget v0, v0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->mission:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_3

    move/from16 v6, p3

    if-ne v0, v6, :cond_2

    .line 2099
    :try_start_3
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_0

    move/from16 v7, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    :try_start_4
    invoke-virtual {v0, v7, v9, v10, v11}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->demoBirth569(IIII)I

    move-result v0

    move v2, v0

    .line 2100
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->mapSnapshot559()Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    move-result-object v0

    .line 2101
    .local v0, "frame":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    iget-object v12, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v12, v0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->dynamicObjects569(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;)Lcom/ahsim/demulation/RazorDynamicObjects569;

    move-result-object v12

    move-object v3, v12

    .line 2104
    .end local v0    # "frame":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    move v12, v2

    move-object v13, v3

    move-object v14, v4

    goto/16 :goto_7

    .line 2102
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_3

    .line 2096
    :cond_0
    move/from16 v5, p2

    :cond_1
    move/from16 v6, p3

    :cond_2
    move/from16 v7, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    goto :goto_0

    .line 2102
    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_2

    .line 2095
    :cond_3
    move/from16 v8, p1

    :cond_4
    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    .line 2098
    :goto_0
    new-instance v0, Ljava/io/IOException;

    const-string v12, "Razor mission changed during lifecycle command"

    invoke-direct {v0, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "nextHandle":I
    .end local v3    # "view":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .end local v4    # "failure":Ljava/lang/String;
    .end local p1    # "generation":I
    .end local p2    # "house":I
    .end local p3    # "mission":I
    .end local p4    # "action":I
    .end local p5    # "handle":I
    .end local p6    # "x":I
    .end local p7    # "y":I
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_4} :catch_9

    .line 2102
    .restart local v2    # "nextHandle":I
    .restart local v3    # "view":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .restart local v4    # "failure":Ljava/lang/String;
    .restart local p1    # "generation":I
    .restart local p2    # "house":I
    .restart local p3    # "mission":I
    .restart local p4    # "action":I
    .restart local p5    # "handle":I
    .restart local p6    # "x":I
    .restart local p7    # "y":I
    :catch_9
    move-exception v0

    goto :goto_5

    :catch_a
    move-exception v0

    goto :goto_5

    :catch_b
    move-exception v0

    goto :goto_5

    :catch_c
    move-exception v0

    goto :goto_1

    :catch_d
    move-exception v0

    goto :goto_1

    :catch_e
    move-exception v0

    :goto_1
    move/from16 v8, p1

    :goto_2
    move/from16 v5, p2

    :goto_3
    move/from16 v6, p3

    :goto_4
    move/from16 v7, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    .line 2103
    .local v0, "e":Ljava/lang/Throwable;
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    goto :goto_6

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    :goto_6
    move-object v4, v12

    move v12, v2

    move-object v13, v3

    move-object v14, v4

    .line 2105
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "nextHandle":I
    .end local v3    # "view":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .end local v4    # "failure":Ljava/lang/String;
    .local v12, "nextHandle":I
    .local v13, "view":Lcom/ahsim/demulation/RazorDynamicObjects569;
    .local v14, "failure":Ljava/lang/String;
    :goto_7
    move v6, v12

    .line 2106
    .local v6, "updatedHandle":I
    move-object v7, v13

    .line 2107
    .local v7, "updated":Lcom/ahsim/demulation/RazorDynamicObjects569;
    move-object v4, v14

    .line 2108
    .local v4, "error":Ljava/lang/String;
    new-instance v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda55;

    move-object v1, p0

    move/from16 v3, p3

    move v2, v5

    move/from16 v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda55;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;IILjava/lang/String;IILcom/ahsim/demulation/RazorDynamicObjects569;)V

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2126
    return-void
.end method

.method private synthetic lambda$requestMapCommand559$46(IILcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;Lcom/ahsim/demulation/RazorCoreRoute664;)V
    .locals 8
    .param p1, "generation"    # I
    .param p2, "action"    # I
    .param p3, "res"    # Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;
    .param p4, "route"    # Lcom/ahsim/demulation/RazorCoreRoute664;

    .line 2055
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    if-ne p1, v0, :cond_2

    .line 2056
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-boolean v0, p3, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->active:Z

    if-eqz v0, :cond_0

    move-object v0, p4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->routeWitness664:Lcom/ahsim/demulation/RazorCoreRoute664;

    .line 2057
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapHint559:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/ahsim/demulation/R$string;->razor_map559_order_result:I

    iget v3, p3, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->status:I

    .line 2058
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p3, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->ordinal:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p3, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->toX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p3, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->toY:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p3, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->steps:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v3

    .line 2057
    invoke-virtual {p0, v2, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2059
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->routeWitness664:Lcom/ahsim/demulation/RazorCoreRoute664;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " \u00b7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->routeWitness664:Lcom/ahsim/demulation/RazorCoreRoute664;

    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorCoreRoute664;->describe()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2057
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2060
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestFrame(Z)V

    .line 2062
    :cond_2
    return-void
.end method

.method private synthetic lambda$requestMapCommand559$47(ILjava/lang/String;)V
    .locals 3
    .param p1, "generation"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 2066
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    if-ne p1, v0, :cond_1

    .line 2067
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapHint559:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->razor_preview_error:I

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2068
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameBar674:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameBar674:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041f\u0440\u0438\u043a\u0430\u0437 \u043d\u0435 \u0432\u044b\u043f\u043e\u043b\u043d\u0435\u043d: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2069
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestFrame(Z)V

    .line 2071
    :cond_1
    return-void
.end method

.method private synthetic lambda$requestMapCommand559$48()V
    .locals 1

    .line 2074
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapActionPending559:Z

    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateMapActions559()V

    .line 2075
    return-void
.end method

.method private synthetic lambda$requestMapCommand559$49(IIIIIII)V
    .locals 16
    .param p1, "generation"    # I
    .param p2, "house"    # I
    .param p3, "mission"    # I
    .param p4, "action"    # I
    .param p5, "unit"    # I
    .param p6, "x"    # I
    .param p7, "y"    # I

    .line 2030
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    const-string v4, ","

    :try_start_0
    iget-boolean v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_2

    iget v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    if-ne v2, v0, :cond_2

    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    iget v0, v0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->house:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v9, p2

    if-ne v0, v9, :cond_3

    :try_start_1
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    iget v0, v0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->mission:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v10, p3

    if-eq v0, v10, :cond_0

    goto/16 :goto_2

    .line 2036
    :cond_0
    const/4 v5, 0x0

    .line 2037
    .local v5, "witness":Lcom/ahsim/demulation/RazorCoreRoute664;
    :try_start_2
    iget-boolean v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne v3, v0, :cond_1

    .line 2039
    :try_start_3
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->mapSnapshot559()Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    move-result-object v0

    .line 2040
    .local v0, "live":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    iget-object v11, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v11, v0, v6, v7, v8}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->routeWitness664(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;III)Lcom/ahsim/demulation/RazorCoreRoute664;

    move-result-object v11
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v5, v11

    .line 2043
    .end local v0    # "live":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    move-object v11, v5

    goto :goto_1

    .line 2041
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 2042
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_4
    const-string v11, "RazorTerrainPreview"

    const-string v12, "Optional classic route witness rejected"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2045
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    move-object v11, v5

    .end local v5    # "witness":Lcom/ahsim/demulation/RazorCoreRoute664;
    .local v11, "witness":Lcom/ahsim/demulation/RazorCoreRoute664;
    :goto_1
    move-object v5, v11

    .line 2046
    .local v5, "route":Lcom/ahsim/demulation/RazorCoreRoute664;
    iget-object v0, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    .line 2047
    invoke-virtual {v0, v3, v6, v7, v8}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->command557(IIII)Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;

    move-result-object v0

    .line 2050
    .local v0, "res":Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;
    iget-object v12, v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runtimeDiagnostics749:Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;

    const-string v13, "MOVE_ORDER"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "cmd="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " unit="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " target="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " from="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v0, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->fromX:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v14, v0, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->fromY:I

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, " status="

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v14, v0, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->status:I

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, " active="

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v14, v0, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->active:Z

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v13, v4}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->event(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    move-object v4, v0

    .end local v0    # "res":Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;
    .local v4, "res":Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;
    new-instance v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda64;

    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda64;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;IILcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;Lcom/ahsim/demulation/RazorCoreRoute664;)V

    invoke-virtual {v1, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2073
    .end local v4    # "res":Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;
    .end local v5    # "route":Lcom/ahsim/demulation/RazorCoreRoute664;
    .end local v11    # "witness":Lcom/ahsim/demulation/RazorCoreRoute664;
    new-instance v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda63;

    invoke-direct {v0, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda63;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    goto :goto_8

    .line 2063
    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_6

    .line 2073
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 2063
    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_5

    :catch_8
    move-exception v0

    goto :goto_5

    .line 2030
    :cond_2
    move/from16 v9, p2

    :cond_3
    move/from16 v10, p3

    .line 2073
    :goto_2
    new-instance v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda63;

    invoke-direct {v0, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda63;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-virtual {v1, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2032
    return-void

    .line 2073
    :catchall_1
    move-exception v0

    move/from16 v9, p2

    :goto_3
    move/from16 v10, p3

    goto :goto_9

    .line 2063
    :catch_9
    move-exception v0

    goto :goto_4

    :catch_a
    move-exception v0

    goto :goto_4

    :catch_b
    move-exception v0

    :goto_4
    move/from16 v9, p2

    :goto_5
    move/from16 v10, p3

    .line 2064
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_6
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, "JNI error"

    goto :goto_7

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 2065
    .local v3, "message":Ljava/lang/String;
    :goto_7
    new-instance v4, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda65;

    invoke-direct {v4, v1, v2, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda65;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;ILjava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2073
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v3    # "message":Ljava/lang/String;
    new-instance v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda63;

    invoke-direct {v0, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda63;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    :goto_8
    invoke-virtual {v1, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2076
    nop

    .line 2077
    return-void

    .line 2073
    :catchall_2
    move-exception v0

    :goto_9
    new-instance v3, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda63;

    invoke-direct {v3, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda63;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-virtual {v1, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2076
    throw v0
.end method

.method private synthetic lambda$shareMovementTrace562$56(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "failure"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 2312
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2313
    :cond_0
    if-eqz p1, :cond_1

    .line 2314
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapHint559:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapHint559:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2316
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2317
    .local v0, "send":Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2318
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "Demulation Razor 0.4.562 movement trace"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2319
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2320
    sget v1, Lcom/ahsim/demulation/R$string;->razor_trace562_button:I

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 2322
    .end local v0    # "send":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 2312
    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$shareMovementTrace562$57()V
    .locals 5

    .line 2302
    const/4 v0, 0x0

    .local v0, "trace":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2304
    .local v1, "error":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2306
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->movementTrace562()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 2309
    goto :goto_2

    .line 2305
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Razor movement session not available"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "trace":Ljava/lang/String;
    .end local v1    # "error":Ljava/lang/String;
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2307
    .restart local v0    # "trace":Ljava/lang/String;
    .restart local v1    # "error":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    .line 2308
    .local v2, "ex":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v1, v3

    .line 2310
    .end local v2    # "ex":Ljava/lang/Throwable;
    :goto_2
    move-object v2, v0

    .local v2, "value":Ljava/lang/String;
    move-object v3, v1

    .line 2311
    .local v3, "failure":Ljava/lang/String;
    new-instance v4, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda66;

    invoke-direct {v4, p0, v3, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda66;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2323
    return-void
.end method

.method private synthetic lambda$shareRazorDiagnostics$40(ILcom/ahsim/demulation/RazorTerrainPreviewSource;Ljava/io/File;)V
    .locals 4
    .param p1, "generation"    # I
    .param p2, "verified"    # Lcom/ahsim/demulation/RazorTerrainPreviewSource;
    .param p3, "fallback532"    # Ljava/io/File;

    .line 1622
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    if-eq v0, p2, :cond_0

    goto :goto_1

    .line 1624
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastProbeEvidenceZip:Ljava/io/File;

    .line 1625
    .local v0, "newer":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v1, p3

    .line 1628
    .local v1, "toShare":Ljava/io/File;
    :goto_0
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->shareProbeButton:Landroid/widget/Button;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->shareProbeButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1629
    :cond_2
    invoke-direct {p0, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->openRazorShareSheet(Ljava/io/File;)V

    .line 1630
    return-void

    .line 1622
    .end local v0    # "newer":Ljava/io/File;
    .end local v1    # "toShare":Ljava/io/File;
    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$shareRazorDiagnostics$41(ILjava/lang/Exception;)V
    .locals 3
    .param p1, "generation"    # I
    .param p2, "ex"    # Ljava/lang/Exception;

    .line 1634
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1635
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->shareProbeButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->shareProbeButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1636
    :cond_1
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->bootStatus:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/ahsim/demulation/R$string;->razor_probe_share_failed:I

    invoke-virtual {p0, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1637
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1636
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1638
    return-void

    .line 1634
    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$shareRazorDiagnostics$42(Lcom/ahsim/demulation/RazorTerrainPreviewSource;IILcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 13
    .param p1, "verified"    # Lcom/ahsim/demulation/RazorTerrainPreviewSource;
    .param p2, "house"    # I
    .param p3, "mission"    # I
    .param p4, "frame"    # Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    .param p5, "outcome"    # Ljava/lang/String;
    .param p6, "failure"    # Ljava/lang/String;
    .param p7, "generation"    # I

    .line 1607
    move-object/from16 v1, p4

    move/from16 v2, p7

    :try_start_0
    const-string v0, "diagnostics"

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object v3, v0

    .line 1608
    .local v3, "dir":Ljava/io/File;
    iget-object v0, p1, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romVariant()I

    move-result v0

    .line 1609
    .local v0, "romId":I
    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected Razor ROM variant"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "verified":Lcom/ahsim/demulation/RazorTerrainPreviewSource;
    .end local p2    # "house":I
    .end local p3    # "mission":I
    .end local p4    # "frame":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    .end local p5    # "outcome":Ljava/lang/String;
    .end local p6    # "failure":Ljava/lang/String;
    .end local p7    # "generation":I
    throw v4

    .line 1610
    .restart local p1    # "verified":Lcom/ahsim/demulation/RazorTerrainPreviewSource;
    .restart local p2    # "house":I
    .restart local p3    # "mission":I
    .restart local p4    # "frame":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    .restart local p5    # "outcome":Ljava/lang/String;
    .restart local p6    # "failure":Ljava/lang/String;
    .restart local p7    # "generation":I
    :cond_1
    :goto_0
    iget-object v5, p1, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->sha256:Ljava/lang/String;

    .line 1611
    if-ne v0, v4, :cond_2

    const/4 v4, 0x3

    goto :goto_1

    :cond_2
    const/4 v4, 0x4

    .line 1612
    :goto_1
    const/4 v6, -0x1

    if-nez v1, :cond_3

    move v8, v6

    goto :goto_2

    :cond_3
    iget v7, v1, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->sourceUnits:I

    move v8, v7

    .line 1613
    :goto_2
    if-nez v1, :cond_4

    move v9, v6

    goto :goto_3

    :cond_4
    iget v7, v1, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->sourceBuildings:I

    move v9, v7

    .line 1614
    :goto_3
    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    iget v6, v1, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->sourceTerrainMarkers:I

    :goto_4
    move v10, v6

    .line 1610
    move-object v6, v5

    move v5, v4

    move-object v4, v6

    move v6, p2

    move/from16 v7, p3

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-static/range {v3 .. v12}, Lcom/ahsim/demulation/RazorPreflightDiagnostic406H;->create(Ljava/io/File;Ljava/lang/String;IIIIIILjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 1618
    .local v4, "report":Ljava/io/File;
    iget-object v5, p1, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->sha256:Ljava/lang/String;

    const-string v8, "PREFLIGHT_ONLY"

    move v6, p2

    move/from16 v7, p3

    move-object/from16 v9, p5

    invoke-static/range {v3 .. v9}, Lcom/ahsim/demulation/RazorAndroidRuntimeEvidence532;->append(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 1621
    .local v5, "fallback532":Ljava/io/File;
    new-instance v6, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0, v2, p1, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda3;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;ILcom/ahsim/demulation/RazorTerrainPreviewSource;Ljava/io/File;)V

    invoke-virtual {p0, v6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1639
    .end local v0    # "romId":I
    .end local v3    # "dir":Ljava/io/File;
    .end local v4    # "report":Ljava/io/File;
    .end local v5    # "fallback532":Ljava/io/File;
    goto :goto_6

    .line 1631
    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    .line 1632
    .local v0, "ex":Ljava/lang/Exception;
    :goto_5
    const-string v3, "RazorTerrainPreview"

    const-string v4, "Cannot create Razor precheck diagnostic"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1633
    new-instance v3, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v2, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda4;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;ILjava/lang/Exception;)V

    invoke-virtual {p0, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1640
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_6
    return-void
.end method

.method private synthetic lambda$shareRuntimeDiagnostics749$28(Ljava/lang/Exception;Ljava/io/File;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Exception;
    .param p2, "file"    # Ljava/io/File;

    .line 872
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->exportingDiagnostics749:Z

    .line 873
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 874
    :cond_0
    if-eqz p1, :cond_1

    .line 875
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u0414\u0438\u0430\u0433\u043d\u043e\u0441\u0442\u0438\u043a\u0430 Razor"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0441\u043e\u0437\u0434\u0430\u0442\u044c ZIP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 876
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u2014 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 877
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 876
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 878
    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 879
    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0, p2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->openRazorShareSheet(Ljava/io/File;)V

    .line 880
    :cond_2
    :goto_0
    return-void

    .line 873
    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$shareRuntimeDiagnostics749$29(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "frame"    # Ljava/lang/String;

    .line 862
    const/4 v0, 0x0

    .line 863
    .local v0, "result":Ljava/io/File;
    const/4 v1, 0x0

    .line 865
    .local v1, "failure":Ljava/lang/Exception;
    :try_start_0
    const-string v2, "diagnostics"

    invoke-virtual {p0, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 866
    .local v2, "dir":Ljava/io/File;
    if-nez v2, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "diagnostic_exports"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v3

    .line 867
    :cond_0
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runtimeDiagnostics749:Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;

    invoke-virtual {v3, v2, p1, p2}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->createZip(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 868
    .end local v2    # "dir":Ljava/io/File;
    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    move-object v1, v2

    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runtimeDiagnostics749:Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;

    const-string v4, "ZIP_EXPORT"

    invoke-virtual {v3, v4, v2}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 869
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_0
    move-object v2, v0

    .line 870
    .local v2, "file":Ljava/io/File;
    move-object v3, v1

    .line 871
    .local v3, "error":Ljava/lang/Exception;
    new-instance v4, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda37;

    invoke-direct {v4, p0, v3, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda37;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Ljava/lang/Exception;Ljava/io/File;)V

    invoke-virtual {p0, v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 881
    return-void
.end method

.method private synthetic lambda$showMissionSelector674$32([ILandroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "current"    # [I
    .param p2, "m"    # Landroid/content/DialogInterface;
    .param p3, "selected"    # I

    .line 1001
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 1004
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->changingMission674:Z

    .line 1006
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1007
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->missionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p3}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->changingMission674:Z

    .line 1009
    invoke-direct {p0, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestFrame(Z)V

    .line 1010
    return-void

    .line 1008
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->changingMission674:Z

    throw v0
.end method

.method private synthetic lambda$showMissionSelector674$33([ILandroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "current"    # [I
    .param p2, "d"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 996
    const/4 v0, 0x0

    aput p3, p1, v0

    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 997
    const/16 v0, 0x9

    new-array v1, v0, [Ljava/lang/String;

    .line 998
    .local v1, "missions":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u041c\u0438\u0441\u0441\u0438\u044f "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 999
    .end local v2    # "i":I
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u0412\u044b\u0431\u0440\u0430\u0442\u044c \u043c\u0438\u0441\u0441\u0438\u044e"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x1

    aget v2, p1, v2

    new-instance v3, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda17;

    invoke-direct {v3, p0, p1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda17;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;[I)V

    .line 1000
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1010
    const-string v2, "\u041e\u0442\u043c\u0435\u043d\u0430"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1011
    return-void
.end method

.method private synthetic lambda$showPlayMenu676$25(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 743
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 757
    :pswitch_0
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->finish()V

    goto :goto_0

    .line 756
    :pswitch_1
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->shareRuntimeDiagnostics749()V

    goto :goto_0

    .line 755
    :pswitch_2
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->showRazorDiagnostics741()V

    goto :goto_0

    .line 754
    :pswitch_3
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->chooseRazorArtRom741()V

    goto :goto_0

    .line 753
    :pswitch_4
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->showMissionSelector674()V

    goto :goto_0

    .line 752
    :pswitch_5
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->focusSelected676()V

    goto :goto_0

    .line 749
    :pswitch_6
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxRunning560:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->toggleSandbox560()V

    goto :goto_0

    .line 750
    :cond_0
    const-string v0, "\u041d\u0430\u0436\u0430\u0442\u0430 \u043a\u043d\u043e\u043f\u043a\u0430 \u041f\u0430\u0443\u0437\u0430"

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->pauseReason740:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateGameBar674()V

    .line 751
    goto :goto_0

    .line 745
    :pswitch_7
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxRunning560:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    if-eqz v0, :cond_1

    .line 746
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->toggleSandbox560()V

    .line 760
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$showRazorDiagnostics741$26(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .line 786
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->chooseRazorArtRom741()V

    return-void
.end method

.method private synthetic lambda$showRazorDiagnostics741$27(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .line 787
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->shareRuntimeDiagnostics749()V

    return-void
.end method

.method private synthetic lambda$stopFrame634$62()V
    .locals 4

    .line 2413
    :try_start_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2414
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->frameIngress634(IJ)[I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2417
    :cond_0
    goto :goto_0

    .line 2415
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 2418
    :goto_0
    return-void
.end method

.method private synthetic lambda$toggleFrame634$58(IZLjava/lang/String;)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "ready"    # Z
    .param p3, "cause"    # Ljava/lang/String;

    .line 2353
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameGeneration634:I

    if-ne p1, v0, :cond_4

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2354
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameArming634:Z

    .line 2355
    iput-boolean p2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameRunning634:Z

    .line 2356
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameButton634:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2357
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameButton634:Landroid/widget/Button;

    if-eqz p2, :cond_1

    sget v1, Lcom/ahsim/demulation/R$string;->razor_frame634_stop:I

    goto :goto_0

    .line 2358
    :cond_1
    sget v1, Lcom/ahsim/demulation/R$string;->razor_frame634_start:I

    .line 2357
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 2359
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameStatus634:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    sget v1, Lcom/ahsim/demulation/R$string;->razor_frame634_running:I

    goto :goto_1

    .line 2360
    :cond_2
    sget v1, Lcom/ahsim/demulation/R$string;->razor_frame634_wait:I

    .line 2359
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2361
    if-eqz p2, :cond_3

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->framePulse634:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_2

    .line 2362
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Razor VSYNC clock rejected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RazorTerrainPreview"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    :goto_2
    return-void

    .line 2353
    :cond_4
    :goto_3
    return-void
.end method

.method private synthetic lambda$toggleFrame634$59(II)V
    .locals 6
    .param p1, "serial"    # I
    .param p2, "generation"    # I

    .line 2340
    const/4 v0, 0x0

    .local v0, "ok":Z
    const-string v1, "Clock source not available"

    .line 2342
    .local v1, "error":Ljava/lang/String;
    :try_start_0
    iget-boolean v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameGeneration634:I

    if-ne p1, v2, :cond_1

    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    .line 2344
    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2345
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->frameIngress634(IJ)[I

    move-result-object v2

    .line 2346
    .local v2, "words":[I
    const/4 v3, 0x1

    aget v4, v2, v3

    if-ne v4, v3, :cond_0

    const/4 v4, 0x5

    aget v4, v2, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_0

    move v5, v3

    :cond_0
    move v0, v5

    .line 2350
    .end local v2    # "words":[I
    :cond_1
    goto :goto_2

    .line 2348
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    .line 2349
    .local v2, "ex":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v1, v3

    .line 2351
    .end local v2    # "ex":Ljava/lang/Throwable;
    :goto_2
    move v2, v0

    .local v2, "ready":Z
    move-object v3, v1

    .line 2352
    .local v3, "cause":Ljava/lang/String;
    new-instance v4, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, p1, v2, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda8;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;IZLjava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2364
    return-void
.end method

.method private synthetic lambda$toggleSpeed670$63(I[ILjava/lang/String;)V
    .locals 2
    .param p1, "generation"    # I
    .param p2, "row"    # [I
    .param p3, "reason"    # Ljava/lang/String;

    .line 2440
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    if-eq p1, v0, :cond_0

    goto :goto_3

    .line 2441
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedButton670:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2442
    if-eqz p2, :cond_3

    .line 2443
    iput-object p2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedStatus670:[I

    .line 2444
    aget v0, p2, v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedEnabled670:Z

    .line 2445
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedButton670:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedEnabled670:Z

    if-eqz v1, :cond_2

    .line 2446
    sget v1, Lcom/ahsim/demulation/R$string;->razor_speed670_on:I

    goto :goto_1

    :cond_2
    sget v1, Lcom/ahsim/demulation/R$string;->razor_speed670_off:I

    .line 2445
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 2447
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateQuickHud662(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;)V

    goto :goto_2

    .line 2448
    :cond_3
    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapHint559:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 2449
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapHint559:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2450
    :cond_4
    :goto_2
    return-void

    .line 2440
    :cond_5
    :goto_3
    return-void
.end method

.method private synthetic lambda$toggleSpeed670$64(II)V
    .locals 5
    .param p1, "generation"    # I
    .param p2, "desired"    # I

    .line 2428
    const/4 v0, 0x0

    .local v0, "result":[I
    const/4 v1, 0x0

    .line 2430
    .local v1, "error":Ljava/lang/String;
    :try_start_0
    iget-boolean v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    .line 2431
    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2432
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    iget v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    invoke-virtual {v2, p2, v3}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->speedMode670(II)[I

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 2436
    :cond_0
    goto :goto_1

    .line 2434
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    .line 2435
    .local v2, "ex":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 2437
    .end local v2    # "ex":Ljava/lang/Throwable;
    :goto_1
    move-object v2, v0

    .line 2438
    .local v2, "row":[I
    move-object v3, v1

    .line 2439
    .local v3, "reason":Ljava/lang/String;
    new-instance v4, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda20;

    invoke-direct {v4, p0, p1, v2, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda20;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;I[ILjava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2451
    return-void
.end method

.method private synthetic lambda$updateGameBar674$34(II)V
    .locals 7
    .param p1, "maximum743"    # I
    .param p2, "value743"    # I

    .line 1077
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->hpTrack743:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->hpFill743:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->hpTrack743:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1079
    .local v0, "available":I
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->hpFill743:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1080
    .local v2, "l":Landroid/widget/FrameLayout$LayoutParams;
    if-lez p1, :cond_1

    int-to-long v3, v0

    int-to-long v5, p2

    mul-long/2addr v3, v5

    int-to-long v5, p1

    div-long/2addr v3, v5

    long-to-int v1, v3

    .line 1081
    .local v1, "width743":I
    :cond_1
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v3, v1, :cond_2

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->hpFill743:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1082
    :cond_2
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->hpFill743:Landroid/view/View;

    if-nez p1, :cond_3

    const v4, -0x9b8e86

    goto :goto_0

    .line 1083
    :cond_3
    mul-int/lit8 v4, p2, 0x3

    mul-int/lit8 v5, p1, 0x2

    if-le v4, v5, :cond_4

    const v4, -0x985090

    goto :goto_0

    .line 1084
    :cond_4
    mul-int/lit8 v4, p2, 0x3

    if-le v4, p1, :cond_5

    const v4, -0x3053b0

    goto :goto_0

    :cond_5
    const v4, -0x3bb3b8

    .line 1082
    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1085
    return-void

    .line 1077
    .end local v0    # "available":I
    .end local v1    # "width743":I
    .end local v2    # "l":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    :goto_1
    return-void
.end method

.method private loadOriginalSpriteArt674()V
    .locals 14

    .line 1115
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->originalSprites674:Lcom/ahsim/demulation/GenesisObjectArt;

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 1116
    :cond_0
    const-string v0, "razor_tactical_art741"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1117
    const-string v1, "classic_uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1118
    .local v1, "savedUri":Ljava/lang/String;
    const/4 v3, 0x1

    const-string v4, "RazorTerrainPreview"

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1119
    :try_start_0
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    .line 1120
    .local v5, "in":Ljava/io/InputStream;
    if-eqz v5, :cond_3

    .line 1121
    :try_start_1
    invoke-static {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->readBounded(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/RomImageNormalizer;->normalize([B)Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;

    move-result-object v0

    iget-object v0, v0, Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;->bytes:[B

    .line 1122
    .local v0, "rom":[B
    new-instance v6, Lcom/ahsim/demulation/GenesisTerrainArt;

    invoke-direct {v6, v0}, Lcom/ahsim/demulation/GenesisTerrainArt;-><init>([B)V

    .line 1123
    .local v6, "terrain":Lcom/ahsim/demulation/GenesisTerrainArt;
    new-instance v7, Lcom/ahsim/demulation/GenesisObjectArt;

    invoke-direct {v7, v0, v6}, Lcom/ahsim/demulation/GenesisObjectArt;-><init>([BLcom/ahsim/demulation/GenesisTerrainArt;)V

    move-object v8, v7

    .line 1124
    .local v8, "art":Lcom/ahsim/demulation/GenesisObjectArt;
    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v9, 0xd

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/ahsim/demulation/GenesisObjectArt;->getUnitFrame(IIIII)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1126
    iput-object v8, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->originalSprites674:Lcom/ahsim/demulation/GenesisObjectArt;

    .line 1127
    iput-boolean v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameplaySpritesAvailable674:Z

    .line 1128
    iput-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->artFrameError740:Ljava/lang/String;

    .line 1129
    const-string v7, "\u0413\u0440\u0430\u0444\u0438\u043a\u0430: \u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0451\u043d \u043e\u0440\u0438\u0433\u0438\u043d\u0430\u043b\u044c\u043d\u044b\u0439 ROM Dune"

    iput-object v7, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->artStatus740:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1131
    if-eqz v5, :cond_1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1130
    :cond_1
    return-void

    .line 1125
    :cond_2
    :try_start_3
    new-instance v7, Ljava/io/IOException;

    const-string v9, "\u041d\u0435\u0442 \u0431\u0430\u0437\u043e\u0432\u043e\u0433\u043e \u0441\u043f\u0440\u0430\u0439\u0442\u0430 Dune"

    invoke-direct {v7, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "savedUri":Ljava/lang/String;
    .end local v5    # "in":Ljava/io/InputStream;
    throw v7

    .line 1119
    .end local v0    # "rom":[B
    .end local v6    # "terrain":Lcom/ahsim/demulation/GenesisTerrainArt;
    .end local v8    # "art":Lcom/ahsim/demulation/GenesisObjectArt;
    .restart local v1    # "savedUri":Ljava/lang/String;
    .restart local v5    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v0

    move-object v6, v0

    goto :goto_0

    .line 1120
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v6, "ROM \u0433\u0440\u0430\u0444\u0438\u043a\u0438 \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u0435\u043d"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "savedUri":Ljava/lang/String;
    .end local v5    # "in":Ljava/io/InputStream;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1119
    .restart local v1    # "savedUri":Ljava/lang/String;
    .restart local v5    # "in":Ljava/io/InputStream;
    :goto_0
    if-eqz v5, :cond_4

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "savedUri":Ljava/lang/String;
    :cond_4
    :goto_1
    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1131
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v1    # "savedUri":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 1132
    .local v0, "ex":Ljava/lang/Exception;
    :goto_2
    const-string v5, "Razor user-selected tactical art unavailable"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1133
    const-string v5, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u0440\u043e\u0447\u0438\u0442\u0430\u0442\u044c \u0432\u044b\u0431\u0440\u0430\u043d\u043d\u044b\u0439 ROM \u0433\u0440\u0430\u0444\u0438\u043a\u0438"

    iput-object v5, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->artStatus740:Ljava/lang/String;

    .line 1137
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_5
    :try_start_6
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->activeRuntimeBundle(Landroid/content/Context;)Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;

    move-result-object v0

    .line 1138
    .local v0, "assets":Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;
    new-instance v5, Lcom/ahsim/demulation/GenesisTerrainArt;

    iget-object v6, v0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->worldAssets:Lcom/ahsim/demulation/RomRuntimeWorldAssets;

    invoke-direct {v5, v6}, Lcom/ahsim/demulation/GenesisTerrainArt;-><init>(Lcom/ahsim/demulation/RomRuntimeWorldAssets;)V

    .line 1139
    .local v5, "terrain":Lcom/ahsim/demulation/GenesisTerrainArt;
    new-instance v6, Lcom/ahsim/demulation/GenesisObjectArt;

    iget-object v7, v0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->worldAssets:Lcom/ahsim/demulation/RomRuntimeWorldAssets;

    invoke-direct {v6, v7, v5}, Lcom/ahsim/demulation/GenesisObjectArt;-><init>(Lcom/ahsim/demulation/RomRuntimeWorldAssets;Lcom/ahsim/demulation/GenesisTerrainArt;)V

    iput-object v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->originalSprites674:Lcom/ahsim/demulation/GenesisObjectArt;

    .line 1140
    iput-boolean v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameplaySpritesAvailable674:Z

    .line 1141
    iput-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->artFrameError740:Ljava/lang/String;

    .line 1142
    const-string v6, "\u0413\u0440\u0430\u0444\u0438\u043a\u0430: \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044b\u0435 \u0434\u0430\u043d\u043d\u044b\u0435 \u043e\u0440\u0438\u0433\u0438\u043d\u0430\u043b\u044c\u043d\u043e\u0439 Dune"

    iput-object v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->artStatus740:Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    .line 1143
    return-void

    .line 1144
    .end local v0    # "assets":Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;
    .end local v5    # "terrain":Lcom/ahsim/demulation/GenesisTerrainArt;
    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    .line 1145
    .local v0, "ex":Ljava/lang/Exception;
    :goto_3
    const-string v5, "No installed classic art; checking user\'s selected BASE ROM"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1147
    .end local v0    # "ex":Ljava/lang/Exception;
    invoke-static {p0}, Lcom/ahsim/demulation/RomSelectionStore;->load(Landroid/content/Context;)Lcom/ahsim/demulation/RomSelectionStore$Selection;

    move-result-object v5

    .line 1148
    .local v5, "base":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    if-nez v5, :cond_6

    .line 1149
    const-string v0, "\u0413\u0440\u0430\u0444\u0438\u043a\u0430 \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0430: \u0432 \u043b\u0430\u0443\u043d\u0447\u0435\u0440\u0435 \u0432\u044b\u0431\u0435\u0440\u0438 \u043e\u0440\u0438\u0433\u0438\u043d\u0430\u043b\u044c\u043d\u044b\u0439 ROM Dune"

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->artStatus740:Ljava/lang/String;

    .line 1150
    return-void

    .line 1152
    :cond_6
    :try_start_7
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v6, v5, Lcom/ahsim/demulation/RomSelectionStore$Selection;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    move-object v6, v0

    .line 1153
    .local v6, "in":Ljava/io/InputStream;
    if-nez v6, :cond_8

    .line 1160
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1153
    :cond_7
    return-void

    .line 1154
    :cond_8
    :try_start_8
    invoke-static {v6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->readBounded(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/RomImageNormalizer;->normalize([B)Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;

    move-result-object v0

    iget-object v0, v0, Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;->bytes:[B

    .line 1155
    .local v0, "rom":[B
    new-instance v7, Lcom/ahsim/demulation/GenesisTerrainArt;

    invoke-direct {v7, v0}, Lcom/ahsim/demulation/GenesisTerrainArt;-><init>([B)V

    .line 1156
    .local v7, "terrain":Lcom/ahsim/demulation/GenesisTerrainArt;
    new-instance v8, Lcom/ahsim/demulation/GenesisObjectArt;

    invoke-direct {v8, v0, v7}, Lcom/ahsim/demulation/GenesisObjectArt;-><init>([BLcom/ahsim/demulation/GenesisTerrainArt;)V

    iput-object v8, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->originalSprites674:Lcom/ahsim/demulation/GenesisObjectArt;

    .line 1157
    iput-boolean v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameplaySpritesAvailable674:Z

    .line 1158
    iput-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->artFrameError740:Ljava/lang/String;

    .line 1159
    const-string v2, "\u0413\u0440\u0430\u0444\u0438\u043a\u0430: \u0432\u044b\u0431\u0440\u0430\u043d\u043d\u044b\u0439 ROM \u043e\u0440\u0438\u0433\u0438\u043d\u0430\u043b\u044c\u043d\u043e\u0439 Dune"

    iput-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->artStatus740:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1160
    .end local v0    # "rom":[B
    .end local v7    # "terrain":Lcom/ahsim/demulation/GenesisTerrainArt;
    if-eqz v6, :cond_9

    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_4

    .line 1163
    .end local v6    # "in":Ljava/io/InputStream;
    :cond_9
    goto :goto_6

    .line 1152
    .restart local v6    # "in":Ljava/io/InputStream;
    :catchall_2
    move-exception v0

    move-object v2, v0

    if-eqz v6, :cond_a

    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    :try_start_b
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "savedUri":Ljava/lang/String;
    .end local v5    # "base":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    :cond_a
    :goto_4
    throw v2
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_4

    .line 1160
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v1    # "savedUri":Ljava/lang/String;
    .restart local v5    # "base":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    .line 1161
    .local v0, "ex":Ljava/lang/Exception;
    :goto_5
    const-string v2, "\u0413\u0440\u0430\u0444\u0438\u043a\u0430: \u043e\u0448\u0438\u0431\u043a\u0430 \u0447\u0442\u0435\u043d\u0438\u044f BASE ROM; \u0441\u043c\u043e\u0442\u0440\u0438 \u0436\u0443\u0440\u043d\u0430\u043b Razor"

    iput-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->artStatus740:Ljava/lang/String;

    .line 1162
    const-string v2, "Selected classic ROM media cannot be used for Razor art"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1164
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_6
    return-void

    .line 1115
    .end local v1    # "savedUri":Ljava/lang/String;
    .end local v5    # "base":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    :cond_b
    :goto_7
    return-void
.end method

.method private openRazorShareSheet(Ljava/io/File;)V
    .locals 4
    .param p1, "report"    # Ljava/io/File;

    .line 1645
    :try_start_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runtimeDiagnostics749:Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;

    const-string v1, "SHARE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sharing ZIP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->event(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    invoke-static {p0, p1}, Lcom/ahsim/demulation/DiagnosticFileProvider;->uriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 1647
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1648
    .local v1, "send":Landroid/content/Intent;
    const-string v2, "application/zip"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1649
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1650
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1651
    sget v2, Lcom/ahsim/demulation/R$string;->razor_probe_share:I

    invoke-virtual {p0, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1658
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "send":Landroid/content/Intent;
    goto :goto_1

    .line 1652
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1653
    .local v0, "ex":Ljava/lang/Exception;
    :goto_0
    const-string v1, "RazorTerrainPreview"

    const-string v2, "Cannot share Razor probe diagnostic"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1654
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runtimeDiagnostics749:Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;

    const-string v2, "SHARE_FAILED"

    invoke-virtual {v1, v2, v0}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1655
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u0414\u0438\u0430\u0433\u043d\u043e\u0441\u0442\u0438\u043a\u0430 Razor"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043e\u0442\u043f\u0440\u0430\u0432\u0438\u0442\u044c ZIP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1656
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1657
    const-string v2, "OK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1659
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private openSelectedMod()V
    .locals 4

    .line 1169
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/ahsim/demulation/RazorGameRomStore;->load(Landroid/content/Context;)Lcom/ahsim/demulation/RazorGameRomStore$Entry;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1170
    .local v0, "gameSource":Lcom/ahsim/demulation/RazorGameRomStore$Entry;
    :goto_0
    iget-boolean v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-eqz v2, :cond_1

    goto :goto_1

    .line 1171
    :cond_1
    sget-object v1, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->MEDIA_MOD:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-static {p0, v1}, Lcom/ahsim/demulation/RomSelectionStore;->loadOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    move-result-object v1

    :goto_1
    nop

    .line 1172
    .local v1, "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    iget-boolean v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-nez v2, :cond_5

    if-nez v1, :cond_5

    .line 1173
    :cond_3
    iget-boolean v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-eqz v2, :cond_4

    sget v2, Lcom/ahsim/demulation/R$string;->razor_map558_need_rom:I

    goto :goto_2

    .line 1174
    :cond_4
    sget v2, Lcom/ahsim/demulation/R$string;->razor_preview_no_mod:I

    .line 1173
    :goto_2
    invoke-virtual {p0, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->failure(Ljava/lang/String;)V

    .line 1175
    return-void

    .line 1177
    :cond_5
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda32;

    invoke-direct {v3, p0, v1, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda32;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;Lcom/ahsim/demulation/RazorGameRomStore$Entry;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1221
    return-void
.end method

.method private pauseSandbox560()V
    .locals 2

    .line 2572
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->autoStartPending662:Z

    .line 2573
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxRunning560:Z

    .line 2574
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->razorPacer736:Lcom/ahsim/demulation/RazorFramePacer736;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorFramePacer736;->stop()V

    .line 2575
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxClock560:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxPulse560:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2576
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxButton560:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateMapActions559()V

    .line 2577
    :cond_0
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateGameBar674()V

    .line 2578
    return-void
.end method

.method private static readBounded(Ljava/io/InputStream;)[B
    .locals 6
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1224
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/high16 v1, 0x400000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1225
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    const v1, 0x8000

    new-array v1, v1, [B

    .line 1226
    .local v1, "buf":[B
    const/4 v2, 0x0

    .line 1227
    .local v2, "count":I
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "n":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 1228
    if-nez v4, :cond_0

    goto :goto_0

    .line 1229
    :cond_0
    add-int/2addr v2, v4

    .line 1230
    const v3, 0x400200

    if-gt v2, v3, :cond_1

    .line 1231
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1230
    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string v5, "Razor source exceeds size limit"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1233
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method private requestBootProbe()V
    .locals 9

    .line 1663
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->missionSpinner:Landroid/widget/Spinner;

    .line 1664
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 1665
    :cond_0
    iget-object v8, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    .line 1666
    .local v8, "verifiedSource536":Lcom/ahsim/demulation/RazorTerrainPreviewSource;
    iget-object v6, v8, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    .line 1667
    .local v6, "checkedSource":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->authenticatedUnitEmcCopy()[B

    move-result-object v7

    .line 1668
    .local v7, "verifiedUnitBank":[B
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    .line 1669
    .local v4, "house":I
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->missionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x1

    add-int/lit8 v5, v0, 0x1

    .line 1670
    .local v5, "mission":I
    iget v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    .line 1671
    .local v3, "generation":I
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->bootStatus:Landroid/widget/TextView;

    sget v2, Lcom/ahsim/demulation/R$string;->razor_world_session_running:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1672
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastProbeEvidenceZip:Ljava/io/File;

    .line 1673
    const-string v0, "IN_PROGRESS"

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastProbeOutcome:Ljava/lang/String;

    .line 1674
    const-string v0, ""

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastProbeFailure:Ljava/lang/String;

    .line 1676
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->shareProbeButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->shareProbeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1677
    :cond_1
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda38;

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda38;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;IIILcom/ahsim/demulation/RazorTerrainVisualSource$Audit;[BLcom/ahsim/demulation/RazorTerrainPreviewSource;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2016
    return-void

    .line 1664
    .end local v3    # "generation":I
    .end local v4    # "house":I
    .end local v5    # "mission":I
    .end local v6    # "checkedSource":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .end local v7    # "verifiedUnitBank":[B
    .end local v8    # "verifiedSource536":Lcom/ahsim/demulation/RazorTerrainPreviewSource;
    :cond_2
    :goto_0
    return-void
.end method

.method private requestConstruction571(III)V
    .locals 9
    .param p1, "action"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 2130
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapActionPending559:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->construction571:Lcom/ahsim/demulation/RazorConstruction571;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->demoHandle569:I

    if-eqz v0, :cond_0

    move v6, p1

    move v7, p2

    move v8, p3

    goto :goto_0

    .line 2132
    :cond_0
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->pauseSandbox560()V

    .line 2133
    iget v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    .line 2134
    .local v3, "generation":I
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    .line 2135
    .local v4, "house":I
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->missionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x1

    add-int/lit8 v5, v0, 0x1

    .line 2136
    .local v5, "mission":I
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapActionPending559:Z

    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateMapActions559()V

    .line 2137
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda70;

    move-object v2, p0

    move v6, p1

    move v7, p2

    move v8, p3

    .end local p1    # "action":I
    .end local p2    # "x":I
    .end local p3    # "y":I
    .local v6, "action":I
    .local v7, "x":I
    .local v8, "y":I
    invoke-direct/range {v1 .. v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda70;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;IIIIII)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2187
    return-void

    .line 2130
    .end local v3    # "generation":I
    .end local v4    # "house":I
    .end local v5    # "mission":I
    .end local v6    # "action":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    .restart local p1    # "action":I
    .restart local p2    # "x":I
    .restart local p3    # "y":I
    :cond_1
    move v6, p1

    move v7, p2

    move v8, p3

    .line 2131
    .end local p1    # "action":I
    .end local p2    # "x":I
    .end local p3    # "y":I
    .restart local v6    # "action":I
    .restart local v7    # "x":I
    .restart local v8    # "y":I
    :goto_0
    return-void
.end method

.method private requestDeployMcv726()V
    .locals 7

    .line 654
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapActionPending559:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    if-nez v0, :cond_0

    goto :goto_1

    .line 660
    :cond_0
    iget-boolean v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxRunning560:Z

    .line 661
    .local v6, "runningAtDeploy729":Z
    iget v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    .line 662
    .local v4, "ordinal":I
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    iget-object v0, v0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v0, v0

    if-ge v4, v0, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    iget-object v0, v0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    aget-object v0, v0, v4

    iget-boolean v0, v0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->retired:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    iget-object v0, v0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    iget-object v0, v0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->owner:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    .line 666
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 669
    :cond_1
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    .line 670
    .local v3, "session":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    iget v5, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    .line 671
    .local v5, "generation":I
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapActionPending559:Z

    .line 672
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateGameBar674()V

    .line 673
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda16;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda16;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Lcom/ahsim/demulation/RazorCampaignNativeSession;IIZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 717
    return-void

    .line 667
    .end local v3    # "session":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    .end local v5    # "generation":I
    :cond_2
    :goto_0
    return-void

    .line 655
    .end local v4    # "ordinal":I
    .end local v6    # "runningAtDeploy729":Z
    :cond_3
    :goto_1
    return-void
.end method

.method private requestFinance576()V
    .locals 9

    .line 2200
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapActionPending559:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->construction571:Lcom/ahsim/demulation/RazorConstruction571;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->construction571:Lcom/ahsim/demulation/RazorConstruction571;

    iget v0, v0, Lcom/ahsim/demulation/RazorConstruction571;->phase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    iget-object v0, v0, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    iget-object v0, v0, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    .line 2203
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romVariant()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_4

    .line 2204
    :cond_0
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->pauseSandbox560()V

    .line 2205
    iget v5, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    .line 2206
    .local v5, "generation":I
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 2207
    .local v6, "house":I
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->missionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 2208
    .local v7, "mission":I
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->finance576:Lcom/ahsim/demulation/RazorFinanceLive576;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->finance576:Lcom/ahsim/demulation/RazorFinanceLive576;

    iget v0, v0, Lcom/ahsim/demulation/RazorFinanceLive576;->phase:I

    if-nez v0, :cond_1

    goto :goto_2

    .line 2209
    :cond_1
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->finance576:Lcom/ahsim/demulation/RazorFinanceLive576;

    iget v0, v0, Lcom/ahsim/demulation/RazorFinanceLive576;->phase:I

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->finance576:Lcom/ahsim/demulation/RazorFinanceLive576;

    iget v0, v0, Lcom/ahsim/demulation/RazorFinanceLive576;->phase:I

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 2210
    :cond_2
    const/4 v1, 0x3

    goto :goto_1

    :cond_3
    :goto_0
    nop

    :goto_1
    move v8, v1

    goto :goto_3

    .line 2208
    :cond_4
    :goto_2
    move v8, v2

    .line 2210
    :goto_3
    nop

    .line 2211
    .local v8, "action":I
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->finance576:Lcom/ahsim/demulation/RazorFinanceLive576;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->finance576:Lcom/ahsim/demulation/RazorFinanceLive576;

    iget v0, v0, Lcom/ahsim/demulation/RazorFinanceLive576;->phase:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    return-void

    .line 2212
    :cond_5
    iput-boolean v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapActionPending559:Z

    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateMapActions559()V

    .line 2213
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda61;

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda61;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;IIII)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2247
    return-void

    .line 2203
    .end local v5    # "generation":I
    .end local v6    # "house":I
    .end local v7    # "mission":I
    .end local v8    # "action":I
    :cond_6
    :goto_4
    return-void
.end method

.method private requestFrame(Z)V
    .locals 11
    .param p1, "selectNewMission"    # Z

    .line 1240
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-eqz v0, :cond_0

    move v3, p1

    goto/16 :goto_0

    .line 1241
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    .line 1242
    .local v4, "house":I
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->missionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    .line 1243
    .local v5, "mission":I
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->paletteSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    .line 1244
    .local v9, "palette":I
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1245
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->stopFrame634()V

    .line 1246
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->pauseSandbox560()V

    .line 1247
    iget-boolean v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    iput-boolean v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->autoStartPending662:Z

    .line 1248
    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxTicks560:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxMoves560:I

    .line 1249
    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastPulseFailure729:Ljava/lang/String;

    .line 1250
    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->currentProof729:Lcom/ahsim/demulation/RazorTickEvidence729;

    .line 1251
    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->coreSnapshot663:Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;

    .line 1252
    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->routeWitness664:Lcom/ahsim/demulation/RazorCoreRoute664;

    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->facing666:[I

    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->corePass667:[I

    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->coreCadence668:[I

    .line 1253
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedEnabled670:Z

    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedStatus670:[I

    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus671:[I

    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus672:[I

    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildStatus715:[I

    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildOwner716:[I

    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcOwner673:[I

    .line 1254
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedButton670:Landroid/widget/Button;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedButton670:Landroid/widget/Button;

    sget v3, Lcom/ahsim/demulation/R$string;->razor_speed670_off:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 1255
    :cond_1
    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    .line 1256
    const/4 v2, -0x1

    iput v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    .line 1257
    iput v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedBuilding674:I

    .line 1258
    iput v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedEnemy674:I

    .line 1259
    iput v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->classicCursorX678:I

    iput v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->classicCursorY678:I

    .line 1260
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->pendingSelectionFocus749:Z

    .line 1261
    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->terrainRows679:I

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->terrainCols679:I

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->panFrameRequested679:Z

    .line 1262
    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignSubtiles565:[I

    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->dynamicObjects569:Lcom/ahsim/demulation/RazorDynamicObjects569;

    .line 1263
    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->demoHandle569:I

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->demoPending569:Z

    .line 1264
    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->refinery570:Lcom/ahsim/demulation/RazorRefinery570;

    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->construction571:Lcom/ahsim/demulation/RazorConstruction571;

    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->finance576:Lcom/ahsim/demulation/RazorFinanceLive576;

    .line 1265
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->economyFacts573:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->economyFacts573:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/R$string;->razor_economy573_wait:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1266
    :cond_2
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateMapActions559()V

    .line 1268
    :cond_3
    iget-object v7, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    .line 1269
    .local v7, "current":Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;
    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    .line 1270
    .local v6, "generation":I
    iget-boolean v8, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->useNativeFrames:Z

    .line 1271
    .local v8, "nativeFrame":Z
    iget-boolean v10, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->showObjectMarkers:Z

    .line 1272
    .local v10, "objectMarkers":Z
    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->bootStatus:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 1273
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->bootStatus:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/R$string;->razor_boot_probe_hint:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1274
    :cond_4
    if-eqz p1, :cond_5

    .line 1275
    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedObject:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;

    .line 1276
    iput-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->objectFrame:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;

    .line 1277
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->objectDetails:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->objectDetails:Landroid/widget/TextView;

    sget v2, Lcom/ahsim/demulation/R$string;->razor_preview_object_hint:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1279
    :cond_5
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1280
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->status:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->razor_preview_loading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1281
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda24;

    move-object v2, p0

    move v3, p1

    .end local p1    # "selectNewMission":Z
    .local v3, "selectNewMission":Z
    invoke-direct/range {v1 .. v10}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda24;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;ZIIILcom/ahsim/demulation/RazorTerrainPreviewNavigator;ZIZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1587
    return-void

    .line 1240
    .end local v3    # "selectNewMission":Z
    .end local v4    # "house":I
    .end local v5    # "mission":I
    .end local v6    # "generation":I
    .end local v7    # "current":Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;
    .end local v8    # "nativeFrame":Z
    .end local v9    # "palette":I
    .end local v10    # "objectMarkers":Z
    .restart local p1    # "selectNewMission":Z
    :cond_6
    move v3, p1

    .end local p1    # "selectNewMission":Z
    .restart local v3    # "selectNewMission":Z
    :goto_0
    return-void
.end method

.method private requestLifecycleDemo569(III)V
    .locals 11
    .param p1, "action"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 2082
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapActionPending559:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->demoHandle569:I

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v7, p1

    move v9, p2

    move v10, p3

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    :cond_2
    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->demoHandle569:I

    if-nez v1, :cond_3

    goto :goto_0

    .line 2085
    :cond_3
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->pauseSandbox560()V

    .line 2086
    iget v8, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->demoHandle569:I

    .line 2087
    .local v8, "handle":I
    iget v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    .line 2088
    .local v4, "generation":I
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    .line 2089
    .local v5, "house":I
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->missionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v6, v1, 0x1

    .line 2090
    .local v6, "mission":I
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapActionPending559:Z

    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateMapActions559()V

    .line 2091
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda26;

    move-object v3, p0

    move v7, p1

    move v9, p2

    move v10, p3

    .end local p1    # "action":I
    .end local p2    # "x":I
    .end local p3    # "y":I
    .local v7, "action":I
    .local v9, "x":I
    .local v10, "y":I
    invoke-direct/range {v2 .. v10}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda26;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;IIIIIII)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2127
    return-void

    .line 2082
    .end local v4    # "generation":I
    .end local v5    # "house":I
    .end local v6    # "mission":I
    .end local v7    # "action":I
    .end local v8    # "handle":I
    .end local v9    # "x":I
    .end local v10    # "y":I
    .restart local p1    # "action":I
    .restart local p2    # "x":I
    .restart local p3    # "y":I
    :cond_4
    move v7, p1

    move v9, p2

    move v10, p3

    .line 2084
    .end local p1    # "action":I
    .end local p2    # "x":I
    .end local p3    # "y":I
    .restart local v7    # "action":I
    .restart local v9    # "x":I
    .restart local v10    # "y":I
    :goto_2
    return-void
.end method

.method private requestMapCommand559(IIII)V
    .locals 10
    .param p1, "action"    # I
    .param p2, "unit"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 2021
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapActionPending559:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->demoHandle569:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    if-eqz v0, :cond_1

    if-ltz p2, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    iget-object v0, v0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v0, v0

    if-lt p2, v0, :cond_0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    goto :goto_0

    .line 2024
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    .line 2025
    .local v4, "house":I
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->missionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x1

    add-int/lit8 v5, v0, 0x1

    .line 2026
    .local v5, "mission":I
    iget v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    .line 2027
    .local v3, "generation":I
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapActionPending559:Z

    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateMapActions559()V

    .line 2028
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda10;

    move-object v2, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    .end local p1    # "action":I
    .end local p2    # "unit":I
    .end local p3    # "x":I
    .end local p4    # "y":I
    .local v6, "action":I
    .local v7, "unit":I
    .local v8, "x":I
    .local v9, "y":I
    invoke-direct/range {v1 .. v9}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda10;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;IIIIIII)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2078
    return-void

    .line 2021
    .end local v3    # "generation":I
    .end local v4    # "house":I
    .end local v5    # "mission":I
    .end local v6    # "action":I
    .end local v7    # "unit":I
    .end local v8    # "x":I
    .end local v9    # "y":I
    .restart local p1    # "action":I
    .restart local p2    # "unit":I
    .restart local p3    # "x":I
    .restart local p4    # "y":I
    :cond_1
    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    .line 2023
    .end local p1    # "action":I
    .end local p2    # "unit":I
    .end local p3    # "x":I
    .end local p4    # "y":I
    .restart local v6    # "action":I
    .restart local v7    # "unit":I
    .restart local v8    # "x":I
    .restart local v9    # "y":I
    :goto_0
    return-void
.end method

.method private selectedUnitLabel566(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;)Ljava/lang/String;
    .locals 6
    .param p1, "u"    # Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    .line 2858
    sget v0, Lcom/ahsim/demulation/R$string;->razor_map559_selected:I

    iget v1, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->ordinal:I

    .line 2859
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->owner:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->y:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    .line 2858
    invoke-virtual {p0, v0, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2861
    .local v0, "label":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v1}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2862
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    iget v2, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->ordinal:I

    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->selectedUnitIdentity566(I)[I

    move-result-object v1

    .line 2863
    .local v1, "id":[I
    const/4 v2, 0x4

    aget v2, v1, v2

    iget v3, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->owner:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x5

    aget v2, v1, v2

    iget v3, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x7

    aget v2, v1, v2

    iget v3, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->x:I

    if-ne v2, v3, :cond_0

    const/16 v2, 0x8

    aget v2, v1, v2

    iget v3, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->y:I

    if-ne v2, v3, :cond_0

    .line 2865
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/ahsim/demulation/R$string;->razor_source566_suffix:I

    const/4 v4, 0x3

    aget v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x6

    aget v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 2869
    .end local v1    # "id":[I
    :cond_0
    goto :goto_0

    .line 2867
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    .line 2870
    :goto_0
    return-object v0
.end method

.method private selector([Ljava/lang/String;)Landroid/widget/Spinner;
    .locals 3
    .param p1, "choices"    # [Ljava/lang/String;

    .line 3606
    new-instance v0, Landroid/widget/Spinner;

    invoke-direct {v0, p0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 3607
    .local v0, "spinner":Landroid/widget/Spinner;
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    invoke-direct {v1, p0, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 3609
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 3610
    return-object v0
.end method

.method private shareMovementTrace562()V
    .locals 2

    .line 2299
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2300
    :cond_0
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->pauseSandbox560()V

    .line 2301
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda59;

    invoke-direct {v1, p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda59;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2324
    return-void

    .line 2299
    :cond_1
    :goto_0
    return-void
.end method

.method private shareRazorDiagnostics()V
    .locals 11

    .line 1591
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastProbeEvidenceZip:Ljava/io/File;

    .line 1592
    .local v0, "complete":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1593
    invoke-direct {p0, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->openRazorShareSheet(Ljava/io/File;)V

    .line 1594
    return-void

    .line 1596
    :cond_0
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1597
    :cond_1
    iget-object v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    .line 1598
    .local v4, "verified":Lcom/ahsim/demulation/RazorTerrainPreviewSource;
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    .line 1599
    .local v5, "house":I
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->missionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v6, v1, 0x1

    .line 1600
    .local v6, "mission":I
    iget v10, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    .line 1601
    .local v10, "generation":I
    iget-object v8, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastProbeOutcome:Ljava/lang/String;

    .line 1602
    .local v8, "outcome":Ljava/lang/String;
    iget-object v9, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastProbeFailure:Ljava/lang/String;

    .line 1603
    .local v9, "failure":Ljava/lang/String;
    iget-object v7, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->objectFrame:Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;

    .line 1604
    .local v7, "frame":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->shareProbeButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->shareProbeButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1605
    :cond_2
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda1;

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda1;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Lcom/ahsim/demulation/RazorTerrainPreviewSource;IILcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1641
    return-void

    .line 1596
    .end local v4    # "verified":Lcom/ahsim/demulation/RazorTerrainPreviewSource;
    .end local v5    # "house":I
    .end local v6    # "mission":I
    .end local v7    # "frame":Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
    .end local v8    # "outcome":Ljava/lang/String;
    .end local v9    # "failure":Ljava/lang/String;
    .end local v10    # "generation":I
    :cond_3
    :goto_0
    return-void
.end method

.method private shareRuntimeDiagnostics749()V
    .locals 5

    .line 857
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->exportingDiagnostics749:Z

    if-eqz v0, :cond_0

    return-void

    .line 858
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->exportingDiagnostics749:Z

    .line 859
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runtimeDiagnostics749:Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;

    const-string v1, "RAZOR_749_RUNTIME_DIAGNOSTICS"

    const-string v2, "User requested diagnostic archive"

    invoke-virtual {v0, v1, v2}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->event(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->captureRuntimeState749()Ljava/lang/String;

    move-result-object v0

    .local v0, "state":Ljava/lang/String;
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->captureFrameState749()Ljava/lang/String;

    move-result-object v1

    .line 861
    .local v1, "frame":Ljava/lang/String;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda18;

    invoke-direct {v3, p0, v0, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda18;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "razor-diag-749"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 881
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 882
    return-void
.end method

.method private showMissionSelector674()V
    .locals 6

    .line 991
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0425\u0430\u0440\u043a\u043e\u043d\u043d\u0435\u043d\u044b"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, "\u0410\u0442\u0440\u0435\u0439\u0434\u0435\u0441\u044b"

    aput-object v3, v0, v1

    const-string v1, "\u041e\u0440\u0434\u043e\u0441\u044b"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 992
    .local v0, "houses":[Ljava/lang/String;
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iget-object v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->missionSpinner:Landroid/widget/Spinner;

    .line 993
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    filled-new-array {v1, v4}, [I

    move-result-object v1

    .line 994
    .local v1, "current":[I
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "\u0412\u044b\u0431\u0440\u0430\u0442\u044c \u0434\u043e\u043c"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    aget v2, v1, v2

    .line 995
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-instance v3, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda19;

    invoke-direct {v3, p0, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda19;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;[I)V

    invoke-virtual {v4, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1011
    const-string v3, "\u041e\u0442\u043c\u0435\u043d\u0430"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1012
    return-void
.end method

.method private showPlayMenu676()V
    .locals 3

    .line 734
    const-string v0, "RazorTerrainPreview"

    const-string v1, "RAZOR_7441_GAME_MENU 0.4.768"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u041f\u0440\u043e\u0434\u043e\u043b\u0436\u0438\u0442\u044c \u0438\u0433\u0440\u0443"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u041f\u0430\u0443\u0437\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u0426\u0435\u043d\u0442\u0440\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u043a\u0430\u043c\u0435\u0440\u0443"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u0412\u044b\u0431\u0440\u0430\u0442\u044c \u043c\u0438\u0441\u0441\u0438\u044e"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u041f\u043e\u0434\u043a\u043b\u044e\u0447\u0438\u0442\u044c \u0433\u0440\u0430\u0444\u0438\u043a\u0443 Dune (ROM)"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u0414\u0438\u0430\u0433\u043d\u043e\u0441\u0442\u0438\u043a\u0430 Razor"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u041e\u0442\u043f\u0440\u0430\u0432\u0438\u0442\u044c \u0434\u0438\u0430\u0433\u043d\u043e\u0441\u0442\u0438\u043a\u0443 ZIP"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u0412\u044b\u0439\u0442\u0438 \u0432 \u043b\u0430\u0443\u043d\u0447\u0435\u0440"

    aput-object v2, v0, v1

    .line 741
    .local v0, "items":[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Dune Razor 0.4.768"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda9;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    .line 742
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 760
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 761
    return-void
.end method

.method private showRazorDiagnostics741()V
    .locals 4

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 766
    .local v0, "text":Ljava/lang/StringBuilder;
    const-string v1, "C-\u043f\u0440\u043e\u0445\u043e\u0434\u043e\u0432: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxTicks560:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 767
    const-string v2, "\n\u0427\u0430\u0441\u0442\u043e\u0442\u0430: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->observedCps736:D

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " C/\u0441"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 768
    const-string v2, "\n\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u0439 \u043f\u0430\u043a\u0435\u0442: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->burstFrames736:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 769
    const-string v2, "\n\u0422\u0438\u043a C \u043f\u043e\u0434\u0442\u0432\u0435\u0440\u0436\u0434\u0451\u043d: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 770
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->currentProof729:Lcom/ahsim/demulation/RazorTickEvidence729;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->currentProof729:Lcom/ahsim/demulation/RazorTickEvidence729;

    iget v2, v2, Lcom/ahsim/demulation/RazorTickEvidence729;->retained:I

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 771
    const-string v2, "\n\nC \u2014 \u0432\u0441\u0435 \u043f\u0440\u043e\u0445\u043e\u0434\u044b \u0441\u0438\u043c\u0443\u043b\u044f\u0446\u0438\u0438, \u0432\u043a\u043b\u044e\u0447\u0430\u044f \u043e\u0436\u0438\u0434\u0430\u043d\u0438\u0435. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 772
    const-string v2, "\u041f\u043e\u0434\u0442\u0432\u0435\u0440\u0436\u0434\u0451\u043d\u043d\u044b\u0439 \u0442\u0438\u043a C \u2014 \u0438\u0437\u043c\u0435\u043d\u0435\u043d\u0438\u0435 \u0441\u043e\u0441\u0442\u043e\u044f\u043d\u0438\u044f, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 773
    const-string v2, "\u0441\u043e\u0445\u0440\u0430\u043d\u0451\u043d\u043d\u043e\u0435 \u043d\u0430 \u0441\u043b\u0435\u0434\u0443\u044e\u0449\u0435\u043c \u043f\u0440\u043e\u0445\u043e\u0434\u0435. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 774
    const-string v2, "\u041a\u043e\u0433\u0434\u0430 \u043c\u0438\u0440 \u043d\u0435 \u043c\u0435\u043d\u044f\u0435\u0442\u0441\u044f, \u044d\u0442\u043e\u0442 \u0441\u0447\u0451\u0442\u0447\u0438\u043a \u043c\u043e\u0436\u0435\u0442 \u043d\u0435 \u0440\u0430\u0441\u0442\u0438."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->pauseReason740:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxRunning560:Z

    if-nez v1, :cond_1

    .line 776
    const-string v1, "\n\n\u041f\u0430\u0443\u0437\u0430: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->pauseReason740:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    :cond_1
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastPulseFailure729:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 778
    const-string v1, "\n\n\u041e\u0448\u0438\u0431\u043a\u0430 \u0446\u0438\u043a\u043b\u0430: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastPulseFailure729:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    :cond_2
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->artStatus740:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->artFrameError740:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->artFrameError740:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    :cond_3
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildStatus715:[I

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildStatus715:[I

    array-length v1, v1

    if-lez v1, :cond_4

    .line 782
    const-string v1, "\nBUILD.EMC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildStatus715:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    :cond_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u0414\u0438\u0430\u0433\u043d\u043e\u0441\u0442\u0438\u043a\u0430 Razor \u00b7 0.4.768"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 784
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 785
    const-string v2, "\u0417\u0430\u043a\u0440\u044b\u0442\u044c"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda30;

    invoke-direct {v2, p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda30;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    .line 786
    const-string v3, "ROM \u0433\u0440\u0430\u0444\u0438\u043a\u0438"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda31;

    invoke-direct {v2, p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda31;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    .line 787
    const-string v3, "\u041e\u0442\u043f\u0440\u0430\u0432\u0438\u0442\u044c ZIP"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 788
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 789
    return-void
.end method

.method private stopFrame634()V
    .locals 6

    .line 2401
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameGeneration634:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameGeneration634:I

    .line 2402
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameRunning634:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameArming634:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 2403
    .local v0, "shouldPause":Z
    :goto_1
    iput-boolean v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameRunning634:Z

    iput-boolean v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameArming634:Z

    .line 2404
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v3

    iget-object v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->framePulse634:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v3, v4}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 2405
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameButton634:Landroid/widget/Button;

    if-eqz v3, :cond_3

    .line 2406
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameButton634:Landroid/widget/Button;

    sget v4, Lcom/ahsim/demulation/R$string;->razor_frame634_start:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 2407
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameButton634:Landroid/widget/Button;

    iget-object v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    .line 2408
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-ne v4, v1, :cond_2

    iget-object v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->missionSpinner:Landroid/widget/Spinner;

    .line 2409
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 2407
    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2411
    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda5;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2419
    :cond_4
    return-void
.end method

.method private toggleFrame634()V
    .locals 4

    .line 2330
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameRunning634:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameArming634:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2331
    :cond_0
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    .line 2332
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->missionSpinner:Landroid/widget/Spinner;

    .line 2333
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    if-nez v0, :cond_1

    goto :goto_0

    .line 2335
    :cond_1
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameGeneration634:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameGeneration634:I

    .line 2336
    .local v0, "serial":I
    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    .line 2337
    .local v2, "generation":I
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameArming634:Z

    .line 2338
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->frameButton634:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2339
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda29;

    invoke-direct {v3, p0, v0, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda29;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;II)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2365
    return-void

    .line 2334
    .end local v0    # "serial":I
    .end local v2    # "generation":I
    :cond_2
    :goto_0
    return-void

    .line 2330
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->stopFrame634()V

    return-void
.end method

.method private toggleSandbox560()V
    .locals 4

    .line 2552
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->demoHandle569:I

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2553
    :cond_0
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxRunning560:Z

    if-eqz v0, :cond_1

    .line 2554
    const-string v0, "\u041d\u0430\u0436\u0430\u0442\u0430 \u043a\u043d\u043e\u043f\u043a\u0430 \u041f\u0430\u0443\u0437\u0430"

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->pauseReason740:Ljava/lang/String;

    .line 2555
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->pauseSandbox560()V

    goto :goto_0

    .line 2557
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->pauseReason740:Ljava/lang/String;

    .line 2558
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxRunning560:Z

    .line 2559
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2560
    .local v0, "now736":J
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->razorPacer736:Lcom/ahsim/demulation/RazorFramePacer736;

    invoke-virtual {v2, v0, v1}, Lcom/ahsim/demulation/RazorFramePacer736;->reset(J)V

    .line 2561
    iput-wide v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->rateStartNs736:J

    .line 2562
    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxTicks560:I

    iput v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->rateStartTicks736:I

    .line 2563
    const/4 v2, 0x0

    iput v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->burstFrames736:I

    .line 2564
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->observedCps736:D

    .line 2565
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxClock560:Landroid/os/Handler;

    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxPulse560:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2566
    iget-boolean v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxInFlight560:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxClock560:Landroid/os/Handler;

    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxPulse560:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2568
    .end local v0    # "now736":J
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateMapActions559()V

    .line 2569
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateGameBar674()V

    .line 2570
    return-void

    .line 2552
    :cond_3
    :goto_1
    return-void
.end method

.method private toggleSpeed670()V
    .locals 4

    .line 2422
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapSession559:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedButton670:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedStatus670:[I

    if-nez v0, :cond_0

    goto :goto_0

    .line 2424
    :cond_0
    iget v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    .line 2425
    .local v0, "generation":I
    iget-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedEnabled670:Z

    xor-int/lit8 v1, v1, 0x1

    .line 2426
    .local v1, "desired":I
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedButton670:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2427
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda28;

    invoke-direct {v3, p0, v0, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda28;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2452
    return-void

    .line 2423
    .end local v0    # "generation":I
    .end local v1    # "desired":I
    :cond_1
    :goto_0
    return-void
.end method

.method private updateCoordinates()V
    .locals 7

    .line 2874
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    if-nez v0, :cond_0

    return-void

    .line 2875
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->coordinates:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->razor_preview_coordinates:I

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    .line 2876
    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->x()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->y()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v4}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->tiles()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    .line 2877
    invoke-virtual {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->scenarioWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->navigator:Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;

    invoke-virtual {v6}, Lcom/ahsim/demulation/RazorTerrainPreviewNavigator;->scenarioHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v2

    .line 2875
    invoke-virtual {p0, v1, v2}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2878
    return-void
.end method

.method private updateGameBar674()V
    .locals 13

    .line 1028
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameBar674:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto/16 :goto_b

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    .line 1030
    .local v0, "state":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameBar674:Landroid/widget/TextView;

    const-string v2, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430 \u043c\u0438\u0441\u0441\u0438\u0438\u2026"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1032
    :cond_1
    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    const-string v2, "  \u00b7  "

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    iget-object v6, v0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v6, v6

    if-ge v1, v6, :cond_3

    iget-object v1, v0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    iget v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    aget-object v1, v1, v6

    iget-boolean v1, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->retired:Z

    if-nez v1, :cond_3

    .line 1034
    iget-object v1, v0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    iget v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    aget-object v1, v1, v6

    .line 1035
    .local v1, "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->UNIT_NAMES674:[Ljava/lang/String;

    iget v8, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    invoke-static {v7, v8}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->labelFrom674([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1037
    iget-object v7, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->ownerHud743:[I

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->ownerHud743:[I

    array-length v7, v7

    iget-object v8, v0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v8, v8

    mul-int/2addr v8, v4

    add-int/2addr v8, v3

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->ownerHud743:[I

    iget v8, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    mul-int/2addr v8, v4

    add-int/2addr v8, v3

    aget v7, v7, v8

    if-ne v7, v5, :cond_2

    .line 1038
    const-string v7, "\u0414\u0412\u0418\u0416\u0415\u041d\u0418\u0415"

    goto :goto_0

    :cond_2
    const-string v7, "\u041e\u0416\u0418\u0414\u0410\u041d\u0418\u0415"

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1039
    .local v1, "info":Ljava/lang/String;
    goto :goto_1

    .end local v1    # "info":Ljava/lang/String;
    :cond_3
    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedEnemy674:I

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedEnemy674:I

    iget-object v6, v0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v6, v6

    if-ge v1, v6, :cond_4

    .line 1040
    iget-object v1, v0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    iget v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedEnemy674:I

    aget-object v1, v1, v6

    .line 1041
    .local v1, "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    sget-object v6, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->UNIT_NAMES674:[Ljava/lang/String;

    iget v7, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    invoke-static {v6, v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->labelFrom674([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1042
    .local v1, "info":Ljava/lang/String;
    goto :goto_1

    .end local v1    # "info":Ljava/lang/String;
    :cond_4
    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedBuilding674:I

    if-ltz v1, :cond_5

    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedBuilding674:I

    iget-object v6, v0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->buildings:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;

    array-length v6, v6

    if-ge v1, v6, :cond_5

    .line 1043
    iget-object v1, v0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->buildings:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;

    iget v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedBuilding674:I

    aget-object v1, v1, v6

    .line 1044
    .local v1, "b":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    sget-object v6, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->STRUCTURE_NAMES674:[Ljava/lang/String;

    iget v7, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->type:I

    invoke-static {v6, v7}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->labelFrom674([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1045
    .local v1, "info":Ljava/lang/String;
    goto :goto_1

    .end local v1    # "info":Ljava/lang/String;
    :cond_5
    const-string v1, "\u0412\u044b\u0431\u0435\u0440\u0438 \u043e\u0431\u044a\u0435\u043a\u0442"

    .line 1048
    .restart local v1    # "info":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastPulseFailure729:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 1049
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\u041e\u0448\u0438\u0431\u043a\u0430 \u0446\u0438\u043a\u043b\u0430 (\u2630): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastPulseFailure729:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1051
    :cond_6
    iget-object v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->gameBar674:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1052
    iget-object v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseLabel676:Landroid/widget/TextView;

    const/4 v7, 0x0

    if-eqz v6, :cond_8

    .line 1053
    new-array v6, v4, [Ljava/lang/String;

    const-string v8, "\u0425\u0410\u0420\u041a\u041e\u041d\u041d\u0415\u041d\u042b"

    aput-object v8, v6, v7

    const-string v8, "\u0410\u0422\u0420\u0415\u0419\u0414\u0415\u0421\u042b"

    aput-object v8, v6, v5

    const-string v8, "\u041e\u0420\u0414\u041e\u0421\u042b"

    aput-object v8, v6, v3

    .line 1054
    .local v6, "houses":[Ljava/lang/String;
    iget-object v8, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    .line 1055
    .local v8, "house":I
    iget-object v9, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseLabel676:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    if-ltz v8, :cond_7

    array-length v11, v6

    if-ge v8, v11, :cond_7

    aget-object v11, v6, v8

    goto :goto_2

    :cond_7
    const-string v11, "RAZOR"

    :goto_2
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v10, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->missionSpinner:Landroid/widget/Spinner;

    .line 1056
    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    add-int/2addr v10, v5

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1055
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1058
    .end local v6    # "houses":[Ljava/lang/String;
    .end local v8    # "house":I
    :cond_8
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->creditsText743:Landroid/widget/TextView;

    if-eqz v2, :cond_b

    .line 1059
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->creditsText743:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->finance576:Lcom/ahsim/demulation/RazorFinanceLive576;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->finance576:Lcom/ahsim/demulation/RazorFinanceLive576;

    iget v6, v6, Lcom/ahsim/demulation/RazorFinanceLive576;->phase:I

    if-eqz v6, :cond_9

    .line 1060
    iget-object v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->finance576:Lcom/ahsim/demulation/RazorFinanceLive576;

    iget v6, v6, Lcom/ahsim/demulation/RazorFinanceLive576;->credits:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 1061
    :cond_9
    iget v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->verifiedStartingCredits743:I

    if-ltz v6, :cond_a

    iget v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->verifiedStartingCredits743:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_a
    const-string v6, "\u2014"

    .line 1059
    :goto_3
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1062
    :cond_b
    const/4 v2, 0x0

    .local v2, "hp743":I
    const/4 v6, 0x0

    .line 1063
    .local v6, "max743":I
    const/4 v8, 0x0

    .line 1064
    .local v8, "selection743":Z
    iget-object v9, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->ownerHud743:[I

    if-eqz v9, :cond_c

    iget v9, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    if-ltz v9, :cond_c

    iget-object v9, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->ownerHud743:[I

    array-length v9, v9

    iget-object v10, v0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v10, v10

    mul-int/2addr v10, v4

    add-int/2addr v10, v3

    if-ne v9, v10, :cond_c

    iget v9, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    iget-object v10, v0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v10, v10

    if-ge v9, v10, :cond_c

    .line 1067
    iget-object v9, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->ownerHud743:[I

    iget v10, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    mul-int/2addr v10, v4

    add-int/2addr v10, v4

    aget v2, v9, v10

    .line 1068
    iget-object v9, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->ownerHud743:[I

    iget v10, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    mul-int/2addr v10, v4

    add-int/lit8 v10, v10, 0x4

    aget v6, v9, v10

    .line 1069
    const/4 v8, 0x1

    .line 1071
    :cond_c
    iget-object v9, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->hpText743:Landroid/widget/TextView;

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->hpText743:Landroid/widget/TextView;

    if-lez v6, :cond_d

    const-string v10, ""

    goto :goto_4

    :cond_d
    const-string v10, "HP \u2014"

    :goto_4
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1072
    :cond_e
    iget-object v9, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->hpTrack743:Landroid/widget/FrameLayout;

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->hpFill743:Landroid/view/View;

    if-eqz v9, :cond_10

    iget v9, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastHp743:I

    if-ne v2, v9, :cond_f

    iget v9, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastMaxHp743:I

    if-eq v6, v9, :cond_10

    .line 1074
    :cond_f
    iput v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastHp743:I

    iput v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastMaxHp743:I

    .line 1075
    move v9, v2

    .local v9, "value743":I
    move v10, v6

    .line 1076
    .local v10, "maximum743":I
    iget-object v11, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->hpTrack743:Landroid/widget/FrameLayout;

    new-instance v12, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda69;

    invoke-direct {v12, p0, v10, v9}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda69;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;II)V

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 1087
    .end local v9    # "value743":I
    .end local v10    # "maximum743":I
    :cond_10
    if-eqz v8, :cond_11

    iget-object v9, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->ownerHud743:[I

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->ownerHud743:[I

    iget v10, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    mul-int/2addr v10, v4

    add-int/2addr v10, v3

    aget v3, v9, v10

    if-eqz v3, :cond_11

    move v3, v5

    goto :goto_5

    :cond_11
    move v3, v7

    .line 1089
    .local v3, "runningOrder744":Z
    :goto_5
    iget-object v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->deployButton726:Landroid/widget/Button;

    const/16 v9, 0x8

    if-eqz v4, :cond_15

    .line 1090
    iget v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    if-ltz v4, :cond_12

    iget v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    iget-object v10, v0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v10, v10

    if-ge v4, v10, :cond_12

    iget-object v4, v0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    iget v10, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    aget-object v4, v4, v10

    iget-boolean v4, v4, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->retired:Z

    if-nez v4, :cond_12

    iget-object v4, v0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    iget v10, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    aget-object v4, v4, v10

    iget v4, v4, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    const/16 v10, 0x11

    if-ne v4, v10, :cond_12

    iget-object v4, v0, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    iget v10, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    aget-object v4, v4, v10

    iget v4, v4, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->owner:I

    if-ne v4, v5, :cond_12

    iget-object v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    .line 1095
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-ne v4, v5, :cond_12

    iget v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    iget v10, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->deployedSource726:I

    if-eq v4, v10, :cond_12

    move v4, v5

    goto :goto_6

    :cond_12
    move v4, v7

    .line 1099
    .local v4, "mcv":Z
    :goto_6
    iget-object v10, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->deployButton726:Landroid/widget/Button;

    if-eqz v4, :cond_13

    if-nez v3, :cond_13

    .line 1100
    move v11, v7

    goto :goto_7

    :cond_13
    move v11, v9

    .line 1099
    :goto_7
    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 1101
    iget-object v10, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->deployButton726:Landroid/widget/Button;

    if-eqz v4, :cond_14

    if-nez v3, :cond_14

    iget-boolean v11, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapActionPending559:Z

    if-nez v11, :cond_14

    move v11, v5

    goto :goto_8

    :cond_14
    move v11, v7

    :goto_8
    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1103
    .end local v4    # "mcv":Z
    :cond_15
    iget-object v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->stopButton676:Landroid/widget/Button;

    if-eqz v4, :cond_18

    .line 1104
    iget-object v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->stopButton676:Landroid/widget/Button;

    if-eqz v3, :cond_16

    move v9, v7

    :cond_16
    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1105
    iget-object v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->stopButton676:Landroid/widget/Button;

    if-eqz v3, :cond_17

    iget-boolean v9, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapActionPending559:Z

    if-nez v9, :cond_17

    goto :goto_9

    :cond_17
    move v5, v7

    :goto_9
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1107
    :cond_18
    invoke-direct {p0, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updatePortrait676(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;)V

    .line 1108
    iget-object v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->pauseButton674:Landroid/widget/Button;

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->pauseButton674:Landroid/widget/Button;

    iget-boolean v5, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxRunning560:Z

    if-eqz v5, :cond_19

    const-string v5, "\u041f\u0430\u0443\u0437\u0430"

    goto :goto_a

    :cond_19
    const-string v5, "\u041f\u0440\u043e\u0434\u043e\u043b\u0436\u0438\u0442\u044c"

    :goto_a
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1109
    :cond_1a
    return-void

    .line 1028
    .end local v0    # "state":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .end local v1    # "info":Ljava/lang/String;
    .end local v2    # "hp743":I
    .end local v3    # "runningOrder744":Z
    .end local v6    # "max743":I
    .end local v8    # "selection743":Z
    :cond_1b
    :goto_b
    return-void
.end method

.method private updateMapActions559()V
    .locals 8

    .line 2250
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapAdvance559:Landroid/widget/Button;

    if-nez v0, :cond_0

    goto/16 :goto_e

    .line 2251
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->construction571:Lcom/ahsim/demulation/RazorConstruction571;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->construction571:Lcom/ahsim/demulation/RazorConstruction571;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorConstruction571;->busy()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2252
    .local v0, "refineryActive":Z
    :goto_0
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->refineryButton570:Landroid/widget/Button;

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v3, :cond_7

    .line 2253
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->refineryButton570:Landroid/widget/Button;

    iget-object v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapActionPending559:Z

    if-nez v6, :cond_2

    iget v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->demoHandle569:I

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->construction571:Lcom/ahsim/demulation/RazorConstruction571;

    if-eqz v6, :cond_2

    move v6, v2

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2255
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->construction571:Lcom/ahsim/demulation/RazorConstruction571;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->construction571:Lcom/ahsim/demulation/RazorConstruction571;

    iget v3, v3, Lcom/ahsim/demulation/RazorConstruction571;->phase:I

    .line 2256
    .local v3, "phase":I
    :goto_2
    iget-object v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->refineryButton570:Landroid/widget/Button;

    if-nez v3, :cond_4

    .line 2257
    sget v7, Lcom/ahsim/demulation/R$string;->razor_order571_start:I

    goto :goto_3

    .line 2258
    :cond_4
    if-ne v3, v5, :cond_6

    .line 2259
    iget-object v7, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->finance576:Lcom/ahsim/demulation/RazorFinanceLive576;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->finance576:Lcom/ahsim/demulation/RazorFinanceLive576;

    iget v7, v7, Lcom/ahsim/demulation/RazorFinanceLive576;->phase:I

    if-eq v7, v4, :cond_5

    .line 2260
    sget v7, Lcom/ahsim/demulation/R$string;->razor_order571_reset:I

    goto :goto_3

    :cond_5
    sget v7, Lcom/ahsim/demulation/R$string;->razor_order571_finish:I

    goto :goto_3

    .line 2261
    :cond_6
    sget v7, Lcom/ahsim/demulation/R$string;->razor_order571_reset:I

    .line 2256
    :goto_3
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 2263
    .end local v3    # "phase":I
    :cond_7
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->financeButton576:Landroid/widget/Button;

    if-eqz v3, :cond_e

    .line 2264
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->finance576:Lcom/ahsim/demulation/RazorFinanceLive576;

    if-nez v3, :cond_8

    move v3, v1

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->finance576:Lcom/ahsim/demulation/RazorFinanceLive576;

    iget v3, v3, Lcom/ahsim/demulation/RazorFinanceLive576;->phase:I

    .line 2265
    .restart local v3    # "phase":I
    :goto_4
    iget-object v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->financeButton576:Landroid/widget/Button;

    iget-object v7, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    if-eqz v7, :cond_a

    iget-boolean v7, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    iget-object v7, v7, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    iget-object v7, v7, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    .line 2266
    invoke-virtual {v7}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romVariant()I

    move-result v7

    if-ne v7, v2, :cond_a

    iget-boolean v7, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapActionPending559:Z

    if-nez v7, :cond_a

    iget v7, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->demoHandle569:I

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->construction571:Lcom/ahsim/demulation/RazorConstruction571;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->construction571:Lcom/ahsim/demulation/RazorConstruction571;

    iget v7, v7, Lcom/ahsim/demulation/RazorConstruction571;->phase:I

    if-ne v7, v5, :cond_a

    if-eqz v3, :cond_9

    if-eq v3, v2, :cond_9

    if-eq v3, v5, :cond_9

    if-ne v3, v4, :cond_a

    :cond_9
    move v4, v2

    goto :goto_5

    :cond_a
    move v4, v1

    .line 2265
    :goto_5
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2272
    iget-object v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->financeButton576:Landroid/widget/Button;

    if-nez v3, :cond_b

    .line 2273
    sget v5, Lcom/ahsim/demulation/R$string;->razor_finance576_start:I

    goto :goto_7

    .line 2274
    :cond_b
    if-eq v3, v2, :cond_d

    if-ne v3, v5, :cond_c

    goto :goto_6

    .line 2275
    :cond_c
    sget v5, Lcom/ahsim/demulation/R$string;->razor_finance576_cancel:I

    goto :goto_7

    :cond_d
    :goto_6
    sget v5, Lcom/ahsim/demulation/R$string;->razor_finance576_pay:I

    .line 2272
    :goto_7
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 2277
    .end local v3    # "phase":I
    :cond_e
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lifecycleDemoButton569:Landroid/widget/Button;

    if-eqz v3, :cond_11

    .line 2278
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lifecycleDemoButton569:Landroid/widget/Button;

    iget-object v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    if-eqz v4, :cond_f

    iget-boolean v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v4, :cond_f

    iget-boolean v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapActionPending559:Z

    if-nez v4, :cond_f

    if-nez v0, :cond_f

    move v4, v2

    goto :goto_8

    :cond_f
    move v4, v1

    :goto_8
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2281
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lifecycleDemoButton569:Landroid/widget/Button;

    iget v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->demoHandle569:I

    if-nez v4, :cond_10

    .line 2282
    sget v4, Lcom/ahsim/demulation/R$string;->razor_demo569_create:I

    goto :goto_9

    :cond_10
    sget v4, Lcom/ahsim/demulation/R$string;->razor_demo569_retire:I

    .line 2281
    :goto_9
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 2284
    :cond_11
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxButton560:Landroid/widget/Button;

    if-eqz v3, :cond_14

    .line 2285
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxButton560:Landroid/widget/Button;

    iget-object v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    if-eqz v4, :cond_12

    iget-boolean v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v4, :cond_12

    iget v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->demoHandle569:I

    if-nez v4, :cond_12

    if-nez v0, :cond_12

    move v4, v2

    goto :goto_a

    :cond_12
    move v4, v1

    :goto_a
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2287
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxButton560:Landroid/widget/Button;

    iget-boolean v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxRunning560:Z

    if-eqz v4, :cond_13

    .line 2288
    sget v4, Lcom/ahsim/demulation/R$string;->razor_auto560_pause:I

    goto :goto_b

    :cond_13
    sget v4, Lcom/ahsim/demulation/R$string;->razor_auto560_start:I

    .line 2287
    :goto_b
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 2290
    :cond_14
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    if-eqz v3, :cond_15

    iget v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    if-ltz v3, :cond_15

    iget v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    iget-object v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    iget-object v4, v4, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v4, v4

    if-ge v3, v4, :cond_15

    iget-boolean v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapActionPending559:Z

    if-nez v3, :cond_15

    iget v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->demoHandle569:I

    if-nez v3, :cond_15

    if-nez v0, :cond_15

    move v3, v2

    goto :goto_c

    :cond_15
    move v3, v1

    .line 2294
    .local v3, "chosen":Z
    :goto_c
    iget-object v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapAdvance559:Landroid/widget/Button;

    if-eqz v3, :cond_16

    iget-object v5, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    iget v5, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->activeUnit:I

    iget v6, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    if-ne v5, v6, :cond_16

    move v5, v2

    goto :goto_d

    :cond_16
    move v5, v1

    :goto_d
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2295
    iget-object v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->mapCancel559:Landroid/widget/Button;

    if-eqz v3, :cond_17

    iget-object v5, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    iget v5, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->activeUnit:I

    if-ltz v5, :cond_17

    move v1, v2

    :cond_17
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2296
    return-void

    .line 2250
    .end local v0    # "refineryActive":Z
    .end local v3    # "chosen":Z
    :cond_18
    :goto_e
    return-void
.end method

.method private updatePortrait676(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;)V
    .locals 8
    .param p1, "state"    # Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    .line 958
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->unitPortrait676:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 959
    :cond_0
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->originalSprites674:Lcom/ahsim/demulation/GenesisObjectArt;

    .line 960
    .local v1, "art":Lcom/ahsim/demulation/GenesisObjectArt;
    if-eqz v1, :cond_6

    if-nez p1, :cond_1

    goto/16 :goto_2

    .line 967
    :cond_1
    const/4 v0, 0x0

    .line 968
    .local v0, "img":Landroid/graphics/Bitmap;
    :try_start_0
    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    iget-object v3, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 969
    iget-object v2, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    iget v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    aget-object v2, v2, v3

    move-object v7, v2

    .line 970
    .local v7, "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    iget v2, v7, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    if-ltz v2, :cond_2

    iget v2, v7, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    const/16 v3, 0x1b

    if-ge v2, v3, :cond_2

    .line 971
    iget v2, v7, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    iget v6, v7, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->owner:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/ahsim/demulation/GenesisObjectArt;->getUnitFrame(IIIII)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    move-result-object v2

    .line 972
    .local v2, "f":Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;->bitmap:Landroid/graphics/Bitmap;

    move-object v0, v3

    .line 974
    .end local v2    # "f":Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    .end local v7    # "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    :cond_2
    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedBuilding674:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedBuilding674:I

    iget-object v3, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->buildings:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 975
    iget-object v2, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->buildings:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;

    iget v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedBuilding674:I

    aget-object v2, v2, v3

    .line 976
    .local v2, "b":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    iget v3, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->type:I

    if-ltz v3, :cond_4

    iget v3, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->type:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_4

    iget v3, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->type:I

    const/16 v4, 0x208

    invoke-virtual {v1, v3, v4, v4}, Lcom/ahsim/demulation/GenesisObjectArt;->getPreferredStructureMetatileBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    .line 978
    .end local v2    # "b":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->portraitBitmap676:Landroid/graphics/Bitmap;

    if-eq v0, v2, :cond_5

    .line 979
    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->portraitBitmap676:Landroid/graphics/Bitmap;

    .line 980
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->unitPortrait676:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    .end local v0    # "img":Landroid/graphics/Bitmap;
    :cond_5
    goto :goto_1

    .line 982
    :catch_0
    move-exception v0

    .line 983
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v2, "RazorTerrainPreview"

    const-string v3, "Razor portrait unavailable"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 984
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runtimeDiagnostics749:Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;

    const-string v3, "PORTRAIT"

    invoke-virtual {v2, v3, v0}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 986
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :goto_1
    return-void

    .line 961
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->portraitBitmap676:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    .line 962
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->portraitBitmap676:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->unitPortrait676:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 964
    :cond_7
    return-void
.end method

.method private updateQuickHud662(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;)V
    .locals 23
    .param p1, "frame"    # Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    .line 2455
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v2, :cond_16

    iget-object v2, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickHud662:Landroid/widget/TextView;

    if-eqz v2, :cond_16

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 2456
    :cond_0
    sget v2, Lcom/ahsim/demulation/R$string;->razor_quick662_hud:I

    iget-object v3, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v3, v3

    .line 2457
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->buildings:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxTicks560:I

    .line 2458
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxMoves560:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->gameTicks:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v3

    .line 2456
    invoke-virtual {v0, v2, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2459
    .local v2, "text":Ljava/lang/String;
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->coreSnapshot663:Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;

    const-string v4, "\n"

    if-eqz v3, :cond_1

    .line 2460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v5, Lcom/ahsim/demulation/R$string;->razor_core663_status:I

    iget-object v6, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->coreSnapshot663:Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;

    iget v6, v6, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;->unitCount:I

    .line 2461
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->coreSnapshot663:Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;

    iget v7, v7, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;->buildingCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 2460
    invoke-virtual {v0, v5, v6}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2462
    :cond_1
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->routeWitness664:Lcom/ahsim/demulation/RazorCoreRoute664;

    if-eqz v3, :cond_2

    iget v3, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->activeUnit:I

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->routeWitness664:Lcom/ahsim/demulation/RazorCoreRoute664;

    iget v5, v5, Lcom/ahsim/demulation/RazorCoreRoute664;->unit:I

    if-ne v3, v5, :cond_2

    .line 2463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v5, Lcom/ahsim/demulation/R$string;->razor_route664_hint:I

    invoke-virtual {v0, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->routeWitness664:Lcom/ahsim/demulation/RazorCoreRoute664;

    invoke-virtual {v5}, Lcom/ahsim/demulation/RazorCoreRoute664;->describe()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v5, Lcom/ahsim/demulation/R$string;->razor_route665_active:I

    .line 2464
    invoke-virtual {v0, v5}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2465
    :cond_2
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->facing666:[I

    const/4 v5, 0x1

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x2

    if-eqz v3, :cond_3

    iget v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    if-ltz v3, :cond_3

    iget v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    iget-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->facing666:[I

    aget v9, v9, v5

    if-ge v3, v9, :cond_3

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->facing666:[I

    iget v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    mul-int/2addr v9, v8

    add-int/2addr v9, v7

    aget v3, v3, v9

    if-ne v3, v5, :cond_3

    .line 2468
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/ahsim/demulation/R$string;->razor_facing666_hint:I

    iget-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->facing666:[I

    iget v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    mul-int/2addr v10, v8

    add-int/2addr v10, v6

    aget v9, v9, v10

    .line 2469
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    .line 2468
    invoke-virtual {v0, v4, v9}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2470
    :cond_3
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->corePass667:[I

    const/16 v4, 0xa

    const/4 v9, 0x0

    const/4 v10, 0x3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->corePass667:[I

    array-length v3, v3

    if-ne v3, v4, :cond_4

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->corePass667:[I

    aget v3, v3, v9

    const/16 v11, 0x29b

    if-ne v3, v11, :cond_4

    .line 2471
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, "\nC-\u044f\u0434\u0440\u043e: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v11, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->corePass667:[I

    aget v5, v11, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " \u043f\u0440\u043e\u0445\u043e\u0434\u043e\u0432 \u00b7 \u044e\u043d\u0438\u0442\u043e\u0432 \u043f\u0440\u043e\u0432\u0435\u0440\u0435\u043d\u043e: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->corePass667:[I

    aget v5, v5, v8

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " \u00b7 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0439: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->corePass667:[I

    aget v5, v5, v10

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\nRazor EMC / \u043e\u0440\u0438\u0433\u0438\u043d\u0430\u043b\u044c\u043d\u044b\u0435 \u0442\u0438\u043a\u0438: 0 / 0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2475
    :cond_4
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->coreCadence668:[I

    const/4 v5, 0x4

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->coreCadence668:[I

    array-length v3, v3

    if-ne v3, v4, :cond_5

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->coreCadence668:[I

    aget v3, v3, v9

    const/16 v4, 0x29c

    if-ne v3, v4, :cond_5

    .line 2476
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\u0422\u0430\u0439\u043c\u0435\u0440\u044b C-\u044f\u0434\u0440\u0430 (Genesis): \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435/3="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->coreCadence668:[I

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u00b7 \u043f\u043e\u0432\u043e\u0440\u043e\u0442/2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->coreCadence668:[I

    aget v4, v4, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u00b7 EMC/5 \u0433\u043e\u0442\u043e\u0432="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->coreCadence668:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (\u0441\u043a\u0440\u0438\u043f\u0442\u044b Razor \u0435\u0449\u0451 \u043d\u0435 \u0438\u0441\u043f\u043e\u043b\u043d\u044f\u044e\u0442\u0441\u044f)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2480
    :cond_5
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->unitInfo669:[I

    const/16 v4, 0x20

    const/4 v11, 0x5

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->unitInfo669:[I

    array-length v3, v3

    const/16 v12, 0x64

    if-ne v3, v12, :cond_6

    iget v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    if-ltz v3, :cond_6

    iget v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    iget-object v12, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v12, v12

    if-ge v3, v12, :cond_6

    .line 2483
    iget-object v3, v1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    iget v12, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    aget-object v3, v3, v12

    iget v3, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    .line 2484
    .local v3, "type":I
    if-ltz v3, :cond_6

    if-ge v3, v4, :cond_6

    .line 2485
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\nUnitInfo ROM: \u0442\u0438\u043f "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " \u00b7 \u0441\u043a\u043e\u0440\u043e\u0441\u0442\u044c +42="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->unitInfo669:[I

    mul-int/lit8 v14, v3, 0x3

    add-int/2addr v14, v5

    aget v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " \u00b7 \u043f\u043e\u0432\u043e\u0440\u043e\u0442 +44="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->unitInfo669:[I

    mul-int/lit8 v14, v3, 0x3

    add-int/2addr v14, v11

    aget v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " \u00b7 \u043a\u043b\u0430\u0441\u0441 +3E="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->unitInfo669:[I

    mul-int/lit8 v14, v3, 0x3

    add-int/2addr v14, v7

    aget v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (\u043a\u043e\u043c\u0430\u043d\u0434\u0430 \u0441\u043a\u043e\u0440\u043e\u0441\u0442\u0438 EMC \u0435\u0449\u0451 \u043d\u0435 \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u0430)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2491
    .end local v3    # "type":I
    :cond_6
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedStatus670:[I

    const-string v12, "/"

    const/16 v13, 0xc

    const/16 v14, 0x9

    const/16 v15, 0x8

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedStatus670:[I

    array-length v3, v3

    if-ne v3, v13, :cond_8

    .line 2492
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v16, v5

    const-string v5, "\n\u0421\u043a\u043e\u0440\u043e\u0441\u0442\u044c ROM, \u043a\u043e\u043c\u0430\u043d\u0434\u0430 \u0433\u0440\u0443\u043d\u0442\u0430 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedStatus670:[I

    aget v5, v5, v8

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (128 \u0435\u0441\u043b\u0438 \u043d\u0435\u0438\u0437\u0432\u0435\u0441\u0442\u0435\u043d): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2493
    iget-boolean v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedEnabled670:Z

    if-eqz v5, :cond_7

    const-string v5, "\u0412\u041a\u041b"

    goto :goto_0

    :cond_7
    const-string v5, "\u0412\u042b\u041a\u041b"

    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " \u00b7 \u043a\u043b\u0435\u0442\u043e\u043a/\u043e\u0436\u0438\u0434\u0430\u043d\u0438\u0439 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedStatus670:[I

    aget v5, v5, v16

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedStatus670:[I

    aget v5, v5, v11

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " \u00b7 \u0431\u0430\u0437\u043e\u0432\u044b\u0439 \u0448\u0430\u0433 Genesis "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedStatus670:[I

    aget v5, v5, v15

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", \u0434\u0440\u043e\u0431\u043d\u0430\u044f \u0447\u0430\u0441\u0442\u044c "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->speedStatus670:[I

    aget v5, v5, v14

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 2491
    :cond_8
    move/from16 v16, v5

    .line 2498
    :goto_1
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus671:[I

    const-string v5, " \u00b7 "

    move/from16 v17, v6

    const-string v6, " \u00b7 \u043e\u0440\u0438\u0433\u0438\u043d\u0430\u043b\u044c\u043d\u044b\u0445 \u0442\u0438\u043a\u043e\u0432: 0"

    const/16 v18, 0x12

    move/from16 v19, v7

    const-string v7, "FUNCTION \u2116"

    const/16 v20, 0xd

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus671:[I

    array-length v3, v3

    move/from16 v21, v9

    const/16 v9, 0x14

    if-ne v3, v9, :cond_d

    .line 2499
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus671:[I

    aget v3, v3, v17

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus671:[I

    aget v9, v9, v18

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ": \u043e\u0436\u0438\u0434\u0430\u0435\u0442 \u0430\u0434\u0430\u043f\u0442\u0435\u0440"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 2500
    :cond_9
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus671:[I

    aget v3, v3, v20

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u043e\u0448\u0438\u0431\u043a\u0430 VM "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus671:[I

    aget v9, v9, v20

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 2501
    :cond_a
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus671:[I

    aget v3, v3, v15

    if-nez v3, :cond_b

    const-string v3, "\u0441\u0446\u0435\u043d\u0430\u0440\u0438\u0439 \u0437\u0430\u0432\u0435\u0440\u0448\u0451\u043d"

    goto :goto_2

    :cond_b
    const-string v3, "\u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u043e\u0435 \u0438\u0441\u043f\u043e\u043b\u043d\u0435\u043d\u0438\u0435"

    :goto_2
    nop

    .line 2502
    .local v3, "vmState":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v22, v10

    const-string v10, "\nUNIT.EMC \u0438\u0437 ROM: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus671:[I

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \u043a\u043e\u043c\u0430\u043d\u0434 \u00b7 PC "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus671:[I

    aget v10, v10, v16

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 2498
    .end local v3    # "vmState":Ljava/lang/String;
    :cond_c
    move/from16 v21, v9

    :cond_d
    move/from16 v22, v10

    .line 2506
    :goto_3
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildStatus715:[I

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildStatus715:[I

    array-length v3, v3

    const/16 v9, 0x10

    if-ne v3, v9, :cond_e

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildStatus715:[I

    aget v3, v3, v21

    const/16 v9, 0x2cb

    if-ne v3, v9, :cond_e

    .line 2508
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "\nBUILD.EMC (ROM): \u0437\u0430\u0433\u0440\u0443\u0436\u0435\u043d\u043e "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildStatus715:[I

    aget v9, v9, v22

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildStatus715:[I

    aget v9, v9, v8

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " \u00b7 \u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u044b\u0445 \u043a\u043e\u043c\u0430\u043d\u0434 "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildStatus715:[I

    aget v9, v9, v19

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " \u00b7 \u0432\u044b\u0437\u043e\u0432\u043e\u0432 FUNCTION \u0437\u0430\u043a\u0440\u044b\u0442\u043e "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v9, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildStatus715:[I

    aget v9, v9, v17

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2514
    :cond_e
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildOwner716:[I

    const-string v6, ","

    if-eqz v3, :cond_11

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildOwner716:[I

    array-length v3, v3

    if-ne v3, v4, :cond_11

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildOwner716:[I

    aget v3, v3, v21

    const/16 v4, 0x2cc

    if-ne v3, v4, :cond_11

    .line 2516
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildOwner716:[I

    const/16 v4, 0x11

    aget v3, v3, v4

    if-nez v3, :cond_f

    .line 2517
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildOwner716:[I

    aget v4, v4, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u0437\u0430\u043a\u0440\u044b\u0442\u0430"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 2518
    :cond_f
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildOwner716:[I

    const/16 v4, 0x11

    aget v3, v3, v4

    if-ne v3, v8, :cond_10

    const-string v3, "VM \u043e\u0436\u0438\u0434\u0430\u0435\u0442 \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0438"

    goto :goto_4

    :cond_10
    const-string v3, "\u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u044b\u0439 \u0443\u0447\u0430\u0441\u0442\u043e\u043a"

    :goto_4
    nop

    .line 2519
    .local v3, "state":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\nBUILD owner C-\u043c\u043e\u0434\u0435\u043b\u044c \u2116"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildOwner716:[I

    aget v7, v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " (\u0442\u0438\u043f "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildOwner716:[I

    aget v7, v7, v16

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildOwner716:[I

    aget v7, v7, v19

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildOwner716:[I

    aget v7, v7, v17

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ") PC="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildOwner716:[I

    aget v7, v7, v15

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " delay="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildOwner716:[I

    aget v7, v7, v14

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2524
    .end local v3    # "state":Ljava/lang/String;
    :cond_11
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus672:[I

    const/16 v4, 0x18

    if-eqz v3, :cond_13

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus672:[I

    array-length v3, v3

    if-ne v3, v4, :cond_13

    .line 2525
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\nUNIT.EMC \u0432\u0441\u0435 \u044e\u043d\u0438\u0442\u044b (\u0438\u0437\u043e\u043b\u0438\u0440\u043e\u0432\u0430\u043d\u043d\u043e): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus672:[I

    aget v5, v5, v16

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " \u0438\u043d\u0441\u0442\u0440\u0443\u043a\u0446\u0438\u0439 \u00b7 \u0440\u0430\u0431\u043e\u0442\u0430\u044e\u0442 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus672:[I

    aget v5, v5, v11

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " \u00b7 \u043e\u0436\u0438\u0434\u0430\u043d\u0438\u0435 FUNCTION "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus672:[I

    aget v5, v5, v19

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (\u211640: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus672:[I

    aget v5, v5, v14

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") \u00b7 \u0437\u0430\u0432\u0435\u0440\u0448\u0435\u043d\u044b "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus672:[I

    aget v5, v5, v17

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " \u00b7 \u043e\u0448\u0438\u0431\u043a\u0438 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus672:[I

    aget v5, v5, v15

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2531
    iget v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    if-ltz v3, :cond_13

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus672:[I

    const/16 v5, 0xb

    aget v3, v3, v5

    iget v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    if-ne v3, v5, :cond_13

    .line 2532
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\nEMC \u044e\u043d\u0438\u0442\u0430 \u2116"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": PC="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus672:[I

    aget v5, v5, v13

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " \u00b7 \u043a\u043e\u043c\u0430\u043d\u0434 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus672:[I

    aget v5, v5, v20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2535
    iget-object v5, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus672:[I

    const/16 v7, 0x17

    aget v5, v5, v7

    if-ne v5, v8, :cond_12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " \u00b7 FUNCTION \u2116"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcStatus672:[I

    const/16 v9, 0xe

    aget v7, v7, v9

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " \u0437\u0430\u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u043d\u0430"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_12
    const-string v5, ""

    :goto_5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2537
    :cond_13
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcOwner673:[I

    if-eqz v3, :cond_15

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcOwner673:[I

    array-length v3, v3

    if-ne v3, v4, :cond_15

    iget v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    if-ltz v3, :cond_15

    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcOwner673:[I

    aget v3, v3, v8

    iget v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    if-ne v3, v4, :cond_15

    .line 2539
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\u041f\u0440\u0438\u0432\u044f\u0437\u043a\u0430 EMC \u043a \u0442\u0435\u043a\u0443\u0449\u0435\u043c\u0443 \u044e\u043d\u0438\u0442\u0443: \u0442\u0438\u043f "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcOwner673:[I

    aget v4, v4, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u00b7 \u043e\u0431\u044a\u0435\u043a\u0442 \u2116"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcOwner673:[I

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u00b7 \u043f\u043e\u0437\u0438\u0446\u0438\u044f "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcOwner673:[I

    aget v4, v4, v15

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcOwner673:[I

    aget v4, v4, v14

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u00b7 PC "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcOwner673:[I

    const/16 v5, 0xb

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2543
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcOwner673:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    if-eqz v3, :cond_14

    .line 2544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u00b7 \u043e\u0431\u044a\u0435\u043a\u0442 \u043f\u0435\u0440\u0435\u043c\u0435\u0441\u0442\u0438\u043b\u0441\u044f \u0438\u0437 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcOwner673:[I

    aget v4, v4, v19

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcOwner673:[I

    aget v4, v4, v17

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2545
    :cond_14
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->emcOwner673:[I

    aget v3, v3, v20

    const/16 v4, 0x28

    if-ne v3, v4, :cond_15

    .line 2546
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nF40: \u0432\u043b\u0430\u0434\u0435\u043b\u0435\u0446 \u0441\u0432\u044f\u0437\u0430\u043d \u0441 C-\u043c\u0438\u0440\u043e\u043c; \u0444\u043b\u0430\u0433\u0438 68K \u043d\u0435 \u0438\u0437\u0432\u0435\u0441\u0442\u043d\u044b, \u0432\u044b\u0437\u043e\u0432 \u0437\u0430\u043a\u0440\u044b\u0442"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2548
    :cond_15
    iget-object v3, v0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickHud662:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2549
    return-void

    .line 2455
    .end local v2    # "text":Ljava/lang/String;
    :cond_16
    :goto_6
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 901
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 902
    const/16 v0, 0x2e5

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    .line 903
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 904
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 905
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, 0x1

    .line 906
    .local v1, "flags":I
    const/4 v2, 0x0

    .line 908
    .local v2, "durableGrant741":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    const/4 v2, 0x1

    .line 914
    goto :goto_1

    .line 910
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    .line 913
    .local v3, "ex":Ljava/lang/RuntimeException;
    :goto_0
    const-string v4, "RazorTerrainPreview"

    const-string v5, "Razor art URI permission is session-only"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 915
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    :goto_1
    move v3, v2

    .line 916
    .local v3, "persist741":Z
    const-string v4, "\u041f\u043e\u0434\u0433\u043e\u0442\u0430\u0432\u043b\u0438\u0432\u0430\u0435\u0442\u0441\u044f \u0433\u0440\u0430\u0444\u0438\u043a\u0430 \u0432\u044b\u0431\u0440\u0430\u043d\u043d\u043e\u0439 Dune\u2026"

    iput-object v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->artStatus740:Ljava/lang/String;

    .line 917
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->updateGameBar674()V

    .line 918
    iget-object v4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda21;

    invoke-direct {v5, p0, v0, v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda21;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Landroid/net/Uri;Z)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 956
    return-void

    .line 903
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "flags":I
    .end local v2    # "durableGrant741":Z
    .end local v3    # "persist741":Z
    :cond_1
    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 730
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->showPlayMenu676()V

    goto :goto_0

    .line 731
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 732
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Bundle;

    .line 230
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 231
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "razor_map558_profile"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    .line 232
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "razor_quick_play662"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    .line 233
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->setRequestedOrientation(I)V

    .line 234
    :cond_2
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/ahsim/demulation/R$string;->razor_quick662_title:I

    goto :goto_1

    .line 235
    :cond_3
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/ahsim/demulation/R$string;->razor_map558_title:I

    goto :goto_1

    :cond_4
    sget v0, Lcom/ahsim/demulation/R$string;->razor_preview_title:I

    .line 234
    :goto_1
    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->setTitle(I)V

    .line 236
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildUi()V

    .line 237
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v0, :cond_5

    .line 238
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 240
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->installGameSurface674()V

    .line 242
    :cond_5
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->profile558:Z

    if-eqz v0, :cond_7

    .line 243
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "razor_map558_house"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 244
    .local v0, "house":I
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "razor_map558_mission"

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 245
    .local v1, "mission":I
    if-ltz v0, :cond_6

    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->houseSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 246
    :cond_6
    if-lt v1, v2, :cond_7

    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->missionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getCount()I

    move-result v2

    if-gt v1, v2, :cond_7

    .line 247
    iget-object v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->missionSpinner:Landroid/widget/Spinner;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 249
    .end local v0    # "house":I
    .end local v1    # "mission":I
    :cond_7
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->openSelectedMod()V

    .line 250
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 2890
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->stopFrame634()V

    .line 2891
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->pauseSandbox560()V

    .line 2892
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    .line 2893
    iget v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->requestedGeneration:I

    .line 2896
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda68;

    invoke-direct {v1, p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda68;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2902
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 2904
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->canvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->canvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->canvasBitmap:Landroid/graphics/Bitmap;

    .line 2905
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2906
    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 2842
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runtimeDiagnostics749:Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause C="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxTicks560:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->selectedUnitOrdinal559:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LIFECYCLE"

    invoke-virtual {v0, v2, v1}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->event(Ljava/lang/String;Ljava/lang/String;)V

    .line 2844
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->stopFrame634()V

    .line 2845
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxRunning560:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastPulseFailure729:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->resumeAfterBackground741:Z

    .line 2847
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->resumeAfterBackground741:Z

    if-eqz v0, :cond_1

    const-string v0, "Android: \u0432\u0440\u0435\u043c\u0435\u043d\u043d\u0430\u044f \u043f\u0430\u0443\u0437\u0430 \u0432 \u0444\u043e\u043d\u0435"

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->pauseReason740:Ljava/lang/String;

    .line 2850
    :cond_1
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->autoStartPending662:Z

    if-eqz v0, :cond_2

    move v1, v2

    .line 2851
    .local v1, "pendingStart741":Z
    :cond_2
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->pauseSandbox560()V

    .line 2852
    if-eqz v1, :cond_3

    iput-boolean v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->autoStartPending662:Z

    .line 2853
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2854
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 2815
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2816
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->runtimeDiagnostics749:Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume, resume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->resumeAfterBackground741:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LIFECYCLE"

    invoke-virtual {v0, v2, v1}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->event(Ljava/lang/String;Ljava/lang/String;)V

    .line 2819
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->resumeAfterBackground741:Z

    if-eqz v0, :cond_0

    .line 2820
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->resumeAfterBackground741:Z

    .line 2821
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->campaignMapFrame559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->sandboxRunning560:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->lastPulseFailure729:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2823
    invoke-direct {p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->toggleSandbox560()V

    .line 2828
    :cond_0
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->quickPlay662:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->source:Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->originalSprites674:Lcom/ahsim/demulation/GenesisObjectArt;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->destroyed:Z

    if-nez v0, :cond_1

    .line 2829
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$$ExternalSyntheticLambda0;-><init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2839
    :cond_1
    return-void
.end method
