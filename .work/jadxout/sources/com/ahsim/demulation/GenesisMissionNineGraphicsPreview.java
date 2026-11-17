package com.ahsim.demulation;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.widget.Toast;
import com.ahsim.demulation.GenesisMissionNineGraphicsPreview;
import com.ahsim.demulation.RomAssetInstallState;
import com.ahsim.demulation.RomGraphicsMediaOverlayStore;
import com.ahsim.demulation.RomSelectionStore;
import java.io.IOException;

/* loaded from: classes2.dex */
final class GenesisMissionNineGraphicsPreview {
    private static final int MAGIC = 1146441285;
    private static final int MAP_OFFSET = 16;
    private static final int STRUCT_OFFSET = 4624;
    private static final String TAG = "DuneMission9Preview";
    private static final int TILE = 32;
    private static final int UNIT_OFFSET = 4112;

    private GenesisMissionNineGraphicsPreview() {
    }

    static void show(final Activity owner) {
        RomSelectionStore.OverlaySelection selected = RomSelectionStore.loadOverlay(owner, RomSelectionStore.SourceRole.MEDIA_MOD);
        RomGraphicsMediaOverlayStore.Snapshot graphics = RomGraphicsMediaOverlayStore.loadActive(owner);
        if (selected == null || graphics == null || selected.sha256 == null || !selected.sha256.equalsIgnoreCase(graphics.sourceSha256) || !RomAssetInstallState.recoverAndIsBundleReady(owner)) {
            Toast.makeText(owner, owner.getString(C0012R.string.launcher_mission_preview_error, new Object[]{owner.getString(C0012R.string.launcher_mod_status_none)}), 1).show();
            return;
        }
        final Dialog dialog = new Dialog(owner);
        dialog.requestWindowFeature(1);
        final MapView map = new MapView(owner);
        dialog.setContentView(map);
        Window window = dialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(-16777216));
            window.setLayout(-1, -1);
            window.addFlags(RazorTerrainAtlas.HEIGHT);
            window.setDimAmount(0.7f);
        }
        dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.ahsim.demulation.GenesisMissionNineGraphicsPreview$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                GenesisMissionNineGraphicsPreview.MapView.this.closed = true;
            }
        });
        dialog.show();
        if (window != null) {
            window.setLayout(-1, -1);
        }
        new Thread(new Runnable() { // from class: com.ahsim.demulation.GenesisMissionNineGraphicsPreview$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                GenesisMissionNineGraphicsPreview.lambda$show$3(owner, map, dialog);
            }
        }, "dune-mission9-preview").start();
    }

    static /* synthetic */ void lambda$show$3(final Activity owner, final MapView map, final Dialog dialog) {
        try {
            final Frame frame = load(owner);
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.ahsim.demulation.GenesisMissionNineGraphicsPreview$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    GenesisMissionNineGraphicsPreview.lambda$show$1(GenesisMissionNineGraphicsPreview.MapView.this, owner, frame);
                }
            });
        } catch (Throwable error) {
            Log.w(TAG, "Native original mission preview failed", error);
            final String message = error.getMessage() == null ? error.getClass().getSimpleName() : error.getMessage();
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.ahsim.demulation.GenesisMissionNineGraphicsPreview$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    GenesisMissionNineGraphicsPreview.lambda$show$2(GenesisMissionNineGraphicsPreview.MapView.this, owner, dialog, message);
                }
            });
        }
    }

    static /* synthetic */ void lambda$show$1(MapView map, Activity owner, Frame frame) {
        if (map.closed || owner.isFinishing()) {
            return;
        }
        map.install(frame);
    }

    static /* synthetic */ void lambda$show$2(MapView map, Activity owner, Dialog dialog, String message) {
        if (!map.closed && !owner.isFinishing()) {
            dialog.dismiss();
            Toast.makeText(owner, owner.getString(C0012R.string.launcher_mission_preview_error, new Object[]{message}), 1).show();
        }
    }

    private static Frame load(Activity context) throws IOException {
        RomAssetInstallState.RuntimeBundle ready = RomAssetInstallState.activeRuntimeBundle(context);
        byte[] world = ready.worldDataAssets.readMapScenarioLayout();
        byte[] gameplay = ready.gameplayDataAssets.readUnitStructureParameters();
        byte[] nativeData = ready.nativeDataAssets.readRemainingPureData();
        long host = 0;
        try {
            host = MainActivity.nativeCreateRecovered(world, gameplay, nativeData, "bootstrap/SCENA009.INI", 8);
            if (host == 0 || !MainActivity.nativeStartOwnerExecution(host)) {
                throw new IOException("SCENA009.INI initial state unavailable");
            }
            int count = MainActivity.nativeRenderWordCount();
            int auxCount = MainActivity.nativeUnitRenderAuxWordCount();
            if (count < 6160 || count > 65536 || auxCount != 128) {
                throw new IOException("Unexpected render snapshot layout");
            }
            int[] render = new int[count];
            int[] unitAux = new int[auxCount];
            if (!MainActivity.nativeFillRenderSnapshot(host, render) || !MainActivity.nativeFillUnitRenderAux(host, unitAux) || render[0] != MAGIC) {
                throw new IOException("Mission snapshot failed integrity check");
            }
            GenesisTerrainArt terrain = new GenesisTerrainArt(ready.worldAssets);
            GenesisObjectArt objects = new GenesisObjectArt(ready.worldAssets, terrain);
            return new Frame(render, unitAux, terrain, objects);
        } finally {
            if (host != 0) {
                MainActivity.nativeDestroy(host);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class Frame {
        final int mapH;
        final int mapW;
        final int minX;
        final int minY;
        final GenesisObjectArt objects;
        final int ownerHouse;
        final float startX;
        final float startY;
        final GenesisTerrainArt terrain;
        final int[] unitAux;
        final int[] words;

        Frame(int[] words, int[] unitAux, GenesisTerrainArt terrain, GenesisObjectArt objects) throws IOException {
            this.words = words;
            this.unitAux = unitAux;
            this.terrain = terrain;
            this.objects = objects;
            int bounds = words[4];
            this.minX = bounds & 63;
            this.minY = (bounds >>> 8) & 63;
            this.mapW = (bounds >>> 16) & 255;
            this.mapH = (bounds >>> 24) & 255;
            this.ownerHouse = words[5] & 255;
            if (this.mapW <= 0 || this.mapH <= 0 || this.mapW > 64 || this.mapH > 64 || this.minX + this.mapW > 64 || this.minY + this.mapH > 64) {
                throw new IOException("Invalid scenario map bounds");
            }
            int anchor = -1;
            int raw = 0;
            while (true) {
                if (raw >= 128) {
                    break;
                }
                int base = (raw * 12) + GenesisMissionNineGraphicsPreview.STRUCT_OFFSET;
                int meta = words[base];
                if ((meta & Integer.MIN_VALUE) == 0 || (meta & 255) != this.ownerHouse) {
                    raw++;
                } else {
                    anchor = words[base + 1] & 4095;
                    break;
                }
            }
            if (anchor < 0) {
                int raw2 = 0;
                while (true) {
                    if (raw2 >= 128) {
                        break;
                    }
                    int base2 = (raw2 * 4) + GenesisMissionNineGraphicsPreview.UNIT_OFFSET;
                    int meta2 = words[base2];
                    if ((meta2 & Integer.MIN_VALUE) == 0 || (meta2 & 255) != this.ownerHouse) {
                        raw2++;
                    } else {
                        anchor = words[base2 + 2] & 4095;
                        break;
                    }
                }
            }
            this.startX = anchor < 0 ? this.mapW / 2.0f : ((anchor & 63) - this.minX) + 0.5f;
            this.startY = anchor < 0 ? this.mapH / 2.0f : 0.5f + ((anchor >>> 6) - this.minY);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class MapView extends View {
        boolean centered;
        volatile boolean closed;
        Frame frame;
        final Paint imagePaint;
        final Paint labelPaint;
        float lastX;
        float lastY;
        final RectF rect;
        float scale;

        /* renamed from: x */
        float f10x;

        /* renamed from: y */
        float f11y;

        MapView(Activity context) {
            super(context);
            this.imagePaint = new Paint(2);
            this.labelPaint = new Paint(1);
            this.rect = new RectF();
            setBackgroundColor(-16777216);
            this.labelPaint.setTypeface(Typeface.DEFAULT);
            this.labelPaint.setTextSize(getResources().getDisplayMetrics().scaledDensity * 18.0f);
            this.labelPaint.setColor(Color.rgb(203, 210, 214));
            this.labelPaint.setTextAlign(Paint.Align.CENTER);
        }

        void install(Frame next) {
            this.frame = next;
            centerIfNeeded();
            invalidate();
        }

        private void centerIfNeeded() {
            if (this.frame == null || getWidth() == 0 || getHeight() == 0) {
                return;
            }
            this.scale = Math.min(getWidth() / 576.0f, getHeight() / 352.0f);
            if (this.scale <= 0.0f) {
                return;
            }
            if (!this.centered) {
                this.f10x = (this.frame.startX * 32.0f) - (getWidth() / (this.scale * 2.0f));
                this.f11y = (this.frame.startY * 32.0f) - (getHeight() / (this.scale * 2.0f));
                this.centered = true;
            }
            clamp();
        }

        private void clamp() {
            if (this.frame == null || this.scale <= 0.0f) {
                return;
            }
            this.f10x = Math.max(0.0f, Math.min(this.f10x, Math.max(0.0f, (this.frame.mapW * 32) - (getWidth() / this.scale))));
            this.f11y = Math.max(0.0f, Math.min(this.f11y, Math.max(0.0f, (this.frame.mapH * 32) - (getHeight() / this.scale))));
        }

        @Override // android.view.View
        protected void onSizeChanged(int w, int h, int ow, int oh) {
            super.onSizeChanged(w, h, ow, oh);
            centerIfNeeded();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent event) {
            if (this.frame == null) {
                return true;
            }
            switch (event.getActionMasked()) {
                case 0:
                    this.lastX = event.getX();
                    this.lastY = event.getY();
                    break;
                case 2:
                    if (event.getPointerCount() == 1 && this.scale > 0.0f) {
                        float nextX = event.getX();
                        float nextY = event.getY();
                        this.f10x -= (nextX - this.lastX) / this.scale;
                        this.f11y -= (nextY - this.lastY) / this.scale;
                        this.lastX = nextX;
                        this.lastY = nextY;
                        clamp();
                        invalidate();
                        break;
                    }
                    break;
            }
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:60:0x01af  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x01b8  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onDraw(android.graphics.Canvas r34) {
            /*
                Method dump skipped, instructions count: 779
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisMissionNineGraphicsPreview.MapView.onDraw(android.graphics.Canvas):void");
        }
    }
}
