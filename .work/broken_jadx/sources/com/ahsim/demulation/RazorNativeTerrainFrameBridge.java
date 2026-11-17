package com.ahsim.demulation;

import com.ahsim.demulation.RazorTerrainVisualSource;
import java.io.IOException;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class RazorNativeTerrainFrameBridge implements AutoCloseable {
    private static final int HEADER = 13;
    private static final int MAGIC = 1381649478;
    public final boolean gameplayReady = false;
    private long handle;
    public final int house;
    private int lastSequence;
    public final int mission;
    public final int romVariant;
    public final int scenarioHeight;
    public final int scenarioWidth;
    public final String sourceSha256;
    public final int worldSide;

    private static native void nativeClose(long j);

    private static native long nativeOpen(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int[] iArr, byte[] bArr);

    private static native int[] nativeRead(long j, int i, int i2, int i3, int i4);

    static {
        System.loadLibrary("dunehost");
    }

    private RazorNativeTerrainFrameBridge(RazorTerrainRuntimeSnapshot map) throws IOException {
        this.romVariant = map.romVariant;
        this.house = map.house;
        this.mission = map.mission;
        this.worldSide = map.worldSide;
        this.scenarioWidth = map.scenarioWidth;
        this.scenarioHeight = map.scenarioHeight;
        this.sourceSha256 = map.sourceSha256;
        if (map.loadedWidth != map.loadedHeight || map.writtenCells != map.loadedWidth * map.loadedHeight) {
            throw new IOException("Razor native frame source is not an original loader rectangle");
        }
        this.handle = nativeOpen(this.romVariant, this.house, this.mission, this.worldSide, this.scenarioWidth, this.scenarioHeight, map.loadedX, map.loadedY, map.loadedWidth, map.packedWordsCopy(), map.writtenMaskCopy());
        if (this.handle == 0) {
            throw new IOException("Razor native world rejected terrain loader snapshot");
        }
    }

    public static RazorNativeTerrainFrameBridge capture(RazorTerrainVisualSource.Audit audit, int house, int mission) throws IOException {
        if (audit == null) {
            throw new IOException("Razor native frame requires offline verified ROM");
        }
        Objects.requireNonNull(audit);
        Objects.requireNonNull(audit);
        return new RazorNativeTerrainFrameBridge(audit.runtimeTerrainSnapshot(house, mission));
    }

    public static final class Frame {
        public final int height;
        public final int sequence;
        private final int[] surfaces;
        public final int width;

        /* renamed from: x */
        public final int f46x;

        /* renamed from: y */
        public final int f47y;

        private Frame(int x, int y, int width, int height, int sequence, int[] ids) {
            this.f46x = x;
            this.f47y = y;
            this.width = width;
            this.height = height;
            this.sequence = sequence;
            this.surfaces = ids;
        }

        public int[] metatileIdsCopy() {
            return (int[]) this.surfaces.clone();
        }
    }

    public synchronized Frame read(int x, int y, int w, int h) throws IOException {
        int[] ids;
        if (this.handle == 0) {
            throw new IOException("Razor native frame host is closed");
        }
        if (w < 1 || h < 1 || w > 32 || h > 32 || x < 0 || y < 0 || w > this.scenarioWidth || h > this.scenarioHeight || x > this.scenarioWidth - w || y > this.scenarioHeight - h) {
            throw new IOException("Razor native viewport outside original scenario");
        }
        int[] result = nativeRead(this.handle, x, y, w, h);
        if (result == null) {
            throw new IOException("Native world refused unknown or invalid Razor cells");
        }
        if (result.length == (w * h) + 13) {
            if (result[0] == MAGIC && result[1] == 1 && result[2] == this.romVariant && result[3] == this.house && result[4] == this.mission && result[5] == this.worldSide && result[6] == this.scenarioWidth && result[7] == this.scenarioHeight && result[8] == x && result[9] == y && result[10] == w && result[11] == h && result[12] > 0 && (this.lastSequence <= 0 || result[12] == this.lastSequence + 1)) {
                ids = Arrays.copyOfRange(result, 13, result.length);
                for (int id : ids) {
                    if (id < 0 || id >= 512) {
                        throw new IOException("Razor native frame returned invalid metatile");
                    }
                }
                this.lastSequence = result[12];
            }
        }
        throw new IOException("Razor native world frame metadata/sequence mismatch");
        return new Frame(x, y, w, h, this.lastSequence, ids);
    }

    @Override // java.lang.AutoCloseable
    public synchronized void close() {
        long old = this.handle;
        this.handle = 0L;
        if (old != 0) {
            nativeClose(old);
        }
    }
}
