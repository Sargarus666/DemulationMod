package com.ahsim.demulation;

/* loaded from: classes2.dex */
final class RetroSignalProcessor {
    private int[] beamFactor;
    private int beamHeight;
    private int[] blueDiff;
    private int[] luma;
    private int[] redDiff;
    private int rowWidth;

    RetroSignalProcessor() {
    }

    void process(int[] source, int[] result, int w, int h, int mode) {
        int[] source2;
        int[] result2;
        int w2;
        if (w <= 0 || h <= 0 || source.length < w * h || result.length < w * h) {
            throw new IllegalArgumentException("Invalid video buffer");
        }
        if (source == result) {
            throw new IllegalArgumentException("Distinct source/result required");
        }
        if (mode != 1 && mode != 2) {
            throw new IllegalArgumentException("Invalid video mode");
        }
        ensureRows(w, h, mode);
        int y = 0;
        int offset = 0;
        while (y < h) {
            if (mode == 2) {
                makeCompositeRow(source, offset, w);
                compositeRow(result, offset, w, y);
                source2 = source;
                result2 = result;
                w2 = w;
            } else {
                source2 = source;
                result2 = result;
                w2 = w;
                crtRow(source2, result2, offset, w2, y);
            }
            y++;
            offset += w2;
            source = source2;
            result = result2;
            w = w2;
        }
    }

    private void ensureRows(int w, int h, int mode) {
        if (this.rowWidth != w) {
            this.rowWidth = w;
            this.luma = new int[w];
            this.redDiff = new int[w];
            this.blueDiff = new int[w];
        }
        if (this.beamHeight != h || this.beamFactor == null) {
            this.beamHeight = h;
            this.beamFactor = new int[h];
            for (int y = 0; y < h; y++) {
                double phase = (y * 224.0d) / h;
                double beam = Math.cos(6.283185307179586d * phase);
                double visibility = Math.min(1.0d, h / 336.0d);
                this.beamFactor[y] = (int) Math.round(((0.13d * visibility * beam) + 0.92d) * 256.0d);
            }
        }
    }

    private static int clamp(int x) {
        if (x < 0) {
            return 0;
        }
        return Math.min(255, x);
    }

    /* renamed from: at */
    private static int m21at(int x, int w) {
        if (x < 0) {
            return 0;
        }
        return Math.min(w - 1, x);
    }

    private static int red(int p) {
        return (p >>> 16) & 255;
    }

    private static int green(int p) {
        return (p >>> 8) & 255;
    }

    private static int blue(int p) {
        return p & 255;
    }

    private static int luminance(int r, int g, int b) {
        return ((((r * 77) + (g * 150)) + (b * 29)) + 128) >> 8;
    }

    private void makeCompositeRow(int[] source, int base, int w) {
        for (int x = 0; x < w; x++) {
            int p = source[base + x];
            int r = red(p);
            int g = green(p);
            int b = blue(p);
            int yy = luminance(r, g, b);
            this.luma[x] = yy;
            this.redDiff[x] = r - yy;
            this.blueDiff[x] = b - yy;
        }
    }

    private void compositeRow(int[] dst, int base, int w, int y) {
        RetroSignalProcessor retroSignalProcessor = this;
        int i = w;
        int beam = ((retroSignalProcessor.beamFactor[y] * 3) + 256) / 4;
        int x = 0;
        while (x < i) {
            int m1 = m21at(x - 1, i);
            int p1 = m21at(x + 1, i);
            int m2 = m21at(x - 2, i);
            int p2 = m21at(x + 2, i);
            int p3 = m21at(x + 3, i);
            int yy = (((retroSignalProcessor.luma[m1] + (retroSignalProcessor.luma[x] * 2)) + retroSignalProcessor.luma[p1]) + 2) >> 2;
            int cr = ((((retroSignalProcessor.redDiff[m2] + (retroSignalProcessor.redDiff[m1] * 2)) + (retroSignalProcessor.redDiff[x] * 4)) + (retroSignalProcessor.redDiff[p1] * 2)) + retroSignalProcessor.redDiff[p2]) / 10;
            int cb = ((((retroSignalProcessor.blueDiff[m1] + (retroSignalProcessor.blueDiff[x] * 2)) + (retroSignalProcessor.blueDiff[p1] * 4)) + (retroSignalProcessor.blueDiff[p2] * 2)) + retroSignalProcessor.blueDiff[p3]) / 10;
            int chroma = Math.abs(cr) + Math.abs(cb);
            if (chroma > 35) {
                yy += ((x + y) & 1) != 0 ? -1 : 1;
            }
            int r = clamp(yy + cr + 2);
            int b = clamp((yy + cb) - 2);
            int g = clamp(((((yy * 256) - (r * 77)) - (b * 29)) + 75) / 150);
            int gain = Math.min(16, yy >>> 4) + beam;
            int r2 = clamp(((r * gain) + 128) >> 8);
            int g2 = clamp(((g * gain) + 128) >> 8);
            int g3 = b * gain;
            dst[base + x] = (r2 << 16) | (-16777216) | (g2 << 8) | clamp((g3 + 128) >> 8);
            x++;
            retroSignalProcessor = this;
            i = w;
        }
    }

    private void crtRow(int[] src, int[] dst, int base, int w, int y) {
        int beam = this.beamFactor[y];
        for (int x = 0; x < w; x++) {
            int c = src[base + x];
            int l = src[base + m21at(x - 1, w)];
            int r = src[base + m21at(x + 1, w)];
            int rr = (((red(l) + (red(c) * 6)) + red(r)) + 4) >> 3;
            int gg = (((green(l) + (green(c) * 6)) + green(r)) + 4) >> 3;
            int bb = (((blue(l) + (blue(c) * 6)) + blue(r)) + 4) >> 3;
            int peak = Math.max(rr, Math.max(gg, bb));
            int gain = Math.min(18, peak >>> 4) + beam;
            int rr2 = ((rr * gain) + 128) >> 8;
            int gg2 = ((gg * gain) + 128) >> 8;
            int bb2 = ((bb * gain) + 128) >> 8;
            switch (x % 3) {
                case 0:
                    gg2 = (gg2 * 246) >> 8;
                    bb2 = (bb2 * 244) >> 8;
                    break;
                case 1:
                    rr2 = (rr2 * 248) >> 8;
                    bb2 = (bb2 * 247) >> 8;
                    break;
                default:
                    rr2 = (rr2 * 245) >> 8;
                    gg2 = (gg2 * 247) >> 8;
                    break;
            }
            dst[base + x] = (clamp(rr2) << 16) | (-16777216) | (clamp(gg2) << 8) | clamp(bb2);
        }
    }
}
