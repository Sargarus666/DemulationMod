package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82cRazorMissionBundle;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class RazorCompactMapPlacement {
    public static final int END_EXCLUSIVE = 48;
    private static final int FLAG_OFFSET = 153886;
    private static final String GUARD_ONE = "e5dddb701beec6a0bc10de5ec832165512d67fcdabf26721d954dce466c67fdb";
    public static final int MAP_SIDE = 64;
    private static final String SHA_ONE = "f4f2139273163f81d38c9aecfb39766246b769c296420d49cdc0db8bf34f3559";
    private static final String SHA_TWO = "8da861b223be269ecc63875fed636650eaa66846aa79b49c5a3dfac0ad3bf35a";
    public static final int SOURCE_SIDE = 32;
    public static final int START_X = 16;
    public static final int START_Y = 16;

    public static final class Evidence {
        public final boolean compactBoundsVerified;
        public final String loaderSha256;
        public final int romVariant;
        public final boolean specialMapTileRemap;

        private Evidence(int variant, String loaderSha, boolean remap) {
            this.romVariant = variant;
            this.loaderSha256 = loaderSha;
            this.specialMapTileRemap = remap;
            this.compactBoundsVerified = variant == 1;
        }
    }

    private RazorCompactMapPlacement() {
    }

    public static Evidence verifyRom(byte[] rom, DuneHackR82cRazorMissionBundle.Result source) throws IOException {
        if (rom != null && source != null) {
            Objects.requireNonNull(source);
            if (source.variant == 1 || source.variant == 2) {
                if (!sha256(rom).equals(source.sourceSha256)) {
                    throw new IOException("Razor map-loader ROM differs from validated mission bundle");
                }
                int address = source.variant == 1 ? 63526 : 63806;
                String expected = source.variant == 1 ? SHA_ONE : SHA_TWO;
                if (address < 0 || rom.length - address < 148 || rom.length <= FLAG_OFFSET) {
                    throw new IOException("Razor ROM map loader truncated");
                }
                String sha = sha256(Arrays.copyOfRange(rom, address, address + 148));
                if (!expected.equals(sha)) {
                    throw new IOException("Unknown Razor 68000 map loader");
                }
                if (source.variant == 1 && (rom.length < 12046 || !GUARD_ONE.equals(sha256(Arrays.copyOfRange(rom, 11974, 12046))))) {
                    throw new IOException("Razor compact playable bounds not verified");
                }
                int remapFlag = rom[FLAG_OFFSET] & 255;
                if (remapFlag != 1) {
                    throw new IOException("Unexpected Razor map-load remap flag");
                }
                return new Evidence(source.variant, sha, remapFlag != 0);
            }
        }
        throw new IOException("No validated Razor map-loader source");
    }

    public static int loadedTile(int original, boolean specialMapTileRemap) {
        if (original < 0 || original > 255) {
            throw new IllegalArgumentException("Unsigned source metatile required");
        }
        if (!specialMapTileRemap) {
            return original;
        }
        if (original == 176) {
            return 127;
        }
        if (original == 192) {
            return 191;
        }
        return original;
    }

    public static final class Placement {
        private final byte[] known;
        private final byte[] raw;
        private final boolean remap;

        private Placement(byte[] source, boolean specialRemap) throws IOException {
            this.known = new byte[DuneHackR82ScenarioRecordDecoder.MAX_RECORDS];
            this.raw = new byte[DuneHackR82ScenarioRecordDecoder.MAX_RECORDS];
            if (source == null || source.length != 1024) {
                throw new IOException("Razor compact source must be exactly 1024 bytes");
            }
            this.remap = specialRemap;
            for (int y = 0; y < 32; y++) {
                for (int x = 0; x < 32; x++) {
                    int dst = ((y + 16) * 64) + x + 16;
                    this.known[dst] = 1;
                    this.raw[dst] = source[(y * 32) + x];
                }
            }
        }

        public int rawTile(int x, int y) {
            if (!inside(x, y) || this.known[(y * 64) + x] == 0) {
                return -1;
            }
            return this.raw[(y * 64) + x] & 255;
        }

        public int loadedTile(int x, int y) {
            int v = rawTile(x, y);
            if (v < 0) {
                return -1;
            }
            return RazorCompactMapPlacement.loadedTile(v, this.remap);
        }

        public boolean isKnown(int x, int y) {
            return inside(x, y) && this.known[(y * 64) + x] != 0;
        }

        public byte[] rawGridCopy() {
            return (byte[]) this.raw.clone();
        }

        public byte[] knownMaskCopy() {
            return (byte[]) this.known.clone();
        }

        private static boolean inside(int x, int y) {
            return x >= 0 && x < 64 && y >= 0 && y < 64;
        }
    }

    public static Placement place(byte[] source, Evidence evidence) throws IOException {
        if (evidence == null || evidence.romVariant != 1 || !evidence.compactBoundsVerified) {
            throw new IOException("Compact placement requires verified 3 MiB Razor loader");
        }
        return new Placement(source, evidence.specialMapTileRemap);
    }

    private static String sha256(byte[] bytes) throws IOException {
        try {
            byte[] hash = MessageDigest.getInstance("SHA-256").digest(bytes);
            StringBuilder sb = new StringBuilder(64);
            for (byte b : hash) {
                sb.append(Character.forDigit((b >> 4) & 15, 16));
                sb.append(Character.forDigit(b & 15, 16));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new IOException(e);
        }
    }
}
