package com.ahsim.demulation;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.format.Formatter;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.ahsim.demulation.DuneHackR82Probe;
import com.ahsim.demulation.GenesisRomIdentity;
import com.ahsim.demulation.RazorCampaignNativeSession;
import com.ahsim.demulation.RazorCampaignSessionGuard;
import com.ahsim.demulation.RazorGameRomStore;
import com.ahsim.demulation.RazorNativeWorldHost;
import com.ahsim.demulation.RomAssetInstallState;
import com.ahsim.demulation.RomAssetProvider;
import com.ahsim.demulation.RomAudioOverlayPreparation;
import com.ahsim.demulation.RomEngineRouter564;
import com.ahsim.demulation.RomGraphicsMediaOverlayInstaller;
import com.ahsim.demulation.RomGraphicsMediaOverlayStore;
import com.ahsim.demulation.RomGraphicsVisualComparator;
import com.ahsim.demulation.RomImageNormalizer;
import com.ahsim.demulation.RomLayoutCapabilityAnalyzer;
import com.ahsim.demulation.RomRussianLocalizationPackInstaller;
import com.ahsim.demulation.RomRussianLocalizationPackStore;
import com.ahsim.demulation.RomRussianVoicePackStore;
import com.ahsim.demulation.RomSelectionStore;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes2.dex */
public final class LauncherActivity extends Activity {
    private static final String CATALOG_PREFS = "launcher_catalog";
    public static final String EXTRA_BOOT_NOTICE = "com.ahsim.demulation.extra.BOOT_NOTICE";
    public static final String EXTRA_FORCE_SETUP = "com.ahsim.demulation.extra.FORCE_SETUP";
    private static final String GAME_DUNE_GENESIS = "dune_battle_for_arrakis_genesis";
    private static final String GAME_RAZOR = "dune_razor_missions_native";
    private static final String GRAPHICS_AUDIT_PREF = "graphics_overlay_audit_621";
    private static final String KEY_CATALOG_MIGRATED = "catalog_migrated_v554";
    private static final String KEY_SELECTED_GAME = "selected_game";
    private static final String KEY_SHOW_LAUNCHER_ON_START = "show_launcher_on_start_v2";
    private static final int REQUEST_OPEN_AUDIO_MOD = 2324;
    private static final int REQUEST_OPEN_MEDIA_MOD = 2322;
    private static final int REQUEST_OPEN_RAZOR_ROM = 2554;
    private static final int REQUEST_OPEN_ROM = 2321;
    private static final int REQUEST_OPEN_TRANSLATION = 2323;
    private static final String TAG = "DemulationLauncher";
    private static final String TRANSLATION_PROFILE_RU = "translation_ru_shedevr_lipetsk_usa";
    private Button audioModButton;
    private LinearLayout audioModDetails;
    private LinearLayout audioModPanel;
    private TextView audioModStatus;
    private Button audioReportButton;
    private boolean autoOpenRazor674;
    private TextView baseLanguageStatus;
    private boolean baseLocalizationRefreshInFlight;
    private Button chooseButton;
    private GenesisRomIdentity.Result currentIdentity;
    private RomSelectionStore.Selection currentSelection;
    private LinearLayout detailsInfoPanel;
    private LinearLayout gameCatalogPanel;
    private LinearLayout gameDetailsPanel;
    private Button graphicsDetailsButton;
    private Button graphicsMissionPreviewButton;
    private int identificationGeneration;
    private CheckBox launchNextCheck;
    private LinearLayout launcherPreferencePanel;
    private TextView launcherStartupHint;
    private TextView mediaModStatus;
    private CheckBox modifiedAudioCheck;
    private TextView modifiedGraphicsBody;
    private CheckBox modifiedGraphicsCheck;
    private LinearLayout modifiedGraphicsDetails;
    private Button modsButton;
    private RomObjectNameEditorPanel objectNameEditorPanel;
    private boolean openGameAfterTranslationRefresh;
    private boolean openGameAvailable;
    private LinearLayout optionalFeaturesPanel;
    private TextView prepareBody;
    private Button prepareCoreButton;
    private ProgressBar prepareProgress;
    private TextView prepareStatus;
    private TextView prepareTitle;
    private RazorRomAnalysis razorAnalysis;
    private RazorCampaignNativeSession razorCampaignSession;
    private LinearLayout razorGamePanel;
    private volatile int razorGeneration;
    private Button razorMap558Button;
    private Button razorNativeAuditButton;
    private Button razorOrderAdvance557;
    private Button razorOrderCancel557;
    private Button razorOrderIssue557;
    private EditText razorOrderUnit557;
    private EditText razorOrderX557;
    private EditText razorOrderY557;
    private Button razorPreviewButton;
    private Button razorQuickPlay662Button;
    private TextView razorRomName;
    private Spinner razorSessionHouse;
    private Spinner razorSessionMission;
    private Button razorSessionPollButton;
    private Button razorSessionProbeButton;
    private volatile int razorSessionSelectionGeneration;
    private Button razorSessionStartButton;
    private TextView razorSessionStatus;
    private Button razorSessionStopButton;
    private TextView razorStatus;
    private volatile int romRoutingGeneration;
    private CheckBox russianVoiceCheck;
    private TextView russianVoiceStatus;
    private TextView selectedAssetCompatibility;
    private LinearLayout selectedCard;
    private TextView selectedClearButton;
    private TextView selectedHeader;
    private TextView selectedLogicCompatibility;
    private TextView selectedName;
    private TextView selectedProfile;
    private TextView selectedSize;
    private TextView selectedState;
    private Button translationButton;
    private boolean translationRefreshInFlight;
    private TextView translationStatus;
    private LinearLayout twoFingerGroupPanel;
    private CheckBox twoFingerGroupSelectionCheck;

