package com.ahsim.demulation;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public final class RomImageNormalizer {
    private static final int GENESIS_HEADER_OFFSET = 256;
    public static final int MAX_ROM_BYTES = 16777216;
    private static final int SMD_BLOCK_BYTES = 16384;
    private static final int SMD_HALF_BLOCK_BYTES = 8192;
    private static final int SMD_HEADER_BYTES = 512;

    public enum ContainerFormat {
        LINEAR,
        SMD_INTERLEAVED
    }

    public static final class NormalizedImage {
        public final byte[] bytes;
        public final ContainerFormat containerFormat;
        public final int strippedHeaderBytes;

        private NormalizedImage(byte[] bytes, ContainerFormat containerFormat, int strippedHeaderBytes) {
            this.bytes = bytes;
            this.containerFormat = containerFormat;
            this.strippedHeaderBytes = strippedHeaderBytes;
        }
    }

    private RomImageNormalizer() {
    }

    public static NormalizedImage readAndNormalize(InputStream input, long knownSize) throws IOException {
        if (input == null) {
            throw new IOException("ROM stream is unavailable");
        }
        byte[] raw = readAll(input, knownSize);
        return normalize(raw);
    }

    public static NormalizedImage normalize(byte[] raw) throws IOException {
        if (raw == null || raw.length == 0) {
            throw new IOException("ROM image is empty");
        }
        if (raw.length > 16777216) {
            throw new IOException("ROM is unexpectedly large");
        }
        int i = 0;
        if (hasGenesisHeader(raw)) {
            return new NormalizedImage((byte[]) raw.clone(), ContainerFormat.LINEAR, i);
        }
        if (looksLikeClassicSmd(raw)) {
            byte[] linear = deinterleaveClassicSmd(raw);
            if (!hasGenesisHeader(linear)) {
                throw new IOException("SMD deinterleave did not produce a Genesis header");
            }
            return new NormalizedImage(linear, ContainerFormat.SMD_INTERLEAVED, 512);
        }
        return new NormalizedImage((byte[]) raw.clone(), ContainerFormat.LINEAR, i);
    }

    public static boolean hasGenesisHeader(byte[] data) {
        return data != null && data.length >= 260 && data[GENESIS_HEADER_OFFSET] == 83 && data[257] == 69 && data[258] == 71 && data[259] == 65;
    }

    private static boolean looksLikeClassicSmd(byte[] raw) {
        int payload = raw.length - 512;
        if (payload <= 0 || payload % 16384 != 0) {
            return false;
        }
        try {
            byte[] first = new byte[16384];
            deinterleaveBlock(raw, 512, first, 0);
            return hasGenesisHeader(first);
        } catch (RuntimeException e) {
            return false;
        }
    }

    private static byte[] deinterleaveClassicSmd(byte[] raw) throws IOException {
        int payload = raw.length - 512;
        if (payload <= 0 || payload % 16384 != 0) {
            throw new IOException("Invalid classic SMD payload length");
        }
        byte[] out = new byte[payload];
        int src = 512;
        int dst = 0;
        while (src < raw.length) {
            deinterleaveBlock(raw, src, out, dst);
            src += 16384;
            dst += 16384;
        }
        return out;
    }

    private static void deinterleaveBlock(byte[] raw, int src, byte[] out, int dst) {
        for (int i = 0; i < SMD_HALF_BLOCK_BYTES; i++) {
            out[(i * 2) + dst] = raw[src + SMD_HALF_BLOCK_BYTES + i];
            out[(i * 2) + dst + 1] = raw[src + i];
        }
    }

    private static byte[] readAll(InputStream input, long knownSize) throws IOException {
        int initial = (knownSize <= 0 || knownSize > 16777216) ? 1048576 : (int) knownSize;
        ByteArrayOutputStream out = new ByteArrayOutputStream(Math.max(DuneHackR82ScenarioRecordDecoder.MAX_RECORDS, initial));
        byte[] buffer = new byte[32768];
        int total = 0;
        while (true) {
            int n = input.read(buffer);
            if (n >= 0) {
                if (n != 0) {
                    total += n;
                    if (total > 16777216) {
                        throw new IOException("ROM is unexpectedly large");
                    }
                    out.write(buffer, 0, n);
                }
            } else {
                return out.toByteArray();
            }
        }
    }
}
