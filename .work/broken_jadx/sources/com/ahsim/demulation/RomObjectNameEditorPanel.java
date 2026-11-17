package com.ahsim.demulation;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.InputFilter;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.ahsim.demulation.RomAssetInstallState;
import com.ahsim.demulation.RomRuntimeOriginalContentAssets;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
final class RomObjectNameEditorPanel extends LinearLayout {
    private static final int FIRST_EDITABLE_STRUCTURE = 1;
    private final Activity activity;
    private final Button buildingsTab;
    private int category;
    private final LinearLayout editor;
    private final CheckBox enabled;
    private final List<Entry> entries;
    private Bitmap frigatePreview;
    private GenesisClassicPurchaseIconArt iconArt;
    private int loadGeneration;
    private boolean loaded;
    private String profile;
    private final LinearLayout rows;
    private String sha256;
    private RomRuntimeOriginalContentAssets.HudObjectNames sourceNames;
    private final TextView status;
    private final Button unitsTab;
    private static final int WHITE = Color.rgb(239, 240, 239);
    private static final int MUTED = Color.rgb(170, 182, 194);
    private static final int ACCENT = Color.rgb(217, 178, 108);
    private static final int BLUE = Color.rgb(88, 151, 218);
    private static final int CARD = Color.rgb(35, 42, 52);
    private static final int CARD_STROKE = Color.rgb(54, 62, 72);
    private static final String[] STRUCTURES = {"CONCRETE", "CONCRETE", "PALACE", "VEHICLE FACTORY", "HEAVY FACTORY", "HIGH TECH", "HOUSE IX", "WOR", "CONSTRUCTION YARD", "WINDTRAP", "BARRACKS", "STARPORT", "REFINERY", "REPAIR", "WALL", "TURRET", "ROCKET TURRET", "SILO", "OUTPOST"};
    private static final String[] UNITS = {"CARRYALL", "ORNITHOPTER", "INFANTRY", "TROOPERS", "SOLDIER", "TROOPER", "SABOTEUR", "LAUNCHER", "DEVIATOR", "TANK", "SIEGE TANK", "DEVASTATOR", "SONIC TANK", "TRIKE", "RAIDER", "QUAD", "HARVESTER", "MCV", "DEATH HAND", "ROCKET", "AROCKET", "GROCKET", "MINIROCKET", "BULLET", "SONIC BLAST", "SANDWORM", "FRIGATE"};
    private static final int[] EDITABLE_UNITS = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 25};

    RomObjectNameEditorPanel(final Activity activity) {
        super(activity);
        this.entries = new ArrayList();
        this.category = 0;
        this.activity = activity;
        setOrientation(1);
        int pad = m30dp(12);
        setPadding(pad, m30dp(10), pad, m30dp(13));
        setBackground(rounded(CARD, CARD_STROKE, 16));
        this.enabled = new CheckBox(activity);
        this.enabled.setText(C0012R.string.editor_title);
        this.enabled.setTextSize(12.5f);
        this.enabled.setTextColor(WHITE);
        this.enabled.setButtonTintList(ColorStateList.valueOf(BLUE));
        this.enabled.setPadding(m30dp(4), 0, m30dp(4), 0);
        addView(this.enabled, new LinearLayout.LayoutParams(-1, -2));
        this.editor = new LinearLayout(activity);
        this.editor.setOrientation(1);
        this.editor.setPadding(m30dp(5), m30dp(2), m30dp(5), 0);
        addView(this.editor, new LinearLayout.LayoutParams(-1, -2));
        TextView explanation = label(activity.getString(C0012R.string.editor_info), 11.5f, MUTED);
        this.editor.addView(explanation);
        LinearLayout tabs = new LinearLayout(activity);
        tabs.setOrientation(0);
        this.buildingsTab = tab(activity.getString(C0012R.string.editor_buildings));
        this.unitsTab = tab(activity.getString(C0012R.string.editor_units));
        LinearLayout.LayoutParams leftTab = new LinearLayout.LayoutParams(0, m30dp(42), 1.0f);
        leftTab.rightMargin = m30dp(4);
        LinearLayout.LayoutParams rightTab = new LinearLayout.LayoutParams(0, m30dp(42), 1.0f);
        rightTab.leftMargin = m30dp(4);
        tabs.addView(this.buildingsTab, leftTab);
        tabs.addView(this.unitsTab, rightTab);
        this.buildingsTab.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.RomObjectNameEditorPanel$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RomObjectNameEditorPanel.this.lambda$new$0(view);
            }
        });
        this.unitsTab.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.RomObjectNameEditorPanel$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RomObjectNameEditorPanel.this.lambda$new$1(view);
            }
        });
        LinearLayout.LayoutParams tabsLp = new LinearLayout.LayoutParams(-1, -2);
        tabsLp.topMargin = m30dp(10);
        tabsLp.bottomMargin = m30dp(7);
        this.editor.addView(tabs, tabsLp);
        this.status = label("", 11.5f, MUTED);
        this.editor.addView(this.status);
        ScrollView scroll = new ScrollView(activity);
        scroll.setFillViewport(false);
        scroll.setNestedScrollingEnabled(true);
        this.rows = new LinearLayout(activity);
        this.rows.setOrientation(1);
        this.rows.setPadding(m30dp(4), m30dp(4), m30dp(4), m30dp(2));
        scroll.addView(this.rows);
        scroll.setBackground(rounded(Color.rgb(28, 34, 43), CARD_STROKE, 11));
        this.editor.addView(scroll, new LinearLayout.LayoutParams(-1, m30dp(288)));
        this.enabled.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.ahsim.demulation.RomObjectNameEditorPanel$$ExternalSyntheticLambda6
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                RomObjectNameEditorPanel.this.lambda$new$2(activity, compoundButton, z);
            }
        });
        this.editor.setVisibility(8);
        setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View v) {
        this.category = 0;
        rebuild();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View v) {
        this.category = 1;
        rebuild();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(Activity activity, CompoundButton button, boolean checked) {
        if (this.profile == null || this.sha256 == null) {
            return;
        }
        RomObjectNameCorrections.setEnabled(activity, this.profile, this.sha256, checked);
        this.editor.setVisibility(checked ? 0 : 8);
        if (!checked) {
            this.loadGeneration++;
            this.loaded = false;
        } else {
            loadDataIfNeeded();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void setSource(boolean r7, java.lang.String r8, java.lang.String r9) {
        /*
            r6 = this;
            r0 = 8
            r1 = 1
            r2 = 0
            r3 = 0
            if (r7 == 0) goto L61
            boolean r4 = com.ahsim.demulation.RomObjectNameCorrections.supported(r8, r9)
            if (r4 != 0) goto Le
            goto L61
        Le:
            java.lang.String r4 = r6.profile
            boolean r4 = r8.equals(r4)
            if (r4 == 0) goto L28
            java.lang.String r4 = r6.sha256
            if (r4 != 0) goto L1d
            java.lang.String r4 = ""
            goto L1f
        L1d:
            java.lang.String r4 = r6.sha256
        L1f:
            boolean r4 = r9.equalsIgnoreCase(r4)
            if (r4 != 0) goto L26
            goto L28
        L26:
            r4 = r2
            goto L29
        L28:
            r4 = r1
        L29:
            r6.profile = r8
            r6.sha256 = r9
            r6.setVisibility(r2)
            if (r4 == 0) goto L44
            int r5 = r6.loadGeneration
            int r5 = r5 + r1
            r6.loadGeneration = r5
            r6.loaded = r2
            r6.sourceNames = r3
            r6.iconArt = r3
            r6.frigatePreview = r3
            android.widget.LinearLayout r1 = r6.rows
            r1.removeAllViews()
        L44:
            android.app.Activity r1 = r6.activity
            java.lang.String r3 = r6.profile
            java.lang.String r5 = r6.sha256
            boolean r1 = com.ahsim.demulation.RomObjectNameCorrections.isEnabled(r1, r3, r5)
            android.widget.CheckBox r3 = r6.enabled
            r3.setChecked(r1)
            android.widget.LinearLayout r3 = r6.editor
            if (r1 == 0) goto L58
            r0 = r2
        L58:
            r3.setVisibility(r0)
            if (r1 == 0) goto L60
            r6.loadDataIfNeeded()
        L60:
            return
        L61:
            r6.setVisibility(r0)
            int r0 = r6.loadGeneration
            int r0 = r0 + r1
            r6.loadGeneration = r0
            r6.profile = r3
            r6.sha256 = r3
            r6.loaded = r2
            r6.sourceNames = r3
            r6.iconArt = r3
            r6.frigatePreview = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.RomObjectNameEditorPanel.setSource(boolean, java.lang.String, java.lang.String):void");
    }

    private void loadDataIfNeeded() {
        if (this.loaded || this.profile == null) {
            return;
        }
        this.loaded = true;
        this.status.setText(C0012R.string.editor_loading);
        final int generation = this.loadGeneration + 1;
        this.loadGeneration = generation;
        final String wantedProfile = this.profile;
        final String wantedSha = this.sha256;
        new Thread(new Runnable() { // from class: com.ahsim.demulation.RomObjectNameEditorPanel$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                RomObjectNameEditorPanel.this.lambda$loadDataIfNeeded$4(wantedProfile, wantedSha, generation);
            }
        }, "DemulationNameEditorLoad").start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadDataIfNeeded$4(final String wantedProfile, final String wantedSha, final int generation) {
        RomRuntimeOriginalContentAssets.HudObjectNames names;
        GenesisClassicPurchaseIconArt icons;
        String failure;
        RomAssetInstallState.RuntimeBundle bundle;
        final Bitmap frigate = null;
        try {
            bundle = RomAssetInstallState.activeRuntimeBundle(this.activity);
        } catch (Exception e) {
            e = e;
        }
        if (wantedProfile.equals(bundle.sourceProfile)) {
            try {
            } catch (Exception e2) {
                e = e2;
                String failure2 = e.getMessage() == null ? "Ресурсы не загружены" : e.getMessage();
                names = null;
                icons = null;
                failure = failure2;
                final RomRuntimeOriginalContentAssets.HudObjectNames resultNames = names;
                final GenesisClassicPurchaseIconArt resultIcons = icons;
                final String error = failure;
                this.activity.runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.RomObjectNameEditorPanel$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        RomObjectNameEditorPanel.this.lambda$loadDataIfNeeded$3(generation, wantedProfile, wantedSha, resultNames, resultIcons, frigate, error);
                    }
                });
                return;
            }
            if (wantedSha.equalsIgnoreCase(bundle.sourceSha256)) {
                RomRuntimeOriginalContentAssets.HudObjectNames names2 = bundle.originalContentAssets.russianHudObjectNames();
                GenesisClassicPurchaseIconArt icons2 = new GenesisClassicPurchaseIconArt(bundle.worldAssets);
                names = names2;
                icons = icons2;
                failure = null;
                final RomRuntimeOriginalContentAssets.HudObjectNames resultNames2 = names;
                final GenesisClassicPurchaseIconArt resultIcons2 = icons;
                final String error2 = failure;
                this.activity.runOnUiThread(new Runnable() { // from class: com.ahsim.demulation.RomObjectNameEditorPanel$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        RomObjectNameEditorPanel.this.lambda$loadDataIfNeeded$3(generation, wantedProfile, wantedSha, resultNames2, resultIcons2, frigate, error2);
                    }
                });
                return;
            }
        }
        throw new IllegalStateException("Выбрана другая ROM");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadDataIfNeeded$3(int generation, String wantedProfile, String wantedSha, RomRuntimeOriginalContentAssets.HudObjectNames resultNames, GenesisClassicPurchaseIconArt resultIcons, Bitmap resultFrigate, String error) {
        if (generation != this.loadGeneration || this.profile == null || !wantedProfile.equals(this.profile) || !wantedSha.equalsIgnoreCase(this.sha256) || !this.enabled.isChecked()) {
            return;
        }
        this.sourceNames = resultNames;
        this.iconArt = resultIcons;
        this.frigatePreview = resultFrigate;
        this.status.setText(error == null ? this.activity.getString(C0012R.string.editor_ready) : this.activity.getString(C0012R.string.editor_failed, new Object[]{error}));
        rebuild();
    }

    private void rebuild() {
        if (this.rows == null || this.profile == null || !this.enabled.isChecked()) {
            return;
        }
        this.rows.removeAllViews();
        int i = 0;
        int i2 = 1;
        styleTab(this.buildingsTab, this.category == 0);
        styleTab(this.unitsTab, this.category == 1);
        this.entries.clear();
        int i3 = 5;
        if (this.category == 0) {
            for (int t = 1; t < STRUCTURES.length; t++) {
                this.entries.add(new Entry(false, t, false));
            }
        } else {
            for (int t2 : EDITABLE_UNITS) {
                this.entries.add(new Entry(true, t2, false));
            }
            this.entries.add(new Entry(true, 3, true));
            this.entries.add(new Entry(true, 5, true));
        }
        for (final Entry e : this.entries) {
            String base = baseName(e);
            String custom = RomObjectNameCorrections.saved(this.activity, this.profile, this.sha256, e.unit, e.type, e.fremen);
            String name = custom == null ? base : custom;
            LinearLayout line = new LinearLayout(this.activity);
            line.setOrientation(i);
            line.setGravity(16);
            line.setPadding(m30dp(4), m30dp(i3), m30dp(4), m30dp(i3));
            Bitmap bitmap = image(e);
            if (bitmap == null) {
                TextView placeholder = label("—", 14.0f, MUTED);
                placeholder.setGravity(17);
                line.addView(placeholder, new LinearLayout.LayoutParams(m30dp(58), m30dp(42)));
            } else {
                ImageView preview = new ImageView(this.activity);
                preview.setImageBitmap(bitmap);
                preview.setScaleType(ImageView.ScaleType.FIT_CENTER);
                line.addView(preview, new LinearLayout.LayoutParams(m30dp(58), m30dp(42)));
            }
            LinearLayout labels = new LinearLayout(this.activity);
            labels.setOrientation(i2);
            TextView title = label(name, 13.0f, custom != null ? ACCENT : WHITE);
            labels.addView(title);
            TextView subtitle = label(englishName(e) + (custom == null ? "" : "  ·  " + this.activity.getString(C0012R.string.editor_original, new Object[]{base})), 10.3f, MUTED);
            labels.addView(subtitle);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(i, -2, 1.0f);
            lp.leftMargin = m30dp(7);
            line.addView(labels, lp);
            TextView arrow = label("›", 24.0f, ACCENT);
            line.addView(arrow);
            line.setBackground(rounded(Color.rgb(42, 50, 61), CARD_STROKE, 10));
            LinearLayout.LayoutParams rowLp = new LinearLayout.LayoutParams(-1, -2);
            rowLp.bottomMargin = m30dp(3);
            this.rows.addView(line, rowLp);
            line.setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.RomObjectNameEditorPanel$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RomObjectNameEditorPanel.this.lambda$rebuild$5(e, view);
                }
            });
            i = 0;
            i2 = 1;
            i3 = 5;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$rebuild$5(Entry e, View v) {
        edit(e);
    }

    private void edit(final Entry entry) {
        String base = baseName(entry);
        String saved = RomObjectNameCorrections.saved(this.activity, this.profile, this.sha256, entry.unit, entry.type, entry.fremen);
        final EditText text = new EditText(this.activity);
        text.setSingleLine(true);
        text.setInputType(16385);
        text.setFilters(new InputFilter[]{new InputFilter.LengthFilter(40)});
        text.setText(saved == null ? base : saved);
        text.setSelectAllOnFocus(true);
        LinearLayout frame = new LinearLayout(this.activity);
        frame.setOrientation(1);
        frame.setPadding(m30dp(22), m30dp(6), m30dp(22), 0);
        frame.addView(label(this.activity.getString(C0012R.string.editor_original, new Object[]{base}), 12.0f, MUTED));
        frame.addView(text);
        final AlertDialog dialog = new AlertDialog.Builder(this.activity).setTitle(entry.fremen ? this.activity.getString(C0012R.string.editor_fremen) + " — " + englishName(entry) : englishName(entry)).setView(frame).setPositiveButton(C0012R.string.editor_save, (DialogInterface.OnClickListener) null).setNeutralButton(C0012R.string.editor_reset, new DialogInterface.OnClickListener() { // from class: com.ahsim.demulation.RomObjectNameEditorPanel$$ExternalSyntheticLambda7
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                RomObjectNameEditorPanel.this.lambda$edit$6(entry, dialogInterface, i);
            }
        }).setNegativeButton(C0012R.string.editor_cancel, (DialogInterface.OnClickListener) null).create();
        dialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.ahsim.demulation.RomObjectNameEditorPanel$$ExternalSyntheticLambda8
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                RomObjectNameEditorPanel.this.lambda$edit$8(dialog, entry, text, dialogInterface);
            }
        });
        dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$edit$6(Entry entry, DialogInterface d, int w) {
        RomObjectNameCorrections.save(this.activity, this.profile, this.sha256, entry.unit, entry.type, entry.fremen, null);
        rebuild();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$edit$8(final AlertDialog dialog, final Entry entry, final EditText text, DialogInterface ignored) {
        dialog.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: com.ahsim.demulation.RomObjectNameEditorPanel$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RomObjectNameEditorPanel.this.lambda$edit$7(entry, text, dialog, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$edit$7(Entry entry, EditText text, AlertDialog dialog, View v) {
        try {
            RomObjectNameCorrections.save(this.activity, this.profile, this.sha256, entry.unit, entry.type, entry.fremen, text.getText().toString());
            rebuild();
            dialog.dismiss();
        } catch (IllegalArgumentException e) {
            text.setError(this.activity.getString(C0012R.string.editor_invalid));
        }
    }

    private String baseName(Entry e) {
        if (!e.unit) {
            String result = STRUCTURES[e.type];
            if (isRussian() && this.sourceNames != null && this.sourceNames.structure(e.type) != null) {
                return this.sourceNames.structure(e.type);
            }
            if (isGerman() && GermanHudNames.structure(e.type) != null) {
                return GermanHudNames.structure(e.type);
            }
            return result;
        }
        if (e.fremen) {
            if (!isGerman()) {
                return e.type == 3 ? "НАЕМНИКИ" : "НАЕМНИК";
            }
            int i = e.type;
            return "FREMEN";
        }
        if (isRussian()) {
            String identity = GenesisUnitHudIdentity.russianName(e.type, 0);
            if (identity != null) {
                return identity;
            }
            if (this.sourceNames != null && this.sourceNames.unit(e.type) != null) {
                return this.sourceNames.unit(e.type);
            }
        }
        return isGerman() ? GermanUiText.translate(UNITS[e.type]) : UNITS[e.type];
    }

    private String englishName(Entry e) {
        String english = e.unit ? UNITS[e.type] : STRUCTURES[e.type];
        return english + (e.fremen ? " · FREMEN (Palace)" : "");
    }

    private Bitmap image(Entry e) {
        Bitmap icon;
        if (this.iconArt == null) {
            return null;
        }
        return !e.unit ? this.iconArt.getStructurePurchaseIcon(e.type) : e.type == 26 ? this.frigatePreview : (!e.fremen || (icon = this.iconArt.getFremenClassicSelectedIcon(e.type, 3)) == null) ? this.iconArt.getUnitPurchaseIcon(e.type) : icon;
    }

    private boolean isRussian() {
        return "translation_ru_shedevr_lipetsk_usa".equals(this.profile);
    }

    private boolean isGerman() {
        return "dune_arrakis_germany_gm_t70246_00".equals(this.profile);
    }

    private TextView label(String value, float size, int color) {
        TextView v = new TextView(this.activity);
        v.setText(value);
        v.setTextSize(size);
        v.setTextColor(color);
        return v;
    }

    private Button tab(String label) {
        Button b = new Button(this.activity);
        b.setAllCaps(false);
        b.setText(label);
        b.setTextSize(12.5f);
        b.setMinHeight(m30dp(42));
        return b;
    }

    private void styleTab(Button b, boolean selected) {
        b.setTextColor(selected ? Color.rgb(24, 23, 18) : WHITE);
        b.setBackground(rounded(selected ? ACCENT : Color.rgb(42, 50, 61), selected ? Color.rgb(111, 87, 48) : BLUE, 11));
    }

    private GradientDrawable rounded(int color, int stroke, int radiusDp) {
        GradientDrawable bg = new GradientDrawable();
        bg.setColor(color);
        bg.setCornerRadius(m30dp(radiusDp));
        bg.setStroke(m30dp(1), stroke);
        return bg;
    }

    /* renamed from: dp */
    private int m30dp(int value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class Entry {
        final boolean fremen;
        final int type;
        final boolean unit;

        Entry(boolean unit, int type, boolean fremen) {
            this.unit = unit;
            this.type = type;
            this.fremen = fremen;
        }
    }
}
