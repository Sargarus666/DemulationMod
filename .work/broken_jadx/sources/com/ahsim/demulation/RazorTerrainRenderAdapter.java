package com.ahsim.demulation;

import com.ahsim.demulation.RazorNativeTerrainFrameBridge;
import com.ahsim.demulation.RazorTerrainVisualSource;
import java.io.IOException;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class RazorTerrainRenderAdapter {
    public static final int METATILE_PIXELS = 32;
    private final RazorTerrainVisualSource.Audit audit;
    public final int house;
    private final RazorTerrainRendererInput input;
    public final int mission;
    public final boolean offlineOnly = true;
    public final int ramBase;
    public final int romVariant;
    public final int scenarioHeight;
    public final int scenarioWidth;
    public final String sourceSha256;
    public final int worldSide;

    private RazorTerrainRenderAdapter(RazorTerrainVisualSource.Audit source, RazorTerrainRendererInput terrain) {
        this.audit = source;
        this.input = terrain;
        this.worldSide = terrain.worldSide;
        this.scenarioWidth = terrain.scenarioWidth;
        this.scenarioHeight = terrain.scenarioHeight;
        this.romVariant = terrain.romVariant;
        this.house = terrain.house;
        this.mission = terrain.mission;
        this.sourceSha256 = terrain.sourceSha256;
        this.ramBase = this.romVariant == 1 ? RazorTerrainRuntimeSnapshot.RAZOR_ONE_RAM_BASE : RazorTerrainRuntimeSnapshot.RAZOR_TWO_RAM_BASE;
    }

    public static RazorTerrainRenderAdapter capture(RazorTerrainVisualSource.Audit audit, int house, int mission) throws IOException {
        if (audit == null) {
            throw new IOException("Razor adapter requires offline authenticated ROM");
        }
        Objects.requireNonNull(audit);
        Objects.requireNonNull(audit);
        return new RazorTerrainRenderAdapter(audit, audit.offlineRendererInput(house, mission));
    }

    public static final class Viewport {
        private final int[] argb;
        public final int height;
        private final int[] metatileIds;
        public final int nativeFrameSequence;
        public final int paletteVariant;
        public final int ramBase;
        public final int scenarioHeight;
        public final int scenarioWidth;
        public final String sourceSha256;
        public final int tilesHigh;
        public final int tilesWide;
        public final int width;
        public final int worldSide;

        /* renamed from: x */
        public final int f59x;

        /* renamed from: y */
        public final int f60y;

        private Viewport(RazorTerrainRenderAdapter owner, int palette, int sx, int sy, int w, int h, int[] surfaces, int[] pixels, int frameSequence) {
            this.f59x = sx;
            this.f60y = sy;
            this.tilesWide = w;
            this.tilesHigh = h;
            this.width = w * 32;
            this.height = h * 32;
            this.paletteVariant = palette;
            this.worldSide = owner.worldSide;
            this.scenarioWidth = owner.scenarioWidth;
            this.scenarioHeight = owner.scenarioHeight;
            this.ramBase = owner.ramBase;
            this.sourceSha256 = owner.sourceSha256;
            this.nativeFrameSequence = frameSequence;
            this.metatileIds = (int[]) surfaces.clone();
            this.argb = (int[]) pixels.clone();
        }

        public int[] argbCopy() {
            return (int[]) this.argb.clone();
        }

        public int[] metatileIdsCopy() {
            return (int[]) this.metatileIds.clone();
        }

        public int pixel(int px, int py) {
            if (px < 0 || py < 0 || px >= this.width || py >= this.height) {
                throw new IllegalArgumentException("Pixel outside Razor viewport");
            }
            return this.argb[(this.width * py) + px];
        }
    }

    public Viewport render(int palette, int x, int y, int w, int h) throws IOException {
        if (palette < 0 || palette >= 4) {
            throw new IOException("Invalid Razor palette");
        }
        checkViewport675(x, y, w, h);
        int[] surfaces = new int[w * h];
        for (int offsetY = 0; offsetY < h; offsetY += 32) {
            int count = Math.min(32, h - offsetY);
            int[] chunk = RazorTerrainGridAbi.decode(this.input.completeFrame(x, y + offsetY, w, count));
            System.arraycopy(chunk, 0, surfaces, offsetY * w, w * count);
        }
        return rasterize(palette, x, y, w, h, surfaces, 0);
    }

    public Viewport renderNative(int palette, RazorNativeTerrainFrameBridge bridge, int x, int y, int w, int h) throws IOException {
        RazorTerrainRenderAdapter razorTerrainRenderAdapter = this;
        if (bridge == null || palette < 0 || palette >= 4 || bridge.romVariant != razorTerrainRenderAdapter.romVariant || bridge.house != razorTerrainRenderAdapter.house || bridge.mission != razorTerrainRenderAdapter.mission || bridge.worldSide != razorTerrainRenderAdapter.worldSide || !bridge.sourceSha256.equals(razorTerrainRenderAdapter.sourceSha256)) {
            throw new IOException("Razor native world / source identity mismatch");
        }
        razorTerrainRenderAdapter.checkViewport675(x, y, w, h);
        int[] surfaces = new int[w * h];
        int finalSequence = 0;
        int offsetY = 0;
        while (offsetY < h) {
            int count = Math.min(32, h - offsetY);
            RazorNativeTerrainFrameBridge.Frame live = bridge.read(x, y + offsetY, w, count);
            int[] chunk = live.metatileIdsCopy();
            int[] reference = RazorTerrainGridAbi.decode(razorTerrainRenderAdapter.input.completeFrame(x, y + offsetY, w, count));
            if (!Arrays.equals(chunk, reference)) {
                throw new IOException("Native world diverges from original Razor terrain at row " + (y + offsetY));
            }
            System.arraycopy(chunk, 0, surfaces, offsetY * w, w * count);
            finalSequence = live.sequence;
            offsetY += 32;
            razorTerrainRenderAdapter = this;
        }
        return rasterize(palette, x, y, w, h, surfaces, finalSequence);
    }

    private void checkViewport675(int x, int y, int w, int h) throws IOException {
        if (w < 1 || w > 32 || h < 1 || h > 64 || x < 0 || y < 0 || x > this.scenarioWidth - w || y > this.scenarioHeight - h || x > this.worldSide - w || y > this.worldSide - h) {
            throw new IOException("Razor portrait viewport outside authenticated map");
        }
    }

    private Viewport rasterize(int palette, int x, int y, int w, int h, int[] surfaces, int sequence) throws IOException {
        int pxW = w * 32;
        int[] pixels = new int[pxW * h * 32];
        int[][] cache = new int[512][];
        for (int yy = 0; yy < h; yy++) {
            for (int xx = 0; xx < w; xx++) {
                int surface = surfaces[(yy * w) + xx];
                if (surface < 0 || surface >= cache.length) {
                    throw new IOException("Native Razor ABI decoded absent metatile");
                }
                int[] tile = cache[surface];
                if (tile == null) {
                    tile = this.audit.decodeOriginalMetatile(palette, surface);
                    if (tile.length != 1024) {
                        throw new IOException("Unverified Razor metatile dimensions");
                    }
                    cache[surface] = tile;
                }
                for (int dy = 0; dy < 32; dy++) {
                    System.arraycopy(tile, dy * 32, pixels, (((yy * 32) + dy) * pxW) + (xx * 32), 32);
                }
            }
        }
        return new Viewport(palette, x, y, w, h, surfaces, pixels, sequence);
    }
}