    /* renamed from: BG */
    private static final int f24BG = Color.rgb(16, 20, 26);
    private static final int CARD = Color.rgb(28, 34, 43);
    private static final int CARD_ALT = Color.rgb(35, 42, 52);
    private static final int TEXT = Color.rgb(244, 244, 240);
    private static final int MUTED = Color.rgb(188, 194, 201);
    private static final int ACCENT = Color.rgb(217, 178, 108);
    private static final int ACCENT_DARK = Color.rgb(111, 87, 48);
    private static final int BLUE = Color.rgb(88, 151, 218);
    private final Object razorSessionLock = new Object();
    private final ExecutorService workerExecutor = Executors.newSingleThreadExecutor();

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Intent launchIntent = getIntent();
        boolean forceSetup = launchIntent != null && launchIntent.getBooleanExtra(EXTRA_FORCE_SETUP, false);
        if (!getPreferences().getBoolean(KEY_CATALOG_MIGRATED, false)) {
            if (getPreferences().getString(KEY_SELECTED_GAME, null) == null && RomSelectionStore.load(this) != null) {
                saveSelectedGame("dune_battle_for_arrakis_genesis");
            }
            getPreferences().edit().putBoolean(KEY_CATALOG_MIGRATED, true).commit();
        }
        boolean showLauncherOnStart = getPreferences().getBoolean(KEY_SHOW_LAUNCHER_ON_START, true);
        boolean baseLanguageReady = baseLocalizationReadyOrNotRequired();
        if (!forceSetup && !showLauncherOnStart && hasSelectedGame() && RomAssetInstallState.recoverAndIsBundleReady(this) && RomSelectionStore.load(this) != null && baseLanguageReady) {
            openGame();
            return;
        }
        setTitle(C0012R.string.app_name);
        setContentView(buildContent());
        String bootNotice = launchIntent != null ? launchIntent.getStringExtra(EXTRA_BOOT_NOTICE) : null;
        if (bootNotice != null && !bootNotice.trim().isEmpty()) {
            Toast.makeText(this, bootNotice, 1).show();
        }
        updateCatalogVisibility();
        if (hasSelectedGame()) {
            refreshSelectedRom();
        }
        if (isRazorSelected()) {
            refreshRazorSelection();
        }
    }

    private View buildContent() {
        ScrollView scrollView = new ScrollView(this);
        scrollView.setFillViewport(true);
        scrollView.setBackgroundColor(f24BG);
        scrollView.setOverScrollMode(2);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        int side = m6dp(14);
        linearLayout.setPadding(side, m6dp(14), side, m6dp(14));
        scrollView.addView(linearLayout, new FrameLayout.LayoutParams(-1, -2));
        LinearLayout brand = new LinearLayout(this);
        brand.setOrientation(0);
        brand.setGravity(16);
        brand.setPadding(m6dp(4), m6dp(2), m6dp(4), m6dp(4));
        ImageView icon = new ImageView(this);
        icon.setImageResource(C0012R.mipmap.ic_launcher);
        icon.setContentDescription(getString(C0012R.string.app_name));
        LinearLayout.LayoutParams iconLp = new LinearLayout.LayoutParams(m6dp(86), m6dp(86));
        iconLp.rightMargin = m6dp(13);
        brand.addView(icon, iconLp);
        LinearLayout brandText = new LinearLayout(this);
        brandText.setOrientation(1);
        brandText.setGravity(16);
        TextView title = text(getString(C0012R.string.app_name), 29.0f, TEXT, 1);
        brandText.addView(title, matchWrap(0));
        TextView version = text(getString(C0012R.string.launcher_version_compact, new Object[]{BuildConfig.VERSION_NAME}), 11.5f, Color.rgb(143, 151, 161), 0);
        brandText.addView(version, matchWrap(m6dp(1)));
        TextView tagline = text(getString(C0012R.string.launcher_brand_tagline), 12.5f, MUTED, 0);
        brandText.addView(tagline, matchWrap(m6dp(4)));
        brand.addView(brandText, new LinearLayout.LayoutParams(0, -2, 1.0f));
        linearLayout.addView(brand, matchWrap(0));
        this.gameCatalogPanel = new LinearLayout(this);
        this.gameCatalogPanel.setOrientation(1);
        linearLayout.addView(this.gameCatalogPanel, matchWrap(m6dp(8)));
        LinearLayout card = card(CARD);
        card.setPadding(m6dp(14), m6dp(13), m6dp(14), m6dp(13));
        addSectionTitle(card, getString(C0012R.string.launcher_compatible_game_data));
        LinearLayout gameChoiceRow = gameChoiceRow();
        TextView gameTitle = text(getString(C0012R.string.launcher_game_dune_title), 15.5f, TEXT, 1);
        gameTitle.setGravity(16);
        gameChoiceRow.addView(gameTitle, new LinearLayout.LayoutParams(0, m6dp(54), 1.0f));
        LinearLayout platformMark = new LinearLayout(this);
        platformMark.setOrientation(0);
        platformMark.setGravity(8388629);
        TextView segaMark = text("SEGA\nGENESIS", 9.6f, MUTED, 1);
        segaMark.setGravity(17);
        platformMark.addView(segaMark, new LinearLayout.LayoutParams(m6dp(48), m6dp(54)));
        TextView platformSlash = text("/", 13.0f, MUTED, 1);
        platformSlash.setGravity(17);
        platformMark.addView(platformSlash, new LinearLayout.LayoutParams(m6dp(18), m6dp(54)));
        TextView megaMark = text("MEGA\nDRIVE", 9.6f, MUTED, 1);
        megaMark.setGravity(17);
        platformMark.addView(megaMark, new LinearLayout.LayoutParams(m6dp(42), m6dp(54)));
        gameChoiceRow.addView(platformMark, new LinearLayout.LayoutParams(m6dp(108), m6dp(54)));
        gameChoiceRow.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda29
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LauncherActivity.this.lambda$buildContent$0(view);
            }
        });
        card.addView(gameChoiceRow, matchWrap(m6dp(8)));
        View autodetect = text(getString(C0012R.string.launcher_auto_rom_detection), 11.5f, MUTED, 0);
        card.addView(autodetect, matchWrap(m6dp(6)));
        this.gameCatalogPanel.addView(card, matchWrap(0));
        LinearLayout required = compactCard(CARD);
        addCompactSectionTitle(required, getString(C0012R.string.launcher_rom_required));
        addCompactBody(required, getString(C0012R.string.launcher_rom_required_body_compact));
        this.gameCatalogPanel.addView(required, matchWrap(m6dp(8)));
        LinearLayout how = compactCard(CARD);
        addCompactSectionTitle(how, getString(C0012R.string.launcher_how_title));
        addCompactBody(how, getString(C0012R.string.launcher_how_body_compact));
        this.gameCatalogPanel.addView(how, matchWrap(m6dp(8)));
        this.gameDetailsPanel = new LinearLayout(this);
        this.gameDetailsPanel.setOrientation(1);
        linearLayout.addView(this.gameDetailsPanel, matchWrap(m6dp(8)));
        LinearLayout card2 = card(CARD);
        card2.setPadding(m6dp(14), m6dp(14), m6dp(14), m6dp(14));
        addSectionTitle(card2, getString(C0012R.string.launcher_selected_game));
        LinearLayout selectedGameTitleRow = new LinearLayout(this);
        selectedGameTitleRow.setOrientation(0);
        selectedGameTitleRow.setGravity(16);
        TextView gameName = text(getString(C0012R.string.launcher_game_dune_title), 16.5f, TEXT, 1);
        selectedGameTitleRow.addView(gameName, new LinearLayout.LayoutParams(0, m6dp(32), 1.0f));
        TextView touchInfo = infoButton();
        touchInfo.setContentDescription(getString(C0012R.string.launcher_game_info_button_desc));
        touchInfo.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda41
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LauncherActivity.this.lambda$buildContent$1(view);
            }
        });
        selectedGameTitleRow.addView(touchInfo, new LinearLayout.LayoutParams(m6dp(30), m6dp(30)));
        card2.addView(selectedGameTitleRow, matchWrap(m6dp(5)));
        View platform = text(getString(C0012R.string.launcher_game_dune_platform), 12.0f, MUTED, 0);
        card2.addView(platform, matchWrap(m6dp(-6)));
        this.chooseButton = primaryButton(getString(C0012R.string.launcher_select_rom));
        this.chooseButton.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda46
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LauncherActivity.this.lambda$buildContent$2(view);
            }
        });
        card2.addView(this.chooseButton, matchWrap(m6dp(10)));
        this.selectedCard = compactCard(CARD_ALT);
        LinearLayout selectedHeaderRow = new LinearLayout(this);
        selectedHeaderRow.setOrientation(0);
        selectedHeaderRow.setGravity(16);
        TextView selectedTitle = text(getString(C0012R.string.launcher_selected_title), 15.5f, TEXT, 1);
        selectedHeaderRow.addView(selectedTitle, new LinearLayout.LayoutParams(0, -2, 1.0f));
        this.selectedClearButton = text("×", 22.0f, MUTED, 0);
        this.selectedClearButton.setGravity(17);
        this.selectedClearButton.setContentDescription(getString(C0012R.string.launcher_clear_selected_rom));
        this.selectedClearButton.setClickable(true);
        this.selectedClearButton.setFocusable(true);
        this.selectedClearButton.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda47
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LauncherActivity.this.lambda$buildContent$3(view);
            }
        });
        selectedHeaderRow.addView(this.selectedClearButton, new LinearLayout.LayoutParams(m6dp(30), m6dp(30)));
        this.selectedCard.addView(selectedHeaderRow, matchWrap(0));
        this.selectedName = text("", 14.0f, TEXT, 1);
        this.selectedCard.addView(this.selectedName, matchWrap(m6dp(5)));
        this.selectedSize = text("", 11.5f, MUTED, 0);
        this.selectedCard.addView(this.selectedSize, matchWrap(m6dp(1)));
        this.selectedState = text(getString(C0012R.string.launcher_selected_not_verified), 11.7f, ACCENT, 0);
        this.selectedCard.addView(this.selectedState, matchWrap(m6dp(4)));
        this.selectedProfile = text("", 11.2f, MUTED, 0);
        this.selectedCard.addView(this.selectedProfile, matchWrap(m6dp(3)));
        this.selectedHeader = text("", 11.2f, MUTED, 0);
        this.selectedCard.addView(this.selectedHeader, matchWrap(m6dp(2)));
        this.selectedLogicCompatibility = text("", 11.2f, TEXT, 1);
        this.selectedLogicCompatibility.setVisibility(8);
        this.selectedCard.addView(this.selectedLogicCompatibility, matchWrap(m6dp(0)));
        this.selectedAssetCompatibility = text("", 11.2f, TEXT, 1);
        this.selectedAssetCompatibility.setVisibility(8);
        this.selectedCard.addView(this.selectedAssetCompatibility, matchWrap(m6dp(0)));
        this.baseLanguageStatus = text("", 11.2f, ACCENT, 1);
        this.baseLanguageStatus.setVisibility(8);
        this.selectedCard.addView(this.baseLanguageStatus, matchWrap(m6dp(3)));
        setIdentificationDetailsVisible(false);
        this.selectedCard.setVisibility(8);
        card2.addView(this.selectedCard, matchWrap(m6dp(9)));
        this.prepareTitle = text(getString(C0012R.string.launcher_prepare_title), 15.0f, TEXT, 1);
        card2.addView(this.prepareTitle, matchWrap(m6dp(10)));
        this.prepareBody = text(getString(C0012R.string.launcher_prepare_body_compact), 12.0f, MUTED, 0);
        card2.addView(this.prepareBody, matchWrap(m6dp(4)));
        this.prepareProgress = new ProgressBar(this, null, android.R.attr.progressBarStyleHorizontal);
        this.prepareProgress.setMax(1000);
        this.prepareProgress.setProgress(0);
        this.prepareProgress.setIndeterminate(false);
        LinearLayout.LayoutParams progressLp = matchWrap(m6dp(8));
        progressLp.height = m6dp(7);
        card2.addView(this.prepareProgress, progressLp);
        this.prepareStatus = text(getString(C0012R.string.launcher_waiting_status), 11.8f, MUTED, 0);
        this.prepareStatus.setGravity(48);
        LinearLayout.LayoutParams prepareStatusLp = matchWrap(m6dp(6));
        prepareStatusLp.height = m6dp(68);
        card2.addView(this.prepareStatus, prepareStatusLp);
        setPreparationInfoVisible(false);
        this.prepareCoreButton = secondaryButton(getString(C0012R.string.launcher_prepare_core_button));
        this.prepareCoreButton.setVisibility(8);
        this.prepareCoreButton.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda48
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LauncherActivity.this.lambda$buildContent$4(view);
            }
        });
        card2.addView(this.prepareCoreButton, matchWrap(m6dp(8)));
        this.gameDetailsPanel.addView(card2, matchWrap(0));
        this.detailsInfoPanel = compactCard(CARD);
        addCompactSectionTitle(this.detailsInfoPanel, getString(C0012R.string.launcher_how_title));
        addCompactBody(this.detailsInfoPanel, getString(C0012R.string.launcher_how_body_compact));
        this.gameDetailsPanel.addView(this.detailsInfoPanel, matchWrap(m6dp(8)));
        this.optionalFeaturesPanel = card(CARD_ALT);
        this.optionalFeaturesPanel.setPadding(m6dp(14), m6dp(10), m6dp(14), m6dp(12));
        this.optionalFeaturesPanel.setVisibility(8);
        this.modifiedGraphicsCheck = new CheckBox(this);
        this.modifiedGraphicsCheck.setText(C0012R.string.launcher_graphics_mod_title);
        this.modifiedGraphicsCheck.setTextColor(TEXT);
        this.modifiedGraphicsCheck.setTextSize(12.5f);
        this.modifiedGraphicsCheck.setButtonTintList(ColorStateList.valueOf(BLUE));
        this.modifiedGraphicsCheck.setPadding(m6dp(4), 0, m6dp(4), 0);
        boolean graphicsAlreadySelected = RomSelectionStore.loadOverlay(this, RomSelectionStore.SourceRole.MEDIA_MOD) != null;
        this.modifiedGraphicsCheck.setChecked(graphicsAlreadySelected);
        LinearLayout graphicsHeader = new LinearLayout(this);
        graphicsHeader.setOrientation(0);
        graphicsHeader.setGravity(16);
        boolean graphicsAlreadySelected2 = graphicsAlreadySelected;
        graphicsHeader.addView(this.modifiedGraphicsCheck, new LinearLayout.LayoutParams(0, -2, 1.0f));
        TextView graphicsInfo = infoButton();
        graphicsInfo.setContentDescription(getString(C0012R.string.launcher_graphics_mod_info));
        graphicsInfo.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda49
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LauncherActivity.this.lambda$buildContent$5(view);
            }
        });
        graphicsHeader.addView(graphicsInfo, new LinearLayout.LayoutParams(m6dp(30), m6dp(30)));
        this.optionalFeaturesPanel.addView(graphicsHeader, matchWrap(0));
        this.modifiedGraphicsDetails = new LinearLayout(this);
        this.modifiedGraphicsDetails.setOrientation(1);
        this.modifiedGraphicsBody = text(getString(C0012R.string.launcher_graphics_mod_body), 11.7f, MUTED, 0);
        this.modifiedGraphicsBody.setVisibility(8);
        this.modsButton = secondaryButton(getString(C0012R.string.launcher_mods));
        this.modsButton.setEnabled(false);
        this.modsButton.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda50
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LauncherActivity.this.lambda$buildContent$6(view);
            }
        });
        this.modsButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda51
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean lambda$buildContent$7;
                lambda$buildContent$7 = LauncherActivity.this.lambda$buildContent$7(view);
                return lambda$buildContent$7;
            }
        });
        this.modifiedGraphicsDetails.addView(this.modsButton, matchWrap(m6dp(6)));
        this.mediaModStatus = text(getString(C0012R.string.launcher_mod_status_none), 11.2f, MUTED, 0);
        this.mediaModStatus.setTextIsSelectable(true);
        this.modifiedGraphicsDetails.addView(this.mediaModStatus, matchWrap(m6dp(5)));
        this.graphicsDetailsButton = secondaryButton(getString(C0012R.string.launcher_graphics_details_button));
        this.graphicsDetailsButton.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda52
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LauncherActivity.this.lambda$buildContent$8(view);
            }
        });
        this.graphicsDetailsButton.setVisibility(graphicsAlreadySelected2 ? 0 : 8);
        this.modifiedGraphicsDetails.addView(this.graphicsDetailsButton, matchWrap(m6dp(5)));
        this.graphicsMissionPreviewButton = secondaryButton(getString(C0012R.string.launcher_graphics_mission_preview));
        this.graphicsMissionPreviewButton.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda53
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LauncherActivity.this.lambda$buildContent$9(view);
            }
        });
        this.graphicsMissionPreviewButton.setVisibility(8);
        this.modifiedGraphicsDetails.addView(this.graphicsMissionPreviewButton, matchWrap(m6dp(5)));
        this.razorPreviewButton = secondaryButton(getString(C0012R.string.razor_preview_open));
        this.razorPreviewButton.setVisibility(8);
        this.razorPreviewButton.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda30
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LauncherActivity.this.lambda$buildContent$10(view);
            }
        });
        this.modifiedGraphicsDetails.addView(this.razorPreviewButton, matchWrap(m6dp(5)));
        this.modifiedGraphicsDetails.setVisibility(graphicsAlreadySelected2 ? 0 : 8);
        this.optionalFeaturesPanel.addView(this.modifiedGraphicsDetails, matchWrap(m6dp(2)));
        this.modifiedGraphicsCheck.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda31
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                LauncherActivity.this.lambda$buildContent$11(compoundButton, z);
            }
        });
        this.twoFingerGroupSelectionCheck = new CheckBox(this);
        this.twoFingerGroupSelectionCheck.setText(C0012R.string.launcher_two_finger_group_selection);
        this.twoFingerGroupSelectionCheck.setTextColor(TEXT);
        this.twoFingerGroupSelectionCheck.setTextSize(12.5f);
        this.twoFingerGroupSelectionCheck.setButtonTintList(ColorStateList.valueOf(BLUE));
        this.twoFingerGroupSelectionCheck.setPadding(m6dp(4), m6dp(3), m6dp(4), m6dp(3));
        this.twoFingerGroupSelectionCheck.setChecked(getSharedPreferences("dune_settings_v1", 0).getBoolean("two_finger_group_selection_enabled", false));
        this.twoFingerGroupPanel = compactCard(CARD_ALT);
        this.twoFingerGroupPanel.addView(this.twoFingerGroupSelectionCheck, matchWrap(m6dp(6)));
        final TextView groupBalanceWarning = text(getString(C0012R.string.launcher_two_finger_group_selection_warning), 11.2f, MUTED, 0);
        groupBalanceWarning.setPadding(m6dp(9), 0, m6dp(8), m6dp(7));
        groupBalanceWarning.setVisibility(this.twoFingerGroupSelectionCheck.isChecked() ? 0 : 8);
        this.twoFingerGroupPanel.addView(groupBalanceWarning, matchWrap(m6dp(1)));
        this.twoFingerGroupSelectionCheck.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda32
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                LauncherActivity.this.lambda$buildContent$12(groupBalanceWarning, compoundButton, z);
            }
        });
        this.gameDetailsPanel.addView(this.optionalFeaturesPanel, matchWrap(m6dp(8)));
        this.audioModPanel = compactCard(CARD_ALT);
        LinearLayout audioHeader = new LinearLayout(this);
        audioHeader.setOrientation(0);
        audioHeader.setGravity(16);
        this.modifiedAudioCheck = new CheckBox(this);
        this.modifiedAudioCheck.setText(C0012R.string.launcher_audio_mod_title);
        this.modifiedAudioCheck.setTextColor(TEXT);
        this.modifiedAudioCheck.setTextSize(12.5f);
        this.modifiedAudioCheck.setButtonTintList(ColorStateList.valueOf(BLUE));
        this.modifiedAudioCheck.setChecked(RomSelectionStore.loadOverlay(this, RomSelectionStore.SourceRole.AUDIO_MOD) != null);
        audioHeader.addView(this.modifiedAudioCheck, new LinearLayout.LayoutParams(0, -2, 1.0f));
        TextView audioInfo = infoButton();
        audioInfo.setContentDescription(getString(C0012R.string.launcher_audio_mod_info));
        audioInfo.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda34
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LauncherActivity.this.lambda$buildContent$13(view);
            }
        });
        audioHeader.addView(audioInfo, new LinearLayout.LayoutParams(m6dp(30), m6dp(30)));
        this.audioModPanel.addView(audioHeader, matchWrap(0));
        this.audioModDetails = new LinearLayout(this);
        this.audioModDetails.setOrientation(1);
        this.audioModButton = secondaryButton(getString(C0012R.string.launcher_audio_choose));
        this.audioModButton.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda35
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LauncherActivity.this.lambda$buildContent$14(view);
            }
        });
        this.audioModDetails.addView(this.audioModButton, matchWrap(m6dp(5)));
        this.audioModStatus = text(getString(C0012R.string.launcher_audio_not_selected), 11.2f, MUTED, 0);
        this.audioModDetails.addView(this.audioModStatus, matchWrap(m6dp(5)));
        this.audioReportButton = secondaryButton(getString(C0012R.string.launcher_audio_report_button));
        this.audioReportButton.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda36
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LauncherActivity.this.lambda$buildContent$15(view);
            }
        });
        this.audioModDetails.addView(this.audioReportButton, matchWrap(m6dp(5)));
        this.audioModPanel.addView(this.audioModDetails, matchWrap(m6dp(2)));
        this.audioModDetails.setVisibility(this.modifiedAudioCheck.isChecked() ? 0 : 8);
        this.modifiedAudioCheck.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda37
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                LauncherActivity.this.lambda$buildContent$16(compoundButton, z);
            }
        });
        refreshAudioModButton();
        this.gameDetailsPanel.addView(this.audioModPanel, matchWrap(m6dp(8)));
        this.gameDetailsPanel.addView(this.twoFingerGroupPanel, matchWrap(m6dp(8)));
        this.objectNameEditorPanel = new RomObjectNameEditorPanel(this);
        this.gameDetailsPanel.addView(this.objectNameEditorPanel, matchWrap(m6dp(8)));
        this.launcherPreferencePanel = compactCard(CARD);
        this.launcherPreferencePanel.setVisibility(8);
        this.launchNextCheck = new CheckBox(this);
        this.launchNextCheck.setText(C0012R.string.launcher_show_next_start);
        this.launchNextCheck.setTextColor(TEXT);
        this.launchNextCheck.setTextSize(12.2f);
        this.launchNextCheck.setButtonTintList(ColorStateList.valueOf(BLUE));
        this.launchNextCheck.setPadding(m6dp(4), 0, m6dp(4), 0);
        boolean showLauncherNext = getPreferences().getBoolean(KEY_SHOW_LAUNCHER_ON_START, true);
        this.launchNextCheck.setChecked(showLauncherNext);
        this.launcherPreferencePanel.addView(this.launchNextCheck, matchWrap(0));
        this.launcherStartupHint = text(getString(C0012R.string.launcher_startup_hint), 11.2f, MUTED, 0);
        this.launcherStartupHint.setVisibility(showLauncherNext ? 8 : 0);
        this.launcherPreferencePanel.addView(this.launcherStartupHint, matchWrap(m6dp(5)));
        this.launchNextCheck.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda38
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                LauncherActivity.this.lambda$buildContent$17(compoundButton, z);
            }
        });
        this.gameDetailsPanel.addView(this.launcherPreferencePanel, matchWrap(m6dp(8)));
        this.razorGamePanel = card(CARD);
        this.razorGamePanel.setPadding(m6dp(14), m6dp(14), m6dp(14), m6dp(14));
        addSectionTitle(this.razorGamePanel, getString(C0012R.string.razor_game_title));
        TextView razorInfo = text(getString(C0012R.string.razor_native_explanation), 12.0f, MUTED, 0);
        this.razorGamePanel.addView(razorInfo, matchWrap(m6dp(6)));
        this.razorRomName = text(getString(C0012R.string.razor_no_rom), 13.3f, TEXT, 1);
        this.razorGamePanel.addView(this.razorRomName, matchWrap(m6dp(12)));
        Button razorChoose = primaryButton(getString(C0012R.string.launcher_select_rom));
        razorChoose.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda39
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LauncherActivity.this.lambda$buildContent$18(view);
            }
        });
        this.razorGamePanel.addView(razorChoose, matchWrap(m6dp(10)));
        Button razorForget = secondaryButton(getString(C0012R.string.launcher_clear_selected_rom));
        razorForget.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda40
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LauncherActivity.this.lambda$buildContent$19(view);
            }
        });
        this.razorGamePanel.addView(razorForget, matchWrap(m6dp(6)));
        this.razorStatus = text(getString(C0012R.string.razor_no_rom), 11.8f, MUTED, 0);
        this.razorStatus.setTextIsSelectable(true);
        this.razorGamePanel.addView(this.razorStatus, matchWrap(m6dp(12)));
        this.razorNativeAuditButton = secondaryButton(getString(C0012R.string.razor_native_audit));
        this.razorNativeAuditButton.setEnabled(false);
        this.razorNativeAuditButton.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda42
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LauncherActivity.this.lambda$buildContent$20(view);
            }
        });
        this.razorGamePanel.addView(this.razorNativeAuditButton, matchWrap(m6dp(12)));
        this.razorMap558Button = primaryButton(getString(C0012R.string.razor_map558_open));
        this.razorMap558Button.setEnabled(false);
        this.razorMap558Button.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda43
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LauncherActivity.this.lambda$buildContent$21(view);
            }
        });
        this.razorGamePanel.addView(this.razorMap558Button, matchWrap(m6dp(12)));
        this.razorQuickPlay662Button = primaryButton(getString(C0012R.string.razor_quick662_open));
        this.razorQuickPlay662Button.setEnabled(false);
        this.razorQuickPlay662Button.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda45
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LauncherActivity.this.lambda$buildContent$22(view);
            }
        });
        this.razorGamePanel.addView(this.razorQuickPlay662Button, matchWrap(m6dp(10)));
        this.razorGamePanel.addView(text(getString(C0012R.string.razor_quick662_note), 11.8f, MUTED, 0), matchWrap(m6dp(5)));
        this.razorGamePanel.addView(text(getString(C0012R.string.razor_map558_note), 11.8f, MUTED, 0), matchWrap(m6dp(7)));
        addRazorSessionControls();
        TextView blocked = text(getString(C0012R.string.razor_not_playable), 11.8f, ACCENT, 0);
        this.razorGamePanel.addView(blocked, matchWrap(m6dp(10)));
        for (int i = 0; i < this.razorGamePanel.getChildCount(); i++) {
            View item = this.razorGamePanel.getChildAt(i);
            if (item != this.razorRomName && item != razorChoose && item != this.razorQuickPlay662Button) {
                item.setVisibility(8);
            }
        }
        this.razorQuickPlay662Button.setText("Открыть игру");
        linearLayout.addView(this.razorGamePanel, matchWrap(m6dp(8)));
        this.razorGamePanel.setVisibility(8);
        refreshReadyOnlyPanels();
        return scrollView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildContent$0(View v) {
        selectGame("dune_battle_for_arrakis_genesis");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildContent$1(View v) {
        showGameInfoDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildContent$2(View v) {
        openRomPicker();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildContent$3(View v) {
        clearSelectedBaseRom();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildContent$4(View v) {
        if (currentSelectionMatchesReadyBundle()) {
            if (baseLocalizationReadyOrNotRequired()) {
                openGame();
                return;
            } else {
                startRussianBaseLocalizationRefresh(true);
                return;
            }
        }
        startAssetBundleInstallation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildContent$5(View v) {
        int i;
        int i2 = C0012R.string.launcher_graphics_mod_title;
        if (RomSelectionStore.loadOverlay(this, RomSelectionStore.SourceRole.MEDIA_MOD) == null) {
            i = C0012R.string.launcher_graphics_mod_body;
        } else {
            i = C0012R.string.launcher_graphics_mod_body_selected;
        }
        showSimpleLauncherInfo(i2, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildContent$6(View v) {
        openMediaModPicker();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$buildContent$7(View v) {
        disableModifiedGraphics(true);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildContent$8(View v) {
        showGraphicsComparisonDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildContent$9(View v) {
        GenesisMissionNineGraphicsPreview.show(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildContent$10(View v) {
        RomSelectionStore.OverlaySelection selected = RomSelectionStore.loadOverlay(this, RomSelectionStore.SourceRole.MEDIA_MOD);
        if (selected == null || !RazorTerrainPreviewSourceSha.isAttested(selected.sha256)) {
            Toast.makeText(this, C0012R.string.razor_preview_no_mod, 1).show();
        } else {
            startActivity(new Intent(this, (Class<?>) RazorTerrainPreviewActivity.class));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildContent$11(CompoundButton buttonView, boolean checked) {
        if (this.modifiedGraphicsDetails != null) {
            this.modifiedGraphicsDetails.setVisibility(checked ? 0 : 8);
        }
        if (!checked) {
            disableModifiedGraphics(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildContent$12(TextView groupBalanceWarning, CompoundButton button, boolean enabled) {
        getSharedPreferences("dune_settings_v1", 0).edit().putBoolean("two_finger_group_selection_enabled", enabled).apply();
        groupBalanceWarning.setVisibility(enabled ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildContent$13(View v) {
        showSimpleLauncherInfo(C0012R.string.launcher_audio_mod_title, C0012R.string.launcher_audio_mod_explanation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildContent$14(View v) {
        openAudioModPicker();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildContent$15(View v) {
        showAudioAuditReport();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildContent$16(CompoundButton buttonView, boolean enabled) {
        this.audioModDetails.setVisibility(enabled ? 0 : 8);
        if (!enabled) {
            RomSelectionStore.clearOverlay(this, RomSelectionStore.SourceRole.AUDIO_MOD);
            refreshAudioModButton();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildContent$17(CompoundButton buttonView, boolean checked) {
        getPreferences().edit().putBoolean(KEY_SHOW_LAUNCHER_ON_START, checked).apply();
        if (this.launcherStartupHint != null) {
            this.launcherStartupHint.setVisibility(checked ? 8 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildContent$18(View v) {
        openRazorRomPicker();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildContent$19(View v) {
        this.razorGeneration++;
        RazorGameRomStore.clear(this);
        this.razorAnalysis = null;
        refreshRazorSelection();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildContent$20(View v) {
        runRazorNativeAudit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildContent$21(View v) {
        openRazorMap558();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildContent$22(View v) {
        openRazorMap558(true);
    }

    private void addRazorSessionControls() {
        int oldCount558 = this.razorGamePanel.getChildCount();
        TextView heading = text(getString(C0012R.string.razor_session_heading), 14.0f, TEXT, 1);
        this.razorGamePanel.addView(heading, matchWrap(m6dp(14)));
        this.razorGamePanel.addView(text(getString(C0012R.string.razor_session_hint), 11.8f, MUTED, 0), matchWrap(m6dp(5)));
        LinearLayout selectors = new LinearLayout(this);
        selectors.setOrientation(0);
        this.razorSessionHouse = new Spinner(this);
        ArrayAdapter<CharSequence> houseAdapter = ArrayAdapter.createFromResource(this, C0012R.array.razor_preview_houses, android.R.layout.simple_spinner_item);
        houseAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this.razorSessionHouse.setAdapter((SpinnerAdapter) houseAdapter);
        this.razorSessionHouse.setSelection(1);
        selectors.addView(this.razorSessionHouse, new LinearLayout.LayoutParams(0, m6dp(50), 2.0f));
        this.razorSessionMission = new Spinner(this);
        ArrayAdapter<CharSequence> missionAdapter = ArrayAdapter.createFromResource(this, C0012R.array.razor_preview_missions, android.R.layout.simple_spinner_item);
        missionAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this.razorSessionMission.setAdapter((SpinnerAdapter) missionAdapter);
        this.razorSessionMission.setSelection(2);
        selectors.addView(this.razorSessionMission, new LinearLayout.LayoutParams(0, m6dp(50), 1.0f));
        this.razorGamePanel.addView(selectors, matchWrap(m6dp(6)));
        AdapterView.OnItemSelectedListener changed = new AdapterView.OnItemSelectedListener() { // from class: com.ahsim.demulation.LauncherActivity.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                LauncherActivity.this.razorSessionSelectionGeneration++;
                LauncherActivity.this.closeRazorCampaignSession();
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> parent) {
                LauncherActivity.this.razorSessionSelectionGeneration++;
                LauncherActivity.this.closeRazorCampaignSession();
            }
        };
        this.razorSessionHouse.setOnItemSelectedListener(changed);
        this.razorSessionMission.setOnItemSelectedListener(changed);
        this.razorSessionStatus = text(getString(C0012R.string.razor_session_inactive), 12.0f, MUTED, 0);
        this.razorSessionStatus.setTextIsSelectable(true);
        this.razorGamePanel.addView(this.razorSessionStatus, matchWrap(m6dp(9)));
        this.razorSessionStartButton = secondaryButton(getString(C0012R.string.razor_session_create));
        this.razorSessionStartButton.setEnabled(false);
        this.razorSessionStartButton.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LauncherActivity.this.lambda$addRazorSessionControls$23(view);
            }
        });
        this.razorGamePanel.addView(this.razorSessionStartButton, matchWrap(m6dp(7)));
        this.razorSessionPollButton = secondaryButton(getString(C0012R.string.razor_session_poll));
        this.razorSessionPollButton.setEnabled(false);
        this.razorSessionPollButton.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LauncherActivity.this.lambda$addRazorSessionControls$24(view);
            }
        });
        this.razorGamePanel.addView(this.razorSessionPollButton, matchWrap(m6dp(6)));
        this.razorSessionProbeButton = secondaryButton(getString(C0012R.string.razor_sandbox_probe_button));
        this.razorSessionProbeButton.setEnabled(false);
        this.razorSessionProbeButton.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda22
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LauncherActivity.this.lambda$addRazorSessionControls$25(view);
            }
        });
        this.razorGamePanel.addView(this.razorSessionProbeButton, matchWrap(m6dp(6)));
        this.razorGamePanel.addView(text(getString(C0012R.string.razor_order557_hint), 11.4f, MUTED, 0), matchWrap(m6dp(9)));
        LinearLayout orderInputs557 = new LinearLayout(this);
        orderInputs557.setOrientation(0);
        this.razorOrderUnit557 = orderInput557(C0012R.string.razor_order557_unit, "0");
        this.razorOrderX557 = orderInput557(C0012R.string.razor_order557_x, "34");
        this.razorOrderY557 = orderInput557(C0012R.string.razor_order557_y, "2");
        orderInputs557.addView(this.razorOrderUnit557, new LinearLayout.LayoutParams(0, m6dp(52), 1.0f));
        orderInputs557.addView(this.razorOrderX557, new LinearLayout.LayoutParams(0, m6dp(52), 1.0f));
        orderInputs557.addView(this.razorOrderY557, new LinearLayout.LayoutParams(0, m6dp(52), 1.0f));
        this.razorGamePanel.addView(orderInputs557, matchWrap(m6dp(6)));
        this.razorOrderIssue557 = secondaryButton(getString(C0012R.string.razor_order557_issue));
        this.razorOrderIssue557.setEnabled(false);
        this.razorOrderIssue557.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda33
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LauncherActivity.this.lambda$addRazorSessionControls$26(view);
            }
        });
        this.razorGamePanel.addView(this.razorOrderIssue557, matchWrap(m6dp(5)));
        LinearLayout orderActions557 = new LinearLayout(this);
        orderActions557.setOrientation(0);
        this.razorOrderAdvance557 = secondaryButton(getString(C0012R.string.razor_order557_advance));
        this.razorOrderAdvance557.setEnabled(false);
        this.razorOrderAdvance557.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda44
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LauncherActivity.this.lambda$addRazorSessionControls$27(view);
            }
        });
        orderActions557.addView(this.razorOrderAdvance557, new LinearLayout.LayoutParams(0, m6dp(54), 1.0f));
        this.razorOrderCancel557 = secondaryButton(getString(C0012R.string.razor_order557_cancel));
        this.razorOrderCancel557.setEnabled(false);
        this.razorOrderCancel557.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda55
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LauncherActivity.this.lambda$addRazorSessionControls$28(view);
            }
        });
        orderActions557.addView(this.razorOrderCancel557, new LinearLayout.LayoutParams(0, m6dp(54), 1.0f));
        this.razorGamePanel.addView(orderActions557, matchWrap(m6dp(5)));
        this.razorSessionStopButton = secondaryButton(getString(C0012R.string.razor_session_close));
        this.razorSessionStopButton.setEnabled(false);
        this.razorSessionStopButton.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda66
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LauncherActivity.this.lambda$addRazorSessionControls$29(view);
            }
        });
        this.razorGamePanel.addView(this.razorSessionStopButton, matchWrap(m6dp(6)));
        final LinearLayout diagnostics558 = new LinearLayout(this);
        diagnostics558.setOrientation(1);
        while (this.razorGamePanel.getChildCount() > oldCount558) {
            View item = this.razorGamePanel.getChildAt(oldCount558);
            this.razorGamePanel.removeViewAt(oldCount558);
            diagnostics558.addView(item);
        }
        diagnostics558.setVisibility(8);
        final Button show558 = secondaryButton(getString(C0012R.string.razor_map558_developer_open));
        show558.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda73
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LauncherActivity.lambda$addRazorSessionControls$30(diagnostics558, show558, view);
            }
        });
        this.razorGamePanel.addView(show558, matchWrap(m6dp(6)));
        this.razorGamePanel.addView(diagnostics558, matchWrap(m6dp(2)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addRazorSessionControls$23(View v) {
        createRazorCampaignSession();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addRazorSessionControls$24(View v) {
        pollRazorCampaignSession();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addRazorSessionControls$25(View v) {
        probeRazorCampaignObject();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addRazorSessionControls$26(View v) {
        runRazorOrder557(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addRazorSessionControls$27(View v) {
        runRazorOrder557(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addRazorSessionControls$28(View v) {
        runRazorOrder557(3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addRazorSessionControls$29(View v) {
        closeRazorCampaignSession();
    }

    static /* synthetic */ void lambda$addRazorSessionControls$30(LinearLayout diagnostics558, Button show558, View v) {
        boolean open = diagnostics558.getVisibility() != 0;
        diagnostics558.setVisibility(open ? 0 : 8);
        show558.setText(open ? C0012R.string.razor_map558_developer_close : C0012R.string.razor_map558_developer_open);
    }

    private void openRazorMap558() {
        openRazorMap558(true);
    }

    private void openRazorMap558(boolean quickPlay662) {
        RazorRomAnalysis analysis = this.razorAnalysis;
        RazorGameRomStore.Entry selected = RazorGameRomStore.load(this);
        if (!isRazorSelected() || analysis == null || !analysis.recognized || selected == null || selected.sha256 == null || !selected.sha256.equalsIgnoreCase(analysis.sha256)) {
            Toast.makeText(this, C0012R.string.razor_map558_need_rom, 1).show();
            return;
        }
        closeRazorCampaignSession();
        Intent mapIntent = new Intent(this, (Class<?>) RazorTerrainPreviewActivity.class);
        mapIntent.putExtra(RazorTerrainPreviewActivity.EXTRA_GAME_PROFILE558, true);
        mapIntent.putExtra(RazorTerrainPreviewActivity.EXTRA_QUICK_PLAY662, quickPlay662);
        mapIntent.putExtra(RazorTerrainPreviewActivity.EXTRA_HOUSE558, this.razorSessionHouse == null ? 1 : this.razorSessionHouse.getSelectedItemPosition());
        mapIntent.putExtra(RazorTerrainPreviewActivity.EXTRA_MISSION558, this.razorSessionMission == null ? 3 : 1 + this.razorSessionMission.getSelectedItemPosition());
        startActivity(mapIntent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeRazorCampaignSession() {
        synchronized (this.razorSessionLock) {
            if (this.razorCampaignSession != null) {
                this.razorCampaignSession.close();
                this.razorCampaignSession = null;
            }
        }
        boolean z = false;
        if (this.razorOrderIssue557 != null) {
            this.razorOrderIssue557.setEnabled(false);
        }
        if (this.razorOrderAdvance557 != null) {
            this.razorOrderAdvance557.setEnabled(false);
        }
        if (this.razorOrderCancel557 != null) {
            this.razorOrderCancel557.setEnabled(false);
        }
        if (this.razorSessionPollButton != null) {
            this.razorSessionPollButton.setEnabled(false);
        }
        if (this.razorSessionProbeButton != null) {
            this.razorSessionProbeButton.setEnabled(false);
        }
        if (this.razorSessionStopButton != null) {
            this.razorSessionStopButton.setEnabled(false);
        }
        if (this.razorSessionStartButton != null) {
            Button button = this.razorSessionStartButton;
            if (this.razorAnalysis != null && this.razorAnalysis.recognized && isRazorSelected()) {
                z = true;
            }
            button.setEnabled(z);
        }
        if (this.razorSessionStatus != null) {
            this.razorSessionStatus.setText(C0012R.string.razor_session_inactive);
        }
    }

    private void createRazorCampaignSession() {
        final RazorRomAnalysis analysis = this.razorAnalysis;
        if (!isRazorSelected() || analysis == null || !analysis.recognized || this.razorSessionHouse == null || this.razorSessionMission == null) {
            return;
        }
        final int house = this.razorSessionHouse.getSelectedItemPosition();
        final int mission = this.razorSessionMission.getSelectedItemPosition() + 1;
        final int generation = this.razorGeneration;
        final int selection = this.razorSessionSelectionGeneration;
        closeRazorCampaignSession();
        this.razorSessionStartButton.setEnabled(false);
        this.razorSessionStatus.setText(C0012R.string.razor_session_creating);
        this.workerExecutor.execute(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                LauncherActivity.this.lambda$createRazorCampaignSession$33(analysis, house, mission, generation, selection);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0038 A[Catch: all -> 0x0030, TRY_LEAVE, TryCatch #0 {all -> 0x0030, blocks: (B:43:0x0014, B:45:0x0018, B:47:0x001e, B:49:0x0024, B:51:0x0028, B:11:0x0038), top: B:42:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x003d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$createRazorCampaignSession$33(com.ahsim.demulation.RazorRomAnalysis r9, int r10, int r11, final int r12, final int r13) {
        /*
            r8 = this;
            r1 = 0
            com.ahsim.demulation.DuneHackR82cRazorMissionBundle$Result r0 = r9.bundle     // Catch: java.lang.LinkageError -> L65 java.lang.RuntimeException -> L67 java.io.IOException -> L69
            com.ahsim.demulation.RazorCampaignNativeSession r0 = com.ahsim.demulation.RazorCampaignNativeSession.open(r0, r10, r11)     // Catch: java.lang.LinkageError -> L65 java.lang.RuntimeException -> L67 java.io.IOException -> L69
            r1 = r0
            com.ahsim.demulation.RazorCampaignSessionGuard$Snapshot r0 = r1.poll()     // Catch: java.lang.LinkageError -> L65 java.lang.RuntimeException -> L67 java.io.IOException -> L69
            r7 = r0
            java.lang.Object r2 = r8.razorSessionLock     // Catch: java.lang.LinkageError -> L65 java.lang.RuntimeException -> L67 java.io.IOException -> L69
            monitor-enter(r2)     // Catch: java.lang.LinkageError -> L65 java.lang.RuntimeException -> L67 java.io.IOException -> L69
            int r0 = r8.razorGeneration     // Catch: java.lang.Throwable -> L57
            if (r12 != r0) goto L35
            int r0 = r8.razorSessionSelectionGeneration     // Catch: java.lang.Throwable -> L30
            if (r13 != r0) goto L35
            boolean r0 = r8.isFinishing()     // Catch: java.lang.Throwable -> L30
            if (r0 != 0) goto L35
            boolean r0 = r8.isDestroyed()     // Catch: java.lang.Throwable -> L30
            if (r0 != 0) goto L35
            com.ahsim.demulation.RazorCampaignNativeSession r0 = r8.razorCampaignSession     // Catch: java.lang.Throwable -> L30
            if (r0 != 0) goto L35
            boolean r0 = r8.isRazorSelected()     // Catch: java.lang.Throwable -> L30
            if (r0 == 0) goto L35
            r0 = 1
            goto L36
        L30:
            r0 = move-exception
            r3 = r8
            r5 = r12
            r6 = r13
            goto L5b
        L35:
            r0 = 0
        L36:
            if (r0 == 0) goto L3a
            r8.razorCampaignSession = r1     // Catch: java.lang.Throwable -> L30
        L3a:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L57
            if (r0 != 0) goto L4a
            r1.close()     // Catch: java.lang.LinkageError -> L41 java.lang.RuntimeException -> L43 java.io.IOException -> L45
            return
        L41:
            r0 = move-exception
            goto L46
        L43:
            r0 = move-exception
            goto L46
        L45:
            r0 = move-exception
        L46:
            r3 = r8
            r5 = r12
            r6 = r13
            goto L6d
        L4a:
            r4 = r1
            com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda64 r2 = new com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda64     // Catch: java.lang.LinkageError -> L65 java.lang.RuntimeException -> L67 java.io.IOException -> L69
            r3 = r8
            r5 = r12
            r6 = r13
            r2.<init>()     // Catch: java.lang.LinkageError -> L5d java.lang.RuntimeException -> L5f java.io.IOException -> L61
            r8.runOnUiThread(r2)     // Catch: java.lang.LinkageError -> L5d java.lang.RuntimeException -> L5f java.io.IOException -> L61
            goto L7a
        L57:
            r0 = move-exception
            r3 = r8
            r5 = r12
            r6 = r13
        L5b:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L63
            throw r0     // Catch: java.lang.LinkageError -> L5d java.lang.RuntimeException -> L5f java.io.IOException -> L61
        L5d:
            r0 = move-exception
            goto L6d
        L5f:
            r0 = move-exception
            goto L6d
        L61:
            r0 = move-exception
            goto L6d
        L63:
            r0 = move-exception
            goto L5b
        L65:
            r0 = move-exception
            goto L6a
        L67:
            r0 = move-exception
            goto L6a
        L69:
            r0 = move-exception
        L6a:
            r3 = r8
            r5 = r12
            r6 = r13
        L6d:
            if (r1 == 0) goto L72
            r1.close()
        L72:
            com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda65 r12 = new com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda65
            r12.<init>()
            r8.runOnUiThread(r12)
        L7a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.LauncherActivity.lambda$createRazorCampaignSession$33(com.ahsim.demulation.RazorRomAnalysis, int, int, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createRazorCampaignSession$31(RazorCampaignNativeSession established, int generation, int selection, RazorCampaignSessionGuard.Snapshot snapshot) {
        synchronized (this.razorSessionLock) {
            try {
                try {
                    if (this.razorCampaignSession == established) {
                        try {
                            if (generation == this.razorGeneration) {
                                try {
                                    if (selection == this.razorSessionSelectionGeneration) {
                                        this.razorSessionStatus.setText(getString(C0012R.string.razor_session_summary, new Object[]{Integer.valueOf(snapshot.house), Integer.valueOf(snapshot.mission), Integer.valueOf(snapshot.gridSide), Integer.valueOf(snapshot.units), Integer.valueOf(snapshot.buildings), Integer.valueOf(snapshot.uninitializedCells), Integer.valueOf(snapshot.reads), Integer.valueOf(snapshot.ticks)}));
                                        this.razorSessionPollButton.setEnabled(true);
                                        this.razorSessionProbeButton.setEnabled(true);
                                        this.razorOrderIssue557.setEnabled(true);
                                        this.razorOrderAdvance557.setEnabled(true);
                                        this.razorOrderCancel557.setEnabled(true);
                                        this.razorSessionStopButton.setEnabled(true);
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    throw th;
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createRazorCampaignSession$32(int generation, int selection, Throwable ex) {
        if (generation != this.razorGeneration || selection != this.razorSessionSelectionGeneration || isFinishing() || isDestroyed()) {
            return;
        }
        this.razorSessionStatus.setText(getString(C0012R.string.razor_session_failed, new Object[]{safeMessage(ex)}));
        this.razorSessionStartButton.setEnabled(true);
    }

    private void pollRazorCampaignSession() {
        synchronized (this.razorSessionLock) {
            if (this.razorCampaignSession == null) {
                return;
            }
            try {
                RazorCampaignSessionGuard.Snapshot s = this.razorCampaignSession.poll();
                this.razorSessionStatus.setText(getString(C0012R.string.razor_session_summary, new Object[]{Integer.valueOf(s.house), Integer.valueOf(s.mission), Integer.valueOf(s.gridSide), Integer.valueOf(s.units), Integer.valueOf(s.buildings), Integer.valueOf(s.uninitializedCells), Integer.valueOf(s.reads), Integer.valueOf(s.ticks)}));
            } catch (IOException ex) {
                closeRazorCampaignSession();
                this.razorSessionStatus.setText(getString(C0012R.string.razor_session_failed, new Object[]{safeMessage(ex)}));
            }
        }
    }

    private void probeRazorCampaignObject() {
        String string;
        synchronized (this.razorSessionLock) {
            if (this.razorCampaignSession == null) {
                return;
            }
            try {
                RazorCampaignNativeSession.ExperimentalStep p = this.razorCampaignSession.probeObjectStep556();
                TextView textView = this.razorSessionStatus;
                if (p.moved) {
                    string = getString(C0012R.string.razor_sandbox_probe_moved, new Object[]{Integer.valueOf(p.ordinal), Integer.valueOf(p.fromX), Integer.valueOf(p.fromY), Integer.valueOf(p.toX), Integer.valueOf(p.toY), Integer.valueOf(p.steps)});
                } else {
                    string = getString(C0012R.string.razor_sandbox_probe_blocked);
                }
                textView.setText(string);
            } catch (IOException | LinkageError | RuntimeException ex) {
                closeRazorCampaignSession();
                this.razorSessionStatus.setText(getString(C0012R.string.razor_session_failed, new Object[]{safeMessage(ex)}));
            }
        }
    }

    private EditText orderInput557(int hint, String initial) {
        EditText e = new EditText(this);
        e.setInputType(2);
        e.setSingleLine(true);
        e.setTextColor(TEXT);
        e.setHintTextColor(MUTED);
        e.setTextSize(15.0f);
        e.setHint(getString(hint));
        e.setText(initial);
        return e;
    }

    private void runRazorOrder557(int action) {
        int unit = 0;
        int x = 0;
        int y = 0;
        boolean z = true;
        if (action == 1) {
            try {
                unit = Integer.parseInt(this.razorOrderUnit557.getText().toString().trim());
                x = Integer.parseInt(this.razorOrderX557.getText().toString().trim());
                y = Integer.parseInt(this.razorOrderY557.getText().toString().trim());
            } catch (NumberFormatException e) {
                this.razorSessionStatus.setText(C0012R.string.razor_order557_invalid);
                return;
            }
        }
        synchronized (this.razorSessionLock) {
            if (this.razorCampaignSession == null) {
                return;
            }
            try {
                RazorCampaignNativeSession.OrderResult v = this.razorCampaignSession.command557(action, unit, x, y);
                this.razorSessionStatus.setText(getString(C0012R.string.razor_order557_report, new Object[]{Integer.valueOf(v.ordinal), Integer.valueOf(v.fromX), Integer.valueOf(v.fromY), Integer.valueOf(v.toX), Integer.valueOf(v.toY), Integer.valueOf(v.targetX), Integer.valueOf(v.targetY), Integer.valueOf(v.status), Integer.valueOf(v.steps)}));
                Button button = this.razorSessionProbeButton;
                if (v.active) {
                    z = false;
                }
                button.setEnabled(z);
            } catch (IOException | LinkageError | RuntimeException ex) {
                if (this.razorCampaignSession != null && !this.razorCampaignSession.isOpen()) {
                    closeRazorCampaignSession();
                }
                this.razorSessionStatus.setText(getString(C0012R.string.razor_session_failed, new Object[]{safeMessage(ex)}));
            }
        }
    }

    private boolean hasSelectedGame() {
        return "dune_battle_for_arrakis_genesis".equals(getPreferences().getString(KEY_SELECTED_GAME, null));
    }

    private boolean isRazorSelected() {
        return "dune_razor_missions_native".equals(getPreferences().getString(KEY_SELECTED_GAME, null));
    }

    private SharedPreferences getPreferences() {
        return getSharedPreferences(CATALOG_PREFS, 0);
    }

    private void saveSelectedGame(String gameId) {
        SharedPreferences.Editor edit = getPreferences().edit();
        if (gameId == null) {
            edit.remove(KEY_SELECTED_GAME);
        } else {
            edit.putString(KEY_SELECTED_GAME, gameId);
        }
        edit.apply();
    }

    private void selectGame(String gameId) {
        if (DemulationGameRegistry.find(gameId) == null) {
            return;
        }
        closeRazorCampaignSession();
        this.razorGeneration++;
        this.identificationGeneration++;
        this.romRoutingGeneration++;
        saveSelectedGame(gameId);
        updateCatalogVisibility();
        if (hasSelectedGame()) {
            refreshSelectedRom();
        }
        if (isRazorSelected()) {
            refreshRazorSelection();
        }
    }

    private void returnToGameCatalog() {
        this.razorGeneration++;
        closeRazorCampaignSession();
        this.identificationGeneration++;
        this.romRoutingGeneration++;
        saveSelectedGame(null);
        updateCatalogVisibility();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (hasSelectedGame() || isRazorSelected()) {
            returnToGameCatalog();
        } else {
            super.onBackPressed();
        }
    }

    private void updateCatalogVisibility() {
        boolean selected = hasSelectedGame();
        boolean razor = isRazorSelected();
        if (this.gameCatalogPanel != null) {
            this.gameCatalogPanel.setVisibility((selected || razor) ? 8 : 0);
        }
        if (this.gameDetailsPanel != null) {
            this.gameDetailsPanel.setVisibility(selected ? 0 : 8);
        }
        if (this.razorGamePanel != null) {
            this.razorGamePanel.setVisibility(razor ? 0 : 8);
        }
    }

    private void openRazorRomPicker() {
        openRomPicker();
    }

    private void refreshRazorSelection() {
        if (this.razorRomName == null || this.razorStatus == null || !isRazorSelected()) {
            return;
        }
        closeRazorCampaignSession();
        final RazorGameRomStore.Entry current = RazorGameRomStore.load(this);
        this.razorAnalysis = null;
        this.razorNativeAuditButton.setEnabled(false);
        if (this.razorMap558Button != null) {
            this.razorMap558Button.setEnabled(false);
        }
        if (this.razorQuickPlay662Button != null) {
            this.razorQuickPlay662Button.setEnabled(false);
        }
        if (this.razorSessionStartButton != null) {
            this.razorSessionStartButton.setEnabled(false);
        }
        if (current == null) {
            this.razorStatus.setVisibility(8);
            this.razorRomName.setText(C0012R.string.razor_no_rom);
            this.razorStatus.setText(C0012R.string.razor_select_explanation);
        } else {
            this.razorRomName.setText(current.name);
            this.razorStatus.setVisibility(8);
            this.razorStatus.setText(C0012R.string.razor_auditing);
            final int generation = this.razorGeneration + 1;
            this.razorGeneration = generation;
            this.workerExecutor.execute(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda20
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherActivity.this.lambda$refreshRazorSelection$36(current, generation);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$refreshRazorSelection$36(RazorGameRomStore.Entry current, final int generation) {
        try {
            InputStream in = getContentResolver().openInputStream(current.uri);
            try {
                final RazorRomAnalysis report = RazorRomAnalysis.inspect(in);
                if (in != null) {
                    in.close();
                }
                RazorGameRomStore.recordFingerprint(this, current, report.sha256);
                runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda57
                    @Override // java.lang.Runnable
                    public final void run() {
                        LauncherActivity.this.lambda$refreshRazorSelection$34(generation, report);
                    }
                });
            } finally {
            }
        } catch (IOException | RuntimeException ex) {
            runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda58
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherActivity.this.lambda$refreshRazorSelection$35(generation, ex);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$refreshRazorSelection$34(int generation, RazorRomAnalysis report) {
        if (generation != this.razorGeneration || !isRazorSelected() || isFinishing()) {
            return;
        }
        this.razorAnalysis = report;
        if (report.recognized) {
            this.razorStatus.setVisibility(8);
            this.razorStatus.setText(getString(C0012R.string.razor_audit_success, new Object[]{Integer.valueOf(report.variant), Integer.valueOf(report.missions), Integer.valueOf(report.largeMaps), Integer.valueOf(report.unavailableSlots), report.sha256}));
            this.razorNativeAuditButton.setEnabled(true);
            this.razorMap558Button.setEnabled(true);
            if (this.razorQuickPlay662Button != null) {
                this.razorQuickPlay662Button.setEnabled(true);
            }
            this.razorSessionStartButton.setEnabled(true);
            if (this.autoOpenRazor674) {
                this.autoOpenRazor674 = false;
                openRazorMap558(true);
                return;
            }
            return;
        }
        if (report.family != DuneHackR82Probe.Family.NONE) {
            this.razorStatus.setVisibility(0);
            this.razorStatus.setText("Этот вариант мода пока не поддерживается");
        } else {
            this.razorStatus.setVisibility(0);
            this.razorStatus.setText("Этот ROM не распознан");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$refreshRazorSelection$35(int generation, Exception ex) {
        if (generation != this.razorGeneration || isFinishing()) {
            return;
        }
        this.razorStatus.setVisibility(0);
        this.razorStatus.setText(getString(C0012R.string.razor_audit_failed, new Object[]{safeMessage(ex)}));
    }

    private void runRazorNativeAudit() {
        final RazorRomAnalysis report = this.razorAnalysis;
        if (report == null || !report.recognized || !isRazorSelected()) {
            return;
        }
        final int generation = this.razorGeneration;
        this.razorNativeAuditButton.setEnabled(false);
        this.razorStatus.setText(C0012R.string.razor_native_auditing);
        this.workerExecutor.execute(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda74
            @Override // java.lang.Runnable
            public final void run() {
                LauncherActivity.this.lambda$runRazorNativeAudit$39(report, generation);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$runRazorNativeAudit$39(RazorRomAnalysis report, final int generation) {
        try {
            final RazorNativeWorldHost.Summary nativeWorld = RazorNativeWorldHost.inspect(report.bundle);
            runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda27
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherActivity.this.lambda$runRazorNativeAudit$37(generation, nativeWorld);
                }
            });
        } catch (Exception | LinkageError e) {
            runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda28
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherActivity.this.lambda$runRazorNativeAudit$38(generation, e);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$runRazorNativeAudit$37(int generation, RazorNativeWorldHost.Summary nativeWorld) {
        if (generation != this.razorGeneration || isFinishing() || !isRazorSelected()) {
            return;
        }
        this.razorStatus.setText(getString(C0012R.string.razor_native_success, new Object[]{Integer.valueOf(nativeWorld.missions), Integer.valueOf(nativeWorld.units), Integer.valueOf(nativeWorld.buildings), Integer.valueOf(nativeWorld.extendedGrids)}));
        this.razorNativeAuditButton.setEnabled(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$runRazorNativeAudit$38(int generation, Throwable e) {
        if (generation != this.razorGeneration || isFinishing()) {
            return;
        }
        this.razorStatus.setText(getString(C0012R.string.razor_audit_failed, new Object[]{safeMessage(e)}));
        this.razorNativeAuditButton.setEnabled(true);
    }

    private void clearSelectedBaseRom() {
        RomSelectionStore.clear(this);
        RomAssetProvider.clearAllStaging(this);
        clearLegacyLanguageOverlayState(true);
        refreshSelectedRom();
    }

    private void refreshBaseRomSelectionControls() {
        boolean showInfo = true;
        boolean supportedBase = this.currentIdentity != null && this.currentIdentity.basePreparationSupported;
        boolean showPicker = this.currentSelection == null || !supportedBase;
        if (this.chooseButton != null) {
            this.chooseButton.setVisibility(showPicker ? 0 : 8);
            this.chooseButton.setText(C0012R.string.launcher_select_rom);
            this.chooseButton.setEnabled(showPicker && !this.baseLocalizationRefreshInFlight);
        }
        if (this.selectedClearButton != null) {
            this.selectedClearButton.setVisibility(this.currentSelection != null ? 0 : 8);
            this.selectedClearButton.setEnabled(!this.baseLocalizationRefreshInFlight);
        }
        if (this.detailsInfoPanel != null) {
            if (this.currentSelection != null && (this.currentIdentity == null || supportedBase)) {
                showInfo = false;
            }
            this.detailsInfoPanel.setVisibility(showInfo ? 0 : 8);
        }
    }

    private void openRomPicker() {
        if (hasSelectedGame() || isRazorSelected()) {
            Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
            intent.addCategory("android.intent.category.OPENABLE");
            intent.setType("*/*");
            intent.addFlags(1);
            intent.addFlags(64);
            startActivityForResult(intent, REQUEST_OPEN_ROM);
        }
    }

    private void routeChosenRom(final Uri uri, final int flags) {
        final int generation = this.romRoutingGeneration + 1;
        this.romRoutingGeneration = generation;
        if (uri == null) {
            return;
        }
        this.workerExecutor.execute(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda69
            @Override // java.lang.Runnable
            public final void run() {
                LauncherActivity.this.lambda$routeChosenRom$42(uri, generation, flags);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$routeChosenRom$42(final Uri uri, final int generation, final int flags) {
        final int generation2;
        Throwable th;
        try {
            InputStream input = getContentResolver().openInputStream(uri);
            if (input == null) {
                generation2 = generation;
                try {
                    throw new IOException("Selected ROM cannot be opened");
                } catch (Throwable th2) {
                    th = th2;
                }
            } else {
                try {
                    final RomEngineRouter564.Decision decision = RomEngineRouter564.decide(RazorRomAnalysis.inspect(input));
                    if (input != null) {
                        try {
                            input.close();
                        } catch (IOException | RuntimeException e) {
                            error = e;
                            generation2 = generation;
                            runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda59
                                @Override // java.lang.Runnable
                                public final void run() {
                                    LauncherActivity.this.lambda$routeChosenRom$40(generation2, error);
                                }
                            });
                        }
                    }
                    runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda60
                        @Override // java.lang.Runnable
                        public final void run() {
                            LauncherActivity.this.lambda$routeChosenRom$41(generation, decision, uri, flags);
                        }
                    });
                    return;
                } catch (Throwable th3) {
                    generation2 = generation;
                    th = th3;
                }
            }
            if (input == null) {
                throw th;
            }
            try {
                try {
                    input.close();
                    throw th;
                } catch (Throwable th4) {
                    th.addSuppressed(th4);
                    throw th;
                }
            } catch (IOException e2) {
                error = e2;
                runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda59
                    @Override // java.lang.Runnable
                    public final void run() {
                        LauncherActivity.this.lambda$routeChosenRom$40(generation2, error);
                    }
                });
            } catch (RuntimeException e3) {
                error = e3;
                runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda59
                    @Override // java.lang.Runnable
                    public final void run() {
                        LauncherActivity.this.lambda$routeChosenRom$40(generation2, error);
                    }
                });
            }
        } catch (IOException | RuntimeException e4) {
            error = e4;
            generation2 = generation;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$routeChosenRom$40(int generation, Exception error) {
        if (generation != this.romRoutingGeneration || isFinishing()) {
            return;
        }
        Toast.makeText(this, getString(C0012R.string.launcher_rom_access_error, new Object[]{safeMessage(error)}), 1).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$routeChosenRom$41(int generation, RomEngineRouter564.Decision decision, Uri uri, int flags) {
        if (generation != this.romRoutingGeneration || isFinishing()) {
            return;
        }
        try {
            if (decision != RomEngineRouter564.Decision.DUNEHACK_NATIVE && decision != RomEngineRouter564.Decision.DUNEHACK_CANDIDATE) {
                RomSelectionStore.persist(this, uri, flags);
                RomAssetProvider.clearAllStaging(this);
                clearLegacyLanguageOverlayState(true);
                selectGame("dune_battle_for_arrakis_genesis");
                Toast.makeText(this, C0012R.string.launcher_rom_saved, 0).show();
            }
            RazorGameRomStore.persist(this, uri, flags);
            this.autoOpenRazor674 = true;
            selectGame("dune_razor_missions_native");
        } catch (IOException | RuntimeException error) {
            Toast.makeText(this, getString(C0012R.string.launcher_rom_access_error, new Object[]{safeMessage(error)}), 1).show();
        }
    }

    private void openMediaModPicker() {
        if (!hasSelectedGame() || RomSelectionStore.load(this) == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("*/*");
        intent.addFlags(1);
        intent.addFlags(64);
        startActivityForResult(intent, REQUEST_OPEN_MEDIA_MOD);
    }

    private void openAudioModPicker() {
        if (!this.openGameAvailable || this.currentIdentity == null || !this.currentIdentity.basePreparationSupported) {
            return;
        }
        Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("*/*");
        intent.addFlags(1);
        intent.addFlags(64);
        startActivityForResult(intent, REQUEST_OPEN_AUDIO_MOD);
    }

    private void openTranslationPicker() {
        if (!hasSelectedGame() || RomSelectionStore.load(this) == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("*/*");
        intent.addFlags(1);
        intent.addFlags(64);
        startActivityForResult(intent, REQUEST_OPEN_TRANSLATION);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode != -1 || data == null) {
            return;
        }
        Uri uri = data.getData();
        if (requestCode == REQUEST_OPEN_ROM || requestCode == REQUEST_OPEN_RAZOR_ROM) {
            routeChosenRom(uri, data.getFlags());
            return;
        }
        if (requestCode == REQUEST_OPEN_MEDIA_MOD) {
            try {
                RomSelectionStore.OverlaySelection selection = RomSelectionStore.persistOverlay(this, RomSelectionStore.SourceRole.MEDIA_MOD, uri, data.getFlags());
                if (this.modifiedGraphicsCheck != null && !this.modifiedGraphicsCheck.isChecked()) {
                    this.modifiedGraphicsCheck.setChecked(true);
                }
                if (this.modifiedGraphicsDetails != null) {
                    this.modifiedGraphicsDetails.setVisibility(0);
                }
                refreshMediaModButton();
                startMediaModInstallation(selection);
                return;
            } catch (IOException e) {
                Toast.makeText(this, getString(C0012R.string.launcher_mods_error, new Object[]{safeMessage(e)}), 1).show();
                refreshMediaModButton();
                return;
            }
        }
        if (requestCode == REQUEST_OPEN_AUDIO_MOD) {
            try {
                RomSelectionStore.OverlaySelection selection2 = RomSelectionStore.persistOverlay(this, RomSelectionStore.SourceRole.AUDIO_MOD, uri, data.getFlags());
                if (this.modifiedAudioCheck != null && !this.modifiedAudioCheck.isChecked()) {
                    this.modifiedAudioCheck.setChecked(true);
                }
                startAudioSourceAudit(selection2);
                return;
            } catch (IOException e2) {
                if (this.audioModStatus != null) {
                    this.audioModStatus.setText(getString(C0012R.string.launcher_audio_error, new Object[]{safeMessage(e2)}));
                    return;
                }
                return;
            }
        }
        if (requestCode == REQUEST_OPEN_TRANSLATION) {
            try {
                RomSelectionStore.OverlaySelection selection3 = RomSelectionStore.persistOverlay(this, RomSelectionStore.SourceRole.TRANSLATION, uri, data.getFlags());
                RomRussianLocalizationPackStore.clear(this);
                refreshTranslationButton();
                startTranslationAudit(selection3);
            } catch (IOException e3) {
                Toast.makeText(this, getString(C0012R.string.launcher_translation_error, new Object[]{safeMessage(e3)}), 1).show();
                refreshTranslationButton();
            }
        }
    }

    private void startMediaModInstallation(final RomSelectionStore.OverlaySelection selection) {
        if (selection == null || this.modsButton == null) {
            return;
        }
        this.modsButton.setEnabled(false);
        this.modsButton.setText(selection.displayName);
        if (this.mediaModStatus != null) {
            this.mediaModStatus.setText(C0012R.string.launcher_mod_analyzing);
            this.mediaModStatus.setTextColor(MUTED);
        }
        Log.i(TAG, "MEDIA_MOD analyze start name=" + selection.displayName + " size=" + selection.size);
        this.workerExecutor.execute(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda75
            @Override // java.lang.Runnable
            public final void run() {
                LauncherActivity.this.lambda$startMediaModInstallation$47(selection);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startMediaModInstallation$47(RomSelectionStore.OverlaySelection selection) {
        try {
            final RomGraphicsMediaOverlayInstaller.Outcome outcome = RomGraphicsMediaOverlayInstaller.install(this, selection, new RomGraphicsMediaOverlayInstaller.ProgressListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda3
                @Override // com.ahsim.demulation.RomGraphicsMediaOverlayInstaller.ProgressListener
                public final void onProgress(String str, int i, int i2, String str2) {
                    LauncherActivity.this.lambda$startMediaModInstallation$44(str, i, i2, str2);
                }
            });
            saveGraphicsComparison(outcome);
            Log.i(TAG, "MEDIA_MOD result profile=" + outcome.profileId + " label=" + outcome.profileLabel + " layout=" + outcome.layoutFamily + " terrain_cap=" + outcome.terrainCapability + " terrain_state=" + outcome.terrainRadar + " tactical_cap=" + outcome.tacticalCapability + " tactical_state=" + outcome.tacticalSprites + " candidates=" + outcome.candidateEntries + " identical=" + outcome.identicalEntries + " entries=" + outcome.overlayEntries + " paths=" + outcome.overlayPaths + " adapter=" + outcome.adapterSummary);
            runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherActivity.this.lambda$startMediaModInstallation$45(outcome);
                }
            });
        } catch (IOException | RuntimeException e) {
            Log.e(TAG, "MEDIA_MOD failed: " + safeMessage(e), e);
            runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherActivity.this.lambda$startMediaModInstallation$46(e);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startMediaModInstallation$44(final String group, final int completed, final int total, String asset) {
        runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda72
            @Override // java.lang.Runnable
            public final void run() {
                LauncherActivity.this.lambda$startMediaModInstallation$43(group, completed, total);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startMediaModInstallation$43(String group, int completed, int total) {
        if (isFinishing() || this.mediaModStatus == null) {
            return;
        }
        this.mediaModStatus.setText(getString(C0012R.string.launcher_mod_extracting, new Object[]{mediaModProgressGroupLabel(group), Integer.valueOf(Math.min(completed, total)), Integer.valueOf(total)}));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startMediaModInstallation$45(RomGraphicsMediaOverlayInstaller.Outcome outcome) {
        int toastText;
        if (isFinishing()) {
            return;
        }
        refreshMediaModButton();
        if (this.mediaModStatus != null) {
            this.mediaModStatus.setText(formatMediaModOutcome(outcome));
            this.mediaModStatus.setTextColor(outcome.hasAnyOverlay() ? Color.rgb(RazorSpriteBankAudit.SOURCE_NON_MATCHED, 205, 137) : ACCENT);
        }
        if (outcome.allCompatibleGraphicsIdentical()) {
            toastText = C0012R.string.launcher_mods_identical_toast;
        } else if (outcome.hasAnyOverlay()) {
            toastText = C0012R.string.launcher_mods_applied_toast;
        } else {
            toastText = C0012R.string.launcher_mods_base_fallback_toast;
        }
        Toast.makeText(this, toastText, 1).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startMediaModInstallation$46(Exception e) {
        if (isFinishing()) {
            return;
        }
        RomGraphicsMediaOverlayStore.clear(this);
        refreshMediaModButton();
        if (this.mediaModStatus != null) {
            this.mediaModStatus.setText(getString(C0012R.string.launcher_mods_error, new Object[]{safeMessage(e)}));
            this.mediaModStatus.setTextColor(Color.rgb(226, 105, 96));
        }
        Toast.makeText(this, getString(C0012R.string.launcher_mods_error, new Object[]{safeMessage(e)}), 1).show();
    }

    private void disableModifiedGraphics(boolean showToast) {
        boolean hadSelection = RomSelectionStore.loadOverlay(this, RomSelectionStore.SourceRole.MEDIA_MOD) != null;
        RomSelectionStore.clearOverlay(this, RomSelectionStore.SourceRole.MEDIA_MOD);
        RomGraphicsMediaOverlayStore.clear(this);
        getSharedPreferences(GRAPHICS_AUDIT_PREF, 0).edit().clear().apply();
        refreshMediaModButton();
        if (this.modifiedGraphicsCheck != null && this.modifiedGraphicsCheck.isChecked()) {
            this.modifiedGraphicsCheck.setOnCheckedChangeListener(null);
            this.modifiedGraphicsCheck.setChecked(false);
            this.modifiedGraphicsCheck.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda2
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    LauncherActivity.this.lambda$disableModifiedGraphics$48(compoundButton, z);
                }
            });
        }
        if (this.modifiedGraphicsDetails != null) {
            this.modifiedGraphicsDetails.setVisibility(8);
        }
        if (showToast && hadSelection) {
            Toast.makeText(this, C0012R.string.launcher_mods_cleared, 0).show();
        }
        if (hadSelection) {
            Log.i(TAG, "MEDIA_MOD cleared by user; runtime will use BASE graphics");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$disableModifiedGraphics$48(CompoundButton buttonView, boolean checked) {
        if (this.modifiedGraphicsDetails != null) {
            this.modifiedGraphicsDetails.setVisibility(checked ? 0 : 8);
        }
        if (!checked) {
            disableModifiedGraphics(false);
        }
    }

    private void refreshMediaModButton() {
        int i;
        if (this.modsButton == null) {
            return;
        }
        boolean hasBase = RomSelectionStore.load(this) != null;
        RomSelectionStore.OverlaySelection selected = RomSelectionStore.loadOverlay(this, RomSelectionStore.SourceRole.MEDIA_MOD);
        RomGraphicsMediaOverlayStore.Snapshot active = RomGraphicsMediaOverlayStore.loadActive(this);
        this.modsButton.setEnabled(hasBase);
        if (this.graphicsDetailsButton != null) {
            this.graphicsDetailsButton.setVisibility(selected != null ? 0 : 8);
        }
        if (this.graphicsMissionPreviewButton != null) {
            boolean previewReady = hasBase && selected != null && active != null && selected.sha256 != null && selected.sha256.equalsIgnoreCase(active.sourceSha256) && RomAssetInstallState.recoverAndIsBundleReady(this);
            this.graphicsMissionPreviewButton.setVisibility(previewReady ? 0 : 8);
            this.graphicsMissionPreviewButton.setEnabled(previewReady);
        }
        if (this.razorPreviewButton != null) {
            boolean attested = selected != null && hasBase && RazorTerrainPreviewSourceSha.isAttested(selected.sha256);
            this.razorPreviewButton.setVisibility(attested ? 0 : 8);
            this.razorPreviewButton.setEnabled(attested);
        }
        if (this.modifiedGraphicsBody != null) {
            TextView textView = this.modifiedGraphicsBody;
            if (selected == null) {
                i = C0012R.string.launcher_graphics_mod_body;
            } else {
                i = C0012R.string.launcher_graphics_mod_body_selected;
            }
            textView.setText(i);
        }
        if (selected == null) {
            this.modsButton.setText(C0012R.string.launcher_mods);
            if (this.mediaModStatus != null) {
                this.mediaModStatus.setText(C0012R.string.launcher_mod_status_none);
                this.mediaModStatus.setTextColor(MUTED);
                return;
            }
            return;
        }
        if (active != null && selected.sha256 != null && !selected.sha256.isEmpty() && selected.sha256.equalsIgnoreCase(active.sourceSha256)) {
            this.modsButton.setText(selected.displayName);
            if (this.mediaModStatus != null) {
                this.mediaModStatus.setText(formatMediaModSnapshot(selected, active));
                this.mediaModStatus.setTextColor(active.entryCount() > 0 ? Color.rgb(RazorSpriteBankAudit.SOURCE_NON_MATCHED, 205, 137) : ACCENT);
                return;
            }
            return;
        }
        this.modsButton.setText(selected.displayName);
        if (this.mediaModStatus != null) {
            this.mediaModStatus.setText(C0012R.string.launcher_mod_status_selected);
            this.mediaModStatus.setTextColor(MUTED);
        }
    }

    private void startTranslationAudit(final RomSelectionStore.OverlaySelection selection) {
        if (selection == null || this.translationButton == null || this.translationRefreshInFlight) {
            return;
        }
        this.translationRefreshInFlight = true;
        this.translationButton.setEnabled(false);
        this.translationButton.setText(C0012R.string.launcher_translation_preparing);
        if (this.translationStatus != null) {
            this.translationStatus.setText(getString(C0012R.string.launcher_translation_analyzing, new Object[]{selection.displayName}));
            this.translationStatus.setTextColor(MUTED);
        }
        Log.i(TAG, "TRANSLATION audit start name=" + selection.displayName + " size=" + selection.size);
        this.workerExecutor.execute(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                LauncherActivity.this.lambda$startTranslationAudit$52(selection);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startTranslationAudit$52(RomSelectionStore.OverlaySelection selection) {
        try {
            InputStream input = getContentResolver().openInputStream(selection.uri);
            try {
                if (input == null) {
                    throw new IOException("Translation ROM stream is unavailable");
                }
                final RomLayoutCapabilityAnalyzer.Result result = RomLayoutCapabilityAnalyzer.analyze(input, selection.size);
                boolean accepted = result.exactAuditedProfile && "translation_ru_shedevr_lipetsk_usa".equals(result.profileId) && result.roleMayUseGroup(RomSelectionStore.SourceRole.TRANSLATION, RomLayoutCapabilityAnalyzer.ContentGroup.LOCALIZATION_TEXT) && result.roleMayUseGroup(RomSelectionStore.SourceRole.TRANSLATION, RomLayoutCapabilityAnalyzer.ContentGroup.LOCALIZATION_GLYPHS);
                if (!accepted) {
                    Log.w(TAG, "TRANSLATION rejected profile=" + result.profileId + " layout=" + result.layoutFamily + " sha256=" + result.normalizedSha256);
                    RomSelectionStore.clearOverlay(this, RomSelectionStore.SourceRole.TRANSLATION);
                    runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda14
                        @Override // java.lang.Runnable
                        public final void run() {
                            LauncherActivity.this.lambda$startTranslationAudit$49(result);
                        }
                    });
                    if (input != null) {
                        input.close();
                        return;
                    }
                    return;
                }
                RomSelectionStore.recordOverlayFingerprint(this, selection, result.normalizedSha256, result.profileId);
                final RomSelectionStore.OverlaySelection verified = RomSelectionStore.loadOverlay(this, RomSelectionStore.SourceRole.TRANSLATION);
                if (verified == null) {
                    throw new IOException("Verified translation source disappeared");
                }
                final RomRussianLocalizationPackInstaller.Outcome pack = RomRussianLocalizationPackInstaller.install(this, verified);
                Log.i(TAG, "TRANSLATION accepted profile=" + result.profileId + " layout=" + result.layoutFamily + " sha256=" + result.normalizedSha256 + " localizationAssets=" + pack.snapshot.assetCount + " payloadBytes=" + pack.snapshot.payloadBytes);
                runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda15
                    @Override // java.lang.Runnable
                    public final void run() {
                        LauncherActivity.this.lambda$startTranslationAudit$50(result, pack, verified);
                    }
                });
                if (input != null) {
                    input.close();
                }
            } finally {
            }
        } catch (IOException | RuntimeException e) {
            Log.e(TAG, "TRANSLATION audit failed: " + safeMessage(e), e);
            runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherActivity.this.lambda$startTranslationAudit$51(e);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startTranslationAudit$49(RomLayoutCapabilityAnalyzer.Result result) {
        this.translationRefreshInFlight = false;
        this.openGameAfterTranslationRefresh = false;
        if (isFinishing()) {
            return;
        }
        refreshTranslationButton();
        if (this.translationStatus != null) {
            this.translationStatus.setText(getString(C0012R.string.launcher_translation_unsupported, new Object[]{result.profileLabel, result.layoutFamily.name()}));
            this.translationStatus.setTextColor(Color.rgb(226, 105, 96));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startTranslationAudit$50(RomLayoutCapabilityAnalyzer.Result result, RomRussianLocalizationPackInstaller.Outcome pack, RomSelectionStore.OverlaySelection verified) {
        this.translationRefreshInFlight = false;
        if (isFinishing()) {
            return;
        }
        refreshTranslationButton();
        if (this.translationStatus != null) {
            this.translationStatus.setText(getString(C0012R.string.launcher_translation_pack_ready, new Object[]{result.profileLabel, Integer.valueOf(pack.snapshot.assetCount), Integer.valueOf(pack.textAssets), Integer.valueOf(pack.glyphBitmapAssets)}));
            this.translationStatus.setTextColor(Color.rgb(RazorSpriteBankAudit.SOURCE_NON_MATCHED, 205, 137));
        }
        Toast.makeText(this, C0012R.string.launcher_translation_pack_ready_toast, 1).show();
        startRussianVoicePackRefresh(verified);
        if (this.openGameAfterTranslationRefresh) {
            this.openGameAfterTranslationRefresh = false;
            openGame();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startTranslationAudit$51(Exception e) {
        this.translationRefreshInFlight = false;
        this.openGameAfterTranslationRefresh = false;
        if (isFinishing()) {
            return;
        }
        refreshTranslationButton();
        if (this.translationStatus != null) {
            this.translationStatus.setText(getString(C0012R.string.launcher_translation_error, new Object[]{safeMessage(e)}));
            this.translationStatus.setTextColor(Color.rgb(226, 105, 96));
        }
    }

    private boolean translationRuntimeReadyOrAbsent() {
        RomSelectionStore.OverlaySelection selected = RomSelectionStore.loadOverlay(this, RomSelectionStore.SourceRole.TRANSLATION);
        if (selected == null) {
            return true;
        }
        if (!"translation_ru_shedevr_lipetsk_usa".equals(selected.profileId) || selected.sha256 == null || selected.sha256.isEmpty()) {
            return false;
        }
        RomRussianLocalizationPackStore.Snapshot pack = RomRussianLocalizationPackStore.loadActive(this);
        return pack != null && selected.sha256.equalsIgnoreCase(pack.sourceSha256) && pack.assetCount == RomRussianLocalizationAssetManifest.entries().size();
    }

    private void maybeRefreshTranslationPackForRuntime() {
        RomSelectionStore.OverlaySelection selected = RomSelectionStore.loadOverlay(this, RomSelectionStore.SourceRole.TRANSLATION);
        if (selected == null || translationRuntimeReadyOrAbsent()) {
            return;
        }
        Log.i(TAG, "TRANSLATION runtime pack migration required; rebuilding current localization format");
        startTranslationAudit(selected);
    }

    private void refreshTranslationButton() {
        if (this.translationButton == null) {
            return;
        }
        boolean hasBase = RomSelectionStore.load(this) != null;
        RomSelectionStore.OverlaySelection selected = RomSelectionStore.loadOverlay(this, RomSelectionStore.SourceRole.TRANSLATION);
        this.translationButton.setEnabled(hasBase);
        if (selected == null) {
            this.translationButton.setText(C0012R.string.launcher_translation_button);
            if (this.translationStatus != null) {
                this.translationStatus.setText(C0012R.string.launcher_translation_status_none);
                this.translationStatus.setTextColor(MUTED);
            }
            refreshRussianVoiceControls();
            return;
        }
        RomRussianLocalizationPackStore.Snapshot pack = RomRussianLocalizationPackStore.loadActive(this);
        if ("translation_ru_shedevr_lipetsk_usa".equals(selected.profileId) && selected.sha256 != null && !selected.sha256.isEmpty() && pack != null && selected.sha256.equalsIgnoreCase(pack.sourceSha256)) {
            this.translationButton.setText(C0012R.string.launcher_translation_pack_selected);
            if (this.translationStatus != null) {
                this.translationStatus.setText(getString(C0012R.string.launcher_translation_pack_snapshot, new Object[]{profileLabel(selected.profileId), Integer.valueOf(pack.assetCount), Long.valueOf(pack.payloadBytes)}));
                this.translationStatus.setTextColor(Color.rgb(RazorSpriteBankAudit.SOURCE_NON_MATCHED, 205, 137));
            }
        } else if ("translation_ru_shedevr_lipetsk_usa".equals(selected.profileId) && selected.sha256 != null && !selected.sha256.isEmpty()) {
            this.translationButton.setText(C0012R.string.launcher_translation_selected);
            if (this.translationStatus != null) {
                this.translationStatus.setText(getString(C0012R.string.launcher_translation_verified, new Object[]{profileLabel(selected.profileId)}));
                this.translationStatus.setTextColor(ACCENT);
            }
        } else {
            this.translationButton.setText(C0012R.string.launcher_translation_selected);
            if (this.translationStatus != null) {
                this.translationStatus.setText(getString(C0012R.string.launcher_translation_status_selected, new Object[]{selected.displayName}));
                this.translationStatus.setTextColor(MUTED);
            }
        }
        refreshRussianVoiceControls();
    }

    private boolean russianVoiceRuntimeReadyOrDisabled() {
        if (!RomRussianVoicePreferences.isEnabled(this)) {
            return true;
        }
        RomSelectionStore.OverlaySelection selected = RomSelectionStore.loadOverlay(this, RomSelectionStore.SourceRole.TRANSLATION);
        if (selected == null || !"translation_ru_shedevr_lipetsk_usa".equals(selected.profileId) || selected.sha256 == null || selected.sha256.isEmpty()) {
            return false;
        }
        RomRussianVoicePackStore.Snapshot voice = RomRussianVoicePackStore.loadActive(this);
        return voice != null && selected.sha256.equalsIgnoreCase(voice.sourceSha256);
    }

    private void maybeRefreshRussianVoicePack() {
        RomSelectionStore.OverlaySelection selected = RomSelectionStore.loadOverlay(this, RomSelectionStore.SourceRole.TRANSLATION);
        if (selected == null || !"translation_ru_shedevr_lipetsk_usa".equals(selected.profileId) || selected.sha256 == null || selected.sha256.isEmpty()) {
            refreshRussianVoiceControls();
            return;
        }
        RomRussianVoicePackStore.Snapshot active = RomRussianVoicePackStore.loadActive(this);
        if (active != null && selected.sha256.equalsIgnoreCase(active.sourceSha256)) {
            refreshRussianVoiceControls();
        } else {
            startRussianVoicePackRefresh(selected);
        }
    }

    private void startRussianVoicePackRefresh(final RomSelectionStore.OverlaySelection selected) {
        if (selected == null || !"translation_ru_shedevr_lipetsk_usa".equals(selected.profileId)) {
            return;
        }
        if (this.russianVoiceCheck != null) {
            this.russianVoiceCheck.setEnabled(false);
        }
        if (this.russianVoiceStatus != null) {
            this.russianVoiceStatus.setText(C0012R.string.launcher_russian_voice_preparing);
            this.russianVoiceStatus.setTextColor(MUTED);
        }
        this.workerExecutor.execute(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                LauncherActivity.this.lambda$startRussianVoicePackRefresh$55(selected);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRussianVoicePackRefresh$55(RomSelectionStore.OverlaySelection selected) {
        try {
            RomRussianVoicePackStore.Snapshot voice = RomRussianVoicePackInstaller.install(this, selected);
            Log.i(TAG, "RUSSIAN_VOICE prepared bytes=" + voice.payloadBytes + " sha256=" + RomRussianVoiceAssetManifest.SOURCE_PACK_SHA256);
            runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda54
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherActivity.this.lambda$startRussianVoicePackRefresh$53();
                }
            });
        } catch (IOException | RuntimeException e) {
            Log.e(TAG, "RUSSIAN_VOICE preparation failed: " + safeMessage(e), e);
            runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda56
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherActivity.this.lambda$startRussianVoicePackRefresh$54(e);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRussianVoicePackRefresh$53() {
        if (isFinishing()) {
            return;
        }
        refreshRussianVoiceControls();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRussianVoicePackRefresh$54(Exception e) {
        if (isFinishing()) {
            return;
        }
        if (this.russianVoiceCheck != null) {
            this.russianVoiceCheck.setChecked(false);
            this.russianVoiceCheck.setEnabled(false);
        }
        RomRussianVoicePreferences.setEnabled(this, false);
        if (this.russianVoiceStatus != null) {
            this.russianVoiceStatus.setText(getString(C0012R.string.launcher_russian_voice_error, new Object[]{safeMessage(e)}));
            this.russianVoiceStatus.setTextColor(Color.rgb(226, 105, 96));
        }
    }

    private void refreshRussianVoiceControls() {
        int i;
        int i2;
        if (this.russianVoiceCheck == null || this.russianVoiceStatus == null) {
            return;
        }
        RomSelectionStore.OverlaySelection selected = RomSelectionStore.loadOverlay(this, RomSelectionStore.SourceRole.TRANSLATION);
        RomRussianVoicePackStore.Snapshot voice = RomRussianVoicePackStore.loadActive(this);
        boolean ready = (selected == null || !"translation_ru_shedevr_lipetsk_usa".equals(selected.profileId) || selected.sha256 == null || selected.sha256.isEmpty() || voice == null || !selected.sha256.equalsIgnoreCase(voice.sourceSha256)) ? false : true;
        if (ready) {
            this.russianVoiceCheck.setEnabled(true);
            boolean enabled = RomRussianVoicePreferences.isEnabled(this);
            if (this.russianVoiceCheck.isChecked() != enabled) {
                this.russianVoiceCheck.setChecked(enabled);
            }
            TextView textView = this.russianVoiceStatus;
            if (enabled) {
                i = C0012R.string.launcher_russian_voice_active;
            } else {
                i = C0012R.string.launcher_russian_voice_ready;
            }
            textView.setText(i);
            this.russianVoiceStatus.setTextColor(enabled ? Color.rgb(RazorSpriteBankAudit.SOURCE_NON_MATCHED, 205, 137) : ACCENT);
            return;
        }
        this.russianVoiceCheck.setEnabled(false);
        if (this.russianVoiceCheck.isChecked()) {
            this.russianVoiceCheck.setChecked(false);
        }
        RomRussianVoicePreferences.setEnabled(this, false);
        TextView textView2 = this.russianVoiceStatus;
        if (selected == null) {
            i2 = C0012R.string.launcher_russian_voice_unavailable;
        } else {
            i2 = C0012R.string.launcher_russian_voice_not_prepared;
        }
        textView2.setText(i2);
        this.russianVoiceStatus.setTextColor(MUTED);
    }

    private String formatMediaModOutcome(RomGraphicsMediaOverlayInstaller.Outcome outcome) {
        boolean rebuildAdapter;
        int i;
        if (outcome == null) {
            return getString(C0012R.string.launcher_mod_status_none);
        }
        if (outcome.layoutFamily == RomLayoutCapabilityAnalyzer.LayoutFamily.DUNEHACK_R82B) {
            if (outcome.adapterSummary.startsWith("R82B Requite reference audited")) {
                i = C0012R.string.launcher_r82b_requite_audit_ready;
            } else {
                i = C0012R.string.launcher_r82b_layout_unverified;
            }
            return getString(i);
        }
        if (outcome.layoutFamily == RomLayoutCapabilityAnalyzer.LayoutFamily.DUNEHACK_R82C || outcome.layoutFamily == RomLayoutCapabilityAnalyzer.LayoutFamily.DUNEHACK_R82C_PLUS) {
            boolean paletteReady = outcome.adapterSummary.startsWith("R82C neutral palette preview stored") || outcome.adapterSummary.startsWith("R82C neutral palette preview cached");
            boolean scenariosPrepared = outcome.adapterSummary.contains("R82C scenarios preview stored") || outcome.adapterSummary.contains("R82C scenarios preview cached");
            rebuildAdapter = outcome.adapterSummary.contains("R82C maps preview stored") || outcome.adapterSummary.contains("R82C maps preview cached");
            if (outcome.adapterSummary.contains("R82C scenario records decoded")) {
                return getString(C0012R.string.launcher_r82_scenario_records_decoded);
            }
            if (outcome.adapterSummary.contains("R82C campaign pairs verified")) {
                return getString(C0012R.string.launcher_r82_campaign_links_verified);
            }
            if (outcome.adapterSummary.contains("R82C campaign layout candidate")) {
                return getString(C0012R.string.launcher_r82_campaign_layout_candidate);
            }
            if (scenariosPrepared && rebuildAdapter) {
                return getString(C0012R.string.launcher_r82_maps_preview_ready);
            }
            if (scenariosPrepared) {
                return getString(C0012R.string.launcher_r82_scenarios_preview_ready);
            }
            return getString(paletteReady ? C0012R.string.launcher_r82_neutral_preview_ready : C0012R.string.launcher_r82_neutral_preview_unavailable);
        }
        if (outcome.allCompatibleGraphicsIdentical()) {
            return getString(C0012R.string.launcher_mod_status_identical);
        }
        rebuildAdapter = outcome.layoutFamily == RomLayoutCapabilityAnalyzer.LayoutFamily.DUNEHACK_R79 || outcome.layoutFamily == RomLayoutCapabilityAnalyzer.LayoutFamily.DUNEHACK_R80B || outcome.layoutFamily == RomLayoutCapabilityAnalyzer.LayoutFamily.DUNEHACK_R81B || outcome.layoutFamily == RomLayoutCapabilityAnalyzer.LayoutFamily.DUNEHACK_R81C || outcome.layoutFamily == RomLayoutCapabilityAnalyzer.LayoutFamily.DUNEHACK_R82B || outcome.layoutFamily == RomLayoutCapabilityAnalyzer.LayoutFamily.DUNEHACK_R82C || outcome.layoutFamily == RomLayoutCapabilityAnalyzer.LayoutFamily.DUNEHACK_R82C_PLUS || outcome.layoutFamily == RomLayoutCapabilityAnalyzer.LayoutFamily.DUNEHACK_UNKNOWN;
        if (!outcome.hasAnyOverlay() && rebuildAdapter && (outcome.terrainRadar == RomGraphicsMediaOverlayInstaller.GroupState.BASE_FALLBACK_UNSUPPORTED_LAYOUT || outcome.terrainRadar == RomGraphicsMediaOverlayInstaller.GroupState.BASE_FALLBACK_STRUCTURAL_MISMATCH || outcome.tacticalSprites == RomGraphicsMediaOverlayInstaller.GroupState.BASE_FALLBACK_UNSUPPORTED_LAYOUT || outcome.tacticalSprites == RomGraphicsMediaOverlayInstaller.GroupState.BASE_FALLBACK_STRUCTURAL_MISMATCH)) {
            return getString(C0012R.string.launcher_mod_status_rebuild_adapter, new Object[]{outcome.profileLabel});
        }
        return getString(C0012R.string.launcher_mod_status_result, new Object[]{outcome.profileLabel, groupStateLabel(outcome.terrainRadar), groupStateLabel(outcome.tacticalSprites), Integer.valueOf(outcome.overlayEntries), Integer.valueOf(outcome.identicalEntries)});
    }

    private String formatMediaModSnapshot(RomSelectionStore.OverlaySelection selected, RomGraphicsMediaOverlayStore.Snapshot active) {
        String label = profileLabel(active.profileId);
        boolean rebuildAdapter = active.layoutFamily != null && active.layoutFamily.startsWith("DUNEHACK_") && active.entryCount() == 0 && ("BASE_FALLBACK_UNSUPPORTED_LAYOUT".equals(active.terrainRadarState) || "BASE_FALLBACK_STRUCTURAL_MISMATCH".equals(active.terrainRadarState) || "BASE_FALLBACK_UNSUPPORTED_LAYOUT".equals(active.tacticalSpritesState) || "BASE_FALLBACK_STRUCTURAL_MISMATCH".equals(active.tacticalSpritesState));
        if (rebuildAdapter) {
            return getString(C0012R.string.launcher_mod_status_rebuild_adapter, new Object[]{label});
        }
        if (active.entryCount() == 0 && "BASE_FALLBACK_IDENTICAL".equals(active.terrainRadarState) && "BASE_FALLBACK_IDENTICAL".equals(active.tacticalSpritesState)) {
            return getString(C0012R.string.launcher_mod_status_identical);
        }
        return getString(C0012R.string.launcher_mod_status_snapshot, new Object[]{label, groupStateLabel(active.terrainRadarState), groupStateLabel(active.tacticalSpritesState), Integer.valueOf(active.entryCount())});
    }

    private String profileLabel(String profileId) {
        if ("translation_ru_shedevr_lipetsk_usa".equals(profileId)) {
            return "Russian translation / Shedevr & Lipetsk / 02.08.2011";
        }
        if ("dunehack_r79_revolution_ang_voice".equals(profileId)) {
            return "Dune Revolution / Rebuild R79 / English voice";
        }
        if ("dunehack_r79_revolution_rus_voice".equals(profileId)) {
            return "Dune Revolution / Rebuild R79 / Russian voice";
        }
        if ("dunehack_r80b_labyrinth_35_successor".equals(profileId)) {
            return "DuneHack Rebuild R80b / Labyrinth 3.5 Successor";
        }
        if ("dunehack_r81b_mission_demolition_ru".equals(profileId)) {
            return "DuneHack Rebuild R81b / Mission Demolition [rus]";
        }
        if ("dunehack_r81b_consul_war_2".equals(profileId)) {
            return "DuneHack Rebuild R81b / Consul War 2";
        }
        if ("dunehack_r81c_razor_missions".equals(profileId)) {
            return "DuneHack Rebuild R81c / Razor Missions";
        }
        if ("candidate:dune_ii_requite_r82b".equals(profileId)) {
            return "Dune II Requite / R82B (audit only)";
        }
        if ("candidate:dunehack_r82b".equals(profileId)) {
            return "DuneHack Rebuild R82B / compatibility unknown";
        }
        if ("candidate:dunehack_r82c".equals(profileId)) {
            return "DuneHack Rebuild R82C family / detection only";
        }
        if ("candidate:dunehack_r82c_plus".equals(profileId)) {
            return "DuneHack Rebuild R82C+ / Emperor175 family / detection only";
        }
        if (profileId == null || profileId.trim().isEmpty()) {
            return getString(C0012R.string.launcher_unknown_value);
        }
        return profileId;
    }

    private String mediaModProgressGroupLabel(String group) {
        if (RomGraphicsMediaOverlayStore.GROUP_TERRAIN_RADAR.equals(group)) {
            return getString(C0012R.string.launcher_mod_progress_terrain);
        }
        if (RomGraphicsMediaOverlayStore.GROUP_TACTICAL_SPRITES.equals(group)) {
            return getString(C0012R.string.launcher_mod_progress_tactical);
        }
        return getString(C0012R.string.launcher_mod_progress_graphics);
    }

    private String groupStateLabel(RomGraphicsMediaOverlayInstaller.GroupState state) {
        return state == null ? getString(C0012R.string.launcher_unknown_value) : groupStateLabel(state.name());
    }

    private String groupStateLabel(String state) {
        if ("OVERLAY".equals(state)) {
            return getString(C0012R.string.launcher_mod_state_overlay);
        }
        if ("OVERLAY_PARTIAL".equals(state)) {
            return getString(C0012R.string.launcher_mod_state_overlay_partial);
        }
        if ("BASE_FALLBACK_UNSUPPORTED_LAYOUT".equals(state)) {
            return getString(C0012R.string.launcher_mod_state_adapter_required);
        }
        if ("BASE_FALLBACK_STRUCTURAL_MISMATCH".equals(state)) {
            return getString(C0012R.string.launcher_mod_state_structural_mismatch);
        }
        if ("BASE_FALLBACK_POLICY".equals(state)) {
            return getString(C0012R.string.launcher_mod_state_policy);
        }
        if ("BASE_FALLBACK_IDENTICAL".equals(state)) {
            return getString(C0012R.string.launcher_mod_state_identical);
        }
        return (state == null || state.trim().isEmpty()) ? getString(C0012R.string.launcher_unknown_value) : state;
    }

    private void setPreparationInfoVisible(boolean visible) {
        int value = visible ? 0 : 8;
        if (this.prepareTitle != null) {
            this.prepareTitle.setVisibility(value);
        }
        if (this.prepareBody != null) {
            this.prepareBody.setVisibility(value);
        }
        if (this.prepareProgress != null) {
            this.prepareProgress.setVisibility(value);
        }
        if (this.prepareStatus != null) {
            this.prepareStatus.setVisibility(value);
        }
    }

    private void refreshPreparationInfoVisibility() {
        GenesisRomIdentity.Result identity = this.currentIdentity;
        boolean supported = identity != null && identity.basePreparationSupported;
        setPreparationInfoVisible(supported && !this.openGameAvailable);
    }

    private void refreshSelectedRom() {
        refreshSelectedRom(RomSelectionStore.load(this));
    }

    private void refreshSelectedRom(RomSelectionStore.Selection selection) {
        String string;
        int generation = this.identificationGeneration + 1;
        this.identificationGeneration = generation;
        refreshMediaModButton();
        this.currentSelection = selection;
        this.currentIdentity = null;
        this.openGameAvailable = false;
        setPreparationInfoVisible(false);
        this.prepareCoreButton.setVisibility(8);
        this.prepareCoreButton.setEnabled(false);
        refreshReadyOnlyPanels();
        if (selection != null) {
            this.selectedCard.setVisibility(0);
            this.selectedName.setText(selection.displayName);
            TextView textView = this.selectedSize;
            if (selection.size >= 0) {
                string = getString(C0012R.string.launcher_selected_size, new Object[]{Formatter.formatFileSize(this, selection.size)});
            } else {
                string = getString(C0012R.string.launcher_selected_size_unknown);
            }
            textView.setText(string);
            this.selectedState.setTextColor(ACCENT);
            this.selectedState.setText(C0012R.string.launcher_identifying_rom);
            setIdentificationDetailsVisible(false);
            refreshBaseRomSelectionControls();
            this.prepareProgress.setProgress(0);
            this.prepareProgress.setIndeterminate(true);
            this.prepareStatus.setText(C0012R.string.launcher_identifying_status);
            identifySelectedRom(selection, generation);
            return;
        }
        this.selectedCard.setVisibility(8);
        refreshBaseRomSelectionControls();
        this.prepareProgress.setIndeterminate(false);
        this.prepareProgress.setProgress(0);
        this.prepareStatus.setText(C0012R.string.launcher_waiting_status);
        if (this.baseLanguageStatus != null) {
            this.baseLanguageStatus.setVisibility(8);
        }
    }

    private void identifySelectedRom(final RomSelectionStore.Selection selection, final int generation) {
        this.workerExecutor.execute(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda71
            @Override // java.lang.Runnable
            public final void run() {
                LauncherActivity.this.lambda$identifySelectedRom$58(selection, generation);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$identifySelectedRom$58(RomSelectionStore.Selection selection, final int generation) {
        try {
            final GenesisRomIdentity.Result result = RomIdentifier.identify(this, selection);
            runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda67
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherActivity.this.lambda$identifySelectedRom$56(generation, result);
                }
            });
        } catch (IOException | RuntimeException e) {
            runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda68
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherActivity.this.lambda$identifySelectedRom$57(generation, e);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$identifySelectedRom$56(int generation, GenesisRomIdentity.Result result) {
        if (generation != this.identificationGeneration || isFinishing()) {
            return;
        }
        showIdentification(result);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$identifySelectedRom$57(int generation, Exception e) {
        if (generation != this.identificationGeneration || isFinishing()) {
            return;
        }
        this.prepareProgress.setIndeterminate(false);
        this.prepareProgress.setProgress(0);
        this.selectedState.setTextColor(Color.rgb(226, 105, 96));
        this.selectedState.setText(getString(C0012R.string.launcher_identification_error, new Object[]{safeMessage(e)}));
        this.prepareStatus.setText(C0012R.string.launcher_identification_failed_status);
        setIdentificationDetailsVisible(false);
        this.openGameAvailable = false;
        setPreparationInfoVisible(false);
        refreshBaseRomSelectionControls();
        refreshReadyOnlyPanels();
    }

    private void showIdentification(GenesisRomIdentity.Result result) {
        this.currentIdentity = result;
        if (this.currentSelection != null && result != null && result.sha256 != null) {
            try {
                RomSelectionStore.recordBaseFingerprint(this, this.currentSelection, result.sha256, result.profileId);
                RomSelectionStore.Selection refreshed = RomSelectionStore.load(this);
                if (refreshed != null) {
                    this.currentSelection = refreshed;
                }
            } catch (IOException e) {
            }
        }
        this.prepareProgress.setIndeterminate(false);
        this.prepareProgress.setProgress(0);
        setIdentificationDetailsVisible(true);
        if (result.recognition == GenesisRomIdentity.Recognition.EXACT_PROFILE) {
            if (result.basePreparationSupported) {
                this.selectedState.setTextColor(Color.rgb(RazorSpriteBankAudit.SOURCE_NON_MATCHED, 205, 137));
                this.selectedState.setText(C0012R.string.launcher_rom_verified_reference);
                this.prepareStatus.setText(C0012R.string.launcher_identified_waiting_extraction);
            } else {
                this.selectedState.setTextColor(ACCENT);
                this.selectedState.setText(C0012R.string.launcher_exact_profile_pending);
                this.prepareStatus.setText(C0012R.string.launcher_profile_pending_status);
            }
            this.selectedProfile.setText(getString(C0012R.string.launcher_profile_line, new Object[]{result.profileLabel}));
        } else if (result.r82Probe != null && result.r82Probe.recognized()) {
            this.selectedState.setTextColor(ACCENT);
            this.selectedState.setText(C0012R.string.launcher_r82_recognized_not_ready);
            this.selectedProfile.setText(getString(C0012R.string.launcher_profile_line, new Object[]{result.profileLabel}));
            this.prepareStatus.setText(C0012R.string.launcher_r82_not_ready_detail);
        } else if (result.recognition == GenesisRomIdentity.Recognition.GAME_FAMILY_CANDIDATE) {
            this.selectedState.setTextColor(ACCENT);
            this.selectedState.setText(C0012R.string.launcher_rom_candidate);
            this.selectedProfile.setText(getString(C0012R.string.launcher_profile_line, new Object[]{getString(C0012R.string.launcher_profile_candidate)}));
            this.prepareStatus.setText(C0012R.string.launcher_candidate_waiting_asset_fingerprints);
        } else {
            this.selectedState.setTextColor(Color.rgb(226, 105, 96));
            this.selectedState.setText(C0012R.string.launcher_rom_unrecognized);
            this.selectedProfile.setText(getString(C0012R.string.launcher_profile_line, new Object[]{getString(C0012R.string.launcher_profile_unrecognized)}));
            this.prepareStatus.setText(C0012R.string.launcher_unrecognized_status);
        }
        String region = (result.regionRaw == null || result.regionRaw.isEmpty()) ? getString(C0012R.string.launcher_unknown_value) : result.regionRaw;
        String serial = (result.serial == null || result.serial.isEmpty()) ? getString(C0012R.string.launcher_unknown_value) : result.serial;
        this.selectedHeader.setText(getString(C0012R.string.launcher_header_line, new Object[]{serial, region}));
        this.selectedLogicCompatibility.setText(getString(C0012R.string.launcher_logic_compatibility, new Object[]{compatibilityLabel(result.logicCompatibility)}));
        this.selectedAssetCompatibility.setText(getString(C0012R.string.launcher_asset_compatibility, new Object[]{compatibilityLabel(result.assetCompatibility)}));
        boolean mediaCandidate = result.basePreparationSupported;
        boolean readyBundle = mediaCandidate && currentSelectionMatchesReadyBundle();
        this.openGameAvailable = readyBundle && baseLocalizationReadyOrNotRequired();
        this.prepareCoreButton.setVisibility(mediaCandidate ? 0 : 8);
        this.prepareCoreButton.setEnabled(mediaCandidate && !this.baseLocalizationRefreshInFlight);
        this.prepareCoreButton.setText(this.openGameAvailable ? C0012R.string.launcher_open_game : C0012R.string.launcher_prepare_core_button);
        refreshPreparationInfoVisibility();
        refreshBaseLanguageStatus();
        refreshBaseRomSelectionControls();
        refreshReadyOnlyPanels();
        if (readyBundle && isRussianBase(result) && !baseLocalizationReadyOrNotRequired()) {
            startRussianBaseLocalizationRefresh(false);
        } else if (!isRussianBase(result)) {
            clearLegacyLanguageOverlayState(true);
        }
    }

    private void refreshReadyOnlyPanels() {
        int visibility = this.openGameAvailable ? 0 : 8;
        boolean verifiedOriginal = this.openGameAvailable && this.currentIdentity != null && this.currentIdentity.basePreparationSupported && this.currentIdentity.recognition == GenesisRomIdentity.Recognition.EXACT_PROFILE;
        int mediaVisibility = verifiedOriginal ? 0 : 8;
        if (this.optionalFeaturesPanel != null) {
            this.optionalFeaturesPanel.setVisibility(mediaVisibility);
        }
        if (this.audioModPanel != null) {
            this.audioModPanel.setVisibility(mediaVisibility);
        }
        if (this.twoFingerGroupPanel != null) {
            this.twoFingerGroupPanel.setVisibility(visibility);
        }
        if (this.launcherPreferencePanel != null) {
            this.launcherPreferencePanel.setVisibility(visibility);
        }
        if (this.objectNameEditorPanel != null) {
            String profile = this.currentIdentity == null ? null : this.currentIdentity.profileId;
            String sha = this.currentIdentity != null ? this.currentIdentity.sha256 : null;
            this.objectNameEditorPanel.setSource(this.openGameAvailable, profile, sha);
        }
    }

    private void showSimpleLauncherInfo(int titleId, int bodyId) {
        LinearLayout content = compactCard(CARD_ALT);
        content.setPadding(m6dp(18), m6dp(16), m6dp(18), m6dp(16));
        addCompactSectionTitle(content, getString(titleId));
        addCompactBody(content, getString(bodyId));
        new AlertDialog.Builder(this).setView(content).setPositiveButton(C0012R.string.launcher_game_info_close, new DialogInterface.OnClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda63
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).show();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private String graphicsPackageLabel(String path) {
        char c;
        if (path == null) {
            return "";
        }
        switch (path.hashCode()) {
            case -1713102497:
                if (path.equals("tactical/visual_catalog.bin")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case -1448869821:
                if (path.equals("radar/color_tables.bin")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1376878570:
                if (path.equals("terrain/patterns.bin")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1276932294:
                if (path.equals("terrain/palette.bin")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1234800617:
                if (path.equals("tactical/static_patterns_922_2047.bin")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -1050508018:
                if (path.equals("world/structure_beacon_patterns.bin")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -872248817:
                if (path.equals("radar/transition_quadrants.bin")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 168624779:
                if (path.equals("terrain/metatile_descriptors.bin")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 799029327:
                if (path.equals("tactical/placement_grid_patterns.bin")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 891802360:
                if (path.equals("tactical/direct_layouts.bin")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 1080072872:
                if (path.equals("tactical/dynamic_patterns.bin")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 1148353902:
                if (path.equals(RomWorldTacticalSpriteAssetManifest.CLASSIC_PURCHASE_ICONS)) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return getString(C0012R.string.graphics_pack_terrain_patterns);
            case 1:
                return getString(C0012R.string.graphics_pack_metatiles);
            case 2:
                return getString(C0012R.string.graphics_pack_palette);
            case 3:
                return getString(C0012R.string.graphics_pack_radar_colors);
            case 4:
                return getString(C0012R.string.graphics_pack_radar_transitions);
            case 5:
                return getString(C0012R.string.graphics_pack_beacons);
            case 6:
                return getString(C0012R.string.graphics_pack_static);
            case 7:
                return getString(C0012R.string.graphics_pack_catalog);
            case '\b':
                return getString(C0012R.string.graphics_pack_dynamic);
            case '\t':
                return getString(C0012R.string.graphics_pack_layouts);
            case '\n':
                return getString(C0012R.string.graphics_pack_placement);
            case 11:
                return getString(C0012R.string.graphics_pack_icons);
            default:
                return path;
        }
    }

    private String formatGraphicsVisualDetail(RomGraphicsVisualComparator.Result detail) {
        if (detail.bytesEqual) {
            return getString(C0012R.string.graphics_audit_same_bytes);
        }
        if (detail.decodedEquivalentOnly()) {
            return getString(C0012R.string.graphics_audit_same_visible_colors);
        }
        switch (detail.kind) {
            case COLORS:
                return getString(C0012R.string.graphics_audit_color_diff, new Object[]{Integer.valueOf(detail.differingElements), Integer.valueOf(detail.totalElements)});
            case PIXELS:
                return getString(C0012R.string.graphics_audit_pixel_diff, new Object[]{Integer.valueOf(detail.differingBlocks), Integer.valueOf(detail.totalBlocks), Integer.valueOf(detail.differingElements), Integer.valueOf(detail.totalElements)});
            case METATILE_ATTRIBUTES:
                return getString(C0012R.string.graphics_audit_metatile_diff, new Object[]{Integer.valueOf(detail.differingBlocks), Integer.valueOf(detail.totalBlocks), Integer.valueOf(detail.differingElements), Integer.valueOf(detail.totalElements)});
            default:
                return getString(C0012R.string.graphics_audit_unknown_diff, new Object[]{Integer.valueOf(detail.differingBytes), Integer.valueOf(detail.totalBytes)});
        }
    }

    private void saveGraphicsComparison(RomGraphicsMediaOverlayInstaller.Outcome outcome) {
        if (outcome == null) {
            return;
        }
        String baseSha = this.currentSelection == null ? "" : this.currentSelection.sha256;
        StringBuilder report = new StringBuilder();
        report.append(getString(C0012R.string.launcher_graphics_audit_intro)).append("\n\n");
        report.append(getString(C0012R.string.graphics_audit_decoded_intro)).append("\n\n");
        if (outcome.terrainScene != null) {
            report.append(getString(C0012R.string.graphics_audit_scene_diff, new Object[]{Integer.valueOf(outcome.terrainScene.changedMetatiles), Integer.valueOf(outcome.terrainScene.totalMetatiles), Integer.valueOf(outcome.terrainScene.changedPixels), Integer.valueOf(outcome.terrainScene.totalPixels)})).append("\n\n");
        }
        report.append(getString(C0012R.string.launcher_graphics_audit_changed, new Object[]{Integer.valueOf(outcome.overlayPaths.size())})).append("\n");
        for (RomGraphicsVisualComparator.Result detail : outcome.comparisonDetails) {
            if (!detail.visualEqual) {
                report.append("  + ").append(graphicsPackageLabel(detail.relativePath)).append("\n     ").append(detail.relativePath).append("\n     ").append(formatGraphicsVisualDetail(detail)).append("\n");
            }
        }
        report.append("\n").append(getString(C0012R.string.launcher_graphics_audit_identical, new Object[]{Integer.valueOf(outcome.identicalPaths.size())})).append("\n");
        for (RomGraphicsVisualComparator.Result detail2 : outcome.comparisonDetails) {
            if (detail2.visualEqual) {
                report.append("  = ").append(graphicsPackageLabel(detail2.relativePath)).append("\n     ").append(detail2.relativePath).append("\n     ").append(formatGraphicsVisualDetail(detail2)).append("\n");
            }
        }
        if (!outcome.adapterSummary.isEmpty()) {
            report.append("\n").append(outcome.adapterSummary);
        }
        getSharedPreferences(GRAPHICS_AUDIT_PREF, 0).edit().putString("source_sha", outcome.sourceSha256).putString("base_sha", baseSha != null ? baseSha : "").putString("report", report.toString()).apply();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0050, code lost:
    
        if (r2.isEmpty() == false) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void showGraphicsComparisonDialog() {
        /*
            r12 = this;
            com.ahsim.demulation.RomSelectionStore$SourceRole r0 = com.ahsim.demulation.RomSelectionStore.SourceRole.MEDIA_MOD
            com.ahsim.demulation.RomSelectionStore$OverlaySelection r0 = com.ahsim.demulation.RomSelectionStore.loadOverlay(r12, r0)
            if (r0 != 0) goto L9
            return
        L9:
            com.ahsim.demulation.RomGraphicsMediaOverlayStore$Snapshot r1 = com.ahsim.demulation.RomGraphicsMediaOverlayStore.loadActive(r12)
            java.lang.String r2 = "graphics_overlay_audit_621"
            r3 = 0
            android.content.SharedPreferences r4 = r12.getSharedPreferences(r2, r3)
            java.lang.String r5 = "source_sha"
            java.lang.String r6 = ""
            java.lang.String r4 = r4.getString(r5, r6)
            android.content.SharedPreferences r5 = r12.getSharedPreferences(r2, r3)
            java.lang.String r7 = "base_sha"
            java.lang.String r5 = r5.getString(r7, r6)
            com.ahsim.demulation.RomSelectionStore$Selection r7 = r12.currentSelection
            if (r7 != 0) goto L2c
            r7 = r6
            goto L30
        L2c:
            com.ahsim.demulation.RomSelectionStore$Selection r7 = r12.currentSelection
            java.lang.String r7 = r7.sha256
        L30:
            android.content.SharedPreferences r2 = r12.getSharedPreferences(r2, r3)
            java.lang.String r8 = "report"
            java.lang.String r2 = r2.getString(r8, r6)
            java.lang.String r8 = r0.sha256
            boolean r8 = r8.equalsIgnoreCase(r4)
            if (r8 == 0) goto L52
            if (r7 != 0) goto L45
            goto L46
        L45:
            r6 = r7
        L46:
            boolean r6 = r5.equalsIgnoreCase(r6)
            if (r6 == 0) goto L52
            boolean r6 = r2.isEmpty()
            if (r6 == 0) goto La1
        L52:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            int r8 = com.ahsim.demulation.C0012R.string.launcher_graphics_old_report
            java.lang.String r8 = r12.getString(r8)
            r6.<init>(r8)
            if (r1 == 0) goto L9d
            java.lang.String r8 = r1.sourceSha256
            java.lang.String r9 = r0.sha256
            boolean r8 = r8.equalsIgnoreCase(r9)
            if (r8 == 0) goto L9d
            java.util.Map r8 = r1.entries()
            java.util.Collection r8 = r8.values()
            java.util.Iterator r8 = r8.iterator()
        L75:
            boolean r9 = r8.hasNext()
            if (r9 == 0) goto L9d
            java.lang.Object r9 = r8.next()
            com.ahsim.demulation.RomGraphicsMediaOverlayStore$Entry r9 = (com.ahsim.demulation.RomGraphicsMediaOverlayStore.Entry) r9
            java.lang.String r10 = "\n + "
            java.lang.StringBuilder r10 = r6.append(r10)
            java.lang.String r11 = r9.relativePath
            java.lang.String r11 = r12.graphicsPackageLabel(r11)
            java.lang.StringBuilder r10 = r10.append(r11)
            java.lang.String r11 = "\n     "
            java.lang.StringBuilder r10 = r10.append(r11)
            java.lang.String r11 = r9.relativePath
            r10.append(r11)
            goto L75
        L9d:
            java.lang.String r2 = r6.toString()
        La1:
            r6 = 1094713344(0x41400000, float:12.0)
            int r8 = com.ahsim.demulation.LauncherActivity.TEXT
            android.widget.TextView r3 = r12.text(r2, r6, r8, r3)
            r6 = 12
            int r8 = r12.m6dp(r6)
            r9 = 10
            int r10 = r12.m6dp(r9)
            int r6 = r12.m6dp(r6)
            int r9 = r12.m6dp(r9)
            r3.setPadding(r8, r10, r6, r9)
            r6 = 1
            r3.setTextIsSelectable(r6)
            android.widget.ScrollView r6 = new android.widget.ScrollView
            r6.<init>(r12)
            r6.addView(r3)
            android.app.AlertDialog$Builder r8 = new android.app.AlertDialog$Builder
            r8.<init>(r12)
            int r9 = com.ahsim.demulation.C0012R.string.launcher_graphics_details_button
            android.app.AlertDialog$Builder r8 = r8.setTitle(r9)
            android.app.AlertDialog$Builder r8 = r8.setView(r6)
            int r9 = com.ahsim.demulation.C0012R.string.launcher_game_info_close
            com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda70 r10 = new com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda70
            r10.<init>()
            android.app.AlertDialog$Builder r8 = r8.setPositiveButton(r9, r10)
            r8.show()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.LauncherActivity.showGraphicsComparisonDialog():void");
    }

    private SharedPreferences audioOverlayPreferences() {
        return getSharedPreferences("dune_audio_overlay_622", 0);
    }

    private String storedAudioAuditReport() {
        RomSelectionStore.Selection base = RomSelectionStore.load(this);
        RomSelectionStore.OverlaySelection source = RomSelectionStore.loadOverlay(this, RomSelectionStore.SourceRole.AUDIO_MOD);
        if (base == null || source == null || base.sha256.isEmpty() || source.sha256.isEmpty()) {
            return "";
        }
        SharedPreferences p = audioOverlayPreferences();
        return (base.sha256.equalsIgnoreCase(p.getString("base", "")) && source.sha256.equalsIgnoreCase(p.getString("source", ""))) ? p.getString("report", "") : "";
    }

    private void refreshAudioModButton() {
        String string;
        if (this.audioModButton == null || this.audioModStatus == null) {
            return;
        }
        RomSelectionStore.OverlaySelection selected = RomSelectionStore.loadOverlay(this, RomSelectionStore.SourceRole.AUDIO_MOD);
        this.audioModButton.setText(selected == null ? getString(C0012R.string.launcher_audio_choose) : selected.displayName);
        String report = storedAudioAuditReport();
        TextView textView = this.audioModStatus;
        if (selected == null) {
            string = getString(C0012R.string.launcher_audio_not_selected);
        } else if (report.isEmpty()) {
            string = selected.sha256.isEmpty() ? getString(C0012R.string.launcher_audio_pending) : getString(C0012R.string.launcher_audio_verified_stage1);
        } else {
            string = getString(C0012R.string.launcher_audio_stage2_checked);
        }
        textView.setText(string);
        if (this.audioReportButton != null) {
            this.audioReportButton.setVisibility(report.isEmpty() ? 8 : 0);
        }
    }

    private void showAudioAuditReport() {
        String report = storedAudioAuditReport();
        if (report.isEmpty()) {
            return;
        }
        TextView content = text(report, 13.0f, TEXT, 0);
        content.setPadding(m6dp(14), m6dp(12), m6dp(14), m6dp(12));
        ScrollView scroll = new ScrollView(this);
        scroll.addView(content);
        new AlertDialog.Builder(this).setTitle(C0012R.string.launcher_audio_report_button).setView(scroll).setPositiveButton(C0012R.string.launcher_game_info_close, new DialogInterface.OnClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda61
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).show();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private String audioAuditReport(RomAudioOverlayPreparation.Audit audit, boolean staged) {
        String string;
        char c;
        int nameId;
        String string2;
        StringBuilder out = new StringBuilder();
        if (staged) {
            string = getString(C0012R.string.launcher_audio_stage2_prepared);
        } else {
            string = audit.metadataOnly ? getString(C0012R.string.launcher_audio_stage2_metadata_only) : getString(C0012R.string.launcher_audio_stage2_identical);
        }
        out.append(string);
        out.append("\n").append(getString(C0012R.string.launcher_audio_stage2_runtime_notice)).append("\n");
        for (RomAudioOverlayPreparation.Domain item : audit.domains) {
            String str = item.key;
            switch (str.hashCode()) {
                case -1773754229:
                    if (str.equals("title_gems")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -1246715431:
                    if (str.equals("command_tables")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case -608191190:
                    if (str.equals("option_selectors")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case 1767233278:
                    if (str.equals("option_names")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    nameId = C0012R.string.launcher_audio_domain_names;
                    break;
                case 1:
                    nameId = C0012R.string.launcher_audio_domain_commands;
                    break;
                case 2:
                    nameId = C0012R.string.launcher_audio_domain_options;
                    break;
                case 3:
                    nameId = C0012R.string.launcher_audio_domain_title;
                    break;
                default:
                    nameId = C0012R.string.launcher_audio_domain_gameplay;
                    break;
            }
            StringBuilder append = out.append("\n").append(getString(nameId)).append(": ");
            if (item.changed) {
                string2 = getString(C0012R.string.launcher_audio_stage2_changed, new Object[]{Long.valueOf(item.differingAddresses)});
            } else {
                string2 = getString(C0012R.string.launcher_audio_stage2_same);
            }
            append.append(string2);
        }
        out.append("\n\n").append(getString(C0012R.string.launcher_audio_stage2_bank_note));
        return out.toString();
    }

    private void startAudioSourceAudit(final RomSelectionStore.OverlaySelection selected) {
        if (selected == null) {
            return;
        }
        if (this.audioModButton != null) {
            this.audioModButton.setEnabled(false);
        }
        if (this.audioModStatus != null) {
            this.audioModStatus.setText(C0012R.string.launcher_audio_analyzing);
        }
        if (this.audioReportButton != null) {
            this.audioReportButton.setVisibility(8);
        }
        this.workerExecutor.execute(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                LauncherActivity.this.lambda$startAudioSourceAudit$63(selected);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startAudioSourceAudit$63(RomSelectionStore.OverlaySelection selected) {
        String verdict;
        boolean verified = false;
        try {
            InputStream stream = getContentResolver().openInputStream(selected.uri);
            try {
                if (stream == null) {
                    throw new IOException("Audio ROM stream unavailable");
                }
                RomLayoutCapabilityAnalyzer.Result analysis = RomLayoutCapabilityAnalyzer.analyze(stream, selected.size);
                if (!analysis.exactAuditedProfile || (analysis.layoutFamily != RomLayoutCapabilityAnalyzer.LayoutFamily.ORIGINAL_USA && analysis.layoutFamily != RomLayoutCapabilityAnalyzer.LayoutFamily.ORIGINAL_LAYOUT_PATCHED)) {
                    throw new IOException("Original ROM audio layout is not verified");
                }
                RomAssetInstallState.RuntimeBundle base = RomAssetInstallState.activeRuntimeBundle(this);
                if (base.sourceSha256.isEmpty()) {
                    throw new IOException("BASE fingerprint unavailable");
                }
                InputStream input = getContentResolver().openInputStream(selected.uri);
                try {
                    if (input == null) {
                        throw new IOException("Audio ROM stream unavailable");
                    }
                    ByteArrayOutputStream buffer = new ByteArrayOutputStream();
                    byte[] chunk = new byte[8192];
                    while (true) {
                        int len = input.read(chunk);
                        if (len != -1) {
                            if (buffer.size() + len > 16777216) {
                                throw new IOException("Audio ROM too large");
                            }
                            buffer.write(chunk, 0, len);
                        } else {
                            RomImageNormalizer.NormalizedImage normalized = RomImageNormalizer.normalize(buffer.toByteArray());
                            byte[] pack = GenesisRomAudioAssetProvider.buildPack(normalized.bytes, analysis.profileId);
                            if (input != null) {
                                input.close();
                            }
                            byte[] verifiedBasePack = base.audioAssets.readVerifiedPackForComparison();
                            RomAudioOverlayPreparation.Audit audit = RomAudioOverlayPreparation.compare(verifiedBasePack, pack);
                            RomSelectionStore.OverlaySelection current = RomSelectionStore.loadOverlay(this, RomSelectionStore.SourceRole.AUDIO_MOD);
                            if (current == null || !selected.uri.equals(current.uri)) {
                                throw new IOException("Selected audio ROM changed during analysis");
                            }
                            File stageDir = new File(getFilesDir(), "optional_audio_overlay_v1");
                            boolean staged = RomAudioOverlayPreparation.stage(stageDir, pack, audit, base.sourceSha256, analysis.normalizedSha256);
                            RomSelectionStore.recordOverlayFingerprint(this, selected, analysis.normalizedSha256, analysis.profileId);
                            verdict = getString(C0012R.string.launcher_audio_audit_result, new Object[]{analysis.profileLabel, Integer.valueOf(pack.length)});
                            String report = audioAuditReport(audit, staged);
                            audioOverlayPreferences().edit().putString("base", base.sourceSha256).putString("source", analysis.normalizedSha256).putString("report", report).commit();
                            verified = true;
                            if (stream != null) {
                                stream.close();
                            }
                        }
                    }
                } finally {
                }
            } finally {
            }
        } catch (Exception e) {
            verdict = getString(C0012R.string.launcher_audio_error, new Object[]{safeMessage(e)});
            RomSelectionStore.OverlaySelection current2 = RomSelectionStore.loadOverlay(this, RomSelectionStore.SourceRole.AUDIO_MOD);
            if (current2 != null && selected.uri.equals(current2.uri)) {
                RomSelectionStore.clearOverlay(this, RomSelectionStore.SourceRole.AUDIO_MOD);
                audioOverlayPreferences().edit().clear().apply();
            }
            final String result = verdict;
            final boolean accepted = verified;
            runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherActivity.this.lambda$startAudioSourceAudit$62(result, accepted);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startAudioSourceAudit$62(String result, boolean accepted) {
        if (isFinishing()) {
            return;
        }
        refreshAudioModButton();
        if (this.audioModStatus != null) {
            this.audioModStatus.setText(result + (accepted ? "\n" + getString(C0012R.string.launcher_audio_stage2_checked) : ""));
            this.audioModStatus.setTextColor(accepted ? Color.rgb(RazorSpriteBankAudit.SOURCE_NON_MATCHED, 205, 137) : ACCENT);
        }
        if (this.audioModButton != null) {
            this.audioModButton.setEnabled(true);
        }
    }

    private void showGameInfoDialog() {
        LinearLayout frame = new LinearLayout(this);
        frame.setOrientation(1);
        frame.setPadding(m6dp(16), m6dp(14), m6dp(16), m6dp(14));
        GradientDrawable bg = new GradientDrawable();
        bg.setColor(CARD_ALT);
        bg.setCornerRadius(m6dp(16));
        bg.setStroke(m6dp(1), Color.rgb(72, 91, 111));
        frame.setBackground(bg);
        TextView title = text(getString(C0012R.string.launcher_game_info_title), 17.0f, TEXT, 1);
        frame.addView(title, matchWrap(0));
        ScrollView scroll = new ScrollView(this);
        scroll.setFillViewport(false);
        LinearLayout content = new LinearLayout(this);
        content.setOrientation(1);
        content.setPadding(0, m6dp(2), 0, m6dp(2));
        addCompactSectionTitle(content, getString(C0012R.string.launcher_game_info_roms_title));
        addCompactBody(content, getString(C0012R.string.launcher_game_info_roms_body));
        addCompactSectionTitleWithMargin(content, getString(C0012R.string.launcher_game_info_features_title), m6dp(12));
        addCompactBody(content, getString(C0012R.string.launcher_game_info_features_body));
        addCompactBody(content, getString(C0012R.string.launcher_game_info_rules_note));
        scroll.addView(content, new FrameLayout.LayoutParams(-1, -2));
        LinearLayout.LayoutParams scrollLp = new LinearLayout.LayoutParams(-1, 0, 1.0f);
        scrollLp.topMargin = m6dp(8);
        frame.addView(scroll, scrollLp);
        Button close = secondaryButton(getString(C0012R.string.launcher_game_info_close));
        LinearLayout.LayoutParams closeLp = matchWrap(m6dp(10));
        frame.addView(close, closeLp);
        final AlertDialog dialog = new AlertDialog.Builder(this).setView(frame).create();
        close.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda17
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialog.dismiss();
            }
        });
        dialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda18
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                LauncherActivity.this.lambda$showGameInfoDialog$65(dialog, dialogInterface);
            }
        });
        dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showGameInfoDialog$65(AlertDialog dialog, DialogInterface v) {
        if (dialog.getWindow() != null) {
            dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            int width = Math.min(getResources().getDisplayMetrics().widthPixels - m6dp(28), m6dp(520));
            int height = Math.min(getResources().getDisplayMetrics().heightPixels - m6dp(36), m6dp(620));
            dialog.getWindow().setLayout(Math.max(m6dp(280), width), Math.max(m6dp(300), height));
        }
    }

    private void addCompactSectionTitleWithMargin(LinearLayout parent, String value, int topMargin) {
        TextView title = text(value, 15.5f, TEXT, 1);
        LinearLayout.LayoutParams lp = matchWrap(topMargin);
        parent.addView(title, lp);
    }

    private TextView infoButton() {
        TextView view = text("i", 16.0f, BLUE, 1);
        view.setGravity(17);
        view.setClickable(true);
        view.setFocusable(true);
        GradientDrawable bg = new GradientDrawable();
        bg.setShape(1);
        bg.setColor(Color.rgb(31, 40, 49));
        bg.setStroke(m6dp(1), BLUE);
        view.setBackground(bg);
        return view;
    }

    private boolean currentSelectionMatchesReadyBundle() {
        GenesisRomIdentity.Result identity = this.currentIdentity;
        if (identity == null || identity.sha256 == null || identity.sha256.trim().isEmpty()) {
            return false;
        }
        try {
            return identity.sha256.equalsIgnoreCase(RomAssetInstallState.activeBundleSourceSha256(this));
        } catch (IOException | RuntimeException e) {
            return false;
        }
    }

    private void startAssetBundleInstallation() {
        final RomSelectionStore.Selection selection = this.currentSelection;
        final GenesisRomIdentity.Result identity = this.currentIdentity;
        final int generation = this.identificationGeneration;
        if (selection == null || identity == null || !identity.basePreparationSupported) {
            return;
        }
        this.chooseButton.setEnabled(false);
        if (this.selectedClearButton != null) {
            this.selectedClearButton.setEnabled(false);
        }
        this.prepareCoreButton.setEnabled(false);
        this.openGameAvailable = false;
        setPreparationInfoVisible(true);
        refreshReadyOnlyPanels();
        this.prepareProgress.setIndeterminate(false);
        this.prepareProgress.setProgress(0);
        this.prepareStatus.setText(C0012R.string.launcher_bundle_starting);
        this.workerExecutor.execute(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                LauncherActivity.this.lambda$startAssetBundleInstallation$72(selection, identity, generation);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startAssetBundleInstallation$72(RomSelectionStore.Selection selection, GenesisRomIdentity.Result identity, final int generation) {
        final int generation2;
        final RomAssetProvider.BundleInstallOutcome outcome;
        boolean languageReady;
        String languageError;
        final boolean finalLanguageReady;
        final String finalLanguageError;
        try {
            outcome = RomAssetProvider.installAssetBundle(this, selection, identity, new RomAssetProvider.BundleProgressListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda6
                @Override // com.ahsim.demulation.RomAssetProvider.BundleProgressListener
                public final void onProgress(int i, int i2, String str, String str2) {
                    LauncherActivity.this.lambda$startAssetBundleInstallation$67(generation, i, i2, str, str2);
                }
            }, new RomAssetProvider.InstallListener() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda7
                @Override // com.ahsim.demulation.RomAssetProvider.InstallListener
                public final void onInstalling() {
                    LauncherActivity.this.lambda$startAssetBundleInstallation$69(generation);
                }
            });
            boolean languageReady2 = outcome.ready();
            if (outcome.ready()) {
                try {
                    if (isRussianBase(identity)) {
                        RomRussianLocalizationPackInstaller.install(this, selection, identity);
                        clearLegacyLanguageOverlayState(false);
                    } else {
                        clearLegacyLanguageOverlayState(true);
                    }
                } catch (IOException | RuntimeException languageFailure) {
                    try {
                        String languageError2 = safeMessage(languageFailure);
                        RomRussianLocalizationPackStore.clear(this);
                        languageReady = false;
                        languageError = languageError2;
                    } catch (IOException | RuntimeException e) {
                        e = e;
                        generation2 = generation;
                        runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda9
                            @Override // java.lang.Runnable
                            public final void run() {
                                LauncherActivity.this.lambda$startAssetBundleInstallation$71(generation2, e);
                            }
                        });
                    }
                }
            }
            languageReady = languageReady2;
            languageError = null;
            finalLanguageReady = languageReady;
            finalLanguageError = languageError;
            generation2 = generation;
        } catch (IOException | RuntimeException e2) {
            e = e2;
            generation2 = generation;
        }
        try {
            runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherActivity.this.lambda$startAssetBundleInstallation$70(generation2, outcome, finalLanguageReady, finalLanguageError);
                }
            });
        } catch (IOException e3) {
            e = e3;
            runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherActivity.this.lambda$startAssetBundleInstallation$71(generation2, e);
                }
            });
        } catch (RuntimeException e4) {
            e = e4;
            runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherActivity.this.lambda$startAssetBundleInstallation$71(generation2, e);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startAssetBundleInstallation$67(final int generation, final int completed, final int total, String group, final String asset) {
        final int progress = total <= 0 ? 0 : (int) Math.min(950L, (completed * 950) / total);
        runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                LauncherActivity.this.lambda$startAssetBundleInstallation$66(generation, progress, asset, completed, total);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startAssetBundleInstallation$66(int generation, int progress, String asset, int completed, int total) {
        if (generation != this.identificationGeneration || isFinishing()) {
            return;
        }
        this.prepareProgress.setProgress(progress);
        this.prepareStatus.setText(getString(C0012R.string.launcher_bundle_extracting, new Object[]{asset, Integer.valueOf(Math.min(completed, total)), Integer.valueOf(total)}));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startAssetBundleInstallation$69(final int generation) {
        runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                LauncherActivity.this.lambda$startAssetBundleInstallation$68(generation);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startAssetBundleInstallation$68(int generation) {
        if (generation != this.identificationGeneration || isFinishing()) {
            return;
        }
        this.prepareProgress.setProgress(975);
        this.prepareStatus.setText(C0012R.string.launcher_bundle_installing);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startAssetBundleInstallation$70(int generation, RomAssetProvider.BundleInstallOutcome outcome, boolean finalLanguageReady, String finalLanguageError) {
        if (generation != this.identificationGeneration || isFinishing()) {
            return;
        }
        this.prepareCoreButton.setEnabled(true);
        boolean z = false;
        this.prepareProgress.setProgress(outcome.ready() ? 1000 : 0);
        if (outcome.ready() && finalLanguageReady && RomAssetInstallState.isBundleReady(this) && currentSelectionMatchesReadyBundle() && baseLocalizationReadyOrNotRequired()) {
            z = true;
        }
        this.openGameAvailable = z;
        refreshReadyOnlyPanels();
        if (this.openGameAvailable) {
            if (this.selectedClearButton != null) {
                this.selectedClearButton.setEnabled(true);
            }
            this.prepareCoreButton.setText(C0012R.string.launcher_open_game);
            this.prepareStatus.setText(getString(C0012R.string.launcher_bundle_installed, new Object[]{Integer.valueOf(outcome.verifiedEntries), Integer.valueOf(outcome.totalEntries)}));
            refreshBaseLanguageStatus();
        } else {
            if (this.selectedClearButton != null) {
                this.selectedClearButton.setEnabled(true);
            }
            this.prepareCoreButton.setText(C0012R.string.launcher_prepare_core_again);
            if (finalLanguageError != null) {
                this.prepareStatus.setText(getString(C0012R.string.launcher_base_language_prepare_error, new Object[]{finalLanguageError}));
            } else {
                this.prepareStatus.setText(getString(C0012R.string.launcher_bundle_mismatch, new Object[]{Integer.valueOf(outcome.verifiedEntries), Integer.valueOf(outcome.totalEntries), joinNames(outcome.mismatches)}));
            }
            refreshBaseLanguageStatus();
        }
        refreshPreparationInfoVisibility();
        refreshBaseRomSelectionControls();
        refreshReadyOnlyPanels();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startAssetBundleInstallation$71(int generation, Exception e) {
        if (generation != this.identificationGeneration || isFinishing()) {
            return;
        }
        if (this.selectedClearButton != null) {
            this.selectedClearButton.setEnabled(true);
        }
        this.prepareCoreButton.setEnabled(true);
        this.openGameAvailable = false;
        setPreparationInfoVisible(true);
        refreshBaseRomSelectionControls();
        refreshReadyOnlyPanels();
        this.prepareProgress.setProgress(0);
        this.prepareStatus.setText(getString(C0012R.string.launcher_bundle_error, new Object[]{safeMessage(e)}));
    }

    private static String joinNames(List<String> names) {
        if (names == null || names.isEmpty()) {
            return "-";
        }
        StringBuilder out = new StringBuilder();
        int limit = Math.min(names.size(), 3);
        for (int i = 0; i < limit; i++) {
            if (i > 0) {
                out.append(", ");
            }
            out.append(names.get(i));
        }
        int i2 = names.size();
        if (i2 > limit) {
            out.append(" …");
        }
        return out.toString();
    }

    private String compatibilityLabel(GenesisRomIdentity.Compatibility compatibility) {
        return compatibility == GenesisRomIdentity.Compatibility.VERIFIED ? getString(C0012R.string.launcher_compat_verified) : compatibility == GenesisRomIdentity.Compatibility.CANDIDATE ? getString(C0012R.string.launcher_compat_candidate) : compatibility == GenesisRomIdentity.Compatibility.UNVERIFIED ? getString(C0012R.string.launcher_compat_unverified) : getString(C0012R.string.launcher_compat_incompatible);
    }

    private void setIdentificationDetailsVisible(boolean visible) {
        int value = visible ? 0 : 8;
        this.selectedProfile.setVisibility(value);
        this.selectedHeader.setVisibility(value);
        this.selectedLogicCompatibility.setVisibility(8);
        this.selectedAssetCompatibility.setVisibility(8);
    }

    private static String safeMessage(Throwable error) {
        String message = error.getMessage();
        return (message == null || message.trim().isEmpty()) ? error.getClass().getSimpleName() : message;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        this.identificationGeneration++;
        this.razorGeneration++;
        closeRazorCampaignSession();
        this.workerExecutor.shutdownNow();
        super.onDestroy();
    }

    private void openGame() {
        if (hasSelectedGame()) {
            if (!baseLocalizationReadyOrNotRequired()) {
                startRussianBaseLocalizationRefresh(true);
                return;
            }
            Intent intent = new Intent(this, (Class<?>) MainActivity.class);
            startActivity(intent);
            finish();
        }
    }

    private boolean isRussianBase(GenesisRomIdentity.Result identity) {
        return identity != null && "translation_ru_shedevr_lipetsk_usa".equals(identity.profileId) && "4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a".equalsIgnoreCase(identity.sha256);
    }

    private boolean isRussianBase(RomSelectionStore.Selection selection) {
        return selection != null && "translation_ru_shedevr_lipetsk_usa".equals(selection.profileId) && "4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a".equalsIgnoreCase(selection.sha256);
    }

    private boolean baseLocalizationReadyOrNotRequired() {
        RomSelectionStore.Selection base = RomSelectionStore.load(this);
        if (!isRussianBase(base)) {
            return true;
        }
        RomRussianLocalizationPackStore.Snapshot pack = RomRussianLocalizationPackStore.loadActive(this);
        return pack != null && base.sha256.equalsIgnoreCase(pack.sourceSha256) && base.profileId.equals(pack.profileId) && pack.assetCount == RomRussianLocalizationAssetManifest.entries().size();
    }

    private void startRussianBaseLocalizationRefresh(final boolean openAfter) {
        if (this.baseLocalizationRefreshInFlight) {
            return;
        }
        final RomSelectionStore.Selection selection = this.currentSelection != null ? this.currentSelection : RomSelectionStore.load(this);
        final GenesisRomIdentity.Result identity = this.currentIdentity;
        if (!isRussianBase(identity) || selection == null) {
            return;
        }
        this.baseLocalizationRefreshInFlight = true;
        setPreparationInfoVisible(true);
        if (this.prepareCoreButton != null) {
            this.prepareCoreButton.setEnabled(false);
        }
        refreshBaseRomSelectionControls();
        if (this.prepareStatus != null) {
            this.prepareStatus.setText(C0012R.string.launcher_base_language_preparing);
        }
        refreshBaseLanguageStatus();
        this.workerExecutor.execute(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda62
            @Override // java.lang.Runnable
            public final void run() {
                LauncherActivity.this.lambda$startRussianBaseLocalizationRefresh$75(selection, identity, openAfter);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRussianBaseLocalizationRefresh$75(RomSelectionStore.Selection selection, GenesisRomIdentity.Result identity, final boolean openAfter) {
        try {
            RomRussianLocalizationPackInstaller.install(this, selection, identity);
            clearLegacyLanguageOverlayState(false);
            runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda23
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherActivity.this.lambda$startRussianBaseLocalizationRefresh$73(openAfter);
                }
            });
        } catch (IOException | RuntimeException e) {
            RomRussianLocalizationPackStore.clear(this);
            runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.LauncherActivity$$ExternalSyntheticLambda24
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherActivity.this.lambda$startRussianBaseLocalizationRefresh$74(e);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRussianBaseLocalizationRefresh$73(boolean openAfter) {
        boolean z = false;
        this.baseLocalizationRefreshInFlight = false;
        if (isFinishing()) {
            return;
        }
        if (currentSelectionMatchesReadyBundle() && baseLocalizationReadyOrNotRequired()) {
            z = true;
        }
        this.openGameAvailable = z;
        this.prepareCoreButton.setEnabled(true);
        this.prepareCoreButton.setText(this.openGameAvailable ? C0012R.string.launcher_open_game : C0012R.string.launcher_prepare_core_button);
        this.prepareStatus.setText(this.openGameAvailable ? C0012R.string.launcher_russian_base_ready : C0012R.string.launcher_identified_waiting_extraction);
        refreshPreparationInfoVisibility();
        refreshBaseLanguageStatus();
        refreshBaseRomSelectionControls();
        refreshReadyOnlyPanels();
        if (!openAfter || !this.openGameAvailable) {
            return;
        }
        openGame();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRussianBaseLocalizationRefresh$74(Exception e) {
        this.baseLocalizationRefreshInFlight = false;
        if (isFinishing()) {
            return;
        }
        this.openGameAvailable = false;
        setPreparationInfoVisible(true);
        this.prepareCoreButton.setEnabled(true);
        this.prepareCoreButton.setText(C0012R.string.launcher_prepare_core_again);
        this.prepareStatus.setText(getString(C0012R.string.launcher_base_language_prepare_error, new Object[]{safeMessage(e)}));
        refreshBaseLanguageStatus();
        refreshBaseRomSelectionControls();
        refreshReadyOnlyPanels();
    }

    private void clearLegacyLanguageOverlayState(boolean clearLocalizationPack) {
        RomSelectionStore.clearOverlay(this, RomSelectionStore.SourceRole.TRANSLATION);
        RomRussianVoicePackStore.clear(this);
        RomRussianVoicePreferences.setEnabled(this, false);
        if (clearLocalizationPack) {
            RomRussianLocalizationPackStore.clear(this);
        }
    }

    private void refreshBaseLanguageStatus() {
        if (this.baseLanguageStatus == null) {
            return;
        }
        GenesisRomIdentity.Result identity = this.currentIdentity;
        if (identity == null || identity.recognition != GenesisRomIdentity.Recognition.EXACT_PROFILE) {
            this.baseLanguageStatus.setVisibility(8);
            return;
        }
        this.baseLanguageStatus.setVisibility(0);
        if (isRussianBase(identity)) {
            if (this.openGameAvailable && baseLocalizationReadyOrNotRequired()) {
                this.baseLanguageStatus.setText(C0012R.string.launcher_base_language_russian_active);
                this.baseLanguageStatus.setTextColor(Color.rgb(RazorSpriteBankAudit.SOURCE_NON_MATCHED, 205, 137));
                return;
            } else {
                this.baseLanguageStatus.setText(C0012R.string.launcher_base_language_russian_auto);
                this.baseLanguageStatus.setTextColor(ACCENT);
                return;
            }
        }
        if ("dune_arrakis_germany_gm_t70246_00".equals(identity.profileId)) {
            if (this.openGameAvailable) {
                this.baseLanguageStatus.setText(C0012R.string.launcher_base_language_german_active);
                this.baseLanguageStatus.setTextColor(Color.rgb(RazorSpriteBankAudit.SOURCE_NON_MATCHED, 205, 137));
                return;
            } else {
                this.baseLanguageStatus.setText(C0012R.string.launcher_base_language_german_auto);
                this.baseLanguageStatus.setTextColor(ACCENT);
                return;
            }
        }
        this.baseLanguageStatus.setText(C0012R.string.launcher_base_language_english);
        this.baseLanguageStatus.setTextColor(MUTED);
    }

    private LinearLayout card(int color) {
        LinearLayout card = new LinearLayout(this);
        card.setOrientation(1);
        int p = m6dp(16);
        card.setPadding(p, p, p, p);
        GradientDrawable bg = new GradientDrawable();
        bg.setColor(color);
        bg.setCornerRadius(m6dp(16));
        bg.setStroke(m6dp(1), Color.rgb(54, 62, 72));
        card.setBackground(bg);
        return card;
    }

    private void addSectionTitle(LinearLayout parent, String value) {
        TextView title = text(value, 18.0f, TEXT, 1);
        parent.addView(title, matchWrap(0));
    }

    private void addBody(LinearLayout parent, String value) {
        TextView body = text(value, 14.0f, MUTED, 0);
        parent.addView(body, matchWrap(m6dp(8)));
    }

    private LinearLayout compactCard(int color) {
        LinearLayout card = card(color);
        int h = m6dp(12);
        card.setPadding(m6dp(14), h, m6dp(14), h);
        return card;
    }

    private LinearLayout gameChoiceRow() {
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(0);
        row.setGravity(16);
        row.setPadding(m6dp(12), 0, m6dp(10), 0);
        row.setClickable(true);
        row.setFocusable(true);
        GradientDrawable bg = new GradientDrawable();
        bg.setColor(Color.rgb(38, 46, 57));
        bg.setCornerRadius(m6dp(11));
        bg.setStroke(m6dp(1), BLUE);
        row.setBackground(bg);
        return row;
    }

    private void addCompactSectionTitle(LinearLayout parent, String value) {
        TextView title = text(value, 15.5f, TEXT, 1);
        parent.addView(title, matchWrap(0));
    }

    private void addCompactBody(LinearLayout parent, String value) {
        TextView body = text(value, 12.0f, MUTED, 0);
        parent.addView(body, matchWrap(m6dp(5)));
    }

    private Button linkButton(String label) {
        Button button = new Button(this);
        button.setText(label);
        button.setTextColor(BLUE);
        button.setTextSize(12.0f);
        button.setTypeface(Typeface.DEFAULT, 1);
        button.setAllCaps(false);
        button.setMinHeight(m6dp(38));
        GradientDrawable bg = new GradientDrawable();
        bg.setColor(0);
        bg.setCornerRadius(m6dp(9));
        bg.setStroke(m6dp(0), 0);
        button.setBackground(bg);
        return button;
    }

    private TextView text(String value, float sp, int color, int style) {
        TextView view = new TextView(this);
        view.setText(value);
        view.setTextSize(sp);
        view.setTextColor(color);
        view.setTypeface(Typeface.DEFAULT, style);
        view.setLineSpacing(0.0f, 1.12f);
        return view;
    }

    private Button primaryButton(String label) {
        Button button = new Button(this);
        button.setText(label);
        button.setTextColor(Color.rgb(24, 23, 18));
        button.setTextSize(15.0f);
        button.setTypeface(Typeface.DEFAULT, 1);
        button.setAllCaps(false);
        GradientDrawable bg = new GradientDrawable();
        bg.setColor(ACCENT);
        bg.setCornerRadius(m6dp(13));
        bg.setStroke(m6dp(1), ACCENT_DARK);
        button.setBackground(bg);
        button.setMinHeight(m6dp(52));
        return button;
    }

    private Button secondaryButton(String label) {
        Button button = new Button(this);
        button.setText(label);
        button.setTextColor(TEXT);
        button.setTextSize(12.5f);
        button.setTypeface(Typeface.DEFAULT, 1);
        button.setAllCaps(false);
        button.setMinHeight(m6dp(46));
        GradientDrawable bg = new GradientDrawable();
        bg.setColor(Color.rgb(42, 50, 61));
        bg.setCornerRadius(m6dp(11));
        bg.setStroke(m6dp(1), BLUE);
        button.setBackground(bg);
        return button;
    }

    private LinearLayout.LayoutParams weightedButton() {
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, m6dp(48), 1.0f);
        lp.leftMargin = m6dp(3);
        lp.rightMargin = m6dp(3);
        return lp;
    }

    private LinearLayout.LayoutParams matchWrap(int topMargin) {
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-1, -2);
        lp.topMargin = topMargin;
        return lp;
    }

    /* renamed from: dp */
    private int m6dp(int value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
    }
}
