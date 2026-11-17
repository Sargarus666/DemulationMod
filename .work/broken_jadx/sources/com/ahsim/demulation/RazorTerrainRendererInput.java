package com.ahsim.demulation;

import com.ahsim.demulation.RazorTerrainCellReadPath;
import com.ahsim.demulation.RazorTerrainVisualSource;
import java.io.IOException;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class RazorTerrainRendererInput {
    public static final int MAX_FRAME_SIDE = 32;
    public static final int RECORD_BYTES = 4;
    public static final int UNKNOWN = -1;
    public final int house;
    public final int mission;
    public final boolean offlineOnly = true;
    private final RazorTerrainCellReadPath readPath;
    public final int romVariant;
    public final int scenarioHeight;
    public final int scenarioWidth;
    public final String sourceSha256;
    public final int worldSide;

    private RazorTerrainRendererInput(RazorTerrainRuntimeSnapshot snapshot) {
        this.readPath = RazorTerrainCellReadPath.capture(snapshot);
        this.romVariant = snapshot.romVariant;
        this.house = snapshot.house;
        this.mission = snapshot.mission;
        this.worldSide = snapshot.worldSide;
        this.scenarioWidth = snapshot.scenarioWidth;
        this.scenarioHeight = snapshot.scenarioHeight;
        this.sourceSha256 = snapshot.sourceSha256;
    }

    static RazorTerrainRendererInput capture(RazorTerrainVisualSource.Audit audit, int house, int mission) throws IOException {
        if (audit == null) {
            throw new IOException("Only a validated, offline Razor audit may provide terrain");
        }
        Objects.requireNonNull(audit);
        Objects.requireNonNull(audit);
        return new RazorTerrainRendererInput(audit.runtimeTerrainSnapshot(house, mission));
    }

    public static final class Frame {
        public final int height;
        public final int house;
        public final int mission;
        public final int ramBase;
        public final int romVariant;
        public final int scenarioHeight;
        public final int scenarioWidth;
        public final String sourceSha256;
        public final int unknownCount;
        public final int width;
        private final int[] word32;
        public final int worldSide;
        private final byte[] written;
        public final int writtenCount;

        /* renamed from: x */
        public final int f61x;

        /* renamed from: y */
        public final int f62y;

        private Frame(RazorTerrainRendererInput owner, int x, int y, int w, int h, RazorTerrainCellReadPath.Window view) throws IOException {
            this.f61x = x;
            this.f62y = y;
            this.width = w;
            this.height = h;
            this.worldSide = owner.worldSide;
            this.scenarioWidth = owner.scenarioWidth;
            this.scenarioHeight = owner.scenarioHeight;
            this.ramBase = owner.romVariant == 1 ? RazorTerrainRuntimeSnapshot.RAZOR_ONE_RAM_BASE : RazorTerrainRuntimeSnapshot.RAZOR_TWO_RAM_BASE;
            this.house = owner.house;
            this.mission = owner.mission;
            this.romVariant = owner.romVariant;
            this.sourceSha256 = owner.sourceSha256;
            this.written = new byte[w * h];
            this.word32 = new int[w * h];
            int hits = 0;
            for (int dy = 0; dy < h; dy++) {
                for (int dx = 0; dx < w; dx++) {
                    RazorTerrainCellReadPath.Cell cell = view.cell(dx, dy);
                    int i = (dy * w) + dx;
                    int expectedAddress = this.ramBase + ((((y + dy) * this.worldSide) + x + dx) * 4);
                    if (cell.ramAddress != expectedAddress || cell.f54x != x + dx || cell.f55y != y + dy) {
                        throw new IOException("Inconsistent ROM cell address/stride");
                    }
                    if (cell.romWritten) {
                        if (cell.firstWord16 < 0 || cell.word32 == -1 || cell.surfaceIndex9 != (cell.firstWord16 & RazorTerrainCellReadPath.SURFACE_MASK) || cell.otherFirstWordBits != (cell.firstWord16 & RazorTerrainCellReadPath.OTHER_FIRST_WORD_BITS_MASK)) {
                            throw new IOException("Inconsistent authenticated 68000 RAM cell");
                        }
                        this.written[i] = 1;
                        this.word32[i] = cell.word32;
                        hits++;
                    } else {
                        this.written[i] = 0;
                        this.word32[i] = -1;
                    }
                }
            }
            this.writtenCount = hits;
            this.unknownCount = (w * h) - hits;
            if (view.writtenCells != hits) {
                throw new IOException("Read path returned inconsistent written mask");
            }
        }

        private int offset(int dx, int dy) {
            if (dx < 0 || dy < 0 || dx >= this.width || dy >= this.height) {
                throw new IllegalArgumentException("Outside Razor frame");
            }
            return (this.width * dy) + dx;
        }

        public boolean fullyWritten() {
            return this.unknownCount == 0;
        }

        public boolean isWritten(int dx, int dy) {
            return this.written[offset(dx, dy)] != 0;
        }

        public int requireWord(int dx, int dy) throws IOException {
            int i = offset(dx, dy);
            if (this.written[i] == 0) {
                throw new IOException("Outer Razor RAM was not proved initialized");
            }
            return this.word32[i];
        }

        public int requireSurface(int dx, int dy) throws IOException {
            return (requireWord(dx, dy) >>> 16) & RazorTerrainCellReadPath.SURFACE_MASK;
        }

        public int firstWord(int dx, int dy) throws IOException {
            return (requireWord(dx, dy) >>> 16) & 65535;
        }

        public int secondWord(int dx, int dy) throws IOException {
            return requireWord(dx, dy) & 65535;
        }

        public void requireFullyWritten() throws IOException {
            if (!fullyWritten()) {
                throw new IOException("Viewport includes " + this.unknownCount + " unknown Razor terrain records (not safe to render)");
            }
        }

        public int[] completeWordsCopy() throws IOException {
            requireFullyWritten();
            return (int[]) this.word32.clone();
        }

        public int[] diagnosticWordsCopy() {
            return (int[]) this.word32.clone();
        }

        public byte[] writtenMaskCopy() {
            return (byte[]) this.written.clone();
        }
    }

    public Frame frame(int x, int y, int width, int height) throws IOException {
        if (width < 1 || height < 1 || width > 32 || height > 32 || x < 0 || y < 0 || x > this.scenarioWidth - width || y > this.scenarioHeight - height || x > this.worldSide - width || y > this.worldSide - height) {
            throw new IOException("Viewport outside validated Razor map/scenario bounds");
        }
        return new Frame(x, y, width, height, this.readPath.window(x, y, width, height));
    }

    public Frame completeFrame(int x, int y, int w, int h) throws IOException {
        Frame frame = frame(x, y, w, h);
        frame.requireFullyWritten();
        return frame;
    }
}
