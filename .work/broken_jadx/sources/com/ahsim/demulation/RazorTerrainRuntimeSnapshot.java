package com.ahsim.demulation;

import com.ahsim.demulation.RazorTerrainVisualSource;
import java.io.IOException;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class RazorTerrainRuntimeSnapshot {
    public static final int BYTES_PER_CELL = 4;
    private static final int CELL_PREFIX = -167772160;
    public static final int MAX_WINDOW_SIDE = 32;
    public static final int RAZOR_ONE_RAM_BASE = 16743836;
    public static final int RAZOR_TWO_RAM_BASE = 2097152;
    private final int[] cells;
    public final int house;
    private final byte[] known;
    public final int loadedHeight;
    public final int loadedWidth;
    public final int loadedX;
    public final int loadedY;
    public final int mission;
    public final int originalMapSide;
    public final int ramBaseAddress;
    public final int romVariant;
    public final int scenarioHeight;
    public final int scenarioWidth;
    public final String sourceSha256;
    public final int unknownCells;
    public final int worldSide;
    public final int writtenCells;

    static RazorTerrainRuntimeSnapshot capture(RazorTerrainVisualSource.Audit audit, int house, int mission) throws IOException {
        if (audit != null) {
            Objects.requireNonNull(audit);
            Objects.requireNonNull(audit);
            Objects.requireNonNull(audit);
            if (audit.romVariant() >= 1 && audit.romVariant() <= 2 && audit.originalMapRemapEnabled()) {
                RazorTerrainVisualSource.Audit.MapInfo info = audit.mapInfo(house, mission);
                int variant = audit.romVariant();
                int side = variant == 1 ? 64 : 128;
                int base = variant == 1 ? RAZOR_ONE_RAM_BASE : RAZOR_TWO_RAM_BASE;
                if (info.scenarioWidth > side || info.scenarioHeight > side || info.loadedStartX < 0 || info.loadedStartY < 0 || info.loadedStartX + info.loadedWidth > side || info.loadedStartY + info.loadedHeight > side || ((variant == 1 && info.storedSide != 32 && info.storedSide != 64) || ((variant == 2 && info.storedSide != 128) || info.loadedWidth != info.storedSide || info.loadedHeight != info.storedSide))) {
                    throw new IOException("Razor world layout does not match verified 68000 copy path");
                }
                byte[] source = info.centeredCompact ? audit.compactSourceCopy(house, mission) : audit.directMapCopy(house, mission);
                if (source.length != info.storedSide * info.storedSide) {
                    throw new IOException("ROM map payload length changed");
                }
                int[] cells = new int[side * side];
                byte[] known = new byte[side * side];
                for (int y = 0; y < info.loadedHeight; y++) {
                    for (int x = 0; x < info.loadedWidth; x++) {
                        int raw = source[(info.storedSide * y) + x] & 255;
                        int tile = RazorCompactMapPlacement.loadedTile(raw, audit.originalMapRemapEnabled());
                        int index = ((info.loadedStartY + y) * side) + x + info.loadedStartX;
                        if (known[index] != 0) {
                            throw new IOException("Razor RAM loader writes same cell twice");
                        }
                        cells[index] = (tile << 16) | CELL_PREFIX;
                        known[index] = 1;
                    }
                }
                return new RazorTerrainRuntimeSnapshot(house, mission, variant, side, base, info, audit.romSourceSha256(), cells, known);
            }
        }
        throw new IOException("Razor snapshot requires authenticated, non-gameplay ROM loader");
    }

    private RazorTerrainRuntimeSnapshot(int house, int mission, int variant, int worldSide, int address, RazorTerrainVisualSource.Audit.MapInfo info, String sourceSha, int[] sourceCells, byte[] sourceMask) {
        this.house = house;
        this.mission = mission;
        this.romVariant = variant;
        this.worldSide = worldSide;
        this.ramBaseAddress = address;
        this.originalMapSide = info.storedSide;
        this.scenarioWidth = info.scenarioWidth;
        this.scenarioHeight = info.scenarioHeight;
        this.loadedX = info.loadedStartX;
        this.loadedY = info.loadedStartY;
        this.loadedWidth = info.loadedWidth;
        this.loadedHeight = info.loadedHeight;
        this.cells = (int[]) sourceCells.clone();
        this.known = (byte[]) sourceMask.clone();
        this.writtenCells = this.loadedWidth * this.loadedHeight;
        this.unknownCells = (worldSide * worldSide) - this.writtenCells;
        this.sourceSha256 = sourceSha;
    }

    private int index(int x, int y) {
        if (x < 0 || y < 0 || x >= this.worldSide || y >= this.worldSide) {
            throw new IllegalArgumentException("Cell outside physical Razor RAM grid");
        }
        return (this.worldSide * y) + x;
    }

    public boolean isWritten(int x, int y) {
        return this.known[index(x, y)] != 0;
    }

    public int loadedMetatile(int x, int y) {
        int i = index(x, y);
        if (this.known[i] == 0) {
            return -1;
        }
        return (this.cells[i] >>> 16) & 255;
    }

    public int romWrittenCellWord(int x, int y) throws IOException {
        int i = index(x, y);
        if (this.known[i] == 0) {
            throw new IOException("Unwritten RAM does not have a known terrain value");
        }
        return this.cells[i];
    }

    public int romRamAddress(int x, int y) {
        return this.ramBaseAddress + (index(x, y) * 4);
    }

    public byte[] writtenMaskCopy() {
        return (byte[]) this.known.clone();
    }

    public int[] packedWordsCopy() {
        return (int[]) this.cells.clone();
    }

    public static final class Window {
        public final int height;
        private final byte[] known;
        public final int startX;
        public final int startY;
        public final int width;
        private final int[] words;
        public final int writtenCells;

        private Window(int x, int y, int w, int h, int[] words, byte[] known, int written) {
            this.startX = x;
            this.startY = y;
            this.width = w;
            this.height = h;
            this.words = words;
            this.known = known;
            this.writtenCells = written;
        }

        /* renamed from: at */
        private int m20at(int x, int y) {
            if (x < 0 || y < 0 || x >= this.width || y >= this.height) {
                throw new IllegalArgumentException("Coordinate outside captured window");
            }
            return (this.width * y) + x;
        }

        public boolean isWritten(int x, int y) {
            return this.known[m20at(x, y)] != 0;
        }

        public int loadedMetatile(int x, int y) {
            int i = m20at(x, y);
            if (this.known[i] == 0) {
                return -1;
            }
            return (this.words[i] >>> 16) & 255;
        }

        public int writtenCellWord(int x, int y) throws IOException {
            int i = m20at(x, y);
            if (this.known[i] == 0) {
                throw new IOException("Razor window contains unknown RAM");
            }
            return this.words[i];
        }

        public boolean fullyWritten() {
            return this.writtenCells == this.width * this.height;
        }

        public int[] packedWordsCopy() {
            return (int[]) this.words.clone();
        }

        public byte[] writtenMaskCopy() {
            return (byte[]) this.known.clone();
        }
    }

    public Window window(int startX, int startY, int width, int height) throws IOException {
        if (width < 1 || height < 1 || width > 32 || height > 32 || startX < 0 || startY < 0 || startX > this.worldSide - width || startY > this.worldSide - height) {
            throw new IOException("Razor snapshot window outside physical world or >32x32");
        }
        int[] result = new int[width * height];
        byte[] mask = new byte[width * height];
        int written = 0;
        for (int y = 0; y < height; y++) {
            int src = ((startY + y) * this.worldSide) + startX;
            int dst = y * width;
            System.arraycopy(this.cells, src, result, dst, width);
            System.arraycopy(this.known, src, mask, dst, width);
            for (int x = 0; x < width; x++) {
                if (mask[dst + x] != 0) {
                    written++;
                }
            }
        }
        return new Window(startX, startY, width, height, result, mask, written);
    }

    public byte[] writtenRamBytesCopy() {
        byte[] bytes = new byte[this.cells.length * 4];
        for (int i = 0; i < this.cells.length; i++) {
            if (this.known[i] != 0) {
                int word = this.cells[i];
                int p = i * 4;
                bytes[p] = (byte) (word >>> 24);
                bytes[p + 1] = (byte) (word >>> 16);
                bytes[p + 2] = (byte) (word >>> 8);
                bytes[p + 3] = (byte) word;
            }
        }
        return bytes;
    }
}
