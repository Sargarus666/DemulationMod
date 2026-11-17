package com.ahsim.demulation;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.Choreographer;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.ahsim.demulation.DuneHackR82cRazorMissionBundle;
import com.ahsim.demulation.GenesisObjectArt;
import com.ahsim.demulation.RazorCampaignMapSnapshot559;
import com.ahsim.demulation.RazorCampaignNativeSession;
import com.ahsim.demulation.RazorCoreWorldAdapter663;
import com.ahsim.demulation.RazorDynamicObjects569;
import com.ahsim.demulation.RazorGameRomStore;
import com.ahsim.demulation.RazorNativeObjectFrameBridge;
import com.ahsim.demulation.RazorNativeWorldSession;
import com.ahsim.demulation.RazorTerrainRenderAdapter;
import com.ahsim.demulation.RazorTerrainVisualSource;
import com.ahsim.demulation.RomAssetInstallState;
import com.ahsim.demulation.RomSelectionStore;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes2.dex */
public final class RazorTerrainPreviewActivity extends Activity {
    private static final int ACCENT = -2510228;

    /* renamed from: BG */
    private static final int f56BG = -15723494;
    public static final String EXTRA_GAME_PROFILE558 = "razor_map558_profile";
    public static final String EXTRA_HOUSE558 = "razor_map558_house";
    public static final String EXTRA_MISSION558 = "razor_map558_mission";
    public static final String EXTRA_QUICK_PLAY662 = "razor_quick_play662";
    private static final int MAX_RAW_BYTES = 4194816;
    private static final int MUTED = -4012341;
    private static final String RAZOR_ART_PREFS741 = "razor_tactical_art741";
    private static final String RAZOR_ART_URI741 = "classic_uri";
    private static final int REQUEST_RAZOR_ART_ROM741 = 741;
    private static final String TAG = "RazorTerrainPreview";
    private static final int TEXT = -987159;
    private volatile String artFrameError740;
    private boolean autoStartPending662;
    private TextView bootStatus;
    private int[] buildOwner716;
    private int[] buildStatus715;
    private TextView buildingFacts572;
    private int burstFrames736;
    private RazorCampaignMapSnapshot559 campaignMapFrame559;
    private RazorCampaignNativeSession campaignMapSession559;
    private int[] campaignSubtiles565;
    private Bitmap canvasBitmap;
    private boolean changingMission674;
    private volatile int classicViewHeight678;
    private volatile int classicViewWidth678;
    private RazorConstruction571 construction571;
    private TextView coordinates;
    private int[] coreCadence668;
    private int[] corePass667;
    private RazorCoreWorldAdapter663.Snapshot coreSnapshot663;
    private TextView creditsText743;
    private RazorTickEvidence729 currentProof729;
    private int demoHandle569;
    private boolean demoPending569;
    private Button deployButton726;
    private volatile boolean destroyed;
    private RazorDynamicObjects569 dynamicObjects569;
    private TextView economyFacts573;
    private int[] emcOwner673;
    private TextView emcStatus;
    private int[] emcStatus671;
    private int[] emcStatus672;
    private volatile boolean exportingDiagnostics749;
    private int[] facing666;
    private RazorFinanceLive576 finance576;
    private Button financeButton576;
    private int focusOldX749;
    private int focusOldY749;
    private Button followButton663;
    private boolean followSelected663;
    private boolean frameArming634;
    private Button frameButton634;
    private volatile int frameGeneration634;
    private boolean frameInFlight634;
    private boolean frameRunning634;
    private TextView frameStatus634;
    private TextView gameBar674;
    private boolean gameplaySpritesAvailable674;
    private TextView houseLabel676;
    private Spinner houseSpinner;
    private View hpFill743;
    private TextView hpText743;
    private FrameLayout hpTrack743;
    private File lastProbeEvidenceZip;
    private String lastPulseFailure729;
    private Button lifecycleDemoButton569;
    private RazorNativeTerrainFrameBridge liveWorld;
    private boolean mapActionPending559;
    private Button mapAdvance559;
    private Button mapCancel559;
    private TextView mapHint559;
    private MapCanvas mapView;
    private Spinner missionSpinner;
    private Button nativeModeButton;
    private RazorNativeObjectFrameBridge nativeObjects;
    private RazorTerrainPreviewNavigator navigator;
    private TextView objectDetails;
    private RazorNativeObjectFrameBridge.Frame objectFrame;
    private Button objectModeButton;
    private double observedCps736;
    private volatile GenesisObjectArt originalSprites674;
    private int[] ownerHud743;
    private Spinner paletteSpinner;
    private boolean panFrameRequested679;
    private Button pauseButton674;
    private boolean pendingSelectionFocus749;
    private Bitmap portraitBitmap676;
    private boolean profile558;
    private ProgressBar progress;
    private TextView quickHud662;
    private boolean quickPlay662;
    private long rateStartNs736;
    private int rateStartTicks736;
    private RazorRefinery570 refinery570;
    private Button refineryButton570;
    private DuneHackR82cRazorMissionBundle.BuildingData572.Record refineryFacts572;
    private int renderFailure749;
    private int renderSuccess749;
    private volatile int requestedGeneration;
    private boolean resumeAfterBackground741;
    private RazorNativeWorldSession retainedBootWorld;
    private RazorCoreRoute664 routeWitness664;
    private Button sandboxButton560;
    private boolean sandboxInFlight560;
    private int sandboxMoves560;
    private boolean sandboxRunning560;
    private int sandboxTicks560;
    private RazorNativeObjectFrameBridge.Marker selectedObject;
    private int selectionCount749;
    private boolean selectorsReady;
    private Button shareProbeButton;
    private RazorTerrainPreviewSource source;
    private Button speedButton670;
    private boolean speedEnabled670;
    private int[] speedStatus670;
    private TextView status;
    private Button stopButton676;
    private int[][] structureDimensions674;
    private int terrainCols679;
    private int terrainOriginX679;
    private int terrainOriginY679;
    private int terrainRows679;
    private int[] unitInfo669;
    private ImageView unitPortrait676;
    private static final String[] UNIT_NAMES674 = {"Транспортник", "Орнитоптер", "Пехота", "Ракетная пехота", "Солдат", "Гранатомётчик", "Диверсант", "Ракетница", "Девиатор", "Танк", "Тяжёлый танк", "Девастатор", "Соник-танк", "Мотоцикл", "Рейдер", "Квад", "Харвестер", "МСЦ", "Ракета Дворца", "Ракета", "Ракета", "Ракета", "Мини-ракета", "Пуля", "Соник-заряд", "Червь", "Фрегат", "Ураган", "Ракетный квад", "Лазерный танк", "Ховертанк", "Орка"};
    private static final String[] STRUCTURE_NAMES674 = {"Бетон", "Бетон 2×2", "Дворец", "Завод", "Тяжёлый завод", "Высокие технологии", "Дом IX", "WOR", "Строительный двор", "Ветряк", "Казармы", "Космопорт", "Рефинери", "Ремонтный цех", "Стена", "Турель", "Ракетная турель", "Хранилище", "Радар"};
    private volatile float gameViewportRatio675 = 1.0f;
    private final RazorSmoothCamera679 smoothCamera679 = new RazorSmoothCamera679();
    private int classicCursorX678 = -1;
    private int classicCursorY678 = -1;
    private int deployedSource726 = -1;
    private int verifiedStartingCredits743 = -1;
    private int lastHp743 = -1;
    private int lastMaxHp743 = -1;
    private int selectedBuilding674 = -1;
    private int selectedEnemy674 = -1;
    private volatile String artStatus740 = "Графика: ожидаем оригинальный ROM";
    private int lastMissingArtType740 = -1;
    private int lastTurnUnit753 = -1;
    private int lastTurnAngle753 = -1;
    private final RazorRuntimeDiagnostics749 runtimeDiagnostics749 = new RazorRuntimeDiagnostics749();
    private String lastFrameFailure749 = "";
    private String lastCanvasWarning749 = "";
    private final ExecutorService worker = Executors.newSingleThreadExecutor();
    private String lastProbeOutcome = "NOT_RUN";
    private String lastProbeFailure = "";
    private boolean useNativeFrames = true;
    private boolean showObjectMarkers = true;
    private int selectedUnitOrdinal559 = -1;
    private final Handler sandboxClock560 = new Handler(Looper.getMainLooper());
    private String pauseReason740 = "Ожидание запуска";
    private final RazorFramePacer736 razorPacer736 = new RazorFramePacer736();
    private final Choreographer.FrameCallback framePulse634 = new Choreographer.FrameCallback() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda34
        @Override // android.view.Choreographer.FrameCallback
        public final void doFrame(long j) {
            RazorTerrainPreviewActivity.this.deliverFrame634(j);
        }
    };
    private final Runnable sandboxPulse560 = new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda35
        @Override // java.lang.Runnable
        public final void run() {
            RazorTerrainPreviewActivity.this.lambda$new$0();
        }
    };

    private static String labelFrom674(String[] names, int type) {
        return (type < 0 || type >= names.length) ? "Объект " + type : names[type];
    }

    @Override // android.app.Activity
    public void onCreate(Bundle state) {
        int i;
        super.onCreate(state);
        boolean z = false;
        this.profile558 = getIntent() != null && getIntent().getBooleanExtra(EXTRA_GAME_PROFILE558, false);
        if (this.profile558 && getIntent().getBooleanExtra(EXTRA_QUICK_PLAY662, false)) {
            z = true;
        }
        this.quickPlay662 = z;
        if (this.quickPlay662) {
            setRequestedOrientation(6);
        }
        if (this.quickPlay662) {
            i = C0012R.string.razor_quick662_title;
        } else {
            i = this.profile558 ? C0012R.string.razor_map558_title : C0012R.string.razor_preview_title;
        }
        setTitle(i);
        buildUi();
        if (this.quickPlay662) {
            getWindow().setFlags(RazorTerrainAtlas.HEIGHT, RazorTerrainAtlas.HEIGHT);
            installGameSurface674();
        }
        if (this.profile558) {
            int house = getIntent().getIntExtra(EXTRA_HOUSE558, 1);
            int mission = getIntent().getIntExtra(EXTRA_MISSION558, 3);
            if (house >= 0 && house < this.houseSpinner.getCount()) {
                this.houseSpinner.setSelection(house);
            }
            if (mission >= 1 && mission <= this.missionSpinner.getCount()) {
                this.missionSpinner.setSelection(mission - 1);
            }
        }
        openSelectedMod();
    }

    private void buildUi() {
        int i;
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(m17dp(12), m17dp(8), m17dp(12), m17dp(12));
        linearLayout.setBackgroundColor(f56BG);
        setContentView(linearLayout);
        LinearLayout header = horizontal();
        Button back = control(getString(C0012R.string.razor_preview_back));
        back.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda39
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RazorTerrainPreviewActivity.this.lambda$buildUi$1(view);
            }
        });
        header.addView(back, new LinearLayout.LayoutParams(m17dp(76), m17dp(44)));
        TextView title = label(getString(this.quickPlay662 ? C0012R.string.razor_quick662_title : C0012R.string.razor_preview_title), 18, ACCENT);
        title.setGravity(16);
        header.addView(title, new LinearLayout.LayoutParams(0, m17dp(44), 1.0f));
        linearLayout.addView(header);
        if (this.quickPlay662) {
            i = C0012R.string.razor_quick662_banner;
        } else {
            i = this.profile558 ? C0012R.string.razor_map558_banner : C0012R.string.razor_preview_nonready;
        }
        TextView warning = label(getString(i), 12, MUTED);
        linearLayout.addView(warning, new LinearLayout.LayoutParams(-1, -2));
        LinearLayout choices = horizontal();
        this.houseSpinner = selector(getResources().getStringArray(C0012R.array.razor_preview_houses));
        this.missionSpinner = selector(getResources().getStringArray(C0012R.array.razor_preview_missions));
        this.paletteSpinner = selector(getResources().getStringArray(C0012R.array.razor_preview_palettes));
        choices.addView(this.houseSpinner, new LinearLayout.LayoutParams(0, m17dp(48), 1.8f));
        choices.addView(this.missionSpinner, new LinearLayout.LayoutParams(0, m17dp(48), 1.1f));
        choices.addView(this.paletteSpinner, new LinearLayout.LayoutParams(0, m17dp(48), 1.2f));
        linearLayout.addView(choices, new LinearLayout.LayoutParams(-1, -2));
        this.houseSpinner.setSelection(1);
        this.missionSpinner.setSelection(2);
        this.paletteSpinner.setSelection(0);
        AdapterView.OnItemSelectedListener listener = new AdapterView.OnItemSelectedListener() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> p, View v, int position, long id) {
                if (RazorTerrainPreviewActivity.this.selectorsReady && RazorTerrainPreviewActivity.this.source != null && !RazorTerrainPreviewActivity.this.changingMission674) {
                    RazorTerrainPreviewActivity.this.lastProbeEvidenceZip = null;
                    RazorTerrainPreviewActivity.this.lastProbeOutcome = "NOT_RUN";
                    RazorTerrainPreviewActivity.this.lastProbeFailure = "";
                    if (RazorTerrainPreviewActivity.this.shareProbeButton != null) {
                        RazorTerrainPreviewActivity.this.shareProbeButton.setEnabled(RazorTerrainPreviewActivity.this.source != null);
                    }
                    RazorTerrainPreviewActivity.this.requestFrame(p != RazorTerrainPreviewActivity.this.paletteSpinner);
                }
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> p) {
            }
        };
        this.houseSpinner.setOnItemSelectedListener(listener);
        this.missionSpinner.setOnItemSelectedListener(listener);
        this.paletteSpinner.setOnItemSelectedListener(listener);
        this.selectorsReady = true;
        this.progress = new ProgressBar(this);
        this.progress.setIndeterminate(true);
        linearLayout.addView(this.progress, new LinearLayout.LayoutParams(-1, m17dp(3)));
        this.mapView = new MapCanvas();
        linearLayout.addView(this.mapView, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        this.coordinates = label("", 12, MUTED);
        this.coordinates.setGravity(17);
        linearLayout.addView(this.coordinates, new LinearLayout.LayoutParams(-1, m17dp(27)));
        LinearLayout buttons = horizontal();
        Button zoomIn = control(getString(C0012R.string.razor_preview_zoom_in));
        Button home = control(getString(C0012R.string.razor_preview_center));
        Button zoomOut = control(getString(C0012R.string.razor_preview_zoom_out));
        zoomIn.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda49
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RazorTerrainPreviewActivity.this.lambda$buildUi$2(view);
            }
        });
        home.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda50
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RazorTerrainPreviewActivity.this.lambda$buildUi$3(view);
            }
        });
        zoomOut.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda51
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RazorTerrainPreviewActivity.this.lambda$buildUi$4(view);
            }
        });
        if (this.quickPlay662) {
            this.followSelected663 = false;
            this.followButton663 = control(getString(C0012R.string.razor_follow663_on));
            this.followButton663.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda52
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RazorTerrainPreviewActivity.this.lambda$buildUi$5(view);
                }
            });
        }
        buttons.addView(zoomIn, new LinearLayout.LayoutParams(0, m17dp(47), 1.0f));
        buttons.addView(home, new LinearLayout.LayoutParams(0, m17dp(47), 1.0f));
        buttons.addView(zoomOut, new LinearLayout.LayoutParams(0, m17dp(47), 1.0f));
        linearLayout.addView(buttons);
        if (this.quickPlay662 && this.followButton663 != null) {
            linearLayout.addView(this.followButton663, new LinearLayout.LayoutParams(-1, m17dp(39)));
        }
        if (this.quickPlay662) {
            this.speedButton670 = control(getString(C0012R.string.razor_speed670_off));
            this.speedButton670.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda53
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RazorTerrainPreviewActivity.this.lambda$buildUi$6(view);
                }
            });
            linearLayout.addView(this.speedButton670, new LinearLayout.LayoutParams(-1, m17dp(39)));
        }
        this.nativeModeButton = control(getString(C0012R.string.razor_preview_native_on));
        this.nativeModeButton.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda54
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RazorTerrainPreviewActivity.this.lambda$buildUi$7(view);
            }
        });
        linearLayout.addView(this.nativeModeButton, new LinearLayout.LayoutParams(-1, m17dp(42)));
        if (this.profile558) {
            this.nativeModeButton.setVisibility(8);
        }
        this.objectModeButton = control(getString(C0012R.string.razor_preview_objects_on));
        this.objectModeButton.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda56
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RazorTerrainPreviewActivity.this.lambda$buildUi$8(view);
            }
        });
        linearLayout.addView(this.objectModeButton, new LinearLayout.LayoutParams(-1, m17dp(42)));
        if (this.quickPlay662) {
            this.objectModeButton.setVisibility(8);
        }
        this.objectDetails = label(getString(C0012R.string.razor_preview_object_hint), 12, MUTED);
        linearLayout.addView(this.objectDetails, new LinearLayout.LayoutParams(-1, -2));
        if (this.profile558) {
            this.mapHint559 = label(getString(C0012R.string.razor_map559_hint), 12, MUTED);
            linearLayout.addView(this.mapHint559, new LinearLayout.LayoutParams(-1, -2));
            LinearLayout tools559 = horizontal();
            this.mapAdvance559 = control(getString(C0012R.string.razor_map559_step));
            this.mapCancel559 = control(getString(C0012R.string.razor_map559_cancel));
            this.mapAdvance559.setEnabled(false);
            this.mapCancel559.setEnabled(false);
            this.mapAdvance559.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda57
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RazorTerrainPreviewActivity.this.lambda$buildUi$9(view);
                }
            });
            this.mapCancel559.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda58
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RazorTerrainPreviewActivity.this.lambda$buildUi$10(view);
                }
            });
            this.sandboxButton560 = control(getString(C0012R.string.razor_auto560_start));
            this.sandboxButton560.setEnabled(false);
            this.sandboxButton560.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda40
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RazorTerrainPreviewActivity.this.lambda$buildUi$11(view);
                }
            });
            tools559.addView(this.sandboxButton560, new LinearLayout.LayoutParams(0, m17dp(46), 1.0f));
            if (this.quickPlay662) {
                this.mapAdvance559.setVisibility(8);
            }
            tools559.addView(this.mapCancel559, new LinearLayout.LayoutParams(0, m17dp(46), 1.0f));
            linearLayout.addView(tools559);
            this.frameButton634 = control(getString(C0012R.string.razor_frame634_start));
            this.frameButton634.setEnabled(false);
            this.frameButton634.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda41
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RazorTerrainPreviewActivity.this.lambda$buildUi$12(view);
                }
            });
            tools559.addView(this.frameButton634, new LinearLayout.LayoutParams(0, m17dp(46), 1.0f));
            this.frameStatus634 = label(getString(C0012R.string.razor_frame634_wait), 12, MUTED);
            linearLayout.addView(this.frameStatus634, new LinearLayout.LayoutParams(-1, -2));
            if (this.quickPlay662) {
                this.frameButton634.setVisibility(8);
                this.frameStatus634.setVisibility(8);
            }
            Button movementTraceButton562 = control(getString(C0012R.string.razor_trace562_button));
            movementTraceButton562.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda42
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RazorTerrainPreviewActivity.this.lambda$buildUi$13(view);
                }
            });
            linearLayout.addView(movementTraceButton562, new LinearLayout.LayoutParams(-1, m17dp(42)));
            if (this.quickPlay662) {
                movementTraceButton562.setVisibility(8);
            }
            this.lifecycleDemoButton569 = control(getString(C0012R.string.razor_demo569_create));
            this.lifecycleDemoButton569.setEnabled(false);
            this.lifecycleDemoButton569.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda43
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RazorTerrainPreviewActivity.this.lambda$buildUi$14(view);
                }
            });
            linearLayout.addView(this.lifecycleDemoButton569, new LinearLayout.LayoutParams(-1, m17dp(42)));
            if (this.quickPlay662) {
                this.lifecycleDemoButton569.setVisibility(8);
            }
            this.refineryButton570 = control(getString(C0012R.string.razor_order571_start));
            this.refineryButton570.setEnabled(false);
            this.refineryButton570.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda45
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RazorTerrainPreviewActivity.this.lambda$buildUi$15(view);
                }
            });
            linearLayout.addView(this.refineryButton570, new LinearLayout.LayoutParams(-1, m17dp(42)));
            if (this.quickPlay662) {
                this.refineryButton570.setVisibility(8);
            }
            this.financeButton576 = control(getString(C0012R.string.razor_finance576_start));
            this.financeButton576.setEnabled(false);
            this.financeButton576.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda46
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RazorTerrainPreviewActivity.this.lambda$buildUi$16(view);
                }
            });
            linearLayout.addView(this.financeButton576, new LinearLayout.LayoutParams(-1, m17dp(42)));
            if (this.quickPlay662) {
                this.financeButton576.setVisibility(8);
            }
            this.buildingFacts572 = label(getString(C0012R.string.razor_stats572_wait), 12, MUTED);
            linearLayout.addView(this.buildingFacts572, new LinearLayout.LayoutParams(-1, -2));
            if (this.quickPlay662) {
                this.buildingFacts572.setVisibility(8);
            }
            this.economyFacts573 = label(getString(C0012R.string.razor_economy573_wait), 12, MUTED);
            linearLayout.addView(this.economyFacts573, new LinearLayout.LayoutParams(-1, -2));
            if (this.quickPlay662) {
                this.economyFacts573.setVisibility(8);
            }
        }
        Button probeButton = control(getString(C0012R.string.razor_boot_probe_button));
        probeButton.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda47
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RazorTerrainPreviewActivity.this.lambda$buildUi$17(view);
            }
        });
        linearLayout.addView(probeButton, new LinearLayout.LayoutParams(-1, m17dp(42)));
        if (this.profile558) {
            probeButton.setVisibility(8);
        }
        this.shareProbeButton = control(getString(C0012R.string.razor_probe_share));
        this.shareProbeButton.setEnabled(false);
        this.shareProbeButton.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda48
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RazorTerrainPreviewActivity.this.lambda$buildUi$18(view);
            }
        });
        linearLayout.addView(this.shareProbeButton, new LinearLayout.LayoutParams(-1, m17dp(42)));
        if (this.profile558) {
            this.shareProbeButton.setVisibility(8);
        }
        this.bootStatus = label(getString(C0012R.string.razor_boot_probe_hint), 12, MUTED);
        linearLayout.addView(this.bootStatus, new LinearLayout.LayoutParams(-1, -2));
        if (this.profile558) {
            this.bootStatus.setVisibility(8);
        }
        this.emcStatus = label(getString(C0012R.string.razor_emc_audit_waiting), 12, MUTED);
        linearLayout.addView(this.emcStatus, new LinearLayout.LayoutParams(-1, -2));
        if (this.profile558) {
            this.emcStatus.setVisibility(8);
        }
        this.status = label(getString(C0012R.string.razor_preview_loading), 12, TEXT);
        this.status.setMinLines(2);
        linearLayout.addView(this.status, new LinearLayout.LayoutParams(-1, -2));
        if (this.quickPlay662) {
            this.quickHud662 = label(getString(C0012R.string.razor_quick662_wait), 12, ACCENT);
            linearLayout.addView(this.quickHud662, new LinearLayout.LayoutParams(-1, -2));
            this.mapHint559.setText(C0012R.string.razor_quick662_howto);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildUi$1(View v) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildUi$2(View v) {
        if (this.navigator == null || !this.navigator.zoomIn()) {
            return;
        }
        requestFrame(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildUi$3(View v) {
        if (this.navigator != null) {
            this.navigator.center();
            if (this.quickPlay662) {
                this.smoothCamera679.reset(this.navigator.m18x(), this.navigator.m19y());
            }
            requestFrame(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildUi$4(View v) {
        if (this.navigator == null || !this.navigator.zoomOut()) {
            return;
        }
        requestFrame(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildUi$5(View v) {
        this.followSelected663 = !this.followSelected663;
        this.runtimeDiagnostics749.event("FOLLOW_TOGGLE", "enabled=" + this.followSelected663 + " selected=" + this.selectedUnitOrdinal559);
        this.followButton663.setText(this.followSelected663 ? C0012R.string.razor_follow663_on : C0012R.string.razor_follow663_off);
        if (this.followSelected663 && this.selectedUnitOrdinal559 >= 0 && this.campaignMapFrame559 != null && this.navigator != null && this.selectedUnitOrdinal559 < this.campaignMapFrame559.units.length) {
            RazorCampaignMapSnapshot559.Unit u = this.campaignMapFrame559.units[this.selectedUnitOrdinal559];
            if (this.navigator.focus(u.f28x, u.f29y)) {
                this.smoothCamera679.reset(this.navigator.m18x(), this.navigator.m19y());
                requestFrame(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildUi$6(View v) {
        toggleSpeed670();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildUi$7(View v) {
        this.useNativeFrames = !this.useNativeFrames;
        this.nativeModeButton.setText(this.useNativeFrames ? C0012R.string.razor_preview_native_on : C0012R.string.razor_preview_native_off);
        requestFrame(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildUi$8(View v) {
        this.showObjectMarkers = !this.showObjectMarkers;
        this.objectModeButton.setText(this.showObjectMarkers ? C0012R.string.razor_preview_objects_on : C0012R.string.razor_preview_objects_off);
        this.selectedObject = null;
        this.objectFrame = null;
        requestFrame(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildUi$9(View v) {
        if (this.selectedUnitOrdinal559 >= 0) {
            requestMapCommand559(2, this.selectedUnitOrdinal559, 0, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildUi$10(View v) {
        if (this.selectedUnitOrdinal559 >= 0) {
            requestMapCommand559(3, this.selectedUnitOrdinal559, 0, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildUi$11(View v) {
        toggleSandbox560();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildUi$12(View v) {
        toggleFrame634();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildUi$13(View v) {
        shareMovementTrace562();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildUi$14(View v) {
        if (this.demoHandle569 != 0) {
            requestLifecycleDemo569(3, 0, 0);
        } else {
            requestLifecycleDemo569(1, 0, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildUi$15(View v) {
        if (this.construction571 == null) {
            return;
        }
        if (this.construction571.phase == 0) {
            requestConstruction571(1, 0, 0);
            return;
        }
        if (this.construction571.phase == 2) {
            if (this.finance576 != null && this.finance576.phase != 3) {
                requestConstruction571(5, 0, 0);
                return;
            } else {
                requestConstruction571(3, 0, 0);
                return;
            }
        }
        requestConstruction571(5, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildUi$16(View v) {
        requestFinance576();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildUi$17(View v) {
        requestBootProbe();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildUi$18(View v) {
        shareRazorDiagnostics();
    }

    private void installGameSurface674() {
        ViewGroup parent = (ViewGroup) this.mapView.getParent();
        parent.removeView(this.mapView);
        FrameLayout root = new FrameLayout(this);
        root.setBackgroundColor(-16316151);
        root.addView(this.mapView, new FrameLayout.LayoutParams(-1, -1));
        int screenW = getResources().getDisplayMetrics().widthPixels;
        int screenH = getResources().getDisplayMetrics().heightPixels;
        int sideWidth = Math.min((int) (screenW * 0.4f), Math.max(m17dp(145), Math.round(screenH * 0.45f)));
        float hs = sideWidth / 108.0f;
        FrameLayout hud = new FrameLayout(this);
        hud.setBackgroundColor(0);
        View hudFrame = new View(this) { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity.2
            private final Paint paint = new Paint(1);

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                float w = getWidth();
                float h = getHeight();
                float k = w / 108.0f;
                this.paint.setStyle(Paint.Style.FILL);
                this.paint.setColor(-1777330401);
                canvas.drawRect(0.0f, 0.0f, w, k * 20.0f, this.paint);
                this.paint.setColor(-1911811817);
                canvas.drawRect(0.0f, k * 20.0f, w, k * 66.0f, this.paint);
                this.paint.setColor(-1777725675);
                canvas.drawRect(0.0f, k * 66.0f, w, k * 157.0f, this.paint);
                this.paint.setColor(1611140113);
                canvas.drawRect(0.0f, k * 157.0f, w, h, this.paint);
                this.paint.setStyle(Paint.Style.STROKE);
                this.paint.setStrokeWidth(Math.max(1.0f, 0.75f * k));
                this.paint.setColor(-1104456066);
                canvas.drawLine(0.0f, 0.0f, 0.0f, h, this.paint);
                this.paint.setColor(-851810934);
                canvas.drawLine(0.0f, k * 20.0f, w, k * 20.0f, this.paint);
                canvas.drawLine(0.0f, k * 66.0f, w, k * 66.0f, this.paint);
                canvas.drawLine(0.0f, k * 157.0f, w, k * 157.0f, this.paint);
            }
        };
        hud.addView(hudFrame, new FrameLayout.LayoutParams(-1, -1));
        TextView creditsLabel = label("КРЕДИТЫ", 10, -1450310);
        creditsLabel.setTypeface(Typeface.MONOSPACE, 1);
        this.creditsText743 = label("—", 10, -1450310);
        this.creditsText743.setTypeface(Typeface.MONOSPACE, 1);
        this.creditsText743.setGravity(21);
        creditsLabel.setTextSize(0, hs * 9.4f);
        this.creditsText743.setTextSize(0, 9.4f * hs);
        addClassicHud744(hud, creditsLabel, 4.0f, 3.0f, 58.0f, 14.0f, hs);
        addClassicHud744(hud, this.creditsText743, 65.0f, 3.0f, 36.0f, 14.0f, hs);
        this.unitPortrait676 = new ImageView(this);
        this.unitPortrait676.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.unitPortrait676.setBackgroundColor(0);
        addClassicHud744(hud, this.unitPortrait676, 4.0f, 24.0f, 27.0f, 27.0f, hs);
        this.gameBar674 = label("Выбери объект", 11, -2302762);
        this.gameBar674.setTextSize(0, 5.5f * hs);
        this.gameBar674.setSingleLine(true);
        this.gameBar674.setEllipsize(TextUtils.TruncateAt.END);
        addClassicHud744(hud, this.gameBar674, 34.0f, 24.0f, 72.0f, 9.0f, hs);
        this.hpTrack743 = new FrameLayout(this) { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity.3
            private final Paint barPaint = new Paint(1);

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                this.barPaint.setStyle(Paint.Style.STROKE);
                this.barPaint.setStrokeWidth(Math.max(1.0f, getWidth() / 72.0f));
                this.barPaint.setColor(-9930365);
                canvas.drawRect(0.5f, 0.5f, getWidth() - 0.5f, getHeight() - 0.5f, this.barPaint);
                if (RazorTerrainPreviewActivity.this.lastMaxHp743 > 0) {
                    this.barPaint.setStyle(Paint.Style.FILL);
                    this.barPaint.setTextAlign(Paint.Align.CENTER);
                    this.barPaint.setColor(-1);
                    this.barPaint.setTextSize((getWidth() * 4.5f) / 72.0f);
                    canvas.drawText(RazorTerrainPreviewActivity.this.lastHp743 + "/" + RazorTerrainPreviewActivity.this.lastMaxHp743, getWidth() / 2.0f, getHeight() - ((getWidth() * 2.0f) / 72.0f), this.barPaint);
                }
            }
        };
        this.hpTrack743.setBackgroundColor(-14477546);
        this.hpFill743 = new View(this);
        this.hpFill743.setBackgroundColor(-9982096);
        this.hpTrack743.addView(this.hpFill743, new FrameLayout.LayoutParams(0, -1, 3));
        addClassicHud744(hud, this.hpTrack743, 34.0f, 33.5f, 72.0f, 8.0f, hs);
        this.hpText743 = label("HP —", 9, -4009777);
        this.hpText743.setTextSize(0, 4.7f * hs);
        addClassicHud744(hud, this.hpText743, 34.0f, 43.0f, 72.0f, 7.0f, hs);
        Button unselect743 = classicCommand744("СНЯТЬ", false, hs);
        unselect743.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RazorTerrainPreviewActivity.this.lambda$installGameSurface674$19(view);
            }
        });
        addClassicHud744(hud, unselect743, 34.0f, 52.0f, 35.0f, 12.0f, hs);
        this.stopButton676 = classicCommand744("СТОП", true, hs);
        this.stopButton676.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda22
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RazorTerrainPreviewActivity.this.lambda$installGameSurface674$20(view);
            }
        });
        addClassicHud744(hud, this.stopButton676, 71.0f, 52.0f, 35.0f, 12.0f, hs);
        this.deployButton726 = classicCommand744("РАЗВЕРН.", false, hs);
        this.deployButton726.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda33
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RazorTerrainPreviewActivity.this.lambda$installGameSurface674$21(view);
            }
        });
        addClassicHud744(hud, this.deployButton726, 71.0f, 52.0f, 35.0f, 12.0f, hs);
        root.addView(hud, new FrameLayout.LayoutParams(sideWidth, -1, 53));
        Button worldMenu = control("☰");
        worldMenu.setContentDescription("Меню игры Razor");
        worldMenu.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda44
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RazorTerrainPreviewActivity.this.lambda$installGameSurface674$22(view);
            }
        });
        worldMenu.setBackgroundTintList(ColorStateList.valueOf(-1290065868));
        FrameLayout.LayoutParams menuLayout = new FrameLayout.LayoutParams(m17dp(42), m17dp(40), 51);
        menuLayout.leftMargin = m17dp(6);
        menuLayout.topMargin = m17dp(6);
        root.addView(worldMenu, menuLayout);
        setContentView(root);
        Log.i(TAG, "RAZOR_7441_HUD_ACTIVE 0.4.768");
        updateGameBar674();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$installGameSurface674$19(View v) {
        this.selectedUnitOrdinal559 = -1;
        this.selectedEnemy674 = -1;
        this.selectedBuilding674 = -1;
        this.routeWitness664 = null;
        updateGameBar674();
        if (this.mapView != null) {
            this.mapView.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$installGameSurface674$20(View v) {
        if (this.campaignMapFrame559 != null && this.selectedUnitOrdinal559 >= 0) {
            requestMapCommand559(3, this.selectedUnitOrdinal559, 0, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$installGameSurface674$21(View v) {
        requestDeployMcv726();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$installGameSurface674$22(View v) {
        showPlayMenu676();
    }

    private void addClassicHud744(FrameLayout hud, View child, float x, float y, float width, float height, float scale) {
        FrameLayout.LayoutParams p = new FrameLayout.LayoutParams(Math.max(1, Math.round(width * scale)), Math.max(1, Math.round(height * scale)));
        p.leftMargin = Math.round(x * scale);
        p.topMargin = Math.round(y * scale);
        hud.addView(child, p);
    }

    private Button classicCommand744(String text, boolean stop, float scale) {
        Button b = control(text);
        b.setAllCaps(false);
        b.setPadding(0, 0, 0, 0);
        b.setMinHeight(0);
        b.setMinimumHeight(0);
        b.setMinWidth(0);
        b.setMinimumWidth(0);
        b.setTextSize(0, 5.0f * scale);
        b.setTextColor(stop ? -1141896 : -2694681);
        b.setBackgroundTintList(ColorStateList.valueOf(stop ? -935126249 : -1290260419));
        return b;
    }

    private void addHudDivider742(LinearLayout panel) {
        View divider = new View(this);
        divider.setBackgroundColor(-1237686902);
        panel.addView(divider, new LinearLayout.LayoutParams(-1, m17dp(1)));
    }

    private void requestDeployMcv726() {
        if (this.destroyed || !this.quickPlay662 || this.mapActionPending559 || this.selectedUnitOrdinal559 < 0 || this.campaignMapFrame559 == null) {
            return;
        }
        final boolean runningAtDeploy729 = this.sandboxRunning560;
        final int ordinal = this.selectedUnitOrdinal559;
        if (ordinal >= this.campaignMapFrame559.units.length || this.campaignMapFrame559.units[ordinal].retired || this.campaignMapFrame559.units[ordinal].type != 17 || this.campaignMapFrame559.units[ordinal].owner != 1 || this.houseSpinner.getSelectedItemPosition() != 1) {
            return;
        }
        final RazorCampaignNativeSession session = this.campaignMapSession559;
        final int generation = this.requestedGeneration;
        this.mapActionPending559 = true;
        updateGameBar674();
        this.worker.execute(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                RazorTerrainPreviewActivity.this.lambda$requestDeployMcv726$24(session, ordinal, generation, runningAtDeploy729);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestDeployMcv726$24(final RazorCampaignNativeSession session, final int ordinal, final int generation, final boolean runningAtDeploy729) {
        int[] report;
        String error;
        RazorCampaignMapSnapshot559 refreshed;
        if (session != null) {
            try {
            } catch (IOException | LinkageError | RuntimeException ex) {
                String error2 = ex.getMessage() == null ? "MCV deploy rejected" : ex.getMessage();
                report = null;
                error = error2;
                refreshed = null;
            }
            if (this.campaignMapSession559 == session && session.isOpen()) {
                int[] report2 = session.deployMcv726(ordinal);
                RazorCampaignMapSnapshot559 refreshed2 = session.mapSnapshot559();
                report = report2;
                error = null;
                refreshed = refreshed2;
                final int[] result = report;
                final String failure = error;
                final RazorCampaignMapSnapshot559 newFrame = refreshed;
                runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda60
                    @Override // java.lang.Runnable
                    public final void run() {
                        RazorTerrainPreviewActivity.this.lambda$requestDeployMcv726$23(generation, session, result, newFrame, ordinal, runningAtDeploy729, failure);
                    }
                });
                return;
            }
        }
        throw new IOException("Razor session unavailable");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestDeployMcv726$23(int generation, RazorCampaignNativeSession session, int[] result, RazorCampaignMapSnapshot559 newFrame, int ordinal, boolean runningAtDeploy729, String failure) {
        this.mapActionPending559 = false;
        if (this.destroyed || isFinishing() || this.requestedGeneration != generation || this.campaignMapSession559 != session) {
            return;
        }
        if (result != null && newFrame != null) {
            this.campaignMapFrame559 = newFrame;
            this.deployedSource726 = ordinal;
            this.selectedUnitOrdinal559 = -1;
            this.selectedEnemy674 = -1;
            this.routeWitness664 = null;
            this.selectedBuilding674 = -1;
            int n = 0;
            while (true) {
                if (n >= newFrame.buildings.length) {
                    break;
                }
                RazorCampaignMapSnapshot559.Building b = newFrame.buildings[n];
                if (b.owner != 1 || b.type != 8 || b.f26x != result[4] || b.f27y != result[5]) {
                    n++;
                } else {
                    this.selectedBuilding674 = b.ordinal;
                    break;
                }
            }
            if (this.mapHint559 != null) {
                this.mapHint559.setText("Construction Yard создан · MCV убран · BUILD.EMC активен" + (runningAtDeploy729 ? " · цикл не прерывался" : " · пауза сохранена"));
            }
            if (this.objectDetails != null && this.selectedBuilding674 >= 0) {
                this.objectDetails.setText("Construction Yard · " + result[4] + "," + result[5]);
            }
            if (this.mapView != null) {
                this.mapView.invalidate();
            }
        } else if (this.mapHint559 != null) {
            this.mapHint559.setText(failure != null ? failure : "MCV: нужен свободный каменистый участок 2×2 клетки (предварительное правило)");
        }
        updateGameBar674();
    }

    private void focusSelected676() {
        if (this.navigator == null) {
            return;
        }
        RazorCampaignMapSnapshot559 s = this.campaignMapFrame559;
        if (s == null || this.selectedUnitOrdinal559 < 0 || this.selectedUnitOrdinal559 >= s.units.length) {
            this.navigator.center();
        } else {
            RazorCampaignMapSnapshot559.Unit u = s.units[this.selectedUnitOrdinal559];
            this.navigator.focus(u.f28x, u.f29y);
        }
        this.smoothCamera679.reset(this.navigator.m18x(), this.navigator.m19y());
        requestFrame(false);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (!this.quickPlay662) {
            super.onBackPressed();
        } else {
            showPlayMenu676();
        }
    }

    private void showPlayMenu676() {
        Log.i(TAG, "RAZOR_7441_GAME_MENU 0.4.768");
        String[] items = {"Продолжить игру", "Пауза", "Центрировать камеру", "Выбрать миссию", "Подключить графику Dune (ROM)", "Диагностика Razor", "Отправить диагностику ZIP", "Выйти в лаунчер"};
        new AlertDialog.Builder(this).setTitle("Dune Razor 0.4.768").setItems(items, new DialogInterface.OnClickListener() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda9
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                RazorTerrainPreviewActivity.this.lambda$showPlayMenu676$25(dialogInterface, i);
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPlayMenu676$25(DialogInterface dialog, int which) {
        switch (which) {
            case 0:
                if (!this.sandboxRunning560 && this.campaignMapFrame559 != null) {
                    toggleSandbox560();
                    break;
                }
                break;
            case 1:
                if (!this.sandboxRunning560) {
                    this.pauseReason740 = "Нажата кнопка Пауза";
                    updateGameBar674();
                    break;
                } else {
                    toggleSandbox560();
                    break;
                }
            case 2:
                focusSelected676();
                break;
            case 3:
                showMissionSelector674();
                break;
            case 4:
                chooseRazorArtRom741();
                break;
            case 5:
                showRazorDiagnostics741();
                break;
            case 6:
                shareRuntimeDiagnostics749();
                break;
            case 7:
                finish();
                break;
        }
    }

    private void showRazorDiagnostics741() {
        StringBuilder text = new StringBuilder();
        text.append("C-проходов: ").append(this.sandboxTicks560).append("\nЧастота: ").append(Math.round(this.observedCps736)).append(" C/с").append("\nПоследний пакет: ").append(this.burstFrames736).append("\nТик C подтверждён: ").append(this.currentProof729 == null ? 0 : this.currentProof729.retained).append("\n\nC — все проходы симуляции, включая ожидание. ").append("Подтверждённый тик C — изменение состояния, ").append("сохранённое на следующем проходе. ").append("Когда мир не меняется, этот счётчик может не расти.");
        if (this.pauseReason740 != null && !this.sandboxRunning560) {
            text.append("\n\nПауза: ").append(this.pauseReason740);
        }
        if (this.lastPulseFailure729 != null) {
            text.append("\n\nОшибка цикла: ").append(this.lastPulseFailure729);
        }
        text.append("\n\n").append(this.artStatus740);
        if (this.artFrameError740 != null) {
            text.append("\n").append(this.artFrameError740);
        }
        if (this.buildStatus715 != null && this.buildStatus715.length > 0) {
            text.append("\nBUILD.EMC: ").append(Arrays.toString(this.buildStatus715));
        }
        new AlertDialog.Builder(this).setTitle("Диагностика Razor · 0.4.768").setMessage(text.toString()).setPositiveButton("Закрыть", (DialogInterface.OnClickListener) null).setNeutralButton("ROM графики", new DialogInterface.OnClickListener() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda30
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                RazorTerrainPreviewActivity.this.lambda$showRazorDiagnostics741$26(dialogInterface, i);
            }
        }).setNegativeButton("Отправить ZIP", new DialogInterface.OnClickListener() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda31
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                RazorTerrainPreviewActivity.this.lambda$showRazorDiagnostics741$27(dialogInterface, i);
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showRazorDiagnostics741$26(DialogInterface d, int w) {
        chooseRazorArtRom741();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showRazorDiagnostics741$27(DialogInterface d, int w) {
        shareRuntimeDiagnostics749();
    }

    private String captureRuntimeState749() {
        StringBuilder b = new StringBuilder(1200);
        b.append("Demulation Razor ").append(BuildConfig.VERSION_NAME).append('\n');
        b.append("time=").append(new Date()).append('\n');
        b.append("quickPlay=").append(this.quickPlay662).append(" profile=").append(this.profile558).append('\n');
        b.append("house=").append(this.houseSpinner == null ? -1 : this.houseSpinner.getSelectedItemPosition()).append(" mission=").append(this.missionSpinner == null ? -1 : this.missionSpinner.getSelectedItemPosition() + 1).append('\n');
        b.append("romVariant=").append(this.source != null ? this.source.audit.romVariant() : -1).append(" fingerprint=").append(this.source == null ? "not-loaded" : this.source.sha256).append('\n');
        b.append("selectedUnit=").append(this.selectedUnitOrdinal559).append(" selectedBuilding=").append(this.selectedBuilding674).append(" selectedEnemy=").append(this.selectedEnemy674).append('\n');
        b.append("selectionCount=").append(this.selectionCount749).append(" mapActionPending=").append(this.mapActionPending559).append(" generation=").append(this.requestedGeneration).append('\n');
        b.append("C=").append(this.sandboxTicks560).append(" CperSec=").append(this.observedCps736).append(" retained=").append(this.currentProof729 == null ? 0 : this.currentProof729.retained).append(" lastBatch=").append(this.burstFrames736).append('\n');
        b.append("running=").append(this.sandboxRunning560).append(" inFlight=").append(this.sandboxInFlight560).append(" resumeAfterBackground=").append(this.resumeAfterBackground741).append('\n');
        b.append("pauseReason=").append(this.pauseReason740).append('\n');
        b.append("lastCycleError=").append(this.lastPulseFailure729).append('\n');
        b.append("lastFrameError=").append(this.lastFrameFailure749).append('\n');
        b.append("frameSuccess=").append(this.renderSuccess749).append(" frameFailures=").append(this.renderFailure749).append('\n');
        b.append("graphics=").append(this.artStatus740).append(" artError=").append(this.artFrameError740).append('\n');
        if (this.campaignMapFrame559 != null) {
            b.append("units=").append(this.campaignMapFrame559.units.length).append(" buildings=").append(this.campaignMapFrame559.buildings.length).append('\n');
            if (this.selectedUnitOrdinal559 >= 0 && this.selectedUnitOrdinal559 < this.campaignMapFrame559.units.length) {
                RazorCampaignMapSnapshot559.Unit u = this.campaignMapFrame559.units[this.selectedUnitOrdinal559];
                b.append("selectedType=").append(u.type).append(" owner=").append(u.owner).append(" pos=").append(u.f28x).append(',').append(u.f29y).append(" retired=").append(u.retired).append('\n');
            }
        } else {
            b.append("mapFrame=NULL\n");
        }
        return b.toString();
    }

    private String captureFrameState749() {
        String str;
        StringBuilder b = new StringBuilder();
        Bitmap bmp = this.canvasBitmap;
        StringBuilder append = b.append("bitmap=");
        if (bmp == null) {
            str = "NULL";
        } else {
            str = bmp.isRecycled() ? "RECYCLED" : bmp.getWidth() + "x" + bmp.getHeight();
        }
        append.append(str).append('\n');
        b.append("terrain origin=").append(this.terrainOriginX679).append(',').append(this.terrainOriginY679).append(" extent=").append(this.terrainCols679).append('x').append(this.terrainRows679).append('\n');
        b.append("viewport=").append(this.classicViewWidth678).append('x').append(this.classicViewHeight678).append(" ratio=").append(this.gameViewportRatio675).append('\n');
        b.append("camera=").append(this.smoothCamera679.f52x).append(',').append(this.smoothCamera679.f53y).append(" mapView=").append(this.mapView == null ? "NULL" : this.mapView.getWidth() + "x" + this.mapView.getHeight()).append('\n');
        b.append("navigator=").append(this.navigator != null ? this.navigator.m18x() + "," + this.navigator.m19y() + " " + this.navigator.tiles() + "x" + this.navigator.rows() : "NULL").append('\n');
        b.append("lastCanvasWarning=").append(this.lastCanvasWarning749).append('\n');
        if (bmp != null && !bmp.isRecycled()) {
            int black = 0;
            int samples = 0;
            for (int y = 1; y <= 5; y++) {
                for (int x = 1; x <= 5; x++) {
                    try {
                        int color = bmp.getPixel((bmp.getWidth() * x) / 6, (bmp.getHeight() * y) / 6);
                        int r = (color >>> 16) & 255;
                        int g = (color >>> 8) & 255;
                        int blue = color & 255;
                        if (r < 16 && g < 16 && blue < 16) {
                            black++;
                        }
                        samples++;
                    } catch (RuntimeException ex) {
                        b.append("pixelSampleError=").append(ex.getClass().getSimpleName()).append('\n');
                    }
                }
            }
            b.append("darkBitmapSamples=").append(black).append('/').append(samples).append('\n');
        }
        return b.toString();
    }

    private void shareRuntimeDiagnostics749() {
        if (this.exportingDiagnostics749) {
            return;
        }
        this.exportingDiagnostics749 = true;
        this.runtimeDiagnostics749.event("RAZOR_749_RUNTIME_DIAGNOSTICS", "User requested diagnostic archive");
        final String state = captureRuntimeState749();
        final String frame = captureFrameState749();
        new Thread(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                RazorTerrainPreviewActivity.this.lambda$shareRuntimeDiagnostics749$29(state, frame);
            }
        }, "razor-diag-749").start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$shareRuntimeDiagnostics749$29(String state, String frame) {
        File result = null;
        Exception failure = null;
        try {
            File dir = getExternalFilesDir("diagnostics");
            if (dir == null) {
                dir = new File(getFilesDir(), "diagnostic_exports");
            }
            result = this.runtimeDiagnostics749.createZip(dir, state, frame);
        } catch (Exception ex) {
            failure = ex;
            this.runtimeDiagnostics749.error("ZIP_EXPORT", ex);
        }
        final File file = result;
        final Exception error = failure;
        runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda37
            @Override // java.lang.Runnable
            public final void run() {
                RazorTerrainPreviewActivity.this.lambda$shareRuntimeDiagnostics749$28(error, file);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$shareRuntimeDiagnostics749$28(Exception error, File file) {
        this.exportingDiagnostics749 = false;
        if (this.destroyed || isFinishing()) {
            return;
        }
        if (error != null) {
            new AlertDialog.Builder(this).setTitle("Диагностика Razor").setMessage("Не удалось создать ZIP: " + error.getClass().getSimpleName() + " — " + error.getMessage()).setPositiveButton("OK", (DialogInterface.OnClickListener) null).show();
        } else if (file != null) {
            openRazorShareSheet(file);
        }
    }

    private void chooseRazorArtRom741() {
        Intent choose = new Intent("android.intent.action.OPEN_DOCUMENT");
        choose.addCategory("android.intent.category.OPENABLE");
        choose.setType("*/*");
        choose.addFlags(65);
        try {
            startActivityForResult(choose, REQUEST_RAZOR_ART_ROM741);
        } catch (RuntimeException ex) {
            new AlertDialog.Builder(this).setMessage("Не удалось открыть выбор ROM: " + ex.getMessage()).setPositiveButton("OK", (DialogInterface.OnClickListener) null).show();
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode != REQUEST_RAZOR_ART_ROM741 || resultCode != -1 || data == null || data.getData() == null || this.destroyed) {
            return;
        }
        final Uri uri = data.getData();
        boolean durableGrant741 = false;
        try {
            getContentResolver().takePersistableUriPermission(uri, 1);
            durableGrant741 = true;
        } catch (IllegalArgumentException | SecurityException ex) {
            Log.w(TAG, "Razor art URI permission is session-only", ex);
        }
        final boolean persist741 = durableGrant741;
        this.artStatus740 = "Подготавливается графика выбранной Dune…";
        updateGameBar674();
        this.worker.execute(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                RazorTerrainPreviewActivity.this.lambda$onActivityResult$31(uri, persist741);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Not initialized variable reg: 6, insn: 0x006b: MOVE (r1 I:??[OBJECT, ARRAY]) = (r6 I:??[OBJECT, ARRAY] A[D('decoded' com.ahsim.demulation.GenesisObjectArt)]), block:B:39:0x006b */
    public /* synthetic */ void lambda$onActivityResult$31(final Uri uri, final boolean persist741) {
        GenesisObjectArt decoded;
        InputStream in;
        GenesisObjectArt decoded2;
        Throwable th;
        GenesisObjectArt decoded3 = null;
        String error = null;
        try {
            in = getContentResolver().openInputStream(uri);
            try {
                try {
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException | RuntimeException e) {
                ex = e;
                decoded3 = decoded2;
                error = ex.getMessage();
                decoded = decoded3;
                final GenesisObjectArt accepted = decoded;
                final String problem = error;
                runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda25
                    @Override // java.lang.Runnable
                    public final void run() {
                        RazorTerrainPreviewActivity.this.lambda$onActivityResult$30(problem, accepted, persist741, uri);
                    }
                });
            }
        } catch (IOException e2) {
            ex = e2;
        } catch (RuntimeException e3) {
            ex = e3;
        }
        if (in == null) {
            throw new IOException("Нельзя прочитать ROM");
        }
        byte[] rom = RomImageNormalizer.normalize(readBounded(in)).bytes;
        GenesisTerrainArt terrain = new GenesisTerrainArt(rom);
        decoded = new GenesisObjectArt(rom, terrain);
        try {
            if (decoded.getUnitFrame(13, 0, 0, 0, 1) == null) {
                throw new IOException("Нет базового изображения мотоцикла");
            }
            if (decoded.getPreferredStructureMetatileBitmap(8, 520, 520) == null) {
                throw new IOException("Нет Construction Yard в ROM");
            }
            if (in != null) {
                in.close();
            }
            final GenesisObjectArt accepted2 = decoded;
            final String problem2 = error;
            runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda25
                @Override // java.lang.Runnable
                public final void run() {
                    RazorTerrainPreviewActivity.this.lambda$onActivityResult$30(problem2, accepted2, persist741, uri);
                }
            });
        } catch (Throwable th3) {
            th = th3;
            if (in == null) {
                throw th;
            }
            try {
                in.close();
                throw th;
            } catch (Throwable th4) {
                th.addSuppressed(th4);
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActivityResult$30(String problem, GenesisObjectArt accepted, boolean persist741, Uri uri) {
        String str;
        if (this.destroyed || isFinishing()) {
            return;
        }
        if (problem != null || accepted == null) {
            this.artStatus740 = "ROM не подходит для оригинальной графики: " + problem;
        } else {
            this.originalSprites674 = accepted;
            this.gameplaySpritesAvailable674 = true;
            this.artFrameError740 = null;
            if (persist741) {
                str = "Графика: подключён оригинальный ROM Dune";
            } else {
                str = "Графика: ROM подключён до выхода из игры (без постоянного разрешения)";
            }
            this.artStatus740 = str;
            if (persist741) {
                getSharedPreferences(RAZOR_ART_PREFS741, 0).edit().putString(RAZOR_ART_URI741, uri.toString()).apply();
            } else {
                getSharedPreferences(RAZOR_ART_PREFS741, 0).edit().remove(RAZOR_ART_URI741).apply();
            }
        }
        updateGameBar674();
        if (this.mapView != null) {
            this.mapView.invalidate();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0063 A[Catch: RuntimeException -> 0x006b, TRY_LEAVE, TryCatch #0 {RuntimeException -> 0x006b, blocks: (B:10:0x000e, B:12:0x0012, B:14:0x0019, B:16:0x0024, B:18:0x002a, B:20:0x0037, B:22:0x005f, B:24:0x0063, B:28:0x003b, B:30:0x003f, B:32:0x0046, B:34:0x0050, B:36:0x0056), top: B:9:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updatePortrait676(com.ahsim.demulation.RazorCampaignMapSnapshot559 r9) {
        /*
            r8 = this;
            android.widget.ImageView r0 = r8.unitPortrait676
            if (r0 != 0) goto L5
            return
        L5:
            com.ahsim.demulation.GenesisObjectArt r1 = r8.originalSprites674
            if (r1 == 0) goto L7b
            if (r9 != 0) goto Ld
            goto L7b
        Ld:
            r0 = 0
            int r2 = r8.selectedUnitOrdinal559     // Catch: java.lang.RuntimeException -> L6b
            if (r2 < 0) goto L3b
            int r2 = r8.selectedUnitOrdinal559     // Catch: java.lang.RuntimeException -> L6b
            com.ahsim.demulation.RazorCampaignMapSnapshot559$Unit[] r3 = r9.units     // Catch: java.lang.RuntimeException -> L6b
            int r3 = r3.length     // Catch: java.lang.RuntimeException -> L6b
            if (r2 >= r3) goto L3b
            com.ahsim.demulation.RazorCampaignMapSnapshot559$Unit[] r2 = r9.units     // Catch: java.lang.RuntimeException -> L6b
            int r3 = r8.selectedUnitOrdinal559     // Catch: java.lang.RuntimeException -> L6b
            r2 = r2[r3]     // Catch: java.lang.RuntimeException -> L6b
            r7 = r2
            int r2 = r7.type     // Catch: java.lang.RuntimeException -> L6b
            if (r2 < 0) goto L3a
            int r2 = r7.type     // Catch: java.lang.RuntimeException -> L6b
            r3 = 27
            if (r2 >= r3) goto L3a
            int r2 = r7.type     // Catch: java.lang.RuntimeException -> L6b
            int r6 = r7.owner     // Catch: java.lang.RuntimeException -> L6b
            r3 = 0
            r4 = 0
            r5 = 0
            com.ahsim.demulation.GenesisObjectArt$SpriteFrame r2 = r1.getUnitFrame(r2, r3, r4, r5, r6)     // Catch: java.lang.RuntimeException -> L6b
            if (r2 == 0) goto L3a
            android.graphics.Bitmap r3 = r2.bitmap     // Catch: java.lang.RuntimeException -> L6b
            r0 = r3
        L3a:
            goto L5f
        L3b:
            int r2 = r8.selectedBuilding674     // Catch: java.lang.RuntimeException -> L6b
            if (r2 < 0) goto L3a
            int r2 = r8.selectedBuilding674     // Catch: java.lang.RuntimeException -> L6b
            com.ahsim.demulation.RazorCampaignMapSnapshot559$Building[] r3 = r9.buildings     // Catch: java.lang.RuntimeException -> L6b
            int r3 = r3.length     // Catch: java.lang.RuntimeException -> L6b
            if (r2 >= r3) goto L3a
            com.ahsim.demulation.RazorCampaignMapSnapshot559$Building[] r2 = r9.buildings     // Catch: java.lang.RuntimeException -> L6b
            int r3 = r8.selectedBuilding674     // Catch: java.lang.RuntimeException -> L6b
            r2 = r2[r3]     // Catch: java.lang.RuntimeException -> L6b
            int r3 = r2.type     // Catch: java.lang.RuntimeException -> L6b
            if (r3 < 0) goto L5f
            int r3 = r2.type     // Catch: java.lang.RuntimeException -> L6b
            r4 = 19
            if (r3 >= r4) goto L5f
            int r3 = r2.type     // Catch: java.lang.RuntimeException -> L6b
            r4 = 520(0x208, float:7.29E-43)
            android.graphics.Bitmap r3 = r1.getPreferredStructureMetatileBitmap(r3, r4, r4)     // Catch: java.lang.RuntimeException -> L6b
            r0 = r3
        L5f:
            android.graphics.Bitmap r2 = r8.portraitBitmap676     // Catch: java.lang.RuntimeException -> L6b
            if (r0 == r2) goto L6a
            r8.portraitBitmap676 = r0     // Catch: java.lang.RuntimeException -> L6b
            android.widget.ImageView r2 = r8.unitPortrait676     // Catch: java.lang.RuntimeException -> L6b
            r2.setImageBitmap(r0)     // Catch: java.lang.RuntimeException -> L6b
        L6a:
            goto L7a
        L6b:
            r0 = move-exception
            java.lang.String r2 = "RazorTerrainPreview"
            java.lang.String r3 = "Razor portrait unavailable"
            android.util.Log.w(r2, r3, r0)
            com.ahsim.demulation.RazorRuntimeDiagnostics749 r2 = r8.runtimeDiagnostics749
            java.lang.String r3 = "PORTRAIT"
            r2.error(r3, r0)
        L7a:
            return
        L7b:
            android.graphics.Bitmap r0 = r8.portraitBitmap676
            if (r0 == 0) goto L87
            r0 = 0
            r8.portraitBitmap676 = r0
            android.widget.ImageView r2 = r8.unitPortrait676
            r2.setImageDrawable(r0)
        L87:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.RazorTerrainPreviewActivity.updatePortrait676(com.ahsim.demulation.RazorCampaignMapSnapshot559):void");
    }

    private void showMissionSelector674() {
        String[] houses = {"Харконнены", "Атрейдесы", "Ордосы"};
        final int[] current = {this.houseSpinner.getSelectedItemPosition(), this.missionSpinner.getSelectedItemPosition()};
        new AlertDialog.Builder(this).setTitle("Выбрать дом").setSingleChoiceItems(houses, Math.min(current[0], 2), new DialogInterface.OnClickListener() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda19
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                RazorTerrainPreviewActivity.this.lambda$showMissionSelector674$33(current, dialogInterface, i);
            }
        }).setNegativeButton("Отмена", (DialogInterface.OnClickListener) null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMissionSelector674$33(final int[] current, DialogInterface d, int which) {
        current[0] = which;
        d.dismiss();
        String[] missions = new String[9];
        for (int i = 0; i < 9; i++) {
            missions[i] = "Миссия " + (i + 1);
        }
        new AlertDialog.Builder(this).setTitle("Выбрать миссию").setSingleChoiceItems(missions, current[1], new DialogInterface.OnClickListener() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda17
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                RazorTerrainPreviewActivity.this.lambda$showMissionSelector674$32(current, dialogInterface, i2);
            }
        }).setNegativeButton("Отмена", (DialogInterface.OnClickListener) null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMissionSelector674$32(int[] current, DialogInterface m, int selected) {
        m.dismiss();
        this.changingMission674 = true;
        try {
            this.houseSpinner.setSelection(current[0]);
            this.missionSpinner.setSelection(selected);
            this.changingMission674 = false;
            requestFrame(true);
        } catch (Throwable th) {
            this.changingMission674 = false;
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RazorCampaignMapSnapshot559.Building gameBuildingAt674(RazorCampaignMapSnapshot559 state, int x, int y) {
        int i = state.buildings.length - 1;
        while (true) {
            int[] dims = null;
            if (i < 0) {
                return null;
            }
            RazorCampaignMapSnapshot559.Building b = state.buildings[i];
            if (this.structureDimensions674 != null && b.type < this.structureDimensions674.length) {
                dims = this.structureDimensions674[b.type];
            }
            int w = dims == null ? 1 : Math.max(1, dims[0]);
            int h = dims == null ? 1 : Math.max(1, dims[1]);
            if (x >= b.f26x && y >= b.f27y && x < b.f26x + w && y < b.f27y + h) {
                return b;
            }
            i--;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateGameBar674() {
        String info;
        String num;
        if (!this.quickPlay662 || this.gameBar674 == null) {
            return;
        }
        RazorCampaignMapSnapshot559 state = this.campaignMapFrame559;
        if (state == null) {
            this.gameBar674.setText("Загрузка миссии…");
            return;
        }
        if (this.selectedUnitOrdinal559 >= 0 && this.selectedUnitOrdinal559 < state.units.length && !state.units[this.selectedUnitOrdinal559].retired) {
            RazorCampaignMapSnapshot559.Unit u = state.units[this.selectedUnitOrdinal559];
            info = labelFrom674(UNIT_NAMES674, u.type) + "  ·  " + ((this.ownerHud743 != null && this.ownerHud743.length == (state.units.length * 3) + 2 && this.ownerHud743[(this.selectedUnitOrdinal559 * 3) + 2] == 1) ? "ДВИЖЕНИЕ" : "ОЖИДАНИЕ");
        } else if (this.selectedEnemy674 >= 0 && this.selectedEnemy674 < state.units.length) {
            RazorCampaignMapSnapshot559.Unit u2 = state.units[this.selectedEnemy674];
            info = labelFrom674(UNIT_NAMES674, u2.type);
        } else if (this.selectedBuilding674 < 0 || this.selectedBuilding674 >= state.buildings.length) {
            info = "Выбери объект";
        } else {
            RazorCampaignMapSnapshot559.Building b = state.buildings[this.selectedBuilding674];
            info = labelFrom674(STRUCTURE_NAMES674, b.type);
        }
        if (this.lastPulseFailure729 != null) {
            info = info + "\nОшибка цикла (☰): " + this.lastPulseFailure729;
        }
        this.gameBar674.setText(info);
        if (this.houseLabel676 != null) {
            String[] houses = {"ХАРКОННЕНЫ", "АТРЕЙДЕСЫ", "ОРДОСЫ"};
            int house = this.houseSpinner.getSelectedItemPosition();
            this.houseLabel676.setText(((house < 0 || house >= houses.length) ? "RAZOR" : houses[house]) + "  ·  " + (this.missionSpinner.getSelectedItemPosition() + 1));
        }
        if (this.creditsText743 != null) {
            TextView textView = this.creditsText743;
            if (this.finance576 != null && this.finance576.phase != 0) {
                num = Integer.toString(this.finance576.credits);
            } else {
                num = this.verifiedStartingCredits743 >= 0 ? Integer.toString(this.verifiedStartingCredits743) : "—";
            }
            textView.setText(num);
        }
        int hp743 = 0;
        int max743 = 0;
        boolean selection743 = false;
        if (this.ownerHud743 != null && this.selectedUnitOrdinal559 >= 0 && this.ownerHud743.length == (state.units.length * 3) + 2 && this.selectedUnitOrdinal559 < state.units.length) {
            hp743 = this.ownerHud743[(this.selectedUnitOrdinal559 * 3) + 3];
            max743 = this.ownerHud743[(this.selectedUnitOrdinal559 * 3) + 4];
            selection743 = true;
        }
        if (this.hpText743 != null) {
            this.hpText743.setText(max743 > 0 ? "" : "HP —");
        }
        if (this.hpTrack743 != null && this.hpFill743 != null && (hp743 != this.lastHp743 || max743 != this.lastMaxHp743)) {
            this.lastHp743 = hp743;
            this.lastMaxHp743 = max743;
            final int value743 = hp743;
            final int maximum743 = max743;
            this.hpTrack743.post(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda69
                @Override // java.lang.Runnable
                public final void run() {
                    RazorTerrainPreviewActivity.this.lambda$updateGameBar674$34(maximum743, value743);
                }
            });
        }
        boolean runningOrder744 = (!selection743 || this.ownerHud743 == null || this.ownerHud743[(this.selectedUnitOrdinal559 * 3) + 2] == 0) ? false : true;
        if (this.deployButton726 != null) {
            boolean mcv = this.selectedUnitOrdinal559 >= 0 && this.selectedUnitOrdinal559 < state.units.length && !state.units[this.selectedUnitOrdinal559].retired && state.units[this.selectedUnitOrdinal559].type == 17 && state.units[this.selectedUnitOrdinal559].owner == 1 && this.houseSpinner.getSelectedItemPosition() == 1 && this.selectedUnitOrdinal559 != this.deployedSource726;
            this.deployButton726.setVisibility((!mcv || runningOrder744) ? 8 : 0);
            this.deployButton726.setEnabled((!mcv || runningOrder744 || this.mapActionPending559) ? false : true);
        }
        if (this.stopButton676 != null) {
            this.stopButton676.setVisibility(runningOrder744 ? 0 : 8);
            this.stopButton676.setEnabled(runningOrder744 && !this.mapActionPending559);
        }
        updatePortrait676(state);
        if (this.pauseButton674 != null) {
            this.pauseButton674.setText(this.sandboxRunning560 ? "Пауза" : "Продолжить");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateGameBar674$34(int maximum743, int value743) {
        int i;
        if (this.hpTrack743 == null || this.hpFill743 == null) {
            return;
        }
        int available = Math.max(0, this.hpTrack743.getWidth());
        FrameLayout.LayoutParams l = (FrameLayout.LayoutParams) this.hpFill743.getLayoutParams();
        int width743 = maximum743 > 0 ? (int) ((available * value743) / maximum743) : 0;
        if (l.width != width743) {
            l.width = width743;
            this.hpFill743.setLayoutParams(l);
        }
        View view = this.hpFill743;
        if (maximum743 == 0) {
            i = -10194566;
        } else if (value743 * 3 > maximum743 * 2) {
            i = -9982096;
        } else {
            i = value743 * 3 > maximum743 ? -3167152 : -3912632;
        }
        view.setBackgroundColor(i);
    }

    private void loadOriginalSpriteArt674() {
        InputStream in;
        if (!this.quickPlay662 || this.originalSprites674 != null) {
            return;
        }
        String savedUri = getSharedPreferences(RAZOR_ART_PREFS741, 0).getString(RAZOR_ART_URI741, null);
        if (savedUri != null && !savedUri.isEmpty()) {
            try {
                in = getContentResolver().openInputStream(Uri.parse(savedUri));
                try {
                    if (in == null) {
                        throw new IOException("ROM графики недоступен");
                    }
                    byte[] rom = RomImageNormalizer.normalize(readBounded(in)).bytes;
                    GenesisTerrainArt terrain = new GenesisTerrainArt(rom);
                    GenesisObjectArt art = new GenesisObjectArt(rom, terrain);
                    if (art.getUnitFrame(13, 0, 0, 0, 1) == null) {
                        throw new IOException("Нет базового спрайта Dune");
                    }
                    this.originalSprites674 = art;
                    this.gameplaySpritesAvailable674 = true;
                    this.artFrameError740 = null;
                    this.artStatus740 = "Графика: подключён оригинальный ROM Dune";
                    if (in != null) {
                        in.close();
                        return;
                    }
                    return;
                } finally {
                }
            } catch (IOException | RuntimeException ex) {
                Log.w(TAG, "Razor user-selected tactical art unavailable", ex);
                this.artStatus740 = "Не удалось прочитать выбранный ROM графики";
            }
        }
        try {
            RomAssetInstallState.RuntimeBundle assets = RomAssetInstallState.activeRuntimeBundle(this);
            GenesisTerrainArt terrain2 = new GenesisTerrainArt(assets.worldAssets);
            this.originalSprites674 = new GenesisObjectArt(assets.worldAssets, terrain2);
            this.gameplaySpritesAvailable674 = true;
            this.artFrameError740 = null;
            this.artStatus740 = "Графика: установленные данные оригинальной Dune";
        } catch (IOException | RuntimeException ex2) {
            Log.i(TAG, "No installed classic art; checking user's selected BASE ROM", ex2);
            RomSelectionStore.Selection base = RomSelectionStore.load(this);
            if (base == null) {
                this.artStatus740 = "Графика недоступна: в лаунчере выбери оригинальный ROM Dune";
                return;
            }
            try {
                in = getContentResolver().openInputStream(base.uri);
                if (in != null) {
                    try {
                        byte[] rom2 = RomImageNormalizer.normalize(readBounded(in)).bytes;
                        GenesisTerrainArt terrain3 = new GenesisTerrainArt(rom2);
                        this.originalSprites674 = new GenesisObjectArt(rom2, terrain3);
                        this.gameplaySpritesAvailable674 = true;
                        this.artFrameError740 = null;
                        this.artStatus740 = "Графика: выбранный ROM оригинальной Dune";
                        if (in != null) {
                            in.close();
                            return;
                        }
                        return;
                    } finally {
                        if (in == null) {
                            throw th;
                        }
                        try {
                            in.close();
                            throw th;
                        } catch (Throwable th) {
                            th.addSuppressed(th);
                        }
                    }
                }
                if (in != null) {
                    in.close();
                }
            } catch (IOException | RuntimeException ex3) {
                this.artStatus740 = "Графика: ошибка чтения BASE ROM; смотри журнал Razor";
                Log.w(TAG, "Selected classic ROM media cannot be used for Razor art", ex3);
            }
        }
    }

    private void openSelectedMod() {
        final RazorGameRomStore.Entry gameSource = this.profile558 ? RazorGameRomStore.load(this) : null;
        final RomSelectionStore.OverlaySelection selected = this.profile558 ? null : RomSelectionStore.loadOverlay(this, RomSelectionStore.SourceRole.MEDIA_MOD);
        if ((this.profile558 && gameSource == null) || (!this.profile558 && selected == null)) {
            failure(getString(this.profile558 ? C0012R.string.razor_map558_need_rom : C0012R.string.razor_preview_no_mod));
        } else {
            this.worker.execute(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda32
                @Override // java.lang.Runnable
                public final void run() {
                    RazorTerrainPreviewActivity.this.lambda$openSelectedMod$36(selected, gameSource);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openSelectedMod$36(RomSelectionStore.OverlaySelection selected, RazorGameRomStore.Entry gameSource) {
        try {
            if (!this.profile558 && selected.size > 4194816) {
                throw new IOException("Razor preview ROM exceeds verified image size");
            }
            InputStream stream = getContentResolver().openInputStream(this.profile558 ? gameSource.uri : selected.uri);
            try {
                if (stream == null) {
                    throw new IOException("No access to selected ROM document");
                }
                byte[] raw = readBounded(stream);
                if (stream != null) {
                    stream.close();
                }
                final RazorTerrainPreviewSource verified = RazorTerrainPreviewSource.inspectRawRom(raw);
                if (this.quickPlay662) {
                    loadOriginalSpriteArt674();
                }
                String expected = this.profile558 ? gameSource.sha256 : selected.sha256;
                if (expected != null && !expected.isEmpty() && !expected.equalsIgnoreCase(verified.sha256)) {
                    throw new IOException("Selected Razor ROM fingerprint changed");
                }
                runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda23
                    @Override // java.lang.Runnable
                    public final void run() {
                        RazorTerrainPreviewActivity.this.lambda$openSelectedMod$35(verified);
                    }
                });
            } catch (Throwable th) {
                if (stream != null) {
                    try {
                        stream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException | LinkageError | RuntimeException ex) {
            Log.w(TAG, "Razor source preview unavailable", ex);
            failure(ex.getMessage() == null ? ex.getClass().getSimpleName() : ex.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openSelectedMod$35(RazorTerrainPreviewSource verified) {
        if (this.destroyed || isFinishing()) {
            return;
        }
        this.source = verified;
        if (this.shareProbeButton != null) {
            this.shareProbeButton.setEnabled(true);
        }
        if (this.quickPlay662) {
            int[][] dims = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 19, 2);
            for (int i = 0; i < 19; i++) {
                try {
                    DuneHackR82cRazorMissionBundle.BuildingData572.Record r = verified.audit.verifiedCampaignBundle559().buildingData572.get(i);
                    dims[i][0] = Math.max(1, Math.min(4, r.width));
                    dims[i][1] = Math.max(1, Math.min(4, r.height));
                } catch (RuntimeException err) {
                    Log.w(TAG, "Building art extents unavailable", err);
                }
            }
            this.structureDimensions674 = dims;
        }
        this.emcStatus.setText(getString(C0012R.string.razor_emc_audit_pass, new Object[]{Integer.valueOf(verified.emcEvidence.romVariant), Integer.valueOf(verified.emcEvidence.verifiedNodes()), Integer.valueOf(verified.emcEvidence.blockedNodes())}));
        requestFrame(true);
    }

    private static byte[] readBounded(InputStream stream) throws IOException {
        ByteArrayOutputStream out = new ByteArrayOutputStream(4194304);
        byte[] buf = new byte[32768];
        int count = 0;
        while (true) {
            int n = stream.read(buf);
            if (n != -1) {
                if (n != 0) {
                    count += n;
                    if (count > MAX_RAW_BYTES) {
                        throw new IOException("Razor source exceeds size limit");
                    }
                    out.write(buf, 0, n);
                }
            } else {
                return out.toByteArray();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestFrame(final boolean selectNewMission) {
        if (this.source != null && !this.destroyed) {
            final int house = this.houseSpinner.getSelectedItemPosition();
            final int mission = this.missionSpinner.getSelectedItemPosition() + 1;
            final int palette = this.paletteSpinner.getSelectedItemPosition();
            if (selectNewMission) {
                stopFrame634();
                pauseSandbox560();
                this.autoStartPending662 = this.quickPlay662;
                this.sandboxTicks560 = 0;
                this.sandboxMoves560 = 0;
                this.lastPulseFailure729 = null;
                this.currentProof729 = null;
                this.coreSnapshot663 = null;
                this.routeWitness664 = null;
                this.facing666 = null;
                this.corePass667 = null;
                this.coreCadence668 = null;
                this.speedEnabled670 = false;
                this.speedStatus670 = null;
                this.emcStatus671 = null;
                this.emcStatus672 = null;
                this.buildStatus715 = null;
                this.buildOwner716 = null;
                this.emcOwner673 = null;
                if (this.speedButton670 != null) {
                    this.speedButton670.setText(C0012R.string.razor_speed670_off);
                }
                this.navigator = null;
                this.selectedUnitOrdinal559 = -1;
                this.selectedBuilding674 = -1;
                this.selectedEnemy674 = -1;
                this.classicCursorX678 = -1;
                this.classicCursorY678 = -1;
                this.pendingSelectionFocus749 = false;
                this.terrainRows679 = 0;
                this.terrainCols679 = 0;
                this.panFrameRequested679 = false;
                this.campaignMapFrame559 = null;
                this.campaignSubtiles565 = null;
                this.dynamicObjects569 = null;
                this.demoHandle569 = 0;
                this.demoPending569 = false;
                this.refinery570 = null;
                this.construction571 = null;
                this.finance576 = null;
                if (this.economyFacts573 != null) {
                    this.economyFacts573.setText(C0012R.string.razor_economy573_wait);
                }
                updateMapActions559();
            }
            final RazorTerrainPreviewNavigator current = this.navigator;
            final int generation = this.requestedGeneration + 1;
            this.requestedGeneration = generation;
            final boolean nativeFrame = this.useNativeFrames;
            final boolean objectMarkers = this.showObjectMarkers;
            if (selectNewMission && this.bootStatus != null) {
                this.bootStatus.setText(C0012R.string.razor_boot_probe_hint);
            }
            if (selectNewMission) {
                this.selectedObject = null;
                this.objectFrame = null;
                if (this.objectDetails != null) {
                    this.objectDetails.setText(C0012R.string.razor_preview_object_hint);
                }
            }
            this.progress.setVisibility(0);
            this.status.setText(C0012R.string.razor_preview_loading);
            this.worker.execute(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda24
                @Override // java.lang.Runnable
                public final void run() {
                    RazorTerrainPreviewActivity.this.lambda$requestFrame$39(selectNewMission, house, mission, generation, current, nativeFrame, palette, objectMarkers);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x031d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$requestFrame$39(boolean r27, final int r28, final int r29, int r30, com.ahsim.demulation.RazorTerrainPreviewNavigator r31, boolean r32, int r33, boolean r34) {
        /*
            Method dump skipped, instructions count: 814
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.RazorTerrainPreviewActivity.lambda$requestFrame$39(boolean, int, int, int, com.ahsim.demulation.RazorTerrainPreviewNavigator, boolean, int, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestFrame$37(int generation, Bitmap next, RazorTerrainPreviewNavigator nextNav, RazorTerrainRenderAdapter.Viewport view, boolean selectNewMission, RazorNativeObjectFrameBridge.Frame nextObjects, RazorCampaignMapSnapshot559 mapData559, int[] fractionalData565, RazorScenarioEconomy573 verifiedEconomy573, RazorCoreWorldAdapter663.Snapshot coreData663, RazorDynamicObjects569 dynamicData569, RazorRefinery570 refineryData570, RazorConstruction571 constructionData571, DuneHackR82cRazorMissionBundle.BuildingData572.Record verifiedRefinery572, int house, int mission, int[] bootBirthEvidence567) {
        String string;
        int i;
        char c;
        String string2;
        boolean z;
        if (!this.destroyed && !isFinishing()) {
            if (generation == this.requestedGeneration) {
                Bitmap old = this.canvasBitmap;
                this.canvasBitmap = next;
                this.navigator = nextNav;
                this.terrainOriginX679 = view.f59x;
                this.terrainOriginY679 = view.f60y;
                this.terrainCols679 = view.tilesWide;
                this.terrainRows679 = view.tilesHigh;
                this.panFrameRequested679 = false;
                if (selectNewMission || this.pendingSelectionFocus749) {
                    this.smoothCamera679.reset(nextNav.m18x(), nextNav.m19y());
                    this.pendingSelectionFocus749 = false;
                } else {
                    this.smoothCamera679.ensure(nextNav.m18x(), nextNav.m19y());
                }
                this.objectFrame = nextObjects;
                this.campaignMapFrame559 = mapData559;
                this.campaignSubtiles565 = fractionalData565;
                this.verifiedStartingCredits743 = verifiedEconomy573 == null ? -1 : verifiedEconomy573.playerCredits;
                this.ownerHud743 = null;
                this.coreSnapshot663 = coreData663;
                this.dynamicObjects569 = dynamicData569;
                this.refinery570 = refineryData570;
                this.construction571 = constructionData571;
                this.refineryFacts572 = verifiedRefinery572;
                if (this.economyFacts573 != null && this.finance576 != null) {
                    this.economyFacts573.setText(getString(C0012R.string.razor_finance576_state, new Object[]{Integer.valueOf(this.finance576.credits), Integer.valueOf(this.finance576.paid), Integer.valueOf(this.finance576.payments)}) + expectedProgress579(this.finance576));
                } else if (this.economyFacts573 != null && verifiedEconomy573 != null) {
                    TextView textView = this.economyFacts573;
                    if (verifiedEconomy573.playerCredits < 0) {
                        string = getString(C0012R.string.razor_economy573_no_player);
                    } else {
                        string = getString(C0012R.string.razor_economy573_player, new Object[]{Integer.valueOf(verifiedEconomy573.playerCredits), Integer.valueOf(verifiedEconomy573.playerSourceSection)});
                    }
                    textView.setText(string);
                }
                if (this.buildingFacts572 != null && verifiedRefinery572 != null) {
                    this.buildingFacts572.setText(getString(C0012R.string.razor_stats572_refinery, new Object[]{Integer.valueOf(verifiedRefinery572.cost), Integer.valueOf(verifiedRefinery572.maxHp), Integer.valueOf(verifiedRefinery572.productionWord), Integer.valueOf(verifiedRefinery572.width), Integer.valueOf(verifiedRefinery572.height)}));
                }
                if (mapData559 != null && this.selectedUnitOrdinal559 >= mapData559.units.length) {
                    this.selectedUnitOrdinal559 = -1;
                }
                updateMapActions559();
                updateGameBar674();
                if (this.frameButton634 != null) {
                    Button button = this.frameButton634;
                    if (this.campaignMapFrame559 == null || house != 1) {
                        i = mission;
                    } else {
                        i = mission;
                        if (i == 3 && !this.frameArming634) {
                            z = true;
                            button.setEnabled(z);
                        }
                    }
                    z = false;
                    button.setEnabled(z);
                } else {
                    i = mission;
                }
                this.mapView.invalidate();
                TextView textView2 = this.objectDetails;
                if (mapData559 != null && this.selectedUnitOrdinal559 >= 0) {
                    string2 = selectedUnitLabel566(mapData559.units[this.selectedUnitOrdinal559]);
                    c = 1;
                } else if (mapData559 != null) {
                    c = 1;
                    string2 = getString(C0012R.string.razor_map559_summary, new Object[]{Integer.valueOf(mapData559.units.length), Integer.valueOf(mapData559.buildings.length), Integer.valueOf(mapData559.steps), Integer.valueOf(mapData559.gameTicks)});
                } else {
                    c = 1;
                    string2 = nextObjects != null ? getString(C0012R.string.razor_preview_object_summary, new Object[]{Integer.valueOf(nextObjects.sourceUnits), Integer.valueOf(nextObjects.sourceBuildings), Integer.valueOf(nextObjects.sourceTerrainMarkers), Integer.valueOf(nextObjects.count())}) : getString(C0012R.string.razor_preview_object_hint);
                }
                textView2.setText(string2);
                if (mapData559 != null && bootBirthEvidence567 != null) {
                    this.objectDetails.append("\n" + getString(C0012R.string.razor_birth567_summary, new Object[]{Integer.valueOf(bootBirthEvidence567[c])}));
                }
                if (dynamicData569 != null && dynamicData569.entries.length != 0) {
                    this.objectDetails.append("\n" + getString(C0012R.string.razor_demo569_counts, new Object[]{Integer.valueOf(dynamicData569.pending), Integer.valueOf(dynamicData569.placed)}));
                }
                if (old != null && old != next) {
                    old.recycle();
                }
                this.renderSuccess749++;
                this.lastFrameFailure749 = "";
                if (this.renderSuccess749 <= 3 || this.renderSuccess749 % 20 == 0) {
                    this.runtimeDiagnostics749.event("FRAME_OK", "bmp=" + next.getWidth() + "x" + next.getHeight() + " terrain=" + this.terrainCols679 + "x" + this.terrainRows679);
                }
                this.progress.setVisibility(4);
                this.status.setText(getString(C0012R.string.razor_preview_rendered, new Object[]{Integer.valueOf(this.source.audit.romVariant()), this.houseSpinner.getSelectedItem().toString(), Integer.valueOf(i), this.source.sha256.substring(0, 12)}) + " · " + (view.nativeFrameSequence > 0 ? getString(C0012R.string.razor_preview_frame_number, new Object[]{Integer.valueOf(view.nativeFrameSequence)}) : getString(C0012R.string.razor_preview_static_frame)));
                updateCoordinates();
                if (this.quickPlay662 && selectNewMission && mapData559 != null && this.navigator != null && mapData559.units.length > 0) {
                    RazorCampaignMapSnapshot559.Unit focus = null;
                    RazorCampaignMapSnapshot559.Unit[] unitArr = mapData559.units;
                    int length = unitArr.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            break;
                        }
                        RazorCampaignMapSnapshot559.Unit unit = unitArr[i2];
                        if (unit.owner == house && unit.f28x >= this.navigator.minX() && unit.f29y >= this.navigator.minY() && unit.f28x < this.navigator.maxX() && unit.f29y < this.navigator.maxY()) {
                            focus = unit;
                            break;
                        }
                        i2++;
                    }
                    if (focus == null) {
                        RazorCampaignMapSnapshot559.Unit[] unitArr2 = mapData559.units;
                        int length2 = unitArr2.length;
                        int i3 = 0;
                        while (true) {
                            if (i3 >= length2) {
                                break;
                            }
                            RazorCampaignMapSnapshot559.Unit unit2 = unitArr2[i3];
                            if (unit2.f28x < this.navigator.minX() || unit2.f29y < this.navigator.minY() || unit2.f28x >= this.navigator.maxX() || unit2.f29y >= this.navigator.maxY()) {
                                i3++;
                            } else {
                                focus = unit2;
                                break;
                            }
                        }
                    }
                    if (focus != null && this.navigator.focus(focus.f28x, focus.f29y)) {
                        this.smoothCamera679.reset(this.navigator.m18x(), this.navigator.m19y());
                        requestFrame(false);
                        return;
                    }
                }
                if (this.quickPlay662 && mapData559 != null) {
                    if (this.gameBar674 == null) {
                        updateQuickHud662(mapData559);
                    }
                    updateGameBar674();
                    if (this.autoStartPending662 && !this.sandboxRunning560 && !this.sandboxInFlight560) {
                        this.autoStartPending662 = false;
                        toggleSandbox560();
                        return;
                    }
                    return;
                }
                return;
            }
        }
        next.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestFrame$38(int generation, String message, boolean selectNewMission) {
        if (this.destroyed || generation != this.requestedGeneration) {
            return;
        }
        this.renderFailure749++;
        this.lastFrameFailure749 = message;
        this.runtimeDiagnostics749.event("FRAME_FAILURE", "newMission=" + selectNewMission + " selected=" + this.selectedUnitOrdinal559 + " camera=" + this.smoothCamera679.f52x + "," + this.smoothCamera679.f53y);
        if (!selectNewMission && this.canvasBitmap != null && !this.canvasBitmap.isRecycled()) {
            this.panFrameRequested679 = false;
            if (this.pendingSelectionFocus749 && this.navigator != null) {
                this.navigator.pan(this.focusOldX749 - this.navigator.m18x(), this.focusOldY749 - this.navigator.m19y());
                this.smoothCamera679.reset(this.focusOldX749, this.focusOldY749);
                this.pendingSelectionFocus749 = false;
                this.runtimeDiagnostics749.event("FOCUS_ROLLBACK", "Retained previous map after failed selection render");
            }
            if (this.progress != null) {
                this.progress.setVisibility(4);
            }
            if (this.mapHint559 != null) {
                this.mapHint559.setText("Ошибка обновления карты (☰ → диагностика)");
            }
            if (this.mapView != null) {
                this.mapView.invalidate();
                return;
            }
            return;
        }
        Bitmap old = this.canvasBitmap;
        this.canvasBitmap = null;
        this.navigator = null;
        this.terrainRows679 = 0;
        this.terrainCols679 = 0;
        this.panFrameRequested679 = false;
        this.objectFrame = null;
        this.campaignMapFrame559 = null;
        this.campaignSubtiles565 = null;
        this.dynamicObjects569 = null;
        this.coreSnapshot663 = null;
        this.routeWitness664 = null;
        this.facing666 = null;
        this.corePass667 = null;
        this.coreCadence668 = null;
        this.speedEnabled670 = false;
        this.speedStatus670 = null;
        this.emcStatus671 = null;
        this.emcStatus672 = null;
        this.buildStatus715 = null;
        this.buildOwner716 = null;
        this.emcOwner673 = null;
        if (this.speedButton670 != null) {
            this.speedButton670.setText(C0012R.string.razor_speed670_off);
        }
        this.demoHandle569 = 0;
        this.demoPending569 = false;
        this.refinery570 = null;
        this.construction571 = null;
        this.finance576 = null;
        this.construction571 = null;
        this.selectedUnitOrdinal559 = -1;
        this.selectedObject = null;
        updateMapActions559();
        updateGameBar674();
        if (this.frameButton634 != null) {
            this.frameButton634.setEnabled(false);
        }
        this.mapView.invalidate();
        this.objectDetails.setText(C0012R.string.razor_preview_object_hint);
        if (old != null) {
            old.recycle();
        }
        this.progress.setVisibility(4);
        this.status.setText(getString(C0012R.string.razor_preview_error, new Object[]{message}));
        if (this.gameBar674 != null) {
            this.gameBar674.setText("Не удалось открыть миссию: " + message);
        }
        this.coordinates.setText("");
    }

    private void shareRazorDiagnostics() {
        File complete = this.lastProbeEvidenceZip;
        if (complete != null && complete.isFile()) {
            openRazorShareSheet(complete);
            return;
        }
        if (this.source == null || this.destroyed) {
            return;
        }
        final RazorTerrainPreviewSource verified = this.source;
        final int house = this.houseSpinner.getSelectedItemPosition();
        final int mission = this.missionSpinner.getSelectedItemPosition() + 1;
        final int generation = this.requestedGeneration;
        final String outcome = this.lastProbeOutcome;
        final String failure = this.lastProbeFailure;
        final RazorNativeObjectFrameBridge.Frame frame = this.objectFrame;
        if (this.shareProbeButton != null) {
            this.shareProbeButton.setEnabled(false);
        }
        this.worker.execute(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                RazorTerrainPreviewActivity.this.lambda$shareRazorDiagnostics$42(verified, house, mission, frame, outcome, failure, generation);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$shareRazorDiagnostics$42(final RazorTerrainPreviewSource verified, int house, int mission, RazorNativeObjectFrameBridge.Frame frame, String outcome, String failure, final int generation) {
        int i;
        int i2;
        try {
            File dir = getExternalFilesDir("diagnostics");
            int romId = verified.audit.romVariant();
            if (romId != 1 && romId != 2) {
                throw new IOException("Unexpected Razor ROM variant");
            }
            String str = verified.sha256;
            int i3 = romId == 1 ? 3 : 4;
            int i4 = -1;
            if (frame != null) {
                i = frame.sourceUnits;
            } else {
                i = -1;
            }
            if (frame != null) {
                i2 = frame.sourceBuildings;
            } else {
                i2 = -1;
            }
            if (frame != null) {
                i4 = frame.sourceTerrainMarkers;
            }
            File report = RazorPreflightDiagnostic406H.create(dir, str, i3, house, mission, i, i2, i4, outcome, failure);
            final File fallback532 = RazorAndroidRuntimeEvidence532.append(dir, report, verified.sha256, house, mission, "PREFLIGHT_ONLY", outcome);
            runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    RazorTerrainPreviewActivity.this.lambda$shareRazorDiagnostics$40(generation, verified, fallback532);
                }
            });
        } catch (IOException | RuntimeException ex) {
            Log.w(TAG, "Cannot create Razor precheck diagnostic", ex);
            runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    RazorTerrainPreviewActivity.this.lambda$shareRazorDiagnostics$41(generation, ex);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$shareRazorDiagnostics$40(int generation, RazorTerrainPreviewSource verified, File fallback532) {
        if (this.destroyed || generation != this.requestedGeneration || this.source != verified) {
            return;
        }
        File newer = this.lastProbeEvidenceZip;
        File toShare = (newer == null || !newer.isFile()) ? fallback532 : newer;
        if (this.shareProbeButton != null) {
            this.shareProbeButton.setEnabled(true);
        }
        openRazorShareSheet(toShare);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$shareRazorDiagnostics$41(int generation, Exception ex) {
        if (this.destroyed || generation != this.requestedGeneration) {
            return;
        }
        if (this.shareProbeButton != null) {
            this.shareProbeButton.setEnabled(true);
        }
        this.bootStatus.setText(getString(C0012R.string.razor_probe_share_failed) + " (" + ex.getClass().getSimpleName() + ")");
    }

    private void openRazorShareSheet(File report) {
        try {
            this.runtimeDiagnostics749.event("SHARE", "Sharing ZIP " + report.getName());
            Uri uri = DiagnosticFileProvider.uriForFile(this, report);
            Intent send = new Intent("android.intent.action.SEND");
            send.setType("application/zip");
            send.putExtra("android.intent.extra.STREAM", uri);
            send.addFlags(1);
            startActivity(Intent.createChooser(send, getString(C0012R.string.razor_probe_share)));
        } catch (IOException | RuntimeException ex) {
            Log.w(TAG, "Cannot share Razor probe diagnostic", ex);
            this.runtimeDiagnostics749.error("SHARE_FAILED", ex);
            new AlertDialog.Builder(this).setTitle("Диагностика Razor").setMessage("Не удалось отправить ZIP: " + ex.getClass().getSimpleName()).setPositiveButton("OK", (DialogInterface.OnClickListener) null).show();
        }
    }

    private void requestBootProbe() {
        if (this.source == null || this.destroyed || this.houseSpinner.getSelectedItemPosition() < 0 || this.missionSpinner.getSelectedItemPosition() < 0) {
            return;
        }
        final RazorTerrainPreviewSource verifiedSource536 = this.source;
        final RazorTerrainVisualSource.Audit checkedSource = verifiedSource536.audit;
        final byte[] verifiedUnitBank = this.source.authenticatedUnitEmcCopy();
        final int house = this.houseSpinner.getSelectedItemPosition();
        final int mission = this.missionSpinner.getSelectedItemPosition() + 1;
        final int generation = this.requestedGeneration;
        this.bootStatus.setText(C0012R.string.razor_world_session_running);
        this.lastProbeEvidenceZip = null;
        this.lastProbeOutcome = "IN_PROGRESS";
        this.lastProbeFailure = "";
        if (this.shareProbeButton != null) {
            this.shareProbeButton.setEnabled(true);
        }
        this.worker.execute(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda38
            @Override // java.lang.Runnable
            public final void run() {
                RazorTerrainPreviewActivity.this.lambda$requestBootProbe$45(generation, house, mission, checkedSource, verifiedUnitBank, verifiedSource536);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(28:(6:147|148|149|150|151|152)|(6:153|154|155|156|157|158)|(6:159|160|161|162|163|164)|(3:165|166|167)|(3:168|169|170)|171|172|173|174|175|176|177|178|179|180|181|182|183|184|185|186|187|188|189|190|191|(3:192|193|194)|195) */
    /* JADX WARN: Can't wrap try/catch for region: R(30:(6:147|148|149|150|151|152)|(6:153|154|155|156|157|158)|(6:159|160|161|162|163|164)|165|166|167|(3:168|169|170)|171|172|173|174|175|176|177|178|179|180|181|182|183|184|185|186|187|188|189|190|191|(3:192|193|194)|195) */
    /* JADX WARN: Can't wrap try/catch for region: R(35:(6:147|148|149|150|151|152)|(6:153|154|155|156|157|158)|159|160|161|162|163|164|165|166|167|(3:168|169|170)|171|172|173|174|175|176|177|178|179|180|181|182|183|184|185|186|187|188|189|190|191|(3:192|193|194)|195) */
    /* JADX WARN: Can't wrap try/catch for region: R(39:6|7|(1:17)|18|(1:20)|21|(1:23)(1:535)|(1:25)(1:534)|26|(2:31|32)|533|36|(25:40|41|(1:531)(6:47|48|49|50|51|52)|53|(1:55)(1:524)|56|(1:523)(1:60)|61|(1:63)(1:522)|64|(1:66)(1:521)|(1:68)(1:520)|69|(1:71)(1:519)|72|(1:74)(1:518)|75|(1:77)(2:(1:515)(1:517)|516)|78|(1:80)(1:(2:511|512)(1:513))|81|82|83|(7:(1:90)(1:504)|91|(1:93)(7:493|494|495|496|497|498|499)|94|(1:96)(3:488|(1:490)(1:492)|491)|97|(4:99|(1:483)(9:101|(3:477|478|(1:480))|103|(10:105|(2:107|(1:109))|137|138|139|140|(10:328|329|330|331|332|333|334|335|336|(14:338|339|340|341|342|343|344|345|346|347|348|349|(31:351|352|353|354|355|356|357|358|359|360|361|362|363|364|365|366|367|368|369|370|371|372|373|374|375|376|377|378|379|380|381)(1:434)|382)(1:454))(1:142)|(2:304|(8:306|307|308|309|310|311|312|(49:147|148|149|150|151|152|153|154|155|156|157|158|159|160|161|162|163|164|165|166|167|168|169|170|171|172|173|174|175|176|177|178|179|180|181|182|183|184|185|186|187|188|189|190|191|192|193|194|195)(1:146)))|144|(0)(0))(1:476)|110|111|112|113|114)|481|482)(2:484|485))|88)|532|41|(1:43)|531|53|(0)(0)|56|(1:58)|523|61|(0)(0)|64|(0)(0)|(0)(0)|69|(0)(0)|72|(0)(0)|75|(0)(0)|78|(0)(0)|81|82|83|(2:505|506)(8:85|(0)(0)|91|(0)(0)|94|(0)(0)|97|(0)(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(45:289|290|291|153|154|155|(3:156|157|158)|159|160|161|162|163|164|165|166|167|168|169|170|171|172|173|174|175|176|177|178|179|180|181|182|183|184|185|186|187|188|189|190|191|192|193|194|195|110) */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x082f, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x0834, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x07db, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x07dc, code lost:
    
        r46 = r52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x07e5, code lost:
    
        android.util.Log.w(com.ahsim.demulation.RazorTerrainPreviewActivity.TAG, "Razor 538 private trace unavailable", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x0805, code lost:
    
        r7 = r7 + "\nRazor 538 private trace: " + r0.getMessage();
        r28 = r53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x0877, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x07e0, code lost:
    
        r15 = r53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x07df, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x07e4, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x079a, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x079b, code lost:
    
        r58 = r58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x07a1, code lost:
    
        android.util.Log.w(com.ahsim.demulation.RazorTerrainPreviewActivity.TAG, "Razor 536 private ROM smoke unavailable", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x07c1, code lost:
    
        r7 = r7 + "\nRazor 536 private smoke: " + r0.getMessage();
        r53 = r47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x0791, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x0792, code lost:
    
        r15 = r47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:237:0x07a0, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x074b, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x074c, code lost:
    
        r46 = r39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x0755, code lost:
    
        android.util.Log.w(com.ahsim.demulation.RazorTerrainPreviewActivity.TAG, "Razor 535 backend status unavailable", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x0775, code lost:
    
        r7 = r7 + "\nRazor 535 status unavailable: " + r0.getMessage();
        r47 = r40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x087a, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:247:0x0750, code lost:
    
        r15 = r40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x074f, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:250:0x0754, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x087d, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x06bc, code lost:
    
        r15 = r34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x06b7, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x06b8, code lost:
    
        r46 = r33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:268:0x06c1, code lost:
    
        android.util.Log.w(com.ahsim.demulation.RazorTerrainPreviewActivity.TAG, "Razor 533 F40 precall export unavailable", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x06e1, code lost:
    
        r7 = r7 + "\nRazor 533 status unavailable: " + r0.getMessage();
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x06bb, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0085, code lost:
    
        r13 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:508:0x0913, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:509:0x0916, code lost:
    
        r62 = r5;
        r2 = r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0973  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0986  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x098f  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0895  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x05ea A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:304:0x0592 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:484:0x08d4 A[Catch: RuntimeException -> 0x08e5, IOException -> 0x08e7, LinkageError -> 0x090d, TryCatch #81 {LinkageError -> 0x090d, blocks: (B:83:0x01c1, B:85:0x01c5, B:94:0x0222, B:99:0x0238, B:101:0x0270, B:481:0x08cc, B:482:0x08d3, B:103:0x02a9, B:105:0x02e2, B:111:0x0940, B:139:0x02fe, B:329:0x0306, B:332:0x0314, B:335:0x0324, B:340:0x0333, B:343:0x0339, B:346:0x0354, B:349:0x035b, B:351:0x0364, B:354:0x037a, B:357:0x0381, B:360:0x0388, B:363:0x0394, B:366:0x03a7, B:369:0x03ad, B:372:0x03b3, B:375:0x03b8, B:378:0x03d5, B:380:0x03e0, B:307:0x0594, B:310:0x05a2, B:148:0x05ea, B:151:0x05fc, B:154:0x064f, B:157:0x065f, B:160:0x06a2, B:163:0x06b0, B:166:0x06e2, B:169:0x06f4, B:172:0x0734, B:175:0x0742, B:178:0x0778, B:181:0x0788, B:184:0x07c4, B:187:0x07d2, B:190:0x0808, B:193:0x081c, B:195:0x0858, B:133:0x0920, B:200:0x0835, B:215:0x07e5, B:227:0x07a1, B:242:0x0755, B:254:0x0711, B:268:0x06c1, B:277:0x067f, B:290:0x062c, B:318:0x05bb, B:388:0x03fc, B:397:0x0445, B:402:0x056d, B:484:0x08d4, B:485:0x08e4, B:488:0x022a, B:493:0x0208, B:496:0x0212, B:499:0x0218, B:504:0x01d9), top: B:82:0x01c1 }] */
    /* JADX WARN: Removed duplicated region for block: B:488:0x022a A[Catch: RuntimeException -> 0x08e9, IOException | RuntimeException -> 0x08eb, LinkageError -> 0x090d, TryCatch #81 {LinkageError -> 0x090d, blocks: (B:83:0x01c1, B:85:0x01c5, B:94:0x0222, B:99:0x0238, B:101:0x0270, B:481:0x08cc, B:482:0x08d3, B:103:0x02a9, B:105:0x02e2, B:111:0x0940, B:139:0x02fe, B:329:0x0306, B:332:0x0314, B:335:0x0324, B:340:0x0333, B:343:0x0339, B:346:0x0354, B:349:0x035b, B:351:0x0364, B:354:0x037a, B:357:0x0381, B:360:0x0388, B:363:0x0394, B:366:0x03a7, B:369:0x03ad, B:372:0x03b3, B:375:0x03b8, B:378:0x03d5, B:380:0x03e0, B:307:0x0594, B:310:0x05a2, B:148:0x05ea, B:151:0x05fc, B:154:0x064f, B:157:0x065f, B:160:0x06a2, B:163:0x06b0, B:166:0x06e2, B:169:0x06f4, B:172:0x0734, B:175:0x0742, B:178:0x0778, B:181:0x0788, B:184:0x07c4, B:187:0x07d2, B:190:0x0808, B:193:0x081c, B:195:0x0858, B:133:0x0920, B:200:0x0835, B:215:0x07e5, B:227:0x07a1, B:242:0x0755, B:254:0x0711, B:268:0x06c1, B:277:0x067f, B:290:0x062c, B:318:0x05bb, B:388:0x03fc, B:397:0x0445, B:402:0x056d, B:484:0x08d4, B:485:0x08e4, B:488:0x022a, B:493:0x0208, B:496:0x0212, B:499:0x0218, B:504:0x01d9), top: B:82:0x01c1 }] */
    /* JADX WARN: Removed duplicated region for block: B:493:0x0208 A[Catch: LinkageError -> 0x090d, IOException | RuntimeException -> 0x0913, IOException -> 0x0915, TRY_LEAVE, TryCatch #81 {LinkageError -> 0x090d, blocks: (B:83:0x01c1, B:85:0x01c5, B:94:0x0222, B:99:0x0238, B:101:0x0270, B:481:0x08cc, B:482:0x08d3, B:103:0x02a9, B:105:0x02e2, B:111:0x0940, B:139:0x02fe, B:329:0x0306, B:332:0x0314, B:335:0x0324, B:340:0x0333, B:343:0x0339, B:346:0x0354, B:349:0x035b, B:351:0x0364, B:354:0x037a, B:357:0x0381, B:360:0x0388, B:363:0x0394, B:366:0x03a7, B:369:0x03ad, B:372:0x03b3, B:375:0x03b8, B:378:0x03d5, B:380:0x03e0, B:307:0x0594, B:310:0x05a2, B:148:0x05ea, B:151:0x05fc, B:154:0x064f, B:157:0x065f, B:160:0x06a2, B:163:0x06b0, B:166:0x06e2, B:169:0x06f4, B:172:0x0734, B:175:0x0742, B:178:0x0778, B:181:0x0788, B:184:0x07c4, B:187:0x07d2, B:190:0x0808, B:193:0x081c, B:195:0x0858, B:133:0x0920, B:200:0x0835, B:215:0x07e5, B:227:0x07a1, B:242:0x0755, B:254:0x0711, B:268:0x06c1, B:277:0x067f, B:290:0x062c, B:318:0x05bb, B:388:0x03fc, B:397:0x0445, B:402:0x056d, B:484:0x08d4, B:485:0x08e4, B:488:0x022a, B:493:0x0208, B:496:0x0212, B:499:0x0218, B:504:0x01d9), top: B:82:0x01c1 }] */
    /* JADX WARN: Removed duplicated region for block: B:504:0x01d9 A[Catch: LinkageError -> 0x090d, IOException | RuntimeException -> 0x0913, IOException -> 0x0915, TryCatch #81 {LinkageError -> 0x090d, blocks: (B:83:0x01c1, B:85:0x01c5, B:94:0x0222, B:99:0x0238, B:101:0x0270, B:481:0x08cc, B:482:0x08d3, B:103:0x02a9, B:105:0x02e2, B:111:0x0940, B:139:0x02fe, B:329:0x0306, B:332:0x0314, B:335:0x0324, B:340:0x0333, B:343:0x0339, B:346:0x0354, B:349:0x035b, B:351:0x0364, B:354:0x037a, B:357:0x0381, B:360:0x0388, B:363:0x0394, B:366:0x03a7, B:369:0x03ad, B:372:0x03b3, B:375:0x03b8, B:378:0x03d5, B:380:0x03e0, B:307:0x0594, B:310:0x05a2, B:148:0x05ea, B:151:0x05fc, B:154:0x064f, B:157:0x065f, B:160:0x06a2, B:163:0x06b0, B:166:0x06e2, B:169:0x06f4, B:172:0x0734, B:175:0x0742, B:178:0x0778, B:181:0x0788, B:184:0x07c4, B:187:0x07d2, B:190:0x0808, B:193:0x081c, B:195:0x0858, B:133:0x0920, B:200:0x0835, B:215:0x07e5, B:227:0x07a1, B:242:0x0755, B:254:0x0711, B:268:0x06c1, B:277:0x067f, B:290:0x062c, B:318:0x05bb, B:388:0x03fc, B:397:0x0445, B:402:0x056d, B:484:0x08d4, B:485:0x08e4, B:488:0x022a, B:493:0x0208, B:496:0x0212, B:499:0x0218, B:504:0x01d9), top: B:82:0x01c1 }] */
    /* JADX WARN: Removed duplicated region for block: B:505:0x0902 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:510:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:514:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:518:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:519:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:520:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:521:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:522:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:524:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0130 A[Catch: LinkageError -> 0x096a, RuntimeException -> 0x096c, IOException -> 0x096e, TryCatch #13 {IOException -> 0x096e, blocks: (B:7:0x0019, B:9:0x001d, B:11:0x0023, B:13:0x0029, B:15:0x0033, B:17:0x0041, B:18:0x0048, B:20:0x004c, B:21:0x0052, B:23:0x005c, B:28:0x0074, B:31:0x007b, B:32:0x0082, B:40:0x0094, B:43:0x00a9, B:45:0x00ad, B:55:0x0130, B:58:0x013c, B:60:0x0142, B:63:0x014e, B:66:0x015d, B:68:0x016a, B:71:0x0179, B:72:0x0184, B:75:0x0194, B:113:0x095f, B:527:0x0108, B:533:0x0087, B:534:0x006a), top: B:6:0x0019 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x013c A[Catch: LinkageError -> 0x096a, RuntimeException -> 0x096c, IOException -> 0x096e, TryCatch #13 {IOException -> 0x096e, blocks: (B:7:0x0019, B:9:0x001d, B:11:0x0023, B:13:0x0029, B:15:0x0033, B:17:0x0041, B:18:0x0048, B:20:0x004c, B:21:0x0052, B:23:0x005c, B:28:0x0074, B:31:0x007b, B:32:0x0082, B:40:0x0094, B:43:0x00a9, B:45:0x00ad, B:55:0x0130, B:58:0x013c, B:60:0x0142, B:63:0x014e, B:66:0x015d, B:68:0x016a, B:71:0x0179, B:72:0x0184, B:75:0x0194, B:113:0x095f, B:527:0x0108, B:533:0x0087, B:534:0x006a), top: B:6:0x0019 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x014e A[Catch: LinkageError -> 0x096a, RuntimeException -> 0x096c, IOException -> 0x096e, TryCatch #13 {IOException -> 0x096e, blocks: (B:7:0x0019, B:9:0x001d, B:11:0x0023, B:13:0x0029, B:15:0x0033, B:17:0x0041, B:18:0x0048, B:20:0x004c, B:21:0x0052, B:23:0x005c, B:28:0x0074, B:31:0x007b, B:32:0x0082, B:40:0x0094, B:43:0x00a9, B:45:0x00ad, B:55:0x0130, B:58:0x013c, B:60:0x0142, B:63:0x014e, B:66:0x015d, B:68:0x016a, B:71:0x0179, B:72:0x0184, B:75:0x0194, B:113:0x095f, B:527:0x0108, B:533:0x0087, B:534:0x006a), top: B:6:0x0019 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x015d A[Catch: LinkageError -> 0x096a, RuntimeException -> 0x096c, IOException -> 0x096e, TryCatch #13 {IOException -> 0x096e, blocks: (B:7:0x0019, B:9:0x001d, B:11:0x0023, B:13:0x0029, B:15:0x0033, B:17:0x0041, B:18:0x0048, B:20:0x004c, B:21:0x0052, B:23:0x005c, B:28:0x0074, B:31:0x007b, B:32:0x0082, B:40:0x0094, B:43:0x00a9, B:45:0x00ad, B:55:0x0130, B:58:0x013c, B:60:0x0142, B:63:0x014e, B:66:0x015d, B:68:0x016a, B:71:0x0179, B:72:0x0184, B:75:0x0194, B:113:0x095f, B:527:0x0108, B:533:0x0087, B:534:0x006a), top: B:6:0x0019 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x016a A[Catch: LinkageError -> 0x096a, RuntimeException -> 0x096c, IOException -> 0x096e, TryCatch #13 {IOException -> 0x096e, blocks: (B:7:0x0019, B:9:0x001d, B:11:0x0023, B:13:0x0029, B:15:0x0033, B:17:0x0041, B:18:0x0048, B:20:0x004c, B:21:0x0052, B:23:0x005c, B:28:0x0074, B:31:0x007b, B:32:0x0082, B:40:0x0094, B:43:0x00a9, B:45:0x00ad, B:55:0x0130, B:58:0x013c, B:60:0x0142, B:63:0x014e, B:66:0x015d, B:68:0x016a, B:71:0x0179, B:72:0x0184, B:75:0x0194, B:113:0x095f, B:527:0x0108, B:533:0x0087, B:534:0x006a), top: B:6:0x0019 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0179 A[Catch: LinkageError -> 0x096a, RuntimeException -> 0x096c, IOException -> 0x096e, TryCatch #13 {IOException -> 0x096e, blocks: (B:7:0x0019, B:9:0x001d, B:11:0x0023, B:13:0x0029, B:15:0x0033, B:17:0x0041, B:18:0x0048, B:20:0x004c, B:21:0x0052, B:23:0x005c, B:28:0x0074, B:31:0x007b, B:32:0x0082, B:40:0x0094, B:43:0x00a9, B:45:0x00ad, B:55:0x0130, B:58:0x013c, B:60:0x0142, B:63:0x014e, B:66:0x015d, B:68:0x016a, B:71:0x0179, B:72:0x0184, B:75:0x0194, B:113:0x095f, B:527:0x0108, B:533:0x0087, B:534:0x006a), top: B:6:0x0019 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01c5 A[Catch: LinkageError -> 0x090d, IOException | RuntimeException -> 0x0913, IOException -> 0x0915, TryCatch #81 {LinkageError -> 0x090d, blocks: (B:83:0x01c1, B:85:0x01c5, B:94:0x0222, B:99:0x0238, B:101:0x0270, B:481:0x08cc, B:482:0x08d3, B:103:0x02a9, B:105:0x02e2, B:111:0x0940, B:139:0x02fe, B:329:0x0306, B:332:0x0314, B:335:0x0324, B:340:0x0333, B:343:0x0339, B:346:0x0354, B:349:0x035b, B:351:0x0364, B:354:0x037a, B:357:0x0381, B:360:0x0388, B:363:0x0394, B:366:0x03a7, B:369:0x03ad, B:372:0x03b3, B:375:0x03b8, B:378:0x03d5, B:380:0x03e0, B:307:0x0594, B:310:0x05a2, B:148:0x05ea, B:151:0x05fc, B:154:0x064f, B:157:0x065f, B:160:0x06a2, B:163:0x06b0, B:166:0x06e2, B:169:0x06f4, B:172:0x0734, B:175:0x0742, B:178:0x0778, B:181:0x0788, B:184:0x07c4, B:187:0x07d2, B:190:0x0808, B:193:0x081c, B:195:0x0858, B:133:0x0920, B:200:0x0835, B:215:0x07e5, B:227:0x07a1, B:242:0x0755, B:254:0x0711, B:268:0x06c1, B:277:0x067f, B:290:0x062c, B:318:0x05bb, B:388:0x03fc, B:397:0x0445, B:402:0x056d, B:484:0x08d4, B:485:0x08e4, B:488:0x022a, B:493:0x0208, B:496:0x0212, B:499:0x0218, B:504:0x01d9), top: B:82:0x01c1 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0238 A[Catch: RuntimeException -> 0x08e9, IOException | RuntimeException -> 0x08eb, LinkageError -> 0x090d, TryCatch #81 {LinkageError -> 0x090d, blocks: (B:83:0x01c1, B:85:0x01c5, B:94:0x0222, B:99:0x0238, B:101:0x0270, B:481:0x08cc, B:482:0x08d3, B:103:0x02a9, B:105:0x02e2, B:111:0x0940, B:139:0x02fe, B:329:0x0306, B:332:0x0314, B:335:0x0324, B:340:0x0333, B:343:0x0339, B:346:0x0354, B:349:0x035b, B:351:0x0364, B:354:0x037a, B:357:0x0381, B:360:0x0388, B:363:0x0394, B:366:0x03a7, B:369:0x03ad, B:372:0x03b3, B:375:0x03b8, B:378:0x03d5, B:380:0x03e0, B:307:0x0594, B:310:0x05a2, B:148:0x05ea, B:151:0x05fc, B:154:0x064f, B:157:0x065f, B:160:0x06a2, B:163:0x06b0, B:166:0x06e2, B:169:0x06f4, B:172:0x0734, B:175:0x0742, B:178:0x0778, B:181:0x0788, B:184:0x07c4, B:187:0x07d2, B:190:0x0808, B:193:0x081c, B:195:0x0858, B:133:0x0920, B:200:0x0835, B:215:0x07e5, B:227:0x07a1, B:242:0x0755, B:254:0x0711, B:268:0x06c1, B:277:0x067f, B:290:0x062c, B:318:0x05bb, B:388:0x03fc, B:397:0x0445, B:402:0x056d, B:484:0x08d4, B:485:0x08e4, B:488:0x022a, B:493:0x0208, B:496:0x0212, B:499:0x0218, B:504:0x01d9), top: B:82:0x01c1 }] */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v39 */
    /* JADX WARN: Type inference failed for: r2v40 */
    /* JADX WARN: Type inference failed for: r2v41 */
    /* JADX WARN: Type inference failed for: r2v42 */
    /* JADX WARN: Type inference failed for: r2v43 */
    /* JADX WARN: Type inference failed for: r2v44 */
    /* JADX WARN: Type inference failed for: r2v45 */
    /* JADX WARN: Type inference failed for: r2v47 */
    /* JADX WARN: Type inference failed for: r2v48 */
    /* JADX WARN: Type inference failed for: r2v50 */
    /* JADX WARN: Type inference failed for: r62v0 */
    /* JADX WARN: Type inference failed for: r62v1 */
    /* JADX WARN: Type inference failed for: r62v12 */
    /* JADX WARN: Type inference failed for: r62v13 */
    /* JADX WARN: Type inference failed for: r62v16 */
    /* JADX WARN: Type inference failed for: r62v17 */
    /* JADX WARN: Type inference failed for: r62v18 */
    /* JADX WARN: Type inference failed for: r62v19 */
    /* JADX WARN: Type inference failed for: r62v20 */
    /* JADX WARN: Type inference failed for: r62v21 */
    /* JADX WARN: Type inference failed for: r62v22 */
    /* JADX WARN: Type inference failed for: r62v23 */
    /* JADX WARN: Type inference failed for: r62v24 */
    /* JADX WARN: Type inference failed for: r62v25 */
    /* JADX WARN: Type inference failed for: r62v26 */
    /* JADX WARN: Type inference failed for: r62v27 */
    /* JADX WARN: Type inference failed for: r62v28 */
    /* JADX WARN: Type inference failed for: r62v29 */
    /* JADX WARN: Type inference failed for: r62v4, types: [int] */
    /* JADX WARN: Type inference failed for: r62v6 */
    /* JADX WARN: Type inference failed for: r62v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$requestBootProbe$45(final int r75, int r76, int r77, final com.ahsim.demulation.RazorTerrainVisualSource.Audit r78, byte[] r79, com.ahsim.demulation.RazorTerrainPreviewSource r80) {
        /*
            Method dump skipped, instructions count: 2461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.RazorTerrainPreviewActivity.lambda$requestBootProbe$45(int, int, int, com.ahsim.demulation.RazorTerrainVisualSource$Audit, byte[], com.ahsim.demulation.RazorTerrainPreviewSource):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestBootProbe$43(int generation, RazorTerrainVisualSource.Audit checkedSource, RazorNativeWorldSession.Status result, RazorNativeWorldSession.FirstSlice slice, File readyShareZip, String evidenceStatus) {
        int label;
        if (!this.destroyed && generation == this.requestedGeneration && this.source != null) {
            if (this.source.audit != checkedSource) {
                return;
            }
            String summary = getString(C0012R.string.razor_world_session_result, new Object[]{Integer.valueOf(result.gridSide), Integer.valueOf(result.units), Integer.valueOf(result.buildings), Integer.valueOf(result.knownCells), Integer.valueOf(result.unknownCells), Integer.valueOf(result.readSequence), Integer.valueOf(result.executedTicks), Integer.valueOf(result.missingCapabilityBits)});
            if (slice != null) {
                summary = summary + "\n" + getString(C0012R.string.razor_emc_first_slice_result, new Object[]{Integer.valueOf(slice.sourceType), Integer.valueOf(slice.scriptEntry), Integer.valueOf(slice.executedInstructions), Integer.valueOf(slice.pendingNativeFunction)});
            }
            if (slice != null) {
                summary = summary + "\n" + getString(C0012R.string.razor_emc_boundary_result, new Object[]{Integer.valueOf(slice.boundary.functionId), Integer.toHexString(slice.boundary.originalRomAddress).toUpperCase(Locale.ROOT), Integer.valueOf(slice.boundary.emcStackDepth), slice.boundary.shortStack()});
            }
            if (slice != null) {
                int src = slice.boundary.pointerSourceMask;
                if (src == 1) {
                    label = C0012R.string.razor_function_source_script;
                } else {
                    label = src == 2 ? C0012R.string.razor_function_source_global : C0012R.string.razor_function_source_both;
                }
                summary = summary + "\n" + getString(C0012R.string.razor_function_context_status, new Object[]{getString(label)});
            }
            this.lastProbeEvidenceZip = readyShareZip;
            this.lastProbeOutcome = readyShareZip == null ? "EXPORT_FAILED" : "NOT_RUN";
            this.lastProbeFailure = readyShareZip == null ? evidenceStatus : "";
            if (this.shareProbeButton != null) {
                this.shareProbeButton.setEnabled(true);
            }
            this.bootStatus.setText(summary + evidenceStatus);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestBootProbe$44(int generation, String message) {
        if (!this.destroyed && generation == this.requestedGeneration) {
            this.lastProbeOutcome = "FAILED";
            this.lastProbeFailure = message;
            if (this.shareProbeButton != null) {
                this.shareProbeButton.setEnabled(true);
            }
            this.bootStatus.setText(getString(C0012R.string.razor_boot_probe_error, new Object[]{message}));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestMapCommand559(final int action, final int unit, final int x, final int y) {
        if (!this.profile558 || this.destroyed || this.mapActionPending559 || this.demoHandle569 != 0 || this.campaignMapFrame559 == null || unit < 0) {
            return;
        }
        if (unit >= this.campaignMapFrame559.units.length) {
            return;
        }
        final int house = this.houseSpinner.getSelectedItemPosition();
        final int mission = this.missionSpinner.getSelectedItemPosition() + 1;
        final int generation = this.requestedGeneration;
        this.mapActionPending559 = true;
        updateMapActions559();
        this.worker.execute(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                RazorTerrainPreviewActivity.this.lambda$requestMapCommand559$49(generation, house, mission, action, unit, x, y);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00fd A[Catch: all -> 0x0113, TryCatch #11 {all -> 0x0113, blocks: (B:22:0x002d, B:27:0x0034, B:29:0x0050, B:36:0x0048, B:39:0x00f4, B:42:0x0101, B:44:0x00fd), top: B:2:0x000e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$requestMapCommand559$49(final int r17, int r18, int r19, final int r20, int r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.RazorTerrainPreviewActivity.lambda$requestMapCommand559$49(int, int, int, int, int, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestMapCommand559$46(int generation, int action, RazorCampaignNativeSession.OrderResult res, RazorCoreRoute664 route) {
        if (!this.destroyed && generation == this.requestedGeneration) {
            this.routeWitness664 = (action == 1 && res.active) ? route : null;
            this.mapHint559.setText(getString(C0012R.string.razor_map559_order_result, new Object[]{Integer.valueOf(res.status), Integer.valueOf(res.ordinal), Integer.valueOf(res.toX), Integer.valueOf(res.toY), Integer.valueOf(res.steps)}) + (this.routeWitness664 != null ? " · " + this.routeWitness664.describe() : ""));
            requestFrame(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestMapCommand559$47(int generation, String message) {
        if (!this.destroyed && generation == this.requestedGeneration) {
            this.mapHint559.setText(getString(C0012R.string.razor_preview_error, new Object[]{message}));
            if (this.gameBar674 != null) {
                this.gameBar674.setText("Приказ не выполнен: " + message);
            }
            requestFrame(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestMapCommand559$48() {
        this.mapActionPending559 = false;
        updateMapActions559();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestLifecycleDemo569(final int action, final int x, final int y) {
        if (!this.profile558 || this.destroyed || this.campaignMapFrame559 == null || this.mapActionPending559) {
            return;
        }
        if ((action == 1 && this.demoHandle569 != 0) || ((action == 2 || action == 3) && this.demoHandle569 == 0)) {
            return;
        }
        pauseSandbox560();
        final int handle = this.demoHandle569;
        final int generation = this.requestedGeneration;
        final int house = this.houseSpinner.getSelectedItemPosition();
        final int mission = this.missionSpinner.getSelectedItemPosition() + 1;
        this.mapActionPending559 = true;
        updateMapActions559();
        this.worker.execute(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                RazorTerrainPreviewActivity.this.lambda$requestLifecycleDemo569$51(generation, house, mission, action, handle, x, y);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:39:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$requestLifecycleDemo569$51(int r16, int r17, final int r18, final int r19, int r20, int r21, int r22) {
        /*
            Method dump skipped, instructions count: 193
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.RazorTerrainPreviewActivity.lambda$requestLifecycleDemo569$51(int, int, int, int, int, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestLifecycleDemo569$50(int house, int mission, String error, int action, int updatedHandle, RazorDynamicObjects569 updated) {
        int i;
        this.mapActionPending559 = false;
        if (this.destroyed || house != this.houseSpinner.getSelectedItemPosition() || mission != this.missionSpinner.getSelectedItemPosition() + 1) {
            return;
        }
        if (error != null) {
            this.mapHint559.setText(getString(C0012R.string.razor_preview_error, new Object[]{error}));
        } else {
            this.demoHandle569 = action == 3 ? 0 : updatedHandle;
            this.demoPending569 = action == 1;
            this.dynamicObjects569 = updated;
            TextView textView = this.mapHint559;
            if (action == 1) {
                i = C0012R.string.razor_demo569_pending;
            } else {
                i = action == 2 ? C0012R.string.razor_demo569_placed : C0012R.string.razor_demo569_retired;
            }
            textView.setText(i);
            if (this.mapView != null) {
                this.mapView.invalidate();
            }
        }
        updateMapActions559();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestConstruction571(final int action, final int x, final int y) {
        if (!this.profile558 || this.destroyed || this.campaignMapFrame559 == null || this.mapActionPending559 || this.construction571 == null) {
            return;
        }
        if (this.demoHandle569 != 0) {
            return;
        }
        pauseSandbox560();
        final int generation = this.requestedGeneration;
        final int house = this.houseSpinner.getSelectedItemPosition();
        final int mission = this.missionSpinner.getSelectedItemPosition() + 1;
        this.mapActionPending559 = true;
        updateMapActions559();
        this.worker.execute(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda70
            @Override // java.lang.Runnable
            public final void run() {
                RazorTerrainPreviewActivity.this.lambda$requestConstruction571$53(generation, house, mission, action, x, y);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$requestConstruction571$53(final int r17, int r18, final int r19, final int r20, int r21, int r22) {
        /*
            Method dump skipped, instructions count: 200
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.RazorTerrainPreviewActivity.lambda$requestConstruction571$53(int, int, int, int, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestConstruction571$52(int generation, int house, int mission, String error, RazorConstruction571 finalNext, int action, RazorRefinery570 finalRefinery, RazorDynamicObjects569 finalRoster) {
        int i;
        this.mapActionPending559 = false;
        if (this.destroyed || generation != this.requestedGeneration || house != this.houseSpinner.getSelectedItemPosition() || mission != this.missionSpinner.getSelectedItemPosition() + 1) {
            return;
        }
        if (error != null) {
            this.mapHint559.setText(getString(C0012R.string.razor_preview_error, new Object[]{error}));
        } else {
            this.construction571 = finalNext;
            if (action != 0 && finalNext.phase != 2) {
                this.finance576 = null;
                if (this.economyFacts573 != null && this.source != null && this.source.audit != null) {
                    this.economyFacts573.setText(C0012R.string.razor_economy573_wait);
                }
            }
            this.refinery570 = finalRefinery;
            this.dynamicObjects569 = finalRoster;
            TextView textView = this.mapHint559;
            if (action == 1) {
                i = C0012R.string.razor_order571_choose;
            } else if (action == 2) {
                i = C0012R.string.razor_order571_reserved;
            } else if (action == 3) {
                i = C0012R.string.razor_order571_pending;
            } else {
                i = action == 4 ? C0012R.string.razor_order571_delivered : C0012R.string.razor_order571_cancelled;
            }
            textView.setText(i);
            if (this.mapView != null) {
                this.mapView.invalidate();
            }
        }
        updateMapActions559();
    }

    private String expectedProgress579(RazorFinanceLive576 f) {
        RazorFinanceTrace579 trace = RazorFinanceTrace579.expectedAfterManualPayment(f);
        return trace == null ? "" : getString(C0012R.string.razor_trace579_reference, new Object[]{Integer.valueOf(trace.remainingFixed88), Integer.valueOf(trace.paidTotal), Integer.valueOf(trace.productionState)});
    }

    private void requestFinance576() {
        final int action;
        if (!this.profile558 || this.destroyed || this.campaignMapFrame559 == null || this.mapActionPending559 || this.construction571 == null) {
            return;
        }
        int i = 2;
        if (this.construction571.phase != 2 || this.source == null || this.source.audit == null || this.source.audit.romVariant() != 1) {
            return;
        }
        pauseSandbox560();
        final int generation = this.requestedGeneration;
        final int house = this.houseSpinner.getSelectedItemPosition();
        final int mission = this.missionSpinner.getSelectedItemPosition() + 1;
        if (this.finance576 == null || this.finance576.phase == 0) {
            action = 1;
        } else {
            if (this.finance576.phase != 1 && this.finance576.phase != 2) {
                i = 3;
            }
            action = i;
        }
        if (this.finance576 == null || this.finance576.phase != 4) {
            this.mapActionPending559 = true;
            updateMapActions559();
            this.worker.execute(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda61
                @Override // java.lang.Runnable
                public final void run() {
                    RazorTerrainPreviewActivity.this.lambda$requestFinance576$55(generation, house, mission, action);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestFinance576$55(final int generation, final int house, final int mission, int action) {
        RazorFinanceLive576 result = null;
        String failure = null;
        try {
        } catch (IOException | LinkageError | RuntimeException ex) {
            failure = ex.getMessage() == null ? ex.getClass().getSimpleName() : ex.getMessage();
        }
        if (this.destroyed || generation != this.requestedGeneration || this.campaignMapSession559 == null || !this.campaignMapSession559.isOpen() || this.campaignMapSession559.house != house || this.campaignMapSession559.mission != mission) {
            throw new IOException("Razor finance session changed");
        }
        result = this.campaignMapSession559.financeLive576(this.source.audit.verifiedCampaignBundle559(), action);
        final RazorFinanceLive576 next = result;
        final String err = failure;
        runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda71
            @Override // java.lang.Runnable
            public final void run() {
                RazorTerrainPreviewActivity.this.lambda$requestFinance576$54(generation, house, mission, err, next);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestFinance576$54(int generation, int house, int mission, String err, RazorFinanceLive576 next) {
        this.mapActionPending559 = false;
        if (this.destroyed || generation != this.requestedGeneration || house != this.houseSpinner.getSelectedItemPosition() || mission != this.missionSpinner.getSelectedItemPosition() + 1) {
            return;
        }
        if (err != null) {
            this.mapHint559.setText(getString(C0012R.string.razor_preview_error, new Object[]{err}));
        } else {
            this.finance576 = next;
            this.economyFacts573.setText(getString(C0012R.string.razor_finance576_state, new Object[]{Integer.valueOf(next.credits), Integer.valueOf(next.paid), Integer.valueOf(next.payments)}) + expectedProgress579(next));
            this.mapHint559.setText(getString(C0012R.string.razor_finance576_state, new Object[]{Integer.valueOf(next.credits), Integer.valueOf(next.paid), Integer.valueOf(next.payments)}) + expectedProgress579(next));
        }
        updateMapActions559();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMapActions559() {
        int i;
        int i2;
        if (!this.profile558 || this.mapAdvance559 == null) {
            return;
        }
        boolean z = false;
        boolean refineryActive = this.construction571 != null && this.construction571.busy();
        if (this.refineryButton570 != null) {
            this.refineryButton570.setEnabled((this.campaignMapFrame559 == null || this.destroyed || this.mapActionPending559 || this.demoHandle569 != 0 || this.construction571 == null) ? false : true);
            int phase = this.construction571 == null ? 0 : this.construction571.phase;
            Button button = this.refineryButton570;
            if (phase == 0) {
                i2 = C0012R.string.razor_order571_start;
            } else if (phase == 2) {
                i2 = (this.finance576 == null || this.finance576.phase == 3) ? C0012R.string.razor_order571_finish : C0012R.string.razor_order571_reset;
            } else {
                i2 = C0012R.string.razor_order571_reset;
            }
            button.setText(i2);
        }
        if (this.financeButton576 != null) {
            int phase2 = this.finance576 == null ? 0 : this.finance576.phase;
            this.financeButton576.setEnabled((this.campaignMapFrame559 == null || this.destroyed || this.source == null || this.source.audit == null || this.source.audit.romVariant() != 1 || this.mapActionPending559 || this.demoHandle569 != 0 || this.construction571 == null || this.construction571.phase != 2 || (phase2 != 0 && phase2 != 1 && phase2 != 2 && phase2 != 3)) ? false : true);
            Button button2 = this.financeButton576;
            if (phase2 == 0) {
                i = C0012R.string.razor_finance576_start;
            } else {
                i = (phase2 == 1 || phase2 == 2) ? C0012R.string.razor_finance576_pay : C0012R.string.razor_finance576_cancel;
            }
            button2.setText(i);
        }
        if (this.lifecycleDemoButton569 != null) {
            this.lifecycleDemoButton569.setEnabled((this.campaignMapFrame559 == null || this.destroyed || this.mapActionPending559 || refineryActive) ? false : true);
            this.lifecycleDemoButton569.setText(this.demoHandle569 == 0 ? C0012R.string.razor_demo569_create : C0012R.string.razor_demo569_retire);
        }
        if (this.sandboxButton560 != null) {
            this.sandboxButton560.setEnabled((this.campaignMapFrame559 == null || this.destroyed || this.demoHandle569 != 0 || refineryActive) ? false : true);
            this.sandboxButton560.setText(this.sandboxRunning560 ? C0012R.string.razor_auto560_pause : C0012R.string.razor_auto560_start);
        }
        boolean chosen = this.campaignMapFrame559 != null && this.selectedUnitOrdinal559 >= 0 && this.selectedUnitOrdinal559 < this.campaignMapFrame559.units.length && !this.mapActionPending559 && this.demoHandle569 == 0 && !refineryActive;
        this.mapAdvance559.setEnabled(chosen && this.campaignMapFrame559.activeUnit == this.selectedUnitOrdinal559);
        Button button3 = this.mapCancel559;
        if (chosen && this.campaignMapFrame559.activeUnit >= 0) {
            z = true;
        }
        button3.setEnabled(z);
    }

    private void shareMovementTrace562() {
        if (this.destroyed || !this.profile558) {
            return;
        }
        pauseSandbox560();
        this.worker.execute(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda59
            @Override // java.lang.Runnable
            public final void run() {
                RazorTerrainPreviewActivity.this.lambda$shareMovementTrace562$57();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$shareMovementTrace562$57() {
        String trace = null;
        String error = null;
        try {
        } catch (IOException | LinkageError | RuntimeException ex) {
            error = ex.getMessage() == null ? ex.getClass().getSimpleName() : ex.getMessage();
        }
        if (this.campaignMapSession559 == null || !this.campaignMapSession559.isOpen()) {
            throw new IOException("Razor movement session not available");
        }
        trace = this.campaignMapSession559.movementTrace562();
        final String value = trace;
        final String failure = error;
        runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda66
            @Override // java.lang.Runnable
            public final void run() {
                RazorTerrainPreviewActivity.this.lambda$shareMovementTrace562$56(failure, value);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$shareMovementTrace562$56(String failure, String value) {
        if (this.destroyed || isFinishing()) {
            return;
        }
        if (failure != null) {
            if (this.mapHint559 != null) {
                this.mapHint559.setText(failure);
            }
        } else {
            Intent send = new Intent("android.intent.action.SEND");
            send.setType("text/plain");
            send.putExtra("android.intent.extra.SUBJECT", "Demulation Razor 0.4.562 movement trace");
            send.putExtra("android.intent.extra.TEXT", value);
            startActivity(Intent.createChooser(send, getString(C0012R.string.razor_trace562_button)));
        }
    }

    private void toggleFrame634() {
        if (this.frameRunning634 || this.frameArming634) {
            stopFrame634();
            return;
        }
        if (this.destroyed || !this.profile558 || this.campaignMapSession559 == null || this.houseSpinner.getSelectedItemPosition() != 1 || this.missionSpinner.getSelectedItemPosition() != 2 || this.campaignMapFrame559 == null) {
            return;
        }
        final int serial = this.frameGeneration634 + 1;
        this.frameGeneration634 = serial;
        final int generation = this.requestedGeneration;
        this.frameArming634 = true;
        this.frameButton634.setEnabled(false);
        this.worker.execute(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                RazorTerrainPreviewActivity.this.lambda$toggleFrame634$59(serial, generation);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleFrame634$59(final int serial, int generation) {
        boolean ok = false;
        String error = "Clock source not available";
        try {
            if (!this.destroyed && serial == this.frameGeneration634 && generation == this.requestedGeneration && this.campaignMapSession559 != null && this.campaignMapSession559.isOpen()) {
                boolean z = false;
                int[] words = this.campaignMapSession559.frameIngress634(0, 0L);
                if (words[1] == 1) {
                    if (words[5] == 0) {
                        z = true;
                    }
                }
                ok = z;
            }
        } catch (IOException | LinkageError | RuntimeException ex) {
            error = ex.getMessage() == null ? ex.getClass().getSimpleName() : ex.getMessage();
        }
        final boolean ready = ok;
        final String cause = error;
        runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                RazorTerrainPreviewActivity.this.lambda$toggleFrame634$58(serial, ready, cause);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleFrame634$58(int serial, boolean ready, String cause) {
        if (serial != this.frameGeneration634 || this.destroyed || isFinishing()) {
            return;
        }
        this.frameArming634 = false;
        this.frameRunning634 = ready;
        this.frameButton634.setEnabled(true);
        this.frameButton634.setText(ready ? C0012R.string.razor_frame634_stop : C0012R.string.razor_frame634_start);
        this.frameStatus634.setText(ready ? C0012R.string.razor_frame634_running : C0012R.string.razor_frame634_wait);
        if (!ready) {
            Log.w(TAG, "Razor VSYNC clock rejected: " + cause);
        } else {
            Choreographer.getInstance().postFrameCallback(this.framePulse634);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deliverFrame634(final long timestampNs) {
        final RazorTerrainPreviewActivity razorTerrainPreviewActivity;
        if (!this.frameRunning634 || this.destroyed) {
            return;
        }
        if (isFinishing()) {
            return;
        }
        final int serial = this.frameGeneration634;
        final int generation = this.requestedGeneration;
        if (this.frameInFlight634) {
            razorTerrainPreviewActivity = this;
        } else {
            this.frameInFlight634 = true;
            razorTerrainPreviewActivity = this;
            this.worker.execute(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    RazorTerrainPreviewActivity.this.lambda$deliverFrame634$61(serial, generation, timestampNs);
                }
            });
        }
        if (razorTerrainPreviewActivity.frameRunning634) {
            Choreographer.getInstance().postFrameCallback(razorTerrainPreviewActivity.framePulse634);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deliverFrame634$61(final int serial, int generation, long timestampNs) {
        int[] row = null;
        int[] checkpoint = null;
        String error = null;
        try {
            if (serial == this.frameGeneration634 && generation == this.requestedGeneration && this.campaignMapSession559 != null && this.campaignMapSession559.isOpen()) {
                row = this.campaignMapSession559.frameIngress634(1, timestampNs);
                checkpoint = this.campaignMapSession559.simulationStep635();
            }
        } catch (IOException | LinkageError | RuntimeException ex) {
            error = ex.getMessage() == null ? ex.getClass().getSimpleName() : ex.getMessage();
        }
        final int[] result = row;
        final int[] gate635 = checkpoint;
        final String failure = error;
        runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                RazorTerrainPreviewActivity.this.lambda$deliverFrame634$60(serial, failure, result, gate635);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deliverFrame634$60(int serial, String failure, int[] result, int[] gate635) {
        this.frameInFlight634 = false;
        if (serial != this.frameGeneration634 || this.destroyed || isFinishing()) {
            return;
        }
        if (failure != null || result == null || gate635 == null) {
            stopFrame634();
            this.frameStatus634.setText(getString(C0012R.string.razor_frame634_error, new Object[]{failure == null ? "Session changed" : failure}));
        } else if (result[5] == 1 || result[5] % 30 == 0) {
            this.frameStatus634.setText(getString(C0012R.string.razor_step635_status, new Object[]{Integer.valueOf(result[5]), Integer.valueOf(gate635[5]), Integer.valueOf(result[18])}));
        }
    }

    private void stopFrame634() {
        this.frameGeneration634++;
        boolean shouldPause = this.frameRunning634 || this.frameArming634;
        this.frameRunning634 = false;
        this.frameArming634 = false;
        Choreographer.getInstance().removeFrameCallback(this.framePulse634);
        if (this.frameButton634 != null) {
            this.frameButton634.setText(C0012R.string.razor_frame634_start);
            this.frameButton634.setEnabled(this.campaignMapFrame559 != null && this.profile558 && this.houseSpinner.getSelectedItemPosition() == 1 && this.missionSpinner.getSelectedItemPosition() == 2);
        }
        if (shouldPause) {
            this.worker.execute(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    RazorTerrainPreviewActivity.this.lambda$stopFrame634$62();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stopFrame634$62() {
        try {
            if (this.campaignMapSession559 != null && this.campaignMapSession559.isOpen()) {
                this.campaignMapSession559.frameIngress634(3, 0L);
            }
        } catch (IOException e) {
        } catch (LinkageError e2) {
        } catch (RuntimeException e3) {
        }
    }

    private void toggleSpeed670() {
        if (!this.quickPlay662 || this.destroyed || this.campaignMapSession559 == null || this.speedButton670 == null || this.speedStatus670 == null) {
            return;
        }
        final int i = this.requestedGeneration;
        final int i2 = !this.speedEnabled670 ? 1 : 0;
        this.speedButton670.setEnabled(false);
        this.worker.execute(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                RazorTerrainPreviewActivity.this.lambda$toggleSpeed670$64(i, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleSpeed670$64(final int generation, int desired) {
        int[] result = null;
        String error = null;
        try {
            if (!this.destroyed && generation == this.requestedGeneration && this.campaignMapSession559 != null && this.campaignMapSession559.isOpen()) {
                result = this.campaignMapSession559.speedMode670(desired, this.selectedUnitOrdinal559);
            }
        } catch (IOException | LinkageError | RuntimeException ex) {
            error = ex.getMessage();
        }
        final int[] row = result;
        final String reason = error;
        runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                RazorTerrainPreviewActivity.this.lambda$toggleSpeed670$63(generation, row, reason);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleSpeed670$63(int generation, int[] row, String reason) {
        if (this.destroyed || generation != this.requestedGeneration) {
            return;
        }
        this.speedButton670.setEnabled(true);
        if (row != null) {
            this.speedStatus670 = row;
            this.speedEnabled670 = row[1] == 1;
            this.speedButton670.setText(this.speedEnabled670 ? C0012R.string.razor_speed670_on : C0012R.string.razor_speed670_off);
            if (this.campaignMapFrame559 != null) {
                updateQuickHud662(this.campaignMapFrame559);
                return;
            }
            return;
        }
        if (reason != null && this.mapHint559 != null) {
            this.mapHint559.setText(reason);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x0583  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x05b2  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x03a5  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x03c1  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x04e9  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0509  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateQuickHud662(com.ahsim.demulation.RazorCampaignMapSnapshot559 r24) {
        /*
            Method dump skipped, instructions count: 1484
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.RazorTerrainPreviewActivity.updateQuickHud662(com.ahsim.demulation.RazorCampaignMapSnapshot559):void");
    }

    private void toggleSandbox560() {
        if (!this.profile558 || this.destroyed || this.campaignMapFrame559 == null || this.demoHandle569 != 0) {
            return;
        }
        if (this.sandboxRunning560) {
            this.pauseReason740 = "Нажата кнопка Пауза";
            pauseSandbox560();
        } else {
            this.pauseReason740 = null;
            this.sandboxRunning560 = true;
            long now736 = System.nanoTime();
            this.razorPacer736.reset(now736);
            this.rateStartNs736 = now736;
            this.rateStartTicks736 = this.sandboxTicks560;
            this.burstFrames736 = 0;
            this.observedCps736 = 0.0d;
            this.sandboxClock560.removeCallbacks(this.sandboxPulse560);
            if (!this.sandboxInFlight560) {
                this.sandboxClock560.post(this.sandboxPulse560);
            }
        }
        updateMapActions559();
        updateGameBar674();
    }

    private void pauseSandbox560() {
        this.autoStartPending662 = false;
        this.sandboxRunning560 = false;
        this.razorPacer736.stop();
        this.sandboxClock560.removeCallbacks(this.sandboxPulse560);
        if (this.sandboxButton560 != null) {
            updateMapActions559();
        }
        updateGameBar674();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: executeSandboxPulse560, reason: merged with bridge method [inline-methods] */
    public void lambda$new$0() {
        if (!this.sandboxRunning560 || this.destroyed || this.sandboxInFlight560 || this.campaignMapFrame559 == null) {
            return;
        }
        final int dueFrames736 = (!this.quickPlay662 || this.gameBar674 == null) ? 1 : this.razorPacer736.takeDue(System.nanoTime());
        if (dueFrames736 == 0) {
            this.sandboxClock560.postDelayed(this.sandboxPulse560, 5L);
            return;
        }
        this.sandboxInFlight560 = true;
        final int generation = this.requestedGeneration;
        final int house = this.houseSpinner.getSelectedItemPosition();
        final int mission = this.missionSpinner.getSelectedItemPosition() + 1;
        this.worker.execute(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                RazorTerrainPreviewActivity.this.lambda$executeSandboxPulse560$66(house, mission, dueFrames736, generation);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(30:13|(3:110|111|(28:113|(2:114|(3:116|117|118)(1:121))|122|123|17|18|(2:22|23)|24|(2:26|27)|40|(1:106)(7:44|45|46|47|48|49|50)|51|(1:55)|56|(1:62)|63|(1:71)|72|(1:91)(2:76|77)|78|79|80|81|(1:83)(1:86)|84|85|34|35))|15|16|17|18|(3:20|22|23)|24|(0)|40|(1:42)|106|51|(2:53|55)|56|(3:58|60|62)|63|(4:65|67|69|71)|72|(1:74)|91|78|79|80|81|(0)(0)|84|85|34|35) */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x01b2, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0231, code lost:
    
        r2 = r0.getClass().getSimpleName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x023a, code lost:
    
        r2 = r0.getMessage();
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x018c, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0191, code lost:
    
        r2 = r22;
        r4 = r23;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a0 A[Catch: LinkageError -> 0x0075, RuntimeException -> 0x0078, IOException -> 0x007b, TRY_ENTER, TRY_LEAVE, TryCatch #8 {IOException -> 0x007b, LinkageError -> 0x0075, RuntimeException -> 0x0078, blocks: (B:111:0x003e, B:20:0x0090, B:22:0x0094, B:26:0x00a0), top: B:110:0x003e }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x017a A[Catch: IOException | LinkageError | RuntimeException -> 0x006c, RuntimeException -> 0x006e, IOException -> 0x0070, TryCatch #12 {IOException | LinkageError | RuntimeException -> 0x006c, blocks: (B:118:0x004b, B:122:0x0060, B:81:0x0176, B:83:0x017a, B:86:0x0181), top: B:117:0x004b }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0181 A[Catch: IOException | LinkageError | RuntimeException -> 0x006c, RuntimeException -> 0x006e, IOException -> 0x0070, TRY_LEAVE, TryCatch #12 {IOException | LinkageError | RuntimeException -> 0x006c, blocks: (B:118:0x004b, B:122:0x0060, B:81:0x0176, B:83:0x017a, B:86:0x0181), top: B:117:0x004b }] */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$executeSandboxPulse560$66(final int r43, final int r44, final int r45, final int r46) {
        /*
            Method dump skipped, instructions count: 661
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.RazorTerrainPreviewActivity.lambda$executeSandboxPulse560$66(int, int, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$executeSandboxPulse560$65(String failure, RazorCampaignNativeSession.SandboxTick560 result, RazorCampaignMapSnapshot559 updated, int generation, int house, int mission, int[] newOwnerHud743, int dueFrames736, RazorTickEvidence729 newProof729, int[] newCore667, int[] newCadence668, int[] newSpeed670, int[] newEmc671, int[] newEmc672, int[] newBuild715, int[] newOwner716, int[] newOwner673, RazorCoreWorldAdapter663.Snapshot updatedBridge663, RazorCoreRoute664 updatedWitness665, int[] newFacing666, int[] updatedSubtiles565, RazorDynamicObjects569 updatedDynamic569) {
        String string;
        this.sandboxInFlight560 = false;
        if (!this.destroyed && !isFinishing()) {
            if (failure != null) {
                this.runtimeDiagnostics749.event("C_CYCLE_FAILURE", failure);
                this.lastPulseFailure729 = failure;
                this.pauseReason740 = "Ошибка обновления";
                pauseSandbox560();
                if (this.mapHint559 != null) {
                    this.mapHint559.setText(getString(C0012R.string.razor_preview_error, new Object[]{failure}));
                    return;
                }
                return;
            }
            if (result != null && updated != null) {
                this.lastPulseFailure729 = null;
                if (generation == this.requestedGeneration && house == this.houseSpinner.getSelectedItemPosition() && mission == this.missionSpinner.getSelectedItemPosition() + 1) {
                    this.ownerHud743 = newOwnerHud743;
                    this.sandboxTicks560 = result.ticks;
                    this.burstFrames736 = dueFrames736;
                    if (this.quickPlay662 && this.gameBar674 != null) {
                        long now736 = System.nanoTime();
                        long duration736 = now736 - this.rateStartNs736;
                        if (duration736 >= 2000000000) {
                            this.observedCps736 = ((this.sandboxTicks560 - this.rateStartTicks736) * 1.0E9d) / duration736;
                            this.rateStartTicks736 = this.sandboxTicks560;
                            this.rateStartNs736 = now736;
                        }
                    }
                    if (newProof729 != null) {
                        this.currentProof729 = newProof729;
                    }
                    this.sandboxMoves560 = result.moves;
                    this.corePass667 = newCore667;
                    this.coreCadence668 = newCadence668;
                    this.speedStatus670 = newSpeed670;
                    this.emcStatus671 = newEmc671;
                    this.emcStatus672 = newEmc672;
                    if (newBuild715 != null) {
                        this.buildStatus715 = newBuild715;
                    }
                    if (newOwner716 != null) {
                        this.buildOwner716 = newOwner716;
                    }
                    this.emcOwner673 = newOwner673;
                    this.coreSnapshot663 = updatedBridge663;
                    if (this.quickPlay662 && this.followSelected663 && this.selectedUnitOrdinal559 >= 0 && this.selectedUnitOrdinal559 < updated.units.length && this.navigator != null) {
                        RazorCampaignMapSnapshot559.Unit u = updated.units[this.selectedUnitOrdinal559];
                        if ((u.f28x < this.navigator.m18x() + 2 || u.f28x >= (this.navigator.m18x() + this.navigator.tiles()) - 2 || u.f29y < this.navigator.m19y() + 2 || u.f29y >= (this.navigator.m19y() + this.navigator.rows()) - 2) && this.navigator.focus(u.f28x, u.f29y)) {
                            this.smoothCamera679.reset(this.navigator.m18x(), this.navigator.m19y());
                            requestFrame(false);
                        }
                    }
                    if (this.quickPlay662) {
                        this.routeWitness664 = updatedWitness665;
                        this.facing666 = newFacing666;
                        if (newFacing666 != null && newFacing666.length == (updated.units.length * 2) + 6 && this.selectedUnitOrdinal559 >= 0 && this.selectedUnitOrdinal559 < updated.units.length && newFacing666[(this.selectedUnitOrdinal559 * 2) + 6] == 1) {
                            int currentTurn753 = newFacing666[(this.selectedUnitOrdinal559 * 2) + 7] & 255;
                            if (this.lastTurnUnit753 != this.selectedUnitOrdinal559 || this.lastTurnAngle753 != currentTurn753) {
                                this.lastTurnUnit753 = this.selectedUnitOrdinal559;
                                this.lastTurnAngle753 = currentTurn753;
                                RazorRuntimeDiagnostics749 razorRuntimeDiagnostics749 = this.runtimeDiagnostics749;
                                int i = -1;
                                StringBuilder append = new StringBuilder().append("unit=").append(this.selectedUnitOrdinal559).append(" angle=").append(currentTurn753).append(" c=").append(this.sandboxTicks560).append(" CperSec=").append(Math.round(this.observedCps736)).append(" moveGate=").append((newCadence668 == null || newCadence668.length != 10) ? -1 : newCadence668[2]).append(" turnGate=").append((newCadence668 == null || newCadence668.length != 10) ? -1 : newCadence668[3]).append(" scriptGate=");
                                if (newCadence668 != null && newCadence668.length == 10) {
                                    i = newCadence668[4];
                                }
                                razorRuntimeDiagnostics749.event("TURN753", append.append(i).toString());
                            }
                        }
                    } else if (this.routeWitness664 != null && (updated.activeUnit != this.routeWitness664.unit || updated.targetX != this.routeWitness664.goalX || updated.targetY != this.routeWitness664.goalY)) {
                        this.routeWitness664 = null;
                    }
                    this.campaignMapFrame559 = updated;
                    this.campaignSubtiles565 = updatedSubtiles565;
                    this.dynamicObjects569 = updatedDynamic569;
                    if (this.quickPlay662 && this.gameBar674 == null) {
                        updateQuickHud662(updated);
                    }
                    updateGameBar674();
                    if (this.mapView != null) {
                        this.mapView.invalidate();
                    }
                    if (this.selectedUnitOrdinal559 >= 0 && this.selectedUnitOrdinal559 < updated.units.length) {
                        this.objectDetails.setText(selectedUnitLabel566(updated.units[this.selectedUnitOrdinal559]));
                    }
                    TextView textView = this.mapHint559;
                    if (this.quickPlay662) {
                        string = getString(C0012R.string.razor_quick662_howto);
                    } else {
                        string = getString(C0012R.string.razor_auto560_progress, new Object[]{Integer.valueOf(this.sandboxTicks560), Integer.valueOf(this.sandboxMoves560)});
                    }
                    textView.setText(string);
                    updateMapActions559();
                }
                if (this.sandboxRunning560) {
                    this.sandboxClock560.postDelayed(this.sandboxPulse560, (!this.quickPlay662 || this.gameBar674 == null) ? 90L : 16L);
                    return;
                }
                return;
            }
            this.runtimeDiagnostics749.event("C_CYCLE_FAILURE", "Incomplete native frame");
            this.lastPulseFailure729 = "Неполный ответ игрового цикла";
            this.pauseReason740 = "Неполный ответ игрового цикла";
            pauseSandbox560();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.runtimeDiagnostics749.event("LIFECYCLE", "onResume, resume=" + this.resumeAfterBackground741);
        if (this.resumeAfterBackground741) {
            this.resumeAfterBackground741 = false;
            if (!this.destroyed && this.quickPlay662 && this.campaignMapFrame559 != null && !this.sandboxRunning560 && this.lastPulseFailure729 == null) {
                toggleSandbox560();
            }
        }
        if (this.quickPlay662 && this.source != null && this.originalSprites674 == null && !this.destroyed) {
            this.worker.execute(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    RazorTerrainPreviewActivity.this.lambda$onResume$68();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResume$68() {
        if (!this.destroyed) {
            loadOriginalSpriteArt674();
        }
        runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                RazorTerrainPreviewActivity.this.lambda$onResume$67();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResume$67() {
        if (!this.destroyed && !isFinishing()) {
            updateGameBar674();
            if (this.mapView != null) {
                this.mapView.invalidate();
            }
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        this.runtimeDiagnostics749.event("LIFECYCLE", "onPause C=" + this.sandboxTicks560 + " selected=" + this.selectedUnitOrdinal559);
        stopFrame634();
        boolean pendingStart741 = false;
        this.resumeAfterBackground741 = this.quickPlay662 && this.sandboxRunning560 && this.lastPulseFailure729 == null;
        if (this.resumeAfterBackground741) {
            this.pauseReason740 = "Android: временная пауза в фоне";
        }
        if (this.quickPlay662 && this.autoStartPending662) {
            pendingStart741 = true;
        }
        pauseSandbox560();
        if (pendingStart741) {
            this.autoStartPending662 = true;
        }
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String selectedUnitLabel566(RazorCampaignMapSnapshot559.Unit u) {
        String label = getString(C0012R.string.razor_map559_selected, new Object[]{Integer.valueOf(u.ordinal), Integer.valueOf(u.owner), Integer.valueOf(u.type), Integer.valueOf(u.f28x), Integer.valueOf(u.f29y)});
        try {
            if (this.campaignMapSession559 != null && this.campaignMapSession559.isOpen()) {
                int[] id = this.campaignMapSession559.selectedUnitIdentity566(u.ordinal);
                if (id[4] == u.owner && id[5] == u.type && id[7] == u.f28x && id[8] == u.f29y) {
                    return label + getString(C0012R.string.razor_source566_suffix, new Object[]{Integer.valueOf(id[3]), Integer.valueOf(id[6])});
                }
            }
        } catch (IOException e) {
        } catch (LinkageError e2) {
        } catch (RuntimeException e3) {
        }
        return label;
    }

    private void updateCoordinates() {
        if (this.navigator == null) {
            return;
        }
        this.coordinates.setText(getString(C0012R.string.razor_preview_coordinates, new Object[]{Integer.valueOf(this.navigator.m18x()), Integer.valueOf(this.navigator.m19y()), Integer.valueOf(this.navigator.tiles()), Integer.valueOf(this.navigator.scenarioWidth()), Integer.valueOf(this.navigator.scenarioHeight())}));
    }

    private void failure(final String why) {
        runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                RazorTerrainPreviewActivity.this.lambda$failure$69(why);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$failure$69(String why) {
        if (this.destroyed || isFinishing()) {
            return;
        }
        this.progress.setVisibility(4);
        this.status.setText(getString(C0012R.string.razor_preview_error, new Object[]{why}));
        if (this.gameBar674 != null) {
            this.gameBar674.setText("Не удалось открыть карту: " + why);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        stopFrame634();
        pauseSandbox560();
        this.destroyed = true;
        this.requestedGeneration++;
        this.worker.execute(new Runnable() { // from class: com.ahsim.demulation.RazorTerrainPreviewActivity$$ExternalSyntheticLambda68
            @Override // java.lang.Runnable
            public final void run() {
                RazorTerrainPreviewActivity.this.lambda$onDestroy$70();
            }
        });
        this.worker.shutdown();
        if (this.canvasBitmap != null) {
            this.canvasBitmap.recycle();
            this.canvasBitmap = null;
        }
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDestroy$70() {
        if (this.liveWorld != null) {
            this.liveWorld.close();
            this.liveWorld = null;
        }
        if (this.nativeObjects != null) {
            this.nativeObjects.close();
            this.nativeObjects = null;
        }
        if (this.campaignMapSession559 != null) {
            this.campaignMapSession559.close();
            this.campaignMapSession559 = null;
        }
        if (this.retainedBootWorld != null) {
            this.retainedBootWorld.close();
            this.retainedBootWorld = null;
        }
    }

    private final class MapCanvas extends View {
        private final RectF artRect674;
        private final Paint bitmapPaint;
        private final Paint borderPaint;
        private float displayCell675;
        private int displayHeight675;
        private int displayLeft;
        private int displaySize;
        private int displayTop;
        private int displayWidth675;
        private float downX;
        private float downY;
        private boolean dragging679;
        private float lastX679;
        private float lastY679;
        private final Paint markerPaint;
        private final Paint markerStroke;
        private final int[] ownerColors;
        private boolean pinchInProgress675;
        private float pinchSpan675;
        private final float[] spriteBounds677;

        MapCanvas() {
            super(RazorTerrainPreviewActivity.this);
            this.bitmapPaint = new Paint();
            this.borderPaint = new Paint();
            this.markerPaint = new Paint(1);
            this.markerStroke = new Paint(1);
            this.ownerColors = new int[]{-10242843, -2397079, -7092882, -2181782, -3827998};
            this.artRect674 = new RectF();
            this.spriteBounds677 = new float[4];
            setBackgroundColor(-16777216);
            this.bitmapPaint.setFilterBitmap(false);
            this.bitmapPaint.setAntiAlias(false);
            this.borderPaint.setStyle(Paint.Style.STROKE);
            this.borderPaint.setStrokeWidth(RazorTerrainPreviewActivity.this.m17dp(1));
            this.borderPaint.setColor(RazorTerrainPreviewActivity.ACCENT);
            this.markerStroke.setStyle(Paint.Style.STROKE);
            this.markerStroke.setStrokeWidth(RazorTerrainPreviewActivity.this.m17dp(2));
            this.markerStroke.setColor(-15724528);
        }

        @Override // android.view.View
        protected void onSizeChanged(int w, int h, int oldW, int oldH) {
            super.onSizeChanged(w, h, oldW, oldH);
            if (!RazorTerrainPreviewActivity.this.quickPlay662 || w <= RazorTerrainPreviewActivity.this.m17dp(8) || h <= RazorTerrainPreviewActivity.this.m17dp(8)) {
                return;
            }
            RazorTerrainPreviewActivity.this.classicViewWidth678 = w;
            RazorTerrainPreviewActivity.this.classicViewHeight678 = h;
            float ratio = h / w;
            if (w != oldW || h != oldH || RazorTerrainPreviewActivity.this.navigator == null || !RazorTerrainPreviewActivity.this.navigator.classicMode678()) {
                RazorTerrainPreviewActivity.this.gameViewportRatio675 = ratio;
                if (RazorTerrainPreviewActivity.this.source == null || RazorTerrainPreviewActivity.this.navigator == null) {
                    return;
                }
                RazorTerrainPreviewActivity.this.requestFrame(false);
            }
        }

        private boolean drawUnitArt674(Canvas canvas, RazorCampaignMapSnapshot559.Unit u, float cx, float cy, float cell) {
            int facing;
            GenesisObjectArt.SpriteFrame frame;
            GenesisObjectArt art = RazorTerrainPreviewActivity.this.originalSprites674;
            if (art != null && u.type >= 0) {
                if (u.type < 27) {
                    try {
                        if (RazorTerrainPreviewActivity.this.facing666 != null && RazorTerrainPreviewActivity.this.facing666.length == (RazorTerrainPreviewActivity.this.campaignMapFrame559.units.length * 2) + 6 && RazorTerrainPreviewActivity.this.facing666[(u.ordinal * 2) + 6] == 1) {
                            int facing2 = RazorTerrainPreviewActivity.this.facing666[(u.ordinal * 2) + 7];
                            facing = facing2;
                        } else {
                            facing = 0;
                        }
                        int animation = (RazorTerrainPreviewActivity.this.sandboxTicks560 / 3) & 3;
                        frame = art.getUnitFrame(u.type, facing, facing, animation, u.owner);
                        if ((frame == null || frame.bitmap == null) && animation != 0) {
                            frame = art.getUnitFrame(u.type, facing, facing, 0, u.owner);
                        }
                    } catch (RuntimeException e) {
                        ex = e;
                    }
                    try {
                        if (frame != null && frame.bitmap != null) {
                            RazorPlayGeometry677.spriteBounds(cx, cy, cell, frame.minX, frame.minY, frame.bitmap.getWidth(), frame.bitmap.getHeight(), this.spriteBounds677);
                            this.artRect674.set(this.spriteBounds677[0], this.spriteBounds677[1], this.spriteBounds677[2], this.spriteBounds677[3]);
                            canvas.drawBitmap(frame.bitmap, (Rect) null, this.artRect674, this.bitmapPaint);
                            return true;
                        }
                        if (RazorTerrainPreviewActivity.this.lastMissingArtType740 != u.type) {
                            RazorTerrainPreviewActivity.this.lastMissingArtType740 = u.type;
                            RazorTerrainPreviewActivity.this.artFrameError740 = "Нет изображения юнита типа " + u.type + " в выбранной графике Dune";
                            Log.w(RazorTerrainPreviewActivity.TAG, "Razor art frame missing for unit type " + u.type);
                        }
                        return false;
                    } catch (RuntimeException e2) {
                        ex = e2;
                        if (RazorTerrainPreviewActivity.this.lastMissingArtType740 != u.type) {
                            RazorTerrainPreviewActivity.this.lastMissingArtType740 = u.type;
                            RazorTerrainPreviewActivity.this.artFrameError740 = "Ошибка изображения юнита типа " + u.type;
                            Log.w(RazorTerrainPreviewActivity.TAG, "Razor unit art failed type=" + u.type, ex);
                            RazorTerrainPreviewActivity.this.runtimeDiagnostics749.error("UNIT_ART_" + u.type, ex);
                        }
                        return false;
                    }
                }
            }
            return false;
        }

        private boolean drawBuildingArt674(Canvas canvas, RazorCampaignMapSnapshot559.Building b, float cell) {
            int dx;
            boolean z;
            MapCanvas mapCanvas = this;
            RazorCampaignMapSnapshot559.Building building = b;
            GenesisObjectArt art = RazorTerrainPreviewActivity.this.originalSprites674;
            boolean z2 = false;
            if (art == null || RazorTerrainPreviewActivity.this.navigator == null || building.type < 0) {
                return false;
            }
            if (building.type >= 19) {
                return false;
            }
            int[] dims = RazorTerrainPreviewActivity.this.structureDimensions674 == null ? null : RazorTerrainPreviewActivity.this.structureDimensions674[building.type];
            int width = dims == null ? 1 : Math.max(1, dims[0]);
            int height = dims != null ? Math.max(1, dims[1]) : 1;
            boolean drawn = false;
            int dy = 0;
            while (dy < height) {
                boolean drawn2 = drawn;
                int dx2 = 0;
                while (dx2 < width) {
                    try {
                        int mapX = building.f26x + dx2;
                        int mapY = building.f27y + dy;
                        if (mapX < RazorTerrainPreviewActivity.this.navigator.m18x() || mapY < RazorTerrainPreviewActivity.this.navigator.m19y()) {
                            dx = dx2;
                            z = z2;
                        } else if (mapX >= RazorTerrainPreviewActivity.this.navigator.m18x() + RazorTerrainPreviewActivity.this.navigator.tiles()) {
                            dx = dx2;
                            z = z2;
                        } else if (mapY >= RazorTerrainPreviewActivity.this.navigator.m19y() + RazorTerrainPreviewActivity.this.navigator.rows()) {
                            dx = dx2;
                            z = z2;
                        } else {
                            z = z2;
                            try {
                                Bitmap sprite = art.getPreferredStructureMetatileBitmap(building.type, 520, (dy * 64) + 520 + dx2);
                                if (sprite == null) {
                                    dx = dx2;
                                } else {
                                    float x = mapCanvas.displayLeft + ((mapX - RazorTerrainPreviewActivity.this.navigator.m18x()) * cell);
                                    float y = mapCanvas.displayTop + ((mapY - RazorTerrainPreviewActivity.this.navigator.m19y()) * cell);
                                    dx = dx2;
                                    mapCanvas.artRect674.set(x, y, x + cell, y + cell);
                                    try {
                                        canvas.drawBitmap(sprite, (Rect) null, mapCanvas.artRect674, mapCanvas.bitmapPaint);
                                        drawn2 = true;
                                    } catch (RuntimeException e) {
                                        return z;
                                    }
                                }
                            } catch (RuntimeException e2) {
                                return z;
                            }
                        }
                        dx2 = dx + 1;
                        mapCanvas = this;
                        building = b;
                        z2 = z;
                    } catch (RuntimeException e3) {
                        return z2;
                    }
                }
                dy++;
                mapCanvas = this;
                building = b;
                drawn = drawn2;
            }
            return drawn;
        }

        private void drawUnitSelection677(Canvas canvas, float cell, boolean enemy) {
            float pad = Math.max(RazorTerrainPreviewActivity.this.m17dp(1), 0.07f * cell);
            float left = this.artRect674.left - pad;
            float top = this.artRect674.top - pad;
            float right = this.artRect674.right + pad;
            float bottom = this.artRect674.bottom + pad;
            float minSpan = Math.max(RazorTerrainPreviewActivity.this.m17dp(10), 0.34f * cell);
            if (right - left < minSpan) {
                float middle = (left + right) * 0.5f;
                left = middle - (minSpan * 0.5f);
                right = middle + (minSpan * 0.5f);
            }
            if (bottom - top < minSpan) {
                float middle2 = (top + bottom) * 0.5f;
                top = middle2 - (minSpan * 0.5f);
                bottom = middle2 + (0.5f * minSpan);
            }
            float len = Math.min(0.22f * cell, Math.min(right - left, bottom - top) * 0.4f);
            this.markerPaint.setColor(enemy ? -952719 : -7210119);
            this.markerPaint.setStrokeWidth(Math.max(RazorTerrainPreviewActivity.this.m16dp(1.5f), 0.065f * cell));
            this.markerPaint.setStyle(Paint.Style.STROKE);
            int sx = 0;
            while (sx <= 1) {
                int sy = 0;
                while (sy <= 1) {
                    float x = sx == 0 ? left : right;
                    float y = sy == 0 ? top : bottom;
                    float ix = sx == 0 ? len : -len;
                    float iy = sy == 0 ? len : -len;
                    canvas.drawLine(x, y, x + ix, y, this.markerPaint);
                    canvas.drawLine(x, y, x, y + iy, this.markerPaint);
                    sy++;
                }
                sx++;
            }
            this.markerPaint.setStyle(Paint.Style.FILL);
        }

        private void drawClassicUnitSelection678(Canvas canvas, float cx, float cy, float cell) {
            float half = (13.0f * cell) / 32.0f;
            RazorClassicView678.drawCorners(canvas, this.markerPaint, cx - half, cy - half, cx + half, cy + half, (6.0f * cell) / 32.0f, Math.max(1.0f, cell / 32.0f), -1);
        }

        private void drawClassicCursor678(Canvas canvas, float cell) {
            if (!RazorTerrainPreviewActivity.this.quickPlay662 || RazorTerrainPreviewActivity.this.navigator == null || RazorTerrainPreviewActivity.this.classicCursorX678 < 0) {
                return;
            }
            if (RazorTerrainPreviewActivity.this.classicCursorY678 < 0) {
                return;
            }
            int mx = RazorTerrainPreviewActivity.this.classicCursorX678 - RazorTerrainPreviewActivity.this.navigator.m18x();
            int my = RazorTerrainPreviewActivity.this.classicCursorY678 - RazorTerrainPreviewActivity.this.navigator.m19y();
            if (mx < 0 || my < 0 || mx >= RazorTerrainPreviewActivity.this.navigator.tiles()) {
                return;
            }
            if (my >= RazorTerrainPreviewActivity.this.navigator.rows()) {
                return;
            }
            float x = this.displayLeft + (mx * cell);
            float y = this.displayTop + (my * cell);
            RazorClassicView678.drawCorners(canvas, this.markerPaint, x, y, x + cell, y + cell, (7.0f * cell) / 32.0f, Math.max(1.0f, cell / 32.0f), Color.rgb(245, 225, 135));
        }

        private void drawBuildingSelection675(Canvas canvas, RazorCampaignMapSnapshot559.Building b, float cell) {
            if (RazorTerrainPreviewActivity.this.navigator == null) {
                return;
            }
            int[] dims = (RazorTerrainPreviewActivity.this.structureDimensions674 == null || b.type >= RazorTerrainPreviewActivity.this.structureDimensions674.length) ? null : RazorTerrainPreviewActivity.this.structureDimensions674[b.type];
            int bw = dims == null ? 1 : Math.max(1, dims[0]);
            int bh = dims != null ? Math.max(1, dims[1]) : 1;
            float left = Math.max(this.displayLeft, this.displayLeft + ((b.f26x - RazorTerrainPreviewActivity.this.navigator.m18x()) * cell));
            float top = Math.max(this.displayTop, this.displayTop + ((b.f27y - RazorTerrainPreviewActivity.this.navigator.m19y()) * cell));
            float right = Math.min(this.displayLeft + this.displayWidth675, this.displayLeft + (((b.f26x + bw) - RazorTerrainPreviewActivity.this.navigator.m18x()) * cell));
            float bottom = Math.min(this.displayTop + this.displayHeight675, this.displayTop + (((b.f27y + bh) - RazorTerrainPreviewActivity.this.navigator.m19y()) * cell));
            if (right <= left || bottom <= top) {
                return;
            }
            RazorClassicView678.drawCorners(canvas, this.markerPaint, left, top, right, bottom, (6.0f * cell) / 32.0f, Math.max(1.0f, cell / 32.0f), -1);
        }

        /* JADX WARN: Removed duplicated region for block: B:101:0x043c  */
        /* JADX WARN: Removed duplicated region for block: B:146:0x043e  */
        /* JADX WARN: Removed duplicated region for block: B:147:0x042f  */
        /* JADX WARN: Removed duplicated region for block: B:98:0x042b  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onDraw(android.graphics.Canvas r35) {
            /*
                Method dump skipped, instructions count: 4141
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.RazorTerrainPreviewActivity.MapCanvas.onDraw(android.graphics.Canvas):void");
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent e) {
            if (RazorTerrainPreviewActivity.this.navigator == null || this.displaySize <= 0) {
                return true;
            }
            int action = e.getActionMasked();
            if (action == 0) {
                float x = e.getX();
                this.lastX679 = x;
                this.downX = x;
                float y = e.getY();
                this.lastY679 = y;
                this.downY = y;
                this.dragging679 = false;
                this.pinchInProgress675 = false;
                RazorTerrainPreviewActivity.this.smoothCamera679.ensure(RazorTerrainPreviewActivity.this.navigator.m18x(), RazorTerrainPreviewActivity.this.navigator.m19y());
                return true;
            }
            if (RazorTerrainPreviewActivity.this.quickPlay662 && action == 5 && e.getPointerCount() >= 2) {
                this.pinchInProgress675 = true;
                return true;
            }
            if (RazorTerrainPreviewActivity.this.quickPlay662 && action == 6) {
                return true;
            }
            if (RazorTerrainPreviewActivity.this.quickPlay662 && e.getPointerCount() >= 2) {
                return true;
            }
            if (RazorTerrainPreviewActivity.this.quickPlay662 && action == 2 && !this.pinchInProgress675) {
                float x2 = e.getX();
                float y2 = e.getY();
                if (!this.dragging679 && Math.hypot(x2 - this.downX, y2 - this.downY) > RazorTerrainPreviewActivity.this.m17dp(6)) {
                    this.dragging679 = true;
                    RazorTerrainPreviewActivity.this.followSelected663 = false;
                }
                if (this.dragging679) {
                    int oldX = RazorTerrainPreviewActivity.this.navigator.m18x();
                    int oldY = RazorTerrainPreviewActivity.this.navigator.m19y();
                    if (RazorTerrainPreviewActivity.this.smoothCamera679.drag(this.lastX679 - x2, this.lastY679 - y2, this.displayCell675, RazorTerrainPreviewActivity.this.navigator.minX(), RazorTerrainPreviewActivity.this.navigator.minY(), RazorTerrainPreviewActivity.this.navigator.maxX(), RazorTerrainPreviewActivity.this.navigator.maxY(), RazorTerrainPreviewActivity.this.navigator.tiles(), RazorTerrainPreviewActivity.this.navigator.rows(), RazorTerrainPreviewActivity.this.terrainOriginX679, RazorTerrainPreviewActivity.this.terrainOriginY679, RazorTerrainPreviewActivity.this.terrainCols679, RazorTerrainPreviewActivity.this.terrainRows679)) {
                        RazorTerrainPreviewActivity.this.navigator.pan(((int) Math.floor(RazorTerrainPreviewActivity.this.smoothCamera679.f52x)) - oldX, ((int) Math.floor(RazorTerrainPreviewActivity.this.smoothCamera679.f53y)) - oldY);
                        invalidate();
                        if ((oldX != RazorTerrainPreviewActivity.this.navigator.m18x() || oldY != RazorTerrainPreviewActivity.this.navigator.m19y()) && !RazorTerrainPreviewActivity.this.panFrameRequested679) {
                            RazorTerrainPreviewActivity.this.panFrameRequested679 = true;
                            RazorTerrainPreviewActivity.this.requestFrame(false);
                        }
                    }
                }
                this.lastX679 = x2;
                this.lastY679 = y2;
                return true;
            }
            if (action == 3) {
                this.dragging679 = false;
                this.pinchInProgress675 = false;
                return true;
            }
            if (action != 1) {
                return true;
            }
            if (!this.pinchInProgress675) {
                if (RazorTerrainPreviewActivity.this.quickPlay662) {
                    if (!this.dragging679) {
                        pickObject(e.getX(), e.getY());
                    }
                } else {
                    float deltaX = this.downX - e.getX();
                    float deltaY = this.downY - e.getY();
                    if (Math.abs(deltaX) < RazorTerrainPreviewActivity.this.m17dp(8) && Math.abs(deltaY) < RazorTerrainPreviewActivity.this.m17dp(8)) {
                        pickObject(e.getX(), e.getY());
                    } else if (RazorTerrainPreviewActivity.this.navigator.pan(Math.round(deltaX / this.displayCell675), Math.round(deltaY / this.displayCell675))) {
                        RazorTerrainPreviewActivity.this.requestFrame(false);
                    }
                }
            }
            this.dragging679 = false;
            this.pinchInProgress675 = false;
            performClick();
            return true;
        }

        private void pickObject(float px, float py) {
            String string;
            if (RazorTerrainPreviewActivity.this.profile558) {
                RazorCampaignMapSnapshot559 state = RazorTerrainPreviewActivity.this.campaignMapFrame559;
                if (state == null || RazorTerrainPreviewActivity.this.navigator == null || px < this.displayLeft || py < this.displayTop || px >= this.displayLeft + this.displayWidth675 || py >= this.displayTop + this.displayHeight675) {
                    return;
                }
                int x = RazorPlayGeometry677.screenToCell(px, this.displayLeft, this.displayCell675, RazorTerrainPreviewActivity.this.navigator.m18x());
                int y = RazorPlayGeometry677.screenToCell(py, this.displayTop, this.displayCell675, RazorTerrainPreviewActivity.this.navigator.m19y());
                if (RazorTerrainPreviewActivity.this.construction571 != null) {
                    if (RazorTerrainPreviewActivity.this.construction571.phase == 1) {
                        RazorTerrainPreviewActivity.this.requestConstruction571(2, x, y);
                        return;
                    } else if (RazorTerrainPreviewActivity.this.construction571.phase == 3) {
                        RazorTerrainPreviewActivity.this.requestConstruction571(4, x, y);
                        return;
                    } else if (RazorTerrainPreviewActivity.this.construction571.m8at(x, y)) {
                        RazorTerrainPreviewActivity.this.objectDetails.setText(RazorTerrainPreviewActivity.this.getString(C0012R.string.razor_order571_selected, new Object[]{Integer.valueOf(RazorTerrainPreviewActivity.this.construction571.owner), Integer.valueOf(RazorTerrainPreviewActivity.this.construction571.f32x), Integer.valueOf(RazorTerrainPreviewActivity.this.construction571.f33y), Integer.valueOf(RazorTerrainPreviewActivity.this.construction571.phase)}));
                        return;
                    }
                }
                if (RazorTerrainPreviewActivity.this.demoHandle569 != 0 && RazorTerrainPreviewActivity.this.demoPending569) {
                    RazorTerrainPreviewActivity.this.requestLifecycleDemo569(2, x, y);
                    return;
                }
                RazorDynamicObjects569.Entry dynamic = RazorTerrainPreviewActivity.this.dynamicObjects569 == null ? null : RazorTerrainPreviewActivity.this.dynamicObjects569.m9at(x, y);
                if (dynamic != null) {
                    RazorTerrainPreviewActivity.this.objectDetails.setText(RazorTerrainPreviewActivity.this.getString(C0012R.string.razor_demo569_selected, new Object[]{Integer.valueOf(dynamic.slot), Integer.valueOf(dynamic.owner), Integer.valueOf(dynamic.type), Integer.valueOf(x), Integer.valueOf(y)}));
                    return;
                }
                RazorCampaignMapSnapshot559.Building building663 = RazorTerrainPreviewActivity.this.gameBar674 == null ? RazorPrototypeView663.buildingAt(state, x, y) : RazorTerrainPreviewActivity.this.gameBuildingAt674(state, x, y);
                if (building663 != null && state.unitAt(x, y) == null) {
                    RazorTerrainPreviewActivity.this.selectedUnitOrdinal559 = -1;
                    RazorTerrainPreviewActivity.this.selectedEnemy674 = -1;
                    RazorTerrainPreviewActivity.this.selectedBuilding674 = building663.ordinal;
                    RazorTerrainPreviewActivity.this.selectionCount749++;
                    RazorTerrainPreviewActivity.this.runtimeDiagnostics749.event("SELECT_BUILDING", "id=" + building663.ordinal + " type=" + building663.type + " cell=" + building663.f26x + "," + building663.f27y);
                    RazorTerrainPreviewActivity.this.routeWitness664 = null;
                    RazorTerrainPreviewActivity.this.objectDetails.setText(RazorTerrainPreviewActivity.this.getString(C0012R.string.razor_preview_object_selected, new Object[]{RazorTerrainPreviewActivity.this.getString(C0012R.string.razor_preview_structure), Integer.valueOf(building663.owner), Integer.valueOf(building663.type), Integer.valueOf(building663.f26x), Integer.valueOf(building663.f27y)}));
                    RazorTerrainPreviewActivity.this.updateGameBar674();
                    RazorTerrainPreviewActivity.this.updateMapActions559();
                    invalidate();
                    return;
                }
                RazorCampaignMapSnapshot559.Unit touched = state.unitAt(x, y);
                if (touched != null) {
                    if (RazorTerrainPreviewActivity.this.quickPlay662 && touched.owner != RazorTerrainPreviewActivity.this.houseSpinner.getSelectedItemPosition()) {
                        RazorTerrainPreviewActivity.this.selectedUnitOrdinal559 = -1;
                        RazorTerrainPreviewActivity.this.selectedBuilding674 = -1;
                        RazorTerrainPreviewActivity.this.selectedEnemy674 = touched.ordinal;
                        RazorTerrainPreviewActivity.this.selectionCount749++;
                        RazorTerrainPreviewActivity.this.runtimeDiagnostics749.event("SELECT_ENEMY", "id=" + touched.ordinal + " type=" + touched.type);
                        RazorTerrainPreviewActivity.this.routeWitness664 = null;
                        RazorTerrainPreviewActivity.this.objectDetails.setText(C0012R.string.razor_quick662_enemy);
                        RazorTerrainPreviewActivity.this.updateGameBar674();
                        RazorTerrainPreviewActivity.this.updateMapActions559();
                        invalidate();
                        return;
                    }
                    if (RazorTerrainPreviewActivity.this.selectedUnitOrdinal559 != touched.ordinal) {
                        RazorTerrainPreviewActivity.this.routeWitness664 = null;
                    }
                    RazorTerrainPreviewActivity.this.selectedUnitOrdinal559 = touched.ordinal;
                    RazorTerrainPreviewActivity.this.selectionCount749++;
                    RazorTerrainPreviewActivity.this.runtimeDiagnostics749.event("SELECT_UNIT", "id=" + touched.ordinal + " type=" + touched.type + " cell=" + touched.f28x + "," + touched.f29y + " camera=" + (RazorTerrainPreviewActivity.this.navigator == null ? "null" : RazorTerrainPreviewActivity.this.navigator.m18x() + "," + RazorTerrainPreviewActivity.this.navigator.m19y()));
                    RazorTerrainPreviewActivity.this.selectedEnemy674 = -1;
                    RazorTerrainPreviewActivity.this.selectedBuilding674 = -1;
                    if (RazorTerrainPreviewActivity.this.quickPlay662 && RazorTerrainPreviewActivity.this.followSelected663 && RazorTerrainPreviewActivity.this.navigator != null) {
                        int beforeX749 = RazorTerrainPreviewActivity.this.navigator.m18x();
                        int beforeY749 = RazorTerrainPreviewActivity.this.navigator.m19y();
                        if (RazorTerrainPreviewActivity.this.navigator.focus(touched.f28x, touched.f29y)) {
                            RazorTerrainPreviewActivity.this.focusOldX749 = beforeX749;
                            RazorTerrainPreviewActivity.this.focusOldY749 = beforeY749;
                            RazorTerrainPreviewActivity.this.pendingSelectionFocus749 = true;
                            RazorTerrainPreviewActivity.this.runtimeDiagnostics749.event("FOLLOW_CAMERA", "selected=" + touched.ordinal + " from=" + beforeX749 + "," + beforeY749 + " to=" + RazorTerrainPreviewActivity.this.navigator.m18x() + "," + RazorTerrainPreviewActivity.this.navigator.m19y());
                            RazorTerrainPreviewActivity.this.requestFrame(false);
                        }
                    }
                    RazorTerrainPreviewActivity.this.objectDetails.setText(RazorTerrainPreviewActivity.this.selectedUnitLabel566(touched));
                    RazorTerrainPreviewActivity.this.updateGameBar674();
                    RazorTerrainPreviewActivity.this.updateMapActions559();
                    invalidate();
                    return;
                }
                if (RazorTerrainPreviewActivity.this.selectedUnitOrdinal559 < 0 || RazorTerrainPreviewActivity.this.mapActionPending559) {
                    RazorTerrainPreviewActivity.this.objectDetails.setText(RazorTerrainPreviewActivity.this.getString(C0012R.string.razor_map559_tile, new Object[]{Integer.valueOf(x), Integer.valueOf(y)}));
                    return;
                }
                RazorTerrainPreviewActivity.this.classicCursorX678 = x;
                RazorTerrainPreviewActivity.this.classicCursorY678 = y;
                RazorTerrainPreviewActivity.this.requestMapCommand559(1, RazorTerrainPreviewActivity.this.selectedUnitOrdinal559, x, y);
                return;
            }
            RazorNativeObjectFrameBridge.Frame frame = RazorTerrainPreviewActivity.this.objectFrame;
            if (frame != null && px >= this.displayLeft && py >= this.displayTop && px < this.displayLeft + this.displayWidth675 && py < this.displayTop + this.displayHeight675) {
                int x2 = frame.f40x + ((int) (((px - this.displayLeft) * frame.width) / this.displaySize));
                int y2 = frame.f41y + ((int) (((py - this.displayTop) * frame.height) / this.displayHeight675));
                RazorTerrainPreviewActivity.this.selectedObject = null;
                int i = frame.count() - 1;
                while (true) {
                    if (i < 0) {
                        break;
                    }
                    RazorNativeObjectFrameBridge.Marker marker = frame.marker(i);
                    if (marker.f42x != x2 || marker.f43y != y2) {
                        i--;
                    } else {
                        RazorTerrainPreviewActivity.this.selectedObject = marker;
                        break;
                    }
                }
                if (RazorTerrainPreviewActivity.this.selectedObject != null) {
                    TextView textView = RazorTerrainPreviewActivity.this.objectDetails;
                    RazorTerrainPreviewActivity razorTerrainPreviewActivity = RazorTerrainPreviewActivity.this;
                    int i2 = C0012R.string.razor_preview_object_selected;
                    if (RazorTerrainPreviewActivity.this.selectedObject.kind == 1) {
                        string = RazorTerrainPreviewActivity.this.getString(C0012R.string.razor_preview_unit);
                    } else {
                        string = RazorTerrainPreviewActivity.this.getString(C0012R.string.razor_preview_structure);
                    }
                    textView.setText(razorTerrainPreviewActivity.getString(i2, new Object[]{string, Integer.valueOf(RazorTerrainPreviewActivity.this.selectedObject.owner), Integer.valueOf(RazorTerrainPreviewActivity.this.selectedObject.type), Integer.valueOf(RazorTerrainPreviewActivity.this.selectedObject.f42x), Integer.valueOf(RazorTerrainPreviewActivity.this.selectedObject.f43y)}));
                }
                invalidate();
            }
        }

        @Override // android.view.View
        public boolean performClick() {
            super.performClick();
            return true;
        }
    }

    private Spinner selector(String[] choices) {
        Spinner spinner = new Spinner(this);
        ArrayAdapter<String> adapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_dropdown_item, choices);
        spinner.setAdapter((SpinnerAdapter) adapter);
        return spinner;
    }

    private LinearLayout horizontal() {
        LinearLayout result = new LinearLayout(this);
        result.setGravity(16);
        result.setOrientation(0);
        return result;
    }

    private Button control(String text) {
        Button button = new Button(this);
        button.setText(text);
        button.setTextSize(12.0f);
        button.setAllCaps(false);
        return button;
    }

    private TextView label(String value, int size, int color) {
        TextView label = new TextView(this);
        label.setText(value);
        label.setTextSize(size);
        label.setTextColor(color);
        return label;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dp */
    public int m17dp(int value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dp */
    public float m16dp(float value) {
        return getResources().getDisplayMetrics().density * value;
    }
}
