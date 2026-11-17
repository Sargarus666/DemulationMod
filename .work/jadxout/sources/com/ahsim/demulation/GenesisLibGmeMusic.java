package com.ahsim.demulation;

import java.util.Locale;

/* loaded from: classes2.dex */
final class GenesisLibGmeMusic {
    private static volatile long timingCalls;
    private static volatile long timingCpuMaxNs;
    private static volatile long timingCpuOverBudget;
    private static volatile long timingCpuTotalNs;
    private static volatile long timingFrames;
    private static volatile long timingWallMaxNs;
    private static volatile long timingWallOverBudget;
    private static volatile long timingWallTotalNs;
    private long handle;
    private int sampleRate;

    private static native void nativeClose(long j);

    private static native long nativeOpenVgm(byte[] bArr, int i);

    private static native long nativePlay(long j, short[] sArr, int i);

    private static native int nativeSeekSamples(long j, int i);

    private static native int nativeTellSamples(long j);

    GenesisLibGmeMusic() {
    }

    boolean open(byte[] vgm, int sampleRate) {
        close();
        if (vgm == null || vgm.length < 65) {
            return false;
        }
        this.handle = nativeOpenVgm(vgm, sampleRate);
        if (this.handle != 0) {
            this.sampleRate = sampleRate;
        }
        return this.handle != 0;
    }

    boolean isOpen() {
        return this.handle != 0;
    }

    boolean renderStereo(short[] out, int frames) {
        if (this.handle != 0 && out != null && frames > 0) {
            if (out.length >= frames * 2) {
                long packed = nativePlay(this.handle, out, frames * 2);
                if (packed < 0) {
                    return false;
                }
                long wallNs = packed & 4294967295L;
                long cpuNs = (packed >>> 32) & 4294967295L;
                recordTiming(frames, wallNs, cpuNs, this.sampleRate);
                return true;
            }
        }
        return false;
    }

    private static void recordTiming(int frames, long wallNs, long cpuNs, int sampleRate) {
        timingCalls++;
        timingFrames += Math.max(0, frames);
        timingWallTotalNs += Math.max(0L, wallNs);
        timingCpuTotalNs += Math.max(0L, cpuNs);
        if (wallNs > timingWallMaxNs) {
            timingWallMaxNs = wallNs;
        }
        if (cpuNs > timingCpuMaxNs) {
            timingCpuMaxNs = cpuNs;
        }
        if (sampleRate > 0 && frames > 0) {
            long budgetNs = Math.round(frames * (1.0E9d / sampleRate));
            if (wallNs > budgetNs) {
                timingWallOverBudget++;
            }
            if (cpuNs > budgetNs) {
                timingCpuOverBudget++;
            }
        }
    }

    static String timingSummaryForDiagnostics() {
        long calls = timingCalls;
        long wallTotal = timingWallTotalNs;
        long cpuTotal = timingCpuTotalNs;
        long gapTotal = Math.max(0L, wallTotal - cpuTotal);
        return "cpp_opt=O2 gme_calls=" + calls + " gme_frames=" + timingFrames + " gme_wall_avg/max_ms=" + formatMs(calls > 0 ? wallTotal / calls : 0L) + "/" + formatMs(timingWallMaxNs) + " gme_cpu_avg/max_ms=" + formatMs(calls > 0 ? cpuTotal / calls : 0L) + "/" + formatMs(timingCpuMaxNs) + " gme_sched_gap_avg_ms=" + formatMs(calls > 0 ? gapTotal / calls : 0L) + " gme_wall_over_budget=" + timingWallOverBudget + " gme_cpu_over_budget=" + timingCpuOverBudget;
    }

    private static String formatMs(long nanos) {
        return String.format(Locale.US, "%.3f", Double.valueOf(nanos / 1000000.0d));
    }

    int tellSamples() {
        if (this.handle == 0) {
            return 0;
        }
        return nativeTellSamples(this.handle);
    }

    boolean seekSamples(int sampleCount) {
        return this.handle != 0 && sampleCount >= 0 && nativeSeekSamples(this.handle, sampleCount) == 0;
    }

    void close() {
        long h = this.handle;
        this.handle = 0L;
        this.sampleRate = 0;
        if (h != 0) {
            nativeClose(h);
        }
    }
}
