package com.ahsim.demulation;

import com.ahsim.demulation.RazorTerrainRuntimeSnapshot;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class RazorTerrainCellReadPath {
    public static final int CELL_BYTES = 4;
    public static final int OTHER_FIRST_WORD_BITS_MASK = 65024;
    public static final int SURFACE_MASK = 511;
    private final RazorTerrainRuntimeSnapshot snapshot;

    public static final class Cell {
        public final int byte2;
        public final int byte3;
        public final int firstWord16;
        public final int otherFirstWordBits;
        public final int ramAddress;
        public final boolean romWritten;
        public final int surfaceIndex9;
        public final int word32;

        /* renamed from: x */
        public final int f54x;

        /* renamed from: y */
        public final int f55y;

        private Cell(int x, int y, int addr, boolean known, int word) {
            this.f54x = x;
            this.f55y = y;
            this.ramAddress = addr;
            this.romWritten = known;
            this.word32 = known ? word : -1;
            this.firstWord16 = known ? (word >>> 16) & 65535 : -1;
            this.surfaceIndex9 = known ? this.firstWord16 & RazorTerrainCellReadPath.SURFACE_MASK : -1;
            this.otherFirstWordBits = known ? this.firstWord16 & RazorTerrainCellReadPath.OTHER_FIRST_WORD_BITS_MASK : -1;
            this.byte2 = known ? (word >>> 8) & 255 : -1;
            this.byte3 = known ? word & 255 : -1;
        }

        public int requireSurface() throws IOException {
            if (!this.romWritten) {
                throw new IOException("Unknown pre-loader/outer terrain cell");
            }
            return this.surfaceIndex9;
        }

        public int requireWord() throws IOException {
            if (!this.romWritten) {
                throw new IOException("Unknown pre-loader/outer RAM word");
            }
            return this.word32;
        }
    }

    private RazorTerrainCellReadPath(RazorTerrainRuntimeSnapshot source) {
        if (source == null) {
            throw new IllegalArgumentException("Missing authenticated snapshot");
        }
        this.snapshot = source;
    }

    static RazorTerrainCellReadPath capture(RazorTerrainRuntimeSnapshot source) {
        return new RazorTerrainCellReadPath(source);
    }

    public int worldSide() {
        return this.snapshot.worldSide;
    }

    public int writtenCells() {
        return this.snapshot.writtenCells;
    }

    public int unknownCells() {
        return this.snapshot.unknownCells;
    }

    public int romVariant() {
        return this.snapshot.romVariant;
    }

    public String sourceSha256() {
        return this.snapshot.sourceSha256;
    }

    public Cell cell(int x, int y) throws IOException {
        int addr = this.snapshot.romRamAddress(x, y);
        boolean known = this.snapshot.isWritten(x, y);
        return new Cell(x, y, addr, known, known ? this.snapshot.romWrittenCellWord(x, y) : 0);
    }

    public static final class Window {
        public final int height;
        private final int ramBase;
        private final RazorTerrainRuntimeSnapshot.Window source;
        public final int startX;
        public final int startY;
        public final int width;
        private final int worldSide;
        public final int writtenCells;

        private Window(RazorTerrainRuntimeSnapshot.Window data, int addr, int side) {
            this.source = data;
            this.ramBase = addr;
            this.worldSide = side;
            this.startX = data.startX;
            this.startY = data.startY;
            this.width = data.width;
            this.height = data.height;
            this.writtenCells = data.writtenCells;
        }

        public boolean fullyWritten() {
            return this.source.fullyWritten();
        }

        public Cell cell(int localX, int localY) throws IOException {
            boolean known = this.source.isWritten(localX, localY);
            int x = this.startX + localX;
            int y = this.startY + localY;
            return new Cell(x, y, (((this.worldSide * y) + x) * 4) + this.ramBase, known, known ? this.source.writtenCellWord(localX, localY) : 0);
        }
    }

    public Window window(int x, int y, int w, int h) throws IOException {
        return new Window(this.snapshot.window(x, y, w, h), this.snapshot.ramBaseAddress, this.snapshot.worldSide);
    }
}
