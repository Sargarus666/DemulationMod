package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82Probe;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class DuneHackR82GameplayParameterProbe {
    private static final String AUDITED_ROM_SHA256 = "09bfe4bef56c7642edef7dea47c41274bdcce595fd95fbb85e64af4d3308d0ce";
    public static final int ROM_OFFSET = 155014;
    private static final int[][] SOURCE_VALUES = {new int[]{4, 4, 5, 5}, new int[]{30, 30, 10, 10}, new int[]{17, 25, 17, 25}, new int[]{400, 133, 270, 100}, new int[]{1, 1, 2, 2}};
    public static final int TABLE_BYTES = 40;

    public static final class Result {
        public final String sha256;
        private final byte[] sourceWords;

        private Result(byte[] words) throws IOException {
            this.sourceWords = (byte[]) words.clone();
            this.sha256 = DuneHackR82NeutralContentExtractor.sha256(this.sourceWords);
        }

        public byte[] bytes() {
            return (byte[]) this.sourceWords.clone();
        }

        public int value(int row, int column) {
            if (row < 0 || row >= 5 || column < 0 || column >= 4) {
                throw new IllegalArgumentException("R82C parameter index");
            }
            int n = ((row * 4) + column) * 2;
            return ((this.sourceWords[n] & 255) << 8) | (this.sourceWords[n + 1] & 255);
        }
    }

    private DuneHackR82GameplayParameterProbe() {
    }

    public static Result extract(byte[] rom, DuneHackR82Probe.Result probe) throws IOException {
        if (rom == null || probe == null || probe.family != DuneHackR82Probe.Family.R82C_PLUS || rom.length < 155054 || !AUDITED_ROM_SHA256.equals(DuneHackR82NeutralContentExtractor.sha256(rom))) {
            throw new IOException("R82C param layout unaudited");
        }
        for (int row = 0; row < 5; row++) {
            for (int col = 0; col < 4; col++) {
                int p = (((row * 4) + col) * 2) + ROM_OFFSET;
                int word = ((rom[p] & 255) << 8) | (rom[p + 1] & 255);
                if (word != SOURCE_VALUES[row][col]) {
                    throw new IOException("R82C parameter table differs from ASM reference");
                }
            }
        }
        return new Result(Arrays.copyOfRange(rom, ROM_OFFSET, 155054));
    }
}
