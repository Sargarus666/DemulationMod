.class public final Lcom/ahsim/demulation/LauncherActivity;
.super Landroid/app/Activity;
.source "LauncherActivity.java"


# static fields
.field private static final ACCENT:I

.field private static final ACCENT_DARK:I

.field private static final BG:I

.field private static final BLUE:I

.field private static final CARD:I

.field private static final CARD_ALT:I

.field private static final CATALOG_PREFS:Ljava/lang/String; = "launcher_catalog"

.field public static final EXTRA_BOOT_NOTICE:Ljava/lang/String; = "com.ahsim.demulation.extra.BOOT_NOTICE"

.field public static final EXTRA_FORCE_SETUP:Ljava/lang/String; = "com.ahsim.demulation.extra.FORCE_SETUP"

.field private static final GAME_DUNE_GENESIS:Ljava/lang/String; = "dune_battle_for_arrakis_genesis"

.field private static final GAME_RAZOR:Ljava/lang/String; = "dune_razor_missions_native"

.field private static final GRAPHICS_AUDIT_PREF:Ljava/lang/String; = "graphics_overlay_audit_621"

.field private static final KEY_CATALOG_MIGRATED:Ljava/lang/String; = "catalog_migrated_v554"

.field private static final KEY_SELECTED_GAME:Ljava/lang/String; = "selected_game"

.field private static final KEY_SHOW_LAUNCHER_ON_START:Ljava/lang/String; = "show_launcher_on_start_v2"

.field private static final MUTED:I

.field private static final REQUEST_OPEN_AUDIO_MOD:I = 0x914

.field private static final REQUEST_OPEN_MEDIA_MOD:I = 0x912

.field private static final REQUEST_OPEN_RAZOR_ROM:I = 0x9fa

.field private static final REQUEST_OPEN_ROM:I = 0x911

.field private static final REQUEST_OPEN_TRANSLATION:I = 0x913

.field private static final TAG:Ljava/lang/String; = "DemulationLauncher"

.field private static final TEXT:I

.field private static final TRANSLATION_PROFILE_RU:Ljava/lang/String; = "translation_ru_shedevr_lipetsk_usa"


# instance fields
.field private audioModButton:Landroid/widget/Button;

.field private audioModDetails:Landroid/widget/LinearLayout;

.field private audioModPanel:Landroid/widget/LinearLayout;

.field private audioModStatus:Landroid/widget/TextView;

.field private audioReportButton:Landroid/widget/Button;

.field private autoOpenRazor674:Z

.field private baseLanguageStatus:Landroid/widget/TextView;

.field private baseLocalizationRefreshInFlight:Z

.field private chooseButton:Landroid/widget/Button;

.field private currentIdentity:Lcom/ahsim/demulation/GenesisRomIdentity$Result;

.field private currentSelection:Lcom/ahsim/demulation/RomSelectionStore$Selection;

.field private detailsInfoPanel:Landroid/widget/LinearLayout;

.field private gameCatalogPanel:Landroid/widget/LinearLayout;

.field private gameDetailsPanel:Landroid/widget/LinearLayout;

.field private graphicsDetailsButton:Landroid/widget/Button;

.field private graphicsMissionPreviewButton:Landroid/widget/Button;

.field private identificationGeneration:I

.field private launchNextCheck:Landroid/widget/CheckBox;

.field private launcherPreferencePanel:Landroid/widget/LinearLayout;

.field private launcherStartupHint:Landroid/widget/TextView;

.field private mediaModStatus:Landroid/widget/TextView;

.field private modifiedAudioCheck:Landroid/widget/CheckBox;

.field private modifiedGraphicsBody:Landroid/widget/TextView;

.field private modifiedGraphicsCheck:Landroid/widget/CheckBox;

.field private modifiedGraphicsDetails:Landroid/widget/LinearLayout;

.field private modsButton:Landroid/widget/Button;

.field private objectNameEditorPanel:Lcom/ahsim/demulation/RomObjectNameEditorPanel;

.field private openGameAfterTranslationRefresh:Z

.field private openGameAvailable:Z

.field private optionalFeaturesPanel:Landroid/widget/LinearLayout;

.field private prepareBody:Landroid/widget/TextView;

.field private prepareCoreButton:Landroid/widget/Button;

.field private prepareProgress:Landroid/widget/ProgressBar;

.field private prepareStatus:Landroid/widget/TextView;

.field private prepareTitle:Landroid/widget/TextView;

.field private razorAnalysis:Lcom/ahsim/demulation/RazorRomAnalysis;

.field private razorCampaignSession:Lcom/ahsim/demulation/RazorCampaignNativeSession;

.field private razorGamePanel:Landroid/widget/LinearLayout;

.field private volatile razorGeneration:I

.field private razorMap558Button:Landroid/widget/Button;

.field private razorNativeAuditButton:Landroid/widget/Button;

.field private razorOrderAdvance557:Landroid/widget/Button;

.field private razorOrderCancel557:Landroid/widget/Button;

.field private razorOrderIssue557:Landroid/widget/Button;

.field private razorOrderUnit557:Landroid/widget/EditText;

.field private razorOrderX557:Landroid/widget/EditText;

.field private razorOrderY557:Landroid/widget/EditText;

.field private razorPreviewButton:Landroid/widget/Button;

.field private razorQuickPlay662Button:Landroid/widget/Button;

.field private razorRomName:Landroid/widget/TextView;

.field private razorSessionHouse:Landroid/widget/Spinner;

.field private final razorSessionLock:Ljava/lang/Object;

.field private razorSessionMission:Landroid/widget/Spinner;

.field private razorSessionPollButton:Landroid/widget/Button;

.field private razorSessionProbeButton:Landroid/widget/Button;

.field private volatile razorSessionSelectionGeneration:I

.field private razorSessionStartButton:Landroid/widget/Button;

.field private razorSessionStatus:Landroid/widget/TextView;

.field private razorSessionStopButton:Landroid/widget/Button;

.field private razorStatus:Landroid/widget/TextView;

.field private volatile romRoutingGeneration:I

.field private russianVoiceCheck:Landroid/widget/CheckBox;

.field private russianVoiceStatus:Landroid/widget/TextView;

.field private selectedAssetCompatibility:Landroid/widget/TextView;

.field private selectedCard:Landroid/widget/LinearLayout;

.field private selectedClearButton:Landroid/widget/TextView;

.field private selectedHeader:Landroid/widget/TextView;

.field private selectedLogicCompatibility:Landroid/widget/TextView;

.field private selectedName:Landroid/widget/TextView;

.field private selectedProfile:Landroid/widget/TextView;

.field private selectedSize:Landroid/widget/TextView;

.field private selectedState:Landroid/widget/TextView;

.field private translationButton:Landroid/widget/Button;

.field private translationRefreshInFlight:Z

.field private translationStatus:Landroid/widget/TextView;

.field private twoFingerGroupPanel:Landroid/widget/LinearLayout;

.field private twoFingerGroupSelectionCheck:Landroid/widget/CheckBox;

