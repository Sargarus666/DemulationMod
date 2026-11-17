package com.ahsim.demulation;

import com.ahsim.demulation.RazorTerrainRendererInput;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class RazorTerrainGridAbi {
    public static final int ABI_VERSION = 1;

    private static native int[] nativeDecode(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int[] iArr, byte[] bArr);

    private RazorTerrainGridAbi() {
    }

    static {
        System.loadLibrary("dunehost");
    }

    public static int[] decode(RazorTerrainRendererInput.Frame frame) throws IOException {
        if (frame == null || !frame.fullyWritten()) {
            throw new IOException("Razor native ABI requires ROM-written terrain only");
        }
        int[] words = frame.completeWordsCopy();
        byte[] written = frame.writtenMaskCopy();
        int[] reference = new int[words.length];
        for (int i = 0; i < words.length; i++) {
            int first = words[i] >>> 16;
            if (written[i] != 1 || (65024 & first) != 62976 || (words[i] & 65535) != 0) {
                throw new IOException("Non-loader or unknown Razor RAM in native transfer");
            }
            reference[i] = first & RazorTerrainCellReadPath.SURFACE_MASK;
        }
        int i2 = frame.romVariant;
        int[] nativeSurfaces = nativeDecode(i2, frame.ramBase, frame.worldSide, frame.scenarioWidth, frame.scenarioHeight, frame.f61x, frame.f62y, frame.width, frame.height, words, written);
        if (nativeSurfaces == null || !Arrays.equals(nativeSurfaces, reference)) {
            throw new IOException("Razor Java/native terrain ABI mismatch");
        }
        return nativeSurfaces;
    }
}
