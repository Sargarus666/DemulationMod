package com.ahsim.demulation;

import com.ahsim.demulation.RazorTerrainRendererInput;
import com.ahsim.demulation.RazorTerrainVisualSource;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class RazorTerrainScenePreview {
    public static final int MAX_CROP_TILES = 32;
    public static final int TILE_PIXELS = 32;

    private RazorTerrainScenePreview() {
    }

    public static final class Scene {
        private final int[] argb;
        public final int height;
        public final int house;
        public final int mission;
        public final int paletteVariant;
        public final int scenarioHeight;
        public final int scenarioWidth;
        public final int startTileX;
        public final int startTileY;
        public final int storedMapSide;
        public final int tilesHigh;
        public final int tilesWide;
        public final int width;

        private Scene(int house, int mission, int palette, int x, int y, int w, int h, RazorTerrainVisualSource.Audit.MapInfo info, int[] pixels) {
            this.house = house;
            this.mission = mission;
            this.paletteVariant = palette;
            this.startTileX = x;
            this.startTileY = y;
            this.tilesWide = w;
            this.tilesHigh = h;
            this.width = w * 32;
            this.height = h * 32;
            this.storedMapSide = info.storedSide;
            this.scenarioWidth = info.scenarioWidth;
            this.scenarioHeight = info.scenarioHeight;
            this.argb = pixels;
        }

        public int[] argbCopy() {
            return (int[]) this.argb.clone();
        }

        public int pixel(int x, int y) {
            if (x < 0 || x >= this.width || y < 0 || y >= this.height) {
                throw new IllegalArgumentException("Outside Razor scene crop");
            }
            return this.argb[(this.width * y) + x];
        }
    }

    public static Scene renderOriginalLoaded(RazorTerrainVisualSource.Audit audit, int house, int mission, int paletteVariant, int startX, int startY, int tileWidth, int tileHeight) throws IOException {
        byte[] grid;
        int stride;
        int originX;
        int originY;
        int[] tile;
        RazorTerrainVisualSource.Audit audit2 = audit;
        if (audit2 != null && paletteVariant >= 0 && paletteVariant < 4 && tileWidth > 0 && tileHeight > 0) {
            int i = 32;
            if (tileWidth <= 32 && tileHeight <= 32 && startX >= 0 && startY >= 0) {
                RazorTerrainVisualSource.Audit.MapInfo info = audit.mapInfo(house, mission);
                int minX = info.loadedStartX;
                int minY = info.loadedStartY;
                int maxX = Math.min(info.scenarioWidth, info.loadedWidth + minX);
                int maxY = Math.min(info.scenarioHeight, info.loadedHeight + minY);
                if (startX < minX || startY < minY || startX > maxX - tileWidth || startY > maxY - tileHeight) {
                    throw new IOException("Razor terrain outside cells populated by ROM loader");
                }
                if (info.centeredCompact) {
                    byte[] grid2 = audit.compactSourceCopy(house, mission);
                    grid = grid2;
                    stride = 32;
                    originX = 16;
                    originY = 16;
                } else {
                    byte[] grid3 = audit.directMapCopy(house, mission);
                    int stride2 = info.storedSide;
                    grid = grid3;
                    stride = stride2;
                    originX = 0;
                    originY = 0;
                }
                int[] out = new int[tileWidth * 32 * tileHeight * 32];
                int[][] cache = new int[256][];
                int width = tileWidth * 32;
                int j = 0;
                while (j < tileHeight) {
                    int i2 = 0;
                    while (i2 < tileWidth) {
                        int raw = grid[(((((startY + j) - originY) * stride) + startX) + i2) - originX] & 255;
                        int[][] cache2 = cache;
                        int metatile = RazorCompactMapPlacement.loadedTile(raw, audit2.originalMapRemapEnabled());
                        int[] tile2 = cache2[metatile];
                        if (tile2 == null) {
                            int[] tile3 = audit2.decodeOriginalMetatile(paletteVariant, metatile);
                            if (tile3.length != 1024) {
                                throw new IOException("Invalid ROM metatile result");
                            }
                            cache2[metatile] = tile3;
                            tile = tile3;
                        } else {
                            tile = tile2;
                        }
                        int y = 0;
                        while (true) {
                            int metatile2 = metatile;
                            if (y < 32) {
                                System.arraycopy(tile, y * 32, out, (((j * 32) + y) * width) + (i2 * 32), 32);
                                y++;
                                metatile = metatile2;
                                j = j;
                            }
                        }
                        i2++;
                        audit2 = audit;
                        i = 32;
                        cache = cache2;
                        j = j;
                    }
                    j++;
                    audit2 = audit;
                }
                return new Scene(house, mission, paletteVariant, startX, startY, tileWidth, tileHeight, info, out);
            }
        }
        throw new IOException("Invalid authenticated Razor map crop");
    }

    public static Scene renderVerifiedRam(RazorTerrainVisualSource.Audit audit, int house, int mission, int paletteVariant, int x, int y, int w, int h) throws IOException {
        int[] rowTile;
        RazorTerrainVisualSource.Audit audit2 = audit;
        if (audit2 == null || paletteVariant < 0 || paletteVariant >= 4) {
            throw new IOException("Invalid authenticated Razor render palette");
        }
        RazorTerrainRendererInput.Frame frame = audit.offlineRendererInput(house, mission).completeFrame(x, y, w, h);
        RazorTerrainVisualSource.Audit.MapInfo info = audit.mapInfo(house, mission);
        int i = 32;
        int[] pixels = new int[w * 32 * h * 32];
        int[][] cache = new int[512][];
        int stride = w * 32;
        int yy = 0;
        while (yy < h) {
            int xx = 0;
            while (xx < w) {
                int surface = frame.requireSurface(xx, yy);
                if (surface < 0 || surface >= cache.length) {
                    throw new IOException("ROM RAM surface outside verified metatile bank");
                }
                int[] rowTile2 = cache[surface];
                if (rowTile2 != null) {
                    rowTile = rowTile2;
                } else {
                    int[] rowTile3 = audit2.decodeOriginalMetatile(paletteVariant, surface);
                    if (rowTile3.length != 1024) {
                        throw new IOException("Bad Razor metatile dimensions");
                    }
                    cache[surface] = rowTile3;
                    rowTile = rowTile3;
                }
                int line = 0;
                while (true) {
                    i = 32;
                    if (line < 32) {
                        int line2 = line;
                        System.arraycopy(rowTile, line * 32, pixels, (((yy * 32) + line) * stride) + (xx * 32), 32);
                        line = line2 + 1;
                        xx = xx;
                    }
                }
                int line3 = xx + 1;
                xx = line3;
                audit2 = audit;
            }
            yy++;
            audit2 = audit;
        }
        return new Scene(house, mission, paletteVariant, x, y, w, h, info, pixels);
    }

    public static Scene render(RazorTerrainVisualSource.Audit audit, int house, int mission, int paletteVariant, int startX, int startY, int tileWidth, int tileHeight) throws IOException {
        RazorTerrainVisualSource.Audit audit2 = audit;
        if (audit2 == null || paletteVariant < 0 || paletteVariant >= 4) {
            throw new IOException("Razor scene requires an authenticated source and palette 0..3");
        }
        if (tileWidth > 0 && tileHeight > 0) {
            int i = 32;
            if (tileWidth <= 32 && tileHeight <= 32 && startX >= 0 && startY >= 0) {
                RazorTerrainVisualSource.Audit.MapInfo info = audit.mapInfo(house, mission);
                if (info.centeredCompact) {
                    throw new IOException("Raw direct-map preview excludes centred 32x32 compact maps");
                }
                int maxW = Math.min(info.storedSide, info.scenarioWidth);
                int maxH = Math.min(info.storedSide, info.scenarioHeight);
                if (startX > maxW - tileWidth || startY > maxH - tileHeight) {
                    throw new IOException("Razor scene viewport outside validated direct map");
                }
                byte[] map = audit.directMapCopy(house, mission);
                if (map.length != info.storedSide * info.storedSide) {
                    throw new IOException("Razor map grid size changed after verification");
                }
                int[][] cache = new int[256][];
                int pxW = tileWidth * 32;
                int[] pixels = new int[pxW * tileHeight * 32];
                int ty = 0;
                while (ty < tileHeight) {
                    int sourceRow = ((startY + ty) * info.storedSide) + startX;
                    int tx = 0;
                    while (tx < tileWidth) {
                        int metatile = map[sourceRow + tx] & 255;
                        if (cache[metatile] == null) {
                            cache[metatile] = audit2.decodeOriginalMetatile(paletteVariant, metatile);
                        }
                        int[] tile = cache[metatile];
                        int ty2 = ty;
                        if (tile.length != 1024) {
                            throw new IOException("Authenticated metatile decoder returned invalid dimensions");
                        }
                        int y = 0;
                        while (y < 32) {
                            System.arraycopy(tile, y * 32, pixels, (((ty2 * 32) + y) * pxW) + (tx * 32), 32);
                            y++;
                            sourceRow = sourceRow;
                        }
                        tx++;
                        audit2 = audit;
                        i = 32;
                        ty = ty2;
                        sourceRow = sourceRow;
                    }
                    ty++;
                    audit2 = audit;
                }
                return new Scene(house, mission, paletteVariant, startX, startY, tileWidth, tileHeight, info, pixels);
            }
        }
        throw new IOException("Razor scene viewport outside supported crop range");
    }
}