.field private final workerExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$-cQZ-bQEYe-ucVBXWce2hihARyY(Lcom/ahsim/demulation/LauncherActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$buildContent$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$03xCjFTom20_SRzxqGKbWv01hAA(Lcom/ahsim/demulation/LauncherActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$startAssetBundleInstallation$69(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$0NpK53k-wDsXbyf3pxcqmQNdksY(Lcom/ahsim/demulation/LauncherActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$buildContent$19(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0R0IdRd27wMFCuEx__WQO0K8wd8(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RomSelectionStore$Selection;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/LauncherActivity;->lambda$identifySelectedRom$58(Lcom/ahsim/demulation/RomSelectionStore$Selection;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$1KPmTaJQYY6vYx9c8Wb8KFA8Q4M(Lcom/ahsim/demulation/LauncherActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$startAssetBundleInstallation$68(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$23qaa-iqiVdoTB6n7FVbjJwlhWk(Lcom/ahsim/demulation/LauncherActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$buildContent$22(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2T8SBJHQl-n7qnom1jB26cxubFE(Lcom/ahsim/demulation/LauncherActivity;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/LauncherActivity;->lambda$startMediaModInstallation$44(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2WINGmdMl7hZNfphcek2TJqQiHE(Lcom/ahsim/demulation/LauncherActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$startRussianBaseLocalizationRefresh$73(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$4qfrMSrlJ9bWwHMm0LF5PRm2AN4(Lcom/ahsim/demulation/LauncherActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$addRazorSessionControls$23(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5gsgLh8v05Fhx4pAXjxxsz2F8R4(Lcom/ahsim/demulation/LauncherActivity;IILjava/lang/String;II)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ahsim/demulation/LauncherActivity;->lambda$startAssetBundleInstallation$66(IILjava/lang/String;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$5tFtm1uYAPtyZBHIY6_fNtTN1Rw(Lcom/ahsim/demulation/LauncherActivity;ILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/LauncherActivity;->lambda$runRazorNativeAudit$38(ILjava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8fJyHsPo1aX7AbUb_HyzMOzYcT4(Lcom/ahsim/demulation/LauncherActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$addRazorSessionControls$26(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AgxkiEg-7Hxa4y53Pd4MN5PcWLY(Lcom/ahsim/demulation/LauncherActivity;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/LauncherActivity;->lambda$startAudioSourceAudit$62(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$BSXwPjNGXeLN775ttxlEvRtVx90(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/LauncherActivity;->lambda$startAssetBundleInstallation$72(Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bjnyo-hl-OVR9yaFLS0bd-3dBto(Lcom/ahsim/demulation/LauncherActivity;Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/LauncherActivity;->lambda$showGameInfoDialog$65(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ClJNcbOTRM-UzCdpDB8FN3YuYEs(Lcom/ahsim/demulation/LauncherActivity;ILcom/ahsim/demulation/RazorRomAnalysis;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/LauncherActivity;->lambda$refreshRazorSelection$34(ILcom/ahsim/demulation/RazorRomAnalysis;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D5lbZieH0uLJLRMSy7-m_ib2bkY(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RazorRomAnalysis;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ahsim/demulation/LauncherActivity;->lambda$createRazorCampaignSession$33(Lcom/ahsim/demulation/RazorRomAnalysis;IIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$DQU6rh8lviiYTfBA3M9qF-llINk(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RazorRomAnalysis;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/LauncherActivity;->lambda$runRazorNativeAudit$39(Lcom/ahsim/demulation/RazorRomAnalysis;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$EHHIktOyPUft1Tg82e6K28VS3Ag(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$startRussianVoicePackRefresh$55(Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EQatgSUoeYFwZDLxJFR1E5jvX9w(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$startTranslationAudit$52(Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EfWwq6YD8bK5xugW-pBP7LKNScQ(Lcom/ahsim/demulation/LauncherActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$buildContent$18(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EwDFKTujF1hHYLE_x8i811ict-A(Lcom/ahsim/demulation/LauncherActivity;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ahsim/demulation/LauncherActivity;->lambda$startAssetBundleInstallation$67(IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F2c_6a_KJfOTIAuFELJuAsuTxWg(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$startMediaModInstallation$45(Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FiI37tZp2_ZN6Dq7XctwJqKhA_Q(Lcom/ahsim/demulation/LauncherActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->lambda$startRussianVoicePackRefresh$53()V

    return-void
.end method

.method public static synthetic $r8$lambda$GGsX_-sPf49ptu28wyr8ov_JD60(Lcom/ahsim/demulation/LauncherActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$buildContent$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GXnXOwGlHX4TtE_QKFsO0He8jV4(Lcom/ahsim/demulation/LauncherActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$buildContent$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ggl6lku_pczCSGd-esYdcVXNMXo(Lcom/ahsim/demulation/LauncherActivity;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$startRussianBaseLocalizationRefresh$74(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HNN-rdbki3f_GnNR0Cq6xKLZFak(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$startAudioSourceAudit$63(Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Igo8AfkFzebuv63IaamlLtQHAgE(Lcom/ahsim/demulation/LauncherActivity;ILcom/ahsim/demulation/GenesisRomIdentity$Result;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/LauncherActivity;->lambda$identifySelectedRom$56(ILcom/ahsim/demulation/GenesisRomIdentity$Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JBJCzUSbWnwuQUNXbYdEjPU3wZ0(Lcom/ahsim/demulation/LauncherActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$buildContent$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K2TXSdotiGNSu7ur5D1gQRD1vp0(Lcom/ahsim/demulation/LauncherActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$buildContent$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KQtToGJQ8fPLUgkYtuzcWGfDcuk(Lcom/ahsim/demulation/LauncherActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$addRazorSessionControls$28(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LqKO_Sch1HD5C5MfeAaztFeMKNM(Lcom/ahsim/demulation/LauncherActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$buildContent$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LqdvzK5NFcm7pmxlAQcbFXV_aM8(Lcom/ahsim/demulation/LauncherActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$addRazorSessionControls$29(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ms9fk_PBdFb3TA7owVVpLjexdfU(Lcom/ahsim/demulation/LauncherActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$buildContent$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Njfl2gjDwnqNu9pxoyIsxADdwtY(Lcom/ahsim/demulation/LauncherActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$buildContent$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q1rV0dt2sawFEWHoUPeBZTHL2yA(Lcom/ahsim/demulation/LauncherActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$addRazorSessionControls$24(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qlb_hRuYj064I_F5MZ5zLtJVOp0(Lcom/ahsim/demulation/LauncherActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$buildContent$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RapWBhXwG55T7HvfRWwnPXhxZco(Lcom/ahsim/demulation/LauncherActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/LauncherActivity;->lambda$buildContent$16(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rh3CY5_kd_bSsUbfAM2KyzhfirE(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/LauncherActivity;->lambda$startRussianBaseLocalizationRefresh$75(Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$SsSkD4Z1fbE9UZ44U6DoAITYhrM(Lcom/ahsim/demulation/LauncherActivity;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$buildContent$7(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TBsGW-_bPRz8roDy5r4EUrqpLPY(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$startTranslationAudit$49(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WAxPRizibuLGfHSEOB0zKj9-_fc(Lcom/ahsim/demulation/LauncherActivity;ILjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/LauncherActivity;->lambda$routeChosenRom$40(ILjava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XyVBizRPr_--02SPPL1BySys370(Lcom/ahsim/demulation/LauncherActivity;ILjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/LauncherActivity;->lambda$startAssetBundleInstallation$71(ILjava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YEoVsrhgqovyE4coYFgUYKi2qdo(Lcom/ahsim/demulation/LauncherActivity;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$startMediaModInstallation$46(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_JRnmTADrnZwJeG6oi9uLIa-H0o(Lcom/ahsim/demulation/LauncherActivity;ILjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/LauncherActivity;->lambda$identifySelectedRom$57(ILjava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b5Fob9CvnIh8Jr_MkO_qGRFqzJc(Lcom/ahsim/demulation/LauncherActivity;ILcom/ahsim/demulation/RazorNativeWorldHost$Summary;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/LauncherActivity;->lambda$runRazorNativeAudit$37(ILcom/ahsim/demulation/RazorNativeWorldHost$Summary;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cp3cDndUR3Tg4BQLEya2YKdkrts(Lcom/ahsim/demulation/LauncherActivity;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/LauncherActivity;->lambda$startMediaModInstallation$43(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$eJVBzDU3LEkSdJkb5OfowFjG2F4(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller$Outcome;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/LauncherActivity;->lambda$startTranslationAudit$50(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller$Outcome;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eP0KGgCj6cDBR76A2_BrFxPIFDE(Lcom/ahsim/demulation/LauncherActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/LauncherActivity;->lambda$disableModifiedGraphics$48(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$eTcX-9fy-HU0E7EVyolacputyEA(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RazorCampaignNativeSession;IILcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/LauncherActivity;->lambda$createRazorCampaignSession$31(Lcom/ahsim/demulation/RazorCampaignNativeSession;IILcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eYwlyWsRQ9zJDWS1KUYFTXh5TaI(Lcom/ahsim/demulation/LauncherActivity;ILcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/LauncherActivity;->lambda$startAssetBundleInstallation$70(ILcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ebZYcnd3hP9HXberhHYYhVrvIps(Lcom/ahsim/demulation/LauncherActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$addRazorSessionControls$27(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fpTNMb47y0wcgjlcHRDpSxTZHNI(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$startMediaModInstallation$47(Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$giogm4lLoYE0vvSJ5IF_4Fkd5Pg(Lcom/ahsim/demulation/LauncherActivity;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$startRussianVoicePackRefresh$54(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hGnunDl9e_eFxDDj6neQh2QhUNg(Lcom/ahsim/demulation/LauncherActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$buildContent$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hvWunTI-QVGisoBEH7TIHCzlMu4(Lcom/ahsim/demulation/LauncherActivity;Landroid/widget/TextView;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/LauncherActivity;->lambda$buildContent$12(Landroid/widget/TextView;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$iJFyuAqds_2obEQJQ9jNhHeqLrE(Lcom/ahsim/demulation/LauncherActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/LauncherActivity;->lambda$buildContent$11(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$l-dy3e45-RdzcvSnyAyLoEX2Smo(Lcom/ahsim/demulation/LauncherActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$buildContent$21(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l4UOpDysRHYrNag_ewUqbMS17ZM(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RazorGameRomStore$Entry;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/LauncherActivity;->lambda$refreshRazorSelection$36(Lcom/ahsim/demulation/RazorGameRomStore$Entry;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$louojFthcIGjPcYgkbJ9VmaE5nk(Lcom/ahsim/demulation/LauncherActivity;ILjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/LauncherActivity;->lambda$refreshRazorSelection$35(ILjava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mKIJrtztUO0fxRUvLO5yyTmechc(Lcom/ahsim/demulation/LauncherActivity;Landroid/net/Uri;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/LauncherActivity;->lambda$routeChosenRom$42(Landroid/net/Uri;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$qKnxl_uacZTpRcUJm7aBC6NO0bo(Lcom/ahsim/demulation/LauncherActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$buildContent$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qVyparVadyEQgfCmkuqDHjg8FDI(Lcom/ahsim/demulation/LauncherActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$buildContent$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qsfvRaXMjz-9Mp2yO7GhmibAePw(Lcom/ahsim/demulation/LauncherActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$buildContent$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$trfWV4IUzt66BKjMisJt8yZr53g(Lcom/ahsim/demulation/LauncherActivity;IILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/LauncherActivity;->lambda$createRazorCampaignSession$32(IILjava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w3dUExL1Ty9aQybMQCwYKb315WI(Lcom/ahsim/demulation/LauncherActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$addRazorSessionControls$25(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wV32bDyi2tZFd0Y0DHvT4XtmGlU(Lcom/ahsim/demulation/LauncherActivity;ILcom/ahsim/demulation/RomEngineRouter564$Decision;Landroid/net/Uri;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/LauncherActivity;->lambda$routeChosenRom$41(ILcom/ahsim/demulation/RomEngineRouter564$Decision;Landroid/net/Uri;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wuHHH0Wh9EkfWARsntp97bMbtNY(Lcom/ahsim/demulation/LauncherActivity;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$startTranslationAudit$51(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xkS-wvqCvKuwOJUXlh-YndEjcoI(Lcom/ahsim/demulation/LauncherActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->lambda$buildContent$20(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yu86oS4MtGFYpv-kNDTH1JIYkIo(Lcom/ahsim/demulation/LauncherActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/LauncherActivity;->lambda$buildContent$17(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetrazorSessionSelectionGeneration(Lcom/ahsim/demulation/LauncherActivity;)I
    .locals 0

    iget p0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionSelectionGeneration:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputrazorSessionSelectionGeneration(Lcom/ahsim/demulation/LauncherActivity;I)V
    .locals 0

    iput p1, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionSelectionGeneration:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseRazorCampaignSession(Lcom/ahsim/demulation/LauncherActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->closeRazorCampaignSession()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 57
    const/16 v0, 0x14

    const/16 v1, 0x1a

    const/16 v2, 0x10

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/ahsim/demulation/LauncherActivity;->BG:I

    .line 58
    const/16 v0, 0x22

    const/16 v1, 0x2b

    const/16 v2, 0x1c

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/ahsim/demulation/LauncherActivity;->CARD:I

    .line 59
    const/16 v0, 0x2a

    const/16 v1, 0x34

    const/16 v2, 0x23

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/ahsim/demulation/LauncherActivity;->CARD_ALT:I

    .line 60
    const/16 v0, 0xf4

    const/16 v1, 0xf0

    invoke-static {v0, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/ahsim/demulation/LauncherActivity;->TEXT:I

    .line 61
    const/16 v0, 0xc2

    const/16 v1, 0xc9

    const/16 v2, 0xbc

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    .line 62
    const/16 v0, 0xb2

    const/16 v1, 0x6c

    const/16 v2, 0xd9

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/ahsim/demulation/LauncherActivity;->ACCENT:I

    .line 63
    const/16 v0, 0x57

    const/16 v1, 0x30

    const/16 v2, 0x6f

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/ahsim/demulation/LauncherActivity;->ACCENT_DARK:I

    .line 64
    const/16 v0, 0x97

    const/16 v1, 0xda

    const/16 v2, 0x58

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/ahsim/demulation/LauncherActivity;->BLUE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionLock:Ljava/lang/Object;

    .line 131
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->workerExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private addBody(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/LinearLayout;
    .param p2, "value"    # Ljava/lang/String;

    .line 2489
    sget v0, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    const/4 v1, 0x0

    const/high16 v2, 0x41600000    # 14.0f

    invoke-direct {p0, p2, v2, v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v0

    .line 2490
    .local v0, "body":Landroid/widget/TextView;
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2491
    return-void
.end method

.method private addCompactBody(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/LinearLayout;
    .param p2, "value"    # Ljava/lang/String;

    .line 2521
    sget v0, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    const/4 v1, 0x0

    const/high16 v2, 0x41400000    # 12.0f

    invoke-direct {p0, p2, v2, v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v0

    .line 2522
    .local v0, "body":Landroid/widget/TextView;
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2523
    return-void
.end method

.method private addCompactSectionTitle(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/LinearLayout;
    .param p2, "value"    # Ljava/lang/String;

    .line 2516
    sget v0, Lcom/ahsim/demulation/LauncherActivity;->TEXT:I

    const/4 v1, 0x1

    const/high16 v2, 0x41780000    # 15.5f

    invoke-direct {p0, p2, v2, v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v0

    .line 2517
    .local v0, "title":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2518
    return-void
.end method

.method private addCompactSectionTitleWithMargin(Landroid/widget/LinearLayout;Ljava/lang/String;I)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/LinearLayout;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "topMargin"    # I

    .line 2182
    sget v0, Lcom/ahsim/demulation/LauncherActivity;->TEXT:I

    const/4 v1, 0x1

    const/high16 v2, 0x41780000    # 15.5f

    invoke-direct {p0, p2, v2, v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v0

    .line 2183
    .local v0, "title":Landroid/widget/TextView;
    invoke-direct {p0, p3}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 2184
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2185
    return-void
.end method

.method private addRazorSessionControls()V
    .locals 16

    .line 597
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 598
    .local v1, "oldCount558":I
    sget v2, Lcom/ahsim/demulation/R$string;->razor_session_heading:I

    invoke-virtual {v0, v2}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/ahsim/demulation/LauncherActivity;->TEXT:I

    const/high16 v4, 0x41600000    # 14.0f

    const/4 v5, 0x1

    invoke-direct {v0, v2, v4, v3, v5}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v2

    .line 599
    .local v2, "heading":Landroid/widget/TextView;
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    const/16 v4, 0xe

    invoke-direct {v0, v4}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v4

    invoke-direct {v0, v4}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    sget v4, Lcom/ahsim/demulation/R$string;->razor_session_hint:I

    invoke-virtual {v0, v4}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v6, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    const v7, 0x413ccccd    # 11.8f

    const/4 v8, 0x0

    invoke-direct {v0, v4, v7, v6, v8}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v4

    .line 601
    const/4 v6, 0x5

    invoke-direct {v0, v6}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v7

    invoke-direct {v0, v7}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 600
    invoke-virtual {v3, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 602
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 603
    .local v3, "selectors":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 604
    new-instance v4, Landroid/widget/Spinner;

    invoke-direct {v4, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionHouse:Landroid/widget/Spinner;

    .line 605
    sget v4, Lcom/ahsim/demulation/R$array;->razor_preview_houses:I

    const v7, 0x1090008

    invoke-static {v0, v4, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v4

    .line 607
    .local v4, "houseAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v9, 0x1090009

    invoke-virtual {v4, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 608
    iget-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionHouse:Landroid/widget/Spinner;

    invoke-virtual {v10, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 609
    iget-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionHouse:Landroid/widget/Spinner;

    invoke-virtual {v10, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 610
    iget-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionHouse:Landroid/widget/Spinner;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v12, 0x32

    invoke-direct {v0, v12}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    invoke-direct {v11, v8, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    new-instance v10, Landroid/widget/Spinner;

    invoke-direct {v10, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionMission:Landroid/widget/Spinner;

    .line 612
    sget v10, Lcom/ahsim/demulation/R$array;->razor_preview_missions:I

    invoke-static {v0, v10, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v7

    .line 614
    .local v7, "missionAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v7, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 615
    iget-object v9, v0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionMission:Landroid/widget/Spinner;

    invoke-virtual {v9, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 616
    iget-object v9, v0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionMission:Landroid/widget/Spinner;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 617
    iget-object v9, v0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionMission:Landroid/widget/Spinner;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v11, v8, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 618
    iget-object v9, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    const/4 v11, 0x6

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v12

    invoke-direct {v0, v12}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v9, v3, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 619
    new-instance v9, Lcom/ahsim/demulation/LauncherActivity$1;

    invoke-direct {v9, v0}, Lcom/ahsim/demulation/LauncherActivity$1;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    .line 629
    .local v9, "changed":Landroid/widget/AdapterView$OnItemSelectedListener;
    iget-object v12, v0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionHouse:Landroid/widget/Spinner;

    invoke-virtual {v12, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 630
    iget-object v12, v0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionMission:Landroid/widget/Spinner;

    invoke-virtual {v12, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 631
    sget v12, Lcom/ahsim/demulation/R$string;->razor_session_inactive:I

    invoke-virtual {v0, v12}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/high16 v14, 0x41400000    # 12.0f

    sget v15, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    invoke-direct {v0, v12, v14, v15, v8}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v12

    iput-object v12, v0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStatus:Landroid/widget/TextView;

    .line 632
    iget-object v12, v0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStatus:Landroid/widget/TextView;

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 633
    iget-object v12, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    iget-object v14, v0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStatus:Landroid/widget/TextView;

    const/16 v15, 0x9

    invoke-direct {v0, v15}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v10

    invoke-direct {v0, v10}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v12, v14, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 634
    sget v10, Lcom/ahsim/demulation/R$string;->razor_session_create:I

    invoke-virtual {v0, v10}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/ahsim/demulation/LauncherActivity;->secondaryButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v10

    iput-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStartButton:Landroid/widget/Button;

    .line 635
    iget-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStartButton:Landroid/widget/Button;

    invoke-virtual {v10, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 636
    iget-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStartButton:Landroid/widget/Button;

    new-instance v12, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda0;

    invoke-direct {v12, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda0;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    iget-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    iget-object v12, v0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStartButton:Landroid/widget/Button;

    const/4 v14, 0x7

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v10, v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 638
    sget v10, Lcom/ahsim/demulation/R$string;->razor_session_poll:I

    invoke-virtual {v0, v10}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/ahsim/demulation/LauncherActivity;->secondaryButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v10

    iput-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionPollButton:Landroid/widget/Button;

    .line 639
    iget-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionPollButton:Landroid/widget/Button;

    invoke-virtual {v10, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 640
    iget-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionPollButton:Landroid/widget/Button;

    new-instance v12, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda11;

    invoke-direct {v12, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda11;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    iget-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    iget-object v12, v0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionPollButton:Landroid/widget/Button;

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v10, v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 642
    sget v10, Lcom/ahsim/demulation/R$string;->razor_sandbox_probe_button:I

    invoke-virtual {v0, v10}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/ahsim/demulation/LauncherActivity;->secondaryButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v10

    iput-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionProbeButton:Landroid/widget/Button;

    .line 643
    iget-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionProbeButton:Landroid/widget/Button;

    invoke-virtual {v10, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 644
    iget-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionProbeButton:Landroid/widget/Button;

    new-instance v12, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda22;

    invoke-direct {v12, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda22;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    iget-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    iget-object v12, v0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionProbeButton:Landroid/widget/Button;

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v10, v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 647
    iget-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    sget v12, Lcom/ahsim/demulation/R$string;->razor_order557_hint:I

    invoke-virtual {v0, v12}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v14, 0x41366666    # 11.4f

    sget v5, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    invoke-direct {v0, v12, v14, v5, v8}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v5

    .line 648
    invoke-direct {v0, v15}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v12

    invoke-direct {v0, v12}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    .line 647
    invoke-virtual {v10, v5, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 649
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 650
    .local v5, "orderInputs557":Landroid/widget/LinearLayout;
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 651
    sget v10, Lcom/ahsim/demulation/R$string;->razor_order557_unit:I

    const-string v12, "0"

    invoke-direct {v0, v10, v12}, Lcom/ahsim/demulation/LauncherActivity;->orderInput557(ILjava/lang/String;)Landroid/widget/EditText;

    move-result-object v10

    iput-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->razorOrderUnit557:Landroid/widget/EditText;

    .line 652
    sget v10, Lcom/ahsim/demulation/R$string;->razor_order557_x:I

    const-string v12, "34"

    invoke-direct {v0, v10, v12}, Lcom/ahsim/demulation/LauncherActivity;->orderInput557(ILjava/lang/String;)Landroid/widget/EditText;

    move-result-object v10

    iput-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->razorOrderX557:Landroid/widget/EditText;

    .line 653
    sget v10, Lcom/ahsim/demulation/R$string;->razor_order557_y:I

    const-string v12, "2"

    invoke-direct {v0, v10, v12}, Lcom/ahsim/demulation/LauncherActivity;->orderInput557(ILjava/lang/String;)Landroid/widget/EditText;

    move-result-object v10

    iput-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->razorOrderY557:Landroid/widget/EditText;

    .line 654
    iget-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->razorOrderUnit557:Landroid/widget/EditText;

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v14, 0x34

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v15

    invoke-direct {v12, v8, v15, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    iget-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->razorOrderX557:Landroid/widget/EditText;

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v15

    invoke-direct {v12, v8, v15, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 656
    iget-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->razorOrderY557:Landroid/widget/EditText;

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    invoke-direct {v12, v8, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 657
    iget-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v12

    invoke-direct {v0, v12}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v10, v5, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 658
    sget v10, Lcom/ahsim/demulation/R$string;->razor_order557_issue:I

    invoke-virtual {v0, v10}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/ahsim/demulation/LauncherActivity;->secondaryButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v10

    iput-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->razorOrderIssue557:Landroid/widget/Button;

    .line 659
    iget-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->razorOrderIssue557:Landroid/widget/Button;

    invoke-virtual {v10, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 660
    iget-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->razorOrderIssue557:Landroid/widget/Button;

    new-instance v12, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda33;

    invoke-direct {v12, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda33;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    iget-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    iget-object v12, v0, Lcom/ahsim/demulation/LauncherActivity;->razorOrderIssue557:Landroid/widget/Button;

    invoke-direct {v0, v6}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v10, v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 662
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 663
    .local v10, "orderActions557":Landroid/widget/LinearLayout;
    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 664
    sget v12, Lcom/ahsim/demulation/R$string;->razor_order557_advance:I

    invoke-virtual {v0, v12}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lcom/ahsim/demulation/LauncherActivity;->secondaryButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v12

    iput-object v12, v0, Lcom/ahsim/demulation/LauncherActivity;->razorOrderAdvance557:Landroid/widget/Button;

    .line 665
    iget-object v12, v0, Lcom/ahsim/demulation/LauncherActivity;->razorOrderAdvance557:Landroid/widget/Button;

    invoke-virtual {v12, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 666
    iget-object v12, v0, Lcom/ahsim/demulation/LauncherActivity;->razorOrderAdvance557:Landroid/widget/Button;

    new-instance v14, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda44;

    invoke-direct {v14, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda44;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 667
    iget-object v12, v0, Lcom/ahsim/demulation/LauncherActivity;->razorOrderAdvance557:Landroid/widget/Button;

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v15, 0x36

    invoke-direct {v0, v15}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v11

    invoke-direct {v14, v8, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v10, v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 668
    sget v11, Lcom/ahsim/demulation/R$string;->razor_order557_cancel:I

    invoke-virtual {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->secondaryButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v11

    iput-object v11, v0, Lcom/ahsim/demulation/LauncherActivity;->razorOrderCancel557:Landroid/widget/Button;

    .line 669
    iget-object v11, v0, Lcom/ahsim/demulation/LauncherActivity;->razorOrderCancel557:Landroid/widget/Button;

    invoke-virtual {v11, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 670
    iget-object v11, v0, Lcom/ahsim/demulation/LauncherActivity;->razorOrderCancel557:Landroid/widget/Button;

    new-instance v12, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda55;

    invoke-direct {v12, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda55;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 671
    iget-object v11, v0, Lcom/ahsim/demulation/LauncherActivity;->razorOrderCancel557:Landroid/widget/Button;

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v15}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    invoke-direct {v12, v8, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v10, v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 672
    iget-object v11, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    invoke-direct {v0, v6}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v6

    invoke-direct {v0, v6}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v11, v10, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 673
    sget v6, Lcom/ahsim/demulation/R$string;->razor_session_close:I

    invoke-virtual {v0, v6}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/ahsim/demulation/LauncherActivity;->secondaryButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v6

    iput-object v6, v0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStopButton:Landroid/widget/Button;

    .line 674
    iget-object v6, v0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStopButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 675
    iget-object v6, v0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStopButton:Landroid/widget/Button;

    new-instance v8, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda66;

    invoke-direct {v8, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda66;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    iget-object v6, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    iget-object v8, v0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStopButton:Landroid/widget/Button;

    const/4 v11, 0x6

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v12

    invoke-direct {v0, v12}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 679
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 680
    .local v6, "diagnostics558":Landroid/widget/LinearLayout;
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 681
    :goto_0
    iget-object v8, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-le v8, v1, :cond_0

    .line 682
    iget-object v8, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 683
    .local v8, "item":Landroid/view/View;
    iget-object v11, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 684
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 685
    .end local v8    # "item":Landroid/view/View;
    goto :goto_0

    .line 686
    :cond_0
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 687
    sget v8, Lcom/ahsim/demulation/R$string;->razor_map558_developer_open:I

    invoke-virtual {v0, v8}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/ahsim/demulation/LauncherActivity;->secondaryButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v8

    .line 688
    .local v8, "show558":Landroid/widget/Button;
    new-instance v11, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda73;

    invoke-direct {v11, v6, v8}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda73;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    iget-object v11, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    const/4 v12, 0x6

    invoke-direct {v0, v12}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v12

    invoke-direct {v0, v12}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v11, v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 695
    iget-object v11, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    const/4 v12, 0x2

    invoke-direct {v0, v12}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v12

    invoke-direct {v0, v12}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v11, v6, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 696
    return-void
.end method

.method private addSectionTitle(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/LinearLayout;
    .param p2, "value"    # Ljava/lang/String;

    .line 2484
    sget v0, Lcom/ahsim/demulation/LauncherActivity;->TEXT:I

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-direct {p0, p2, v2, v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v0

    .line 2485
    .local v0, "title":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2486
    return-void
.end method

.method private audioAuditReport(Lcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;Z)Ljava/lang/String;
    .locals 9
    .param p1, "audit"    # Lcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;
    .param p2, "staged"    # Z

    .line 2025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2026
    .local v0, "out":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    sget v1, Lcom/ahsim/demulation/R$string;->launcher_audio_stage2_prepared:I

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2027
    :cond_0
    iget-boolean v1, p1, Lcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;->metadataOnly:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/ahsim/demulation/R$string;->launcher_audio_stage2_metadata_only:I

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2028
    :cond_1
    sget v1, Lcom/ahsim/demulation/R$string;->launcher_audio_stage2_identical:I

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2026
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2029
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/ahsim/demulation/R$string;->launcher_audio_stage2_runtime_notice:I

    invoke-virtual {p0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2030
    iget-object v2, p1, Lcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;->domains:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;

    .line 2032
    .local v3, "item":Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;
    iget-object v4, v3, Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;->key:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_2
    goto :goto_2

    :sswitch_0
    const-string v5, "option_names"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_3

    :sswitch_1
    const-string v5, "option_selectors"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    goto :goto_3

    :sswitch_2
    const-string v5, "command_tables"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :sswitch_3
    const-string v5, "title_gems"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    goto :goto_3

    :goto_2
    const/4 v4, -0x1

    :goto_3
    packed-switch v4, :pswitch_data_0

    .line 2037
    sget v4, Lcom/ahsim/demulation/R$string;->launcher_audio_domain_gameplay:I

    .local v4, "nameId":I
    goto :goto_4

    .line 2036
    .end local v4    # "nameId":I
    :pswitch_0
    sget v4, Lcom/ahsim/demulation/R$string;->launcher_audio_domain_title:I

    .restart local v4    # "nameId":I
    goto :goto_4

    .line 2035
    .end local v4    # "nameId":I
    :pswitch_1
    sget v4, Lcom/ahsim/demulation/R$string;->launcher_audio_domain_options:I

    .restart local v4    # "nameId":I
    goto :goto_4

    .line 2034
    .end local v4    # "nameId":I
    :pswitch_2
    sget v4, Lcom/ahsim/demulation/R$string;->launcher_audio_domain_commands:I

    .restart local v4    # "nameId":I
    goto :goto_4

    .line 2033
    .end local v4    # "nameId":I
    :pswitch_3
    sget v4, Lcom/ahsim/demulation/R$string;->launcher_audio_domain_names:I

    .line 2039
    .restart local v4    # "nameId":I
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v4}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2040
    iget-boolean v6, v3, Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;->changed:Z

    if-eqz v6, :cond_3

    sget v6, Lcom/ahsim/demulation/R$string;->launcher_audio_stage2_changed:I

    iget-wide v7, v3, Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;->differingAddresses:J

    .line 2041
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 2040
    invoke-virtual {p0, v6, v7}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 2041
    :cond_3
    sget v6, Lcom/ahsim/demulation/R$string;->launcher_audio_stage2_same:I

    invoke-virtual {p0, v6}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2040
    :goto_5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2042
    .end local v3    # "item":Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;
    .end local v4    # "nameId":I
    goto/16 :goto_1

    .line 2043
    :cond_4
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/ahsim/demulation/R$string;->launcher_audio_stage2_bank_note:I

    invoke-virtual {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2044
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x69b95775 -> :sswitch_3
        -0x4a4f5e27 -> :sswitch_2
        -0x244042d6 -> :sswitch_1
        0x6955d6fe -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private audioOverlayPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .line 1981
    const-string v0, "dune_audio_overlay_622"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private baseLocalizationReadyOrNotRequired()Z
    .locals 5

    .line 2374
    invoke-static {p0}, Lcom/ahsim/demulation/RomSelectionStore;->load(Landroid/content/Context;)Lcom/ahsim/demulation/RomSelectionStore$Selection;

    move-result-object v0

    .line 2375
    .local v0, "base":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    invoke-direct {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->isRussianBase(Lcom/ahsim/demulation/RomSelectionStore$Selection;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 2376
    :cond_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->loadActive(Landroid/content/Context;)Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;

    move-result-object v1

    .line 2377
    .local v1, "pack":Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;
    if-eqz v1, :cond_1

    iget-object v3, v0, Lcom/ahsim/demulation/RomSelectionStore$Selection;->sha256:Ljava/lang/String;

    iget-object v4, v1, Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;->sourceSha256:Ljava/lang/String;

    .line 2378
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/ahsim/demulation/RomSelectionStore$Selection;->profileId:Ljava/lang/String;

    iget-object v4, v1, Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;->profileId:Ljava/lang/String;

    .line 2379
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v1, Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;->assetCount:I

    .line 2380
    invoke-static {}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->entries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2377
    :goto_0
    return v2
.end method

.method private buildContent()Landroid/view/View;
    .locals 45

    .line 172
    move-object/from16 v0, p0

    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 173
    .local v1, "scroll":Landroid/widget/ScrollView;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 174
    sget v3, Lcom/ahsim/demulation/LauncherActivity;->BG:I

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 175
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 177
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 178
    .local v4, "root":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 179
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 180
    const/16 v5, 0xe

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v6

    .line 181
    .local v6, "side":I
    invoke-direct {v0, v5}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v7

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v8

    invoke-virtual {v4, v6, v7, v6, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 182
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 187
    .local v7, "brand":Landroid/widget/LinearLayout;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 188
    const/16 v10, 0x10

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 189
    const/4 v11, 0x4

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v12

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v13

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v15

    invoke-virtual {v7, v12, v13, v14, v15}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 191
    new-instance v12, Landroid/widget/ImageView;

    invoke-direct {v12, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 192
    .local v12, "icon":Landroid/widget/ImageView;
    sget v13, Lcom/ahsim/demulation/R$mipmap;->ic_launcher:I

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    sget v13, Lcom/ahsim/demulation/R$string;->app_name:I

    invoke-virtual {v0, v13}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 194
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v14, 0x56

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    const/16 v15, 0x56

    invoke-direct {v0, v15}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v15

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 195
    .local v13, "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v14, 0xd

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v15

    iput v15, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 196
    invoke-virtual {v7, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    new-instance v15, Landroid/widget/LinearLayout;

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 199
    .local v15, "brandText":Landroid/widget/LinearLayout;
    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 200
    invoke-virtual {v15, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 201
    sget v3, Lcom/ahsim/demulation/R$string;->app_name:I

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v10, 0x41e80000    # 29.0f

    sget v14, Lcom/ahsim/demulation/LauncherActivity;->TEXT:I

    invoke-direct {v0, v3, v10, v14, v2}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v3

    .line 202
    .local v3, "title":Landroid/widget/TextView;
    invoke-direct {v0, v8}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v15, v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    sget v10, Lcom/ahsim/demulation/R$string;->launcher_version_compact:I

    const-string v14, "0.4.768"

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v0, v10, v14}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 204
    const/16 v14, 0x8f

    const/16 v5, 0x97

    const/16 v9, 0xa1

    invoke-static {v14, v5, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    .line 203
    const/high16 v9, 0x41380000    # 11.5f

    invoke-direct {v0, v10, v9, v5, v8}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v5

    .line 205
    .local v5, "version":Landroid/widget/TextView;
    invoke-direct {v0, v2}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v9

    invoke-direct {v0, v9}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v15, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    sget v9, Lcom/ahsim/demulation/R$string;->launcher_brand_tagline:I

    invoke-virtual {v0, v9}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    const/high16 v14, 0x41480000    # 12.5f

    invoke-direct {v0, v9, v14, v10, v8}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v9

    .line 207
    .local v9, "tagline":Landroid/widget/TextView;
    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v10

    invoke-direct {v0, v10}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v15, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v11, -0x2

    invoke-direct {v10, v8, v11, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v15, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    invoke-direct {v0, v8}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->gameCatalogPanel:Landroid/widget/LinearLayout;

    .line 213
    iget-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->gameCatalogPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 214
    iget-object v10, v0, Lcom/ahsim/demulation/LauncherActivity;->gameCatalogPanel:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v8

    invoke-direct {v0, v8}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    sget v8, Lcom/ahsim/demulation/LauncherActivity;->CARD:I

    invoke-direct {v0, v8}, Lcom/ahsim/demulation/LauncherActivity;->card(I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 217
    .local v8, "compatible":Landroid/widget/LinearLayout;
    const/16 v10, 0xe

    invoke-direct {v0, v10}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v11

    const/16 v14, 0xd

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v2

    move-object/from16 v22, v1

    .end local v1    # "scroll":Landroid/widget/ScrollView;
    .local v22, "scroll":Landroid/widget/ScrollView;
    invoke-direct {v0, v10}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v1

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v10

    invoke-virtual {v8, v11, v2, v1, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 218
    sget v1, Lcom/ahsim/demulation/R$string;->launcher_compatible_game_data:I

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lcom/ahsim/demulation/LauncherActivity;->addSectionTitle(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 219
    invoke-direct {v0}, Lcom/ahsim/demulation/LauncherActivity;->gameChoiceRow()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 220
    .local v1, "dune":Landroid/widget/LinearLayout;
    sget v2, Lcom/ahsim/demulation/R$string;->launcher_game_dune_title:I

    invoke-virtual {v0, v2}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v10, 0x41780000    # 15.5f

    sget v11, Lcom/ahsim/demulation/LauncherActivity;->TEXT:I

    const/4 v14, 0x1

    invoke-direct {v0, v2, v10, v11, v14}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v2

    .line 221
    .local v2, "gameTitle":Landroid/widget/TextView;
    const/16 v10, 0x10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 222
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x36

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    move-object/from16 v24, v3

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    .end local v3    # "title":Landroid/widget/TextView;
    .local v24, "title":Landroid/widget/TextView;
    invoke-direct {v10, v11, v14, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 224
    .local v3, "platformMark":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 225
    const v10, 0x800015

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 226
    const v10, 0x4119999a    # 9.6f

    sget v11, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    const-string v14, "SEGA\nGENESIS"

    move-object/from16 v25, v2

    const/4 v2, 0x1

    .end local v2    # "gameTitle":Landroid/widget/TextView;
    .local v25, "gameTitle":Landroid/widget/TextView;
    invoke-direct {v0, v14, v10, v11, v2}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v10

    .line 227
    .local v10, "segaMark":Landroid/widget/TextView;
    const/16 v2, 0x11

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 228
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v14, 0x30

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    move-object/from16 v27, v5

    const/16 v2, 0x36

    .end local v5    # "version":Landroid/widget/TextView;
    .local v27, "version":Landroid/widget/TextView;
    invoke-direct {v0, v2}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v5

    invoke-direct {v11, v14, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    const/high16 v2, 0x41500000    # 13.0f

    sget v5, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    const-string v11, "/"

    const/4 v14, 0x1

    invoke-direct {v0, v11, v2, v5, v14}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v2

    .line 230
    .local v2, "platformSlash":Landroid/widget/TextView;
    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 231
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x12

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v11

    move/from16 v28, v6

    const/16 v14, 0x36

    .end local v6    # "side":I
    .local v28, "side":I
    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v6

    invoke-direct {v5, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    const v5, 0x4119999a    # 9.6f

    sget v6, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    const-string v11, "MEGA\nDRIVE"

    const/4 v14, 0x1

    invoke-direct {v0, v11, v5, v6, v14}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v5

    .line 233
    .local v5, "megaMark":Landroid/widget/TextView;
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 234
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x2a

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v11

    move-object/from16 v23, v2

    const/16 v14, 0x36

    .end local v2    # "platformSlash":Landroid/widget/TextView;
    .local v23, "platformSlash":Landroid/widget/TextView;
    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v2

    invoke-direct {v6, v11, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x6c

    invoke-direct {v0, v6}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v6

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v11

    invoke-direct {v2, v6, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    new-instance v2, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda29;

    invoke-direct {v2, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda29;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    const/16 v2, 0x8

    invoke-direct {v0, v2}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v6

    invoke-direct {v0, v6}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    sget v2, Lcom/ahsim/demulation/R$string;->launcher_auto_rom_detection:I

    invoke-virtual {v0, v2}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v6, 0x41380000    # 11.5f

    sget v11, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    const/4 v14, 0x0

    invoke-direct {v0, v2, v6, v11, v14}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v2

    .line 240
    .local v2, "autodetect":Landroid/widget/TextView;
    const/4 v6, 0x6

    invoke-direct {v0, v6}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v11

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v8, v2, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    iget-object v11, v0, Lcom/ahsim/demulation/LauncherActivity;->gameCatalogPanel:Landroid/widget/LinearLayout;

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v11, v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    sget v6, Lcom/ahsim/demulation/LauncherActivity;->CARD:I

    invoke-direct {v0, v6}, Lcom/ahsim/demulation/LauncherActivity;->compactCard(I)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 244
    .local v6, "required":Landroid/widget/LinearLayout;
    sget v11, Lcom/ahsim/demulation/R$string;->launcher_rom_required:I

    invoke-virtual {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v6, v11}, Lcom/ahsim/demulation/LauncherActivity;->addCompactSectionTitle(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 245
    sget v11, Lcom/ahsim/demulation/R$string;->launcher_rom_required_body_compact:I

    invoke-virtual {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v6, v11}, Lcom/ahsim/demulation/LauncherActivity;->addCompactBody(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 246
    iget-object v11, v0, Lcom/ahsim/demulation/LauncherActivity;->gameCatalogPanel:Landroid/widget/LinearLayout;

    move-object/from16 v29, v1

    const/16 v14, 0x8

    .end local v1    # "dune":Landroid/widget/LinearLayout;
    .local v29, "dune":Landroid/widget/LinearLayout;
    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    sget v1, Lcom/ahsim/demulation/LauncherActivity;->CARD:I

    invoke-direct {v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->compactCard(I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 249
    .local v1, "how":Landroid/widget/LinearLayout;
    sget v11, Lcom/ahsim/demulation/R$string;->launcher_how_title:I

    invoke-virtual {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v1, v11}, Lcom/ahsim/demulation/LauncherActivity;->addCompactSectionTitle(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 250
    sget v11, Lcom/ahsim/demulation/R$string;->launcher_how_body_compact:I

    invoke-virtual {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v1, v11}, Lcom/ahsim/demulation/LauncherActivity;->addCompactBody(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 251
    iget-object v11, v0, Lcom/ahsim/demulation/LauncherActivity;->gameCatalogPanel:Landroid/widget/LinearLayout;

    move-object/from16 v30, v2

    const/16 v14, 0x8

    .end local v2    # "autodetect":Landroid/widget/TextView;
    .local v30, "autodetect":Landroid/widget/TextView;
    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/ahsim/demulation/LauncherActivity;->gameDetailsPanel:Landroid/widget/LinearLayout;

    .line 254
    iget-object v2, v0, Lcom/ahsim/demulation/LauncherActivity;->gameDetailsPanel:Landroid/widget/LinearLayout;

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 255
    iget-object v2, v0, Lcom/ahsim/demulation/LauncherActivity;->gameDetailsPanel:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v11

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v2, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    sget v2, Lcom/ahsim/demulation/LauncherActivity;->CARD:I

    invoke-direct {v0, v2}, Lcom/ahsim/demulation/LauncherActivity;->card(I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 258
    .local v2, "selectedGame":Landroid/widget/LinearLayout;
    const/16 v11, 0xe

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    move-object/from16 v31, v1

    .end local v1    # "how":Landroid/widget/LinearLayout;
    .local v31, "how":Landroid/widget/LinearLayout;
    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v1

    move-object/from16 v32, v3

    .end local v3    # "platformMark":Landroid/widget/LinearLayout;
    .local v32, "platformMark":Landroid/widget/LinearLayout;
    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v3

    move-object/from16 v33, v5

    .end local v5    # "megaMark":Landroid/widget/TextView;
    .local v33, "megaMark":Landroid/widget/TextView;
    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v5

    invoke-virtual {v2, v14, v1, v3, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 259
    sget v1, Lcom/ahsim/demulation/R$string;->launcher_selected_game:I

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/ahsim/demulation/LauncherActivity;->addSectionTitle(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 260
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 261
    .local v1, "selectedGameTitleRow":Landroid/widget/LinearLayout;
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 262
    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 263
    sget v3, Lcom/ahsim/demulation/R$string;->launcher_game_dune_title:I

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v5, 0x41840000    # 16.5f

    sget v11, Lcom/ahsim/demulation/LauncherActivity;->TEXT:I

    const/4 v14, 0x1

    invoke-direct {v0, v3, v5, v11, v14}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v3

    .line 264
    .local v3, "gameName":Landroid/widget/TextView;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x20

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v11

    move-object/from16 v34, v6

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    .end local v6    # "required":Landroid/widget/LinearLayout;
    .local v34, "required":Landroid/widget/LinearLayout;
    invoke-direct {v5, v14, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    invoke-direct {v0}, Lcom/ahsim/demulation/LauncherActivity;->infoButton()Landroid/widget/TextView;

    move-result-object v5

    .line 266
    .local v5, "touchInfo":Landroid/widget/TextView;
    sget v6, Lcom/ahsim/demulation/R$string;->launcher_game_info_button_desc:I

    invoke-virtual {v0, v6}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 267
    new-instance v6, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda41;

    invoke-direct {v6, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda41;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x1e

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    move-object/from16 v35, v3

    .end local v3    # "gameName":Landroid/widget/TextView;
    .local v35, "gameName":Landroid/widget/TextView;
    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v3

    invoke-direct {v6, v14, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    const/4 v3, 0x5

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v6

    invoke-direct {v0, v6}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    sget v6, Lcom/ahsim/demulation/R$string;->launcher_game_dune_platform:I

    invoke-virtual {v0, v6}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/high16 v14, 0x41400000    # 12.0f

    sget v3, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    const/4 v11, 0x0

    invoke-direct {v0, v6, v14, v3, v11}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v3

    .line 271
    .local v3, "platform":Landroid/widget/TextView;
    const/4 v6, -0x6

    invoke-direct {v0, v6}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v6

    invoke-direct {v0, v6}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    sget v6, Lcom/ahsim/demulation/R$string;->launcher_select_rom:I

    invoke-virtual {v0, v6}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/ahsim/demulation/LauncherActivity;->primaryButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v6

    iput-object v6, v0, Lcom/ahsim/demulation/LauncherActivity;->chooseButton:Landroid/widget/Button;

    .line 274
    iget-object v6, v0, Lcom/ahsim/demulation/LauncherActivity;->chooseButton:Landroid/widget/Button;

    new-instance v11, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda46;

    invoke-direct {v11, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda46;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v6, v0, Lcom/ahsim/demulation/LauncherActivity;->chooseButton:Landroid/widget/Button;

    const/16 v11, 0xa

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v2, v6, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    sget v6, Lcom/ahsim/demulation/LauncherActivity;->CARD_ALT:I

    invoke-direct {v0, v6}, Lcom/ahsim/demulation/LauncherActivity;->compactCard(I)Landroid/widget/LinearLayout;

    move-result-object v6

    iput-object v6, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedCard:Landroid/widget/LinearLayout;

    .line 278
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 279
    .local v6, "selectedHeaderRow":Landroid/widget/LinearLayout;
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 280
    const/16 v11, 0x10

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 281
    sget v11, Lcom/ahsim/demulation/R$string;->launcher_selected_title:I

    invoke-virtual {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/high16 v14, 0x41780000    # 15.5f

    move-object/from16 v36, v1

    .end local v1    # "selectedGameTitleRow":Landroid/widget/LinearLayout;
    .local v36, "selectedGameTitleRow":Landroid/widget/LinearLayout;
    sget v1, Lcom/ahsim/demulation/LauncherActivity;->TEXT:I

    move-object/from16 v37, v3

    const/4 v3, 0x1

    .end local v3    # "platform":Landroid/widget/TextView;
    .local v37, "platform":Landroid/widget/TextView;
    invoke-direct {v0, v11, v14, v1, v3}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v1

    .line 282
    .local v1, "selectedTitle":Landroid/widget/TextView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v38, v5

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v11, -0x2

    const/4 v14, 0x0

    .end local v5    # "touchInfo":Landroid/widget/TextView;
    .local v38, "touchInfo":Landroid/widget/TextView;
    invoke-direct {v3, v14, v11, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    const/high16 v3, 0x41b00000    # 22.0f

    sget v5, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    const-string v11, "\u00d7"

    invoke-direct {v0, v11, v3, v5, v14}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedClearButton:Landroid/widget/TextView;

    .line 284
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedClearButton:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 285
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedClearButton:Landroid/widget/TextView;

    sget v5, Lcom/ahsim/demulation/R$string;->launcher_clear_selected_rom:I

    invoke-virtual {v0, v5}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedClearButton:Landroid/widget/TextView;

    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setClickable(Z)V

    .line 287
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedClearButton:Landroid/widget/TextView;

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 288
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedClearButton:Landroid/widget/TextView;

    new-instance v5, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda47;

    invoke-direct {v5, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda47;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedClearButton:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x1e

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    move-object/from16 v26, v1

    .end local v1    # "selectedTitle":Landroid/widget/TextView;
    .local v26, "selectedTitle":Landroid/widget/TextView;
    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v1

    invoke-direct {v5, v14, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedCard:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    const/high16 v1, 0x41600000    # 14.0f

    sget v3, Lcom/ahsim/demulation/LauncherActivity;->TEXT:I

    const-string v5, ""

    const/4 v14, 0x1

    invoke-direct {v0, v5, v1, v3, v14}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedName:Landroid/widget/TextView;

    .line 292
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedCard:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedName:Landroid/widget/TextView;

    const/4 v11, 0x5

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v1, v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    const/high16 v1, 0x41380000    # 11.5f

    sget v3, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    const/4 v14, 0x0

    invoke-direct {v0, v5, v1, v3, v14}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedSize:Landroid/widget/TextView;

    .line 294
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedCard:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedSize:Landroid/widget/TextView;

    const/4 v14, 0x1

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v11

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v1, v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    sget v1, Lcom/ahsim/demulation/R$string;->launcher_selected_not_verified:I

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x413b3333    # 11.7f

    sget v11, Lcom/ahsim/demulation/LauncherActivity;->ACCENT:I

    const/4 v14, 0x0

    invoke-direct {v0, v1, v3, v11, v14}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedState:Landroid/widget/TextView;

    .line 296
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedCard:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedState:Landroid/widget/TextView;

    const/4 v11, 0x4

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v1, v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    sget v1, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    const v3, 0x41333333    # 11.2f

    const/4 v14, 0x0

    invoke-direct {v0, v5, v3, v1, v14}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedProfile:Landroid/widget/TextView;

    .line 298
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedCard:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedProfile:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v1, v11, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    sget v1, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    const v11, 0x41333333    # 11.2f

    const/4 v14, 0x0

    invoke-direct {v0, v5, v11, v1, v14}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedHeader:Landroid/widget/TextView;

    .line 300
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedCard:Landroid/widget/LinearLayout;

    iget-object v14, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedHeader:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v11

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v14, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    sget v1, Lcom/ahsim/demulation/LauncherActivity;->TEXT:I

    const v11, 0x41333333    # 11.2f

    const/4 v14, 0x1

    invoke-direct {v0, v5, v11, v1, v14}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedLogicCompatibility:Landroid/widget/TextView;

    .line 305
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedLogicCompatibility:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedCard:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedLogicCompatibility:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v11

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v1, v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    sget v1, Lcom/ahsim/demulation/LauncherActivity;->TEXT:I

    const v11, 0x41333333    # 11.2f

    const/4 v14, 0x1

    invoke-direct {v0, v5, v11, v1, v14}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedAssetCompatibility:Landroid/widget/TextView;

    .line 308
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedAssetCompatibility:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedCard:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedAssetCompatibility:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v11

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v1, v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    sget v1, Lcom/ahsim/demulation/LauncherActivity;->ACCENT:I

    const v11, 0x41333333    # 11.2f

    const/4 v14, 0x1

    invoke-direct {v0, v5, v11, v1, v14}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->baseLanguageStatus:Landroid/widget/TextView;

    .line 311
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->baseLanguageStatus:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedCard:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->baseLanguageStatus:Landroid/widget/TextView;

    const/4 v5, 0x3

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v11

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    const/4 v11, 0x0

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->setIdentificationDetailsVisible(Z)V

    .line 314
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedCard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 315
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->selectedCard:Landroid/widget/LinearLayout;

    const/16 v3, 0x9

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    sget v1, Lcom/ahsim/demulation/R$string;->launcher_prepare_title:I

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v3, 0x41700000    # 15.0f

    sget v5, Lcom/ahsim/demulation/LauncherActivity;->TEXT:I

    const/4 v14, 0x1

    invoke-direct {v0, v1, v3, v5, v14}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->prepareTitle:Landroid/widget/TextView;

    .line 318
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->prepareTitle:Landroid/widget/TextView;

    const/16 v3, 0xa

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v5

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    sget v1, Lcom/ahsim/demulation/R$string;->launcher_prepare_body_compact:I

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v3, 0x41400000    # 12.0f

    sget v5, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    const/4 v14, 0x0

    invoke-direct {v0, v1, v3, v5, v14}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->prepareBody:Landroid/widget/TextView;

    .line 320
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->prepareBody:Landroid/widget/TextView;

    const/4 v11, 0x4

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    const v5, 0x1010078

    invoke-direct {v1, v0, v3, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->prepareProgress:Landroid/widget/ProgressBar;

    .line 322
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->prepareProgress:Landroid/widget/ProgressBar;

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 323
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->prepareProgress:Landroid/widget/ProgressBar;

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 324
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->prepareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v14}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 325
    const/16 v14, 0x8

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 326
    .local v1, "progressLp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x7

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 327
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->prepareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    sget v3, Lcom/ahsim/demulation/R$string;->launcher_waiting_status:I

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v5, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    const v11, 0x413ccccd    # 11.8f

    const/4 v14, 0x0

    invoke-direct {v0, v3, v11, v5, v14}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->prepareStatus:Landroid/widget/TextView;

    .line 329
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->prepareStatus:Landroid/widget/TextView;

    const/16 v5, 0x30

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 330
    const/4 v3, 0x6

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v5

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 331
    .local v3, "prepareStatusLp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x44

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 332
    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->prepareStatus:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    const/4 v14, 0x0

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->setPreparationInfoVisible(Z)V

    .line 334
    sget v5, Lcom/ahsim/demulation/R$string;->launcher_prepare_core_button:I

    invoke-virtual {v0, v5}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/LauncherActivity;->secondaryButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->prepareCoreButton:Landroid/widget/Button;

    .line 335
    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->prepareCoreButton:Landroid/widget/Button;

    const/16 v14, 0x8

    invoke-virtual {v5, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 336
    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->prepareCoreButton:Landroid/widget/Button;

    new-instance v11, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda48;

    invoke-direct {v11, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda48;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->prepareCoreButton:Landroid/widget/Button;

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v11

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v2, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->gameDetailsPanel:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v5, v2, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    sget v5, Lcom/ahsim/demulation/LauncherActivity;->CARD:I

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/LauncherActivity;->compactCard(I)Landroid/widget/LinearLayout;

    move-result-object v5

    iput-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->detailsInfoPanel:Landroid/widget/LinearLayout;

    .line 349
    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->detailsInfoPanel:Landroid/widget/LinearLayout;

    sget v11, Lcom/ahsim/demulation/R$string;->launcher_how_title:I

    invoke-virtual {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v5, v11}, Lcom/ahsim/demulation/LauncherActivity;->addCompactSectionTitle(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 350
    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->detailsInfoPanel:Landroid/widget/LinearLayout;

    sget v11, Lcom/ahsim/demulation/R$string;->launcher_how_body_compact:I

    invoke-virtual {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v5, v11}, Lcom/ahsim/demulation/LauncherActivity;->addCompactBody(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 351
    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->gameDetailsPanel:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/ahsim/demulation/LauncherActivity;->detailsInfoPanel:Landroid/widget/LinearLayout;

    move-object/from16 v40, v1

    const/16 v14, 0x8

    .end local v1    # "progressLp":Landroid/widget/LinearLayout$LayoutParams;
    .local v40, "progressLp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    sget v1, Lcom/ahsim/demulation/LauncherActivity;->CARD_ALT:I

    invoke-direct {v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->card(I)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->optionalFeaturesPanel:Landroid/widget/LinearLayout;

    .line 354
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->optionalFeaturesPanel:Landroid/widget/LinearLayout;

    const/16 v11, 0xe

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v5

    move-object/from16 v41, v2

    const/16 v14, 0xa

    .end local v2    # "selectedGame":Landroid/widget/LinearLayout;
    .local v41, "selectedGame":Landroid/widget/LinearLayout;
    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v2

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    const/16 v11, 0xc

    move-object/from16 v42, v3

    .end local v3    # "prepareStatusLp":Landroid/widget/LinearLayout$LayoutParams;
    .local v42, "prepareStatusLp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v3

    invoke-virtual {v1, v5, v2, v14, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 355
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->optionalFeaturesPanel:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 357
    new-instance v1, Landroid/widget/CheckBox;

    invoke-direct {v1, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsCheck:Landroid/widget/CheckBox;

    .line 358
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsCheck:Landroid/widget/CheckBox;

    sget v2, Lcom/ahsim/demulation/R$string;->launcher_graphics_mod_title:I

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(I)V

    .line 359
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsCheck:Landroid/widget/CheckBox;

    sget v2, Lcom/ahsim/demulation/LauncherActivity;->TEXT:I

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 360
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsCheck:Landroid/widget/CheckBox;

    const/high16 v2, 0x41480000    # 12.5f

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 361
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsCheck:Landroid/widget/CheckBox;

    sget v2, Lcom/ahsim/demulation/LauncherActivity;->BLUE:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 362
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsCheck:Landroid/widget/CheckBox;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v3

    invoke-direct {v0, v2}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v5

    const/4 v14, 0x0

    invoke-virtual {v1, v3, v14, v5, v14}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 363
    sget-object v1, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->MEDIA_MOD:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RomSelectionStore;->loadOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 365
    .local v1, "graphicsAlreadySelected":Z
    :goto_0
    iget-object v2, v0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 366
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 367
    .local v2, "graphicsHeader":Landroid/widget/LinearLayout;
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 368
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 369
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsCheck:Landroid/widget/CheckBox;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v43, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v11, -0x2

    .end local v1    # "graphicsAlreadySelected":Z
    .local v43, "graphicsAlreadySelected":Z
    invoke-direct {v5, v14, v11, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    invoke-direct {v0}, Lcom/ahsim/demulation/LauncherActivity;->infoButton()Landroid/widget/TextView;

    move-result-object v1

    .line 372
    .local v1, "graphicsInfo":Landroid/widget/TextView;
    sget v3, Lcom/ahsim/demulation/R$string;->launcher_graphics_mod_info:I

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 373
    new-instance v3, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda49;

    invoke-direct {v3, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda49;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x1e

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v5

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    invoke-direct {v3, v5, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->optionalFeaturesPanel:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsDetails:Landroid/widget/LinearLayout;

    .line 382
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsDetails:Landroid/widget/LinearLayout;

    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 383
    sget v3, Lcom/ahsim/demulation/R$string;->launcher_graphics_mod_body:I

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x413b3333    # 11.7f

    sget v11, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    const/4 v14, 0x0

    invoke-direct {v0, v3, v5, v11, v14}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsBody:Landroid/widget/TextView;

    .line 385
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsBody:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    sget v3, Lcom/ahsim/demulation/R$string;->launcher_mods:I

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->secondaryButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->modsButton:Landroid/widget/Button;

    .line 387
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->modsButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 388
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->modsButton:Landroid/widget/Button;

    new-instance v5, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda50;

    invoke-direct {v5, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda50;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->modsButton:Landroid/widget/Button;

    new-instance v5, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda51;

    invoke-direct {v5, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda51;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 393
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsDetails:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->modsButton:Landroid/widget/Button;

    const/4 v11, 0x6

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v3, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    sget v3, Lcom/ahsim/demulation/R$string;->launcher_mod_status_none:I

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v5, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    const v11, 0x41333333    # 11.2f

    const/4 v14, 0x0

    invoke-direct {v0, v3, v11, v5, v14}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->mediaModStatus:Landroid/widget/TextView;

    .line 395
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->mediaModStatus:Landroid/widget/TextView;

    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 396
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsDetails:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->mediaModStatus:Landroid/widget/TextView;

    const/4 v11, 0x5

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v3, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    sget v3, Lcom/ahsim/demulation/R$string;->launcher_graphics_details_button:I

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->secondaryButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->graphicsDetailsButton:Landroid/widget/Button;

    .line 398
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->graphicsDetailsButton:Landroid/widget/Button;

    new-instance v5, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda52;

    invoke-direct {v5, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda52;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->graphicsDetailsButton:Landroid/widget/Button;

    if-eqz v43, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 400
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsDetails:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->graphicsDetailsButton:Landroid/widget/Button;

    const/4 v11, 0x5

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v3, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    sget v3, Lcom/ahsim/demulation/R$string;->launcher_graphics_mission_preview:I

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->secondaryButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->graphicsMissionPreviewButton:Landroid/widget/Button;

    .line 402
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->graphicsMissionPreviewButton:Landroid/widget/Button;

    new-instance v5, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda53;

    invoke-direct {v5, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda53;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->graphicsMissionPreviewButton:Landroid/widget/Button;

    const/16 v14, 0x8

    invoke-virtual {v3, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 404
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsDetails:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->graphicsMissionPreviewButton:Landroid/widget/Button;

    const/4 v11, 0x5

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v3, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    sget v3, Lcom/ahsim/demulation/R$string;->razor_preview_open:I

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->secondaryButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->razorPreviewButton:Landroid/widget/Button;

    .line 408
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->razorPreviewButton:Landroid/widget/Button;

    const/16 v14, 0x8

    invoke-virtual {v3, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 409
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->razorPreviewButton:Landroid/widget/Button;

    new-instance v5, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda30;

    invoke-direct {v5, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda30;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsDetails:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->razorPreviewButton:Landroid/widget/Button;

    const/4 v11, 0x5

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v3, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsDetails:Landroid/widget/LinearLayout;

    if-eqz v43, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    const/16 v5, 0x8

    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 420
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->optionalFeaturesPanel:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsDetails:Landroid/widget/LinearLayout;

    const/4 v11, 0x2

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v3, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsCheck:Landroid/widget/CheckBox;

    new-instance v5, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda31;

    invoke-direct {v5, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda31;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 431
    new-instance v3, Landroid/widget/CheckBox;

    invoke-direct {v3, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->twoFingerGroupSelectionCheck:Landroid/widget/CheckBox;

    .line 432
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->twoFingerGroupSelectionCheck:Landroid/widget/CheckBox;

    sget v5, Lcom/ahsim/demulation/R$string;->launcher_two_finger_group_selection:I

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setText(I)V

    .line 433
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->twoFingerGroupSelectionCheck:Landroid/widget/CheckBox;

    sget v5, Lcom/ahsim/demulation/LauncherActivity;->TEXT:I

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 434
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->twoFingerGroupSelectionCheck:Landroid/widget/CheckBox;

    const/high16 v5, 0x41480000    # 12.5f

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 435
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->twoFingerGroupSelectionCheck:Landroid/widget/CheckBox;

    sget v5, Lcom/ahsim/demulation/LauncherActivity;->BLUE:I

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 436
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->twoFingerGroupSelectionCheck:Landroid/widget/CheckBox;

    const/4 v11, 0x4

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v5

    move-object/from16 v39, v1

    const/4 v14, 0x3

    .end local v1    # "graphicsInfo":Landroid/widget/TextView;
    .local v39, "graphicsInfo":Landroid/widget/TextView;
    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v1

    move-object/from16 v44, v2

    .end local v2    # "graphicsHeader":Landroid/widget/LinearLayout;
    .local v44, "graphicsHeader":Landroid/widget/LinearLayout;
    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v2

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v11

    invoke-virtual {v3, v5, v1, v2, v11}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 437
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->twoFingerGroupSelectionCheck:Landroid/widget/CheckBox;

    const-string v2, "dune_settings_v1"

    const/4 v14, 0x0

    invoke-virtual {v0, v2, v14}, Lcom/ahsim/demulation/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 438
    const-string v3, "two_finger_group_selection_enabled"

    invoke-interface {v2, v3, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 437
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 440
    sget v1, Lcom/ahsim/demulation/LauncherActivity;->CARD_ALT:I

    invoke-direct {v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->compactCard(I)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->twoFingerGroupPanel:Landroid/widget/LinearLayout;

    .line 441
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->twoFingerGroupPanel:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/ahsim/demulation/LauncherActivity;->twoFingerGroupSelectionCheck:Landroid/widget/CheckBox;

    const/4 v3, 0x6

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v5

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    sget v1, Lcom/ahsim/demulation/R$string;->launcher_two_finger_group_selection_warning:I

    .line 444
    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    .line 443
    const v11, 0x41333333    # 11.2f

    const/4 v14, 0x0

    invoke-direct {v0, v1, v11, v2, v14}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v1

    .line 446
    .local v1, "groupBalanceWarning":Landroid/widget/TextView;
    const/16 v2, 0x9

    invoke-direct {v0, v2}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v2

    const/16 v3, 0x8

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v5

    const/4 v3, 0x7

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v3

    invoke-virtual {v1, v2, v14, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 447
    iget-object v2, v0, Lcom/ahsim/demulation/LauncherActivity;->twoFingerGroupSelectionCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 448
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    const/16 v2, 0x8

    .line 447
    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    iget-object v2, v0, Lcom/ahsim/demulation/LauncherActivity;->twoFingerGroupPanel:Landroid/widget/LinearLayout;

    const/4 v14, 0x1

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    iget-object v2, v0, Lcom/ahsim/demulation/LauncherActivity;->twoFingerGroupSelectionCheck:Landroid/widget/CheckBox;

    new-instance v3, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda32;

    invoke-direct {v3, v0, v1}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda32;-><init>(Lcom/ahsim/demulation/LauncherActivity;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 456
    iget-object v2, v0, Lcom/ahsim/demulation/LauncherActivity;->gameDetailsPanel:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->optionalFeaturesPanel:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v5

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    sget v2, Lcom/ahsim/demulation/LauncherActivity;->CARD_ALT:I

    invoke-direct {v0, v2}, Lcom/ahsim/demulation/LauncherActivity;->compactCard(I)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, v0, Lcom/ahsim/demulation/LauncherActivity;->audioModPanel:Landroid/widget/LinearLayout;

    .line 460
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 461
    .local v2, "audioHeader":Landroid/widget/LinearLayout;
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 462
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 463
    new-instance v3, Landroid/widget/CheckBox;

    invoke-direct {v3, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->modifiedAudioCheck:Landroid/widget/CheckBox;

    .line 464
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->modifiedAudioCheck:Landroid/widget/CheckBox;

    sget v5, Lcom/ahsim/demulation/R$string;->launcher_audio_mod_title:I

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setText(I)V

    .line 465
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->modifiedAudioCheck:Landroid/widget/CheckBox;

    sget v5, Lcom/ahsim/demulation/LauncherActivity;->TEXT:I

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 466
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->modifiedAudioCheck:Landroid/widget/CheckBox;

    const/high16 v5, 0x41480000    # 12.5f

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 467
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->modifiedAudioCheck:Landroid/widget/CheckBox;

    sget v5, Lcom/ahsim/demulation/LauncherActivity;->BLUE:I

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 468
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->modifiedAudioCheck:Landroid/widget/CheckBox;

    sget-object v5, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->AUDIO_MOD:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-static {v0, v5}, Lcom/ahsim/demulation/RomSelectionStore;->loadOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    move-result-object v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 470
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->modifiedAudioCheck:Landroid/widget/CheckBox;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v17, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v11, -0x2

    const/4 v14, 0x0

    .end local v1    # "groupBalanceWarning":Landroid/widget/TextView;
    .local v17, "groupBalanceWarning":Landroid/widget/TextView;
    invoke-direct {v5, v14, v11, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    invoke-direct {v0}, Lcom/ahsim/demulation/LauncherActivity;->infoButton()Landroid/widget/TextView;

    move-result-object v1

    .line 473
    .local v1, "audioInfo":Landroid/widget/TextView;
    sget v3, Lcom/ahsim/demulation/R$string;->launcher_audio_mod_info:I

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 474
    new-instance v3, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda34;

    invoke-direct {v3, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda34;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x1e

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v5

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v11

    invoke-direct {v3, v5, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->audioModPanel:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->audioModDetails:Landroid/widget/LinearLayout;

    .line 479
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->audioModDetails:Landroid/widget/LinearLayout;

    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 480
    sget v3, Lcom/ahsim/demulation/R$string;->launcher_audio_choose:I

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->secondaryButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->audioModButton:Landroid/widget/Button;

    .line 481
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->audioModButton:Landroid/widget/Button;

    new-instance v5, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda35;

    invoke-direct {v5, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda35;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->audioModDetails:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->audioModButton:Landroid/widget/Button;

    const/4 v11, 0x5

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v3, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    sget v3, Lcom/ahsim/demulation/R$string;->launcher_audio_not_selected:I

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v5, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    const v11, 0x41333333    # 11.2f

    const/4 v14, 0x0

    invoke-direct {v0, v3, v11, v5, v14}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->audioModStatus:Landroid/widget/TextView;

    .line 485
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->audioModDetails:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->audioModStatus:Landroid/widget/TextView;

    const/4 v11, 0x5

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v3, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    sget v3, Lcom/ahsim/demulation/R$string;->launcher_audio_report_button:I

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->secondaryButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->audioReportButton:Landroid/widget/Button;

    .line 487
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->audioReportButton:Landroid/widget/Button;

    new-instance v5, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda36;

    invoke-direct {v5, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda36;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->audioModDetails:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->audioReportButton:Landroid/widget/Button;

    const/4 v11, 0x5

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v3, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->audioModPanel:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->audioModDetails:Landroid/widget/LinearLayout;

    const/4 v11, 0x2

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v11

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v3, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->audioModDetails:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->modifiedAudioCheck:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    goto :goto_5

    :cond_5
    const/16 v5, 0x8

    :goto_5
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 491
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->modifiedAudioCheck:Landroid/widget/CheckBox;

    new-instance v5, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda37;

    invoke-direct {v5, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda37;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 498
    invoke-direct {v0}, Lcom/ahsim/demulation/LauncherActivity;->refreshAudioModButton()V

    .line 499
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->gameDetailsPanel:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->audioModPanel:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v11

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v3, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->gameDetailsPanel:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->twoFingerGroupPanel:Landroid/widget/LinearLayout;

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v11

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v3, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 505
    new-instance v3, Lcom/ahsim/demulation/RomObjectNameEditorPanel;

    invoke-direct {v3, v0}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;-><init>(Landroid/app/Activity;)V

    iput-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->objectNameEditorPanel:Lcom/ahsim/demulation/RomObjectNameEditorPanel;

    .line 506
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->gameDetailsPanel:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->objectNameEditorPanel:Lcom/ahsim/demulation/RomObjectNameEditorPanel;

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v11

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v3, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    sget v3, Lcom/ahsim/demulation/LauncherActivity;->CARD:I

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->compactCard(I)Landroid/widget/LinearLayout;

    move-result-object v3

    iput-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->launcherPreferencePanel:Landroid/widget/LinearLayout;

    .line 509
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->launcherPreferencePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 510
    new-instance v3, Landroid/widget/CheckBox;

    invoke-direct {v3, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->launchNextCheck:Landroid/widget/CheckBox;

    .line 511
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->launchNextCheck:Landroid/widget/CheckBox;

    sget v5, Lcom/ahsim/demulation/R$string;->launcher_show_next_start:I

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setText(I)V

    .line 512
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->launchNextCheck:Landroid/widget/CheckBox;

    sget v5, Lcom/ahsim/demulation/LauncherActivity;->TEXT:I

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 513
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->launchNextCheck:Landroid/widget/CheckBox;

    const v5, 0x41433333    # 12.2f

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 514
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->launchNextCheck:Landroid/widget/CheckBox;

    sget v5, Lcom/ahsim/demulation/LauncherActivity;->BLUE:I

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 515
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->launchNextCheck:Landroid/widget/CheckBox;

    const/4 v11, 0x4

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v5

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v11

    const/4 v14, 0x0

    invoke-virtual {v3, v5, v14, v11, v14}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 516
    invoke-direct {v0}, Lcom/ahsim/demulation/LauncherActivity;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "show_launcher_on_start_v2"

    const/4 v11, 0x1

    invoke-interface {v3, v5, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 517
    .local v3, "showLauncherNext":Z
    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->launchNextCheck:Landroid/widget/CheckBox;

    invoke-virtual {v5, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 518
    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->launcherPreferencePanel:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/ahsim/demulation/LauncherActivity;->launchNextCheck:Landroid/widget/CheckBox;

    move-object/from16 v16, v1

    .end local v1    # "audioInfo":Landroid/widget/TextView;
    .local v16, "audioInfo":Landroid/widget/TextView;
    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    sget v1, Lcom/ahsim/demulation/R$string;->launcher_startup_hint:I

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v5, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    const v11, 0x41333333    # 11.2f

    invoke-direct {v0, v1, v11, v5, v14}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->launcherStartupHint:Landroid/widget/TextView;

    .line 520
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->launcherStartupHint:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    const/16 v5, 0x8

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 521
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->launcherPreferencePanel:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->launcherStartupHint:Landroid/widget/TextView;

    const/4 v11, 0x5

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v1, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->launchNextCheck:Landroid/widget/CheckBox;

    new-instance v5, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda38;

    invoke-direct {v5, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda38;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 527
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->gameDetailsPanel:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->launcherPreferencePanel:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v11

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v1, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    sget v1, Lcom/ahsim/demulation/LauncherActivity;->CARD:I

    invoke-direct {v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->card(I)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    .line 531
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    const/16 v11, 0xe

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v5

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    move-object/from16 v19, v2

    .end local v2    # "audioHeader":Landroid/widget/LinearLayout;
    .local v19, "audioHeader":Landroid/widget/LinearLayout;
    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v2

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v11

    invoke-virtual {v1, v5, v14, v2, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 532
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    sget v2, Lcom/ahsim/demulation/R$string;->razor_game_title:I

    invoke-virtual {v0, v2}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/LauncherActivity;->addSectionTitle(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 533
    sget v1, Lcom/ahsim/demulation/R$string;->razor_native_explanation:I

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    sget v5, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    const/4 v14, 0x0

    invoke-direct {v0, v1, v2, v5, v14}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v1

    .line 534
    .local v1, "razorInfo":Landroid/widget/TextView;
    iget-object v2, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    const/4 v11, 0x6

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v5

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    sget v2, Lcom/ahsim/demulation/R$string;->razor_no_rom:I

    invoke-virtual {v0, v2}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v5, 0x4154cccd    # 13.3f

    sget v11, Lcom/ahsim/demulation/LauncherActivity;->TEXT:I

    const/4 v14, 0x1

    invoke-direct {v0, v2, v5, v11, v14}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/ahsim/demulation/LauncherActivity;->razorRomName:Landroid/widget/TextView;

    .line 536
    iget-object v2, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->razorRomName:Landroid/widget/TextView;

    const/16 v11, 0xc

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v2, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 537
    sget v2, Lcom/ahsim/demulation/R$string;->launcher_select_rom:I

    invoke-virtual {v0, v2}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ahsim/demulation/LauncherActivity;->primaryButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    .line 538
    .local v2, "razorChoose":Landroid/widget/Button;
    new-instance v5, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda39;

    invoke-direct {v5, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda39;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    const/16 v14, 0xa

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v11

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v5, v2, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 540
    sget v5, Lcom/ahsim/demulation/R$string;->launcher_clear_selected_rom:I

    invoke-virtual {v0, v5}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/LauncherActivity;->secondaryButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v5

    .line 541
    .local v5, "razorForget":Landroid/widget/Button;
    new-instance v11, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda40;

    invoke-direct {v11, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda40;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    iget-object v11, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    const/4 v14, 0x6

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v11, v5, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    sget v11, Lcom/ahsim/demulation/R$string;->razor_no_rom:I

    invoke-virtual {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v14, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    move-object/from16 v20, v1

    move/from16 v21, v3

    const/4 v1, 0x0

    const v3, 0x413ccccd    # 11.8f

    .end local v1    # "razorInfo":Landroid/widget/TextView;
    .end local v3    # "showLauncherNext":Z
    .local v20, "razorInfo":Landroid/widget/TextView;
    .local v21, "showLauncherNext":Z
    invoke-direct {v0, v11, v3, v14, v1}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v11

    iput-object v11, v0, Lcom/ahsim/demulation/LauncherActivity;->razorStatus:Landroid/widget/TextView;

    .line 549
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->razorStatus:Landroid/widget/TextView;

    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 550
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->razorStatus:Landroid/widget/TextView;

    const/16 v11, 0xc

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v1, v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    sget v1, Lcom/ahsim/demulation/R$string;->razor_native_audit:I

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->secondaryButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->razorNativeAuditButton:Landroid/widget/Button;

    .line 552
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->razorNativeAuditButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 553
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->razorNativeAuditButton:Landroid/widget/Button;

    new-instance v3, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda42;

    invoke-direct {v3, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda42;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->razorNativeAuditButton:Landroid/widget/Button;

    const/16 v11, 0xc

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v14

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v1, v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 557
    sget v1, Lcom/ahsim/demulation/R$string;->razor_map558_open:I

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->primaryButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->razorMap558Button:Landroid/widget/Button;

    .line 558
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->razorMap558Button:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 559
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->razorMap558Button:Landroid/widget/Button;

    new-instance v3, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda43;

    invoke-direct {v3, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda43;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->razorMap558Button:Landroid/widget/Button;

    const/16 v11, 0xc

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v11

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v1, v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    sget v1, Lcom/ahsim/demulation/R$string;->razor_quick662_open:I

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->primaryButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->razorQuickPlay662Button:Landroid/widget/Button;

    .line 565
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->razorQuickPlay662Button:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 566
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->razorQuickPlay662Button:Landroid/widget/Button;

    new-instance v3, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda45;

    invoke-direct {v3, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda45;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->razorQuickPlay662Button:Landroid/widget/Button;

    const/16 v14, 0xa

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v11

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v1, v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    sget v3, Lcom/ahsim/demulation/R$string;->razor_quick662_note:I

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v11, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    move-object/from16 v18, v5

    const v5, 0x413ccccd    # 11.8f

    const/4 v14, 0x0

    .end local v5    # "razorForget":Landroid/widget/Button;
    .local v18, "razorForget":Landroid/widget/Button;
    invoke-direct {v0, v3, v5, v11, v14}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v3

    .line 569
    const/4 v11, 0x5

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v11

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    .line 568
    invoke-virtual {v1, v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 570
    iget-object v1, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    sget v3, Lcom/ahsim/demulation/R$string;->razor_map558_note:I

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v11, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    invoke-direct {v0, v3, v5, v11, v14}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v3

    .line 571
    const/4 v5, 0x7

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v5

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 570
    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    invoke-direct {v0}, Lcom/ahsim/demulation/LauncherActivity;->addRazorSessionControls()V

    .line 573
    sget v1, Lcom/ahsim/demulation/R$string;->razor_not_playable:I

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/ahsim/demulation/LauncherActivity;->ACCENT:I

    const v5, 0x413ccccd    # 11.8f

    const/4 v14, 0x0

    invoke-direct {v0, v1, v5, v3, v14}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v1

    .line 574
    .local v1, "blocked":Landroid/widget/TextView;
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    const/16 v14, 0xa

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v5

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_8

    .line 579
    iget-object v5, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 580
    .local v5, "item":Landroid/view/View;
    iget-object v11, v0, Lcom/ahsim/demulation/LauncherActivity;->razorRomName:Landroid/widget/TextView;

    if-eq v5, v11, :cond_7

    if-eq v5, v2, :cond_7

    iget-object v11, v0, Lcom/ahsim/demulation/LauncherActivity;->razorQuickPlay662Button:Landroid/widget/Button;

    if-eq v5, v11, :cond_7

    .line 582
    const/16 v14, 0x8

    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    .line 578
    .end local v5    # "item":Landroid/view/View;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 585
    .end local v3    # "i":I
    :cond_8
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->razorQuickPlay662Button:Landroid/widget/Button;

    const-string v5, "\u041e\u0442\u043a\u0440\u044b\u0442\u044c \u0438\u0433\u0440\u0443"

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 587
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v5

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    iget-object v3, v0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 590
    invoke-direct {v0}, Lcom/ahsim/demulation/LauncherActivity;->refreshReadyOnlyPanels()V

    .line 591
    return-object v22
.end method

.method private card(I)Landroid/widget/LinearLayout;
    .locals 7
    .param p1, "color"    # I

    .line 2471
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2472
    .local v0, "card":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2473
    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v3

    .line 2474
    .local v3, "p":I
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2475
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2476
    .local v4, "bg":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2477
    invoke-direct {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 2478
    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v1

    const/16 v2, 0x3e

    const/16 v5, 0x48

    const/16 v6, 0x36

    invoke-static {v6, v2, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v4, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 2479
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2480
    return-object v0
.end method

.method private clearLegacyLanguageOverlayState(Z)V
    .locals 1
    .param p1, "clearLocalizationPack"    # Z

    .line 2434
    sget-object v0, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->TRANSLATION:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-static {p0, v0}, Lcom/ahsim/demulation/RomSelectionStore;->clearOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)V

    .line 2435
    invoke-static {p0}, Lcom/ahsim/demulation/RomRussianVoicePackStore;->clear(Landroid/content/Context;)V

    .line 2436
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ahsim/demulation/RomRussianVoicePreferences;->setEnabled(Landroid/content/Context;Z)V

    .line 2437
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->clear(Landroid/content/Context;)V

    .line 2438
    :cond_0
    return-void
.end method

.method private clearSelectedBaseRom()V
    .locals 1

    .line 1016
    invoke-static {p0}, Lcom/ahsim/demulation/RomSelectionStore;->clear(Landroid/content/Context;)V

    .line 1017
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearAllStaging(Landroid/content/Context;)V

    .line 1018
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->clearLegacyLanguageOverlayState(Z)V

    .line 1019
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshSelectedRom()V

    .line 1020
    return-void
.end method

.method private closeRazorCampaignSession()V
    .locals 3

    .line 723
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 724
    :try_start_0
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->razorCampaignSession:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    if-eqz v1, :cond_0

    .line 725
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->razorCampaignSession:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v1}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->close()V

    .line 726
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->razorCampaignSession:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    .line 728
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorOrderIssue557:Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorOrderIssue557:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 730
    :cond_1
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorOrderAdvance557:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorOrderAdvance557:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 731
    :cond_2
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorOrderCancel557:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorOrderCancel557:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 732
    :cond_3
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionPollButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionPollButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 733
    :cond_4
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionProbeButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionProbeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 734
    :cond_5
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStopButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 735
    :cond_6
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStartButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    .line 736
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStartButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->razorAnalysis:Lcom/ahsim/demulation/RazorRomAnalysis;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->razorAnalysis:Lcom/ahsim/demulation/RazorRomAnalysis;

    iget-boolean v2, v2, Lcom/ahsim/demulation/RazorRomAnalysis;->recognized:Z

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->isRazorSelected()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x1

    :cond_7
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 737
    :cond_8
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStatus:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->razor_session_inactive:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 738
    :cond_9
    return-void

    .line 728
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private compactCard(I)Landroid/widget/LinearLayout;
    .locals 4
    .param p1, "color"    # I

    .line 2494
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->card(I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 2495
    .local v0, "card":Landroid/widget/LinearLayout;
    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v1

    .line 2496
    .local v1, "h":I
    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v2

    invoke-virtual {v0, v3, v1, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2497
    return-object v0
.end method

.method private compatibilityLabel(Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;)Ljava/lang/String;
    .locals 1
    .param p1, "compatibility"    # Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    .line 2319
    sget-object v0, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->VERIFIED:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    if-ne p1, v0, :cond_0

    sget v0, Lcom/ahsim/demulation/R$string;->launcher_compat_verified:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2320
    :cond_0
    sget-object v0, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->CANDIDATE:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    if-ne p1, v0, :cond_1

    sget v0, Lcom/ahsim/demulation/R$string;->launcher_compat_candidate:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2321
    :cond_1
    sget-object v0, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->UNVERIFIED:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    if-ne p1, v0, :cond_2

    sget v0, Lcom/ahsim/demulation/R$string;->launcher_compat_unverified:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2322
    :cond_2
    sget v0, Lcom/ahsim/demulation/R$string;->launcher_compat_incompatible:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createRazorCampaignSession()V
    .locals 8

    .line 741
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->razorAnalysis:Lcom/ahsim/demulation/RazorRomAnalysis;

    .line 742
    .local v2, "analysis":Lcom/ahsim/demulation/RazorRomAnalysis;
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->isRazorSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    iget-boolean v0, v2, Lcom/ahsim/demulation/RazorRomAnalysis;->recognized:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionHouse:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionMission:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    goto :goto_0

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionHouse:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .line 745
    .local v3, "house":I
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionMission:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    .line 746
    .local v4, "mission":I
    iget v5, p0, Lcom/ahsim/demulation/LauncherActivity;->razorGeneration:I

    .local v5, "generation":I
    iget v6, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionSelectionGeneration:I

    .line 747
    .local v6, "selection":I
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->closeRazorCampaignSession()V

    .line 748
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStartButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 749
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStatus:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->razor_session_creating:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 750
    iget-object v7, p0, Lcom/ahsim/demulation/LauncherActivity;->workerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda26;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda26;-><init>(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RazorRomAnalysis;IIII)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 792
    return-void

    .line 743
    .end local v3    # "house":I
    .end local v4    # "mission":I
    .end local v5    # "generation":I
    .end local v6    # "selection":I
    :cond_1
    :goto_0
    return-void
.end method

.method private currentSelectionMatchesReadyBundle()Z
    .locals 4

    .line 2201
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->currentIdentity:Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    .line 2202
    .local v0, "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->sha256:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->sha256:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 2204
    :cond_0
    :try_start_0
    iget-object v2, v0, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->sha256:Ljava/lang/String;

    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->activeBundleSourceSha256(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2205
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 2206
    .local v2, "ignored":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 2202
    .end local v2    # "ignored":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return v1
.end method

.method private disableModifiedGraphics(Z)V
    .locals 4
    .param p1, "showToast"    # Z

    .line 1247
    sget-object v0, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->MEDIA_MOD:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-static {p0, v0}, Lcom/ahsim/demulation/RomSelectionStore;->loadOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1249
    .local v0, "hadSelection":Z
    :goto_0
    sget-object v2, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->MEDIA_MOD:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-static {p0, v2}, Lcom/ahsim/demulation/RomSelectionStore;->clearOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)V

    .line 1250
    invoke-static {p0}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->clear(Landroid/content/Context;)V

    .line 1251
    const-string v2, "graphics_overlay_audit_621"

    invoke-virtual {p0, v2, v1}, Lcom/ahsim/demulation/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1252
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshMediaModButton()V

    .line 1253
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsCheck:Landroid/widget/CheckBox;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1254
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsCheck:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1255
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1256
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsCheck:Landroid/widget/CheckBox;

    new-instance v3, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda2;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1262
    :cond_1
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsDetails:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsDetails:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1263
    :cond_2
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 1264
    sget v2, Lcom/ahsim/demulation/R$string;->launcher_mods_cleared:I

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1265
    :cond_3
    if-eqz v0, :cond_4

    const-string v1, "DemulationLauncher"

    const-string v2, "MEDIA_MOD cleared by user; runtime will use BASE graphics"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :cond_4
    return-void
.end method

.method private dp(I)I
    .locals 2
    .param p1, "value"    # I

    .line 2599
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private formatGraphicsVisualDetail(Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;)Ljava/lang/String;
    .locals 5
    .param p1, "detail"    # Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;

    .line 1889
    iget-boolean v0, p1, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->bytesEqual:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/ahsim/demulation/R$string;->graphics_audit_same_bytes:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1890
    :cond_0
    invoke-virtual {p1}, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->decodedEquivalentOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1891
    sget v0, Lcom/ahsim/demulation/R$string;->graphics_audit_same_visible_colors:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1892
    :cond_1
    sget-object v0, Lcom/ahsim/demulation/LauncherActivity$2;->$SwitchMap$com$ahsim$demulation$RomGraphicsVisualComparator$Kind:[I

    iget-object v1, p1, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->kind:Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

    invoke-virtual {v1}, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1905
    sget v0, Lcom/ahsim/demulation/R$string;->graphics_audit_unknown_diff:I

    iget v1, p1, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->differingBytes:I

    .line 1906
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->totalBytes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 1905
    invoke-virtual {p0, v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1901
    :pswitch_0
    sget v0, Lcom/ahsim/demulation/R$string;->graphics_audit_metatile_diff:I

    iget v1, p1, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->differingBlocks:I

    .line 1902
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->totalBlocks:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->differingElements:I

    .line 1903
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->totalElements:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 1901
    invoke-virtual {p0, v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1897
    :pswitch_1
    sget v0, Lcom/ahsim/demulation/R$string;->graphics_audit_pixel_diff:I

    iget v1, p1, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->differingBlocks:I

    .line 1898
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->totalBlocks:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->differingElements:I

    .line 1899
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->totalElements:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 1897
    invoke-virtual {p0, v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1894
    :pswitch_2
    sget v0, Lcom/ahsim/demulation/R$string;->graphics_audit_color_diff:I

    iget v1, p1, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->differingElements:I

    .line 1895
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->totalElements:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 1894
    invoke-virtual {p0, v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private formatMediaModOutcome(Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;)Ljava/lang/String;
    .locals 7
    .param p1, "outcome"    # Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;

    .line 1561
    if-nez p1, :cond_0

    sget v0, Lcom/ahsim/demulation/R$string;->launcher_mod_status_none:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1562
    :cond_0
    iget-object v0, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    sget-object v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R82B:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    if-ne v0, v1, :cond_2

    .line 1563
    iget-object v0, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->adapterSummary:Ljava/lang/String;

    const-string v1, "R82B Requite reference audited"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1564
    sget v0, Lcom/ahsim/demulation/R$string;->launcher_r82b_requite_audit_ready:I

    goto :goto_0

    .line 1565
    :cond_1
    sget v0, Lcom/ahsim/demulation/R$string;->launcher_r82b_layout_unverified:I

    .line 1563
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1567
    :cond_2
    iget-object v0, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    sget-object v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R82C:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_9

    iget-object v0, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    sget-object v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R82C_PLUS:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    if-ne v0, v1, :cond_3

    goto/16 :goto_1

    .line 1587
    :cond_3
    invoke-virtual {p1}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->allCompatibleGraphicsIdentical()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1588
    sget v0, Lcom/ahsim/demulation/R$string;->launcher_mod_status_identical:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1590
    :cond_4
    iget-object v0, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    sget-object v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R79:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    if-eq v0, v1, :cond_5

    iget-object v0, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    sget-object v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R80B:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    if-eq v0, v1, :cond_5

    iget-object v0, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    sget-object v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R81B:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    if-eq v0, v1, :cond_5

    iget-object v0, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    sget-object v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R81C:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    if-eq v0, v1, :cond_5

    iget-object v0, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    sget-object v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R82B:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    if-eq v0, v1, :cond_5

    iget-object v0, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    sget-object v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R82C:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    if-eq v0, v1, :cond_5

    iget-object v0, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    sget-object v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R82C_PLUS:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    if-eq v0, v1, :cond_5

    iget-object v0, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    sget-object v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_UNKNOWN:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    if-ne v0, v1, :cond_6

    :cond_5
    move v2, v3

    .line 1598
    .local v2, "rebuildAdapter":Z
    :cond_6
    invoke-virtual {p1}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->hasAnyOverlay()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz v2, :cond_8

    iget-object v0, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->terrainRadar:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    sget-object v1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_UNSUPPORTED_LAYOUT:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    if-eq v0, v1, :cond_7

    iget-object v0, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->terrainRadar:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    sget-object v1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_STRUCTURAL_MISMATCH:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    if-eq v0, v1, :cond_7

    iget-object v0, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->tacticalSprites:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    sget-object v1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_UNSUPPORTED_LAYOUT:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    if-eq v0, v1, :cond_7

    iget-object v0, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->tacticalSprites:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    sget-object v1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_STRUCTURAL_MISMATCH:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    if-ne v0, v1, :cond_8

    .line 1603
    :cond_7
    sget v0, Lcom/ahsim/demulation/R$string;->launcher_mod_status_rebuild_adapter:I

    iget-object v1, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->profileLabel:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1606
    :cond_8
    sget v0, Lcom/ahsim/demulation/R$string;->launcher_mod_status_result:I

    iget-object v1, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->profileLabel:Ljava/lang/String;

    iget-object v3, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->terrainRadar:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    .line 1608
    invoke-direct {p0, v3}, Lcom/ahsim/demulation/LauncherActivity;->groupStateLabel(Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->tacticalSprites:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    invoke-direct {p0, v4}, Lcom/ahsim/demulation/LauncherActivity;->groupStateLabel(Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;)Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->overlayEntries:I

    .line 1609
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->identicalEntries:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v1, v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v1

    .line 1606
    invoke-virtual {p0, v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1569
    .end local v2    # "rebuildAdapter":Z
    :cond_9
    :goto_1
    iget-object v0, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->adapterSummary:Ljava/lang/String;

    const-string v1, "R82C neutral palette preview stored"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->adapterSummary:Ljava/lang/String;

    .line 1570
    const-string v1, "R82C neutral palette preview cached"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_2

    :cond_a
    move v0, v2

    goto :goto_3

    :cond_b
    :goto_2
    move v0, v3

    .line 1571
    .local v0, "paletteReady":Z
    :goto_3
    iget-object v1, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->adapterSummary:Ljava/lang/String;

    const-string v4, "R82C scenarios preview stored"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->adapterSummary:Ljava/lang/String;

    .line 1572
    const-string v4, "R82C scenarios preview cached"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_4

    :cond_c
    move v1, v2

    goto :goto_5

    :cond_d
    :goto_4
    move v1, v3

    .line 1573
    .local v1, "scenariosPrepared":Z
    :goto_5
    iget-object v4, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->adapterSummary:Ljava/lang/String;

    const-string v5, "R82C maps preview stored"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->adapterSummary:Ljava/lang/String;

    .line 1574
    const-string v5, "R82C maps preview cached"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    :cond_e
    move v2, v3

    .line 1575
    .local v2, "mapsPrepared":Z
    :cond_f
    iget-object v3, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->adapterSummary:Ljava/lang/String;

    const-string v4, "R82C scenario records decoded"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1576
    sget v3, Lcom/ahsim/demulation/R$string;->launcher_r82_scenario_records_decoded:I

    invoke-virtual {p0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1577
    :cond_10
    iget-object v3, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->adapterSummary:Ljava/lang/String;

    const-string v4, "R82C campaign pairs verified"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1578
    sget v3, Lcom/ahsim/demulation/R$string;->launcher_r82_campaign_links_verified:I

    invoke-virtual {p0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1579
    :cond_11
    iget-object v3, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->adapterSummary:Ljava/lang/String;

    const-string v4, "R82C campaign layout candidate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1580
    sget v3, Lcom/ahsim/demulation/R$string;->launcher_r82_campaign_layout_candidate:I

    invoke-virtual {p0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1581
    :cond_12
    if-eqz v1, :cond_13

    if-eqz v2, :cond_13

    .line 1582
    sget v3, Lcom/ahsim/demulation/R$string;->launcher_r82_maps_preview_ready:I

    invoke-virtual {p0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1583
    :cond_13
    if-eqz v1, :cond_14

    sget v3, Lcom/ahsim/demulation/R$string;->launcher_r82_scenarios_preview_ready:I

    invoke-virtual {p0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1584
    :cond_14
    if-eqz v0, :cond_15

    sget v3, Lcom/ahsim/demulation/R$string;->launcher_r82_neutral_preview_ready:I

    goto :goto_6

    .line 1585
    :cond_15
    sget v3, Lcom/ahsim/demulation/R$string;->launcher_r82_neutral_preview_unavailable:I

    .line 1584
    :goto_6
    invoke-virtual {p0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private formatMediaModSnapshot(Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;)Ljava/lang/String;
    .locals 6
    .param p1, "selected"    # Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    .param p2, "active"    # Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;

    .line 1614
    iget-object v0, p2, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->profileId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->profileLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1615
    .local v0, "label":Ljava/lang/String;
    iget-object v1, p2, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->layoutFamily:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->layoutFamily:Ljava/lang/String;

    const-string v2, "DUNEHACK_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1616
    invoke-virtual {p2}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->entryCount()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p2, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->terrainRadarState:Ljava/lang/String;

    .line 1617
    const-string v2, "BASE_FALLBACK_UNSUPPORTED_LAYOUT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p2, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->terrainRadarState:Ljava/lang/String;

    .line 1618
    const-string v3, "BASE_FALLBACK_STRUCTURAL_MISMATCH"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p2, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->tacticalSpritesState:Ljava/lang/String;

    .line 1619
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p2, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->tacticalSpritesState:Ljava/lang/String;

    .line 1620
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1621
    .local v1, "rebuildAdapter":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1622
    sget v2, Lcom/ahsim/demulation/R$string;->launcher_mod_status_rebuild_adapter:I

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1624
    :cond_2
    invoke-virtual {p2}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->entryCount()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p2, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->terrainRadarState:Ljava/lang/String;

    .line 1625
    const-string v3, "BASE_FALLBACK_IDENTICAL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p2, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->tacticalSpritesState:Ljava/lang/String;

    .line 1626
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1627
    sget v2, Lcom/ahsim/demulation/R$string;->launcher_mod_status_identical:I

    invoke-virtual {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1629
    :cond_3
    sget v2, Lcom/ahsim/demulation/R$string;->launcher_mod_status_snapshot:I

    iget-object v3, p2, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->terrainRadarState:Ljava/lang/String;

    .line 1630
    invoke-direct {p0, v3}, Lcom/ahsim/demulation/LauncherActivity;->groupStateLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->tacticalSpritesState:Ljava/lang/String;

    .line 1631
    invoke-direct {p0, v4}, Lcom/ahsim/demulation/LauncherActivity;->groupStateLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->entryCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v0, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 1629
    invoke-virtual {p0, v2, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private gameChoiceRow()Landroid/widget/LinearLayout;
    .locals 6

    .line 2501
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2502
    .local v0, "row":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2503
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2504
    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v2

    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2505
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 2506
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 2507
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2508
    .local v2, "bg":Landroid/graphics/drawable/GradientDrawable;
    const/16 v3, 0x2e

    const/16 v4, 0x39

    const/16 v5, 0x26

    invoke-static {v5, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2509
    const/16 v3, 0xb

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 2510
    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v1

    sget v3, Lcom/ahsim/demulation/LauncherActivity;->BLUE:I

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 2511
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2512
    return-object v0
.end method

.method private getPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .line 877
    const-string v0, "launcher_catalog"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private graphicsPackageLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 1870
    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    .line 1871
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "tactical/classic_purchase_icons.bin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "tactical/dynamic_patterns.bin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "tactical/direct_layouts.bin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_3
    const-string v0, "tactical/placement_grid_patterns.bin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_4
    const-string v0, "terrain/metatile_descriptors.bin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "radar/transition_quadrants.bin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_6
    const-string v0, "world/structure_beacon_patterns.bin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_7
    const-string v0, "tactical/static_patterns_922_2047.bin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_8
    const-string v0, "terrain/palette.bin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_9
    const-string v0, "terrain/patterns.bin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_a
    const-string v0, "radar/color_tables.bin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_b
    const-string v0, "tactical/visual_catalog.bin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1884
    return-object p1

    .line 1883
    :pswitch_0
    sget v0, Lcom/ahsim/demulation/R$string;->graphics_pack_icons:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1882
    :pswitch_1
    sget v0, Lcom/ahsim/demulation/R$string;->graphics_pack_placement:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1881
    :pswitch_2
    sget v0, Lcom/ahsim/demulation/R$string;->graphics_pack_layouts:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1880
    :pswitch_3
    sget v0, Lcom/ahsim/demulation/R$string;->graphics_pack_dynamic:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1879
    :pswitch_4
    sget v0, Lcom/ahsim/demulation/R$string;->graphics_pack_catalog:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1878
    :pswitch_5
    sget v0, Lcom/ahsim/demulation/R$string;->graphics_pack_static:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1877
    :pswitch_6
    sget v0, Lcom/ahsim/demulation/R$string;->graphics_pack_beacons:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1876
    :pswitch_7
    sget v0, Lcom/ahsim/demulation/R$string;->graphics_pack_radar_transitions:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1875
    :pswitch_8
    sget v0, Lcom/ahsim/demulation/R$string;->graphics_pack_radar_colors:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1874
    :pswitch_9
    sget v0, Lcom/ahsim/demulation/R$string;->graphics_pack_palette:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1873
    :pswitch_a
    sget v0, Lcom/ahsim/demulation/R$string;->graphics_pack_metatiles:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1872
    :pswitch_b
    sget v0, Lcom/ahsim/demulation/R$string;->graphics_pack_terrain_patterns:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x661bdea1 -> :sswitch_b
        -0x565bffbd -> :sswitch_a
        -0x52117fea -> :sswitch_9
        -0x4c1c70c6 -> :sswitch_8
        -0x49998fe9 -> :sswitch_7
        -0x3e9d7af2 -> :sswitch_6
        -0x33fd75f1 -> :sswitch_5
        0xa0d028b -> :sswitch_4
        0x2fa0384f -> :sswitch_3
        0x3527d2f8 -> :sswitch_2
        0x40609aa8 -> :sswitch_1
        0x44727d6e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method private groupStateLabel(Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    .line 1670
    if-nez p1, :cond_0

    sget v0, Lcom/ahsim/demulation/R$string;->launcher_unknown_value:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->groupStateLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private groupStateLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # Ljava/lang/String;

    .line 1674
    const-string v0, "OVERLAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/ahsim/demulation/R$string;->launcher_mod_state_overlay:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1675
    :cond_0
    const-string v0, "OVERLAY_PARTIAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/ahsim/demulation/R$string;->launcher_mod_state_overlay_partial:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1676
    :cond_1
    const-string v0, "BASE_FALLBACK_UNSUPPORTED_LAYOUT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1677
    sget v0, Lcom/ahsim/demulation/R$string;->launcher_mod_state_adapter_required:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1678
    :cond_2
    const-string v0, "BASE_FALLBACK_STRUCTURAL_MISMATCH"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1679
    sget v0, Lcom/ahsim/demulation/R$string;->launcher_mod_state_structural_mismatch:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1680
    :cond_3
    const-string v0, "BASE_FALLBACK_POLICY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1681
    sget v0, Lcom/ahsim/demulation/R$string;->launcher_mod_state_policy:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1682
    :cond_4
    const-string v0, "BASE_FALLBACK_IDENTICAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1683
    sget v0, Lcom/ahsim/demulation/R$string;->launcher_mod_state_identical:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1684
    :cond_5
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    move-object v0, p1

    goto :goto_1

    :cond_7
    :goto_0
    sget v0, Lcom/ahsim/demulation/R$string;->launcher_unknown_value:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private hasSelectedGame()Z
    .locals 3

    .line 870
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "selected_game"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dune_battle_for_arrakis_genesis"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private identifySelectedRom(Lcom/ahsim/demulation/RomSelectionStore$Selection;I)V
    .locals 2
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .param p2, "generation"    # I

    .line 1740
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->workerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda71;

    invoke-direct {v1, p0, p1, p2}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda71;-><init>(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RomSelectionStore$Selection;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1763
    return-void
.end method

.method private infoButton()Landroid/widget/TextView;
    .locals 6

    .line 2188
    sget v0, Lcom/ahsim/demulation/LauncherActivity;->BLUE:I

    const-string v1, "i"

    const/high16 v2, 0x41800000    # 16.0f

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v0

    .line 2189
    .local v0, "view":Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2190
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 2191
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 2192
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2193
    .local v1, "bg":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 2194
    const/16 v2, 0x28

    const/16 v4, 0x31

    const/16 v5, 0x1f

    invoke-static {v5, v2, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2195
    invoke-direct {p0, v3}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v2

    sget v3, Lcom/ahsim/demulation/LauncherActivity;->BLUE:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 2196
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2197
    return-object v0
.end method

.method private isRazorSelected()Z
    .locals 3

    .line 873
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "selected_game"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dune_razor_missions_native"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isRussianBase(Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Z
    .locals 2
    .param p1, "identity"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    .line 2362
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileId:Ljava/lang/String;

    .line 2363
    const-string v1, "translation_ru_shedevr_lipetsk_usa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->sha256:Ljava/lang/String;

    .line 2364
    const-string v1, "4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2362
    :goto_0
    return v0
.end method

.method private isRussianBase(Lcom/ahsim/demulation/RomSelectionStore$Selection;)Z
    .locals 2
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;

    .line 2368
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->profileId:Ljava/lang/String;

    .line 2369
    const-string v1, "translation_ru_shedevr_lipetsk_usa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->sha256:Ljava/lang/String;

    .line 2370
    const-string v1, "4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2368
    :goto_0
    return v0
.end method

.method private static joinNames(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2307
    .local p0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2308
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2309
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2310
    .local v1, "limit":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2311
    if-lez v2, :cond_1

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2312
    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2310
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2314
    .end local v2    # "i":I
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_3

    const-string v2, " \u2026"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2315
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2307
    .end local v0    # "out":Ljava/lang/StringBuilder;
    .end local v1    # "limit":I
    :cond_4
    :goto_1
    const-string v0, "-"

    return-object v0
.end method

.method private synthetic lambda$addRazorSessionControls$23(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 636
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->createRazorCampaignSession()V

    return-void
.end method

.method private synthetic lambda$addRazorSessionControls$24(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 640
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->pollRazorCampaignSession()V

    return-void
.end method

.method private synthetic lambda$addRazorSessionControls$25(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 644
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->probeRazorCampaignObject()V

    return-void
.end method

.method private synthetic lambda$addRazorSessionControls$26(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 660
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->runRazorOrder557(I)V

    return-void
.end method

.method private synthetic lambda$addRazorSessionControls$27(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 666
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->runRazorOrder557(I)V

    return-void
.end method

.method private synthetic lambda$addRazorSessionControls$28(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 670
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->runRazorOrder557(I)V

    return-void
.end method

.method private synthetic lambda$addRazorSessionControls$29(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 675
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->closeRazorCampaignSession()V

    return-void
.end method

.method static synthetic lambda$addRazorSessionControls$30(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/view/View;)V
    .locals 2
    .param p0, "diagnostics558"    # Landroid/widget/LinearLayout;
    .param p1, "show558"    # Landroid/widget/Button;
    .param p2, "v"    # Landroid/view/View;

    .line 689
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 690
    .local v0, "open":Z
    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 691
    if-eqz v0, :cond_2

    sget v1, Lcom/ahsim/demulation/R$string;->razor_map558_developer_close:I

    goto :goto_2

    .line 692
    :cond_2
    sget v1, Lcom/ahsim/demulation/R$string;->razor_map558_developer_open:I

    .line 691
    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 693
    return-void
.end method

.method private synthetic lambda$buildContent$0(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 236
    const-string v0, "dune_battle_for_arrakis_genesis"

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->selectGame(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$buildContent$1(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 267
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->showGameInfoDialog()V

    return-void
.end method

.method private synthetic lambda$buildContent$10(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 410
    sget-object v0, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->MEDIA_MOD:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-static {p0, v0}, Lcom/ahsim/demulation/RomSelectionStore;->loadOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    move-result-object v0

    .line 412
    .local v0, "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    invoke-static {v1}, Lcom/ahsim/demulation/RazorTerrainPreviewSourceSha;->isAttested(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 416
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 417
    return-void

    .line 413
    :cond_1
    :goto_0
    sget v1, Lcom/ahsim/demulation/R$string;->razor_preview_no_mod:I

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 414
    return-void
.end method

.method private synthetic lambda$buildContent$11(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 422
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsDetails:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsDetails:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 424
    :cond_1
    if-nez p2, :cond_2

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->disableModifiedGraphics(Z)V

    .line 425
    :cond_2
    return-void
.end method

.method private synthetic lambda$buildContent$12(Landroid/widget/TextView;Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "groupBalanceWarning"    # Landroid/widget/TextView;
    .param p2, "button"    # Landroid/widget/CompoundButton;
    .param p3, "enabled"    # Z

    .line 451
    const-string v0, "dune_settings_v1"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 452
    const-string v2, "two_finger_group_selection_enabled"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 453
    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 454
    return-void
.end method

.method private synthetic lambda$buildContent$13(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 474
    sget v0, Lcom/ahsim/demulation/R$string;->launcher_audio_mod_title:I

    sget v1, Lcom/ahsim/demulation/R$string;->launcher_audio_mod_explanation:I

    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->showSimpleLauncherInfo(II)V

    return-void
.end method

.method private synthetic lambda$buildContent$14(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 481
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->openAudioModPicker()V

    return-void
.end method

.method private synthetic lambda$buildContent$15(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 487
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->showAudioAuditReport()V

    return-void
.end method

.method private synthetic lambda$buildContent$16(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "enabled"    # Z

    .line 492
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->audioModDetails:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 493
    if-nez p2, :cond_1

    .line 494
    sget-object v0, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->AUDIO_MOD:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-static {p0, v0}, Lcom/ahsim/demulation/RomSelectionStore;->clearOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)V

    .line 495
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshAudioModButton()V

    .line 497
    :cond_1
    return-void
.end method

.method private synthetic lambda$buildContent$17(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 523
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_launcher_on_start_v2"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 524
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->launcherStartupHint:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->launcherStartupHint:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    :cond_1
    return-void
.end method

.method private synthetic lambda$buildContent$18(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 538
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->openRazorRomPicker()V

    return-void
.end method

.method private synthetic lambda$buildContent$19(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 542
    iget v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorGeneration:I

    .line 543
    invoke-static {p0}, Lcom/ahsim/demulation/RazorGameRomStore;->clear(Landroid/content/Context;)V

    .line 544
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorAnalysis:Lcom/ahsim/demulation/RazorRomAnalysis;

    .line 545
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshRazorSelection()V

    .line 546
    return-void
.end method

.method private synthetic lambda$buildContent$2(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 274
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->openRomPicker()V

    return-void
.end method

.method private synthetic lambda$buildContent$20(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 553
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->runRazorNativeAudit()V

    return-void
.end method

.method private synthetic lambda$buildContent$21(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 559
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->openRazorMap558()V

    return-void
.end method

.method private synthetic lambda$buildContent$22(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 566
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->openRazorMap558(Z)V

    return-void
.end method

.method private synthetic lambda$buildContent$3(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 288
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->clearSelectedBaseRom()V

    return-void
.end method

.method private synthetic lambda$buildContent$4(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 337
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->currentSelectionMatchesReadyBundle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->baseLocalizationReadyOrNotRequired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->startRussianBaseLocalizationRefresh(Z)V

    goto :goto_0

    .line 339
    :cond_0
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->openGame()V

    goto :goto_0

    .line 340
    :cond_1
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->startAssetBundleInstallation()V

    .line 341
    :goto_0
    return-void
.end method

.method private synthetic lambda$buildContent$5(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 373
    sget v0, Lcom/ahsim/demulation/R$string;->launcher_graphics_mod_title:I

    .line 375
    sget-object v1, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->MEDIA_MOD:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-static {p0, v1}, Lcom/ahsim/demulation/RomSelectionStore;->loadOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    move-result-object v1

    if-nez v1, :cond_0

    .line 376
    sget v1, Lcom/ahsim/demulation/R$string;->launcher_graphics_mod_body:I

    goto :goto_0

    .line 377
    :cond_0
    sget v1, Lcom/ahsim/demulation/R$string;->launcher_graphics_mod_body_selected:I

    .line 373
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->showSimpleLauncherInfo(II)V

    return-void
.end method

.method private synthetic lambda$buildContent$6(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 388
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->openMediaModPicker()V

    return-void
.end method

.method private synthetic lambda$buildContent$7(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 390
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->disableModifiedGraphics(Z)V

    .line 391
    return v0
.end method

.method private synthetic lambda$buildContent$8(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 398
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->showGraphicsComparisonDialog()V

    return-void
.end method

.method private synthetic lambda$buildContent$9(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 402
    invoke-static {p0}, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview;->show(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic lambda$createRazorCampaignSession$31(Lcom/ahsim/demulation/RazorCampaignNativeSession;IILcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;)V
    .locals 17
    .param p1, "established"    # Lcom/ahsim/demulation/RazorCampaignNativeSession;
    .param p2, "generation"    # I
    .param p3, "selection"    # I
    .param p4, "snapshot"    # Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;

    .line 766
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    iget-object v3, v1, Lcom/ahsim/demulation/LauncherActivity;->razorSessionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 767
    :try_start_0
    iget-object v0, v1, Lcom/ahsim/demulation/LauncherActivity;->razorCampaignSession:Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v4, p1

    if-ne v0, v4, :cond_1

    :try_start_1
    iget v0, v1, Lcom/ahsim/demulation/LauncherActivity;->razorGeneration:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v5, p2

    if-ne v5, v0, :cond_2

    :try_start_2
    iget v0, v1, Lcom/ahsim/demulation/LauncherActivity;->razorSessionSelectionGeneration:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v6, p3

    if-eq v6, v0, :cond_0

    goto :goto_0

    .line 770
    :cond_0
    :try_start_3
    iget-object v0, v1, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStatus:Landroid/widget/TextView;

    sget v7, Lcom/ahsim/demulation/R$string;->razor_session_summary:I

    iget v8, v2, Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;->house:I

    .line 771
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v8, v2, Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;->mission:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v8, v2, Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;->gridSide:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v8, v2, Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;->units:I

    .line 772
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v8, v2, Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;->buildings:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v8, v2, Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;->uninitializedCells:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v8, v2, Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;->reads:I

    .line 773
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget v8, v2, Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;->ticks:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    filled-new-array/range {v9 .. v16}, [Ljava/lang/Object;

    move-result-object v8

    .line 770
    invoke-virtual {v1, v7, v8}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    iget-object v0, v1, Lcom/ahsim/demulation/LauncherActivity;->razorSessionPollButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 775
    iget-object v0, v1, Lcom/ahsim/demulation/LauncherActivity;->razorSessionProbeButton:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 776
    iget-object v0, v1, Lcom/ahsim/demulation/LauncherActivity;->razorOrderIssue557:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 777
    iget-object v0, v1, Lcom/ahsim/demulation/LauncherActivity;->razorOrderAdvance557:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 778
    iget-object v0, v1, Lcom/ahsim/demulation/LauncherActivity;->razorOrderCancel557:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 779
    iget-object v0, v1, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 780
    monitor-exit v3

    .line 781
    return-void

    .line 780
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    .line 767
    :cond_1
    move/from16 v5, p2

    :cond_2
    move/from16 v6, p3

    .line 769
    :goto_0
    monitor-exit v3

    return-void

    .line 780
    :catchall_2
    move-exception v0

    move-object/from16 v4, p1

    :goto_1
    move/from16 v5, p2

    :goto_2
    move/from16 v6, p3

    :goto_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_3
.end method

.method private synthetic lambda$createRazorCampaignSession$32(IILjava/lang/Throwable;)V
    .locals 3
    .param p1, "generation"    # I
    .param p2, "selection"    # I
    .param p3, "ex"    # Ljava/lang/Throwable;

    .line 785
    iget v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorGeneration:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionSelectionGeneration:I

    if-ne p2, v0, :cond_1

    .line 786
    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStatus:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->razor_session_failed:I

    invoke-static {p3}, Lcom/ahsim/demulation/LauncherActivity;->safeMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStartButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 789
    return-void

    .line 786
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$createRazorCampaignSession$33(Lcom/ahsim/demulation/RazorRomAnalysis;IIII)V
    .locals 8
    .param p1, "analysis"    # Lcom/ahsim/demulation/RazorRomAnalysis;
    .param p2, "house"    # I
    .param p3, "mission"    # I
    .param p4, "generation"    # I
    .param p5, "selection"    # I

    .line 751
    const/4 v1, 0x0

    .line 753
    .local v1, "created":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :try_start_0
    iget-object v0, p1, Lcom/ahsim/demulation/RazorRomAnalysis;->bundle:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    invoke-static {v0, p2, p3}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->open(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;II)Lcom/ahsim/demulation/RazorCampaignNativeSession;

    move-result-object v0

    move-object v1, v0

    .line 754
    invoke-virtual {v1}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->poll()Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;

    move-result-object v0

    move-object v7, v0

    .line 756
    .local v7, "snapshot":Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_6

    .line 757
    :try_start_1
    iget v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorGeneration:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p4, v0, :cond_0

    :try_start_2
    iget v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionSelectionGeneration:I

    if-ne p5, v0, :cond_0

    .line 759
    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorCampaignSession:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    if-nez v0, :cond_0

    .line 760
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->isRazorSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 762
    :catchall_0
    move-exception v0

    move-object v3, p0

    move v5, p4

    move v6, p5

    goto :goto_2

    .line 760
    :cond_0
    const/4 v0, 0x0

    .line 761
    .local v0, "accepted":Z
    :goto_0
    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->razorCampaignSession:Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 762
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 763
    if-nez v0, :cond_2

    :try_start_4
    invoke-virtual {v1}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    .line 782
    .end local v0    # "accepted":Z
    .end local v7    # "snapshot":Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_1
    move-object v3, p0

    move v5, p4

    move v6, p5

    goto :goto_4

    .line 764
    .restart local v0    # "accepted":Z
    .restart local v7    # "snapshot":Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;
    :cond_2
    move-object v4, v1

    .line 765
    .local v4, "established":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :try_start_5
    new-instance v2, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda64;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/LinkageError; {:try_start_5 .. :try_end_5} :catch_6

    move-object v3, p0

    move v5, p4

    move v6, p5

    .end local p4    # "generation":I
    .end local p5    # "selection":I
    .local v5, "generation":I
    .local v6, "selection":I
    :try_start_6
    invoke-direct/range {v2 .. v7}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda64;-><init>(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RazorCampaignNativeSession;IILcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;)V

    invoke-virtual {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/LinkageError; {:try_start_6 .. :try_end_6} :catch_3

    .line 790
    .end local v0    # "accepted":Z
    .end local v4    # "established":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    .end local v7    # "snapshot":Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;
    goto :goto_5

    .line 762
    .end local v5    # "generation":I
    .end local v6    # "selection":I
    .restart local v7    # "snapshot":Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;
    .restart local p4    # "generation":I
    .restart local p5    # "selection":I
    :catchall_1
    move-exception v0

    move-object v3, p0

    move v5, p4

    move v6, p5

    .end local p4    # "generation":I
    .end local p5    # "selection":I
    .restart local v5    # "generation":I
    .restart local v6    # "selection":I
    :goto_2
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v1    # "created":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    .end local v5    # "generation":I
    .end local v6    # "selection":I
    .end local p1    # "analysis":Lcom/ahsim/demulation/RazorRomAnalysis;
    .end local p2    # "house":I
    .end local p3    # "mission":I
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/LinkageError; {:try_start_8 .. :try_end_8} :catch_3

    .line 782
    .end local v7    # "snapshot":Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;
    .restart local v1    # "created":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    .restart local v5    # "generation":I
    .restart local v6    # "selection":I
    .restart local p1    # "analysis":Lcom/ahsim/demulation/RazorRomAnalysis;
    .restart local p2    # "house":I
    .restart local p3    # "mission":I
    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_4

    .line 762
    .restart local v7    # "snapshot":Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 782
    .end local v5    # "generation":I
    .end local v6    # "selection":I
    .end local v7    # "snapshot":Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;
    .restart local p4    # "generation":I
    .restart local p5    # "selection":I
    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_3

    :catch_8
    move-exception v0

    :goto_3
    move-object v3, p0

    move v5, p4

    move v6, p5

    .line 783
    .end local p4    # "generation":I
    .end local p5    # "selection":I
    .local v0, "ex":Ljava/lang/Throwable;
    .restart local v5    # "generation":I
    .restart local v6    # "selection":I
    :goto_4
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->close()V

    .line 784
    :cond_3
    new-instance p4, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda65;

    invoke-direct {p4, p0, v5, v6, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda65;-><init>(Lcom/ahsim/demulation/LauncherActivity;IILjava/lang/Throwable;)V

    invoke-virtual {p0, p4}, Lcom/ahsim/demulation/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 791
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_5
    return-void
.end method

.method private synthetic lambda$disableModifiedGraphics$48(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 1257
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsDetails:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1258
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsDetails:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1259
    :cond_1
    if-nez p2, :cond_2

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->disableModifiedGraphics(Z)V

    .line 1260
    :cond_2
    return-void
.end method

.method private synthetic lambda$identifySelectedRom$56(ILcom/ahsim/demulation/GenesisRomIdentity$Result;)V
    .locals 1
    .param p1, "generation"    # I
    .param p2, "result"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    .line 1744
    iget v0, p0, Lcom/ahsim/demulation/LauncherActivity;->identificationGeneration:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1745
    :cond_0
    invoke-direct {p0, p2}, Lcom/ahsim/demulation/LauncherActivity;->showIdentification(Lcom/ahsim/demulation/GenesisRomIdentity$Result;)V

    .line 1746
    return-void

    .line 1744
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$identifySelectedRom$57(ILjava/lang/Exception;)V
    .locals 5
    .param p1, "generation"    # I
    .param p2, "e"    # Ljava/lang/Exception;

    .line 1749
    iget v0, p0, Lcom/ahsim/demulation/LauncherActivity;->identificationGeneration:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1750
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1751
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1752
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedState:Landroid/widget/TextView;

    const/16 v2, 0x69

    const/16 v3, 0x60

    const/16 v4, 0xe2

    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1753
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedState:Landroid/widget/TextView;

    sget v2, Lcom/ahsim/demulation/R$string;->launcher_identification_error:I

    invoke-static {p2}, Lcom/ahsim/demulation/LauncherActivity;->safeMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1754
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareStatus:Landroid/widget/TextView;

    sget v2, Lcom/ahsim/demulation/R$string;->launcher_identification_failed_status:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1755
    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->setIdentificationDetailsVisible(Z)V

    .line 1756
    iput-boolean v1, p0, Lcom/ahsim/demulation/LauncherActivity;->openGameAvailable:Z

    .line 1757
    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->setPreparationInfoVisible(Z)V

    .line 1758
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshBaseRomSelectionControls()V

    .line 1759
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshReadyOnlyPanels()V

    .line 1760
    return-void

    .line 1749
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$identifySelectedRom$58(Lcom/ahsim/demulation/RomSelectionStore$Selection;I)V
    .locals 2
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .param p2, "generation"    # I

    .line 1742
    :try_start_0
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RomIdentifier;->identify(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;)Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    move-result-object v0

    .line 1743
    .local v0, "result":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    new-instance v1, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda67;

    invoke-direct {v1, p0, p2, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda67;-><init>(Lcom/ahsim/demulation/LauncherActivity;ILcom/ahsim/demulation/GenesisRomIdentity$Result;)V

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1761
    .end local v0    # "result":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    goto :goto_1

    .line 1747
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1748
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda68;

    invoke-direct {v1, p0, p2, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda68;-><init>(Lcom/ahsim/demulation/LauncherActivity;ILjava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1762
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private synthetic lambda$refreshRazorSelection$34(ILcom/ahsim/demulation/RazorRomAnalysis;)V
    .locals 8
    .param p1, "generation"    # I
    .param p2, "report"    # Lcom/ahsim/demulation/RazorRomAnalysis;

    .line 956
    iget v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorGeneration:I

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->isRazorSelected()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 957
    :cond_0
    iput-object p2, p0, Lcom/ahsim/demulation/LauncherActivity;->razorAnalysis:Lcom/ahsim/demulation/RazorRomAnalysis;

    .line 958
    iget-boolean v0, p2, Lcom/ahsim/demulation/RazorRomAnalysis;->recognized:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 959
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorStatus:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 960
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorStatus:Landroid/widget/TextView;

    sget v2, Lcom/ahsim/demulation/R$string;->razor_audit_success:I

    iget v3, p2, Lcom/ahsim/demulation/RazorRomAnalysis;->variant:I

    .line 961
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p2, Lcom/ahsim/demulation/RazorRomAnalysis;->missions:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p2, Lcom/ahsim/demulation/RazorRomAnalysis;->largeMaps:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p2, Lcom/ahsim/demulation/RazorRomAnalysis;->unavailableSlots:I

    .line 962
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p2, Lcom/ahsim/demulation/RazorRomAnalysis;->sha256:Ljava/lang/String;

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v3

    .line 960
    invoke-virtual {p0, v2, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 963
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorNativeAuditButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 964
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorMap558Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 965
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorQuickPlay662Button:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorQuickPlay662Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 966
    :cond_1
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStartButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 967
    iget-boolean v0, p0, Lcom/ahsim/demulation/LauncherActivity;->autoOpenRazor674:Z

    if-eqz v0, :cond_4

    .line 968
    iput-boolean v1, p0, Lcom/ahsim/demulation/LauncherActivity;->autoOpenRazor674:Z

    .line 969
    invoke-direct {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->openRazorMap558(Z)V

    goto :goto_0

    .line 971
    :cond_2
    iget-object v0, p2, Lcom/ahsim/demulation/RazorRomAnalysis;->family:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    sget-object v2, Lcom/ahsim/demulation/DuneHackR82Probe$Family;->NONE:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    if-eq v0, v2, :cond_3

    .line 972
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 973
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorStatus:Landroid/widget/TextView;

    const-string v1, "\u042d\u0442\u043e\u0442 \u0432\u0430\u0440\u0438\u0430\u043d\u0442 \u043c\u043e\u0434\u0430 \u043f\u043e\u043a\u0430 \u043d\u0435 \u043f\u043e\u0434\u0434\u0435\u0440\u0436\u0438\u0432\u0430\u0435\u0442\u0441\u044f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 975
    :cond_3
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 976
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorStatus:Landroid/widget/TextView;

    const-string v1, "\u042d\u0442\u043e\u0442 ROM \u043d\u0435 \u0440\u0430\u0441\u043f\u043e\u0437\u043d\u0430\u043d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 978
    :cond_4
    :goto_0
    return-void

    .line 956
    :cond_5
    :goto_1
    return-void
.end method

.method private synthetic lambda$refreshRazorSelection$35(ILjava/lang/Exception;)V
    .locals 3
    .param p1, "generation"    # I
    .param p2, "ex"    # Ljava/lang/Exception;

    .line 981
    iget v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorGeneration:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorStatus:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 983
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorStatus:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->razor_audit_failed:I

    invoke-static {p2}, Lcom/ahsim/demulation/LauncherActivity;->safeMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 984
    return-void

    .line 981
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$refreshRazorSelection$36(Lcom/ahsim/demulation/RazorGameRomStore$Entry;I)V
    .locals 3
    .param p1, "current"    # Lcom/ahsim/demulation/RazorGameRomStore$Entry;
    .param p2, "generation"    # I

    .line 950
    :try_start_0
    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/ahsim/demulation/RazorGameRomStore$Entry;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    .local v0, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v0}, Lcom/ahsim/demulation/RazorRomAnalysis;->inspect(Ljava/io/InputStream;)Lcom/ahsim/demulation/RazorRomAnalysis;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 952
    .local v1, "report":Lcom/ahsim/demulation/RazorRomAnalysis;
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 954
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_0
    iget-object v0, v1, Lcom/ahsim/demulation/RazorRomAnalysis;->sha256:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/RazorGameRomStore;->recordFingerprint(Landroid/content/Context;Lcom/ahsim/demulation/RazorGameRomStore$Entry;Ljava/lang/String;)V

    .line 955
    new-instance v0, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda57;

    invoke-direct {v0, p0, p2, v1}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda57;-><init>(Lcom/ahsim/demulation/LauncherActivity;ILcom/ahsim/demulation/RazorRomAnalysis;)V

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 985
    .end local v1    # "report":Lcom/ahsim/demulation/RazorRomAnalysis;
    goto :goto_2

    .line 950
    .restart local v0    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "current":Lcom/ahsim/demulation/RazorGameRomStore$Entry;
    .end local p2    # "generation":I
    :cond_1
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 979
    .end local v0    # "in":Ljava/io/InputStream;
    .restart local p1    # "current":Lcom/ahsim/demulation/RazorGameRomStore$Entry;
    .restart local p2    # "generation":I
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 980
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1
    new-instance v1, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda58;

    invoke-direct {v1, p0, p2, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda58;-><init>(Lcom/ahsim/demulation/LauncherActivity;ILjava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 986
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private synthetic lambda$routeChosenRom$40(ILjava/lang/Exception;)V
    .locals 2
    .param p1, "generation"    # I
    .param p2, "error"    # Ljava/lang/Exception;

    .line 1065
    iget v0, p0, Lcom/ahsim/demulation/LauncherActivity;->romRoutingGeneration:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1066
    :cond_0
    sget v0, Lcom/ahsim/demulation/R$string;->launcher_rom_access_error:I

    .line 1067
    invoke-static {p2}, Lcom/ahsim/demulation/LauncherActivity;->safeMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 1066
    invoke-virtual {p0, v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1067
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1068
    return-void

    .line 1065
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$routeChosenRom$41(ILcom/ahsim/demulation/RomEngineRouter564$Decision;Landroid/net/Uri;I)V
    .locals 4
    .param p1, "generation"    # I
    .param p2, "decision"    # Lcom/ahsim/demulation/RomEngineRouter564$Decision;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "flags"    # I

    .line 1072
    iget v0, p0, Lcom/ahsim/demulation/LauncherActivity;->romRoutingGeneration:I

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 1074
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/ahsim/demulation/RomEngineRouter564$Decision;->DUNEHACK_NATIVE:Lcom/ahsim/demulation/RomEngineRouter564$Decision;

    if-eq p2, v1, :cond_2

    sget-object v1, Lcom/ahsim/demulation/RomEngineRouter564$Decision;->DUNEHACK_CANDIDATE:Lcom/ahsim/demulation/RomEngineRouter564$Decision;

    if-ne p2, v1, :cond_1

    goto :goto_0

    .line 1080
    :cond_1
    invoke-static {p0, p3, p4}, Lcom/ahsim/demulation/RomSelectionStore;->persist(Landroid/content/Context;Landroid/net/Uri;I)Lcom/ahsim/demulation/RomSelectionStore$Selection;

    .line 1081
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetProvider;->clearAllStaging(Landroid/content/Context;)V

    .line 1082
    invoke-direct {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->clearLegacyLanguageOverlayState(Z)V

    .line 1083
    const-string v1, "dune_battle_for_arrakis_genesis"

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->selectGame(Ljava/lang/String;)V

    .line 1084
    sget v1, Lcom/ahsim/demulation/R$string;->launcher_rom_saved:I

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 1085
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1076
    :cond_2
    :goto_0
    invoke-static {p0, p3, p4}, Lcom/ahsim/demulation/RazorGameRomStore;->persist(Landroid/content/Context;Landroid/net/Uri;I)Lcom/ahsim/demulation/RazorGameRomStore$Entry;

    .line 1077
    iput-boolean v0, p0, Lcom/ahsim/demulation/LauncherActivity;->autoOpenRazor674:Z

    .line 1078
    const-string v1, "dune_razor_missions_native"

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->selectGame(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    :goto_1
    goto :goto_3

    .line 1087
    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 1088
    .local v1, "error":Ljava/lang/Exception;
    :goto_2
    sget v2, Lcom/ahsim/demulation/R$string;->launcher_rom_access_error:I

    .line 1089
    invoke-static {v1}, Lcom/ahsim/demulation/LauncherActivity;->safeMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 1088
    invoke-virtual {p0, v2, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1089
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1091
    .end local v1    # "error":Ljava/lang/Exception;
    :goto_3
    return-void

    .line 1072
    :cond_3
    :goto_4
    return-void
.end method

.method private synthetic lambda$routeChosenRom$42(Landroid/net/Uri;II)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "generation"    # I
    .param p3, "flags"    # I

    .line 1060
    :try_start_0
    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v1, v0

    .line 1061
    .local v1, "input":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 1062
    :try_start_1
    invoke-static {v1}, Lcom/ahsim/demulation/RazorRomAnalysis;->inspect(Ljava/io/InputStream;)Lcom/ahsim/demulation/RazorRomAnalysis;

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/RomEngineRouter564;->decide(Lcom/ahsim/demulation/RazorRomAnalysis;)Lcom/ahsim/demulation/RomEngineRouter564$Decision;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v0

    .line 1063
    .local v5, "decision":Lcom/ahsim/demulation/RomEngineRouter564$Decision;
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .end local v1    # "input":Ljava/io/InputStream;
    .end local v5    # "decision":Lcom/ahsim/demulation/RomEngineRouter564$Decision;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    move-object v3, p0

    move-object v6, p1

    move v4, p2

    move v7, p3

    goto :goto_5

    .line 1070
    .restart local v5    # "decision":Lcom/ahsim/demulation/RomEngineRouter564$Decision;
    :cond_0
    :goto_1
    nop

    .line 1071
    new-instance v2, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda60;

    move-object v3, p0

    move-object v6, p1

    move v4, p2

    move v7, p3

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "generation":I
    .end local p3    # "flags":I
    .local v4, "generation":I
    .local v6, "uri":Landroid/net/Uri;
    .local v7, "flags":I
    invoke-direct/range {v2 .. v7}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda60;-><init>(Lcom/ahsim/demulation/LauncherActivity;ILcom/ahsim/demulation/RomEngineRouter564$Decision;Landroid/net/Uri;I)V

    invoke-virtual {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1092
    return-void

    .line 1060
    .end local v4    # "generation":I
    .end local v5    # "decision":Lcom/ahsim/demulation/RomEngineRouter564$Decision;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "flags":I
    .restart local v1    # "input":Ljava/io/InputStream;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "generation":I
    .restart local p3    # "flags":I
    :catchall_0
    move-exception v0

    move-object v3, p0

    move-object v6, p1

    move v4, p2

    move v7, p3

    move-object p1, v0

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "generation":I
    .end local p3    # "flags":I
    .restart local v4    # "generation":I
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local v7    # "flags":I
    goto :goto_2

    .line 1061
    .end local v4    # "generation":I
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "flags":I
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "generation":I
    .restart local p3    # "flags":I
    :cond_1
    move-object v3, p0

    move-object v6, p1

    move v4, p2

    move v7, p3

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "generation":I
    .end local p3    # "flags":I
    .restart local v4    # "generation":I
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local v7    # "flags":I
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Selected ROM cannot be opened"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "input":Ljava/io/InputStream;
    .end local v4    # "generation":I
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "flags":I
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1060
    .restart local v1    # "input":Ljava/io/InputStream;
    .restart local v4    # "generation":I
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local v7    # "flags":I
    :catchall_1
    move-exception v0

    move-object p1, v0

    :goto_2
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object p2, v0

    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "generation":I
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "flags":I
    :cond_2
    :goto_3
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1063
    .end local v1    # "input":Ljava/io/InputStream;
    .restart local v4    # "generation":I
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local v7    # "flags":I
    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    .end local v4    # "generation":I
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "flags":I
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "generation":I
    .restart local p3    # "flags":I
    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    :goto_4
    move-object v3, p0

    move-object v6, p1

    move v4, p2

    move v7, p3

    .line 1064
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "generation":I
    .end local p3    # "flags":I
    .local v0, "error":Ljava/lang/Exception;
    .restart local v4    # "generation":I
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local v7    # "flags":I
    :goto_5
    new-instance p1, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda59;

    invoke-direct {p1, p0, v4, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda59;-><init>(Lcom/ahsim/demulation/LauncherActivity;ILjava/lang/Exception;)V

    invoke-virtual {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1069
    return-void
.end method

.method private synthetic lambda$runRazorNativeAudit$37(ILcom/ahsim/demulation/RazorNativeWorldHost$Summary;)V
    .locals 6
    .param p1, "generation"    # I
    .param p2, "nativeWorld"    # Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;

    .line 999
    iget v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorGeneration:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->isRazorSelected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorStatus:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->razor_native_success:I

    iget v2, p2, Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;->missions:I

    .line 1001
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p2, Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;->units:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p2, Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;->buildings:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p2, Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;->extendedGrids:I

    .line 1002
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 1000
    invoke-virtual {p0, v1, v2}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1003
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorNativeAuditButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1004
    return-void

    .line 999
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$runRazorNativeAudit$38(ILjava/lang/Throwable;)V
    .locals 3
    .param p1, "generation"    # I
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 1007
    iget v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorGeneration:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorStatus:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->razor_audit_failed:I

    invoke-static {p2}, Lcom/ahsim/demulation/LauncherActivity;->safeMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1009
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorNativeAuditButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1010
    return-void

    .line 1007
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$runRazorNativeAudit$39(Lcom/ahsim/demulation/RazorRomAnalysis;I)V
    .locals 2
    .param p1, "report"    # Lcom/ahsim/demulation/RazorRomAnalysis;
    .param p2, "generation"    # I

    .line 997
    :try_start_0
    iget-object v0, p1, Lcom/ahsim/demulation/RazorRomAnalysis;->bundle:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorNativeWorldHost;->inspect(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;)Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;

    move-result-object v0

    .line 998
    .local v0, "nativeWorld":Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;
    new-instance v1, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0, p2, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda27;-><init>(Lcom/ahsim/demulation/LauncherActivity;ILcom/ahsim/demulation/RazorNativeWorldHost$Summary;)V

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1011
    .end local v0    # "nativeWorld":Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;
    goto :goto_1

    .line 1005
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1006
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    new-instance v1, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0, p2, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda28;-><init>(Lcom/ahsim/demulation/LauncherActivity;ILjava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1012
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method static synthetic lambda$showAudioAuditReport$61(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "d"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 2020
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showGameInfoDialog$64(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0
    .param p0, "dialog"    # Landroid/app/AlertDialog;
    .param p1, "v"    # Landroid/view/View;

    .line 2169
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showGameInfoDialog$65(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/app/AlertDialog;
    .param p2, "v"    # Landroid/content/DialogInterface;

    .line 2171
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2172
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2173
    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x208

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2174
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v2, 0x24

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x26c

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2175
    .local v1, "height":I
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x118

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x12c

    invoke-direct {p0, v4}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 2177
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_0
    return-void
.end method

.method static synthetic lambda$showGraphicsComparisonDialog$60(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "d"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 1976
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showSimpleLauncherInfo$59(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "d"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 1864
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$startAssetBundleInstallation$66(IILjava/lang/String;II)V
    .locals 4
    .param p1, "generation"    # I
    .param p2, "progress"    # I
    .param p3, "asset"    # Ljava/lang/String;
    .param p4, "completed"    # I
    .param p5, "total"    # I

    .line 2232
    iget v0, p0, Lcom/ahsim/demulation/LauncherActivity;->identificationGeneration:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2233
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2234
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareStatus:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->launcher_bundle_extracting:I

    .line 2235
    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p3, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 2234
    invoke-virtual {p0, v1, v2}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2236
    return-void

    .line 2232
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$startAssetBundleInstallation$67(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "generation"    # I
    .param p2, "completed"    # I
    .param p3, "total"    # I
    .param p4, "group"    # Ljava/lang/String;
    .param p5, "asset"    # Ljava/lang/String;

    .line 2230
    if-gtz p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    int-to-long v0, p2

    const-wide/16 v2, 0x3b6

    mul-long/2addr v0, v2

    int-to-long v4, p3

    div-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    move v4, v0

    .line 2231
    .local v4, "progress":I
    new-instance v1, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda1;

    move-object v2, p0

    move v3, p1

    move v6, p2

    move v7, p3

    move-object v5, p5

    .end local p1    # "generation":I
    .end local p2    # "completed":I
    .end local p3    # "total":I
    .end local p5    # "asset":Ljava/lang/String;
    .local v3, "generation":I
    .local v5, "asset":Ljava/lang/String;
    .local v6, "completed":I
    .local v7, "total":I
    invoke-direct/range {v1 .. v7}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda1;-><init>(Lcom/ahsim/demulation/LauncherActivity;IILjava/lang/String;II)V

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2237
    return-void
.end method

.method private synthetic lambda$startAssetBundleInstallation$68(I)V
    .locals 2
    .param p1, "generation"    # I

    .line 2238
    iget v0, p0, Lcom/ahsim/demulation/LauncherActivity;->identificationGeneration:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2239
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x3cf

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2240
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareStatus:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->launcher_bundle_installing:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2241
    return-void

    .line 2238
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$startAssetBundleInstallation$69(I)V
    .locals 1
    .param p1, "generation"    # I

    .line 2237
    new-instance v0, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda25;-><init>(Lcom/ahsim/demulation/LauncherActivity;I)V

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startAssetBundleInstallation$70(ILcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;ZLjava/lang/String;)V
    .locals 5
    .param p1, "generation"    # I
    .param p2, "outcome"    # Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;
    .param p3, "finalLanguageReady"    # Z
    .param p4, "finalLanguageError"    # Ljava/lang/String;

    .line 2261
    iget v0, p0, Lcom/ahsim/demulation/LauncherActivity;->identificationGeneration:I

    if-ne p1, v0, :cond_7

    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 2262
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareCoreButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2263
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;->ready()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/16 v2, 0x3e8

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2264
    invoke-virtual {p2}, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;->ready()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 2265
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->isBundleReady(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2266
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->currentSelectionMatchesReadyBundle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2267
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->baseLocalizationReadyOrNotRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    nop

    :goto_1
    iput-boolean v3, p0, Lcom/ahsim/demulation/LauncherActivity;->openGameAvailable:Z

    .line 2268
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshReadyOnlyPanels()V

    .line 2269
    iget-boolean v0, p0, Lcom/ahsim/demulation/LauncherActivity;->openGameAvailable:Z

    if-eqz v0, :cond_4

    .line 2270
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedClearButton:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedClearButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2271
    :cond_3
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareCoreButton:Landroid/widget/Button;

    sget v1, Lcom/ahsim/demulation/R$string;->launcher_open_game:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 2272
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareStatus:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->launcher_bundle_installed:I

    iget v2, p2, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;->verifiedEntries:I

    .line 2273
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p2, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;->totalEntries:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 2272
    invoke-virtual {p0, v1, v2}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2274
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshBaseLanguageStatus()V

    goto :goto_3

    .line 2276
    :cond_4
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedClearButton:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedClearButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2277
    :cond_5
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareCoreButton:Landroid/widget/Button;

    sget v1, Lcom/ahsim/demulation/R$string;->launcher_prepare_core_again:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 2278
    if-eqz p4, :cond_6

    .line 2279
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareStatus:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->launcher_base_language_prepare_error:I

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2281
    :cond_6
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareStatus:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->launcher_bundle_mismatch:I

    iget v2, p2, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;->verifiedEntries:I

    .line 2282
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p2, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;->totalEntries:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p2, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;->mismatches:Ljava/util/List;

    invoke-static {v4}, Lcom/ahsim/demulation/LauncherActivity;->joinNames(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 2281
    invoke-virtual {p0, v1, v2}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2284
    :goto_2
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshBaseLanguageStatus()V

    .line 2286
    :goto_3
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshPreparationInfoVisibility()V

    .line 2287
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshBaseRomSelectionControls()V

    .line 2288
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshReadyOnlyPanels()V

    .line 2289
    return-void

    .line 2261
    :cond_7
    :goto_4
    return-void
.end method

.method private synthetic lambda$startAssetBundleInstallation$71(ILjava/lang/Exception;)V
    .locals 3
    .param p1, "generation"    # I
    .param p2, "e"    # Ljava/lang/Exception;

    .line 2292
    iget v0, p0, Lcom/ahsim/demulation/LauncherActivity;->identificationGeneration:I

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2293
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedClearButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedClearButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2294
    :cond_1
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareCoreButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/LauncherActivity;->openGameAvailable:Z

    .line 2296
    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->setPreparationInfoVisible(Z)V

    .line 2297
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshBaseRomSelectionControls()V

    .line 2298
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshReadyOnlyPanels()V

    .line 2299
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2300
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareStatus:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->launcher_bundle_error:I

    invoke-static {p2}, Lcom/ahsim/demulation/LauncherActivity;->safeMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2301
    return-void

    .line 2292
    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$startAssetBundleInstallation$72(Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;I)V
    .locals 8
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .param p2, "identity"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .param p3, "generation"    # I

    .line 2228
    :try_start_0
    new-instance v0, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p3}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda6;-><init>(Lcom/ahsim/demulation/LauncherActivity;I)V

    new-instance v1, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p3}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda7;-><init>(Lcom/ahsim/demulation/LauncherActivity;I)V

    invoke-static {p0, p1, p2, v0, v1}, Lcom/ahsim/demulation/RomAssetProvider;->installAssetBundle(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Lcom/ahsim/demulation/RomAssetProvider$BundleProgressListener;Lcom/ahsim/demulation/RomAssetProvider$InstallListener;)Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;

    move-result-object v0

    move-object v4, v0

    .line 2242
    .local v4, "outcome":Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;
    invoke-virtual {v4}, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;->ready()Z

    move-result v0

    move v1, v0

    .line 2243
    .local v1, "languageReady":Z
    const/4 v2, 0x0

    .line 2244
    .local v2, "languageError":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;->ready()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    if-eqz v0, :cond_1

    .line 2246
    :try_start_1
    invoke-direct {p0, p2}, Lcom/ahsim/demulation/LauncherActivity;->isRussianBase(Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2247
    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller;->install(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller$Outcome;

    .line 2248
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->clearLegacyLanguageOverlayState(Z)V

    goto :goto_0

    .line 2250
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->clearLegacyLanguageOverlayState(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2256
    :goto_0
    goto :goto_3

    .line 2252
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 2253
    .local v0, "languageFailure":Ljava/lang/Exception;
    :goto_1
    const/4 v1, 0x0

    .line 2254
    :try_start_2
    invoke-static {v0}, Lcom/ahsim/demulation/LauncherActivity;->safeMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 2255
    invoke-static {p0}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->clear(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v1

    move-object v7, v2

    goto :goto_4

    .line 2290
    .end local v0    # "languageFailure":Ljava/lang/Exception;
    .end local v1    # "languageReady":Z
    .end local v2    # "languageError":Ljava/lang/String;
    .end local v4    # "outcome":Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    :goto_2
    move-object v2, p0

    move v3, p3

    goto :goto_6

    .line 2258
    .restart local v1    # "languageReady":Z
    .restart local v2    # "languageError":Ljava/lang/String;
    .restart local v4    # "outcome":Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;
    :cond_1
    :goto_3
    move v0, v1

    move-object v7, v2

    .end local v1    # "languageReady":Z
    .end local v2    # "languageError":Ljava/lang/String;
    .local v0, "languageReady":Z
    .local v7, "languageError":Ljava/lang/String;
    :goto_4
    move v5, v0

    .line 2259
    .local v5, "finalLanguageReady":Z
    move-object v6, v7

    .line 2260
    .local v6, "finalLanguageError":Ljava/lang/String;
    :try_start_3
    new-instance v1, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda8;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_6

    move-object v2, p0

    move v3, p3

    .end local p3    # "generation":I
    .local v3, "generation":I
    :try_start_4
    invoke-direct/range {v1 .. v6}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda8;-><init>(Lcom/ahsim/demulation/LauncherActivity;ILcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;ZLjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2302
    .end local v0    # "languageReady":Z
    .end local v4    # "outcome":Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;
    .end local v5    # "finalLanguageReady":Z
    .end local v6    # "finalLanguageError":Ljava/lang/String;
    .end local v7    # "languageError":Ljava/lang/String;
    goto :goto_7

    .line 2290
    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_6

    .end local v3    # "generation":I
    .restart local p3    # "generation":I
    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    :goto_5
    move-object v2, p0

    move v3, p3

    .line 2291
    .end local p3    # "generation":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "generation":I
    :goto_6
    new-instance p3, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda9;

    invoke-direct {p3, p0, v3, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda9;-><init>(Lcom/ahsim/demulation/LauncherActivity;ILjava/lang/Exception;)V

    invoke-virtual {p0, p3}, Lcom/ahsim/demulation/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2303
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    return-void
.end method

.method private synthetic lambda$startAudioSourceAudit$62(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "accepted"    # Z

    .line 2121
    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2122
    :cond_0
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshAudioModButton()V

    .line 2123
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->audioModStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 2124
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->audioModStatus:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_1

    .line 2125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/ahsim/demulation/R$string;->launcher_audio_stage2_checked:I

    invoke-virtual {p0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2124
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2126
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->audioModStatus:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    const/16 v1, 0xcd

    const/16 v2, 0x89

    const/16 v3, 0x75

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    goto :goto_1

    :cond_2
    sget v1, Lcom/ahsim/demulation/LauncherActivity;->ACCENT:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2128
    :cond_3
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->audioModButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->audioModButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2129
    :cond_4
    return-void
.end method

.method private synthetic lambda$startAudioSourceAudit$63(Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V
    .locals 17
    .param p1, "selected"    # Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    .line 2056
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 2057
    .local v3, "verified":Z
    :try_start_0
    invoke-virtual {v1}, Lcom/ahsim/demulation/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, v2, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    .line 2058
    .local v4, "stream":Ljava/io/InputStream;
    const-string v0, "Audio ROM stream unavailable"

    if-eqz v4, :cond_a

    .line 2059
    :try_start_1
    iget-wide v5, v2, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->size:J

    invoke-static {v4, v5, v6}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->analyze(Ljava/io/InputStream;J)Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;

    move-result-object v5

    .line 2061
    .local v5, "analysis":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;
    iget-boolean v6, v5, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->exactAuditedProfile:Z

    if-eqz v6, :cond_9

    iget-object v6, v5, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    sget-object v7, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->ORIGINAL_USA:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    if-eq v6, v7, :cond_0

    iget-object v6, v5, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    sget-object v7, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->ORIGINAL_LAYOUT_PATCHED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    if-ne v6, v7, :cond_9

    .line 2066
    :cond_0
    nop

    .line 2067
    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetInstallState;->activeRuntimeBundle(Landroid/content/Context;)Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;

    move-result-object v6

    .line 2068
    .local v6, "base":Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;
    iget-object v7, v6, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->sourceSha256:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 2070
    invoke-virtual {v1}, Lcom/ahsim/demulation/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, v2, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->uri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2071
    .local v7, "input":Ljava/io/InputStream;
    if-eqz v7, :cond_6

    .line 2072
    :try_start_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2073
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x2000

    new-array v8, v8, [B

    .line 2075
    .local v8, "chunk":[B
    :goto_0
    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    move v10, v9

    .local v10, "len":I
    const/4 v11, -0x1

    if-eq v9, v11, :cond_2

    .line 2076
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    add-int/2addr v9, v10

    const/high16 v11, 0x1000000

    if-gt v9, v11, :cond_1

    .line 2078
    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 2077
    :cond_1
    new-instance v9, Ljava/io/IOException;

    const-string v11, "Audio ROM too large"

    invoke-direct {v9, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "verified":Z
    .end local v4    # "stream":Ljava/io/InputStream;
    .end local v5    # "analysis":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;
    .end local v6    # "base":Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;
    .end local v7    # "input":Ljava/io/InputStream;
    .end local p1    # "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    throw v9

    .line 2080
    .restart local v3    # "verified":Z
    .restart local v4    # "stream":Ljava/io/InputStream;
    .restart local v5    # "analysis":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;
    .restart local v6    # "base":Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;
    .restart local v7    # "input":Ljava/io/InputStream;
    .restart local p1    # "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    :cond_2
    nop

    .line 2081
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-static {v9}, Lcom/ahsim/demulation/RomImageNormalizer;->normalize([B)Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;

    move-result-object v9

    .line 2082
    .local v9, "normalized":Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    iget-object v11, v9, Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;->bytes:[B

    iget-object v12, v5, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->profileId:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/ahsim/demulation/GenesisRomAudioAssetProvider;->buildPack([BLjava/lang/String;)[B

    move-result-object v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2084
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "chunk":[B
    .end local v9    # "normalized":Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    .end local v10    # "len":I
    .local v11, "pack":[B
    if-eqz v7, :cond_3

    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 2087
    .end local v7    # "input":Ljava/io/InputStream;
    :cond_3
    iget-object v0, v6, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->audioAssets:Lcom/ahsim/demulation/RomRuntimeAudioAssets;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RomRuntimeAudioAssets;->readVerifiedPackForComparison()[B

    move-result-object v0

    .line 2088
    .local v0, "verifiedBasePack":[B
    nop

    .line 2089
    invoke-static {v0, v11}, Lcom/ahsim/demulation/RomAudioOverlayPreparation;->compare([B[B)Lcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;

    move-result-object v7

    .line 2091
    .local v7, "audit":Lcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;
    sget-object v8, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->AUDIO_MOD:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-static {v1, v8}, Lcom/ahsim/demulation/RomSelectionStore;->loadOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    move-result-object v8

    .line 2093
    .local v8, "current":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    if-eqz v8, :cond_5

    iget-object v9, v2, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->uri:Landroid/net/Uri;

    iget-object v10, v8, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->uri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2095
    new-instance v9, Ljava/io/File;

    invoke-virtual {v1}, Lcom/ahsim/demulation/LauncherActivity;->getFilesDir()Ljava/io/File;

    move-result-object v10

    const-string v12, "optional_audio_overlay_v1"

    invoke-direct {v9, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2096
    .local v9, "stageDir":Ljava/io/File;
    iget-object v10, v6, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->sourceSha256:Ljava/lang/String;

    iget-object v12, v5, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->normalizedSha256:Ljava/lang/String;

    invoke-static {v9, v11, v7, v10, v12}, Lcom/ahsim/demulation/RomAudioOverlayPreparation;->stage(Ljava/io/File;[BLcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 2098
    .local v10, "staged":Z
    iget-object v12, v5, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->normalizedSha256:Ljava/lang/String;

    iget-object v13, v5, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->profileId:Ljava/lang/String;

    invoke-static {v1, v2, v12, v13}, Lcom/ahsim/demulation/RomSelectionStore;->recordOverlayFingerprint(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;Ljava/lang/String;Ljava/lang/String;)V

    .line 2100
    sget v12, Lcom/ahsim/demulation/R$string;->launcher_audio_audit_result:I

    iget-object v13, v5, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->profileLabel:Ljava/lang/String;

    array-length v14, v11

    .line 2101
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v13, v14}, [Ljava/lang/Object;

    move-result-object v13

    .line 2100
    invoke-virtual {v1, v12, v13}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2102
    .local v12, "verdict":Ljava/lang/String;
    invoke-direct {v1, v7, v10}, Lcom/ahsim/demulation/LauncherActivity;->audioAuditReport(Lcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;Z)Ljava/lang/String;

    move-result-object v13

    .line 2103
    .local v13, "report":Ljava/lang/String;
    invoke-direct {v1}, Lcom/ahsim/demulation/LauncherActivity;->audioOverlayPreferences()Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "base"

    move-object/from16 v16, v0

    .end local v0    # "verifiedBasePack":[B
    .local v16, "verifiedBasePack":[B
    iget-object v0, v6, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->sourceSha256:Ljava/lang/String;

    .line 2104
    invoke-interface {v14, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v14, "source"

    iget-object v15, v5, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->normalizedSha256:Ljava/lang/String;

    .line 2105
    invoke-interface {v0, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v14, "report"

    .line 2106
    invoke-interface {v0, v14, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2107
    const/4 v3, 0x1

    .line 2108
    .end local v5    # "analysis":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;
    .end local v6    # "base":Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;
    .end local v7    # "audit":Lcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;
    .end local v8    # "current":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    .end local v9    # "stageDir":Ljava/io/File;
    .end local v10    # "staged":Z
    .end local v11    # "pack":[B
    .end local v13    # "report":Ljava/lang/String;
    .end local v16    # "verifiedBasePack":[B
    if-eqz v4, :cond_4

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 2117
    .end local v4    # "stream":Ljava/io/InputStream;
    :cond_4
    goto/16 :goto_5

    .line 2093
    .end local v12    # "verdict":Ljava/lang/String;
    .restart local v0    # "verifiedBasePack":[B
    .restart local v4    # "stream":Ljava/io/InputStream;
    .restart local v5    # "analysis":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;
    .restart local v6    # "base":Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;
    .restart local v7    # "audit":Lcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;
    .restart local v8    # "current":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    .restart local v11    # "pack":[B
    :cond_5
    move-object/from16 v16, v0

    .line 2094
    .end local v0    # "verifiedBasePack":[B
    .restart local v16    # "verifiedBasePack":[B
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string v9, "Selected audio ROM changed during analysis"

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "verified":Z
    .end local v4    # "stream":Ljava/io/InputStream;
    .end local p1    # "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2070
    .end local v8    # "current":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    .end local v11    # "pack":[B
    .end local v16    # "verifiedBasePack":[B
    .restart local v3    # "verified":Z
    .restart local v4    # "stream":Ljava/io/InputStream;
    .local v7, "input":Ljava/io/InputStream;
    .restart local p1    # "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    :catchall_0
    move-exception v0

    move-object v8, v0

    goto :goto_1

    .line 2071
    :cond_6
    :try_start_6
    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "verified":Z
    .end local v4    # "stream":Ljava/io/InputStream;
    .end local v5    # "analysis":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;
    .end local v6    # "base":Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;
    .end local v7    # "input":Ljava/io/InputStream;
    .end local p1    # "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2070
    .restart local v3    # "verified":Z
    .restart local v4    # "stream":Ljava/io/InputStream;
    .restart local v5    # "analysis":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;
    .restart local v6    # "base":Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;
    .restart local v7    # "input":Ljava/io/InputStream;
    .restart local p1    # "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    :goto_1
    if-eqz v7, :cond_7

    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_8
    invoke-virtual {v8, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "verified":Z
    .end local v4    # "stream":Ljava/io/InputStream;
    .end local p1    # "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    :cond_7
    :goto_2
    throw v8

    .line 2068
    .end local v7    # "input":Ljava/io/InputStream;
    .restart local v3    # "verified":Z
    .restart local v4    # "stream":Ljava/io/InputStream;
    .restart local p1    # "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v7, "BASE fingerprint unavailable"

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "verified":Z
    .end local v4    # "stream":Ljava/io/InputStream;
    .end local p1    # "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    throw v0

    .line 2064
    .end local v6    # "base":Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;
    .restart local v3    # "verified":Z
    .restart local v4    # "stream":Ljava/io/InputStream;
    .restart local p1    # "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Original ROM audio layout is not verified"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "verified":Z
    .end local v4    # "stream":Ljava/io/InputStream;
    .end local p1    # "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    throw v0

    .line 2057
    .end local v5    # "analysis":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;
    .restart local v3    # "verified":Z
    .restart local v4    # "stream":Ljava/io/InputStream;
    .restart local p1    # "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    :catchall_2
    move-exception v0

    move-object v5, v0

    goto :goto_3

    .line 2058
    :cond_a
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "verified":Z
    .end local v4    # "stream":Ljava/io/InputStream;
    .end local p1    # "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2057
    .restart local v3    # "verified":Z
    .restart local v4    # "stream":Ljava/io/InputStream;
    .restart local p1    # "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    :goto_3
    if-eqz v4, :cond_b

    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    :try_start_a
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "verified":Z
    .end local p1    # "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    :cond_b
    :goto_4
    throw v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 2108
    .end local v4    # "stream":Ljava/io/InputStream;
    .restart local v3    # "verified":Z
    .restart local p1    # "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    :catch_0
    move-exception v0

    .line 2109
    .local v0, "e":Ljava/lang/Exception;
    sget v4, Lcom/ahsim/demulation/R$string;->launcher_audio_error:I

    invoke-static {v0}, Lcom/ahsim/demulation/LauncherActivity;->safeMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2110
    .restart local v12    # "verdict":Ljava/lang/String;
    sget-object v4, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->AUDIO_MOD:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-static {v1, v4}, Lcom/ahsim/demulation/RomSelectionStore;->loadOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    move-result-object v4

    .line 2113
    .local v4, "current":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    if-eqz v4, :cond_c

    iget-object v5, v2, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->uri:Landroid/net/Uri;

    iget-object v6, v4, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->uri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2114
    sget-object v5, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->AUDIO_MOD:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-static {v1, v5}, Lcom/ahsim/demulation/RomSelectionStore;->clearOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)V

    .line 2115
    invoke-direct {v1}, Lcom/ahsim/demulation/LauncherActivity;->audioOverlayPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2118
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "current":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    :cond_c
    :goto_5
    move-object v0, v12

    .line 2119
    .local v0, "result":Ljava/lang/String;
    move v4, v3

    .line 2120
    .local v4, "accepted":Z
    new-instance v5, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda13;

    invoke-direct {v5, v1, v0, v4}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda13;-><init>(Lcom/ahsim/demulation/LauncherActivity;Ljava/lang/String;Z)V

    invoke-virtual {v1, v5}, Lcom/ahsim/demulation/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2130
    return-void
.end method

.method private synthetic lambda$startMediaModInstallation$43(Ljava/lang/String;II)V
    .locals 5
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "completed"    # I
    .param p3, "total"    # I

    .line 1196
    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->mediaModStatus:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1197
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->mediaModStatus:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->launcher_mod_extracting:I

    .line 1198
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->mediaModProgressGroupLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1199
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 1197
    invoke-virtual {p0, v1, v2}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1200
    return-void

    .line 1196
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$startMediaModInstallation$44(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "completed"    # I
    .param p3, "total"    # I
    .param p4, "asset"    # Ljava/lang/String;

    .line 1195
    new-instance v0, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda72;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda72;-><init>(Lcom/ahsim/demulation/LauncherActivity;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startMediaModInstallation$45(Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;)V
    .locals 4
    .param p1, "outcome"    # Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;

    .line 1215
    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1216
    :cond_0
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshMediaModButton()V

    .line 1217
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->mediaModStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1218
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->mediaModStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->formatMediaModOutcome(Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->mediaModStatus:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->hasAnyOverlay()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1220
    const/16 v1, 0xcd

    const/16 v2, 0x89

    const/16 v3, 0x75

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    goto :goto_0

    :cond_1
    sget v1, Lcom/ahsim/demulation/LauncherActivity;->ACCENT:I

    .line 1219
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1222
    :cond_2
    invoke-virtual {p1}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->allCompatibleGraphicsIdentical()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1223
    sget v0, Lcom/ahsim/demulation/R$string;->launcher_mods_identical_toast:I

    goto :goto_1

    .line 1224
    :cond_3
    invoke-virtual {p1}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->hasAnyOverlay()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1225
    sget v0, Lcom/ahsim/demulation/R$string;->launcher_mods_applied_toast:I

    goto :goto_1

    .line 1226
    :cond_4
    sget v0, Lcom/ahsim/demulation/R$string;->launcher_mods_base_fallback_toast:I

    :goto_1
    nop

    .line 1227
    .local v0, "toastText":I
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1228
    return-void
.end method

.method private synthetic lambda$startMediaModInstallation$46(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1232
    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1233
    :cond_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->clear(Landroid/content/Context;)V

    .line 1234
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshMediaModButton()V

    .line 1235
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->mediaModStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1236
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->mediaModStatus:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->launcher_mods_error:I

    invoke-static {p1}, Lcom/ahsim/demulation/LauncherActivity;->safeMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1237
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->mediaModStatus:Landroid/widget/TextView;

    const/16 v1, 0x69

    const/16 v2, 0x60

    const/16 v3, 0xe2

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1239
    :cond_1
    sget v0, Lcom/ahsim/demulation/R$string;->launcher_mods_error:I

    invoke-static {p1}, Lcom/ahsim/demulation/LauncherActivity;->safeMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1240
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1241
    return-void
.end method

.method private synthetic lambda$startMediaModInstallation$47(Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V
    .locals 4
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    .line 1193
    const-string v0, "DemulationLauncher"

    :try_start_0
    new-instance v1, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda3;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    .line 1194
    invoke-static {p0, p1, v1}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->install(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$ProgressListener;)Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;

    move-result-object v1

    .line 1201
    .local v1, "outcome":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;
    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->saveGraphicsComparison(Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;)V

    .line 1202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MEDIA_MOD result profile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->profileId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " label="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->profileLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " layout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " terrain_cap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->terrainCapability:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " terrain_state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->terrainRadar:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tactical_cap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->tacticalCapability:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tactical_state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->tacticalSprites:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " candidates="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->candidateEntries:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " identical="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->identicalEntries:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " entries="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->overlayEntries:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " paths="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->overlayPaths:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adapter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->adapterSummary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    new-instance v2, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v1}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda4;-><init>(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;)V

    invoke-virtual {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1242
    .end local v1    # "outcome":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;
    goto :goto_1

    .line 1229
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 1230
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MEDIA_MOD failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/ahsim/demulation/LauncherActivity;->safeMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1231
    new-instance v0, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, v1}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda5;-><init>(Lcom/ahsim/demulation/LauncherActivity;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1243
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private synthetic lambda$startRussianBaseLocalizationRefresh$73(Z)V
    .locals 3
    .param p1, "openAfter"    # Z

    .line 2400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/LauncherActivity;->baseLocalizationRefreshInFlight:Z

    .line 2401
    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2402
    :cond_0
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->currentSelectionMatchesReadyBundle()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2403
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->baseLocalizationReadyOrNotRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    nop

    :goto_0
    iput-boolean v0, p0, Lcom/ahsim/demulation/LauncherActivity;->openGameAvailable:Z

    .line 2404
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareCoreButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2405
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareCoreButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/ahsim/demulation/LauncherActivity;->openGameAvailable:Z

    if-eqz v1, :cond_2

    .line 2406
    sget v1, Lcom/ahsim/demulation/R$string;->launcher_open_game:I

    goto :goto_1

    :cond_2
    sget v1, Lcom/ahsim/demulation/R$string;->launcher_prepare_core_button:I

    .line 2405
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 2407
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareStatus:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/ahsim/demulation/LauncherActivity;->openGameAvailable:Z

    if-eqz v1, :cond_3

    .line 2408
    sget v1, Lcom/ahsim/demulation/R$string;->launcher_russian_base_ready:I

    goto :goto_2

    :cond_3
    sget v1, Lcom/ahsim/demulation/R$string;->launcher_identified_waiting_extraction:I

    .line 2407
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2409
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshPreparationInfoVisibility()V

    .line 2410
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshBaseLanguageStatus()V

    .line 2411
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshBaseRomSelectionControls()V

    .line 2412
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshReadyOnlyPanels()V

    .line 2413
    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/ahsim/demulation/LauncherActivity;->openGameAvailable:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->openGame()V

    .line 2414
    :cond_4
    return-void
.end method

.method private synthetic lambda$startRussianBaseLocalizationRefresh$74(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 2418
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/LauncherActivity;->baseLocalizationRefreshInFlight:Z

    .line 2419
    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2420
    :cond_0
    iput-boolean v0, p0, Lcom/ahsim/demulation/LauncherActivity;->openGameAvailable:Z

    .line 2421
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->setPreparationInfoVisible(Z)V

    .line 2422
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareCoreButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2423
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareCoreButton:Landroid/widget/Button;

    sget v1, Lcom/ahsim/demulation/R$string;->launcher_prepare_core_again:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 2424
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareStatus:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->launcher_base_language_prepare_error:I

    invoke-static {p1}, Lcom/ahsim/demulation/LauncherActivity;->safeMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2425
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshBaseLanguageStatus()V

    .line 2426
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshBaseRomSelectionControls()V

    .line 2427
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshReadyOnlyPanels()V

    .line 2428
    return-void
.end method

.method private synthetic lambda$startRussianBaseLocalizationRefresh$75(Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Z)V
    .locals 2
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .param p2, "identity"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .param p3, "openAfter"    # Z

    .line 2397
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller;->install(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller$Outcome;

    .line 2398
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->clearLegacyLanguageOverlayState(Z)V

    .line 2399
    new-instance v0, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p3}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda23;-><init>(Lcom/ahsim/demulation/LauncherActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2429
    goto :goto_1

    .line 2415
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2416
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->clear(Landroid/content/Context;)V

    .line 2417
    new-instance v1, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, v0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda24;-><init>(Lcom/ahsim/demulation/LauncherActivity;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2430
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private synthetic lambda$startRussianVoicePackRefresh$53()V
    .locals 1

    .line 1512
    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1513
    :cond_0
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshRussianVoiceControls()V

    .line 1514
    return-void
.end method

.method private synthetic lambda$startRussianVoicePackRefresh$54(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1518
    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1519
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->russianVoiceCheck:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1520
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->russianVoiceCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1521
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->russianVoiceCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1523
    :cond_1
    invoke-static {p0, v1}, Lcom/ahsim/demulation/RomRussianVoicePreferences;->setEnabled(Landroid/content/Context;Z)V

    .line 1524
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->russianVoiceStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1525
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->russianVoiceStatus:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->launcher_russian_voice_error:I

    invoke-static {p1}, Lcom/ahsim/demulation/LauncherActivity;->safeMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1526
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->russianVoiceStatus:Landroid/widget/TextView;

    const/16 v1, 0x69

    const/16 v2, 0x60

    const/16 v3, 0xe2

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1528
    :cond_2
    return-void
.end method

.method private synthetic lambda$startRussianVoicePackRefresh$55(Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V
    .locals 5
    .param p1, "selected"    # Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    .line 1508
    const-string v0, "DemulationLauncher"

    :try_start_0
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RomRussianVoicePackInstaller;->install(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)Lcom/ahsim/demulation/RomRussianVoicePackStore$Snapshot;

    move-result-object v1

    .line 1509
    .local v1, "voice":Lcom/ahsim/demulation/RomRussianVoicePackStore$Snapshot;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RUSSIAN_VOICE prepared bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v1, Lcom/ahsim/demulation/RomRussianVoicePackStore$Snapshot;->payloadBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sha256="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "9539071dac7d44ca4cd96fe8abd0f56d773260dc409b009128939691013ac1fa"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    new-instance v2, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda54;

    invoke-direct {v2, p0}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda54;-><init>(Lcom/ahsim/demulation/LauncherActivity;)V

    invoke-virtual {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1529
    .end local v1    # "voice":Lcom/ahsim/demulation/RomRussianVoicePackStore$Snapshot;
    goto :goto_1

    .line 1515
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 1516
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RUSSIAN_VOICE preparation failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/ahsim/demulation/LauncherActivity;->safeMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1517
    new-instance v0, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda56;

    invoke-direct {v0, p0, v1}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda56;-><init>(Lcom/ahsim/demulation/LauncherActivity;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1530
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private synthetic lambda$startTranslationAudit$49(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;)V
    .locals 4
    .param p1, "result"    # Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;

    .line 1348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/LauncherActivity;->translationRefreshInFlight:Z

    .line 1349
    iput-boolean v0, p0, Lcom/ahsim/demulation/LauncherActivity;->openGameAfterTranslationRefresh:Z

    .line 1350
    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1351
    :cond_0
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshTranslationButton()V

    .line 1352
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->translationStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1353
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->translationStatus:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->launcher_translation_unsupported:I

    iget-object v2, p1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->profileLabel:Ljava/lang/String;

    iget-object v3, p1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    .line 1354
    invoke-virtual {v3}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->name()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 1353
    invoke-virtual {p0, v1, v2}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1355
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->translationStatus:Landroid/widget/TextView;

    const/16 v1, 0x69

    const/16 v2, 0x60

    const/16 v3, 0xe2

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1357
    :cond_1
    return-void
.end method

.method private synthetic lambda$startTranslationAudit$50(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller$Outcome;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V
    .locals 7
    .param p1, "result"    # Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;
    .param p2, "pack"    # Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller$Outcome;
    .param p3, "verified"    # Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    .line 1373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/LauncherActivity;->translationRefreshInFlight:Z

    .line 1374
    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1375
    :cond_0
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshTranslationButton()V

    .line 1376
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->translationStatus:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 1377
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->translationStatus:Landroid/widget/TextView;

    sget v2, Lcom/ahsim/demulation/R$string;->launcher_translation_pack_ready:I

    iget-object v3, p1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->profileLabel:Ljava/lang/String;

    iget-object v4, p2, Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller$Outcome;->snapshot:Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;

    iget v4, v4, Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;->assetCount:I

    .line 1378
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p2, Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller$Outcome;->textAssets:I

    .line 1379
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p2, Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller$Outcome;->glyphBitmapAssets:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 1377
    invoke-virtual {p0, v2, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1380
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->translationStatus:Landroid/widget/TextView;

    const/16 v2, 0xcd

    const/16 v3, 0x89

    const/16 v4, 0x75

    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1382
    :cond_1
    sget v1, Lcom/ahsim/demulation/R$string;->launcher_translation_pack_ready_toast:I

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 1383
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1384
    invoke-direct {p0, p3}, Lcom/ahsim/demulation/LauncherActivity;->startRussianVoicePackRefresh(Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V

    .line 1385
    iget-boolean v1, p0, Lcom/ahsim/demulation/LauncherActivity;->openGameAfterTranslationRefresh:Z

    if-eqz v1, :cond_2

    .line 1386
    iput-boolean v0, p0, Lcom/ahsim/demulation/LauncherActivity;->openGameAfterTranslationRefresh:Z

    .line 1387
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->openGame()V

    .line 1389
    :cond_2
    return-void
.end method

.method private synthetic lambda$startTranslationAudit$51(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/LauncherActivity;->translationRefreshInFlight:Z

    .line 1394
    iput-boolean v0, p0, Lcom/ahsim/demulation/LauncherActivity;->openGameAfterTranslationRefresh:Z

    .line 1395
    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1396
    :cond_0
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshTranslationButton()V

    .line 1397
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->translationStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1398
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->translationStatus:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->launcher_translation_error:I

    .line 1399
    invoke-static {p1}, Lcom/ahsim/demulation/LauncherActivity;->safeMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 1398
    invoke-virtual {p0, v1, v2}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1400
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->translationStatus:Landroid/widget/TextView;

    const/16 v1, 0x69

    const/16 v2, 0x60

    const/16 v3, 0xe2

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1402
    :cond_1
    return-void
.end method

.method private synthetic lambda$startTranslationAudit$52(Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V
    .locals 10
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    .line 1332
    const-string v0, "DemulationLauncher"

    :try_start_0
    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1333
    .local v1, "input":Ljava/io/InputStream;
    if-eqz v1, :cond_5

    .line 1334
    :try_start_1
    iget-wide v2, p1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->size:J

    .line 1335
    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->analyze(Ljava/io/InputStream;J)Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;

    move-result-object v2

    .line 1336
    .local v2, "result":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;
    iget-boolean v3, v2, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->exactAuditedProfile:Z

    if-eqz v3, :cond_0

    const-string v3, "translation_ru_shedevr_lipetsk_usa"

    iget-object v4, v2, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->profileId:Ljava/lang/String;

    .line 1337
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->TRANSLATION:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    sget-object v4, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->LOCALIZATION_TEXT:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    .line 1338
    invoke-virtual {v2, v3, v4}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->roleMayUseGroup(Lcom/ahsim/demulation/RomSelectionStore$SourceRole;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->TRANSLATION:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    sget-object v4, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->LOCALIZATION_GLYPHS:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    .line 1340
    invoke-virtual {v2, v3, v4}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->roleMayUseGroup(Lcom/ahsim/demulation/RomSelectionStore$SourceRole;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1342
    .local v3, "accepted":Z
    :goto_0
    const-string v4, " sha256="

    const-string v5, " layout="

    if-nez v3, :cond_2

    .line 1343
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TRANSLATION rejected profile="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->profileId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->normalizedSha256:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    sget-object v4, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->TRANSLATION:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-static {p0, v4}, Lcom/ahsim/demulation/RomSelectionStore;->clearOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)V

    .line 1347
    new-instance v4, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda14;

    invoke-direct {v4, p0, v2}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda14;-><init>(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;)V

    invoke-virtual {p0, v4}, Lcom/ahsim/demulation/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1390
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1358
    :cond_1
    return-void

    .line 1360
    :cond_2
    :try_start_4
    iget-object v6, v2, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->normalizedSha256:Ljava/lang/String;

    iget-object v7, v2, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->profileId:Ljava/lang/String;

    invoke-static {p0, p1, v6, v7}, Lcom/ahsim/demulation/RomSelectionStore;->recordOverlayFingerprint(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    sget-object v6, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->TRANSLATION:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-static {p0, v6}, Lcom/ahsim/demulation/RomSelectionStore;->loadOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    move-result-object v6

    .line 1364
    .local v6, "verified":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    if-eqz v6, :cond_4

    .line 1365
    nop

    .line 1366
    invoke-static {p0, v6}, Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller;->install(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller$Outcome;

    move-result-object v7

    .line 1367
    .local v7, "pack":Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller$Outcome;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TRANSLATION accepted profile="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->profileId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v2, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->normalizedSha256:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " localizationAssets="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v7, Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller$Outcome;->snapshot:Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;

    iget v5, v5, Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;->assetCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " payloadBytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v7, Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller$Outcome;->snapshot:Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;

    iget-wide v8, v5, Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;->payloadBytes:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    new-instance v4, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda15;

    invoke-direct {v4, p0, v2, v7, v6}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda15;-><init>(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller$Outcome;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V

    invoke-virtual {p0, v4}, Lcom/ahsim/demulation/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1390
    .end local v2    # "result":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;
    .end local v3    # "accepted":Z
    .end local v6    # "verified":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    .end local v7    # "pack":Lcom/ahsim/demulation/RomRussianLocalizationPackInstaller$Outcome;
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1403
    .end local v1    # "input":Ljava/io/InputStream;
    :cond_3
    goto :goto_4

    .line 1364
    .restart local v1    # "input":Ljava/io/InputStream;
    .restart local v2    # "result":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;
    .restart local v3    # "accepted":Z
    .restart local v6    # "verified":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    :cond_4
    :try_start_6
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Verified translation source disappeared"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "input":Ljava/io/InputStream;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    throw v4

    .line 1332
    .end local v2    # "result":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;
    .end local v3    # "accepted":Z
    .end local v6    # "verified":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    .restart local v1    # "input":Ljava/io/InputStream;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 1333
    :cond_5
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Translation ROM stream is unavailable"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "input":Ljava/io/InputStream;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1332
    .restart local v1    # "input":Ljava/io/InputStream;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    :goto_1
    if-eqz v1, :cond_6

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    :cond_6
    :goto_2
    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    .line 1390
    .end local v1    # "input":Ljava/io/InputStream;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 1391
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TRANSLATION audit failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/ahsim/demulation/LauncherActivity;->safeMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1392
    new-instance v0, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, v1}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda16;-><init>(Lcom/ahsim/demulation/LauncherActivity;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1404
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method private linkButton(Ljava/lang/String;)Landroid/widget/Button;
    .locals 4
    .param p1, "label"    # Ljava/lang/String;

    .line 2526
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 2527
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2528
    sget v1, Lcom/ahsim/demulation/LauncherActivity;->BLUE:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 2529
    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 2530
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2531
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 2532
    const/16 v2, 0x26

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setMinHeight(I)V

    .line 2533
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2534
    .local v2, "bg":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2535
    const/16 v3, 0x9

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 2536
    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 2537
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2538
    return-object v0
.end method

.method private matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3
    .param p1, "topMargin"    # I

    .line 2591
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2594
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2595
    return-object v0
.end method

.method private maybeRefreshRussianVoicePack()V
    .locals 4

    .line 1484
    sget-object v0, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->TRANSLATION:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-static {p0, v0}, Lcom/ahsim/demulation/RomSelectionStore;->loadOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    move-result-object v0

    .line 1486
    .local v0, "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    if-eqz v0, :cond_2

    const-string v1, "translation_ru_shedevr_lipetsk_usa"

    iget-object v2, v0, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->profileId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    .line 1487
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1491
    :cond_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomRussianVoicePackStore;->loadActive(Landroid/content/Context;)Lcom/ahsim/demulation/RomRussianVoicePackStore$Snapshot;

    move-result-object v1

    .line 1492
    .local v1, "active":Lcom/ahsim/demulation/RomRussianVoicePackStore$Snapshot;
    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    iget-object v3, v1, Lcom/ahsim/demulation/RomRussianVoicePackStore$Snapshot;->sourceSha256:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1493
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshRussianVoiceControls()V

    .line 1494
    return-void

    .line 1496
    :cond_1
    invoke-direct {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->startRussianVoicePackRefresh(Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V

    .line 1497
    return-void

    .line 1488
    .end local v1    # "active":Lcom/ahsim/demulation/RomRussianVoicePackStore$Snapshot;
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshRussianVoiceControls()V

    .line 1489
    return-void
.end method

.method private maybeRefreshTranslationPackForRuntime()V
    .locals 3

    .line 1421
    sget-object v0, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->TRANSLATION:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-static {p0, v0}, Lcom/ahsim/demulation/RomSelectionStore;->loadOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    move-result-object v0

    .line 1423
    .local v0, "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->translationRuntimeReadyOrAbsent()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1424
    :cond_0
    const-string v1, "DemulationLauncher"

    const-string v2, "TRANSLATION runtime pack migration required; rebuilding current localization format"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    invoke-direct {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->startTranslationAudit(Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V

    .line 1426
    return-void

    .line 1423
    :cond_1
    :goto_0
    return-void
.end method

.method private mediaModProgressGroupLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "group"    # Ljava/lang/String;

    .line 1662
    const-string v0, "WORLD_TERRAIN_RADAR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1663
    sget v0, Lcom/ahsim/demulation/R$string;->launcher_mod_progress_terrain:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1664
    :cond_0
    const-string v0, "TACTICAL_SPRITES"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1665
    sget v0, Lcom/ahsim/demulation/R$string;->launcher_mod_progress_tactical:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1666
    :cond_1
    sget v0, Lcom/ahsim/demulation/R$string;->launcher_mod_progress_graphics:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private openAudioModPicker()V
    .locals 2

    .line 1106
    iget-boolean v0, p0, Lcom/ahsim/demulation/LauncherActivity;->openGameAvailable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->currentIdentity:Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->currentIdentity:Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    iget-boolean v0, v0, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->basePreparationSupported:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1108
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1109
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1110
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1111
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1112
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1113
    const/16 v1, 0x914

    invoke-virtual {p0, v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1114
    return-void

    .line 1107
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void
.end method

.method private openGame()V
    .locals 2

    .line 2349
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->hasSelectedGame()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2352
    :cond_0
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->baseLocalizationReadyOrNotRequired()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2353
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->startRussianBaseLocalizationRefresh(Z)V

    .line 2354
    return-void

    .line 2356
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ahsim/demulation/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2357
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 2358
    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->finish()V

    .line 2359
    return-void
.end method

.method private openMediaModPicker()V
    .locals 2

    .line 1096
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->hasSelectedGame()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/ahsim/demulation/RomSelectionStore;->load(Landroid/content/Context;)Lcom/ahsim/demulation/RomSelectionStore$Selection;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1097
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1098
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1099
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1100
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1101
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1102
    const/16 v1, 0x912

    invoke-virtual {p0, v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1103
    return-void

    .line 1096
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void
.end method

.method private openRazorMap558()V
    .locals 1

    .line 698
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->openRazorMap558(Z)V

    return-void
.end method

.method private openRazorMap558(Z)V
    .locals 6
    .param p1, "quickPlay662"    # Z

    .line 701
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorAnalysis:Lcom/ahsim/demulation/RazorRomAnalysis;

    .line 702
    .local v0, "analysis":Lcom/ahsim/demulation/RazorRomAnalysis;
    invoke-static {p0}, Lcom/ahsim/demulation/RazorGameRomStore;->load(Landroid/content/Context;)Lcom/ahsim/demulation/RazorGameRomStore$Entry;

    move-result-object v1

    .line 703
    .local v1, "selected":Lcom/ahsim/demulation/RazorGameRomStore$Entry;
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->isRazorSelected()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    iget-boolean v2, v0, Lcom/ahsim/demulation/RazorRomAnalysis;->recognized:Z

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/ahsim/demulation/RazorGameRomStore$Entry;->sha256:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/ahsim/demulation/RazorGameRomStore$Entry;->sha256:Ljava/lang/String;

    iget-object v4, v0, Lcom/ahsim/demulation/RazorRomAnalysis;->sha256:Ljava/lang/String;

    .line 705
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 711
    :cond_0
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->closeRazorCampaignSession()V

    .line 712
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 713
    .local v2, "mapIntent":Landroid/content/Intent;
    const-string v4, "razor_map558_profile"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 714
    const-string v4, "razor_quick_play662"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 715
    nop

    .line 716
    iget-object v4, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionHouse:Landroid/widget/Spinner;

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionHouse:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    .line 715
    :goto_0
    const-string v5, "razor_map558_house"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 717
    nop

    .line 718
    iget-object v4, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionMission:Landroid/widget/Spinner;

    if-nez v4, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionMission:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    add-int/2addr v3, v4

    .line 717
    :goto_1
    const-string v4, "razor_map558_mission"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 719
    invoke-virtual {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 720
    return-void

    .line 706
    .end local v2    # "mapIntent":Landroid/content/Intent;
    :cond_3
    :goto_2
    sget v2, Lcom/ahsim/demulation/R$string;->razor_map558_need_rom:I

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 707
    return-void
.end method

.method private openRazorRomPicker()V
    .locals 0

    .line 925
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->openRomPicker()V

    .line 926
    return-void
.end method

.method private openRomPicker()V
    .locals 2

    .line 1041
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->hasSelectedGame()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->isRazorSelected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1042
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1043
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1045
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1046
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1047
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1048
    const/16 v1, 0x911

    invoke-virtual {p0, v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1049
    return-void
.end method

.method private openTranslationPicker()V
    .locals 2

    .line 1117
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->hasSelectedGame()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/ahsim/demulation/RomSelectionStore;->load(Landroid/content/Context;)Lcom/ahsim/demulation/RomSelectionStore$Selection;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1118
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1119
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1120
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1121
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1122
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1123
    const/16 v1, 0x913

    invoke-virtual {p0, v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1124
    return-void

    .line 1117
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void
.end method

.method private orderInput557(ILjava/lang/String;)Landroid/widget/EditText;
    .locals 2
    .param p1, "hint"    # I
    .param p2, "initial"    # Ljava/lang/String;

    .line 828
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 829
    .local v0, "e":Landroid/widget/EditText;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 830
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 831
    sget v1, Lcom/ahsim/demulation/LauncherActivity;->TEXT:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 832
    sget v1, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 833
    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 834
    invoke-virtual {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 835
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 836
    return-object v0
.end method

.method private pollRazorCampaignSession()V
    .locals 13

    .line 795
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 796
    :try_start_0
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorCampaignSession:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    if-nez v0, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 798
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorCampaignSession:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->poll()Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;

    move-result-object v0

    .line 799
    .local v0, "s":Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStatus:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/R$string;->razor_session_summary:I

    iget v4, v0, Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;->house:I

    .line 800
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v4, v0, Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;->mission:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v4, v0, Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;->gridSide:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v4, v0, Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;->units:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v4, v0, Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;->buildings:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v4, v0, Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;->uninitializedCells:I

    .line 801
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v4, v0, Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;->reads:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v4, v0, Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;->ticks:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array/range {v5 .. v12}, [Ljava/lang/Object;

    move-result-object v4

    .line 799
    invoke-virtual {p0, v3, v4}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 805
    .end local v0    # "s":Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;
    goto :goto_0

    .line 802
    :catch_0
    move-exception v0

    .line 803
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->closeRazorCampaignSession()V

    .line 804
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStatus:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/R$string;->razor_session_failed:I

    invoke-static {v0}, Lcom/ahsim/demulation/LauncherActivity;->safeMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 806
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_0
    monitor-exit v1

    .line 807
    return-void

    .line 806
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private primaryButton(Ljava/lang/String;)Landroid/widget/Button;
    .locals 4
    .param p1, "label"    # Ljava/lang/String;

    .line 2552
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 2553
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2554
    const/16 v1, 0x17

    const/16 v2, 0x12

    const/16 v3, 0x18

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 2555
    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 2556
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2557
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 2558
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2559
    .local v1, "bg":Landroid/graphics/drawable/GradientDrawable;
    sget v3, Lcom/ahsim/demulation/LauncherActivity;->ACCENT:I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2560
    const/16 v3, 0xd

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 2561
    invoke-direct {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v2

    sget v3, Lcom/ahsim/demulation/LauncherActivity;->ACCENT_DARK:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 2562
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2563
    const/16 v2, 0x34

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setMinHeight(I)V

    .line 2564
    return-object v0
.end method

.method private probeRazorCampaignObject()V
    .locals 11

    .line 812
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 813
    :try_start_0
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorCampaignSession:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    if-nez v0, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 815
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorCampaignSession:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->probeObjectStep556()Lcom/ahsim/demulation/RazorCampaignNativeSession$ExperimentalStep;

    move-result-object v0

    .line 816
    .local v0, "p":Lcom/ahsim/demulation/RazorCampaignNativeSession$ExperimentalStep;
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStatus:Landroid/widget/TextView;

    iget-boolean v3, v0, Lcom/ahsim/demulation/RazorCampaignNativeSession$ExperimentalStep;->moved:Z

    if-eqz v3, :cond_1

    .line 817
    sget v3, Lcom/ahsim/demulation/R$string;->razor_sandbox_probe_moved:I

    iget v4, v0, Lcom/ahsim/demulation/RazorCampaignNativeSession$ExperimentalStep;->ordinal:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v4, v0, Lcom/ahsim/demulation/RazorCampaignNativeSession$ExperimentalStep;->fromX:I

    .line 818
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v4, v0, Lcom/ahsim/demulation/RazorCampaignNativeSession$ExperimentalStep;->fromY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v4, v0, Lcom/ahsim/demulation/RazorCampaignNativeSession$ExperimentalStep;->toX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v4, v0, Lcom/ahsim/demulation/RazorCampaignNativeSession$ExperimentalStep;->toY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v4, v0, Lcom/ahsim/demulation/RazorCampaignNativeSession$ExperimentalStep;->steps:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v5 .. v10}, [Ljava/lang/Object;

    move-result-object v4

    .line 817
    invoke-virtual {p0, v3, v4}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 819
    :cond_1
    sget v3, Lcom/ahsim/demulation/R$string;->razor_sandbox_probe_blocked:I

    invoke-virtual {p0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 816
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 823
    .end local v0    # "p":Lcom/ahsim/demulation/RazorCampaignNativeSession$ExperimentalStep;
    goto :goto_2

    .line 820
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 821
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->closeRazorCampaignSession()V

    .line 822
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStatus:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/R$string;->razor_session_failed:I

    invoke-static {v0}, Lcom/ahsim/demulation/LauncherActivity;->safeMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 824
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_2
    monitor-exit v1

    .line 825
    return-void

    .line 824
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private profileLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "profileId"    # Ljava/lang/String;

    .line 1635
    const-string v0, "translation_ru_shedevr_lipetsk_usa"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1636
    const-string v0, "Russian translation / Shedevr & Lipetsk / 02.08.2011"

    return-object v0

    .line 1637
    :cond_0
    const-string v0, "dunehack_r79_revolution_ang_voice"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1638
    const-string v0, "Dune Revolution / Rebuild R79 / English voice"

    return-object v0

    .line 1639
    :cond_1
    const-string v0, "dunehack_r79_revolution_rus_voice"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1640
    const-string v0, "Dune Revolution / Rebuild R79 / Russian voice"

    return-object v0

    .line 1641
    :cond_2
    const-string v0, "dunehack_r80b_labyrinth_35_successor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1642
    const-string v0, "DuneHack Rebuild R80b / Labyrinth 3.5 Successor"

    return-object v0

    .line 1643
    :cond_3
    const-string v0, "dunehack_r81b_mission_demolition_ru"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1644
    const-string v0, "DuneHack Rebuild R81b / Mission Demolition [rus]"

    return-object v0

    .line 1645
    :cond_4
    const-string v0, "dunehack_r81b_consul_war_2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1646
    const-string v0, "DuneHack Rebuild R81b / Consul War 2"

    return-object v0

    .line 1647
    :cond_5
    const-string v0, "dunehack_r81c_razor_missions"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1648
    const-string v0, "DuneHack Rebuild R81c / Razor Missions"

    return-object v0

    .line 1649
    :cond_6
    const-string v0, "candidate:dune_ii_requite_r82b"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1650
    const-string v0, "Dune II Requite / R82B (audit only)"

    return-object v0

    .line 1651
    :cond_7
    const-string v0, "candidate:dunehack_r82b"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1652
    const-string v0, "DuneHack Rebuild R82B / compatibility unknown"

    return-object v0

    .line 1653
    :cond_8
    const-string v0, "candidate:dunehack_r82c"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1654
    const-string v0, "DuneHack Rebuild R82C family / detection only"

    return-object v0

    .line 1655
    :cond_9
    const-string v0, "candidate:dunehack_r82c_plus"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1656
    const-string v0, "DuneHack Rebuild R82C+ / Emperor175 family / detection only"

    return-object v0

    .line 1657
    :cond_a
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_0

    .line 1658
    :cond_b
    return-object p1

    .line 1657
    :cond_c
    :goto_0
    sget v0, Lcom/ahsim/demulation/R$string;->launcher_unknown_value:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private refreshAudioModButton()V
    .locals 4

    .line 1996
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->audioModButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->audioModStatus:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_3

    .line 1997
    :cond_0
    sget-object v0, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->AUDIO_MOD:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-static {p0, v0}, Lcom/ahsim/demulation/RomSelectionStore;->loadOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    move-result-object v0

    .line 1999
    .local v0, "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->audioModButton:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 2000
    sget v2, Lcom/ahsim/demulation/R$string;->launcher_audio_choose:I

    invoke-virtual {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->displayName:Ljava/lang/String;

    .line 1999
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2001
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->storedAudioAuditReport()Ljava/lang/String;

    move-result-object v1

    .line 2002
    .local v1, "report":Ljava/lang/String;
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->audioModStatus:Landroid/widget/TextView;

    if-nez v0, :cond_2

    sget v3, Lcom/ahsim/demulation/R$string;->launcher_audio_not_selected:I

    invoke-virtual {p0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2003
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    sget v3, Lcom/ahsim/demulation/R$string;->launcher_audio_stage2_checked:I

    invoke-virtual {p0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2004
    :cond_3
    iget-object v3, v0, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    sget v3, Lcom/ahsim/demulation/R$string;->launcher_audio_pending:I

    invoke-virtual {p0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2005
    :cond_4
    sget v3, Lcom/ahsim/demulation/R$string;->launcher_audio_verified_stage1:I

    invoke-virtual {p0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2002
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2006
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->audioReportButton:Landroid/widget/Button;

    if-eqz v2, :cond_6

    .line 2007
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->audioReportButton:Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x8

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2009
    :cond_6
    return-void

    .line 1996
    .end local v0    # "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    .end local v1    # "report":Ljava/lang/String;
    :cond_7
    :goto_3
    return-void
.end method

.method private refreshBaseLanguageStatus()V
    .locals 6

    .line 2441
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->baseLanguageStatus:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 2442
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->currentIdentity:Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    .line 2443
    .local v0, "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    if-eqz v0, :cond_6

    iget-object v1, v0, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->recognition:Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    sget-object v2, Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;->EXACT_PROFILE:Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    if-eq v1, v2, :cond_1

    goto/16 :goto_1

    .line 2447
    :cond_1
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->baseLanguageStatus:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2448
    invoke-direct {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->isRussianBase(Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Z

    move-result v1

    const/16 v2, 0x89

    const/16 v3, 0xcd

    const/16 v4, 0x75

    if-eqz v1, :cond_3

    .line 2449
    iget-boolean v1, p0, Lcom/ahsim/demulation/LauncherActivity;->openGameAvailable:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->baseLocalizationReadyOrNotRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2450
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->baseLanguageStatus:Landroid/widget/TextView;

    sget v5, Lcom/ahsim/demulation/R$string;->launcher_base_language_russian_active:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2451
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->baseLanguageStatus:Landroid/widget/TextView;

    invoke-static {v4, v3, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 2453
    :cond_2
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->baseLanguageStatus:Landroid/widget/TextView;

    sget v2, Lcom/ahsim/demulation/R$string;->launcher_base_language_russian_auto:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2454
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->baseLanguageStatus:Landroid/widget/TextView;

    sget v2, Lcom/ahsim/demulation/LauncherActivity;->ACCENT:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 2456
    :cond_3
    const-string v1, "dune_arrakis_germany_gm_t70246_00"

    iget-object v5, v0, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2457
    iget-boolean v1, p0, Lcom/ahsim/demulation/LauncherActivity;->openGameAvailable:Z

    if-eqz v1, :cond_4

    .line 2458
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->baseLanguageStatus:Landroid/widget/TextView;

    sget v5, Lcom/ahsim/demulation/R$string;->launcher_base_language_german_active:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2459
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->baseLanguageStatus:Landroid/widget/TextView;

    invoke-static {v4, v3, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 2461
    :cond_4
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->baseLanguageStatus:Landroid/widget/TextView;

    sget v2, Lcom/ahsim/demulation/R$string;->launcher_base_language_german_auto:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2462
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->baseLanguageStatus:Landroid/widget/TextView;

    sget v2, Lcom/ahsim/demulation/LauncherActivity;->ACCENT:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 2465
    :cond_5
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->baseLanguageStatus:Landroid/widget/TextView;

    sget v2, Lcom/ahsim/demulation/R$string;->launcher_base_language_english:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2466
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->baseLanguageStatus:Landroid/widget/TextView;

    sget v2, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2468
    :goto_0
    return-void

    .line 2444
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->baseLanguageStatus:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2445
    return-void
.end method

.method private refreshBaseRomSelectionControls()V
    .locals 7

    .line 1023
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->currentIdentity:Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->currentIdentity:Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    iget-boolean v0, v0, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->basePreparationSupported:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1024
    .local v0, "supportedBase":Z
    :goto_0
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->currentSelection:Lcom/ahsim/demulation/RomSelectionStore$Selection;

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v1

    .line 1025
    .local v3, "showPicker":Z
    :goto_2
    iget-object v4, p0, Lcom/ahsim/demulation/LauncherActivity;->chooseButton:Landroid/widget/Button;

    const/16 v5, 0x8

    if-eqz v4, :cond_5

    .line 1026
    iget-object v4, p0, Lcom/ahsim/demulation/LauncherActivity;->chooseButton:Landroid/widget/Button;

    if-eqz v3, :cond_3

    move v6, v2

    goto :goto_3

    :cond_3
    move v6, v5

    :goto_3
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1027
    iget-object v4, p0, Lcom/ahsim/demulation/LauncherActivity;->chooseButton:Landroid/widget/Button;

    sget v6, Lcom/ahsim/demulation/R$string;->launcher_select_rom:I

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(I)V

    .line 1028
    iget-object v4, p0, Lcom/ahsim/demulation/LauncherActivity;->chooseButton:Landroid/widget/Button;

    if-eqz v3, :cond_4

    iget-boolean v6, p0, Lcom/ahsim/demulation/LauncherActivity;->baseLocalizationRefreshInFlight:Z

    if-nez v6, :cond_4

    move v6, v1

    goto :goto_4

    :cond_4
    move v6, v2

    :goto_4
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1030
    :cond_5
    iget-object v4, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedClearButton:Landroid/widget/TextView;

    if-eqz v4, :cond_7

    .line 1031
    iget-object v4, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedClearButton:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/ahsim/demulation/LauncherActivity;->currentSelection:Lcom/ahsim/demulation/RomSelectionStore$Selection;

    if-eqz v6, :cond_6

    move v6, v2

    goto :goto_5

    :cond_6
    move v6, v5

    :goto_5
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1032
    iget-object v4, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedClearButton:Landroid/widget/TextView;

    iget-boolean v6, p0, Lcom/ahsim/demulation/LauncherActivity;->baseLocalizationRefreshInFlight:Z

    xor-int/2addr v6, v1

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1034
    :cond_7
    iget-object v4, p0, Lcom/ahsim/demulation/LauncherActivity;->detailsInfoPanel:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_b

    .line 1035
    iget-object v4, p0, Lcom/ahsim/demulation/LauncherActivity;->currentSelection:Lcom/ahsim/demulation/RomSelectionStore$Selection;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/ahsim/demulation/LauncherActivity;->currentIdentity:Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    if-eqz v4, :cond_8

    if-nez v0, :cond_8

    goto :goto_6

    :cond_8
    move v1, v2

    .line 1036
    .local v1, "showInfo":Z
    :cond_9
    :goto_6
    iget-object v4, p0, Lcom/ahsim/demulation/LauncherActivity;->detailsInfoPanel:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_a

    goto :goto_7

    :cond_a
    move v2, v5

    :goto_7
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1038
    .end local v1    # "showInfo":Z
    :cond_b
    return-void
.end method

.method private refreshMediaModButton()V
    .locals 9

    .line 1269
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->modsButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 1270
    :cond_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomSelectionStore;->load(Landroid/content/Context;)Lcom/ahsim/demulation/RomSelectionStore$Selection;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1271
    .local v0, "hasBase":Z
    :goto_0
    sget-object v3, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->MEDIA_MOD:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-static {p0, v3}, Lcom/ahsim/demulation/RomSelectionStore;->loadOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    move-result-object v3

    .line 1273
    .local v3, "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    invoke-static {p0}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->loadActive(Landroid/content/Context;)Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;

    move-result-object v4

    .line 1274
    .local v4, "active":Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;
    iget-object v5, p0, Lcom/ahsim/demulation/LauncherActivity;->modsButton:Landroid/widget/Button;

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1275
    iget-object v5, p0, Lcom/ahsim/demulation/LauncherActivity;->graphicsDetailsButton:Landroid/widget/Button;

    const/16 v6, 0x8

    if-eqz v5, :cond_3

    .line 1276
    iget-object v5, p0, Lcom/ahsim/demulation/LauncherActivity;->graphicsDetailsButton:Landroid/widget/Button;

    if-eqz v3, :cond_2

    move v7, v2

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1277
    :cond_3
    iget-object v5, p0, Lcom/ahsim/demulation/LauncherActivity;->graphicsMissionPreviewButton:Landroid/widget/Button;

    if-eqz v5, :cond_6

    .line 1278
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    iget-object v5, v3, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v3, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    iget-object v7, v4, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->sourceSha256:Ljava/lang/String;

    .line 1279
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1280
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->recoverAndIsBundleReady(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v1

    goto :goto_2

    :cond_4
    move v5, v2

    .line 1281
    .local v5, "previewReady":Z
    :goto_2
    iget-object v7, p0, Lcom/ahsim/demulation/LauncherActivity;->graphicsMissionPreviewButton:Landroid/widget/Button;

    if-eqz v5, :cond_5

    move v8, v2

    goto :goto_3

    :cond_5
    move v8, v6

    :goto_3
    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 1282
    iget-object v7, p0, Lcom/ahsim/demulation/LauncherActivity;->graphicsMissionPreviewButton:Landroid/widget/Button;

    invoke-virtual {v7, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1284
    .end local v5    # "previewReady":Z
    :cond_6
    iget-object v5, p0, Lcom/ahsim/demulation/LauncherActivity;->razorPreviewButton:Landroid/widget/Button;

    if-eqz v5, :cond_9

    .line 1285
    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    iget-object v5, v3, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    .line 1286
    invoke-static {v5}, Lcom/ahsim/demulation/RazorTerrainPreviewSourceSha;->isAttested(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    :cond_7
    move v1, v2

    .line 1287
    .local v1, "attested":Z
    :goto_4
    iget-object v5, p0, Lcom/ahsim/demulation/LauncherActivity;->razorPreviewButton:Landroid/widget/Button;

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    move v2, v6

    :goto_5
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1288
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->razorPreviewButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1290
    .end local v1    # "attested":Z
    :cond_9
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsBody:Landroid/widget/TextView;

    if-eqz v1, :cond_b

    .line 1291
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsBody:Landroid/widget/TextView;

    if-nez v3, :cond_a

    .line 1292
    sget v2, Lcom/ahsim/demulation/R$string;->launcher_graphics_mod_body:I

    goto :goto_6

    .line 1293
    :cond_a
    sget v2, Lcom/ahsim/demulation/R$string;->launcher_graphics_mod_body_selected:I

    .line 1291
    :goto_6
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1295
    :cond_b
    if-nez v3, :cond_c

    .line 1296
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->modsButton:Landroid/widget/Button;

    sget v2, Lcom/ahsim/demulation/R$string;->launcher_mods:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 1297
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->mediaModStatus:Landroid/widget/TextView;

    if-eqz v1, :cond_f

    .line 1298
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->mediaModStatus:Landroid/widget/TextView;

    sget v2, Lcom/ahsim/demulation/R$string;->launcher_mod_status_none:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1299
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->mediaModStatus:Landroid/widget/TextView;

    sget v2, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    .line 1301
    :cond_c
    if-eqz v4, :cond_e

    iget-object v1, v3, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, v3, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v3, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    iget-object v2, v4, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->sourceSha256:Ljava/lang/String;

    .line 1302
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1306
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->modsButton:Landroid/widget/Button;

    iget-object v2, v3, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1307
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->mediaModStatus:Landroid/widget/TextView;

    if-eqz v1, :cond_f

    .line 1308
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->mediaModStatus:Landroid/widget/TextView;

    invoke-direct {p0, v3, v4}, Lcom/ahsim/demulation/LauncherActivity;->formatMediaModSnapshot(Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1309
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->mediaModStatus:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->entryCount()I

    move-result v2

    if-lez v2, :cond_d

    .line 1310
    const/16 v2, 0xcd

    const/16 v5, 0x89

    const/16 v6, 0x75

    invoke-static {v6, v2, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    goto :goto_7

    :cond_d
    sget v2, Lcom/ahsim/demulation/LauncherActivity;->ACCENT:I

    .line 1309
    :goto_7
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    .line 1313
    :cond_e
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->modsButton:Landroid/widget/Button;

    iget-object v2, v3, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1314
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->mediaModStatus:Landroid/widget/TextView;

    if-eqz v1, :cond_f

    .line 1315
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->mediaModStatus:Landroid/widget/TextView;

    sget v2, Lcom/ahsim/demulation/R$string;->launcher_mod_status_selected:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1316
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->mediaModStatus:Landroid/widget/TextView;

    sget v2, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1319
    :cond_f
    :goto_8
    return-void
.end method

.method private refreshPreparationInfoVisibility()V
    .locals 5

    .line 1696
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->currentIdentity:Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    .line 1697
    .local v0, "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->basePreparationSupported:Z

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1698
    .local v3, "supported":Z
    :goto_0
    if-eqz v3, :cond_1

    iget-boolean v4, p0, Lcom/ahsim/demulation/LauncherActivity;->openGameAvailable:Z

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->setPreparationInfoVisible(Z)V

    .line 1699
    return-void
.end method

.method private refreshRazorSelection()V
    .locals 4

    .line 929
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorRomName:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->isRazorSelected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 930
    :cond_0
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->closeRazorCampaignSession()V

    .line 931
    invoke-static {p0}, Lcom/ahsim/demulation/RazorGameRomStore;->load(Landroid/content/Context;)Lcom/ahsim/demulation/RazorGameRomStore$Entry;

    move-result-object v0

    .line 932
    .local v0, "current":Lcom/ahsim/demulation/RazorGameRomStore$Entry;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->razorAnalysis:Lcom/ahsim/demulation/RazorRomAnalysis;

    .line 933
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->razorNativeAuditButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 934
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->razorMap558Button:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->razorMap558Button:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 935
    :cond_1
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->razorQuickPlay662Button:Landroid/widget/Button;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->razorQuickPlay662Button:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 936
    :cond_2
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStartButton:Landroid/widget/Button;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStartButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 937
    :cond_3
    const/16 v1, 0x8

    if-nez v0, :cond_4

    .line 938
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->razorStatus:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 939
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->razorRomName:Landroid/widget/TextView;

    sget v2, Lcom/ahsim/demulation/R$string;->razor_no_rom:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 940
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->razorStatus:Landroid/widget/TextView;

    sget v2, Lcom/ahsim/demulation/R$string;->razor_select_explanation:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 941
    return-void

    .line 943
    :cond_4
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->razorRomName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/ahsim/demulation/RazorGameRomStore$Entry;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 944
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->razorStatus:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 945
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->razorStatus:Landroid/widget/TextView;

    sget v2, Lcom/ahsim/demulation/R$string;->razor_auditing:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 946
    iget v1, p0, Lcom/ahsim/demulation/LauncherActivity;->razorGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ahsim/demulation/LauncherActivity;->razorGeneration:I

    .line 947
    .local v1, "generation":I
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->workerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda20;

    invoke-direct {v3, p0, v0, v1}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda20;-><init>(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RazorGameRomStore$Entry;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 987
    return-void

    .line 929
    .end local v0    # "current":Lcom/ahsim/demulation/RazorGameRomStore$Entry;
    .end local v1    # "generation":I
    :cond_5
    :goto_0
    return-void
.end method

.method private refreshReadyOnlyPanels()V
    .locals 7

    .line 1842
    iget-boolean v0, p0, Lcom/ahsim/demulation/LauncherActivity;->openGameAvailable:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1843
    .local v0, "visibility":I
    :goto_0
    iget-boolean v3, p0, Lcom/ahsim/demulation/LauncherActivity;->openGameAvailable:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->currentIdentity:Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->currentIdentity:Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    iget-boolean v3, v3, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->basePreparationSupported:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->currentIdentity:Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    iget-object v3, v3, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->recognition:Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    sget-object v4, Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;->EXACT_PROFILE:Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 1846
    .local v3, "verifiedOriginal":Z
    :goto_1
    if-eqz v3, :cond_2

    move v1, v2

    .line 1847
    .local v1, "mediaVisibility":I
    :cond_2
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->optionalFeaturesPanel:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->optionalFeaturesPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1848
    :cond_3
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->audioModPanel:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->audioModPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1849
    :cond_4
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->twoFingerGroupPanel:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->twoFingerGroupPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1850
    :cond_5
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->launcherPreferencePanel:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->launcherPreferencePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1851
    :cond_6
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->objectNameEditorPanel:Lcom/ahsim/demulation/RomObjectNameEditorPanel;

    if-eqz v2, :cond_9

    .line 1852
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->currentIdentity:Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    const/4 v4, 0x0

    if-nez v2, :cond_7

    move-object v2, v4

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->currentIdentity:Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    iget-object v2, v2, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileId:Ljava/lang/String;

    .line 1853
    .local v2, "profile":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/ahsim/demulation/LauncherActivity;->currentIdentity:Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    if-nez v5, :cond_8

    goto :goto_3

    :cond_8
    iget-object v4, p0, Lcom/ahsim/demulation/LauncherActivity;->currentIdentity:Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    iget-object v4, v4, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->sha256:Ljava/lang/String;

    .line 1854
    .local v4, "sha":Ljava/lang/String;
    :goto_3
    iget-object v5, p0, Lcom/ahsim/demulation/LauncherActivity;->objectNameEditorPanel:Lcom/ahsim/demulation/RomObjectNameEditorPanel;

    iget-boolean v6, p0, Lcom/ahsim/demulation/LauncherActivity;->openGameAvailable:Z

    invoke-virtual {v5, v6, v2, v4}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->setSource(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1856
    .end local v2    # "profile":Ljava/lang/String;
    .end local v4    # "sha":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method private refreshRussianVoiceControls()V
    .locals 8

    .line 1534
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->russianVoiceCheck:Landroid/widget/CheckBox;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->russianVoiceStatus:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1535
    :cond_0
    sget-object v0, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->TRANSLATION:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-static {p0, v0}, Lcom/ahsim/demulation/RomSelectionStore;->loadOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    move-result-object v0

    .line 1537
    .local v0, "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    invoke-static {p0}, Lcom/ahsim/demulation/RomRussianVoicePackStore;->loadActive(Landroid/content/Context;)Lcom/ahsim/demulation/RomRussianVoicePackStore$Snapshot;

    move-result-object v1

    .line 1538
    .local v1, "voice":Lcom/ahsim/demulation/RomRussianVoicePackStore$Snapshot;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const-string v4, "translation_ru_shedevr_lipetsk_usa"

    iget-object v5, v0, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->profileId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    .line 1539
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_1

    iget-object v4, v0, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    iget-object v5, v1, Lcom/ahsim/demulation/RomRussianVoicePackStore$Snapshot;->sourceSha256:Ljava/lang/String;

    .line 1540
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    .line 1541
    .local v4, "ready":Z
    :goto_0
    if-nez v4, :cond_4

    .line 1542
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->russianVoiceCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1543
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->russianVoiceCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->russianVoiceCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1544
    :cond_2
    invoke-static {p0, v3}, Lcom/ahsim/demulation/RomRussianVoicePreferences;->setEnabled(Landroid/content/Context;Z)V

    .line 1545
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->russianVoiceStatus:Landroid/widget/TextView;

    if-nez v0, :cond_3

    .line 1546
    sget v3, Lcom/ahsim/demulation/R$string;->launcher_russian_voice_unavailable:I

    goto :goto_1

    .line 1547
    :cond_3
    sget v3, Lcom/ahsim/demulation/R$string;->launcher_russian_voice_not_prepared:I

    .line 1545
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1548
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->russianVoiceStatus:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1549
    return-void

    .line 1551
    :cond_4
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->russianVoiceCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1552
    invoke-static {p0}, Lcom/ahsim/demulation/RomRussianVoicePreferences;->isEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 1553
    .local v2, "enabled":Z
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->russianVoiceCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eq v3, v2, :cond_5

    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->russianVoiceCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1554
    :cond_5
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->russianVoiceStatus:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 1555
    sget v5, Lcom/ahsim/demulation/R$string;->launcher_russian_voice_active:I

    goto :goto_2

    .line 1556
    :cond_6
    sget v5, Lcom/ahsim/demulation/R$string;->launcher_russian_voice_ready:I

    .line 1554
    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1557
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->russianVoiceStatus:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    const/16 v5, 0xcd

    const/16 v6, 0x89

    const/16 v7, 0x75

    invoke-static {v7, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    goto :goto_3

    :cond_7
    sget v5, Lcom/ahsim/demulation/LauncherActivity;->ACCENT:I

    :goto_3
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1558
    return-void

    .line 1534
    .end local v0    # "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    .end local v1    # "voice":Lcom/ahsim/demulation/RomRussianVoicePackStore$Snapshot;
    .end local v2    # "enabled":Z
    .end local v4    # "ready":Z
    :cond_8
    :goto_4
    return-void
.end method

.method private refreshSelectedRom()V
    .locals 1

    .line 1702
    invoke-static {p0}, Lcom/ahsim/demulation/RomSelectionStore;->load(Landroid/content/Context;)Lcom/ahsim/demulation/RomSelectionStore$Selection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->refreshSelectedRom(Lcom/ahsim/demulation/RomSelectionStore$Selection;)V

    .line 1703
    return-void
.end method

.method private refreshSelectedRom(Lcom/ahsim/demulation/RomSelectionStore$Selection;)V
    .locals 8
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;

    .line 1706
    iget v0, p0, Lcom/ahsim/demulation/LauncherActivity;->identificationGeneration:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ahsim/demulation/LauncherActivity;->identificationGeneration:I

    .line 1707
    .local v0, "generation":I
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshMediaModButton()V

    .line 1708
    iput-object p1, p0, Lcom/ahsim/demulation/LauncherActivity;->currentSelection:Lcom/ahsim/demulation/RomSelectionStore$Selection;

    .line 1709
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->currentIdentity:Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    .line 1710
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ahsim/demulation/LauncherActivity;->openGameAvailable:Z

    .line 1711
    invoke-direct {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->setPreparationInfoVisible(Z)V

    .line 1712
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareCoreButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1713
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareCoreButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1714
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshReadyOnlyPanels()V

    .line 1715
    if-nez p1, :cond_1

    .line 1716
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedCard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1717
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshBaseRomSelectionControls()V

    .line 1718
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1719
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1720
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareStatus:Landroid/widget/TextView;

    sget v2, Lcom/ahsim/demulation/R$string;->launcher_waiting_status:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1721
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->baseLanguageStatus:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->baseLanguageStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1722
    :cond_0
    return-void

    .line 1724
    :cond_1
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedCard:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1725
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedName:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1726
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedSize:Landroid/widget/TextView;

    iget-wide v4, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->size:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    .line 1727
    sget v4, Lcom/ahsim/demulation/R$string;->launcher_selected_size:I

    iget-wide v5, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->size:J

    invoke-static {p0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1728
    :cond_2
    sget v4, Lcom/ahsim/demulation/R$string;->launcher_selected_size_unknown:I

    invoke-virtual {p0, v4}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1726
    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1729
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedState:Landroid/widget/TextView;

    sget v4, Lcom/ahsim/demulation/LauncherActivity;->ACCENT:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1730
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedState:Landroid/widget/TextView;

    sget v4, Lcom/ahsim/demulation/R$string;->launcher_identifying_rom:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1731
    invoke-direct {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->setIdentificationDetailsVisible(Z)V

    .line 1732
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshBaseRomSelectionControls()V

    .line 1733
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1734
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1735
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareStatus:Landroid/widget/TextView;

    sget v2, Lcom/ahsim/demulation/R$string;->launcher_identifying_status:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1736
    invoke-direct {p0, p1, v0}, Lcom/ahsim/demulation/LauncherActivity;->identifySelectedRom(Lcom/ahsim/demulation/RomSelectionStore$Selection;I)V

    .line 1737
    return-void
.end method

.method private refreshTranslationButton()V
    .locals 9

    .line 1429
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->translationButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 1430
    :cond_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomSelectionStore;->load(Landroid/content/Context;)Lcom/ahsim/demulation/RomSelectionStore$Selection;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1431
    .local v0, "hasBase":Z
    :goto_0
    sget-object v1, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->TRANSLATION:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-static {p0, v1}, Lcom/ahsim/demulation/RomSelectionStore;->loadOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    move-result-object v1

    .line 1433
    .local v1, "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->translationButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1434
    if-nez v1, :cond_3

    .line 1435
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->translationButton:Landroid/widget/Button;

    sget v3, Lcom/ahsim/demulation/R$string;->launcher_translation_button:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 1436
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->translationStatus:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 1437
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->translationStatus:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/R$string;->launcher_translation_status_none:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1438
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->translationStatus:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1440
    :cond_2
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshRussianVoiceControls()V

    .line 1441
    return-void

    .line 1443
    :cond_3
    invoke-static {p0}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->loadActive(Landroid/content/Context;)Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;

    move-result-object v2

    .line 1444
    .local v2, "pack":Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;
    iget-object v3, v1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->profileId:Ljava/lang/String;

    const-string v4, "translation_ru_shedevr_lipetsk_usa"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    .line 1445
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v2, :cond_4

    iget-object v3, v1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    iget-object v5, v2, Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;->sourceSha256:Ljava/lang/String;

    .line 1446
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1447
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->translationButton:Landroid/widget/Button;

    sget v4, Lcom/ahsim/demulation/R$string;->launcher_translation_pack_selected:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 1448
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->translationStatus:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    .line 1449
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->translationStatus:Landroid/widget/TextView;

    sget v4, Lcom/ahsim/demulation/R$string;->launcher_translation_pack_snapshot:I

    iget-object v5, v1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->profileId:Ljava/lang/String;

    .line 1450
    invoke-direct {p0, v5}, Lcom/ahsim/demulation/LauncherActivity;->profileLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget v6, v2, Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;->assetCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-wide v7, v2, Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;->payloadBytes:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    .line 1449
    invoke-virtual {p0, v4, v5}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1451
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->translationStatus:Landroid/widget/TextView;

    const/16 v4, 0xcd

    const/16 v5, 0x89

    const/16 v6, 0x75

    invoke-static {v6, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 1453
    :cond_4
    iget-object v3, v1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->profileId:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    .line 1454
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1455
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->translationButton:Landroid/widget/Button;

    sget v4, Lcom/ahsim/demulation/R$string;->launcher_translation_selected:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 1456
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->translationStatus:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    .line 1457
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->translationStatus:Landroid/widget/TextView;

    sget v4, Lcom/ahsim/demulation/R$string;->launcher_translation_verified:I

    iget-object v5, v1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->profileId:Ljava/lang/String;

    .line 1458
    invoke-direct {p0, v5}, Lcom/ahsim/demulation/LauncherActivity;->profileLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 1457
    invoke-virtual {p0, v4, v5}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1459
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->translationStatus:Landroid/widget/TextView;

    sget v4, Lcom/ahsim/demulation/LauncherActivity;->ACCENT:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 1462
    :cond_5
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->translationButton:Landroid/widget/Button;

    sget v4, Lcom/ahsim/demulation/R$string;->launcher_translation_selected:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 1463
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->translationStatus:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    .line 1464
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->translationStatus:Landroid/widget/TextView;

    sget v4, Lcom/ahsim/demulation/R$string;->launcher_translation_status_selected:I

    iget-object v5, v1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->displayName:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1466
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->translationStatus:Landroid/widget/TextView;

    sget v4, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1469
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshRussianVoiceControls()V

    .line 1470
    return-void
.end method

.method private returnToGameCatalog()V
    .locals 1

    .line 899
    iget v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorGeneration:I

    .line 900
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->closeRazorCampaignSession()V

    .line 901
    iget v0, p0, Lcom/ahsim/demulation/LauncherActivity;->identificationGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ahsim/demulation/LauncherActivity;->identificationGeneration:I

    .line 902
    iget v0, p0, Lcom/ahsim/demulation/LauncherActivity;->romRoutingGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ahsim/demulation/LauncherActivity;->romRoutingGeneration:I

    .line 903
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->saveSelectedGame(Ljava/lang/String;)V

    .line 904
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->updateCatalogVisibility()V

    .line 905
    return-void
.end method

.method private routeChosenRom(Landroid/net/Uri;I)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "flags"    # I

    .line 1056
    iget v0, p0, Lcom/ahsim/demulation/LauncherActivity;->romRoutingGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ahsim/demulation/LauncherActivity;->romRoutingGeneration:I

    .line 1057
    .local v0, "generation":I
    if-nez p1, :cond_0

    return-void

    .line 1058
    :cond_0
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->workerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda69;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda69;-><init>(Lcom/ahsim/demulation/LauncherActivity;Landroid/net/Uri;II)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1093
    return-void
.end method

.method private runRazorNativeAudit()V
    .locals 4

    .line 990
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorAnalysis:Lcom/ahsim/demulation/RazorRomAnalysis;

    .line 991
    .local v0, "report":Lcom/ahsim/demulation/RazorRomAnalysis;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/ahsim/demulation/RazorRomAnalysis;->recognized:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->isRazorSelected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 992
    :cond_0
    iget v1, p0, Lcom/ahsim/demulation/LauncherActivity;->razorGeneration:I

    .line 993
    .local v1, "generation":I
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->razorNativeAuditButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 994
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->razorStatus:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/R$string;->razor_native_auditing:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 995
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->workerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda74;

    invoke-direct {v3, p0, v0, v1}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda74;-><init>(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RazorRomAnalysis;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1013
    return-void

    .line 991
    .end local v1    # "generation":I
    :cond_1
    :goto_0
    return-void
.end method

.method private runRazorOrder557(I)V
    .locals 20
    .param p1, "action"    # I

    .line 841
    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v3, 0x0

    .local v3, "unit":I
    const/4 v4, 0x0

    .local v4, "x":I
    const/4 v5, 0x0

    .line 842
    .local v5, "y":I
    const/4 v0, 0x1

    if-ne v2, v0, :cond_0

    .line 844
    :try_start_0
    iget-object v6, v1, Lcom/ahsim/demulation/LauncherActivity;->razorOrderUnit557:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v3, v6

    .line 845
    iget-object v6, v1, Lcom/ahsim/demulation/LauncherActivity;->razorOrderX557:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v4, v6

    .line 846
    iget-object v6, v1, Lcom/ahsim/demulation/LauncherActivity;->razorOrderY557:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    .line 850
    goto :goto_0

    .line 847
    :catch_0
    move-exception v0

    .line 848
    .local v0, "ex":Ljava/lang/NumberFormatException;
    iget-object v6, v1, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStatus:Landroid/widget/TextView;

    sget v7, Lcom/ahsim/demulation/R$string;->razor_order557_invalid:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 849
    return-void

    .line 852
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    iget-object v6, v1, Lcom/ahsim/demulation/LauncherActivity;->razorSessionLock:Ljava/lang/Object;

    monitor-enter v6

    .line 853
    :try_start_1
    iget-object v7, v1, Lcom/ahsim/demulation/LauncherActivity;->razorCampaignSession:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    if-nez v7, :cond_1

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 855
    :cond_1
    :try_start_2
    iget-object v7, v1, Lcom/ahsim/demulation/LauncherActivity;->razorCampaignSession:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v7, v2, v3, v4, v5}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->command557(IIII)Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;

    move-result-object v7

    .line 856
    .local v7, "v":Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;
    iget-object v8, v1, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStatus:Landroid/widget/TextView;

    sget v9, Lcom/ahsim/demulation/R$string;->razor_order557_report:I

    iget v10, v7, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->ordinal:I

    .line 857
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v10, v7, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->fromX:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v10, v7, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->fromY:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v10, v7, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->toX:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v10, v7, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->toY:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget v10, v7, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->targetX:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget v10, v7, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->targetY:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v10, v7, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->status:I

    .line 858
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget v10, v7, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->steps:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    filled-new-array/range {v11 .. v19}, [Ljava/lang/Object;

    move-result-object v10

    .line 856
    invoke-virtual {v1, v9, v10}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 859
    iget-object v8, v1, Lcom/ahsim/demulation/LauncherActivity;->razorSessionProbeButton:Landroid/widget/Button;

    iget-boolean v9, v7, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;->active:Z

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v8, v0}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 865
    .end local v7    # "v":Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;
    goto :goto_3

    .line 860
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    .line 861
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_2
    :try_start_3
    iget-object v7, v1, Lcom/ahsim/demulation/LauncherActivity;->razorCampaignSession:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    if-eqz v7, :cond_3

    iget-object v7, v1, Lcom/ahsim/demulation/LauncherActivity;->razorCampaignSession:Lcom/ahsim/demulation/RazorCampaignNativeSession;

    invoke-virtual {v7}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->isOpen()Z

    move-result v7

    if-nez v7, :cond_3

    .line 862
    invoke-direct {v1}, Lcom/ahsim/demulation/LauncherActivity;->closeRazorCampaignSession()V

    .line 864
    :cond_3
    iget-object v7, v1, Lcom/ahsim/demulation/LauncherActivity;->razorSessionStatus:Landroid/widget/TextView;

    sget v8, Lcom/ahsim/demulation/R$string;->razor_session_failed:I

    invoke-static {v0}, Lcom/ahsim/demulation/LauncherActivity;->safeMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_3
    monitor-exit v6

    .line 867
    return-void

    .line 866
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private russianVoiceRuntimeReadyOrDisabled()Z
    .locals 6

    .line 1473
    invoke-static {p0}, Lcom/ahsim/demulation/RomRussianVoicePreferences;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1474
    :cond_0
    sget-object v0, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->TRANSLATION:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-static {p0, v0}, Lcom/ahsim/demulation/RomSelectionStore;->loadOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    move-result-object v0

    .line 1476
    .local v0, "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const-string v3, "translation_ru_shedevr_lipetsk_usa"

    iget-object v4, v0, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->profileId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    .line 1477
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 1478
    :cond_1
    invoke-static {p0}, Lcom/ahsim/demulation/RomRussianVoicePackStore;->loadActive(Landroid/content/Context;)Lcom/ahsim/demulation/RomRussianVoicePackStore$Snapshot;

    move-result-object v3

    .line 1479
    .local v3, "voice":Lcom/ahsim/demulation/RomRussianVoicePackStore$Snapshot;
    if-eqz v3, :cond_2

    iget-object v4, v0, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    iget-object v5, v3, Lcom/ahsim/demulation/RomRussianVoicePackStore$Snapshot;->sourceSha256:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    .line 1477
    .end local v3    # "voice":Lcom/ahsim/demulation/RomRussianVoicePackStore$Snapshot;
    :cond_3
    :goto_1
    return v2
.end method

.method private static safeMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p0, "error"    # Ljava/lang/Throwable;

    .line 2335
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 2336
    .local v0, "message":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method private saveGraphicsComparison(Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;)V
    .locals 9
    .param p1, "outcome"    # Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;

    .line 1911
    if-nez p1, :cond_0

    return-void

    .line 1912
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->currentSelection:Lcom/ahsim/demulation/RomSelectionStore$Selection;

    const-string v1, ""

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->currentSelection:Lcom/ahsim/demulation/RomSelectionStore$Selection;

    iget-object v0, v0, Lcom/ahsim/demulation/RomSelectionStore$Selection;->sha256:Ljava/lang/String;

    .line 1913
    .local v0, "baseSha":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1914
    .local v2, "report":Ljava/lang/StringBuilder;
    sget v3, Lcom/ahsim/demulation/R$string;->launcher_graphics_audit_intro:I

    invoke-virtual {p0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1915
    sget v3, Lcom/ahsim/demulation/R$string;->graphics_audit_decoded_intro:I

    invoke-virtual {p0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1916
    iget-object v3, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->terrainScene:Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;

    if-eqz v3, :cond_2

    .line 1917
    sget v3, Lcom/ahsim/demulation/R$string;->graphics_audit_scene_diff:I

    iget-object v5, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->terrainScene:Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;

    iget v5, v5, Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;->changedMetatiles:I

    .line 1918
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->terrainScene:Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;

    iget v6, v6, Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;->totalMetatiles:I

    .line 1919
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->terrainScene:Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;

    iget v7, v7, Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;->changedPixels:I

    .line 1920
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->terrainScene:Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;

    iget v8, v8, Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;->totalPixels:I

    .line 1921
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v5

    .line 1917
    invoke-virtual {p0, v3, v5}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1921
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1923
    :cond_2
    sget v3, Lcom/ahsim/demulation/R$string;->launcher_graphics_audit_changed:I

    iget-object v4, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->overlayPaths:Ljava/util/List;

    .line 1924
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 1923
    invoke-virtual {p0, v3, v4}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1924
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1925
    iget-object v3, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->comparisonDetails:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "\n     "

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;

    .line 1926
    .local v5, "detail":Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;
    iget-boolean v7, v5, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->visualEqual:Z

    if-eqz v7, :cond_3

    goto :goto_1

    .line 1927
    :cond_3
    const-string v7, "  + "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->relativePath:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/ahsim/demulation/LauncherActivity;->graphicsPackageLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1928
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->relativePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1929
    invoke-direct {p0, v5}, Lcom/ahsim/demulation/LauncherActivity;->formatGraphicsVisualDetail(Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1930
    .end local v5    # "detail":Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;
    goto :goto_1

    .line 1931
    :cond_4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v5, Lcom/ahsim/demulation/R$string;->launcher_graphics_audit_identical:I

    iget-object v7, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->identicalPaths:Ljava/util/List;

    .line 1932
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 1931
    invoke-virtual {p0, v5, v7}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1932
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1933
    iget-object v3, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->comparisonDetails:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;

    .line 1934
    .restart local v5    # "detail":Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;
    iget-boolean v7, v5, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->visualEqual:Z

    if-nez v7, :cond_5

    goto :goto_2

    .line 1935
    :cond_5
    const-string v7, "  = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->relativePath:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/ahsim/demulation/LauncherActivity;->graphicsPackageLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1936
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->relativePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1937
    invoke-direct {p0, v5}, Lcom/ahsim/demulation/LauncherActivity;->formatGraphicsVisualDetail(Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1938
    .end local v5    # "detail":Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;
    goto :goto_2

    .line 1939
    :cond_6
    iget-object v3, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->adapterSummary:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1940
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->adapterSummary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1941
    :cond_7
    const-string v3, "graphics_overlay_audit_621"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/ahsim/demulation/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, p1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->sourceSha256:Ljava/lang/String;

    .line 1942
    const-string v5, "source_sha"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1943
    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    move-object v1, v0

    :goto_3
    const-string v4, "base_sha"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1944
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "report"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1945
    return-void
.end method

.method private saveSelectedGame(Ljava/lang/String;)V
    .locals 2
    .param p1, "gameId"    # Ljava/lang/String;

    .line 881
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 882
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "selected_game"

    if-nez p1, :cond_0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 883
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 884
    return-void
.end method

.method private secondaryButton(Ljava/lang/String;)Landroid/widget/Button;
    .locals 6
    .param p1, "label"    # Ljava/lang/String;

    .line 2568
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 2569
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2570
    sget v1, Lcom/ahsim/demulation/LauncherActivity;->TEXT:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 2571
    const/high16 v1, 0x41480000    # 12.5f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 2572
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2573
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 2574
    const/16 v1, 0x2e

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    .line 2575
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2576
    .local v1, "bg":Landroid/graphics/drawable/GradientDrawable;
    const/16 v3, 0x32

    const/16 v4, 0x3d

    const/16 v5, 0x2a

    invoke-static {v5, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2577
    const/16 v3, 0xb

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 2578
    invoke-direct {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v2

    sget v3, Lcom/ahsim/demulation/LauncherActivity;->BLUE:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 2579
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2580
    return-object v0
.end method

.method private selectGame(Ljava/lang/String;)V
    .locals 1
    .param p1, "gameId"    # Ljava/lang/String;

    .line 887
    invoke-static {p1}, Lcom/ahsim/demulation/DemulationGameRegistry;->find(Ljava/lang/String;)Lcom/ahsim/demulation/DemulationGameRegistry$Game;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 888
    :cond_0
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->closeRazorCampaignSession()V

    .line 889
    iget v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorGeneration:I

    .line 890
    iget v0, p0, Lcom/ahsim/demulation/LauncherActivity;->identificationGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ahsim/demulation/LauncherActivity;->identificationGeneration:I

    .line 891
    iget v0, p0, Lcom/ahsim/demulation/LauncherActivity;->romRoutingGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ahsim/demulation/LauncherActivity;->romRoutingGeneration:I

    .line 892
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->saveSelectedGame(Ljava/lang/String;)V

    .line 893
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->updateCatalogVisibility()V

    .line 894
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->hasSelectedGame()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshSelectedRom()V

    .line 895
    :cond_1
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->isRazorSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshRazorSelection()V

    .line 896
    :cond_2
    return-void
.end method

.method private setIdentificationDetailsVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .line 2326
    const/16 v0, 0x8

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 2327
    .local v1, "value":I
    :goto_0
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedProfile:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2328
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2330
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedLogicCompatibility:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2331
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedAssetCompatibility:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2332
    return-void
.end method

.method private setPreparationInfoVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 1688
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 1689
    .local v0, "value":I
    :goto_0
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1690
    :cond_1
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareBody:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareBody:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1691
    :cond_2
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1692
    :cond_3
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareStatus:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1693
    :cond_4
    return-void
.end method

.method private showAudioAuditReport()V
    .locals 6

    .line 2012
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->storedAudioAuditReport()Ljava/lang/String;

    move-result-object v0

    .line 2013
    .local v0, "report":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2014
    :cond_0
    sget v1, Lcom/ahsim/demulation/LauncherActivity;->TEXT:I

    const/4 v2, 0x0

    const/high16 v3, 0x41500000    # 13.0f

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v1

    .line 2015
    .local v1, "content":Landroid/widget/TextView;
    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v3

    const/16 v4, 0xc

    invoke-direct {p0, v4}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, v4}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v4

    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2016
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 2017
    .local v2, "scroll":Landroid/widget/ScrollView;
    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 2018
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/ahsim/demulation/R$string;->launcher_audio_report_button:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2019
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/ahsim/demulation/R$string;->launcher_game_info_close:I

    new-instance v5, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda61;

    invoke-direct {v5}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda61;-><init>()V

    .line 2020
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2021
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2022
    return-void
.end method

.method private showGameInfoDialog()V
    .locals 10

    .line 2134
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2135
    .local v0, "frame":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2136
    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v3

    const/16 v4, 0xe

    invoke-direct {p0, v4}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v6

    invoke-direct {p0, v4}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v4

    invoke-virtual {v0, v3, v5, v6, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2137
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2138
    .local v3, "bg":Landroid/graphics/drawable/GradientDrawable;
    sget v4, Lcom/ahsim/demulation/LauncherActivity;->CARD_ALT:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2139
    invoke-direct {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 2140
    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v2

    const/16 v4, 0x5b

    const/16 v5, 0x6f

    const/16 v6, 0x48

    invoke-static {v6, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 2141
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2143
    sget v2, Lcom/ahsim/demulation/R$string;->launcher_game_info_title:I

    invoke-virtual {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x41880000    # 17.0f

    sget v5, Lcom/ahsim/demulation/LauncherActivity;->TEXT:I

    invoke-direct {p0, v2, v4, v5, v1}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v2

    .line 2144
    .local v2, "title":Landroid/widget/TextView;
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2146
    new-instance v5, Landroid/widget/ScrollView;

    invoke-direct {v5, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 2147
    .local v5, "scroll":Landroid/widget/ScrollView;
    invoke-virtual {v5, v4}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 2148
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2149
    .local v6, "content":Landroid/widget/LinearLayout;
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2150
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v7

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v1

    invoke-virtual {v6, v4, v7, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2152
    sget v1, Lcom/ahsim/demulation/R$string;->launcher_game_info_roms_title:I

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Lcom/ahsim/demulation/LauncherActivity;->addCompactSectionTitle(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 2153
    sget v1, Lcom/ahsim/demulation/R$string;->launcher_game_info_roms_body:I

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Lcom/ahsim/demulation/LauncherActivity;->addCompactBody(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 2154
    sget v1, Lcom/ahsim/demulation/R$string;->launcher_game_info_features_title:I

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0xc

    invoke-direct {p0, v7}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v7

    invoke-direct {p0, v6, v1, v7}, Lcom/ahsim/demulation/LauncherActivity;->addCompactSectionTitleWithMargin(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 2155
    sget v1, Lcom/ahsim/demulation/R$string;->launcher_game_info_features_body:I

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Lcom/ahsim/demulation/LauncherActivity;->addCompactBody(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 2156
    sget v1, Lcom/ahsim/demulation/R$string;->launcher_game_info_rules_note:I

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Lcom/ahsim/demulation/LauncherActivity;->addCompactBody(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 2157
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v1, v8, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2159
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v1, v8, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 2161
    .local v1, "scrollLp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2162
    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2164
    sget v4, Lcom/ahsim/demulation/R$string;->launcher_game_info_close:I

    invoke-virtual {p0, v4}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/ahsim/demulation/LauncherActivity;->secondaryButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v4

    .line 2165
    .local v4, "close":Landroid/widget/Button;
    const/16 v7, 0xa

    invoke-direct {p0, v7}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/ahsim/demulation/LauncherActivity;->matchWrap(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 2166
    .local v7, "closeLp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2168
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 2169
    .local v8, "dialog":Landroid/app/AlertDialog;
    new-instance v9, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda17;

    invoke-direct {v9, v8}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda17;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2170
    new-instance v9, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda18;

    invoke-direct {v9, p0, v8}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda18;-><init>(Lcom/ahsim/demulation/LauncherActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2178
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 2179
    return-void
.end method

.method private showGraphicsComparisonDialog()V
    .locals 12

    .line 1948
    sget-object v0, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->MEDIA_MOD:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-static {p0, v0}, Lcom/ahsim/demulation/RomSelectionStore;->loadOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    move-result-object v0

    .line 1950
    .local v0, "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    if-nez v0, :cond_0

    return-void

    .line 1951
    :cond_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->loadActive(Landroid/content/Context;)Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;

    move-result-object v1

    .line 1952
    .local v1, "active":Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;
    const-string v2, "graphics_overlay_audit_621"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/ahsim/demulation/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1953
    const-string v5, "source_sha"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1954
    .local v4, "savedSha":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/ahsim/demulation/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1955
    const-string v7, "base_sha"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1956
    .local v5, "baseSha":Ljava/lang/String;
    iget-object v7, p0, Lcom/ahsim/demulation/LauncherActivity;->currentSelection:Lcom/ahsim/demulation/RomSelectionStore$Selection;

    if-nez v7, :cond_1

    move-object v7, v6

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/ahsim/demulation/LauncherActivity;->currentSelection:Lcom/ahsim/demulation/RomSelectionStore$Selection;

    iget-object v7, v7, Lcom/ahsim/demulation/RomSelectionStore$Selection;->sha256:Ljava/lang/String;

    .line 1957
    .local v7, "nowBase":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/ahsim/demulation/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1958
    const-string v8, "report"

    invoke-interface {v2, v8, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1959
    .local v2, "report":Ljava/lang/String;
    iget-object v8, v0, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1960
    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    move-object v6, v7

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1961
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    sget v8, Lcom/ahsim/demulation/R$string;->launcher_graphics_old_report:I

    invoke-virtual {p0, v8}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1962
    .local v6, "approximate":Ljava/lang/StringBuilder;
    if-eqz v1, :cond_4

    iget-object v8, v1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->sourceSha256:Ljava/lang/String;

    iget-object v9, v0, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1963
    invoke-virtual {v1}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->entries()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;

    .line 1964
    .local v9, "entry":Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;
    const-string v10, "\n + "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v9, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->relativePath:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/ahsim/demulation/LauncherActivity;->graphicsPackageLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1965
    const-string v11, "\n     "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v9, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1964
    .end local v9    # "entry":Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;
    goto :goto_2

    .line 1967
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1969
    .end local v6    # "approximate":Ljava/lang/StringBuilder;
    :cond_5
    const/high16 v6, 0x41400000    # 12.0f

    sget v8, Lcom/ahsim/demulation/LauncherActivity;->TEXT:I

    invoke-direct {p0, v2, v6, v8, v3}, Lcom/ahsim/demulation/LauncherActivity;->text(Ljava/lang/String;FII)Landroid/widget/TextView;

    move-result-object v3

    .line 1970
    .local v3, "body":Landroid/widget/TextView;
    const/16 v6, 0xc

    invoke-direct {p0, v6}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v8

    const/16 v9, 0xa

    invoke-direct {p0, v9}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v10

    invoke-direct {p0, v6}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v6

    invoke-direct {p0, v9}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v9

    invoke-virtual {v3, v8, v10, v6, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1971
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 1972
    new-instance v6, Landroid/widget/ScrollView;

    invoke-direct {v6, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1973
    .local v6, "scroll":Landroid/widget/ScrollView;
    invoke-virtual {v6, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1974
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v9, Lcom/ahsim/demulation/R$string;->launcher_graphics_details_button:I

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 1975
    invoke-virtual {v8, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    sget v9, Lcom/ahsim/demulation/R$string;->launcher_game_info_close:I

    new-instance v10, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda70;

    invoke-direct {v10}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda70;-><init>()V

    .line 1976
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 1977
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1978
    return-void
.end method

.method private showIdentification(Lcom/ahsim/demulation/GenesisRomIdentity$Result;)V
    .locals 8
    .param p1, "result"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    .line 1766
    iput-object p1, p0, Lcom/ahsim/demulation/LauncherActivity;->currentIdentity:Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    .line 1769
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->currentSelection:Lcom/ahsim/demulation/RomSelectionStore$Selection;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->sha256:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1771
    :try_start_0
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->currentSelection:Lcom/ahsim/demulation/RomSelectionStore$Selection;

    iget-object v1, p1, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->sha256:Ljava/lang/String;

    iget-object v2, p1, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileId:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/ahsim/demulation/RomSelectionStore;->recordBaseFingerprint(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    invoke-static {p0}, Lcom/ahsim/demulation/RomSelectionStore;->load(Landroid/content/Context;)Lcom/ahsim/demulation/RomSelectionStore$Selection;

    move-result-object v0

    .line 1773
    .local v0, "refreshed":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->currentSelection:Lcom/ahsim/demulation/RomSelectionStore$Selection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1776
    .end local v0    # "refreshed":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    :cond_0
    goto :goto_0

    .line 1774
    :catch_0
    move-exception v0

    .line 1778
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1779
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1780
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->setIdentificationDetailsVisible(Z)V

    .line 1782
    iget-object v2, p1, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->recognition:Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    sget-object v3, Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;->EXACT_PROFILE:Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    if-ne v2, v3, :cond_3

    .line 1783
    iget-boolean v2, p1, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->basePreparationSupported:Z

    if-eqz v2, :cond_2

    .line 1784
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedState:Landroid/widget/TextView;

    const/16 v3, 0xcd

    const/16 v4, 0x89

    const/16 v5, 0x75

    invoke-static {v5, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1785
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedState:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/R$string;->launcher_rom_verified_reference:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1786
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareStatus:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/R$string;->launcher_identified_waiting_extraction:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1788
    :cond_2
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedState:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/LauncherActivity;->ACCENT:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1789
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedState:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/R$string;->launcher_exact_profile_pending:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1790
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareStatus:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/R$string;->launcher_profile_pending_status:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1792
    :goto_1
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedProfile:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/R$string;->launcher_profile_line:I

    iget-object v4, p1, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileLabel:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1793
    :cond_3
    iget-object v2, p1, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->r82Probe:Lcom/ahsim/demulation/DuneHackR82Probe$Result;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->r82Probe:Lcom/ahsim/demulation/DuneHackR82Probe$Result;

    invoke-virtual {v2}, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->recognized()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1794
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedState:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/LauncherActivity;->ACCENT:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1795
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedState:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/R$string;->launcher_r82_recognized_not_ready:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1796
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedProfile:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/R$string;->launcher_profile_line:I

    iget-object v4, p1, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileLabel:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1797
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareStatus:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/R$string;->launcher_r82_not_ready_detail:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 1798
    :cond_4
    iget-object v2, p1, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->recognition:Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    sget-object v3, Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;->GAME_FAMILY_CANDIDATE:Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    if-ne v2, v3, :cond_5

    .line 1799
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedState:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/LauncherActivity;->ACCENT:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1800
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedState:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/R$string;->launcher_rom_candidate:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1801
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedProfile:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/R$string;->launcher_profile_line:I

    sget v4, Lcom/ahsim/demulation/R$string;->launcher_profile_candidate:I

    .line 1802
    invoke-virtual {p0, v4}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 1801
    invoke-virtual {p0, v3, v4}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1803
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareStatus:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/R$string;->launcher_candidate_waiting_asset_fingerprints:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 1805
    :cond_5
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedState:Landroid/widget/TextView;

    const/16 v3, 0x69

    const/16 v4, 0x60

    const/16 v5, 0xe2

    invoke-static {v5, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1806
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedState:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/R$string;->launcher_rom_unrecognized:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1807
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedProfile:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/R$string;->launcher_profile_line:I

    sget v4, Lcom/ahsim/demulation/R$string;->launcher_profile_unrecognized:I

    .line 1808
    invoke-virtual {p0, v4}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 1807
    invoke-virtual {p0, v3, v4}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1809
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareStatus:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/R$string;->launcher_unrecognized_status:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1812
    :goto_2
    iget-object v2, p1, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->regionRaw:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p1, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->regionRaw:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    .line 1813
    :cond_6
    iget-object v2, p1, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->regionRaw:Ljava/lang/String;

    goto :goto_4

    :cond_7
    :goto_3
    sget v2, Lcom/ahsim/demulation/R$string;->launcher_unknown_value:I

    invoke-virtual {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1814
    .local v2, "region":Ljava/lang/String;
    :goto_4
    iget-object v3, p1, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->serial:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p1, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->serial:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_5

    .line 1815
    :cond_8
    iget-object v3, p1, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->serial:Ljava/lang/String;

    goto :goto_6

    :cond_9
    :goto_5
    sget v3, Lcom/ahsim/demulation/R$string;->launcher_unknown_value:I

    invoke-virtual {p0, v3}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1816
    .local v3, "serial":Ljava/lang/String;
    :goto_6
    iget-object v4, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedHeader:Landroid/widget/TextView;

    sget v5, Lcom/ahsim/demulation/R$string;->launcher_header_line:I

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1818
    iget-object v4, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedLogicCompatibility:Landroid/widget/TextView;

    sget v5, Lcom/ahsim/demulation/R$string;->launcher_logic_compatibility:I

    iget-object v6, p1, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->logicCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    .line 1819
    invoke-direct {p0, v6}, Lcom/ahsim/demulation/LauncherActivity;->compatibilityLabel(Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 1818
    invoke-virtual {p0, v5, v6}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1820
    iget-object v4, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedAssetCompatibility:Landroid/widget/TextView;

    sget v5, Lcom/ahsim/demulation/R$string;->launcher_asset_compatibility:I

    iget-object v6, p1, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->assetCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    .line 1821
    invoke-direct {p0, v6}, Lcom/ahsim/demulation/LauncherActivity;->compatibilityLabel(Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 1820
    invoke-virtual {p0, v5, v6}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1822
    iget-boolean v4, p1, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->basePreparationSupported:Z

    .line 1823
    .local v4, "mediaCandidate":Z
    if-eqz v4, :cond_a

    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->currentSelectionMatchesReadyBundle()Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v0

    goto :goto_7

    :cond_a
    move v5, v1

    .line 1824
    .local v5, "readyBundle":Z
    :goto_7
    if-eqz v5, :cond_b

    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->baseLocalizationReadyOrNotRequired()Z

    move-result v6

    if-eqz v6, :cond_b

    move v6, v0

    goto :goto_8

    :cond_b
    move v6, v1

    :goto_8
    iput-boolean v6, p0, Lcom/ahsim/demulation/LauncherActivity;->openGameAvailable:Z

    .line 1825
    iget-object v6, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareCoreButton:Landroid/widget/Button;

    if-eqz v4, :cond_c

    move v7, v1

    goto :goto_9

    :cond_c
    const/16 v7, 0x8

    :goto_9
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1826
    iget-object v6, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareCoreButton:Landroid/widget/Button;

    if-eqz v4, :cond_d

    iget-boolean v7, p0, Lcom/ahsim/demulation/LauncherActivity;->baseLocalizationRefreshInFlight:Z

    if-nez v7, :cond_d

    move v7, v0

    goto :goto_a

    :cond_d
    move v7, v1

    :goto_a
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1827
    iget-object v6, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareCoreButton:Landroid/widget/Button;

    iget-boolean v7, p0, Lcom/ahsim/demulation/LauncherActivity;->openGameAvailable:Z

    if-eqz v7, :cond_e

    .line 1828
    sget v7, Lcom/ahsim/demulation/R$string;->launcher_open_game:I

    goto :goto_b

    :cond_e
    sget v7, Lcom/ahsim/demulation/R$string;->launcher_prepare_core_button:I

    .line 1827
    :goto_b
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 1829
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshPreparationInfoVisibility()V

    .line 1830
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshBaseLanguageStatus()V

    .line 1831
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshBaseRomSelectionControls()V

    .line 1832
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshReadyOnlyPanels()V

    .line 1833
    if-eqz v5, :cond_f

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->isRussianBase(Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->baseLocalizationReadyOrNotRequired()Z

    move-result v6

    if-nez v6, :cond_f

    .line 1834
    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->startRussianBaseLocalizationRefresh(Z)V

    goto :goto_c

    .line 1835
    :cond_f
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->isRussianBase(Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1837
    invoke-direct {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->clearLegacyLanguageOverlayState(Z)V

    .line 1839
    :cond_10
    :goto_c
    return-void
.end method

.method private showSimpleLauncherInfo(II)V
    .locals 5
    .param p1, "titleId"    # I
    .param p2, "bodyId"    # I

    .line 1859
    sget v0, Lcom/ahsim/demulation/LauncherActivity;->CARD_ALT:I

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/LauncherActivity;->compactCard(I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1860
    .local v0, "content":Landroid/widget/LinearLayout;
    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v1

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1861
    invoke-virtual {p0, p1}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->addCompactSectionTitle(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 1862
    invoke-virtual {p0, p2}, Lcom/ahsim/demulation/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->addCompactBody(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 1863
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/ahsim/demulation/R$string;->launcher_game_info_close:I

    new-instance v3, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda63;

    invoke-direct {v3}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda63;-><init>()V

    .line 1864
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1865
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1866
    return-void
.end method

.method private startAssetBundleInstallation()V
    .locals 5

    .line 2211
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->currentSelection:Lcom/ahsim/demulation/RomSelectionStore$Selection;

    .line 2212
    .local v0, "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->currentIdentity:Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    .line 2213
    .local v1, "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    iget v2, p0, Lcom/ahsim/demulation/LauncherActivity;->identificationGeneration:I

    .line 2214
    .local v2, "generation":I
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iget-boolean v3, v1, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->basePreparationSupported:Z

    if-nez v3, :cond_0

    goto :goto_0

    .line 2216
    :cond_0
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->chooseButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2217
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedClearButton:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->selectedClearButton:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2218
    :cond_1
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareCoreButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2219
    iput-boolean v4, p0, Lcom/ahsim/demulation/LauncherActivity;->openGameAvailable:Z

    .line 2220
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/LauncherActivity;->setPreparationInfoVisible(Z)V

    .line 2221
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshReadyOnlyPanels()V

    .line 2222
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 2223
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2224
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareStatus:Landroid/widget/TextView;

    sget v4, Lcom/ahsim/demulation/R$string;->launcher_bundle_starting:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2226
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->workerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda10;-><init>(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2304
    return-void

    .line 2214
    :cond_2
    :goto_0
    return-void
.end method

.method private startAudioSourceAudit(Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V
    .locals 2
    .param p1, "selected"    # Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    .line 2050
    if-nez p1, :cond_0

    return-void

    .line 2051
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->audioModButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->audioModButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2052
    :cond_1
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->audioModStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->audioModStatus:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->launcher_audio_analyzing:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2053
    :cond_2
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->audioReportButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->audioReportButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2054
    :cond_3
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->workerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, p1}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda21;-><init>(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2131
    return-void
.end method

.method private startMediaModInstallation(Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V
    .locals 3
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    .line 1181
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->modsButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1182
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->modsButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1185
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->modsButton:Landroid/widget/Button;

    iget-object v1, p1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1186
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->mediaModStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1187
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->mediaModStatus:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->launcher_mod_analyzing:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1188
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->mediaModStatus:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1190
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEDIA_MOD analyze start name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DemulationLauncher"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->workerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda75;

    invoke-direct {v1, p0, p1}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda75;-><init>(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1244
    return-void

    .line 1181
    :cond_2
    :goto_0
    return-void
.end method

.method private startRussianBaseLocalizationRefresh(Z)V
    .locals 4
    .param p1, "openAfter"    # Z

    .line 2384
    iget-boolean v0, p0, Lcom/ahsim/demulation/LauncherActivity;->baseLocalizationRefreshInFlight:Z

    if-eqz v0, :cond_0

    return-void

    .line 2385
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->currentSelection:Lcom/ahsim/demulation/RomSelectionStore$Selection;

    if-eqz v0, :cond_1

    .line 2386
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->currentSelection:Lcom/ahsim/demulation/RomSelectionStore$Selection;

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/ahsim/demulation/RomSelectionStore;->load(Landroid/content/Context;)Lcom/ahsim/demulation/RomSelectionStore$Selection;

    move-result-object v0

    .line 2387
    .local v0, "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    :goto_0
    iget-object v1, p0, Lcom/ahsim/demulation/LauncherActivity;->currentIdentity:Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    .line 2388
    .local v1, "identity":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->isRussianBase(Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v0, :cond_2

    goto :goto_1

    .line 2389
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ahsim/demulation/LauncherActivity;->baseLocalizationRefreshInFlight:Z

    .line 2390
    invoke-direct {p0, v2}, Lcom/ahsim/demulation/LauncherActivity;->setPreparationInfoVisible(Z)V

    .line 2391
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareCoreButton:Landroid/widget/Button;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareCoreButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2392
    :cond_3
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshBaseRomSelectionControls()V

    .line 2393
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareStatus:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->prepareStatus:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/R$string;->launcher_base_language_preparing:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2394
    :cond_4
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshBaseLanguageStatus()V

    .line 2395
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->workerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda62;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda62;-><init>(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/GenesisRomIdentity$Result;Z)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2431
    return-void

    .line 2388
    :cond_5
    :goto_1
    return-void
.end method

.method private startRussianVoicePackRefresh(Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V
    .locals 2
    .param p1, "selected"    # Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    .line 1500
    if-eqz p1, :cond_3

    const-string v0, "translation_ru_shedevr_lipetsk_usa"

    iget-object v1, p1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->profileId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1501
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->russianVoiceCheck:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->russianVoiceCheck:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1502
    :cond_1
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->russianVoiceStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1503
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->russianVoiceStatus:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->launcher_russian_voice_preparing:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1504
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->russianVoiceStatus:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1506
    :cond_2
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->workerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda19;-><init>(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1531
    return-void

    .line 1500
    :cond_3
    :goto_0
    return-void
.end method

.method private startTranslationAudit(Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V
    .locals 3
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    .line 1322
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->translationButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/ahsim/demulation/LauncherActivity;->translationRefreshInFlight:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1323
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/LauncherActivity;->translationRefreshInFlight:Z

    .line 1324
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->translationButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1325
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->translationButton:Landroid/widget/Button;

    sget v1, Lcom/ahsim/demulation/R$string;->launcher_translation_preparing:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1326
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->translationStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1327
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->translationStatus:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/R$string;->launcher_translation_analyzing:I

    iget-object v2, p1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->displayName:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1328
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->translationStatus:Landroid/widget/TextView;

    sget v1, Lcom/ahsim/demulation/LauncherActivity;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1330
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TRANSLATION audit start name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DemulationLauncher"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->workerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/ahsim/demulation/LauncherActivity$$ExternalSyntheticLambda12;-><init>(Lcom/ahsim/demulation/LauncherActivity;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1405
    return-void

    .line 1322
    :cond_2
    :goto_0
    return-void
.end method

.method private storedAudioAuditReport()Ljava/lang/String;
    .locals 6

    .line 1985
    invoke-static {p0}, Lcom/ahsim/demulation/RomSelectionStore;->load(Landroid/content/Context;)Lcom/ahsim/demulation/RomSelectionStore$Selection;

    move-result-object v0

    .line 1986
    .local v0, "base":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    sget-object v1, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->AUDIO_MOD:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-static {p0, v1}, Lcom/ahsim/demulation/RomSelectionStore;->loadOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    move-result-object v1

    .line 1988
    .local v1, "source":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    const-string v2, ""

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    iget-object v3, v0, Lcom/ahsim/demulation/RomSelectionStore$Selection;->sha256:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1989
    :cond_0
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->audioOverlayPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1990
    .local v3, "p":Landroid/content/SharedPreferences;
    iget-object v4, v0, Lcom/ahsim/demulation/RomSelectionStore$Selection;->sha256:Ljava/lang/String;

    const-string v5, "base"

    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    .line 1991
    const-string v5, "source"

    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 1992
    :cond_1
    const-string v4, "report"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1991
    :cond_2
    :goto_0
    return-object v2

    .line 1988
    .end local v3    # "p":Landroid/content/SharedPreferences;
    :cond_3
    :goto_1
    return-object v2
.end method

.method private text(Ljava/lang/String;FII)Landroid/widget/TextView;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "sp"    # F
    .param p3, "color"    # I
    .param p4, "style"    # I

    .line 2542
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2543
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2544
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2545
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2546
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2547
    const/4 v1, 0x0

    const v2, 0x3f8f5c29    # 1.12f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 2548
    return-object v0
.end method

.method private translationRuntimeReadyOrAbsent()Z
    .locals 6

    .line 1409
    sget-object v0, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->TRANSLATION:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-static {p0, v0}, Lcom/ahsim/demulation/RomSelectionStore;->loadOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    move-result-object v0

    .line 1411
    .local v0, "selected":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1412
    :cond_0
    const-string v2, "translation_ru_shedevr_lipetsk_usa"

    iget-object v3, v0, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->profileId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    .line 1413
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 1414
    :cond_1
    invoke-static {p0}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->loadActive(Landroid/content/Context;)Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;

    move-result-object v2

    .line 1415
    .local v2, "pack":Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;
    if-eqz v2, :cond_2

    iget-object v4, v0, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->sha256:Ljava/lang/String;

    iget-object v5, v2, Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;->sourceSha256:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v2, Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;->assetCount:I

    .line 1416
    invoke-static {}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->entries()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    .line 1415
    :goto_0
    return v1

    .line 1413
    .end local v2    # "pack":Lcom/ahsim/demulation/RomRussianLocalizationPackStore$Snapshot;
    :cond_3
    :goto_1
    return v3
.end method

.method private updateCatalogVisibility()V
    .locals 6

    .line 914
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->hasSelectedGame()Z

    move-result v0

    .line 915
    .local v0, "selected":Z
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->isRazorSelected()Z

    move-result v1

    .line 916
    .local v1, "razor":Z
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->gameCatalogPanel:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_1

    .line 917
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->gameCatalogPanel:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 918
    :cond_1
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->gameDetailsPanel:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    .line 919
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->gameDetailsPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 920
    :cond_3
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_5

    .line 921
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->razorGamePanel:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 922
    :cond_5
    return-void
.end method

.method private weightedButton()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .line 2584
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x30

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 2585
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2586
    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2587
    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 1128
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1129
    const/4 v0, -0x1

    if-ne p2, v0, :cond_a

    if-nez p3, :cond_0

    goto/16 :goto_4

    .line 1130
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1131
    .local v0, "uri":Landroid/net/Uri;
    const/16 v1, 0x911

    if-eq p1, v1, :cond_9

    const/16 v1, 0x9fa

    if-ne p1, v1, :cond_1

    goto/16 :goto_3

    .line 1135
    :cond_1
    const/16 v1, 0x912

    const/4 v2, 0x1

    if-ne p1, v1, :cond_4

    .line 1137
    :try_start_0
    sget-object v1, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->MEDIA_MOD:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    .line 1138
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    .line 1137
    invoke-static {p0, v1, v0, v3}, Lcom/ahsim/demulation/RomSelectionStore;->persistOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;Landroid/net/Uri;I)Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    move-result-object v1

    .line 1139
    .local v1, "selection":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsCheck:Landroid/widget/CheckBox;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1140
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1141
    :cond_2
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsDetails:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->modifiedGraphicsDetails:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1142
    :cond_3
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshMediaModButton()V

    .line 1143
    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->startMediaModInstallation(Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1148
    .end local v1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    goto :goto_0

    .line 1144
    :catch_0
    move-exception v1

    .line 1145
    .local v1, "e":Ljava/io/IOException;
    sget v3, Lcom/ahsim/demulation/R$string;->launcher_mods_error:I

    invoke-static {v1}, Lcom/ahsim/demulation/LauncherActivity;->safeMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 1146
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1147
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshMediaModButton()V

    .line 1149
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 1151
    :cond_4
    const/16 v1, 0x914

    if-ne p1, v1, :cond_7

    .line 1153
    :try_start_1
    sget-object v1, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->AUDIO_MOD:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    .line 1154
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    .line 1153
    invoke-static {p0, v1, v0, v3}, Lcom/ahsim/demulation/RomSelectionStore;->persistOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;Landroid/net/Uri;I)Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    move-result-object v1

    .line 1155
    .local v1, "selection":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->modifiedAudioCheck:Landroid/widget/CheckBox;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->modifiedAudioCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1156
    iget-object v3, p0, Lcom/ahsim/demulation/LauncherActivity;->modifiedAudioCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1157
    :cond_5
    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->startAudioSourceAudit(Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1161
    .end local v1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    goto :goto_1

    .line 1158
    :catch_1
    move-exception v1

    .line 1159
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->audioModStatus:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/ahsim/demulation/LauncherActivity;->audioModStatus:Landroid/widget/TextView;

    sget v3, Lcom/ahsim/demulation/R$string;->launcher_audio_error:I

    .line 1160
    invoke-static {v1}, Lcom/ahsim/demulation/LauncherActivity;->safeMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 1159
    invoke-virtual {p0, v3, v4}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1162
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    :goto_1
    return-void

    .line 1164
    :cond_7
    const/16 v1, 0x913

    if-ne p1, v1, :cond_8

    .line 1166
    :try_start_2
    sget-object v1, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->TRANSLATION:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    .line 1167
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    .line 1166
    invoke-static {p0, v1, v0, v3}, Lcom/ahsim/demulation/RomSelectionStore;->persistOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;Landroid/net/Uri;I)Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    move-result-object v1

    .line 1169
    .local v1, "selection":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    invoke-static {p0}, Lcom/ahsim/demulation/RomRussianLocalizationPackStore;->clear(Landroid/content/Context;)V

    .line 1170
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshTranslationButton()V

    .line 1171
    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->startTranslationAudit(Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1176
    .end local v1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    goto :goto_2

    .line 1172
    :catch_2
    move-exception v1

    .line 1173
    .local v1, "e":Ljava/io/IOException;
    sget v3, Lcom/ahsim/demulation/R$string;->launcher_translation_error:I

    invoke-static {v1}, Lcom/ahsim/demulation/LauncherActivity;->safeMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/ahsim/demulation/LauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 1174
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1175
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshTranslationButton()V

    .line 1178
    .end local v1    # "e":Ljava/io/IOException;
    :cond_8
    :goto_2
    return-void

    .line 1132
    :cond_9
    :goto_3
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->routeChosenRom(Landroid/net/Uri;I)V

    .line 1133
    return-void

    .line 1129
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_a
    :goto_4
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 909
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->hasSelectedGame()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->isRazorSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 910
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1

    .line 909
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->returnToGameCatalog()V

    .line 911
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 137
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lcom/ahsim/demulation/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 140
    .local v0, "launchIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v3, "com.ahsim.demulation.extra.FORCE_SETUP"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 143
    .local v3, "forceSetup":Z
    :goto_0
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "catalog_migrated_v554"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_2

    .line 144
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v6, "selected_game"

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 145
    invoke-static {p0}, Lcom/ahsim/demulation/RomSelectionStore;->load(Landroid/content/Context;)Lcom/ahsim/demulation/RomSelectionStore$Selection;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 146
    const-string v1, "dune_battle_for_arrakis_genesis"

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/LauncherActivity;->saveSelectedGame(Ljava/lang/String;)V

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 150
    :cond_2
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v5, "show_launcher_on_start_v2"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 151
    .local v1, "showLauncherOnStart":Z
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->baseLocalizationReadyOrNotRequired()Z

    move-result v5

    .line 152
    .local v5, "baseLanguageReady":Z
    if-nez v3, :cond_3

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->hasSelectedGame()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 153
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->recoverAndIsBundleReady(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 154
    invoke-static {p0}, Lcom/ahsim/demulation/RomSelectionStore;->load(Landroid/content/Context;)Lcom/ahsim/demulation/RomSelectionStore$Selection;

    move-result-object v6

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    .line 155
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->openGame()V

    .line 156
    return-void

    .line 159
    :cond_3
    sget v6, Lcom/ahsim/demulation/R$string;->app_name:I

    invoke-virtual {p0, v6}, Lcom/ahsim/demulation/LauncherActivity;->setTitle(I)V

    .line 160
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->buildContent()Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ahsim/demulation/LauncherActivity;->setContentView(Landroid/view/View;)V

    .line 161
    if-eqz v0, :cond_4

    const-string v4, "com.ahsim.demulation.extra.BOOT_NOTICE"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, "bootNotice":Ljava/lang/String;
    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 163
    invoke-static {p0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 166
    :cond_5
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->updateCatalogVisibility()V

    .line 167
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->hasSelectedGame()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshSelectedRom()V

    .line 168
    :cond_6
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->isRazorSelected()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->refreshRazorSelection()V

    .line 169
    :cond_7
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 2341
    iget v0, p0, Lcom/ahsim/demulation/LauncherActivity;->identificationGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ahsim/demulation/LauncherActivity;->identificationGeneration:I

    .line 2342
    iget v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ahsim/demulation/LauncherActivity;->razorGeneration:I

    .line 2343
    invoke-direct {p0}, Lcom/ahsim/demulation/LauncherActivity;->closeRazorCampaignSession()V

    .line 2344
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity;->workerExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 2345
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2346
    return-void
.end method
