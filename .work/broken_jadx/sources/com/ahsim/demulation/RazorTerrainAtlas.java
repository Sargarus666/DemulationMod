package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82cRazorMissionBundle;
import com.ahsim.demulation.RazorTerrainVisualSource;
import java.io.IOException;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class RazorTerrainAtlas {
    public static final int COLUMNS = 16;
    public static final int HEIGHT = 1024;
    public static final int ROWS = 32;
    public static final int TILE_SIDE = 32;
    public static final int WIDTH = 512;

    interface TileDecoder {
        int[] decode(int i, int i2) throws IOException;
    }

    public static final class Preview {
        private final int[] argb;
        public final int height;
        public final int paletteVariant;
        public final int tiles;
        public final int width;

        private Preview(int variant, int[] pixels) {
            this.width = 512;
            this.height = RazorTerrainAtlas.HEIGHT;
            this.tiles = 512;
            this.paletteVariant = variant;
            this.argb = pixels;
        }

        public int[] argbCopy() {
            return (int[]) this.argb.clone();
        }

        public int pixel(int x, int y) {
            if (x < 0 || x >= 512 || y < 0 || y >= 1024) {
                throw new IllegalArgumentException("Razor preview pixel outside atlas");
            }
            return this.argb[(y * 512) + x];
        }
    }

    public static final class MapUsage {
        public final int compactMaps;
        public final long directCells;
        public final int distinctMapByteValues;
        public final int fullMaps;
        private final long[] rawByteFrequency;

        private MapUsage(int full, int compact, long cells, long[] freq, int distinct) {
            this.fullMaps = full;
            this.compactMaps = compact;
            this.directCells = cells;
            this.rawByteFrequency = freq;
            this.distinctMapByteValues = distinct;
        }

        public long rawByteCount(int value) {
            if (value < 0 || value > 255) {
                throw new IllegalArgumentException("Raw map byte out of range");
            }
            return this.rawByteFrequency[value];
        }

        public long[] histogramCopy() {
            return (long[]) this.rawByteFrequency.clone();
        }
    }

    private RazorTerrainAtlas() {
    }

    public static Preview render(final RazorTerrainVisualSource.Audit audit, int paletteVariant) throws IOException {
        if (audit == null) {
            throw new IOException("Razor atlas requires verified terrain source");
        }
        return renderTiles(new TileDecoder() { // from class: com.ahsim.demulation.RazorTerrainAtlas.1
            @Override // com.ahsim.demulation.RazorTerrainAtlas.TileDecoder
            public int[] decode(int variant, int id) throws IOException {
                return RazorTerrainVisualSource.Audit.this.decodeOriginalMetatile(variant, id);
            }
        }, paletteVariant);
    }

    static Preview renderTiles(TileDecoder decoder, int paletteVariant) throws IOException {
        if (decoder == null || paletteVariant < 0 || paletteVariant >= 4) {
            throw new IOException("Razor atlas requires valid decoder and palette 0..3");
        }
        int[] pixels = new int[524288];
        for (int id = 0; id < 512; id++) {
            int[] tile = decoder.decode(paletteVariant, id);
            if (tile == null || tile.length != 1024) {
                throw new IOException("Razor metatile decoder returned unexpected image size");
            }
            int x0 = (id % 16) * 32;
            int y0 = (id / 16) * 32;
            for (int y = 0; y < 32; y++) {
                System.arraycopy(tile, y * 32, pixels, ((y0 + y) * 512) + x0, 32);
            }
        }
        return new Preview(paletteVariant, pixels);
    }

    public static MapUsage inspectMapUsage(DuneHackR82cRazorMissionBundle.Result bundle) throws IOException {
        if (bundle != null) {
            Objects.requireNonNull(bundle);
            if (bundle.missionsDecoded >= 44) {
                long[] freq = new long[256];
                Iterator<DuneHackR82cRazorMissionBundle.Mission> it = bundle.allMissions().iterator();
                int full = 0;
                long cells = 0;
                int compact = 0;
                while (true) {
                    if (it.hasNext()) {
                        DuneHackR82cRazorMissionBundle.Mission m = it.next();
                        if (m.storedMapSide == 32) {
                            compact++;
                        } else {
                            if (m.storedMapSide != 64 && m.storedMapSide != 128) {
                                throw new IOException("Razor direct map has unexpected size");
                            }
                            byte[] map = m.mapBytes();
                            if (map.length != m.storedMapSide * m.storedMapSide) {
                                throw new IOException("Razor direct map truncated");
                            }
                            full++;
                            for (byte value : map) {
                                int i = value & 255;
                                freq[i] = freq[i] + 1;
                                cells++;
                            }
                        }
                    } else {
                        int distinct = 0;
                        for (long count : freq) {
                            if (count > 0) {
                                distinct++;
                            }
                        }
                        return new MapUsage(full, compact, cells, freq, distinct);
                    }
                }
            }
        }
        throw new IOException("Razor atlas map usage requires verified mission bundle");
    }
}
