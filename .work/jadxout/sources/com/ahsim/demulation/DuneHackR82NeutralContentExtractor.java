package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82Probe;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class DuneHackR82NeutralContentExtractor {
    public static final int GAME_PALETTE_BYTES = 512;
    private static final int MAX_ROM_BYTES = 16777216;
    public static final int REGION_PALETTE_BYTES = 96;
    private static final int[] GAME_HEADER = {0, 1708, 1162, 616, 70, 548, 108, 42, 1092, 3822, 2696, 1058, 0, 174, 10, 2};
    private static final int[] REGION_HEADER = {0, 2254, 1708, 1162, 616, 70, 548, 2};

    public static final class Result {
        private final byte[] game;
        public final int gameOffset;
        public final String gameSha256;
        private final byte[] region;
        public final int regionOffset;
        public final String regionSha256;

        private Result(int gameOffset, byte[] game, byte[] region) throws IOException {
            this.gameOffset = gameOffset;
            this.regionOffset = gameOffset + 512;
            this.game = (byte[]) game.clone();
            this.region = (byte[]) region.clone();
            this.gameSha256 = DuneHackR82NeutralContentExtractor.sha256(this.game);
            this.regionSha256 = DuneHackR82NeutralContentExtractor.sha256(this.region);
        }

        public byte[] gamePalettes() {
            return (byte[]) this.game.clone();
        }

        public byte[] regionPalette() {
            return (byte[]) this.region.clone();
        }
    }

    private DuneHackR82NeutralContentExtractor() {
    }

    public static Result extract(byte[] rom, DuneHackR82Probe.Result probe) throws IOException {
        if (rom == null || probe == null || !probe.recognized() || rom.length < 262144 || rom.length > 16777216 || rom[256] != 83 || rom[257] != 69 || rom[258] != 71 || rom[259] != 65) {
            throw new IOException("R82C neutral preview requires a recognized normalized Genesis ROM");
        }
        int match = -1;
        for (int offset = 576; offset <= (rom.length - 512) - 96; offset += 2) {
            if (equalsWords(rom, offset, GAME_HEADER) && equalsWords(rom, offset + 512, REGION_HEADER) && validateBlock(rom, offset)) {
                if (match >= 0) {
                    throw new IOException("Ambiguous R82C neutral palette layout: multiple candidates");
                }
                match = offset;
            }
        }
        if (match < 0) {
            throw new IOException("Unsupported R82C neutral palette layout (not an audited 2026 bank)");
        }
        byte[] game = Arrays.copyOfRange(rom, match, match + 512);
        byte[] region = Arrays.copyOfRange(rom, match + 512, match + 512 + 96);
        return new Result(match, game, region);
    }

    private static boolean validateBlock(byte[] rom, int pos) {
        for (int p = pos; p < pos + 608; p += 2) {
            int colour = u16(rom, p);
            if ((61713 & colour) != 0) {
                return false;
            }
        }
        for (int line = 0; line < 4; line++) {
            for (int bank = 1; bank < 4; bank++) {
                for (int colour2 = 0; colour2 < 13; colour2++) {
                    if (u16(rom, (line * 32) + pos + (colour2 * 2)) != u16(rom, (bank * 128) + pos + (line * 32) + (colour2 * 2))) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    private static boolean equalsWords(byte[] rom, int offset, int[] words) {
        if (offset < 0 || offset > rom.length - (words.length * 2)) {
            return false;
        }
        for (int i = 0; i < words.length; i++) {
            if (u16(rom, (i * 2) + offset) != words[i]) {
                return false;
            }
        }
        return true;
    }

    private static int u16(byte[] rom, int p) {
        return ((rom[p] & 255) << 8) | (rom[p + 1] & 255);
    }

    static String sha256(byte[] data) throws IOException {
        try {
            byte[] digest = MessageDigest.getInstance("SHA-256").digest(data);
            StringBuilder out = new StringBuilder(digest.length * 2);
            for (byte b : digest) {
                out.append(String.format(Locale.US, "%02x", Integer.valueOf(b & 255)));
            }
            return out.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 unavailable", e);
        }
    }
}
